; ModuleID = 'moves.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.move_s = type { i32, i32, i32, i32, i32, i32 }
%struct.move_x = type { i32, i32, i32, i32 }

@Variant = external global i32, align 4
@white_to_move = external global i32, align 4
@board = external global [144 x i32], align 16
@Xfile = external constant [144 x i32], align 16
@bking_loc = external global i32, align 4
@Xrank = external constant [144 x i32], align 16
@Xdiagl = external constant [144 x i32], align 16
@Xdiagr = external constant [144 x i32], align 16
@wking_loc = external global i32, align 4
@kingcap = common global i32 0, align 4
@numb_moves = common global i32 0, align 4
@genfor = internal global %struct.move_s* null, align 8
@captures = external global i32, align 4
@fcaptures = common global i32 0, align 4
@piece_count = external global i32, align 4
@pieces = external global [62 x i32], align 16
@gfrom = common global i32 0, align 4
@ep_square = external global i32, align 4
@moved = external global [144 x i32], align 16
@Giveaway = external global i32, align 4
@holding = external global [2 x [16 x i32]], align 16
@f_in_check.knight_o = internal constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@extended_in_check.knight_o = internal constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@ply = external global i32, align 4
@path_x = external global [300 x %struct.move_x], align 16
@fifty = external global i32, align 4
@is_promoted = external global [62 x i32], align 16
@squares = external global [144 x i32], align 16
@material = external global [14 x i32], align 16
@Material = external global i32, align 4
@zobrist = external global [14 x [144 x i32]], align 16
@hash = external global i32, align 4
@white_castled = external global i32, align 4
@black_castled = external global i32, align 4
@total_moves = common global i32 0, align 4
@total_movegens = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @check_legal(%struct.move_s* %moves, i32 %m, i32 %incheck) #0 {
entry:
  %retval = alloca i32, align 4
  %moves.addr = alloca %struct.move_s*, align 8
  %m.addr = alloca i32, align 4
  %incheck.addr = alloca i32, align 4
  %castled = alloca i32, align 4
  %from = alloca i32, align 4
  %target = alloca i32, align 4
  %l = alloca i32, align 4
  store %struct.move_s* %moves, %struct.move_s** %moves.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %incheck, i32* %incheck.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx = getelementptr inbounds %struct.move_s, %struct.move_s* %1, i64 %idxprom
  %castled1 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx, i32 0, i32 4
  %2 = load i32, i32* %castled1, align 4
  store i32 %2, i32* %castled, align 4
  %3 = load i32, i32* %m.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %4 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.move_s, %struct.move_s* %4, i64 %idxprom2
  %from4 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx3, i32 0, i32 0
  %5 = load i32, i32* %from4, align 4
  store i32 %5, i32* %from, align 4
  %6 = load i32, i32* %m.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.move_s, %struct.move_s* %7, i64 %idxprom5
  %target7 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx6, i32 0, i32 1
  %8 = load i32, i32* %target7, align 4
  store i32 %8, i32* %target, align 4
  %9 = load i32, i32* @Variant, align 4
  %cmp = icmp eq i32 %9, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %castled, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %11 = load i32, i32* %castled, align 4
  %cmp9 = icmp eq i32 %11, 1
  br i1 %cmp9, label %if.then.10, label %if.end.22

if.then.10:                                       ; preds = %if.then.8
  %call = call i32 @is_attacked(i32 30, i32 0)
  %tobool11 = icmp ne i32 %call, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.10
  %call14 = call i32 @is_attacked(i32 31, i32 0)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.13
  %call18 = call i32 @is_attacked(i32 32, i32 0)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.17
  store i32 1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.8
  %12 = load i32, i32* %castled, align 4
  %cmp23 = icmp eq i32 %12, 2
  br i1 %cmp23, label %if.then.24, label %if.end.37

if.then.24:                                       ; preds = %if.end.22
  %call25 = call i32 @is_attacked(i32 30, i32 0)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.24
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.then.24
  %call29 = call i32 @is_attacked(i32 29, i32 0)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.28
  %call33 = call i32 @is_attacked(i32 28, i32 0)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  store i32 0, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.32
  store i32 1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.22
  %13 = load i32, i32* %castled, align 4
  %cmp38 = icmp eq i32 %13, 3
  br i1 %cmp38, label %if.then.39, label %if.end.52

if.then.39:                                       ; preds = %if.end.37
  %call40 = call i32 @is_attacked(i32 114, i32 1)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.39
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.then.39
  %call44 = call i32 @is_attacked(i32 115, i32 1)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.43
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.end.43
  %call48 = call i32 @is_attacked(i32 116, i32 1)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  store i32 0, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.end.47
  store i32 1, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.37
  %14 = load i32, i32* %castled, align 4
  %cmp53 = icmp eq i32 %14, 4
  br i1 %cmp53, label %if.then.54, label %if.end.67

if.then.54:                                       ; preds = %if.end.52
  %call55 = call i32 @is_attacked(i32 114, i32 1)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.54
  store i32 0, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.then.54
  %call59 = call i32 @is_attacked(i32 113, i32 1)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.58
  store i32 0, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.end.58
  %call63 = call i32 @is_attacked(i32 112, i32 1)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.62
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.end.62
  store i32 1, i32* %retval
  br label %return

if.end.67:                                        ; preds = %if.end.52
  br label %if.end.1015

if.else:                                          ; preds = %if.end
  %15 = load i32, i32* @white_to_move, align 4
  %and = and i32 %15, 1
  %tobool68 = icmp ne i32 %and, 0
  br i1 %tobool68, label %if.then.69, label %if.else.532

if.then.69:                                       ; preds = %if.else
  %16 = load i32, i32* %incheck.addr, align 4
  %tobool70 = icmp ne i32 %16, 0
  br i1 %tobool70, label %if.end.527, label %if.then.71

if.then.71:                                       ; preds = %if.then.69
  %17 = load i32, i32* %m.addr, align 4
  %idxprom72 = sext i32 %17 to i64
  %18 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct.move_s, %struct.move_s* %18, i64 %idxprom72
  %from74 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx73, i32 0, i32 0
  %19 = load i32, i32* %from74, align 4
  %cmp75 = icmp eq i32 %19, 0
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.then.71
  store i32 1, i32* %retval
  br label %return

if.end.77:                                        ; preds = %if.then.71
  %20 = load i32, i32* %m.addr, align 4
  %idxprom78 = sext i32 %20 to i64
  %21 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx79 = getelementptr inbounds %struct.move_s, %struct.move_s* %21, i64 %idxprom78
  %promoted = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx79, i32 0, i32 3
  %22 = load i32, i32* %promoted, align 4
  %tobool80 = icmp ne i32 %22, 0
  br i1 %tobool80, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.77
  br label %cond.end

cond.false:                                       ; preds = %if.end.77
  %23 = load i32, i32* %target, align 4
  %idxprom81 = sext i32 %23 to i64
  %arrayidx82 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom81
  %24 = load i32, i32* %arrayidx82, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %24, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.132
    i32 12, label %sw.bb.158
    i32 8, label %sw.bb.194
    i32 10, label %sw.bb.230
  ]

sw.bb:                                            ; preds = %cond.end
  %25 = load i32, i32* %m.addr, align 4
  %idxprom83 = sext i32 %25 to i64
  %26 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx84 = getelementptr inbounds %struct.move_s, %struct.move_s* %26, i64 %idxprom83
  %captured = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx84, i32 0, i32 2
  %27 = load i32, i32* %captured, align 4
  %cmp85 = icmp ne i32 %27, 13
  br i1 %cmp85, label %if.then.86, label %if.else.111

if.then.86:                                       ; preds = %sw.bb
  %28 = load i32, i32* %from, align 4
  %idxprom87 = sext i32 %28 to i64
  %arrayidx88 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom87
  %29 = load i32, i32* %arrayidx88, align 4
  %30 = load i32, i32* @bking_loc, align 4
  %idxprom89 = sext i32 %30 to i64
  %arrayidx90 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom89
  %31 = load i32, i32* %arrayidx90, align 4
  %cmp91 = icmp ne i32 %29, %31
  br i1 %cmp91, label %land.lhs.true, label %if.end.110

land.lhs.true:                                    ; preds = %if.then.86
  %32 = load i32, i32* %from, align 4
  %idxprom92 = sext i32 %32 to i64
  %arrayidx93 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom92
  %33 = load i32, i32* %arrayidx93, align 4
  %34 = load i32, i32* @bking_loc, align 4
  %idxprom94 = sext i32 %34 to i64
  %arrayidx95 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom94
  %35 = load i32, i32* %arrayidx95, align 4
  %cmp96 = icmp ne i32 %33, %35
  br i1 %cmp96, label %land.lhs.true.97, label %if.end.110

land.lhs.true.97:                                 ; preds = %land.lhs.true
  %36 = load i32, i32* %from, align 4
  %idxprom98 = sext i32 %36 to i64
  %arrayidx99 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom98
  %37 = load i32, i32* %arrayidx99, align 4
  %38 = load i32, i32* @bking_loc, align 4
  %idxprom100 = sext i32 %38 to i64
  %arrayidx101 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom100
  %39 = load i32, i32* %arrayidx101, align 4
  %cmp102 = icmp ne i32 %37, %39
  br i1 %cmp102, label %land.lhs.true.103, label %if.end.110

land.lhs.true.103:                                ; preds = %land.lhs.true.97
  %40 = load i32, i32* %from, align 4
  %idxprom104 = sext i32 %40 to i64
  %arrayidx105 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom104
  %41 = load i32, i32* %arrayidx105, align 4
  %42 = load i32, i32* @bking_loc, align 4
  %idxprom106 = sext i32 %42 to i64
  %arrayidx107 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom106
  %43 = load i32, i32* %arrayidx107, align 4
  %cmp108 = icmp ne i32 %41, %43
  br i1 %cmp108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %land.lhs.true.103
  store i32 1, i32* %retval
  br label %return

if.end.110:                                       ; preds = %land.lhs.true.103, %land.lhs.true.97, %land.lhs.true, %if.then.86
  br label %if.end.131

if.else.111:                                      ; preds = %sw.bb
  %44 = load i32, i32* %from, align 4
  %idxprom112 = sext i32 %44 to i64
  %arrayidx113 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom112
  %45 = load i32, i32* %arrayidx113, align 4
  %46 = load i32, i32* @bking_loc, align 4
  %idxprom114 = sext i32 %46 to i64
  %arrayidx115 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom114
  %47 = load i32, i32* %arrayidx115, align 4
  %cmp116 = icmp ne i32 %45, %47
  br i1 %cmp116, label %land.lhs.true.117, label %if.end.130

land.lhs.true.117:                                ; preds = %if.else.111
  %48 = load i32, i32* %from, align 4
  %idxprom118 = sext i32 %48 to i64
  %arrayidx119 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom118
  %49 = load i32, i32* %arrayidx119, align 4
  %50 = load i32, i32* @bking_loc, align 4
  %idxprom120 = sext i32 %50 to i64
  %arrayidx121 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom120
  %51 = load i32, i32* %arrayidx121, align 4
  %cmp122 = icmp ne i32 %49, %51
  br i1 %cmp122, label %land.lhs.true.123, label %if.end.130

land.lhs.true.123:                                ; preds = %land.lhs.true.117
  %52 = load i32, i32* %from, align 4
  %idxprom124 = sext i32 %52 to i64
  %arrayidx125 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom124
  %53 = load i32, i32* %arrayidx125, align 4
  %54 = load i32, i32* @bking_loc, align 4
  %idxprom126 = sext i32 %54 to i64
  %arrayidx127 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom126
  %55 = load i32, i32* %arrayidx127, align 4
  %cmp128 = icmp ne i32 %53, %55
  br i1 %cmp128, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %land.lhs.true.123
  store i32 1, i32* %retval
  br label %return

if.end.130:                                       ; preds = %land.lhs.true.123, %land.lhs.true.117, %if.else.111
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.end.110
  br label %sw.epilog

sw.bb.132:                                        ; preds = %cond.end
  %56 = load i32, i32* %from, align 4
  %idxprom133 = sext i32 %56 to i64
  %arrayidx134 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom133
  %57 = load i32, i32* %arrayidx134, align 4
  %58 = load i32, i32* @bking_loc, align 4
  %idxprom135 = sext i32 %58 to i64
  %arrayidx136 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom135
  %59 = load i32, i32* %arrayidx136, align 4
  %cmp137 = icmp ne i32 %57, %59
  br i1 %cmp137, label %land.lhs.true.138, label %if.end.157

land.lhs.true.138:                                ; preds = %sw.bb.132
  %60 = load i32, i32* %from, align 4
  %idxprom139 = sext i32 %60 to i64
  %arrayidx140 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom139
  %61 = load i32, i32* %arrayidx140, align 4
  %62 = load i32, i32* @bking_loc, align 4
  %idxprom141 = sext i32 %62 to i64
  %arrayidx142 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom141
  %63 = load i32, i32* %arrayidx142, align 4
  %cmp143 = icmp ne i32 %61, %63
  br i1 %cmp143, label %land.lhs.true.144, label %if.end.157

land.lhs.true.144:                                ; preds = %land.lhs.true.138
  %64 = load i32, i32* %from, align 4
  %idxprom145 = sext i32 %64 to i64
  %arrayidx146 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom145
  %65 = load i32, i32* %arrayidx146, align 4
  %66 = load i32, i32* @bking_loc, align 4
  %idxprom147 = sext i32 %66 to i64
  %arrayidx148 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom147
  %67 = load i32, i32* %arrayidx148, align 4
  %cmp149 = icmp ne i32 %65, %67
  br i1 %cmp149, label %land.lhs.true.150, label %if.end.157

land.lhs.true.150:                                ; preds = %land.lhs.true.144
  %68 = load i32, i32* %from, align 4
  %idxprom151 = sext i32 %68 to i64
  %arrayidx152 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom151
  %69 = load i32, i32* %arrayidx152, align 4
  %70 = load i32, i32* @bking_loc, align 4
  %idxprom153 = sext i32 %70 to i64
  %arrayidx154 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom153
  %71 = load i32, i32* %arrayidx154, align 4
  %cmp155 = icmp ne i32 %69, %71
  br i1 %cmp155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %land.lhs.true.150
  store i32 1, i32* %retval
  br label %return

if.end.157:                                       ; preds = %land.lhs.true.150, %land.lhs.true.144, %land.lhs.true.138, %sw.bb.132
  br label %sw.epilog

sw.bb.158:                                        ; preds = %cond.end
  %72 = load i32, i32* %from, align 4
  %idxprom159 = sext i32 %72 to i64
  %arrayidx160 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom159
  %73 = load i32, i32* %arrayidx160, align 4
  %74 = load i32, i32* @bking_loc, align 4
  %idxprom161 = sext i32 %74 to i64
  %arrayidx162 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom161
  %75 = load i32, i32* %arrayidx162, align 4
  %cmp163 = icmp ne i32 %73, %75
  br i1 %cmp163, label %land.lhs.true.164, label %if.end.193

land.lhs.true.164:                                ; preds = %sw.bb.158
  %76 = load i32, i32* %from, align 4
  %idxprom165 = sext i32 %76 to i64
  %arrayidx166 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom165
  %77 = load i32, i32* %arrayidx166, align 4
  %78 = load i32, i32* @bking_loc, align 4
  %idxprom167 = sext i32 %78 to i64
  %arrayidx168 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom167
  %79 = load i32, i32* %arrayidx168, align 4
  %cmp169 = icmp ne i32 %77, %79
  br i1 %cmp169, label %if.then.170, label %if.end.193

if.then.170:                                      ; preds = %land.lhs.true.164
  %80 = load i32, i32* %from, align 4
  %idxprom171 = sext i32 %80 to i64
  %arrayidx172 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom171
  %81 = load i32, i32* %arrayidx172, align 4
  %82 = load i32, i32* %target, align 4
  %idxprom173 = sext i32 %82 to i64
  %arrayidx174 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom173
  %83 = load i32, i32* %arrayidx174, align 4
  %cmp175 = icmp eq i32 %81, %83
  br i1 %cmp175, label %if.then.176, label %if.else.184

if.then.176:                                      ; preds = %if.then.170
  %84 = load i32, i32* %from, align 4
  %idxprom177 = sext i32 %84 to i64
  %arrayidx178 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom177
  %85 = load i32, i32* %arrayidx178, align 4
  %86 = load i32, i32* @bking_loc, align 4
  %idxprom179 = sext i32 %86 to i64
  %arrayidx180 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom179
  %87 = load i32, i32* %arrayidx180, align 4
  %cmp181 = icmp ne i32 %85, %87
  br i1 %cmp181, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.then.176
  store i32 1, i32* %retval
  br label %return

if.end.183:                                       ; preds = %if.then.176
  br label %if.end.192

if.else.184:                                      ; preds = %if.then.170
  %88 = load i32, i32* %from, align 4
  %idxprom185 = sext i32 %88 to i64
  %arrayidx186 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom185
  %89 = load i32, i32* %arrayidx186, align 4
  %90 = load i32, i32* @bking_loc, align 4
  %idxprom187 = sext i32 %90 to i64
  %arrayidx188 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom187
  %91 = load i32, i32* %arrayidx188, align 4
  %cmp189 = icmp ne i32 %89, %91
  br i1 %cmp189, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %if.else.184
  store i32 1, i32* %retval
  br label %return

if.end.191:                                       ; preds = %if.else.184
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %if.end.183
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %land.lhs.true.164, %sw.bb.158
  br label %sw.epilog

sw.bb.194:                                        ; preds = %cond.end
  %92 = load i32, i32* %from, align 4
  %idxprom195 = sext i32 %92 to i64
  %arrayidx196 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom195
  %93 = load i32, i32* %arrayidx196, align 4
  %94 = load i32, i32* @bking_loc, align 4
  %idxprom197 = sext i32 %94 to i64
  %arrayidx198 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom197
  %95 = load i32, i32* %arrayidx198, align 4
  %cmp199 = icmp ne i32 %93, %95
  br i1 %cmp199, label %land.lhs.true.200, label %if.end.229

land.lhs.true.200:                                ; preds = %sw.bb.194
  %96 = load i32, i32* %from, align 4
  %idxprom201 = sext i32 %96 to i64
  %arrayidx202 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom201
  %97 = load i32, i32* %arrayidx202, align 4
  %98 = load i32, i32* @bking_loc, align 4
  %idxprom203 = sext i32 %98 to i64
  %arrayidx204 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom203
  %99 = load i32, i32* %arrayidx204, align 4
  %cmp205 = icmp ne i32 %97, %99
  br i1 %cmp205, label %if.then.206, label %if.end.229

if.then.206:                                      ; preds = %land.lhs.true.200
  %100 = load i32, i32* %from, align 4
  %idxprom207 = sext i32 %100 to i64
  %arrayidx208 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom207
  %101 = load i32, i32* %arrayidx208, align 4
  %102 = load i32, i32* %target, align 4
  %idxprom209 = sext i32 %102 to i64
  %arrayidx210 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom209
  %103 = load i32, i32* %arrayidx210, align 4
  %cmp211 = icmp eq i32 %101, %103
  br i1 %cmp211, label %if.then.212, label %if.else.220

if.then.212:                                      ; preds = %if.then.206
  %104 = load i32, i32* %from, align 4
  %idxprom213 = sext i32 %104 to i64
  %arrayidx214 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom213
  %105 = load i32, i32* %arrayidx214, align 4
  %106 = load i32, i32* @bking_loc, align 4
  %idxprom215 = sext i32 %106 to i64
  %arrayidx216 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom215
  %107 = load i32, i32* %arrayidx216, align 4
  %cmp217 = icmp ne i32 %105, %107
  br i1 %cmp217, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %if.then.212
  store i32 1, i32* %retval
  br label %return

if.end.219:                                       ; preds = %if.then.212
  br label %if.end.228

if.else.220:                                      ; preds = %if.then.206
  %108 = load i32, i32* %from, align 4
  %idxprom221 = sext i32 %108 to i64
  %arrayidx222 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom221
  %109 = load i32, i32* %arrayidx222, align 4
  %110 = load i32, i32* @bking_loc, align 4
  %idxprom223 = sext i32 %110 to i64
  %arrayidx224 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom223
  %111 = load i32, i32* %arrayidx224, align 4
  %cmp225 = icmp ne i32 %109, %111
  br i1 %cmp225, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %if.else.220
  store i32 1, i32* %retval
  br label %return

if.end.227:                                       ; preds = %if.else.220
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %if.end.219
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %land.lhs.true.200, %sw.bb.194
  br label %sw.epilog

sw.bb.230:                                        ; preds = %cond.end
  %112 = load i32, i32* %from, align 4
  %idxprom231 = sext i32 %112 to i64
  %arrayidx232 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom231
  %113 = load i32, i32* %arrayidx232, align 4
  %114 = load i32, i32* %target, align 4
  %idxprom233 = sext i32 %114 to i64
  %arrayidx234 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom233
  %115 = load i32, i32* %arrayidx234, align 4
  %cmp235 = icmp eq i32 %113, %115
  br i1 %cmp235, label %if.then.236, label %if.else.256

if.then.236:                                      ; preds = %sw.bb.230
  %116 = load i32, i32* %from, align 4
  %idxprom237 = sext i32 %116 to i64
  %arrayidx238 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom237
  %117 = load i32, i32* %arrayidx238, align 4
  %118 = load i32, i32* @bking_loc, align 4
  %idxprom239 = sext i32 %118 to i64
  %arrayidx240 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom239
  %119 = load i32, i32* %arrayidx240, align 4
  %cmp241 = icmp ne i32 %117, %119
  br i1 %cmp241, label %land.lhs.true.242, label %if.end.255

land.lhs.true.242:                                ; preds = %if.then.236
  %120 = load i32, i32* %from, align 4
  %idxprom243 = sext i32 %120 to i64
  %arrayidx244 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom243
  %121 = load i32, i32* %arrayidx244, align 4
  %122 = load i32, i32* @bking_loc, align 4
  %idxprom245 = sext i32 %122 to i64
  %arrayidx246 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom245
  %123 = load i32, i32* %arrayidx246, align 4
  %cmp247 = icmp ne i32 %121, %123
  br i1 %cmp247, label %land.lhs.true.248, label %if.end.255

land.lhs.true.248:                                ; preds = %land.lhs.true.242
  %124 = load i32, i32* %from, align 4
  %idxprom249 = sext i32 %124 to i64
  %arrayidx250 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom249
  %125 = load i32, i32* %arrayidx250, align 4
  %126 = load i32, i32* @bking_loc, align 4
  %idxprom251 = sext i32 %126 to i64
  %arrayidx252 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom251
  %127 = load i32, i32* %arrayidx252, align 4
  %cmp253 = icmp ne i32 %125, %127
  br i1 %cmp253, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %land.lhs.true.248
  store i32 1, i32* %retval
  br label %return

if.end.255:                                       ; preds = %land.lhs.true.248, %land.lhs.true.242, %if.then.236
  br label %if.end.337

if.else.256:                                      ; preds = %sw.bb.230
  %128 = load i32, i32* %from, align 4
  %idxprom257 = sext i32 %128 to i64
  %arrayidx258 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom257
  %129 = load i32, i32* %arrayidx258, align 4
  %130 = load i32, i32* %target, align 4
  %idxprom259 = sext i32 %130 to i64
  %arrayidx260 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom259
  %131 = load i32, i32* %arrayidx260, align 4
  %cmp261 = icmp eq i32 %129, %131
  br i1 %cmp261, label %if.then.262, label %if.else.282

if.then.262:                                      ; preds = %if.else.256
  %132 = load i32, i32* %from, align 4
  %idxprom263 = sext i32 %132 to i64
  %arrayidx264 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom263
  %133 = load i32, i32* %arrayidx264, align 4
  %134 = load i32, i32* @bking_loc, align 4
  %idxprom265 = sext i32 %134 to i64
  %arrayidx266 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom265
  %135 = load i32, i32* %arrayidx266, align 4
  %cmp267 = icmp ne i32 %133, %135
  br i1 %cmp267, label %land.lhs.true.268, label %if.end.281

land.lhs.true.268:                                ; preds = %if.then.262
  %136 = load i32, i32* %from, align 4
  %idxprom269 = sext i32 %136 to i64
  %arrayidx270 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom269
  %137 = load i32, i32* %arrayidx270, align 4
  %138 = load i32, i32* @bking_loc, align 4
  %idxprom271 = sext i32 %138 to i64
  %arrayidx272 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom271
  %139 = load i32, i32* %arrayidx272, align 4
  %cmp273 = icmp ne i32 %137, %139
  br i1 %cmp273, label %land.lhs.true.274, label %if.end.281

land.lhs.true.274:                                ; preds = %land.lhs.true.268
  %140 = load i32, i32* %from, align 4
  %idxprom275 = sext i32 %140 to i64
  %arrayidx276 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom275
  %141 = load i32, i32* %arrayidx276, align 4
  %142 = load i32, i32* @bking_loc, align 4
  %idxprom277 = sext i32 %142 to i64
  %arrayidx278 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom277
  %143 = load i32, i32* %arrayidx278, align 4
  %cmp279 = icmp ne i32 %141, %143
  br i1 %cmp279, label %if.then.280, label %if.end.281

if.then.280:                                      ; preds = %land.lhs.true.274
  store i32 1, i32* %retval
  br label %return

if.end.281:                                       ; preds = %land.lhs.true.274, %land.lhs.true.268, %if.then.262
  br label %if.end.336

if.else.282:                                      ; preds = %if.else.256
  %144 = load i32, i32* %from, align 4
  %idxprom283 = sext i32 %144 to i64
  %arrayidx284 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom283
  %145 = load i32, i32* %arrayidx284, align 4
  %146 = load i32, i32* %target, align 4
  %idxprom285 = sext i32 %146 to i64
  %arrayidx286 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom285
  %147 = load i32, i32* %arrayidx286, align 4
  %cmp287 = icmp eq i32 %145, %147
  br i1 %cmp287, label %if.then.288, label %if.else.308

if.then.288:                                      ; preds = %if.else.282
  %148 = load i32, i32* %from, align 4
  %idxprom289 = sext i32 %148 to i64
  %arrayidx290 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom289
  %149 = load i32, i32* %arrayidx290, align 4
  %150 = load i32, i32* @bking_loc, align 4
  %idxprom291 = sext i32 %150 to i64
  %arrayidx292 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom291
  %151 = load i32, i32* %arrayidx292, align 4
  %cmp293 = icmp ne i32 %149, %151
  br i1 %cmp293, label %land.lhs.true.294, label %if.end.307

land.lhs.true.294:                                ; preds = %if.then.288
  %152 = load i32, i32* %from, align 4
  %idxprom295 = sext i32 %152 to i64
  %arrayidx296 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom295
  %153 = load i32, i32* %arrayidx296, align 4
  %154 = load i32, i32* @bking_loc, align 4
  %idxprom297 = sext i32 %154 to i64
  %arrayidx298 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom297
  %155 = load i32, i32* %arrayidx298, align 4
  %cmp299 = icmp ne i32 %153, %155
  br i1 %cmp299, label %land.lhs.true.300, label %if.end.307

land.lhs.true.300:                                ; preds = %land.lhs.true.294
  %156 = load i32, i32* %from, align 4
  %idxprom301 = sext i32 %156 to i64
  %arrayidx302 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom301
  %157 = load i32, i32* %arrayidx302, align 4
  %158 = load i32, i32* @bking_loc, align 4
  %idxprom303 = sext i32 %158 to i64
  %arrayidx304 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom303
  %159 = load i32, i32* %arrayidx304, align 4
  %cmp305 = icmp ne i32 %157, %159
  br i1 %cmp305, label %if.then.306, label %if.end.307

if.then.306:                                      ; preds = %land.lhs.true.300
  store i32 1, i32* %retval
  br label %return

if.end.307:                                       ; preds = %land.lhs.true.300, %land.lhs.true.294, %if.then.288
  br label %if.end.335

if.else.308:                                      ; preds = %if.else.282
  %160 = load i32, i32* %from, align 4
  %idxprom309 = sext i32 %160 to i64
  %arrayidx310 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom309
  %161 = load i32, i32* %arrayidx310, align 4
  %162 = load i32, i32* %target, align 4
  %idxprom311 = sext i32 %162 to i64
  %arrayidx312 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom311
  %163 = load i32, i32* %arrayidx312, align 4
  %cmp313 = icmp eq i32 %161, %163
  br i1 %cmp313, label %if.then.314, label %if.end.334

if.then.314:                                      ; preds = %if.else.308
  %164 = load i32, i32* %from, align 4
  %idxprom315 = sext i32 %164 to i64
  %arrayidx316 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom315
  %165 = load i32, i32* %arrayidx316, align 4
  %166 = load i32, i32* @bking_loc, align 4
  %idxprom317 = sext i32 %166 to i64
  %arrayidx318 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom317
  %167 = load i32, i32* %arrayidx318, align 4
  %cmp319 = icmp ne i32 %165, %167
  br i1 %cmp319, label %land.lhs.true.320, label %if.end.333

land.lhs.true.320:                                ; preds = %if.then.314
  %168 = load i32, i32* %from, align 4
  %idxprom321 = sext i32 %168 to i64
  %arrayidx322 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom321
  %169 = load i32, i32* %arrayidx322, align 4
  %170 = load i32, i32* @bking_loc, align 4
  %idxprom323 = sext i32 %170 to i64
  %arrayidx324 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom323
  %171 = load i32, i32* %arrayidx324, align 4
  %cmp325 = icmp ne i32 %169, %171
  br i1 %cmp325, label %land.lhs.true.326, label %if.end.333

land.lhs.true.326:                                ; preds = %land.lhs.true.320
  %172 = load i32, i32* %from, align 4
  %idxprom327 = sext i32 %172 to i64
  %arrayidx328 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom327
  %173 = load i32, i32* %arrayidx328, align 4
  %174 = load i32, i32* @bking_loc, align 4
  %idxprom329 = sext i32 %174 to i64
  %arrayidx330 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom329
  %175 = load i32, i32* %arrayidx330, align 4
  %cmp331 = icmp ne i32 %173, %175
  br i1 %cmp331, label %if.then.332, label %if.end.333

if.then.332:                                      ; preds = %land.lhs.true.326
  store i32 1, i32* %retval
  br label %return

if.end.333:                                       ; preds = %land.lhs.true.326, %land.lhs.true.320, %if.then.314
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.333, %if.else.308
  br label %if.end.335

if.end.335:                                       ; preds = %if.end.334, %if.end.307
  br label %if.end.336

if.end.336:                                       ; preds = %if.end.335, %if.end.281
  br label %if.end.337

if.end.337:                                       ; preds = %if.end.336, %if.end.255
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.337, %if.end.229, %if.end.193, %if.end.157, %if.end.131
  %176 = load i32, i32* %target, align 4
  %idxprom338 = sext i32 %176 to i64
  %arrayidx339 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom338
  %177 = load i32, i32* %arrayidx339, align 4
  %cmp340 = icmp ne i32 %177, 6
  br i1 %cmp340, label %if.then.341, label %if.end.526

if.then.341:                                      ; preds = %sw.epilog
  %178 = load i32, i32* %from, align 4
  %idxprom342 = sext i32 %178 to i64
  %arrayidx343 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom342
  %179 = load i32, i32* %arrayidx343, align 4
  %180 = load i32, i32* @bking_loc, align 4
  %idxprom344 = sext i32 %180 to i64
  %arrayidx345 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom344
  %181 = load i32, i32* %arrayidx345, align 4
  %cmp346 = icmp eq i32 %179, %181
  br i1 %cmp346, label %if.then.347, label %if.else.381

if.then.347:                                      ; preds = %if.then.341
  %182 = load i32, i32* @bking_loc, align 4
  %183 = load i32, i32* %from, align 4
  %cmp348 = icmp sgt i32 %182, %183
  br i1 %cmp348, label %if.then.349, label %if.else.362

if.then.349:                                      ; preds = %if.then.347
  %184 = load i32, i32* @bking_loc, align 4
  %sub = sub nsw i32 %184, 12
  store i32 %sub, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.349
  %185 = load i32, i32* %l, align 4
  %idxprom350 = sext i32 %185 to i64
  %arrayidx351 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom350
  %186 = load i32, i32* %arrayidx351, align 4
  %cmp352 = icmp eq i32 %186, 13
  br i1 %cmp352, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %187 = load i32, i32* %l, align 4
  %sub353 = sub nsw i32 %187, 12
  store i32 %sub353, i32* %l, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %188 = load i32, i32* %l, align 4
  %idxprom354 = sext i32 %188 to i64
  %arrayidx355 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom354
  %189 = load i32, i32* %arrayidx355, align 4
  %cmp356 = icmp eq i32 %189, 7
  br i1 %cmp356, label %if.then.360, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %190 = load i32, i32* %l, align 4
  %idxprom357 = sext i32 %190 to i64
  %arrayidx358 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom357
  %191 = load i32, i32* %arrayidx358, align 4
  %cmp359 = icmp eq i32 %191, 9
  br i1 %cmp359, label %if.then.360, label %if.end.361

if.then.360:                                      ; preds = %lor.lhs.false, %for.end
  store i32 0, i32* %retval
  br label %return

if.end.361:                                       ; preds = %lor.lhs.false
  br label %if.end.380

if.else.362:                                      ; preds = %if.then.347
  %192 = load i32, i32* @bking_loc, align 4
  %add = add nsw i32 %192, 12
  store i32 %add, i32* %l, align 4
  br label %for.cond.363

for.cond.363:                                     ; preds = %for.inc.368, %if.else.362
  %193 = load i32, i32* %l, align 4
  %idxprom364 = sext i32 %193 to i64
  %arrayidx365 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom364
  %194 = load i32, i32* %arrayidx365, align 4
  %cmp366 = icmp eq i32 %194, 13
  br i1 %cmp366, label %for.body.367, label %for.end.370

for.body.367:                                     ; preds = %for.cond.363
  br label %for.inc.368

for.inc.368:                                      ; preds = %for.body.367
  %195 = load i32, i32* %l, align 4
  %add369 = add nsw i32 %195, 12
  store i32 %add369, i32* %l, align 4
  br label %for.cond.363

for.end.370:                                      ; preds = %for.cond.363
  %196 = load i32, i32* %l, align 4
  %idxprom371 = sext i32 %196 to i64
  %arrayidx372 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom371
  %197 = load i32, i32* %arrayidx372, align 4
  %cmp373 = icmp eq i32 %197, 7
  br i1 %cmp373, label %if.then.378, label %lor.lhs.false.374

lor.lhs.false.374:                                ; preds = %for.end.370
  %198 = load i32, i32* %l, align 4
  %idxprom375 = sext i32 %198 to i64
  %arrayidx376 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom375
  %199 = load i32, i32* %arrayidx376, align 4
  %cmp377 = icmp eq i32 %199, 9
  br i1 %cmp377, label %if.then.378, label %if.end.379

if.then.378:                                      ; preds = %lor.lhs.false.374, %for.end.370
  store i32 0, i32* %retval
  br label %return

if.end.379:                                       ; preds = %lor.lhs.false.374
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.379, %if.end.361
  br label %if.end.525

if.else.381:                                      ; preds = %if.then.341
  %200 = load i32, i32* %from, align 4
  %idxprom382 = sext i32 %200 to i64
  %arrayidx383 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom382
  %201 = load i32, i32* %arrayidx383, align 4
  %202 = load i32, i32* @bking_loc, align 4
  %idxprom384 = sext i32 %202 to i64
  %arrayidx385 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom384
  %203 = load i32, i32* %arrayidx385, align 4
  %cmp386 = icmp eq i32 %201, %203
  br i1 %cmp386, label %if.then.387, label %if.else.428

if.then.387:                                      ; preds = %if.else.381
  %204 = load i32, i32* @bking_loc, align 4
  %205 = load i32, i32* %from, align 4
  %cmp388 = icmp sgt i32 %204, %205
  br i1 %cmp388, label %if.then.389, label %if.else.408

if.then.389:                                      ; preds = %if.then.387
  %206 = load i32, i32* @bking_loc, align 4
  %sub390 = sub nsw i32 %206, 1
  store i32 %sub390, i32* %l, align 4
  br label %for.cond.391

for.cond.391:                                     ; preds = %for.inc.396, %if.then.389
  %207 = load i32, i32* %l, align 4
  %idxprom392 = sext i32 %207 to i64
  %arrayidx393 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom392
  %208 = load i32, i32* %arrayidx393, align 4
  %cmp394 = icmp eq i32 %208, 13
  br i1 %cmp394, label %for.body.395, label %for.end.398

for.body.395:                                     ; preds = %for.cond.391
  br label %for.inc.396

for.inc.396:                                      ; preds = %for.body.395
  %209 = load i32, i32* %l, align 4
  %sub397 = sub nsw i32 %209, 1
  store i32 %sub397, i32* %l, align 4
  br label %for.cond.391

for.end.398:                                      ; preds = %for.cond.391
  %210 = load i32, i32* %l, align 4
  %idxprom399 = sext i32 %210 to i64
  %arrayidx400 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom399
  %211 = load i32, i32* %arrayidx400, align 4
  %cmp401 = icmp eq i32 %211, 7
  br i1 %cmp401, label %if.then.406, label %lor.lhs.false.402

lor.lhs.false.402:                                ; preds = %for.end.398
  %212 = load i32, i32* %l, align 4
  %idxprom403 = sext i32 %212 to i64
  %arrayidx404 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom403
  %213 = load i32, i32* %arrayidx404, align 4
  %cmp405 = icmp eq i32 %213, 9
  br i1 %cmp405, label %if.then.406, label %if.end.407

if.then.406:                                      ; preds = %lor.lhs.false.402, %for.end.398
  store i32 0, i32* %retval
  br label %return

if.end.407:                                       ; preds = %lor.lhs.false.402
  br label %if.end.427

if.else.408:                                      ; preds = %if.then.387
  %214 = load i32, i32* @bking_loc, align 4
  %add409 = add nsw i32 %214, 1
  store i32 %add409, i32* %l, align 4
  br label %for.cond.410

for.cond.410:                                     ; preds = %for.inc.415, %if.else.408
  %215 = load i32, i32* %l, align 4
  %idxprom411 = sext i32 %215 to i64
  %arrayidx412 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom411
  %216 = load i32, i32* %arrayidx412, align 4
  %cmp413 = icmp eq i32 %216, 13
  br i1 %cmp413, label %for.body.414, label %for.end.417

for.body.414:                                     ; preds = %for.cond.410
  br label %for.inc.415

for.inc.415:                                      ; preds = %for.body.414
  %217 = load i32, i32* %l, align 4
  %add416 = add nsw i32 %217, 1
  store i32 %add416, i32* %l, align 4
  br label %for.cond.410

for.end.417:                                      ; preds = %for.cond.410
  %218 = load i32, i32* %l, align 4
  %idxprom418 = sext i32 %218 to i64
  %arrayidx419 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom418
  %219 = load i32, i32* %arrayidx419, align 4
  %cmp420 = icmp eq i32 %219, 7
  br i1 %cmp420, label %if.then.425, label %lor.lhs.false.421

lor.lhs.false.421:                                ; preds = %for.end.417
  %220 = load i32, i32* %l, align 4
  %idxprom422 = sext i32 %220 to i64
  %arrayidx423 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom422
  %221 = load i32, i32* %arrayidx423, align 4
  %cmp424 = icmp eq i32 %221, 9
  br i1 %cmp424, label %if.then.425, label %if.end.426

if.then.425:                                      ; preds = %lor.lhs.false.421, %for.end.417
  store i32 0, i32* %retval
  br label %return

if.end.426:                                       ; preds = %lor.lhs.false.421
  br label %if.end.427

if.end.427:                                       ; preds = %if.end.426, %if.end.407
  br label %if.end.524

if.else.428:                                      ; preds = %if.else.381
  %222 = load i32, i32* %from, align 4
  %idxprom429 = sext i32 %222 to i64
  %arrayidx430 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom429
  %223 = load i32, i32* %arrayidx430, align 4
  %224 = load i32, i32* @bking_loc, align 4
  %idxprom431 = sext i32 %224 to i64
  %arrayidx432 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom431
  %225 = load i32, i32* %arrayidx432, align 4
  %cmp433 = icmp eq i32 %223, %225
  br i1 %cmp433, label %if.then.434, label %if.else.475

if.then.434:                                      ; preds = %if.else.428
  %226 = load i32, i32* @bking_loc, align 4
  %227 = load i32, i32* %from, align 4
  %cmp435 = icmp sgt i32 %226, %227
  br i1 %cmp435, label %if.then.436, label %if.else.455

if.then.436:                                      ; preds = %if.then.434
  %228 = load i32, i32* @bking_loc, align 4
  %sub437 = sub nsw i32 %228, 13
  store i32 %sub437, i32* %l, align 4
  br label %for.cond.438

for.cond.438:                                     ; preds = %for.inc.443, %if.then.436
  %229 = load i32, i32* %l, align 4
  %idxprom439 = sext i32 %229 to i64
  %arrayidx440 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom439
  %230 = load i32, i32* %arrayidx440, align 4
  %cmp441 = icmp eq i32 %230, 13
  br i1 %cmp441, label %for.body.442, label %for.end.445

for.body.442:                                     ; preds = %for.cond.438
  br label %for.inc.443

for.inc.443:                                      ; preds = %for.body.442
  %231 = load i32, i32* %l, align 4
  %sub444 = sub nsw i32 %231, 13
  store i32 %sub444, i32* %l, align 4
  br label %for.cond.438

for.end.445:                                      ; preds = %for.cond.438
  %232 = load i32, i32* %l, align 4
  %idxprom446 = sext i32 %232 to i64
  %arrayidx447 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom446
  %233 = load i32, i32* %arrayidx447, align 4
  %cmp448 = icmp eq i32 %233, 11
  br i1 %cmp448, label %if.then.453, label %lor.lhs.false.449

lor.lhs.false.449:                                ; preds = %for.end.445
  %234 = load i32, i32* %l, align 4
  %idxprom450 = sext i32 %234 to i64
  %arrayidx451 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom450
  %235 = load i32, i32* %arrayidx451, align 4
  %cmp452 = icmp eq i32 %235, 9
  br i1 %cmp452, label %if.then.453, label %if.end.454

if.then.453:                                      ; preds = %lor.lhs.false.449, %for.end.445
  store i32 0, i32* %retval
  br label %return

if.end.454:                                       ; preds = %lor.lhs.false.449
  br label %if.end.474

if.else.455:                                      ; preds = %if.then.434
  %236 = load i32, i32* @bking_loc, align 4
  %add456 = add nsw i32 %236, 13
  store i32 %add456, i32* %l, align 4
  br label %for.cond.457

for.cond.457:                                     ; preds = %for.inc.462, %if.else.455
  %237 = load i32, i32* %l, align 4
  %idxprom458 = sext i32 %237 to i64
  %arrayidx459 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom458
  %238 = load i32, i32* %arrayidx459, align 4
  %cmp460 = icmp eq i32 %238, 13
  br i1 %cmp460, label %for.body.461, label %for.end.464

for.body.461:                                     ; preds = %for.cond.457
  br label %for.inc.462

for.inc.462:                                      ; preds = %for.body.461
  %239 = load i32, i32* %l, align 4
  %add463 = add nsw i32 %239, 13
  store i32 %add463, i32* %l, align 4
  br label %for.cond.457

for.end.464:                                      ; preds = %for.cond.457
  %240 = load i32, i32* %l, align 4
  %idxprom465 = sext i32 %240 to i64
  %arrayidx466 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom465
  %241 = load i32, i32* %arrayidx466, align 4
  %cmp467 = icmp eq i32 %241, 11
  br i1 %cmp467, label %if.then.472, label %lor.lhs.false.468

lor.lhs.false.468:                                ; preds = %for.end.464
  %242 = load i32, i32* %l, align 4
  %idxprom469 = sext i32 %242 to i64
  %arrayidx470 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom469
  %243 = load i32, i32* %arrayidx470, align 4
  %cmp471 = icmp eq i32 %243, 9
  br i1 %cmp471, label %if.then.472, label %if.end.473

if.then.472:                                      ; preds = %lor.lhs.false.468, %for.end.464
  store i32 0, i32* %retval
  br label %return

if.end.473:                                       ; preds = %lor.lhs.false.468
  br label %if.end.474

if.end.474:                                       ; preds = %if.end.473, %if.end.454
  br label %if.end.523

if.else.475:                                      ; preds = %if.else.428
  %244 = load i32, i32* %from, align 4
  %idxprom476 = sext i32 %244 to i64
  %arrayidx477 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom476
  %245 = load i32, i32* %arrayidx477, align 4
  %246 = load i32, i32* @bking_loc, align 4
  %idxprom478 = sext i32 %246 to i64
  %arrayidx479 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom478
  %247 = load i32, i32* %arrayidx479, align 4
  %cmp480 = icmp eq i32 %245, %247
  br i1 %cmp480, label %if.then.481, label %if.end.522

if.then.481:                                      ; preds = %if.else.475
  %248 = load i32, i32* @bking_loc, align 4
  %249 = load i32, i32* %from, align 4
  %cmp482 = icmp sgt i32 %248, %249
  br i1 %cmp482, label %if.then.483, label %if.else.502

if.then.483:                                      ; preds = %if.then.481
  %250 = load i32, i32* @bking_loc, align 4
  %sub484 = sub nsw i32 %250, 11
  store i32 %sub484, i32* %l, align 4
  br label %for.cond.485

for.cond.485:                                     ; preds = %for.inc.490, %if.then.483
  %251 = load i32, i32* %l, align 4
  %idxprom486 = sext i32 %251 to i64
  %arrayidx487 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom486
  %252 = load i32, i32* %arrayidx487, align 4
  %cmp488 = icmp eq i32 %252, 13
  br i1 %cmp488, label %for.body.489, label %for.end.492

for.body.489:                                     ; preds = %for.cond.485
  br label %for.inc.490

for.inc.490:                                      ; preds = %for.body.489
  %253 = load i32, i32* %l, align 4
  %sub491 = sub nsw i32 %253, 11
  store i32 %sub491, i32* %l, align 4
  br label %for.cond.485

for.end.492:                                      ; preds = %for.cond.485
  %254 = load i32, i32* %l, align 4
  %idxprom493 = sext i32 %254 to i64
  %arrayidx494 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom493
  %255 = load i32, i32* %arrayidx494, align 4
  %cmp495 = icmp eq i32 %255, 11
  br i1 %cmp495, label %if.then.500, label %lor.lhs.false.496

lor.lhs.false.496:                                ; preds = %for.end.492
  %256 = load i32, i32* %l, align 4
  %idxprom497 = sext i32 %256 to i64
  %arrayidx498 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom497
  %257 = load i32, i32* %arrayidx498, align 4
  %cmp499 = icmp eq i32 %257, 9
  br i1 %cmp499, label %if.then.500, label %if.end.501

if.then.500:                                      ; preds = %lor.lhs.false.496, %for.end.492
  store i32 0, i32* %retval
  br label %return

if.end.501:                                       ; preds = %lor.lhs.false.496
  br label %if.end.521

if.else.502:                                      ; preds = %if.then.481
  %258 = load i32, i32* @bking_loc, align 4
  %add503 = add nsw i32 %258, 11
  store i32 %add503, i32* %l, align 4
  br label %for.cond.504

for.cond.504:                                     ; preds = %for.inc.509, %if.else.502
  %259 = load i32, i32* %l, align 4
  %idxprom505 = sext i32 %259 to i64
  %arrayidx506 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom505
  %260 = load i32, i32* %arrayidx506, align 4
  %cmp507 = icmp eq i32 %260, 13
  br i1 %cmp507, label %for.body.508, label %for.end.511

for.body.508:                                     ; preds = %for.cond.504
  br label %for.inc.509

for.inc.509:                                      ; preds = %for.body.508
  %261 = load i32, i32* %l, align 4
  %add510 = add nsw i32 %261, 11
  store i32 %add510, i32* %l, align 4
  br label %for.cond.504

for.end.511:                                      ; preds = %for.cond.504
  %262 = load i32, i32* %l, align 4
  %idxprom512 = sext i32 %262 to i64
  %arrayidx513 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom512
  %263 = load i32, i32* %arrayidx513, align 4
  %cmp514 = icmp eq i32 %263, 11
  br i1 %cmp514, label %if.then.519, label %lor.lhs.false.515

lor.lhs.false.515:                                ; preds = %for.end.511
  %264 = load i32, i32* %l, align 4
  %idxprom516 = sext i32 %264 to i64
  %arrayidx517 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom516
  %265 = load i32, i32* %arrayidx517, align 4
  %cmp518 = icmp eq i32 %265, 9
  br i1 %cmp518, label %if.then.519, label %if.end.520

if.then.519:                                      ; preds = %lor.lhs.false.515, %for.end.511
  store i32 0, i32* %retval
  br label %return

if.end.520:                                       ; preds = %lor.lhs.false.515
  br label %if.end.521

if.end.521:                                       ; preds = %if.end.520, %if.end.501
  br label %if.end.522

if.end.522:                                       ; preds = %if.end.521, %if.else.475
  br label %if.end.523

if.end.523:                                       ; preds = %if.end.522, %if.end.474
  br label %if.end.524

if.end.524:                                       ; preds = %if.end.523, %if.end.427
  br label %if.end.525

if.end.525:                                       ; preds = %if.end.524, %if.end.380
  store i32 1, i32* %retval
  br label %return

if.end.526:                                       ; preds = %sw.epilog
  br label %if.end.527

if.end.527:                                       ; preds = %if.end.526, %if.then.69
  %266 = load i32, i32* @bking_loc, align 4
  %call528 = call i32 @is_attacked(i32 %266, i32 1)
  %tobool529 = icmp ne i32 %call528, 0
  br i1 %tobool529, label %if.then.530, label %if.else.531

if.then.530:                                      ; preds = %if.end.527
  store i32 0, i32* %retval
  br label %return

if.else.531:                                      ; preds = %if.end.527
  store i32 1, i32* %retval
  br label %return

if.else.532:                                      ; preds = %if.else
  %267 = load i32, i32* %incheck.addr, align 4
  %tobool533 = icmp ne i32 %267, 0
  br i1 %tobool533, label %if.end.1010, label %if.then.534

if.then.534:                                      ; preds = %if.else.532
  %268 = load i32, i32* %m.addr, align 4
  %idxprom535 = sext i32 %268 to i64
  %269 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx536 = getelementptr inbounds %struct.move_s, %struct.move_s* %269, i64 %idxprom535
  %from537 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx536, i32 0, i32 0
  %270 = load i32, i32* %from537, align 4
  %cmp538 = icmp eq i32 %270, 0
  br i1 %cmp538, label %if.then.539, label %if.end.540

if.then.539:                                      ; preds = %if.then.534
  store i32 1, i32* %retval
  br label %return

if.end.540:                                       ; preds = %if.then.534
  %271 = load i32, i32* %m.addr, align 4
  %idxprom541 = sext i32 %271 to i64
  %272 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx542 = getelementptr inbounds %struct.move_s, %struct.move_s* %272, i64 %idxprom541
  %promoted543 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx542, i32 0, i32 3
  %273 = load i32, i32* %promoted543, align 4
  %tobool544 = icmp ne i32 %273, 0
  br i1 %tobool544, label %cond.true.545, label %cond.false.546

cond.true.545:                                    ; preds = %if.end.540
  br label %cond.end.549

cond.false.546:                                   ; preds = %if.end.540
  %274 = load i32, i32* %target, align 4
  %idxprom547 = sext i32 %274 to i64
  %arrayidx548 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom547
  %275 = load i32, i32* %arrayidx548, align 4
  br label %cond.end.549

cond.end.549:                                     ; preds = %cond.false.546, %cond.true.545
  %cond550 = phi i32 [ 1, %cond.true.545 ], [ %275, %cond.false.546 ]
  switch i32 %cond550, label %sw.default.812 [
    i32 1, label %sw.bb.551
    i32 3, label %sw.bb.603
    i32 11, label %sw.bb.629
    i32 7, label %sw.bb.665
    i32 9, label %sw.bb.701
  ]

sw.bb.551:                                        ; preds = %cond.end.549
  %276 = load i32, i32* %m.addr, align 4
  %idxprom552 = sext i32 %276 to i64
  %277 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx553 = getelementptr inbounds %struct.move_s, %struct.move_s* %277, i64 %idxprom552
  %captured554 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx553, i32 0, i32 2
  %278 = load i32, i32* %captured554, align 4
  %cmp555 = icmp ne i32 %278, 13
  br i1 %cmp555, label %if.then.556, label %if.else.582

if.then.556:                                      ; preds = %sw.bb.551
  %279 = load i32, i32* %from, align 4
  %idxprom557 = sext i32 %279 to i64
  %arrayidx558 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom557
  %280 = load i32, i32* %arrayidx558, align 4
  %281 = load i32, i32* @wking_loc, align 4
  %idxprom559 = sext i32 %281 to i64
  %arrayidx560 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom559
  %282 = load i32, i32* %arrayidx560, align 4
  %cmp561 = icmp ne i32 %280, %282
  br i1 %cmp561, label %land.lhs.true.562, label %if.end.581

land.lhs.true.562:                                ; preds = %if.then.556
  %283 = load i32, i32* %from, align 4
  %idxprom563 = sext i32 %283 to i64
  %arrayidx564 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom563
  %284 = load i32, i32* %arrayidx564, align 4
  %285 = load i32, i32* @wking_loc, align 4
  %idxprom565 = sext i32 %285 to i64
  %arrayidx566 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom565
  %286 = load i32, i32* %arrayidx566, align 4
  %cmp567 = icmp ne i32 %284, %286
  br i1 %cmp567, label %land.lhs.true.568, label %if.end.581

land.lhs.true.568:                                ; preds = %land.lhs.true.562
  %287 = load i32, i32* %from, align 4
  %idxprom569 = sext i32 %287 to i64
  %arrayidx570 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom569
  %288 = load i32, i32* %arrayidx570, align 4
  %289 = load i32, i32* @wking_loc, align 4
  %idxprom571 = sext i32 %289 to i64
  %arrayidx572 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom571
  %290 = load i32, i32* %arrayidx572, align 4
  %cmp573 = icmp ne i32 %288, %290
  br i1 %cmp573, label %land.lhs.true.574, label %if.end.581

land.lhs.true.574:                                ; preds = %land.lhs.true.568
  %291 = load i32, i32* %from, align 4
  %idxprom575 = sext i32 %291 to i64
  %arrayidx576 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom575
  %292 = load i32, i32* %arrayidx576, align 4
  %293 = load i32, i32* @wking_loc, align 4
  %idxprom577 = sext i32 %293 to i64
  %arrayidx578 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom577
  %294 = load i32, i32* %arrayidx578, align 4
  %cmp579 = icmp ne i32 %292, %294
  br i1 %cmp579, label %if.then.580, label %if.end.581

if.then.580:                                      ; preds = %land.lhs.true.574
  store i32 1, i32* %retval
  br label %return

if.end.581:                                       ; preds = %land.lhs.true.574, %land.lhs.true.568, %land.lhs.true.562, %if.then.556
  br label %if.end.602

if.else.582:                                      ; preds = %sw.bb.551
  %295 = load i32, i32* %from, align 4
  %idxprom583 = sext i32 %295 to i64
  %arrayidx584 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom583
  %296 = load i32, i32* %arrayidx584, align 4
  %297 = load i32, i32* @wking_loc, align 4
  %idxprom585 = sext i32 %297 to i64
  %arrayidx586 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom585
  %298 = load i32, i32* %arrayidx586, align 4
  %cmp587 = icmp ne i32 %296, %298
  br i1 %cmp587, label %land.lhs.true.588, label %if.end.601

land.lhs.true.588:                                ; preds = %if.else.582
  %299 = load i32, i32* %from, align 4
  %idxprom589 = sext i32 %299 to i64
  %arrayidx590 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom589
  %300 = load i32, i32* %arrayidx590, align 4
  %301 = load i32, i32* @wking_loc, align 4
  %idxprom591 = sext i32 %301 to i64
  %arrayidx592 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom591
  %302 = load i32, i32* %arrayidx592, align 4
  %cmp593 = icmp ne i32 %300, %302
  br i1 %cmp593, label %land.lhs.true.594, label %if.end.601

land.lhs.true.594:                                ; preds = %land.lhs.true.588
  %303 = load i32, i32* %from, align 4
  %idxprom595 = sext i32 %303 to i64
  %arrayidx596 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom595
  %304 = load i32, i32* %arrayidx596, align 4
  %305 = load i32, i32* @wking_loc, align 4
  %idxprom597 = sext i32 %305 to i64
  %arrayidx598 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom597
  %306 = load i32, i32* %arrayidx598, align 4
  %cmp599 = icmp ne i32 %304, %306
  br i1 %cmp599, label %if.then.600, label %if.end.601

if.then.600:                                      ; preds = %land.lhs.true.594
  store i32 1, i32* %retval
  br label %return

if.end.601:                                       ; preds = %land.lhs.true.594, %land.lhs.true.588, %if.else.582
  br label %if.end.602

if.end.602:                                       ; preds = %if.end.601, %if.end.581
  br label %sw.epilog.813

sw.bb.603:                                        ; preds = %cond.end.549
  %307 = load i32, i32* %from, align 4
  %idxprom604 = sext i32 %307 to i64
  %arrayidx605 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom604
  %308 = load i32, i32* %arrayidx605, align 4
  %309 = load i32, i32* @wking_loc, align 4
  %idxprom606 = sext i32 %309 to i64
  %arrayidx607 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom606
  %310 = load i32, i32* %arrayidx607, align 4
  %cmp608 = icmp ne i32 %308, %310
  br i1 %cmp608, label %land.lhs.true.609, label %if.end.628

land.lhs.true.609:                                ; preds = %sw.bb.603
  %311 = load i32, i32* %from, align 4
  %idxprom610 = sext i32 %311 to i64
  %arrayidx611 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom610
  %312 = load i32, i32* %arrayidx611, align 4
  %313 = load i32, i32* @wking_loc, align 4
  %idxprom612 = sext i32 %313 to i64
  %arrayidx613 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom612
  %314 = load i32, i32* %arrayidx613, align 4
  %cmp614 = icmp ne i32 %312, %314
  br i1 %cmp614, label %land.lhs.true.615, label %if.end.628

land.lhs.true.615:                                ; preds = %land.lhs.true.609
  %315 = load i32, i32* %from, align 4
  %idxprom616 = sext i32 %315 to i64
  %arrayidx617 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom616
  %316 = load i32, i32* %arrayidx617, align 4
  %317 = load i32, i32* @wking_loc, align 4
  %idxprom618 = sext i32 %317 to i64
  %arrayidx619 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom618
  %318 = load i32, i32* %arrayidx619, align 4
  %cmp620 = icmp ne i32 %316, %318
  br i1 %cmp620, label %land.lhs.true.621, label %if.end.628

land.lhs.true.621:                                ; preds = %land.lhs.true.615
  %319 = load i32, i32* %from, align 4
  %idxprom622 = sext i32 %319 to i64
  %arrayidx623 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom622
  %320 = load i32, i32* %arrayidx623, align 4
  %321 = load i32, i32* @wking_loc, align 4
  %idxprom624 = sext i32 %321 to i64
  %arrayidx625 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom624
  %322 = load i32, i32* %arrayidx625, align 4
  %cmp626 = icmp ne i32 %320, %322
  br i1 %cmp626, label %if.then.627, label %if.end.628

if.then.627:                                      ; preds = %land.lhs.true.621
  store i32 1, i32* %retval
  br label %return

if.end.628:                                       ; preds = %land.lhs.true.621, %land.lhs.true.615, %land.lhs.true.609, %sw.bb.603
  br label %sw.epilog.813

sw.bb.629:                                        ; preds = %cond.end.549
  %323 = load i32, i32* %from, align 4
  %idxprom630 = sext i32 %323 to i64
  %arrayidx631 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom630
  %324 = load i32, i32* %arrayidx631, align 4
  %325 = load i32, i32* @wking_loc, align 4
  %idxprom632 = sext i32 %325 to i64
  %arrayidx633 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom632
  %326 = load i32, i32* %arrayidx633, align 4
  %cmp634 = icmp ne i32 %324, %326
  br i1 %cmp634, label %land.lhs.true.635, label %if.end.664

land.lhs.true.635:                                ; preds = %sw.bb.629
  %327 = load i32, i32* %from, align 4
  %idxprom636 = sext i32 %327 to i64
  %arrayidx637 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom636
  %328 = load i32, i32* %arrayidx637, align 4
  %329 = load i32, i32* @wking_loc, align 4
  %idxprom638 = sext i32 %329 to i64
  %arrayidx639 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom638
  %330 = load i32, i32* %arrayidx639, align 4
  %cmp640 = icmp ne i32 %328, %330
  br i1 %cmp640, label %if.then.641, label %if.end.664

if.then.641:                                      ; preds = %land.lhs.true.635
  %331 = load i32, i32* %from, align 4
  %idxprom642 = sext i32 %331 to i64
  %arrayidx643 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom642
  %332 = load i32, i32* %arrayidx643, align 4
  %333 = load i32, i32* %target, align 4
  %idxprom644 = sext i32 %333 to i64
  %arrayidx645 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom644
  %334 = load i32, i32* %arrayidx645, align 4
  %cmp646 = icmp eq i32 %332, %334
  br i1 %cmp646, label %if.then.647, label %if.else.655

if.then.647:                                      ; preds = %if.then.641
  %335 = load i32, i32* %from, align 4
  %idxprom648 = sext i32 %335 to i64
  %arrayidx649 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom648
  %336 = load i32, i32* %arrayidx649, align 4
  %337 = load i32, i32* @wking_loc, align 4
  %idxprom650 = sext i32 %337 to i64
  %arrayidx651 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom650
  %338 = load i32, i32* %arrayidx651, align 4
  %cmp652 = icmp ne i32 %336, %338
  br i1 %cmp652, label %if.then.653, label %if.end.654

if.then.653:                                      ; preds = %if.then.647
  store i32 1, i32* %retval
  br label %return

if.end.654:                                       ; preds = %if.then.647
  br label %if.end.663

if.else.655:                                      ; preds = %if.then.641
  %339 = load i32, i32* %from, align 4
  %idxprom656 = sext i32 %339 to i64
  %arrayidx657 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom656
  %340 = load i32, i32* %arrayidx657, align 4
  %341 = load i32, i32* @wking_loc, align 4
  %idxprom658 = sext i32 %341 to i64
  %arrayidx659 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom658
  %342 = load i32, i32* %arrayidx659, align 4
  %cmp660 = icmp ne i32 %340, %342
  br i1 %cmp660, label %if.then.661, label %if.end.662

if.then.661:                                      ; preds = %if.else.655
  store i32 1, i32* %retval
  br label %return

if.end.662:                                       ; preds = %if.else.655
  br label %if.end.663

if.end.663:                                       ; preds = %if.end.662, %if.end.654
  br label %if.end.664

if.end.664:                                       ; preds = %if.end.663, %land.lhs.true.635, %sw.bb.629
  br label %sw.epilog.813

sw.bb.665:                                        ; preds = %cond.end.549
  %343 = load i32, i32* %from, align 4
  %idxprom666 = sext i32 %343 to i64
  %arrayidx667 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom666
  %344 = load i32, i32* %arrayidx667, align 4
  %345 = load i32, i32* @wking_loc, align 4
  %idxprom668 = sext i32 %345 to i64
  %arrayidx669 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom668
  %346 = load i32, i32* %arrayidx669, align 4
  %cmp670 = icmp ne i32 %344, %346
  br i1 %cmp670, label %land.lhs.true.671, label %if.end.700

land.lhs.true.671:                                ; preds = %sw.bb.665
  %347 = load i32, i32* %from, align 4
  %idxprom672 = sext i32 %347 to i64
  %arrayidx673 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom672
  %348 = load i32, i32* %arrayidx673, align 4
  %349 = load i32, i32* @wking_loc, align 4
  %idxprom674 = sext i32 %349 to i64
  %arrayidx675 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom674
  %350 = load i32, i32* %arrayidx675, align 4
  %cmp676 = icmp ne i32 %348, %350
  br i1 %cmp676, label %if.then.677, label %if.end.700

if.then.677:                                      ; preds = %land.lhs.true.671
  %351 = load i32, i32* %from, align 4
  %idxprom678 = sext i32 %351 to i64
  %arrayidx679 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom678
  %352 = load i32, i32* %arrayidx679, align 4
  %353 = load i32, i32* %target, align 4
  %idxprom680 = sext i32 %353 to i64
  %arrayidx681 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom680
  %354 = load i32, i32* %arrayidx681, align 4
  %cmp682 = icmp eq i32 %352, %354
  br i1 %cmp682, label %if.then.683, label %if.else.691

if.then.683:                                      ; preds = %if.then.677
  %355 = load i32, i32* %from, align 4
  %idxprom684 = sext i32 %355 to i64
  %arrayidx685 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom684
  %356 = load i32, i32* %arrayidx685, align 4
  %357 = load i32, i32* @wking_loc, align 4
  %idxprom686 = sext i32 %357 to i64
  %arrayidx687 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom686
  %358 = load i32, i32* %arrayidx687, align 4
  %cmp688 = icmp ne i32 %356, %358
  br i1 %cmp688, label %if.then.689, label %if.end.690

if.then.689:                                      ; preds = %if.then.683
  store i32 1, i32* %retval
  br label %return

if.end.690:                                       ; preds = %if.then.683
  br label %if.end.699

if.else.691:                                      ; preds = %if.then.677
  %359 = load i32, i32* %from, align 4
  %idxprom692 = sext i32 %359 to i64
  %arrayidx693 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom692
  %360 = load i32, i32* %arrayidx693, align 4
  %361 = load i32, i32* @wking_loc, align 4
  %idxprom694 = sext i32 %361 to i64
  %arrayidx695 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom694
  %362 = load i32, i32* %arrayidx695, align 4
  %cmp696 = icmp ne i32 %360, %362
  br i1 %cmp696, label %if.then.697, label %if.end.698

if.then.697:                                      ; preds = %if.else.691
  store i32 1, i32* %retval
  br label %return

if.end.698:                                       ; preds = %if.else.691
  br label %if.end.699

if.end.699:                                       ; preds = %if.end.698, %if.end.690
  br label %if.end.700

if.end.700:                                       ; preds = %if.end.699, %land.lhs.true.671, %sw.bb.665
  br label %sw.epilog.813

sw.bb.701:                                        ; preds = %cond.end.549
  %363 = load i32, i32* %from, align 4
  %idxprom702 = sext i32 %363 to i64
  %arrayidx703 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom702
  %364 = load i32, i32* %arrayidx703, align 4
  %365 = load i32, i32* %m.addr, align 4
  %idxprom704 = sext i32 %365 to i64
  %366 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx705 = getelementptr inbounds %struct.move_s, %struct.move_s* %366, i64 %idxprom704
  %target706 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx705, i32 0, i32 1
  %367 = load i32, i32* %target706, align 4
  %idxprom707 = sext i32 %367 to i64
  %arrayidx708 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom707
  %368 = load i32, i32* %arrayidx708, align 4
  %cmp709 = icmp eq i32 %364, %368
  br i1 %cmp709, label %if.then.710, label %if.else.730

if.then.710:                                      ; preds = %sw.bb.701
  %369 = load i32, i32* %from, align 4
  %idxprom711 = sext i32 %369 to i64
  %arrayidx712 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom711
  %370 = load i32, i32* %arrayidx712, align 4
  %371 = load i32, i32* @wking_loc, align 4
  %idxprom713 = sext i32 %371 to i64
  %arrayidx714 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom713
  %372 = load i32, i32* %arrayidx714, align 4
  %cmp715 = icmp ne i32 %370, %372
  br i1 %cmp715, label %land.lhs.true.716, label %if.end.729

land.lhs.true.716:                                ; preds = %if.then.710
  %373 = load i32, i32* %from, align 4
  %idxprom717 = sext i32 %373 to i64
  %arrayidx718 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom717
  %374 = load i32, i32* %arrayidx718, align 4
  %375 = load i32, i32* @wking_loc, align 4
  %idxprom719 = sext i32 %375 to i64
  %arrayidx720 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom719
  %376 = load i32, i32* %arrayidx720, align 4
  %cmp721 = icmp ne i32 %374, %376
  br i1 %cmp721, label %land.lhs.true.722, label %if.end.729

land.lhs.true.722:                                ; preds = %land.lhs.true.716
  %377 = load i32, i32* %from, align 4
  %idxprom723 = sext i32 %377 to i64
  %arrayidx724 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom723
  %378 = load i32, i32* %arrayidx724, align 4
  %379 = load i32, i32* @wking_loc, align 4
  %idxprom725 = sext i32 %379 to i64
  %arrayidx726 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom725
  %380 = load i32, i32* %arrayidx726, align 4
  %cmp727 = icmp ne i32 %378, %380
  br i1 %cmp727, label %if.then.728, label %if.end.729

if.then.728:                                      ; preds = %land.lhs.true.722
  store i32 1, i32* %retval
  br label %return

if.end.729:                                       ; preds = %land.lhs.true.722, %land.lhs.true.716, %if.then.710
  br label %if.end.811

if.else.730:                                      ; preds = %sw.bb.701
  %381 = load i32, i32* %from, align 4
  %idxprom731 = sext i32 %381 to i64
  %arrayidx732 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom731
  %382 = load i32, i32* %arrayidx732, align 4
  %383 = load i32, i32* %target, align 4
  %idxprom733 = sext i32 %383 to i64
  %arrayidx734 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom733
  %384 = load i32, i32* %arrayidx734, align 4
  %cmp735 = icmp eq i32 %382, %384
  br i1 %cmp735, label %if.then.736, label %if.else.756

if.then.736:                                      ; preds = %if.else.730
  %385 = load i32, i32* %from, align 4
  %idxprom737 = sext i32 %385 to i64
  %arrayidx738 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom737
  %386 = load i32, i32* %arrayidx738, align 4
  %387 = load i32, i32* @wking_loc, align 4
  %idxprom739 = sext i32 %387 to i64
  %arrayidx740 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom739
  %388 = load i32, i32* %arrayidx740, align 4
  %cmp741 = icmp ne i32 %386, %388
  br i1 %cmp741, label %land.lhs.true.742, label %if.end.755

land.lhs.true.742:                                ; preds = %if.then.736
  %389 = load i32, i32* %from, align 4
  %idxprom743 = sext i32 %389 to i64
  %arrayidx744 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom743
  %390 = load i32, i32* %arrayidx744, align 4
  %391 = load i32, i32* @wking_loc, align 4
  %idxprom745 = sext i32 %391 to i64
  %arrayidx746 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom745
  %392 = load i32, i32* %arrayidx746, align 4
  %cmp747 = icmp ne i32 %390, %392
  br i1 %cmp747, label %land.lhs.true.748, label %if.end.755

land.lhs.true.748:                                ; preds = %land.lhs.true.742
  %393 = load i32, i32* %from, align 4
  %idxprom749 = sext i32 %393 to i64
  %arrayidx750 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom749
  %394 = load i32, i32* %arrayidx750, align 4
  %395 = load i32, i32* @wking_loc, align 4
  %idxprom751 = sext i32 %395 to i64
  %arrayidx752 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom751
  %396 = load i32, i32* %arrayidx752, align 4
  %cmp753 = icmp ne i32 %394, %396
  br i1 %cmp753, label %if.then.754, label %if.end.755

if.then.754:                                      ; preds = %land.lhs.true.748
  store i32 1, i32* %retval
  br label %return

if.end.755:                                       ; preds = %land.lhs.true.748, %land.lhs.true.742, %if.then.736
  br label %if.end.810

if.else.756:                                      ; preds = %if.else.730
  %397 = load i32, i32* %from, align 4
  %idxprom757 = sext i32 %397 to i64
  %arrayidx758 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom757
  %398 = load i32, i32* %arrayidx758, align 4
  %399 = load i32, i32* %target, align 4
  %idxprom759 = sext i32 %399 to i64
  %arrayidx760 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom759
  %400 = load i32, i32* %arrayidx760, align 4
  %cmp761 = icmp eq i32 %398, %400
  br i1 %cmp761, label %if.then.762, label %if.else.782

if.then.762:                                      ; preds = %if.else.756
  %401 = load i32, i32* %from, align 4
  %idxprom763 = sext i32 %401 to i64
  %arrayidx764 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom763
  %402 = load i32, i32* %arrayidx764, align 4
  %403 = load i32, i32* @wking_loc, align 4
  %idxprom765 = sext i32 %403 to i64
  %arrayidx766 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom765
  %404 = load i32, i32* %arrayidx766, align 4
  %cmp767 = icmp ne i32 %402, %404
  br i1 %cmp767, label %land.lhs.true.768, label %if.end.781

land.lhs.true.768:                                ; preds = %if.then.762
  %405 = load i32, i32* %from, align 4
  %idxprom769 = sext i32 %405 to i64
  %arrayidx770 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom769
  %406 = load i32, i32* %arrayidx770, align 4
  %407 = load i32, i32* @wking_loc, align 4
  %idxprom771 = sext i32 %407 to i64
  %arrayidx772 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom771
  %408 = load i32, i32* %arrayidx772, align 4
  %cmp773 = icmp ne i32 %406, %408
  br i1 %cmp773, label %land.lhs.true.774, label %if.end.781

land.lhs.true.774:                                ; preds = %land.lhs.true.768
  %409 = load i32, i32* %from, align 4
  %idxprom775 = sext i32 %409 to i64
  %arrayidx776 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom775
  %410 = load i32, i32* %arrayidx776, align 4
  %411 = load i32, i32* @wking_loc, align 4
  %idxprom777 = sext i32 %411 to i64
  %arrayidx778 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom777
  %412 = load i32, i32* %arrayidx778, align 4
  %cmp779 = icmp ne i32 %410, %412
  br i1 %cmp779, label %if.then.780, label %if.end.781

if.then.780:                                      ; preds = %land.lhs.true.774
  store i32 1, i32* %retval
  br label %return

if.end.781:                                       ; preds = %land.lhs.true.774, %land.lhs.true.768, %if.then.762
  br label %if.end.809

if.else.782:                                      ; preds = %if.else.756
  %413 = load i32, i32* %from, align 4
  %idxprom783 = sext i32 %413 to i64
  %arrayidx784 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom783
  %414 = load i32, i32* %arrayidx784, align 4
  %415 = load i32, i32* %target, align 4
  %idxprom785 = sext i32 %415 to i64
  %arrayidx786 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom785
  %416 = load i32, i32* %arrayidx786, align 4
  %cmp787 = icmp eq i32 %414, %416
  br i1 %cmp787, label %if.then.788, label %if.end.808

if.then.788:                                      ; preds = %if.else.782
  %417 = load i32, i32* %from, align 4
  %idxprom789 = sext i32 %417 to i64
  %arrayidx790 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom789
  %418 = load i32, i32* %arrayidx790, align 4
  %419 = load i32, i32* @wking_loc, align 4
  %idxprom791 = sext i32 %419 to i64
  %arrayidx792 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom791
  %420 = load i32, i32* %arrayidx792, align 4
  %cmp793 = icmp ne i32 %418, %420
  br i1 %cmp793, label %land.lhs.true.794, label %if.end.807

land.lhs.true.794:                                ; preds = %if.then.788
  %421 = load i32, i32* %from, align 4
  %idxprom795 = sext i32 %421 to i64
  %arrayidx796 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom795
  %422 = load i32, i32* %arrayidx796, align 4
  %423 = load i32, i32* @wking_loc, align 4
  %idxprom797 = sext i32 %423 to i64
  %arrayidx798 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom797
  %424 = load i32, i32* %arrayidx798, align 4
  %cmp799 = icmp ne i32 %422, %424
  br i1 %cmp799, label %land.lhs.true.800, label %if.end.807

land.lhs.true.800:                                ; preds = %land.lhs.true.794
  %425 = load i32, i32* %from, align 4
  %idxprom801 = sext i32 %425 to i64
  %arrayidx802 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom801
  %426 = load i32, i32* %arrayidx802, align 4
  %427 = load i32, i32* @wking_loc, align 4
  %idxprom803 = sext i32 %427 to i64
  %arrayidx804 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom803
  %428 = load i32, i32* %arrayidx804, align 4
  %cmp805 = icmp ne i32 %426, %428
  br i1 %cmp805, label %if.then.806, label %if.end.807

if.then.806:                                      ; preds = %land.lhs.true.800
  store i32 1, i32* %retval
  br label %return

if.end.807:                                       ; preds = %land.lhs.true.800, %land.lhs.true.794, %if.then.788
  br label %if.end.808

if.end.808:                                       ; preds = %if.end.807, %if.else.782
  br label %if.end.809

if.end.809:                                       ; preds = %if.end.808, %if.end.781
  br label %if.end.810

if.end.810:                                       ; preds = %if.end.809, %if.end.755
  br label %if.end.811

if.end.811:                                       ; preds = %if.end.810, %if.end.729
  br label %sw.epilog.813

sw.default.812:                                   ; preds = %cond.end.549
  br label %sw.epilog.813

sw.epilog.813:                                    ; preds = %sw.default.812, %if.end.811, %if.end.700, %if.end.664, %if.end.628, %if.end.602
  %429 = load i32, i32* %target, align 4
  %idxprom814 = sext i32 %429 to i64
  %arrayidx815 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom814
  %430 = load i32, i32* %arrayidx815, align 4
  %cmp816 = icmp ne i32 %430, 5
  br i1 %cmp816, label %if.then.817, label %if.end.1009

if.then.817:                                      ; preds = %sw.epilog.813
  %431 = load i32, i32* %from, align 4
  %idxprom818 = sext i32 %431 to i64
  %arrayidx819 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom818
  %432 = load i32, i32* %arrayidx819, align 4
  %433 = load i32, i32* @wking_loc, align 4
  %idxprom820 = sext i32 %433 to i64
  %arrayidx821 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom820
  %434 = load i32, i32* %arrayidx821, align 4
  %cmp822 = icmp eq i32 %432, %434
  br i1 %cmp822, label %if.then.823, label %if.else.864

if.then.823:                                      ; preds = %if.then.817
  %435 = load i32, i32* @wking_loc, align 4
  %436 = load i32, i32* %from, align 4
  %cmp824 = icmp sgt i32 %435, %436
  br i1 %cmp824, label %if.then.825, label %if.else.844

if.then.825:                                      ; preds = %if.then.823
  %437 = load i32, i32* @wking_loc, align 4
  %sub826 = sub nsw i32 %437, 12
  store i32 %sub826, i32* %l, align 4
  br label %for.cond.827

for.cond.827:                                     ; preds = %for.inc.832, %if.then.825
  %438 = load i32, i32* %l, align 4
  %idxprom828 = sext i32 %438 to i64
  %arrayidx829 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom828
  %439 = load i32, i32* %arrayidx829, align 4
  %cmp830 = icmp eq i32 %439, 13
  br i1 %cmp830, label %for.body.831, label %for.end.834

for.body.831:                                     ; preds = %for.cond.827
  br label %for.inc.832

for.inc.832:                                      ; preds = %for.body.831
  %440 = load i32, i32* %l, align 4
  %sub833 = sub nsw i32 %440, 12
  store i32 %sub833, i32* %l, align 4
  br label %for.cond.827

for.end.834:                                      ; preds = %for.cond.827
  %441 = load i32, i32* %l, align 4
  %idxprom835 = sext i32 %441 to i64
  %arrayidx836 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom835
  %442 = load i32, i32* %arrayidx836, align 4
  %cmp837 = icmp eq i32 %442, 8
  br i1 %cmp837, label %if.then.842, label %lor.lhs.false.838

lor.lhs.false.838:                                ; preds = %for.end.834
  %443 = load i32, i32* %l, align 4
  %idxprom839 = sext i32 %443 to i64
  %arrayidx840 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom839
  %444 = load i32, i32* %arrayidx840, align 4
  %cmp841 = icmp eq i32 %444, 10
  br i1 %cmp841, label %if.then.842, label %if.end.843

if.then.842:                                      ; preds = %lor.lhs.false.838, %for.end.834
  store i32 0, i32* %retval
  br label %return

if.end.843:                                       ; preds = %lor.lhs.false.838
  br label %if.end.863

if.else.844:                                      ; preds = %if.then.823
  %445 = load i32, i32* @wking_loc, align 4
  %add845 = add nsw i32 %445, 12
  store i32 %add845, i32* %l, align 4
  br label %for.cond.846

for.cond.846:                                     ; preds = %for.inc.851, %if.else.844
  %446 = load i32, i32* %l, align 4
  %idxprom847 = sext i32 %446 to i64
  %arrayidx848 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom847
  %447 = load i32, i32* %arrayidx848, align 4
  %cmp849 = icmp eq i32 %447, 13
  br i1 %cmp849, label %for.body.850, label %for.end.853

for.body.850:                                     ; preds = %for.cond.846
  br label %for.inc.851

for.inc.851:                                      ; preds = %for.body.850
  %448 = load i32, i32* %l, align 4
  %add852 = add nsw i32 %448, 12
  store i32 %add852, i32* %l, align 4
  br label %for.cond.846

for.end.853:                                      ; preds = %for.cond.846
  %449 = load i32, i32* %l, align 4
  %idxprom854 = sext i32 %449 to i64
  %arrayidx855 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom854
  %450 = load i32, i32* %arrayidx855, align 4
  %cmp856 = icmp eq i32 %450, 8
  br i1 %cmp856, label %if.then.861, label %lor.lhs.false.857

lor.lhs.false.857:                                ; preds = %for.end.853
  %451 = load i32, i32* %l, align 4
  %idxprom858 = sext i32 %451 to i64
  %arrayidx859 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom858
  %452 = load i32, i32* %arrayidx859, align 4
  %cmp860 = icmp eq i32 %452, 10
  br i1 %cmp860, label %if.then.861, label %if.end.862

if.then.861:                                      ; preds = %lor.lhs.false.857, %for.end.853
  store i32 0, i32* %retval
  br label %return

if.end.862:                                       ; preds = %lor.lhs.false.857
  br label %if.end.863

if.end.863:                                       ; preds = %if.end.862, %if.end.843
  br label %if.end.1008

if.else.864:                                      ; preds = %if.then.817
  %453 = load i32, i32* %from, align 4
  %idxprom865 = sext i32 %453 to i64
  %arrayidx866 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom865
  %454 = load i32, i32* %arrayidx866, align 4
  %455 = load i32, i32* @wking_loc, align 4
  %idxprom867 = sext i32 %455 to i64
  %arrayidx868 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom867
  %456 = load i32, i32* %arrayidx868, align 4
  %cmp869 = icmp eq i32 %454, %456
  br i1 %cmp869, label %if.then.870, label %if.else.911

if.then.870:                                      ; preds = %if.else.864
  %457 = load i32, i32* @wking_loc, align 4
  %458 = load i32, i32* %from, align 4
  %cmp871 = icmp sgt i32 %457, %458
  br i1 %cmp871, label %if.then.872, label %if.else.891

if.then.872:                                      ; preds = %if.then.870
  %459 = load i32, i32* @wking_loc, align 4
  %sub873 = sub nsw i32 %459, 1
  store i32 %sub873, i32* %l, align 4
  br label %for.cond.874

for.cond.874:                                     ; preds = %for.inc.879, %if.then.872
  %460 = load i32, i32* %l, align 4
  %idxprom875 = sext i32 %460 to i64
  %arrayidx876 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom875
  %461 = load i32, i32* %arrayidx876, align 4
  %cmp877 = icmp eq i32 %461, 13
  br i1 %cmp877, label %for.body.878, label %for.end.881

for.body.878:                                     ; preds = %for.cond.874
  br label %for.inc.879

for.inc.879:                                      ; preds = %for.body.878
  %462 = load i32, i32* %l, align 4
  %sub880 = sub nsw i32 %462, 1
  store i32 %sub880, i32* %l, align 4
  br label %for.cond.874

for.end.881:                                      ; preds = %for.cond.874
  %463 = load i32, i32* %l, align 4
  %idxprom882 = sext i32 %463 to i64
  %arrayidx883 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom882
  %464 = load i32, i32* %arrayidx883, align 4
  %cmp884 = icmp eq i32 %464, 8
  br i1 %cmp884, label %if.then.889, label %lor.lhs.false.885

lor.lhs.false.885:                                ; preds = %for.end.881
  %465 = load i32, i32* %l, align 4
  %idxprom886 = sext i32 %465 to i64
  %arrayidx887 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom886
  %466 = load i32, i32* %arrayidx887, align 4
  %cmp888 = icmp eq i32 %466, 10
  br i1 %cmp888, label %if.then.889, label %if.end.890

if.then.889:                                      ; preds = %lor.lhs.false.885, %for.end.881
  store i32 0, i32* %retval
  br label %return

if.end.890:                                       ; preds = %lor.lhs.false.885
  br label %if.end.910

if.else.891:                                      ; preds = %if.then.870
  %467 = load i32, i32* @wking_loc, align 4
  %add892 = add nsw i32 %467, 1
  store i32 %add892, i32* %l, align 4
  br label %for.cond.893

for.cond.893:                                     ; preds = %for.inc.898, %if.else.891
  %468 = load i32, i32* %l, align 4
  %idxprom894 = sext i32 %468 to i64
  %arrayidx895 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom894
  %469 = load i32, i32* %arrayidx895, align 4
  %cmp896 = icmp eq i32 %469, 13
  br i1 %cmp896, label %for.body.897, label %for.end.900

for.body.897:                                     ; preds = %for.cond.893
  br label %for.inc.898

for.inc.898:                                      ; preds = %for.body.897
  %470 = load i32, i32* %l, align 4
  %add899 = add nsw i32 %470, 1
  store i32 %add899, i32* %l, align 4
  br label %for.cond.893

for.end.900:                                      ; preds = %for.cond.893
  %471 = load i32, i32* %l, align 4
  %idxprom901 = sext i32 %471 to i64
  %arrayidx902 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom901
  %472 = load i32, i32* %arrayidx902, align 4
  %cmp903 = icmp eq i32 %472, 8
  br i1 %cmp903, label %if.then.908, label %lor.lhs.false.904

lor.lhs.false.904:                                ; preds = %for.end.900
  %473 = load i32, i32* %l, align 4
  %idxprom905 = sext i32 %473 to i64
  %arrayidx906 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom905
  %474 = load i32, i32* %arrayidx906, align 4
  %cmp907 = icmp eq i32 %474, 10
  br i1 %cmp907, label %if.then.908, label %if.end.909

if.then.908:                                      ; preds = %lor.lhs.false.904, %for.end.900
  store i32 0, i32* %retval
  br label %return

if.end.909:                                       ; preds = %lor.lhs.false.904
  br label %if.end.910

if.end.910:                                       ; preds = %if.end.909, %if.end.890
  br label %if.end.1007

if.else.911:                                      ; preds = %if.else.864
  %475 = load i32, i32* %from, align 4
  %idxprom912 = sext i32 %475 to i64
  %arrayidx913 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom912
  %476 = load i32, i32* %arrayidx913, align 4
  %477 = load i32, i32* @wking_loc, align 4
  %idxprom914 = sext i32 %477 to i64
  %arrayidx915 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom914
  %478 = load i32, i32* %arrayidx915, align 4
  %cmp916 = icmp eq i32 %476, %478
  br i1 %cmp916, label %if.then.917, label %if.else.958

if.then.917:                                      ; preds = %if.else.911
  %479 = load i32, i32* @wking_loc, align 4
  %480 = load i32, i32* %from, align 4
  %cmp918 = icmp sgt i32 %479, %480
  br i1 %cmp918, label %if.then.919, label %if.else.938

if.then.919:                                      ; preds = %if.then.917
  %481 = load i32, i32* @wking_loc, align 4
  %sub920 = sub nsw i32 %481, 13
  store i32 %sub920, i32* %l, align 4
  br label %for.cond.921

for.cond.921:                                     ; preds = %for.inc.926, %if.then.919
  %482 = load i32, i32* %l, align 4
  %idxprom922 = sext i32 %482 to i64
  %arrayidx923 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom922
  %483 = load i32, i32* %arrayidx923, align 4
  %cmp924 = icmp eq i32 %483, 13
  br i1 %cmp924, label %for.body.925, label %for.end.928

for.body.925:                                     ; preds = %for.cond.921
  br label %for.inc.926

for.inc.926:                                      ; preds = %for.body.925
  %484 = load i32, i32* %l, align 4
  %sub927 = sub nsw i32 %484, 13
  store i32 %sub927, i32* %l, align 4
  br label %for.cond.921

for.end.928:                                      ; preds = %for.cond.921
  %485 = load i32, i32* %l, align 4
  %idxprom929 = sext i32 %485 to i64
  %arrayidx930 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom929
  %486 = load i32, i32* %arrayidx930, align 4
  %cmp931 = icmp eq i32 %486, 12
  br i1 %cmp931, label %if.then.936, label %lor.lhs.false.932

lor.lhs.false.932:                                ; preds = %for.end.928
  %487 = load i32, i32* %l, align 4
  %idxprom933 = sext i32 %487 to i64
  %arrayidx934 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom933
  %488 = load i32, i32* %arrayidx934, align 4
  %cmp935 = icmp eq i32 %488, 10
  br i1 %cmp935, label %if.then.936, label %if.end.937

if.then.936:                                      ; preds = %lor.lhs.false.932, %for.end.928
  store i32 0, i32* %retval
  br label %return

if.end.937:                                       ; preds = %lor.lhs.false.932
  br label %if.end.957

if.else.938:                                      ; preds = %if.then.917
  %489 = load i32, i32* @wking_loc, align 4
  %add939 = add nsw i32 %489, 13
  store i32 %add939, i32* %l, align 4
  br label %for.cond.940

for.cond.940:                                     ; preds = %for.inc.945, %if.else.938
  %490 = load i32, i32* %l, align 4
  %idxprom941 = sext i32 %490 to i64
  %arrayidx942 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom941
  %491 = load i32, i32* %arrayidx942, align 4
  %cmp943 = icmp eq i32 %491, 13
  br i1 %cmp943, label %for.body.944, label %for.end.947

for.body.944:                                     ; preds = %for.cond.940
  br label %for.inc.945

for.inc.945:                                      ; preds = %for.body.944
  %492 = load i32, i32* %l, align 4
  %add946 = add nsw i32 %492, 13
  store i32 %add946, i32* %l, align 4
  br label %for.cond.940

for.end.947:                                      ; preds = %for.cond.940
  %493 = load i32, i32* %l, align 4
  %idxprom948 = sext i32 %493 to i64
  %arrayidx949 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom948
  %494 = load i32, i32* %arrayidx949, align 4
  %cmp950 = icmp eq i32 %494, 12
  br i1 %cmp950, label %if.then.955, label %lor.lhs.false.951

lor.lhs.false.951:                                ; preds = %for.end.947
  %495 = load i32, i32* %l, align 4
  %idxprom952 = sext i32 %495 to i64
  %arrayidx953 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom952
  %496 = load i32, i32* %arrayidx953, align 4
  %cmp954 = icmp eq i32 %496, 10
  br i1 %cmp954, label %if.then.955, label %if.end.956

if.then.955:                                      ; preds = %lor.lhs.false.951, %for.end.947
  store i32 0, i32* %retval
  br label %return

if.end.956:                                       ; preds = %lor.lhs.false.951
  br label %if.end.957

if.end.957:                                       ; preds = %if.end.956, %if.end.937
  br label %if.end.1006

if.else.958:                                      ; preds = %if.else.911
  %497 = load i32, i32* %from, align 4
  %idxprom959 = sext i32 %497 to i64
  %arrayidx960 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom959
  %498 = load i32, i32* %arrayidx960, align 4
  %499 = load i32, i32* @wking_loc, align 4
  %idxprom961 = sext i32 %499 to i64
  %arrayidx962 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom961
  %500 = load i32, i32* %arrayidx962, align 4
  %cmp963 = icmp eq i32 %498, %500
  br i1 %cmp963, label %if.then.964, label %if.end.1005

if.then.964:                                      ; preds = %if.else.958
  %501 = load i32, i32* @wking_loc, align 4
  %502 = load i32, i32* %from, align 4
  %cmp965 = icmp sgt i32 %501, %502
  br i1 %cmp965, label %if.then.966, label %if.else.985

if.then.966:                                      ; preds = %if.then.964
  %503 = load i32, i32* @wking_loc, align 4
  %sub967 = sub nsw i32 %503, 11
  store i32 %sub967, i32* %l, align 4
  br label %for.cond.968

for.cond.968:                                     ; preds = %for.inc.973, %if.then.966
  %504 = load i32, i32* %l, align 4
  %idxprom969 = sext i32 %504 to i64
  %arrayidx970 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom969
  %505 = load i32, i32* %arrayidx970, align 4
  %cmp971 = icmp eq i32 %505, 13
  br i1 %cmp971, label %for.body.972, label %for.end.975

for.body.972:                                     ; preds = %for.cond.968
  br label %for.inc.973

for.inc.973:                                      ; preds = %for.body.972
  %506 = load i32, i32* %l, align 4
  %sub974 = sub nsw i32 %506, 11
  store i32 %sub974, i32* %l, align 4
  br label %for.cond.968

for.end.975:                                      ; preds = %for.cond.968
  %507 = load i32, i32* %l, align 4
  %idxprom976 = sext i32 %507 to i64
  %arrayidx977 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom976
  %508 = load i32, i32* %arrayidx977, align 4
  %cmp978 = icmp eq i32 %508, 12
  br i1 %cmp978, label %if.then.983, label %lor.lhs.false.979

lor.lhs.false.979:                                ; preds = %for.end.975
  %509 = load i32, i32* %l, align 4
  %idxprom980 = sext i32 %509 to i64
  %arrayidx981 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom980
  %510 = load i32, i32* %arrayidx981, align 4
  %cmp982 = icmp eq i32 %510, 10
  br i1 %cmp982, label %if.then.983, label %if.end.984

if.then.983:                                      ; preds = %lor.lhs.false.979, %for.end.975
  store i32 0, i32* %retval
  br label %return

if.end.984:                                       ; preds = %lor.lhs.false.979
  br label %if.end.1004

if.else.985:                                      ; preds = %if.then.964
  %511 = load i32, i32* @wking_loc, align 4
  %add986 = add nsw i32 %511, 11
  store i32 %add986, i32* %l, align 4
  br label %for.cond.987

for.cond.987:                                     ; preds = %for.inc.992, %if.else.985
  %512 = load i32, i32* %l, align 4
  %idxprom988 = sext i32 %512 to i64
  %arrayidx989 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom988
  %513 = load i32, i32* %arrayidx989, align 4
  %cmp990 = icmp eq i32 %513, 13
  br i1 %cmp990, label %for.body.991, label %for.end.994

for.body.991:                                     ; preds = %for.cond.987
  br label %for.inc.992

for.inc.992:                                      ; preds = %for.body.991
  %514 = load i32, i32* %l, align 4
  %add993 = add nsw i32 %514, 11
  store i32 %add993, i32* %l, align 4
  br label %for.cond.987

for.end.994:                                      ; preds = %for.cond.987
  %515 = load i32, i32* %l, align 4
  %idxprom995 = sext i32 %515 to i64
  %arrayidx996 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom995
  %516 = load i32, i32* %arrayidx996, align 4
  %cmp997 = icmp eq i32 %516, 12
  br i1 %cmp997, label %if.then.1002, label %lor.lhs.false.998

lor.lhs.false.998:                                ; preds = %for.end.994
  %517 = load i32, i32* %l, align 4
  %idxprom999 = sext i32 %517 to i64
  %arrayidx1000 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom999
  %518 = load i32, i32* %arrayidx1000, align 4
  %cmp1001 = icmp eq i32 %518, 10
  br i1 %cmp1001, label %if.then.1002, label %if.end.1003

if.then.1002:                                     ; preds = %lor.lhs.false.998, %for.end.994
  store i32 0, i32* %retval
  br label %return

if.end.1003:                                      ; preds = %lor.lhs.false.998
  br label %if.end.1004

if.end.1004:                                      ; preds = %if.end.1003, %if.end.984
  br label %if.end.1005

if.end.1005:                                      ; preds = %if.end.1004, %if.else.958
  br label %if.end.1006

if.end.1006:                                      ; preds = %if.end.1005, %if.end.957
  br label %if.end.1007

if.end.1007:                                      ; preds = %if.end.1006, %if.end.910
  br label %if.end.1008

if.end.1008:                                      ; preds = %if.end.1007, %if.end.863
  store i32 1, i32* %retval
  br label %return

if.end.1009:                                      ; preds = %sw.epilog.813
  br label %if.end.1010

if.end.1010:                                      ; preds = %if.end.1009, %if.else.532
  %519 = load i32, i32* @wking_loc, align 4
  %call1011 = call i32 @is_attacked(i32 %519, i32 0)
  %tobool1012 = icmp ne i32 %call1011, 0
  br i1 %tobool1012, label %if.then.1013, label %if.else.1014

if.then.1013:                                     ; preds = %if.end.1010
  store i32 0, i32* %retval
  br label %return

if.else.1014:                                     ; preds = %if.end.1010
  store i32 1, i32* %retval
  br label %return

if.end.1015:                                      ; preds = %if.end.67
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.1015, %if.else.1014, %if.then.1013, %if.end.1008, %if.then.1002, %if.then.983, %if.then.955, %if.then.936, %if.then.908, %if.then.889, %if.then.861, %if.then.842, %if.then.806, %if.then.780, %if.then.754, %if.then.728, %if.then.697, %if.then.689, %if.then.661, %if.then.653, %if.then.627, %if.then.600, %if.then.580, %if.then.539, %if.else.531, %if.then.530, %if.end.525, %if.then.519, %if.then.500, %if.then.472, %if.then.453, %if.then.425, %if.then.406, %if.then.378, %if.then.360, %if.then.332, %if.then.306, %if.then.280, %if.then.254, %if.then.226, %if.then.218, %if.then.190, %if.then.182, %if.then.156, %if.then.129, %if.then.109, %if.then.76, %if.end.66, %if.then.65, %if.then.61, %if.then.57, %if.end.51, %if.then.50, %if.then.46, %if.then.42, %if.end.36, %if.then.35, %if.then.31, %if.then.27, %if.end.21, %if.then.20, %if.then.16, %if.then.12, %if.then
  %520 = load i32, i32* %retval
  ret i32 %520
}

declare i32 @is_attacked(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @gen(%struct.move_s* %moves) #0 {
entry:
  %moves.addr = alloca %struct.move_s*, align 8
  %from = alloca i32, align 4
  %a = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.move_s* %moves, %struct.move_s** %moves.addr, align 8
  store i32 0, i32* @kingcap, align 4
  store i32 0, i32* @numb_moves, align 4
  %0 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx = getelementptr inbounds %struct.move_s, %struct.move_s* %0, i64 0
  store %struct.move_s* %arrayidx, %struct.move_s** @genfor, align 8
  %1 = load i32, i32* @Variant, align 4
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @captures, align 4
  store i32 0, i32* @fcaptures, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %restart

restart:                                          ; preds = %if.then.726, %if.end
  %2 = load i32, i32* @white_to_move, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.1, label %if.else.297

if.then.1:                                        ; preds = %restart
  store i32 1, i32* %a, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.1
  %3 = load i32, i32* %a, align 4
  %4 = load i32, i32* @piece_count, align 4
  %cmp2 = icmp sle i32 %3, %4
  br i1 %cmp2, label %land.rhs, label %land.end.8

land.rhs:                                         ; preds = %for.cond
  %5 = load i32, i32* @Variant, align 4
  %cmp3 = icmp ne i32 %5, 3
  br i1 %cmp3, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %land.rhs
  %6 = load i32, i32* @kingcap, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true, %land.rhs
  %7 = load i32, i32* @Variant, align 4
  %cmp5 = icmp eq i32 %7, 3
  br i1 %cmp5, label %land.rhs.6, label %land.end

land.rhs.6:                                       ; preds = %lor.rhs
  %8 = load i32, i32* @fcaptures, align 4
  %9 = load i32, i32* @captures, align 4
  %cmp7 = icmp eq i32 %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs.6, %lor.rhs
  %10 = phi i1 [ false, %lor.rhs ], [ %cmp7, %land.rhs.6 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %11 = phi i1 [ true, %land.lhs.true ], [ %10, %land.end ]
  br label %land.end.8

land.end.8:                                       ; preds = %lor.end, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %11, %lor.end ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.8
  %13 = load i32, i32* %j, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom
  %14 = load i32, i32* %arrayidx9, align 4
  store i32 %14, i32* %i, align 4
  %15 = load i32, i32* %i, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.else, label %if.then.11

if.then.11:                                       ; preds = %for.body
  br label %for.inc

if.else:                                          ; preds = %for.body
  %16 = load i32, i32* %a, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %a, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else
  %17 = load i32, i32* %i, align 4
  store i32 %17, i32* %from, align 4
  %18 = load i32, i32* %i, align 4
  store i32 %18, i32* @gfrom, align 4
  %19 = load i32, i32* %from, align 4
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom13
  %20 = load i32, i32* %arrayidx14, align 4
  switch i32 %20, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.82
    i32 11, label %sw.bb.138
    i32 7, label %sw.bb.167
    i32 9, label %sw.bb.196
    i32 5, label %sw.bb.253
  ]

sw.bb:                                            ; preds = %if.end.12
  %21 = load i32, i32* %from, align 4
  %add = add nsw i32 %21, 12
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom15
  %22 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp eq i32 %22, 13
  br i1 %cmp17, label %if.then.18, label %if.end.45

if.then.18:                                       ; preds = %sw.bb
  %23 = load i32, i32* %from, align 4
  %idxprom19 = sext i32 %23 to i64
  %arrayidx20 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom19
  %24 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp eq i32 %24, 7
  br i1 %cmp21, label %land.lhs.true.22, label %if.else.28

land.lhs.true.22:                                 ; preds = %if.then.18
  %25 = load i32, i32* @Variant, align 4
  %cmp23 = icmp ne i32 %25, 3
  br i1 %cmp23, label %land.lhs.true.24, label %if.else.28

land.lhs.true.24:                                 ; preds = %land.lhs.true.22
  %26 = load i32, i32* @Variant, align 4
  %cmp25 = icmp ne i32 %26, 4
  br i1 %cmp25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %land.lhs.true.24
  %27 = load i32, i32* %from, align 4
  %add27 = add nsw i32 %27, 12
  call void @push_pawn(i32 %add27, i32 0)
  br label %if.end.44

if.else.28:                                       ; preds = %land.lhs.true.24, %land.lhs.true.22, %if.then.18
  %28 = load i32, i32* @captures, align 4
  %tobool29 = icmp ne i32 %28, 0
  br i1 %tobool29, label %if.end.43, label %if.then.30

if.then.30:                                       ; preds = %if.else.28
  %29 = load i32, i32* %from, align 4
  %add31 = add nsw i32 %29, 12
  call void @push_pawn(i32 %add31, i32 0)
  %30 = load i32, i32* %from, align 4
  %idxprom32 = sext i32 %30 to i64
  %arrayidx33 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom32
  %31 = load i32, i32* %arrayidx33, align 4
  %cmp34 = icmp eq i32 %31, 2
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.42

land.lhs.true.35:                                 ; preds = %if.then.30
  %32 = load i32, i32* %from, align 4
  %add36 = add nsw i32 %32, 24
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom37
  %33 = load i32, i32* %arrayidx38, align 4
  %cmp39 = icmp eq i32 %33, 13
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %land.lhs.true.35
  %34 = load i32, i32* %from, align 4
  %add41 = add nsw i32 %34, 24
  call void @push_pawn_simple(i32 %add41)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %land.lhs.true.35, %if.then.30
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.else.28
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.26
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %sw.bb
  %35 = load i32, i32* %from, align 4
  %add46 = add nsw i32 %35, 13
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom47
  %36 = load i32, i32* %arrayidx48, align 4
  %and = and i32 %36, 1
  %cmp49 = icmp eq i32 %and, 0
  br i1 %cmp49, label %land.lhs.true.50, label %if.end.57

land.lhs.true.50:                                 ; preds = %if.end.45
  %37 = load i32, i32* %from, align 4
  %add51 = add nsw i32 %37, 13
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom52
  %38 = load i32, i32* %arrayidx53, align 4
  %cmp54 = icmp ne i32 %38, 0
  br i1 %cmp54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %land.lhs.true.50
  %39 = load i32, i32* %from, align 4
  %add56 = add nsw i32 %39, 13
  call void @push_pawn(i32 %add56, i32 0)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %land.lhs.true.50, %if.end.45
  %40 = load i32, i32* %from, align 4
  %add58 = add nsw i32 %40, 11
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom59
  %41 = load i32, i32* %arrayidx60, align 4
  %and61 = and i32 %41, 1
  %cmp62 = icmp eq i32 %and61, 0
  br i1 %cmp62, label %land.lhs.true.63, label %if.end.70

land.lhs.true.63:                                 ; preds = %if.end.57
  %42 = load i32, i32* %from, align 4
  %add64 = add nsw i32 %42, 11
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom65
  %43 = load i32, i32* %arrayidx66, align 4
  %cmp67 = icmp ne i32 %43, 0
  br i1 %cmp67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %land.lhs.true.63
  %44 = load i32, i32* %from, align 4
  %add69 = add nsw i32 %44, 11
  call void @push_pawn(i32 %add69, i32 0)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %land.lhs.true.63, %if.end.57
  %45 = load i32, i32* @ep_square, align 4
  %46 = load i32, i32* %from, align 4
  %add71 = add nsw i32 %46, 13
  %cmp72 = icmp eq i32 %45, %add71
  br i1 %cmp72, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %if.end.70
  %47 = load i32, i32* %from, align 4
  %add74 = add nsw i32 %47, 13
  call void @push_pawn(i32 %add74, i32 1)
  br label %if.end.81

if.else.75:                                       ; preds = %if.end.70
  %48 = load i32, i32* @ep_square, align 4
  %49 = load i32, i32* %from, align 4
  %add76 = add nsw i32 %49, 11
  %cmp77 = icmp eq i32 %48, %add76
  br i1 %cmp77, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.else.75
  %50 = load i32, i32* %from, align 4
  %add79 = add nsw i32 %50, 11
  call void @push_pawn(i32 %add79, i32 1)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.else.75
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.73
  br label %sw.epilog

sw.bb.82:                                         ; preds = %if.end.12
  %51 = load i32, i32* %from, align 4
  %sub = sub nsw i32 %51, 25
  %idxprom83 = sext i32 %sub to i64
  %arrayidx84 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom83
  %52 = load i32, i32* %arrayidx84, align 4
  %cmp85 = icmp ne i32 %52, 0
  br i1 %cmp85, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %sw.bb.82
  %53 = load i32, i32* %from, align 4
  %sub87 = sub nsw i32 %53, 25
  call void @push_knighT(i32 %sub87)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %sw.bb.82
  %54 = load i32, i32* %from, align 4
  %sub89 = sub nsw i32 %54, 23
  %idxprom90 = sext i32 %sub89 to i64
  %arrayidx91 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom90
  %55 = load i32, i32* %arrayidx91, align 4
  %cmp92 = icmp ne i32 %55, 0
  br i1 %cmp92, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %if.end.88
  %56 = load i32, i32* %from, align 4
  %sub94 = sub nsw i32 %56, 23
  call void @push_knighT(i32 %sub94)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %if.end.88
  %57 = load i32, i32* %from, align 4
  %sub96 = sub nsw i32 %57, 14
  %idxprom97 = sext i32 %sub96 to i64
  %arrayidx98 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom97
  %58 = load i32, i32* %arrayidx98, align 4
  %cmp99 = icmp ne i32 %58, 0
  br i1 %cmp99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.end.95
  %59 = load i32, i32* %from, align 4
  %sub101 = sub nsw i32 %59, 14
  call void @push_knighT(i32 %sub101)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %if.end.95
  %60 = load i32, i32* %from, align 4
  %sub103 = sub nsw i32 %60, 10
  %idxprom104 = sext i32 %sub103 to i64
  %arrayidx105 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom104
  %61 = load i32, i32* %arrayidx105, align 4
  %cmp106 = icmp ne i32 %61, 0
  br i1 %cmp106, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %if.end.102
  %62 = load i32, i32* %from, align 4
  %sub108 = sub nsw i32 %62, 10
  call void @push_knighT(i32 %sub108)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %if.end.102
  %63 = load i32, i32* %from, align 4
  %add110 = add nsw i32 %63, 10
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom111
  %64 = load i32, i32* %arrayidx112, align 4
  %cmp113 = icmp ne i32 %64, 0
  br i1 %cmp113, label %if.then.114, label %if.end.116

if.then.114:                                      ; preds = %if.end.109
  %65 = load i32, i32* %from, align 4
  %add115 = add nsw i32 %65, 10
  call void @push_knighT(i32 %add115)
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.114, %if.end.109
  %66 = load i32, i32* %from, align 4
  %add117 = add nsw i32 %66, 14
  %idxprom118 = sext i32 %add117 to i64
  %arrayidx119 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom118
  %67 = load i32, i32* %arrayidx119, align 4
  %cmp120 = icmp ne i32 %67, 0
  br i1 %cmp120, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %if.end.116
  %68 = load i32, i32* %from, align 4
  %add122 = add nsw i32 %68, 14
  call void @push_knighT(i32 %add122)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %if.end.116
  %69 = load i32, i32* %from, align 4
  %add124 = add nsw i32 %69, 23
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom125
  %70 = load i32, i32* %arrayidx126, align 4
  %cmp127 = icmp ne i32 %70, 0
  br i1 %cmp127, label %if.then.128, label %if.end.130

if.then.128:                                      ; preds = %if.end.123
  %71 = load i32, i32* %from, align 4
  %add129 = add nsw i32 %71, 23
  call void @push_knighT(i32 %add129)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.128, %if.end.123
  %72 = load i32, i32* %from, align 4
  %add131 = add nsw i32 %72, 25
  %idxprom132 = sext i32 %add131 to i64
  %arrayidx133 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom132
  %73 = load i32, i32* %arrayidx133, align 4
  %cmp134 = icmp ne i32 %73, 0
  br i1 %cmp134, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %if.end.130
  %74 = load i32, i32* %from, align 4
  %add136 = add nsw i32 %74, 25
  call void @push_knighT(i32 %add136)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %if.end.130
  br label %sw.epilog

sw.bb.138:                                        ; preds = %if.end.12
  %75 = load i32, i32* %from, align 4
  %sub139 = sub nsw i32 %75, 13
  %idxprom140 = sext i32 %sub139 to i64
  %arrayidx141 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom140
  %76 = load i32, i32* %arrayidx141, align 4
  %cmp142 = icmp ne i32 %76, 0
  br i1 %cmp142, label %if.then.143, label %if.end.145

if.then.143:                                      ; preds = %sw.bb.138
  %77 = load i32, i32* %from, align 4
  %sub144 = sub nsw i32 %77, 13
  call void @push_slidE(i32 %sub144)
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.143, %sw.bb.138
  %78 = load i32, i32* %from, align 4
  %sub146 = sub nsw i32 %78, 11
  %idxprom147 = sext i32 %sub146 to i64
  %arrayidx148 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom147
  %79 = load i32, i32* %arrayidx148, align 4
  %cmp149 = icmp ne i32 %79, 0
  br i1 %cmp149, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %if.end.145
  %80 = load i32, i32* %from, align 4
  %sub151 = sub nsw i32 %80, 11
  call void @push_slidE(i32 %sub151)
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.150, %if.end.145
  %81 = load i32, i32* %from, align 4
  %add153 = add nsw i32 %81, 11
  %idxprom154 = sext i32 %add153 to i64
  %arrayidx155 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom154
  %82 = load i32, i32* %arrayidx155, align 4
  %cmp156 = icmp ne i32 %82, 0
  br i1 %cmp156, label %if.then.157, label %if.end.159

if.then.157:                                      ; preds = %if.end.152
  %83 = load i32, i32* %from, align 4
  %add158 = add nsw i32 %83, 11
  call void @push_slidE(i32 %add158)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.157, %if.end.152
  %84 = load i32, i32* %from, align 4
  %add160 = add nsw i32 %84, 13
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom161
  %85 = load i32, i32* %arrayidx162, align 4
  %cmp163 = icmp ne i32 %85, 0
  br i1 %cmp163, label %if.then.164, label %if.end.166

if.then.164:                                      ; preds = %if.end.159
  %86 = load i32, i32* %from, align 4
  %add165 = add nsw i32 %86, 13
  call void @push_slidE(i32 %add165)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.164, %if.end.159
  br label %sw.epilog

sw.bb.167:                                        ; preds = %if.end.12
  %87 = load i32, i32* %from, align 4
  %sub168 = sub nsw i32 %87, 12
  %idxprom169 = sext i32 %sub168 to i64
  %arrayidx170 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom169
  %88 = load i32, i32* %arrayidx170, align 4
  %cmp171 = icmp ne i32 %88, 0
  br i1 %cmp171, label %if.then.172, label %if.end.174

if.then.172:                                      ; preds = %sw.bb.167
  %89 = load i32, i32* %from, align 4
  %sub173 = sub nsw i32 %89, 12
  call void @push_slidE(i32 %sub173)
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.172, %sw.bb.167
  %90 = load i32, i32* %from, align 4
  %sub175 = sub nsw i32 %90, 1
  %idxprom176 = sext i32 %sub175 to i64
  %arrayidx177 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom176
  %91 = load i32, i32* %arrayidx177, align 4
  %cmp178 = icmp ne i32 %91, 0
  br i1 %cmp178, label %if.then.179, label %if.end.181

if.then.179:                                      ; preds = %if.end.174
  %92 = load i32, i32* %from, align 4
  %sub180 = sub nsw i32 %92, 1
  call void @push_slidE(i32 %sub180)
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.179, %if.end.174
  %93 = load i32, i32* %from, align 4
  %add182 = add nsw i32 %93, 1
  %idxprom183 = sext i32 %add182 to i64
  %arrayidx184 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom183
  %94 = load i32, i32* %arrayidx184, align 4
  %cmp185 = icmp ne i32 %94, 0
  br i1 %cmp185, label %if.then.186, label %if.end.188

if.then.186:                                      ; preds = %if.end.181
  %95 = load i32, i32* %from, align 4
  %add187 = add nsw i32 %95, 1
  call void @push_slidE(i32 %add187)
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.186, %if.end.181
  %96 = load i32, i32* %from, align 4
  %add189 = add nsw i32 %96, 12
  %idxprom190 = sext i32 %add189 to i64
  %arrayidx191 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom190
  %97 = load i32, i32* %arrayidx191, align 4
  %cmp192 = icmp ne i32 %97, 0
  br i1 %cmp192, label %if.then.193, label %if.end.195

if.then.193:                                      ; preds = %if.end.188
  %98 = load i32, i32* %from, align 4
  %add194 = add nsw i32 %98, 12
  call void @push_slidE(i32 %add194)
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.193, %if.end.188
  br label %sw.epilog

sw.bb.196:                                        ; preds = %if.end.12
  %99 = load i32, i32* %from, align 4
  %sub197 = sub nsw i32 %99, 13
  %idxprom198 = sext i32 %sub197 to i64
  %arrayidx199 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom198
  %100 = load i32, i32* %arrayidx199, align 4
  %cmp200 = icmp ne i32 %100, 0
  br i1 %cmp200, label %if.then.201, label %if.end.203

if.then.201:                                      ; preds = %sw.bb.196
  %101 = load i32, i32* %from, align 4
  %sub202 = sub nsw i32 %101, 13
  call void @push_slidE(i32 %sub202)
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.201, %sw.bb.196
  %102 = load i32, i32* %from, align 4
  %sub204 = sub nsw i32 %102, 12
  %idxprom205 = sext i32 %sub204 to i64
  %arrayidx206 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom205
  %103 = load i32, i32* %arrayidx206, align 4
  %cmp207 = icmp ne i32 %103, 0
  br i1 %cmp207, label %if.then.208, label %if.end.210

if.then.208:                                      ; preds = %if.end.203
  %104 = load i32, i32* %from, align 4
  %sub209 = sub nsw i32 %104, 12
  call void @push_slidE(i32 %sub209)
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.208, %if.end.203
  %105 = load i32, i32* %from, align 4
  %sub211 = sub nsw i32 %105, 11
  %idxprom212 = sext i32 %sub211 to i64
  %arrayidx213 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom212
  %106 = load i32, i32* %arrayidx213, align 4
  %cmp214 = icmp ne i32 %106, 0
  br i1 %cmp214, label %if.then.215, label %if.end.217

if.then.215:                                      ; preds = %if.end.210
  %107 = load i32, i32* %from, align 4
  %sub216 = sub nsw i32 %107, 11
  call void @push_slidE(i32 %sub216)
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.215, %if.end.210
  %108 = load i32, i32* %from, align 4
  %sub218 = sub nsw i32 %108, 1
  %idxprom219 = sext i32 %sub218 to i64
  %arrayidx220 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom219
  %109 = load i32, i32* %arrayidx220, align 4
  %cmp221 = icmp ne i32 %109, 0
  br i1 %cmp221, label %if.then.222, label %if.end.224

if.then.222:                                      ; preds = %if.end.217
  %110 = load i32, i32* %from, align 4
  %sub223 = sub nsw i32 %110, 1
  call void @push_slidE(i32 %sub223)
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.222, %if.end.217
  %111 = load i32, i32* %from, align 4
  %add225 = add nsw i32 %111, 1
  %idxprom226 = sext i32 %add225 to i64
  %arrayidx227 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom226
  %112 = load i32, i32* %arrayidx227, align 4
  %cmp228 = icmp ne i32 %112, 0
  br i1 %cmp228, label %if.then.229, label %if.end.231

if.then.229:                                      ; preds = %if.end.224
  %113 = load i32, i32* %from, align 4
  %add230 = add nsw i32 %113, 1
  call void @push_slidE(i32 %add230)
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.229, %if.end.224
  %114 = load i32, i32* %from, align 4
  %add232 = add nsw i32 %114, 11
  %idxprom233 = sext i32 %add232 to i64
  %arrayidx234 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom233
  %115 = load i32, i32* %arrayidx234, align 4
  %cmp235 = icmp ne i32 %115, 0
  br i1 %cmp235, label %if.then.236, label %if.end.238

if.then.236:                                      ; preds = %if.end.231
  %116 = load i32, i32* %from, align 4
  %add237 = add nsw i32 %116, 11
  call void @push_slidE(i32 %add237)
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.236, %if.end.231
  %117 = load i32, i32* %from, align 4
  %add239 = add nsw i32 %117, 12
  %idxprom240 = sext i32 %add239 to i64
  %arrayidx241 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom240
  %118 = load i32, i32* %arrayidx241, align 4
  %cmp242 = icmp ne i32 %118, 0
  br i1 %cmp242, label %if.then.243, label %if.end.245

if.then.243:                                      ; preds = %if.end.238
  %119 = load i32, i32* %from, align 4
  %add244 = add nsw i32 %119, 12
  call void @push_slidE(i32 %add244)
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.243, %if.end.238
  %120 = load i32, i32* %from, align 4
  %add246 = add nsw i32 %120, 13
  %idxprom247 = sext i32 %add246 to i64
  %arrayidx248 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom247
  %121 = load i32, i32* %arrayidx248, align 4
  %cmp249 = icmp ne i32 %121, 0
  br i1 %cmp249, label %if.then.250, label %if.end.252

if.then.250:                                      ; preds = %if.end.245
  %122 = load i32, i32* %from, align 4
  %add251 = add nsw i32 %122, 13
  call void @push_slidE(i32 %add251)
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.250, %if.end.245
  br label %sw.epilog

sw.bb.253:                                        ; preds = %if.end.12
  %123 = load i32, i32* %from, align 4
  %sub254 = sub nsw i32 %123, 13
  call void @push_king(i32 %sub254)
  %124 = load i32, i32* %from, align 4
  %sub255 = sub nsw i32 %124, 12
  call void @push_king(i32 %sub255)
  %125 = load i32, i32* %from, align 4
  %sub256 = sub nsw i32 %125, 11
  call void @push_king(i32 %sub256)
  %126 = load i32, i32* %from, align 4
  %sub257 = sub nsw i32 %126, 1
  call void @push_king(i32 %sub257)
  %127 = load i32, i32* %from, align 4
  %add258 = add nsw i32 %127, 1
  call void @push_king(i32 %add258)
  %128 = load i32, i32* %from, align 4
  %add259 = add nsw i32 %128, 11
  call void @push_king(i32 %add259)
  %129 = load i32, i32* %from, align 4
  %add260 = add nsw i32 %129, 12
  call void @push_king(i32 %add260)
  %130 = load i32, i32* %from, align 4
  %add261 = add nsw i32 %130, 13
  call void @push_king(i32 %add261)
  %131 = load i32, i32* %from, align 4
  %cmp262 = icmp eq i32 %131, 30
  br i1 %cmp262, label %land.lhs.true.263, label %if.end.295

land.lhs.true.263:                                ; preds = %sw.bb.253
  %132 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 30), align 4
  %tobool264 = icmp ne i32 %132, 0
  br i1 %tobool264, label %if.end.295, label %land.lhs.true.265

land.lhs.true.265:                                ; preds = %land.lhs.true.263
  %133 = load i32, i32* @captures, align 4
  %tobool266 = icmp ne i32 %133, 0
  br i1 %tobool266, label %if.end.295, label %land.lhs.true.267

land.lhs.true.267:                                ; preds = %land.lhs.true.265
  %134 = load i32, i32* @Variant, align 4
  %cmp268 = icmp ne i32 %134, 3
  br i1 %cmp268, label %if.then.270, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.267
  %135 = load i32, i32* @Giveaway, align 4
  %cmp269 = icmp eq i32 %135, 1
  br i1 %cmp269, label %if.then.270, label %if.end.295

if.then.270:                                      ; preds = %lor.lhs.false, %land.lhs.true.267
  %136 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 33), align 4
  %tobool271 = icmp ne i32 %136, 0
  br i1 %tobool271, label %if.end.281, label %land.lhs.true.272

land.lhs.true.272:                                ; preds = %if.then.270
  %137 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 33), align 4
  %cmp273 = icmp eq i32 %137, 7
  br i1 %cmp273, label %if.then.274, label %if.end.281

if.then.274:                                      ; preds = %land.lhs.true.272
  %138 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 31), align 4
  %cmp275 = icmp eq i32 %138, 13
  br i1 %cmp275, label %land.lhs.true.276, label %if.end.280

land.lhs.true.276:                                ; preds = %if.then.274
  %139 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 32), align 4
  %cmp277 = icmp eq i32 %139, 13
  br i1 %cmp277, label %if.then.278, label %if.end.280

if.then.278:                                      ; preds = %land.lhs.true.276
  %140 = load i32, i32* %from, align 4
  %add279 = add nsw i32 %140, 2
  call void @push_king_castle(i32 %add279, i32 1)
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.278, %land.lhs.true.276, %if.then.274
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %land.lhs.true.272, %if.then.270
  %141 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 26), align 4
  %tobool282 = icmp ne i32 %141, 0
  br i1 %tobool282, label %if.end.294, label %land.lhs.true.283

land.lhs.true.283:                                ; preds = %if.end.281
  %142 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 26), align 4
  %cmp284 = icmp eq i32 %142, 7
  br i1 %cmp284, label %if.then.285, label %if.end.294

if.then.285:                                      ; preds = %land.lhs.true.283
  %143 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 27), align 4
  %cmp286 = icmp eq i32 %143, 13
  br i1 %cmp286, label %land.lhs.true.287, label %if.end.293

land.lhs.true.287:                                ; preds = %if.then.285
  %144 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 28), align 4
  %cmp288 = icmp eq i32 %144, 13
  br i1 %cmp288, label %land.lhs.true.289, label %if.end.293

land.lhs.true.289:                                ; preds = %land.lhs.true.287
  %145 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 29), align 4
  %cmp290 = icmp eq i32 %145, 13
  br i1 %cmp290, label %if.then.291, label %if.end.293

if.then.291:                                      ; preds = %land.lhs.true.289
  %146 = load i32, i32* %from, align 4
  %sub292 = sub nsw i32 %146, 2
  call void @push_king_castle(i32 %sub292, i32 2)
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.291, %land.lhs.true.289, %land.lhs.true.287, %if.then.285
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %land.lhs.true.283, %if.end.281
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294, %lor.lhs.false, %land.lhs.true.265, %land.lhs.true.263, %sw.bb.253
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.295, %if.end.252, %if.end.195, %if.end.166, %if.end.137, %if.end.81
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.then.11
  %147 = load i32, i32* %j, align 4
  %inc296 = add nsw i32 %147, 1
  store i32 %inc296, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.8
  br label %if.end.612

if.else.297:                                      ; preds = %restart
  store i32 1, i32* %a, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.298

for.cond.298:                                     ; preds = %for.inc.609, %if.else.297
  %148 = load i32, i32* %a, align 4
  %149 = load i32, i32* @piece_count, align 4
  %cmp299 = icmp sle i32 %148, %149
  br i1 %cmp299, label %land.rhs.300, label %land.end.310

land.rhs.300:                                     ; preds = %for.cond.298
  %150 = load i32, i32* @Variant, align 4
  %cmp301 = icmp ne i32 %150, 3
  br i1 %cmp301, label %land.lhs.true.302, label %lor.rhs.304

land.lhs.true.302:                                ; preds = %land.rhs.300
  %151 = load i32, i32* @kingcap, align 4
  %tobool303 = icmp ne i32 %151, 0
  br i1 %tobool303, label %lor.rhs.304, label %lor.end.309

lor.rhs.304:                                      ; preds = %land.lhs.true.302, %land.rhs.300
  %152 = load i32, i32* @Variant, align 4
  %cmp305 = icmp eq i32 %152, 3
  br i1 %cmp305, label %land.rhs.306, label %land.end.308

land.rhs.306:                                     ; preds = %lor.rhs.304
  %153 = load i32, i32* @fcaptures, align 4
  %154 = load i32, i32* @captures, align 4
  %cmp307 = icmp eq i32 %153, %154
  br label %land.end.308

land.end.308:                                     ; preds = %land.rhs.306, %lor.rhs.304
  %155 = phi i1 [ false, %lor.rhs.304 ], [ %cmp307, %land.rhs.306 ]
  br label %lor.end.309

lor.end.309:                                      ; preds = %land.end.308, %land.lhs.true.302
  %156 = phi i1 [ true, %land.lhs.true.302 ], [ %155, %land.end.308 ]
  br label %land.end.310

land.end.310:                                     ; preds = %lor.end.309, %for.cond.298
  %157 = phi i1 [ false, %for.cond.298 ], [ %156, %lor.end.309 ]
  br i1 %157, label %for.body.311, label %for.end.611

for.body.311:                                     ; preds = %land.end.310
  %158 = load i32, i32* %j, align 4
  %idxprom312 = sext i32 %158 to i64
  %arrayidx313 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom312
  %159 = load i32, i32* %arrayidx313, align 4
  store i32 %159, i32* %i, align 4
  %160 = load i32, i32* %i, align 4
  %tobool314 = icmp ne i32 %160, 0
  br i1 %tobool314, label %if.else.316, label %if.then.315

if.then.315:                                      ; preds = %for.body.311
  br label %for.inc.609

if.else.316:                                      ; preds = %for.body.311
  %161 = load i32, i32* %a, align 4
  %inc317 = add nsw i32 %161, 1
  store i32 %inc317, i32* %a, align 4
  br label %if.end.318

if.end.318:                                       ; preds = %if.else.316
  %162 = load i32, i32* %i, align 4
  store i32 %162, i32* %from, align 4
  %163 = load i32, i32* %i, align 4
  store i32 %163, i32* @gfrom, align 4
  %164 = load i32, i32* %from, align 4
  %idxprom319 = sext i32 %164 to i64
  %arrayidx320 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom319
  %165 = load i32, i32* %arrayidx320, align 4
  switch i32 %165, label %sw.default.607 [
    i32 2, label %sw.bb.321
    i32 4, label %sw.bb.391
    i32 12, label %sw.bb.448
    i32 8, label %sw.bb.477
    i32 10, label %sw.bb.506
    i32 6, label %sw.bb.563
  ]

sw.bb.321:                                        ; preds = %if.end.318
  %166 = load i32, i32* %from, align 4
  %sub322 = sub nsw i32 %166, 12
  %idxprom323 = sext i32 %sub322 to i64
  %arrayidx324 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom323
  %167 = load i32, i32* %arrayidx324, align 4
  %cmp325 = icmp eq i32 %167, 13
  br i1 %cmp325, label %if.then.326, label %if.end.353

if.then.326:                                      ; preds = %sw.bb.321
  %168 = load i32, i32* %from, align 4
  %idxprom327 = sext i32 %168 to i64
  %arrayidx328 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom327
  %169 = load i32, i32* %arrayidx328, align 4
  %cmp329 = icmp eq i32 %169, 2
  br i1 %cmp329, label %land.lhs.true.330, label %if.else.336

land.lhs.true.330:                                ; preds = %if.then.326
  %170 = load i32, i32* @Variant, align 4
  %cmp331 = icmp ne i32 %170, 3
  br i1 %cmp331, label %land.lhs.true.332, label %if.else.336

land.lhs.true.332:                                ; preds = %land.lhs.true.330
  %171 = load i32, i32* @Variant, align 4
  %cmp333 = icmp ne i32 %171, 4
  br i1 %cmp333, label %if.then.334, label %if.else.336

if.then.334:                                      ; preds = %land.lhs.true.332
  %172 = load i32, i32* %from, align 4
  %sub335 = sub nsw i32 %172, 12
  call void @push_pawn(i32 %sub335, i32 0)
  br label %if.end.352

if.else.336:                                      ; preds = %land.lhs.true.332, %land.lhs.true.330, %if.then.326
  %173 = load i32, i32* @captures, align 4
  %tobool337 = icmp ne i32 %173, 0
  br i1 %tobool337, label %if.end.351, label %if.then.338

if.then.338:                                      ; preds = %if.else.336
  %174 = load i32, i32* %from, align 4
  %sub339 = sub nsw i32 %174, 12
  call void @push_pawn(i32 %sub339, i32 0)
  %175 = load i32, i32* %from, align 4
  %idxprom340 = sext i32 %175 to i64
  %arrayidx341 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom340
  %176 = load i32, i32* %arrayidx341, align 4
  %cmp342 = icmp eq i32 %176, 7
  br i1 %cmp342, label %land.lhs.true.343, label %if.end.350

land.lhs.true.343:                                ; preds = %if.then.338
  %177 = load i32, i32* %from, align 4
  %sub344 = sub nsw i32 %177, 24
  %idxprom345 = sext i32 %sub344 to i64
  %arrayidx346 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom345
  %178 = load i32, i32* %arrayidx346, align 4
  %cmp347 = icmp eq i32 %178, 13
  br i1 %cmp347, label %if.then.348, label %if.end.350

if.then.348:                                      ; preds = %land.lhs.true.343
  %179 = load i32, i32* %from, align 4
  %sub349 = sub nsw i32 %179, 24
  call void @push_pawn_simple(i32 %sub349)
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.348, %land.lhs.true.343, %if.then.338
  br label %if.end.351

if.end.351:                                       ; preds = %if.end.350, %if.else.336
  br label %if.end.352

if.end.352:                                       ; preds = %if.end.351, %if.then.334
  br label %if.end.353

if.end.353:                                       ; preds = %if.end.352, %sw.bb.321
  %180 = load i32, i32* %from, align 4
  %sub354 = sub nsw i32 %180, 13
  %idxprom355 = sext i32 %sub354 to i64
  %arrayidx356 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom355
  %181 = load i32, i32* %arrayidx356, align 4
  %and357 = and i32 %181, 1
  %cmp358 = icmp eq i32 %and357, 1
  br i1 %cmp358, label %land.lhs.true.359, label %if.end.366

land.lhs.true.359:                                ; preds = %if.end.353
  %182 = load i32, i32* %from, align 4
  %sub360 = sub nsw i32 %182, 13
  %idxprom361 = sext i32 %sub360 to i64
  %arrayidx362 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom361
  %183 = load i32, i32* %arrayidx362, align 4
  %cmp363 = icmp ne i32 %183, 13
  br i1 %cmp363, label %if.then.364, label %if.end.366

if.then.364:                                      ; preds = %land.lhs.true.359
  %184 = load i32, i32* %from, align 4
  %sub365 = sub nsw i32 %184, 13
  call void @push_pawn(i32 %sub365, i32 0)
  br label %if.end.366

if.end.366:                                       ; preds = %if.then.364, %land.lhs.true.359, %if.end.353
  %185 = load i32, i32* %from, align 4
  %sub367 = sub nsw i32 %185, 11
  %idxprom368 = sext i32 %sub367 to i64
  %arrayidx369 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom368
  %186 = load i32, i32* %arrayidx369, align 4
  %and370 = and i32 %186, 1
  %cmp371 = icmp eq i32 %and370, 1
  br i1 %cmp371, label %land.lhs.true.372, label %if.end.379

land.lhs.true.372:                                ; preds = %if.end.366
  %187 = load i32, i32* %from, align 4
  %sub373 = sub nsw i32 %187, 11
  %idxprom374 = sext i32 %sub373 to i64
  %arrayidx375 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom374
  %188 = load i32, i32* %arrayidx375, align 4
  %cmp376 = icmp ne i32 %188, 13
  br i1 %cmp376, label %if.then.377, label %if.end.379

if.then.377:                                      ; preds = %land.lhs.true.372
  %189 = load i32, i32* %from, align 4
  %sub378 = sub nsw i32 %189, 11
  call void @push_pawn(i32 %sub378, i32 0)
  br label %if.end.379

if.end.379:                                       ; preds = %if.then.377, %land.lhs.true.372, %if.end.366
  %190 = load i32, i32* @ep_square, align 4
  %191 = load i32, i32* %from, align 4
  %sub380 = sub nsw i32 %191, 13
  %cmp381 = icmp eq i32 %190, %sub380
  br i1 %cmp381, label %if.then.382, label %if.else.384

if.then.382:                                      ; preds = %if.end.379
  %192 = load i32, i32* %from, align 4
  %sub383 = sub nsw i32 %192, 13
  call void @push_pawn(i32 %sub383, i32 1)
  br label %if.end.390

if.else.384:                                      ; preds = %if.end.379
  %193 = load i32, i32* @ep_square, align 4
  %194 = load i32, i32* %from, align 4
  %sub385 = sub nsw i32 %194, 11
  %cmp386 = icmp eq i32 %193, %sub385
  br i1 %cmp386, label %if.then.387, label %if.end.389

if.then.387:                                      ; preds = %if.else.384
  %195 = load i32, i32* %from, align 4
  %sub388 = sub nsw i32 %195, 11
  call void @push_pawn(i32 %sub388, i32 1)
  br label %if.end.389

if.end.389:                                       ; preds = %if.then.387, %if.else.384
  br label %if.end.390

if.end.390:                                       ; preds = %if.end.389, %if.then.382
  br label %sw.epilog.608

sw.bb.391:                                        ; preds = %if.end.318
  %196 = load i32, i32* %from, align 4
  %sub392 = sub nsw i32 %196, 25
  %idxprom393 = sext i32 %sub392 to i64
  %arrayidx394 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom393
  %197 = load i32, i32* %arrayidx394, align 4
  %cmp395 = icmp ne i32 %197, 0
  br i1 %cmp395, label %if.then.396, label %if.end.398

if.then.396:                                      ; preds = %sw.bb.391
  %198 = load i32, i32* %from, align 4
  %sub397 = sub nsw i32 %198, 25
  call void @push_knighT(i32 %sub397)
  br label %if.end.398

if.end.398:                                       ; preds = %if.then.396, %sw.bb.391
  %199 = load i32, i32* %from, align 4
  %sub399 = sub nsw i32 %199, 23
  %idxprom400 = sext i32 %sub399 to i64
  %arrayidx401 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom400
  %200 = load i32, i32* %arrayidx401, align 4
  %cmp402 = icmp ne i32 %200, 0
  br i1 %cmp402, label %if.then.403, label %if.end.405

if.then.403:                                      ; preds = %if.end.398
  %201 = load i32, i32* %from, align 4
  %sub404 = sub nsw i32 %201, 23
  call void @push_knighT(i32 %sub404)
  br label %if.end.405

if.end.405:                                       ; preds = %if.then.403, %if.end.398
  %202 = load i32, i32* %from, align 4
  %sub406 = sub nsw i32 %202, 14
  %idxprom407 = sext i32 %sub406 to i64
  %arrayidx408 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom407
  %203 = load i32, i32* %arrayidx408, align 4
  %cmp409 = icmp ne i32 %203, 0
  br i1 %cmp409, label %if.then.410, label %if.end.412

if.then.410:                                      ; preds = %if.end.405
  %204 = load i32, i32* %from, align 4
  %sub411 = sub nsw i32 %204, 14
  call void @push_knighT(i32 %sub411)
  br label %if.end.412

if.end.412:                                       ; preds = %if.then.410, %if.end.405
  %205 = load i32, i32* %from, align 4
  %sub413 = sub nsw i32 %205, 10
  %idxprom414 = sext i32 %sub413 to i64
  %arrayidx415 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom414
  %206 = load i32, i32* %arrayidx415, align 4
  %cmp416 = icmp ne i32 %206, 0
  br i1 %cmp416, label %if.then.417, label %if.end.419

if.then.417:                                      ; preds = %if.end.412
  %207 = load i32, i32* %from, align 4
  %sub418 = sub nsw i32 %207, 10
  call void @push_knighT(i32 %sub418)
  br label %if.end.419

if.end.419:                                       ; preds = %if.then.417, %if.end.412
  %208 = load i32, i32* %from, align 4
  %add420 = add nsw i32 %208, 10
  %idxprom421 = sext i32 %add420 to i64
  %arrayidx422 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom421
  %209 = load i32, i32* %arrayidx422, align 4
  %cmp423 = icmp ne i32 %209, 0
  br i1 %cmp423, label %if.then.424, label %if.end.426

if.then.424:                                      ; preds = %if.end.419
  %210 = load i32, i32* %from, align 4
  %add425 = add nsw i32 %210, 10
  call void @push_knighT(i32 %add425)
  br label %if.end.426

if.end.426:                                       ; preds = %if.then.424, %if.end.419
  %211 = load i32, i32* %from, align 4
  %add427 = add nsw i32 %211, 14
  %idxprom428 = sext i32 %add427 to i64
  %arrayidx429 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom428
  %212 = load i32, i32* %arrayidx429, align 4
  %cmp430 = icmp ne i32 %212, 0
  br i1 %cmp430, label %if.then.431, label %if.end.433

if.then.431:                                      ; preds = %if.end.426
  %213 = load i32, i32* %from, align 4
  %add432 = add nsw i32 %213, 14
  call void @push_knighT(i32 %add432)
  br label %if.end.433

if.end.433:                                       ; preds = %if.then.431, %if.end.426
  %214 = load i32, i32* %from, align 4
  %add434 = add nsw i32 %214, 23
  %idxprom435 = sext i32 %add434 to i64
  %arrayidx436 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom435
  %215 = load i32, i32* %arrayidx436, align 4
  %cmp437 = icmp ne i32 %215, 0
  br i1 %cmp437, label %if.then.438, label %if.end.440

if.then.438:                                      ; preds = %if.end.433
  %216 = load i32, i32* %from, align 4
  %add439 = add nsw i32 %216, 23
  call void @push_knighT(i32 %add439)
  br label %if.end.440

if.end.440:                                       ; preds = %if.then.438, %if.end.433
  %217 = load i32, i32* %from, align 4
  %add441 = add nsw i32 %217, 25
  %idxprom442 = sext i32 %add441 to i64
  %arrayidx443 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom442
  %218 = load i32, i32* %arrayidx443, align 4
  %cmp444 = icmp ne i32 %218, 0
  br i1 %cmp444, label %if.then.445, label %if.end.447

if.then.445:                                      ; preds = %if.end.440
  %219 = load i32, i32* %from, align 4
  %add446 = add nsw i32 %219, 25
  call void @push_knighT(i32 %add446)
  br label %if.end.447

if.end.447:                                       ; preds = %if.then.445, %if.end.440
  br label %sw.epilog.608

sw.bb.448:                                        ; preds = %if.end.318
  %220 = load i32, i32* %from, align 4
  %sub449 = sub nsw i32 %220, 13
  %idxprom450 = sext i32 %sub449 to i64
  %arrayidx451 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom450
  %221 = load i32, i32* %arrayidx451, align 4
  %cmp452 = icmp ne i32 %221, 0
  br i1 %cmp452, label %if.then.453, label %if.end.455

if.then.453:                                      ; preds = %sw.bb.448
  %222 = load i32, i32* %from, align 4
  %sub454 = sub nsw i32 %222, 13
  call void @push_slidE(i32 %sub454)
  br label %if.end.455

if.end.455:                                       ; preds = %if.then.453, %sw.bb.448
  %223 = load i32, i32* %from, align 4
  %sub456 = sub nsw i32 %223, 11
  %idxprom457 = sext i32 %sub456 to i64
  %arrayidx458 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom457
  %224 = load i32, i32* %arrayidx458, align 4
  %cmp459 = icmp ne i32 %224, 0
  br i1 %cmp459, label %if.then.460, label %if.end.462

if.then.460:                                      ; preds = %if.end.455
  %225 = load i32, i32* %from, align 4
  %sub461 = sub nsw i32 %225, 11
  call void @push_slidE(i32 %sub461)
  br label %if.end.462

if.end.462:                                       ; preds = %if.then.460, %if.end.455
  %226 = load i32, i32* %from, align 4
  %add463 = add nsw i32 %226, 11
  %idxprom464 = sext i32 %add463 to i64
  %arrayidx465 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom464
  %227 = load i32, i32* %arrayidx465, align 4
  %cmp466 = icmp ne i32 %227, 0
  br i1 %cmp466, label %if.then.467, label %if.end.469

if.then.467:                                      ; preds = %if.end.462
  %228 = load i32, i32* %from, align 4
  %add468 = add nsw i32 %228, 11
  call void @push_slidE(i32 %add468)
  br label %if.end.469

if.end.469:                                       ; preds = %if.then.467, %if.end.462
  %229 = load i32, i32* %from, align 4
  %add470 = add nsw i32 %229, 13
  %idxprom471 = sext i32 %add470 to i64
  %arrayidx472 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom471
  %230 = load i32, i32* %arrayidx472, align 4
  %cmp473 = icmp ne i32 %230, 0
  br i1 %cmp473, label %if.then.474, label %if.end.476

if.then.474:                                      ; preds = %if.end.469
  %231 = load i32, i32* %from, align 4
  %add475 = add nsw i32 %231, 13
  call void @push_slidE(i32 %add475)
  br label %if.end.476

if.end.476:                                       ; preds = %if.then.474, %if.end.469
  br label %sw.epilog.608

sw.bb.477:                                        ; preds = %if.end.318
  %232 = load i32, i32* %from, align 4
  %sub478 = sub nsw i32 %232, 12
  %idxprom479 = sext i32 %sub478 to i64
  %arrayidx480 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom479
  %233 = load i32, i32* %arrayidx480, align 4
  %cmp481 = icmp ne i32 %233, 0
  br i1 %cmp481, label %if.then.482, label %if.end.484

if.then.482:                                      ; preds = %sw.bb.477
  %234 = load i32, i32* %from, align 4
  %sub483 = sub nsw i32 %234, 12
  call void @push_slidE(i32 %sub483)
  br label %if.end.484

if.end.484:                                       ; preds = %if.then.482, %sw.bb.477
  %235 = load i32, i32* %from, align 4
  %sub485 = sub nsw i32 %235, 1
  %idxprom486 = sext i32 %sub485 to i64
  %arrayidx487 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom486
  %236 = load i32, i32* %arrayidx487, align 4
  %cmp488 = icmp ne i32 %236, 0
  br i1 %cmp488, label %if.then.489, label %if.end.491

if.then.489:                                      ; preds = %if.end.484
  %237 = load i32, i32* %from, align 4
  %sub490 = sub nsw i32 %237, 1
  call void @push_slidE(i32 %sub490)
  br label %if.end.491

if.end.491:                                       ; preds = %if.then.489, %if.end.484
  %238 = load i32, i32* %from, align 4
  %add492 = add nsw i32 %238, 1
  %idxprom493 = sext i32 %add492 to i64
  %arrayidx494 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom493
  %239 = load i32, i32* %arrayidx494, align 4
  %cmp495 = icmp ne i32 %239, 0
  br i1 %cmp495, label %if.then.496, label %if.end.498

if.then.496:                                      ; preds = %if.end.491
  %240 = load i32, i32* %from, align 4
  %add497 = add nsw i32 %240, 1
  call void @push_slidE(i32 %add497)
  br label %if.end.498

if.end.498:                                       ; preds = %if.then.496, %if.end.491
  %241 = load i32, i32* %from, align 4
  %add499 = add nsw i32 %241, 12
  %idxprom500 = sext i32 %add499 to i64
  %arrayidx501 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom500
  %242 = load i32, i32* %arrayidx501, align 4
  %cmp502 = icmp ne i32 %242, 0
  br i1 %cmp502, label %if.then.503, label %if.end.505

if.then.503:                                      ; preds = %if.end.498
  %243 = load i32, i32* %from, align 4
  %add504 = add nsw i32 %243, 12
  call void @push_slidE(i32 %add504)
  br label %if.end.505

if.end.505:                                       ; preds = %if.then.503, %if.end.498
  br label %sw.epilog.608

sw.bb.506:                                        ; preds = %if.end.318
  %244 = load i32, i32* %from, align 4
  %sub507 = sub nsw i32 %244, 13
  %idxprom508 = sext i32 %sub507 to i64
  %arrayidx509 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom508
  %245 = load i32, i32* %arrayidx509, align 4
  %cmp510 = icmp ne i32 %245, 0
  br i1 %cmp510, label %if.then.511, label %if.end.513

if.then.511:                                      ; preds = %sw.bb.506
  %246 = load i32, i32* %from, align 4
  %sub512 = sub nsw i32 %246, 13
  call void @push_slidE(i32 %sub512)
  br label %if.end.513

if.end.513:                                       ; preds = %if.then.511, %sw.bb.506
  %247 = load i32, i32* %from, align 4
  %sub514 = sub nsw i32 %247, 12
  %idxprom515 = sext i32 %sub514 to i64
  %arrayidx516 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom515
  %248 = load i32, i32* %arrayidx516, align 4
  %cmp517 = icmp ne i32 %248, 0
  br i1 %cmp517, label %if.then.518, label %if.end.520

if.then.518:                                      ; preds = %if.end.513
  %249 = load i32, i32* %from, align 4
  %sub519 = sub nsw i32 %249, 12
  call void @push_slidE(i32 %sub519)
  br label %if.end.520

if.end.520:                                       ; preds = %if.then.518, %if.end.513
  %250 = load i32, i32* %from, align 4
  %sub521 = sub nsw i32 %250, 11
  %idxprom522 = sext i32 %sub521 to i64
  %arrayidx523 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom522
  %251 = load i32, i32* %arrayidx523, align 4
  %cmp524 = icmp ne i32 %251, 0
  br i1 %cmp524, label %if.then.525, label %if.end.527

if.then.525:                                      ; preds = %if.end.520
  %252 = load i32, i32* %from, align 4
  %sub526 = sub nsw i32 %252, 11
  call void @push_slidE(i32 %sub526)
  br label %if.end.527

if.end.527:                                       ; preds = %if.then.525, %if.end.520
  %253 = load i32, i32* %from, align 4
  %sub528 = sub nsw i32 %253, 1
  %idxprom529 = sext i32 %sub528 to i64
  %arrayidx530 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom529
  %254 = load i32, i32* %arrayidx530, align 4
  %cmp531 = icmp ne i32 %254, 0
  br i1 %cmp531, label %if.then.532, label %if.end.534

if.then.532:                                      ; preds = %if.end.527
  %255 = load i32, i32* %from, align 4
  %sub533 = sub nsw i32 %255, 1
  call void @push_slidE(i32 %sub533)
  br label %if.end.534

if.end.534:                                       ; preds = %if.then.532, %if.end.527
  %256 = load i32, i32* %from, align 4
  %add535 = add nsw i32 %256, 1
  %idxprom536 = sext i32 %add535 to i64
  %arrayidx537 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom536
  %257 = load i32, i32* %arrayidx537, align 4
  %cmp538 = icmp ne i32 %257, 0
  br i1 %cmp538, label %if.then.539, label %if.end.541

if.then.539:                                      ; preds = %if.end.534
  %258 = load i32, i32* %from, align 4
  %add540 = add nsw i32 %258, 1
  call void @push_slidE(i32 %add540)
  br label %if.end.541

if.end.541:                                       ; preds = %if.then.539, %if.end.534
  %259 = load i32, i32* %from, align 4
  %add542 = add nsw i32 %259, 11
  %idxprom543 = sext i32 %add542 to i64
  %arrayidx544 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom543
  %260 = load i32, i32* %arrayidx544, align 4
  %cmp545 = icmp ne i32 %260, 0
  br i1 %cmp545, label %if.then.546, label %if.end.548

if.then.546:                                      ; preds = %if.end.541
  %261 = load i32, i32* %from, align 4
  %add547 = add nsw i32 %261, 11
  call void @push_slidE(i32 %add547)
  br label %if.end.548

if.end.548:                                       ; preds = %if.then.546, %if.end.541
  %262 = load i32, i32* %from, align 4
  %add549 = add nsw i32 %262, 12
  %idxprom550 = sext i32 %add549 to i64
  %arrayidx551 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom550
  %263 = load i32, i32* %arrayidx551, align 4
  %cmp552 = icmp ne i32 %263, 0
  br i1 %cmp552, label %if.then.553, label %if.end.555

if.then.553:                                      ; preds = %if.end.548
  %264 = load i32, i32* %from, align 4
  %add554 = add nsw i32 %264, 12
  call void @push_slidE(i32 %add554)
  br label %if.end.555

if.end.555:                                       ; preds = %if.then.553, %if.end.548
  %265 = load i32, i32* %from, align 4
  %add556 = add nsw i32 %265, 13
  %idxprom557 = sext i32 %add556 to i64
  %arrayidx558 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom557
  %266 = load i32, i32* %arrayidx558, align 4
  %cmp559 = icmp ne i32 %266, 0
  br i1 %cmp559, label %if.then.560, label %if.end.562

if.then.560:                                      ; preds = %if.end.555
  %267 = load i32, i32* %from, align 4
  %add561 = add nsw i32 %267, 13
  call void @push_slidE(i32 %add561)
  br label %if.end.562

if.end.562:                                       ; preds = %if.then.560, %if.end.555
  br label %sw.epilog.608

sw.bb.563:                                        ; preds = %if.end.318
  %268 = load i32, i32* %from, align 4
  %sub564 = sub nsw i32 %268, 13
  call void @push_king(i32 %sub564)
  %269 = load i32, i32* %from, align 4
  %sub565 = sub nsw i32 %269, 12
  call void @push_king(i32 %sub565)
  %270 = load i32, i32* %from, align 4
  %sub566 = sub nsw i32 %270, 11
  call void @push_king(i32 %sub566)
  %271 = load i32, i32* %from, align 4
  %sub567 = sub nsw i32 %271, 1
  call void @push_king(i32 %sub567)
  %272 = load i32, i32* %from, align 4
  %add568 = add nsw i32 %272, 1
  call void @push_king(i32 %add568)
  %273 = load i32, i32* %from, align 4
  %add569 = add nsw i32 %273, 11
  call void @push_king(i32 %add569)
  %274 = load i32, i32* %from, align 4
  %add570 = add nsw i32 %274, 12
  call void @push_king(i32 %add570)
  %275 = load i32, i32* %from, align 4
  %add571 = add nsw i32 %275, 13
  call void @push_king(i32 %add571)
  %276 = load i32, i32* %from, align 4
  %cmp572 = icmp eq i32 %276, 114
  br i1 %cmp572, label %land.lhs.true.573, label %if.end.606

land.lhs.true.573:                                ; preds = %sw.bb.563
  %277 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 114), align 4
  %tobool574 = icmp ne i32 %277, 0
  br i1 %tobool574, label %if.end.606, label %land.lhs.true.575

land.lhs.true.575:                                ; preds = %land.lhs.true.573
  %278 = load i32, i32* @captures, align 4
  %tobool576 = icmp ne i32 %278, 0
  br i1 %tobool576, label %if.end.606, label %land.lhs.true.577

land.lhs.true.577:                                ; preds = %land.lhs.true.575
  %279 = load i32, i32* @Variant, align 4
  %cmp578 = icmp ne i32 %279, 3
  br i1 %cmp578, label %if.then.581, label %lor.lhs.false.579

lor.lhs.false.579:                                ; preds = %land.lhs.true.577
  %280 = load i32, i32* @Giveaway, align 4
  %cmp580 = icmp eq i32 %280, 1
  br i1 %cmp580, label %if.then.581, label %if.end.606

if.then.581:                                      ; preds = %lor.lhs.false.579, %land.lhs.true.577
  %281 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 117), align 4
  %tobool582 = icmp ne i32 %281, 0
  br i1 %tobool582, label %if.end.592, label %land.lhs.true.583

land.lhs.true.583:                                ; preds = %if.then.581
  %282 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 117), align 4
  %cmp584 = icmp eq i32 %282, 8
  br i1 %cmp584, label %if.then.585, label %if.end.592

if.then.585:                                      ; preds = %land.lhs.true.583
  %283 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 115), align 4
  %cmp586 = icmp eq i32 %283, 13
  br i1 %cmp586, label %land.lhs.true.587, label %if.end.591

land.lhs.true.587:                                ; preds = %if.then.585
  %284 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 116), align 4
  %cmp588 = icmp eq i32 %284, 13
  br i1 %cmp588, label %if.then.589, label %if.end.591

if.then.589:                                      ; preds = %land.lhs.true.587
  %285 = load i32, i32* %from, align 4
  %add590 = add nsw i32 %285, 2
  call void @push_king_castle(i32 %add590, i32 3)
  br label %if.end.591

if.end.591:                                       ; preds = %if.then.589, %land.lhs.true.587, %if.then.585
  br label %if.end.592

if.end.592:                                       ; preds = %if.end.591, %land.lhs.true.583, %if.then.581
  %286 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 110), align 4
  %tobool593 = icmp ne i32 %286, 0
  br i1 %tobool593, label %if.end.605, label %land.lhs.true.594

land.lhs.true.594:                                ; preds = %if.end.592
  %287 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 110), align 4
  %cmp595 = icmp eq i32 %287, 8
  br i1 %cmp595, label %if.then.596, label %if.end.605

if.then.596:                                      ; preds = %land.lhs.true.594
  %288 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 111), align 4
  %cmp597 = icmp eq i32 %288, 13
  br i1 %cmp597, label %land.lhs.true.598, label %if.end.604

land.lhs.true.598:                                ; preds = %if.then.596
  %289 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 112), align 4
  %cmp599 = icmp eq i32 %289, 13
  br i1 %cmp599, label %land.lhs.true.600, label %if.end.604

land.lhs.true.600:                                ; preds = %land.lhs.true.598
  %290 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 113), align 4
  %cmp601 = icmp eq i32 %290, 13
  br i1 %cmp601, label %if.then.602, label %if.end.604

if.then.602:                                      ; preds = %land.lhs.true.600
  %291 = load i32, i32* %from, align 4
  %sub603 = sub nsw i32 %291, 2
  call void @push_king_castle(i32 %sub603, i32 4)
  br label %if.end.604

if.end.604:                                       ; preds = %if.then.602, %land.lhs.true.600, %land.lhs.true.598, %if.then.596
  br label %if.end.605

if.end.605:                                       ; preds = %if.end.604, %land.lhs.true.594, %if.end.592
  br label %if.end.606

if.end.606:                                       ; preds = %if.end.605, %lor.lhs.false.579, %land.lhs.true.575, %land.lhs.true.573, %sw.bb.563
  br label %sw.epilog.608

sw.default.607:                                   ; preds = %if.end.318
  br label %sw.epilog.608

sw.epilog.608:                                    ; preds = %sw.default.607, %if.end.606, %if.end.562, %if.end.505, %if.end.476, %if.end.447, %if.end.390
  br label %for.inc.609

for.inc.609:                                      ; preds = %sw.epilog.608, %if.then.315
  %292 = load i32, i32* %j, align 4
  %inc610 = add nsw i32 %292, 1
  store i32 %inc610, i32* %j, align 4
  br label %for.cond.298

for.end.611:                                      ; preds = %land.end.310
  br label %if.end.612

if.end.612:                                       ; preds = %for.end.611, %for.end
  %293 = load i32, i32* @Variant, align 4
  %cmp613 = icmp eq i32 %293, 0
  br i1 %cmp613, label %land.lhs.true.616, label %lor.lhs.false.614

lor.lhs.false.614:                                ; preds = %if.end.612
  %294 = load i32, i32* @Variant, align 4
  %cmp615 = icmp eq i32 %294, 1
  br i1 %cmp615, label %land.lhs.true.616, label %if.end.720

land.lhs.true.616:                                ; preds = %lor.lhs.false.614, %if.end.612
  %295 = load i32, i32* @captures, align 4
  %tobool617 = icmp ne i32 %295, 0
  br i1 %tobool617, label %if.end.720, label %land.lhs.true.618

land.lhs.true.618:                                ; preds = %land.lhs.true.616
  %296 = load i32, i32* @kingcap, align 4
  %tobool619 = icmp ne i32 %296, 0
  br i1 %tobool619, label %if.end.720, label %if.then.620

if.then.620:                                      ; preds = %land.lhs.true.618
  %297 = load i32, i32* @white_to_move, align 4
  %tobool621 = icmp ne i32 %297, 0
  br i1 %tobool621, label %land.lhs.true.622, label %if.else.669

land.lhs.true.622:                                ; preds = %if.then.620
  %298 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 1), align 4
  %tobool623 = icmp ne i32 %298, 0
  br i1 %tobool623, label %if.then.632, label %lor.lhs.false.624

lor.lhs.false.624:                                ; preds = %land.lhs.true.622
  %299 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 3), align 4
  %tobool625 = icmp ne i32 %299, 0
  br i1 %tobool625, label %if.then.632, label %lor.lhs.false.626

lor.lhs.false.626:                                ; preds = %lor.lhs.false.624
  %300 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 11), align 4
  %tobool627 = icmp ne i32 %300, 0
  br i1 %tobool627, label %if.then.632, label %lor.lhs.false.628

lor.lhs.false.628:                                ; preds = %lor.lhs.false.626
  %301 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 9), align 4
  %tobool629 = icmp ne i32 %301, 0
  br i1 %tobool629, label %if.then.632, label %lor.lhs.false.630

lor.lhs.false.630:                                ; preds = %lor.lhs.false.628
  %302 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 7), align 4
  %tobool631 = icmp ne i32 %302, 0
  br i1 %tobool631, label %if.then.632, label %if.else.669

if.then.632:                                      ; preds = %lor.lhs.false.630, %lor.lhs.false.628, %lor.lhs.false.626, %lor.lhs.false.624, %land.lhs.true.622
  store i32 26, i32* %from, align 4
  br label %for.cond.633

for.cond.633:                                     ; preds = %for.inc.666, %if.then.632
  %303 = load i32, i32* %from, align 4
  %cmp634 = icmp slt i32 %303, 118
  br i1 %cmp634, label %for.body.635, label %for.end.668

for.body.635:                                     ; preds = %for.cond.633
  %304 = load i32, i32* %from, align 4
  store i32 %304, i32* @gfrom, align 4
  %305 = load i32, i32* %from, align 4
  %idxprom636 = sext i32 %305 to i64
  %arrayidx637 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom636
  %306 = load i32, i32* %arrayidx637, align 4
  switch i32 %306, label %sw.epilog.665 [
    i32 0, label %sw.bb.638
    i32 13, label %sw.bb.640
  ]

sw.bb.638:                                        ; preds = %for.body.635
  %307 = load i32, i32* %from, align 4
  %add639 = add nsw i32 %307, 3
  store i32 %add639, i32* %from, align 4
  br label %for.inc.666

sw.bb.640:                                        ; preds = %for.body.635
  %308 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 1), align 4
  %tobool641 = icmp ne i32 %308, 0
  br i1 %tobool641, label %if.then.642, label %if.end.652

if.then.642:                                      ; preds = %sw.bb.640
  %309 = load i32, i32* %from, align 4
  %idxprom643 = sext i32 %309 to i64
  %arrayidx644 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom643
  %310 = load i32, i32* %arrayidx644, align 4
  %cmp645 = icmp ne i32 %310, 8
  br i1 %cmp645, label %land.lhs.true.646, label %if.end.651

land.lhs.true.646:                                ; preds = %if.then.642
  %311 = load i32, i32* %from, align 4
  %idxprom647 = sext i32 %311 to i64
  %arrayidx648 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom647
  %312 = load i32, i32* %arrayidx648, align 4
  %cmp649 = icmp ne i32 %312, 1
  br i1 %cmp649, label %if.then.650, label %if.end.651

if.then.650:                                      ; preds = %land.lhs.true.646
  call void @try_drop(i32 1)
  br label %if.end.651

if.end.651:                                       ; preds = %if.then.650, %land.lhs.true.646, %if.then.642
  br label %if.end.652

if.end.652:                                       ; preds = %if.end.651, %sw.bb.640
  %313 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 3), align 4
  %tobool653 = icmp ne i32 %313, 0
  br i1 %tobool653, label %if.then.654, label %if.end.655

if.then.654:                                      ; preds = %if.end.652
  call void @try_drop(i32 3)
  br label %if.end.655

if.end.655:                                       ; preds = %if.then.654, %if.end.652
  %314 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 11), align 4
  %tobool656 = icmp ne i32 %314, 0
  br i1 %tobool656, label %if.then.657, label %if.end.658

if.then.657:                                      ; preds = %if.end.655
  call void @try_drop(i32 11)
  br label %if.end.658

if.end.658:                                       ; preds = %if.then.657, %if.end.655
  %315 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 7), align 4
  %tobool659 = icmp ne i32 %315, 0
  br i1 %tobool659, label %if.then.660, label %if.end.661

if.then.660:                                      ; preds = %if.end.658
  call void @try_drop(i32 7)
  br label %if.end.661

if.end.661:                                       ; preds = %if.then.660, %if.end.658
  %316 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 0, i64 9), align 4
  %tobool662 = icmp ne i32 %316, 0
  br i1 %tobool662, label %if.then.663, label %if.end.664

if.then.663:                                      ; preds = %if.end.661
  call void @try_drop(i32 9)
  br label %if.end.664

if.end.664:                                       ; preds = %if.then.663, %if.end.661
  br label %sw.epilog.665

sw.epilog.665:                                    ; preds = %if.end.664, %for.body.635
  br label %for.inc.666

for.inc.666:                                      ; preds = %sw.epilog.665, %sw.bb.638
  %317 = load i32, i32* %from, align 4
  %inc667 = add nsw i32 %317, 1
  store i32 %inc667, i32* %from, align 4
  br label %for.cond.633

for.end.668:                                      ; preds = %for.cond.633
  br label %if.end.719

if.else.669:                                      ; preds = %lor.lhs.false.630, %if.then.620
  %318 = load i32, i32* @white_to_move, align 4
  %tobool670 = icmp ne i32 %318, 0
  br i1 %tobool670, label %if.end.718, label %land.lhs.true.671

land.lhs.true.671:                                ; preds = %if.else.669
  %319 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 2), align 4
  %tobool672 = icmp ne i32 %319, 0
  br i1 %tobool672, label %if.then.681, label %lor.lhs.false.673

lor.lhs.false.673:                                ; preds = %land.lhs.true.671
  %320 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 4), align 4
  %tobool674 = icmp ne i32 %320, 0
  br i1 %tobool674, label %if.then.681, label %lor.lhs.false.675

lor.lhs.false.675:                                ; preds = %lor.lhs.false.673
  %321 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 12), align 4
  %tobool676 = icmp ne i32 %321, 0
  br i1 %tobool676, label %if.then.681, label %lor.lhs.false.677

lor.lhs.false.677:                                ; preds = %lor.lhs.false.675
  %322 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 10), align 4
  %tobool678 = icmp ne i32 %322, 0
  br i1 %tobool678, label %if.then.681, label %lor.lhs.false.679

lor.lhs.false.679:                                ; preds = %lor.lhs.false.677
  %323 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 8), align 4
  %tobool680 = icmp ne i32 %323, 0
  br i1 %tobool680, label %if.then.681, label %if.end.718

if.then.681:                                      ; preds = %lor.lhs.false.679, %lor.lhs.false.677, %lor.lhs.false.675, %lor.lhs.false.673, %land.lhs.true.671
  store i32 26, i32* %from, align 4
  br label %for.cond.682

for.cond.682:                                     ; preds = %for.inc.715, %if.then.681
  %324 = load i32, i32* %from, align 4
  %cmp683 = icmp slt i32 %324, 118
  br i1 %cmp683, label %for.body.684, label %for.end.717

for.body.684:                                     ; preds = %for.cond.682
  %325 = load i32, i32* %from, align 4
  store i32 %325, i32* @gfrom, align 4
  %326 = load i32, i32* %from, align 4
  %idxprom685 = sext i32 %326 to i64
  %arrayidx686 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom685
  %327 = load i32, i32* %arrayidx686, align 4
  switch i32 %327, label %sw.epilog.714 [
    i32 0, label %sw.bb.687
    i32 13, label %sw.bb.689
  ]

sw.bb.687:                                        ; preds = %for.body.684
  %328 = load i32, i32* %from, align 4
  %add688 = add nsw i32 %328, 3
  store i32 %add688, i32* %from, align 4
  br label %for.inc.715

sw.bb.689:                                        ; preds = %for.body.684
  %329 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 2), align 4
  %tobool690 = icmp ne i32 %329, 0
  br i1 %tobool690, label %if.then.691, label %if.end.701

if.then.691:                                      ; preds = %sw.bb.689
  %330 = load i32, i32* %from, align 4
  %idxprom692 = sext i32 %330 to i64
  %arrayidx693 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom692
  %331 = load i32, i32* %arrayidx693, align 4
  %cmp694 = icmp ne i32 %331, 8
  br i1 %cmp694, label %land.lhs.true.695, label %if.end.700

land.lhs.true.695:                                ; preds = %if.then.691
  %332 = load i32, i32* %from, align 4
  %idxprom696 = sext i32 %332 to i64
  %arrayidx697 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom696
  %333 = load i32, i32* %arrayidx697, align 4
  %cmp698 = icmp ne i32 %333, 1
  br i1 %cmp698, label %if.then.699, label %if.end.700

if.then.699:                                      ; preds = %land.lhs.true.695
  call void @try_drop(i32 2)
  br label %if.end.700

if.end.700:                                       ; preds = %if.then.699, %land.lhs.true.695, %if.then.691
  br label %if.end.701

if.end.701:                                       ; preds = %if.end.700, %sw.bb.689
  %334 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 4), align 4
  %tobool702 = icmp ne i32 %334, 0
  br i1 %tobool702, label %if.then.703, label %if.end.704

if.then.703:                                      ; preds = %if.end.701
  call void @try_drop(i32 4)
  br label %if.end.704

if.end.704:                                       ; preds = %if.then.703, %if.end.701
  %335 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 12), align 4
  %tobool705 = icmp ne i32 %335, 0
  br i1 %tobool705, label %if.then.706, label %if.end.707

if.then.706:                                      ; preds = %if.end.704
  call void @try_drop(i32 12)
  br label %if.end.707

if.end.707:                                       ; preds = %if.then.706, %if.end.704
  %336 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 8), align 4
  %tobool708 = icmp ne i32 %336, 0
  br i1 %tobool708, label %if.then.709, label %if.end.710

if.then.709:                                      ; preds = %if.end.707
  call void @try_drop(i32 8)
  br label %if.end.710

if.end.710:                                       ; preds = %if.then.709, %if.end.707
  %337 = load i32, i32* getelementptr inbounds ([2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 1, i64 10), align 4
  %tobool711 = icmp ne i32 %337, 0
  br i1 %tobool711, label %if.then.712, label %if.end.713

if.then.712:                                      ; preds = %if.end.710
  call void @try_drop(i32 10)
  br label %if.end.713

if.end.713:                                       ; preds = %if.then.712, %if.end.710
  br label %sw.epilog.714

sw.epilog.714:                                    ; preds = %if.end.713, %for.body.684
  br label %for.inc.715

for.inc.715:                                      ; preds = %sw.epilog.714, %sw.bb.687
  %338 = load i32, i32* %from, align 4
  %inc716 = add nsw i32 %338, 1
  store i32 %inc716, i32* %from, align 4
  br label %for.cond.682

for.end.717:                                      ; preds = %for.cond.682
  br label %if.end.718

if.end.718:                                       ; preds = %for.end.717, %lor.lhs.false.679, %if.else.669
  br label %if.end.719

if.end.719:                                       ; preds = %if.end.718, %for.end.668
  br label %if.end.720

if.end.720:                                       ; preds = %if.end.719, %land.lhs.true.618, %land.lhs.true.616, %lor.lhs.false.614
  %339 = load i32, i32* @Variant, align 4
  %cmp721 = icmp eq i32 %339, 3
  br i1 %cmp721, label %land.lhs.true.722, label %if.end.727

land.lhs.true.722:                                ; preds = %if.end.720
  %340 = load i32, i32* @fcaptures, align 4
  %cmp723 = icmp eq i32 %340, 1
  br i1 %cmp723, label %land.lhs.true.724, label %if.end.727

land.lhs.true.724:                                ; preds = %land.lhs.true.722
  %341 = load i32, i32* @captures, align 4
  %cmp725 = icmp eq i32 %341, 0
  br i1 %cmp725, label %if.then.726, label %if.end.727

if.then.726:                                      ; preds = %land.lhs.true.724
  store i32 1, i32* @captures, align 4
  store i32 0, i32* @numb_moves, align 4
  br label %restart

if.end.727:                                       ; preds = %land.lhs.true.724, %land.lhs.true.722, %if.end.720
  %342 = load i32, i32* @Variant, align 4
  %cmp728 = icmp eq i32 %342, 3
  br i1 %cmp728, label %if.then.729, label %if.end.730

if.then.729:                                      ; preds = %if.end.727
  store i32 0, i32* @kingcap, align 4
  br label %if.end.730

if.end.730:                                       ; preds = %if.then.729, %if.end.727
  ret void
}

; Function Attrs: nounwind uwtable
define void @push_pawn(i32 %target, i32 %is_ep) #0 {
entry:
  %target.addr = alloca i32, align 4
  %is_ep.addr = alloca i32, align 4
  %captured_piece = alloca i32, align 4
  store i32 %target, i32* %target.addr, align 4
  store i32 %is_ep, i32* %is_ep.addr, align 4
  %0 = load i32, i32* %is_ep.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @gfrom, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %3 = load i32, i32* %target.addr, align 4
  call void @add_capture(i32 %3, i32 2, i32 0, i32 1)
  br label %return

if.else:                                          ; preds = %if.then
  %4 = load i32, i32* %target.addr, align 4
  call void @add_capture(i32 %4, i32 1, i32 0, i32 1)
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %target.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom2
  %6 = load i32, i32* %arrayidx3, align 4
  store i32 %6, i32* %captured_piece, align 4
  %7 = load i32, i32* @gfrom, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp eq i32 %8, 1
  br i1 %cmp6, label %land.lhs.true, label %if.else.14

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, i32* @gfrom, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom7
  %10 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp eq i32 %10, 7
  br i1 %cmp9, label %if.then.10, label %if.else.14

if.then.10:                                       ; preds = %land.lhs.true
  %11 = load i32, i32* %target.addr, align 4
  %12 = load i32, i32* %captured_piece, align 4
  call void @add_capture(i32 %11, i32 %12, i32 9, i32 0)
  %13 = load i32, i32* %target.addr, align 4
  %14 = load i32, i32* %captured_piece, align 4
  call void @add_capture(i32 %13, i32 %14, i32 7, i32 0)
  %15 = load i32, i32* %target.addr, align 4
  %16 = load i32, i32* %captured_piece, align 4
  call void @add_capture(i32 %15, i32 %16, i32 11, i32 0)
  %17 = load i32, i32* %target.addr, align 4
  %18 = load i32, i32* %captured_piece, align 4
  call void @add_capture(i32 %17, i32 %18, i32 3, i32 0)
  %19 = load i32, i32* @Variant, align 4
  %cmp11 = icmp eq i32 %19, 3
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  %20 = load i32, i32* %target.addr, align 4
  %21 = load i32, i32* %captured_piece, align 4
  call void @add_capture(i32 %20, i32 %21, i32 5, i32 0)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.10
  br label %return

if.else.14:                                       ; preds = %land.lhs.true, %if.end
  %22 = load i32, i32* @gfrom, align 4
  %idxprom15 = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom15
  %23 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp eq i32 %23, 2
  br i1 %cmp17, label %land.lhs.true.18, label %if.else.26

land.lhs.true.18:                                 ; preds = %if.else.14
  %24 = load i32, i32* @gfrom, align 4
  %idxprom19 = sext i32 %24 to i64
  %arrayidx20 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom19
  %25 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp eq i32 %25, 2
  br i1 %cmp21, label %if.then.22, label %if.else.26

if.then.22:                                       ; preds = %land.lhs.true.18
  %26 = load i32, i32* %target.addr, align 4
  %27 = load i32, i32* %captured_piece, align 4
  call void @add_capture(i32 %26, i32 %27, i32 10, i32 0)
  %28 = load i32, i32* %target.addr, align 4
  %29 = load i32, i32* %captured_piece, align 4
  call void @add_capture(i32 %28, i32 %29, i32 8, i32 0)
  %30 = load i32, i32* %target.addr, align 4
  %31 = load i32, i32* %captured_piece, align 4
  call void @add_capture(i32 %30, i32 %31, i32 12, i32 0)
  %32 = load i32, i32* %target.addr, align 4
  %33 = load i32, i32* %captured_piece, align 4
  call void @add_capture(i32 %32, i32 %33, i32 4, i32 0)
  %34 = load i32, i32* @Variant, align 4
  %cmp23 = icmp eq i32 %34, 3
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.22
  %35 = load i32, i32* %target.addr, align 4
  %36 = load i32, i32* %captured_piece, align 4
  call void @add_capture(i32 %35, i32 %36, i32 6, i32 0)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.then.22
  br label %return

if.else.26:                                       ; preds = %land.lhs.true.18, %if.else.14
  %37 = load i32, i32* %target.addr, align 4
  %38 = load i32, i32* %captured_piece, align 4
  call void @add_capture(i32 %37, i32 %38, i32 0, i32 0)
  br label %return

return:                                           ; preds = %if.else.26, %if.end.25, %if.end.13, %if.else, %if.then.1
  ret void
}

; Function Attrs: nounwind uwtable
define void @push_pawn_simple(i32 %target) #0 {
entry:
  %target.addr = alloca i32, align 4
  store i32 %target, i32* %target.addr, align 4
  %0 = load i32, i32* %target.addr, align 4
  call void @add_move(i32 %0, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @push_knighT(i32 %target) #0 {
entry:
  %target.addr = alloca i32, align 4
  store i32 %target, i32* %target.addr, align 4
  %0 = load i32, i32* %target.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %1, 13
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @captures, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %target.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp eq i32 %4, 13
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %5 = load i32, i32* %target.addr, align 4
  call void @add_move(i32 %5, i32 0)
  br label %return

if.else:                                          ; preds = %if.end
  %6 = load i32, i32* %target.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom5
  %7 = load i32, i32* %arrayidx6, align 4
  %and = and i32 %7, 1
  %8 = load i32, i32* @gfrom, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom7
  %9 = load i32, i32* %arrayidx8, align 4
  %and9 = and i32 %9, 1
  %cmp10 = icmp ne i32 %and, %and9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.else
  %10 = load i32, i32* %target.addr, align 4
  %11 = load i32, i32* %target.addr, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom12
  %12 = load i32, i32* %arrayidx13, align 4
  call void @add_capture(i32 %10, i32 %12, i32 0, i32 0)
  br label %return

if.end.14:                                        ; preds = %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14
  br label %return

return:                                           ; preds = %if.end.15, %if.then.11, %if.then.4, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @push_slidE(i32 %target) #0 {
entry:
  %target.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  %mycolor = alloca i32, align 4
  store i32 %target, i32* %target.addr, align 4
  %0 = load i32, i32* %target.addr, align 4
  %1 = load i32, i32* @gfrom, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, i32* %offset, align 4
  %2 = load i32, i32* @gfrom, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %and = and i32 %3, 1
  store i32 %and, i32* %mycolor, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %4 = load i32, i32* %target.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %cmp = icmp eq i32 %5, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load i32, i32* @captures, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %target.addr, align 4
  call void @add_move(i32 %7, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %8 = load i32, i32* %offset, align 4
  %9 = load i32, i32* %target.addr, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, i32* %target.addr, align 4
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %10 = load i32, i32* %target.addr, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom4
  %11 = load i32, i32* %arrayidx5, align 4
  %and6 = and i32 %11, 1
  %12 = load i32, i32* %mycolor, align 4
  %cmp7 = icmp ne i32 %and6, %12
  br i1 %cmp7, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %if.else
  %13 = load i32, i32* %target.addr, align 4
  %14 = load i32, i32* %target.addr, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom9
  %15 = load i32, i32* %arrayidx10, align 4
  call void @add_capture(i32 %13, i32 %15, i32 0, i32 0)
  br label %do.end

if.else.11:                                       ; preds = %if.else
  br label %do.end

if.end.12:                                        ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  %16 = load i32, i32* %target.addr, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom13
  %17 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp ne i32 %17, 0
  br i1 %cmp15, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.else.11, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @push_king(i32 %target) #0 {
entry:
  %target.addr = alloca i32, align 4
  store i32 %target, i32* %target.addr, align 4
  %0 = load i32, i32* %target.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %target.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp eq i32 %3, 13
  br i1 %cmp3, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* @captures, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %5 = load i32, i32* %target.addr, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom6
  %6 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp eq i32 %6, 13
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.5
  %7 = load i32, i32* %target.addr, align 4
  call void @add_move(i32 %7, i32 0)
  br label %return

if.else:                                          ; preds = %if.end.5
  %8 = load i32, i32* %target.addr, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom10
  %9 = load i32, i32* %arrayidx11, align 4
  %and = and i32 %9, 1
  %10 = load i32, i32* @gfrom, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom12
  %11 = load i32, i32* %arrayidx13, align 4
  %and14 = and i32 %11, 1
  %cmp15 = icmp ne i32 %and, %and14
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.else
  %12 = load i32, i32* %target.addr, align 4
  %13 = load i32, i32* %target.addr, align 4
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom17
  %14 = load i32, i32* %arrayidx18, align 4
  call void @add_capture(i32 %12, i32 %14, i32 0, i32 0)
  br label %return

if.end.19:                                        ; preds = %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19
  br label %return

return:                                           ; preds = %if.end.20, %if.then.16, %if.then.9, %if.then.4, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @push_king_castle(i32 %Ptarget, i32 %Pcastle_type) #0 {
entry:
  %Ptarget.addr = alloca i32, align 4
  %Pcastle_type.addr = alloca i32, align 4
  store i32 %Ptarget, i32* %Ptarget.addr, align 4
  store i32 %Pcastle_type, i32* %Pcastle_type.addr, align 4
  %0 = load i32, i32* @gfrom, align 4
  %1 = load i32, i32* @numb_moves, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx = getelementptr inbounds %struct.move_s, %struct.move_s* %2, i64 %idxprom
  %from = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx, i32 0, i32 0
  store i32 %0, i32* %from, align 4
  %3 = load i32, i32* %Ptarget.addr, align 4
  %4 = load i32, i32* @numb_moves, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx2 = getelementptr inbounds %struct.move_s, %struct.move_s* %5, i64 %idxprom1
  %target = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx2, i32 0, i32 1
  store i32 %3, i32* %target, align 4
  %6 = load i32, i32* @numb_moves, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx4 = getelementptr inbounds %struct.move_s, %struct.move_s* %7, i64 %idxprom3
  %captured = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx4, i32 0, i32 2
  store i32 13, i32* %captured, align 4
  %8 = load i32, i32* %Pcastle_type.addr, align 4
  %9 = load i32, i32* @numb_moves, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx6 = getelementptr inbounds %struct.move_s, %struct.move_s* %10, i64 %idxprom5
  %castled = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx6, i32 0, i32 4
  store i32 %8, i32* %castled, align 4
  %11 = load i32, i32* @numb_moves, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx8 = getelementptr inbounds %struct.move_s, %struct.move_s* %12, i64 %idxprom7
  %promoted = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx8, i32 0, i32 3
  store i32 0, i32* %promoted, align 4
  %13 = load i32, i32* @numb_moves, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx10 = getelementptr inbounds %struct.move_s, %struct.move_s* %14, i64 %idxprom9
  %ep = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx10, i32 0, i32 5
  store i32 0, i32* %ep, align 4
  %15 = load i32, i32* @numb_moves, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* @numb_moves, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @try_drop(i32 %ptype) #0 {
entry:
  %ptype.addr = alloca i32, align 4
  store i32 %ptype, i32* %ptype.addr, align 4
  %0 = load i32, i32* @numb_moves, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx = getelementptr inbounds %struct.move_s, %struct.move_s* %1, i64 %idxprom
  %from = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx, i32 0, i32 0
  store i32 0, i32* %from, align 4
  %2 = load i32, i32* @gfrom, align 4
  %3 = load i32, i32* @numb_moves, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx2 = getelementptr inbounds %struct.move_s, %struct.move_s* %4, i64 %idxprom1
  %target = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx2, i32 0, i32 1
  store i32 %2, i32* %target, align 4
  %5 = load i32, i32* @numb_moves, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx4 = getelementptr inbounds %struct.move_s, %struct.move_s* %6, i64 %idxprom3
  %captured = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx4, i32 0, i32 2
  store i32 13, i32* %captured, align 4
  %7 = load i32, i32* @numb_moves, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx6 = getelementptr inbounds %struct.move_s, %struct.move_s* %8, i64 %idxprom5
  %castled = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx6, i32 0, i32 4
  store i32 0, i32* %castled, align 4
  %9 = load i32, i32* %ptype.addr, align 4
  %10 = load i32, i32* @numb_moves, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx8 = getelementptr inbounds %struct.move_s, %struct.move_s* %11, i64 %idxprom7
  %promoted = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx8, i32 0, i32 3
  store i32 %9, i32* %promoted, align 4
  %12 = load i32, i32* @numb_moves, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx10 = getelementptr inbounds %struct.move_s, %struct.move_s* %13, i64 %idxprom9
  %ep = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx10, i32 0, i32 5
  store i32 0, i32* %ep, align 4
  %14 = load i32, i32* @numb_moves, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* @numb_moves, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @in_check() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @Variant, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @white_to_move, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %2 = load i32, i32* @wking_loc, align 4
  %call = call i32 @is_attacked(i32 %2, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.then.2
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %3 = load i32, i32* @bking_loc, align 4
  %call5 = call i32 @is_attacked(i32 %3, i32 1)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.7, %if.then.3, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @f_in_check(%struct.move_s* %moves, i32 %m) #0 {
entry:
  %retval = alloca i32, align 4
  %moves.addr = alloca %struct.move_s*, align 8
  %m.addr = alloca i32, align 4
  %target = alloca i32, align 4
  %from = alloca i32, align 4
  %l = alloca i32, align 4
  store %struct.move_s* %moves, %struct.move_s** %moves.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx = getelementptr inbounds %struct.move_s, %struct.move_s* %1, i64 %idxprom
  %target1 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx, i32 0, i32 1
  %2 = load i32, i32* %target1, align 4
  store i32 %2, i32* %target, align 4
  %3 = load i32, i32* %m.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %4 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.move_s, %struct.move_s* %4, i64 %idxprom2
  %from4 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx3, i32 0, i32 0
  %5 = load i32, i32* %from4, align 4
  store i32 %5, i32* %from, align 4
  %6 = load i32, i32* @Variant, align 4
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* @white_to_move, align 4
  %cmp5 = icmp eq i32 %7, 1
  br i1 %cmp5, label %if.then.6, label %if.else.513

if.then.6:                                        ; preds = %if.end
  %8 = load i32, i32* %target, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom7
  %9 = load i32, i32* %arrayidx8, align 4
  switch i32 %9, label %sw.epilog [
    i32 2, label %sw.bb
    i32 12, label %sw.bb.18
    i32 8, label %sw.bb.84
    i32 4, label %sw.bb.154
    i32 10, label %sw.bb.167
    i32 6, label %sw.bb.311
  ]

sw.bb:                                            ; preds = %if.then.6
  %10 = load i32, i32* %target, align 4
  %sub = sub nsw i32 %10, 11
  %idxprom9 = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom9
  %11 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp eq i32 %11, 5
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %12 = load i32, i32* %target, align 4
  %sub12 = sub nsw i32 %12, 13
  %idxprom13 = sext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom13
  %13 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp eq i32 %13, 5
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false, %sw.bb
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %lor.lhs.false
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.then.6
  %14 = load i32, i32* %target, align 4
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom19
  %15 = load i32, i32* %arrayidx20, align 4
  %16 = load i32, i32* @wking_loc, align 4
  %idxprom21 = sext i32 %16 to i64
  %arrayidx22 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom21
  %17 = load i32, i32* %arrayidx22, align 4
  %cmp23 = icmp eq i32 %15, %17
  br i1 %cmp23, label %if.then.24, label %if.else.47

if.then.24:                                       ; preds = %sw.bb.18
  %18 = load i32, i32* @wking_loc, align 4
  %19 = load i32, i32* %target, align 4
  %cmp25 = icmp slt i32 %18, %19
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.then.24
  %20 = load i32, i32* @wking_loc, align 4
  %add = add nsw i32 %20, 13
  store i32 %add, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.26
  %21 = load i32, i32* %l, align 4
  %idxprom27 = sext i32 %21 to i64
  %arrayidx28 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom27
  %22 = load i32, i32* %arrayidx28, align 4
  %cmp29 = icmp eq i32 %22, 13
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %l, align 4
  %add30 = add nsw i32 %23, 13
  store i32 %add30, i32* %l, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %l, align 4
  %25 = load i32, i32* %target, align 4
  %cmp31 = icmp eq i32 %24, %25
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %for.end
  br label %if.end.46

if.else:                                          ; preds = %if.then.24
  %26 = load i32, i32* @wking_loc, align 4
  %sub34 = sub nsw i32 %26, 13
  store i32 %sub34, i32* %l, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.40, %if.else
  %27 = load i32, i32* %l, align 4
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom36
  %28 = load i32, i32* %arrayidx37, align 4
  %cmp38 = icmp eq i32 %28, 13
  br i1 %cmp38, label %for.body.39, label %for.end.42

for.body.39:                                      ; preds = %for.cond.35
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.39
  %29 = load i32, i32* %l, align 4
  %sub41 = sub nsw i32 %29, 13
  store i32 %sub41, i32* %l, align 4
  br label %for.cond.35

for.end.42:                                       ; preds = %for.cond.35
  %30 = load i32, i32* %l, align 4
  %31 = load i32, i32* %target, align 4
  %cmp43 = icmp eq i32 %30, %31
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %for.end.42
  store i32 1, i32* %retval
  br label %return

if.end.45:                                        ; preds = %for.end.42
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.33
  br label %if.end.83

if.else.47:                                       ; preds = %sw.bb.18
  %32 = load i32, i32* %target, align 4
  %idxprom48 = sext i32 %32 to i64
  %arrayidx49 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom48
  %33 = load i32, i32* %arrayidx49, align 4
  %34 = load i32, i32* @wking_loc, align 4
  %idxprom50 = sext i32 %34 to i64
  %arrayidx51 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom50
  %35 = load i32, i32* %arrayidx51, align 4
  %cmp52 = icmp eq i32 %33, %35
  br i1 %cmp52, label %if.then.53, label %if.end.82

if.then.53:                                       ; preds = %if.else.47
  %36 = load i32, i32* @wking_loc, align 4
  %37 = load i32, i32* %target, align 4
  %cmp54 = icmp slt i32 %36, %37
  br i1 %cmp54, label %if.then.55, label %if.else.68

if.then.55:                                       ; preds = %if.then.53
  %38 = load i32, i32* @wking_loc, align 4
  %add56 = add nsw i32 %38, 11
  store i32 %add56, i32* %l, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.62, %if.then.55
  %39 = load i32, i32* %l, align 4
  %idxprom58 = sext i32 %39 to i64
  %arrayidx59 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom58
  %40 = load i32, i32* %arrayidx59, align 4
  %cmp60 = icmp eq i32 %40, 13
  br i1 %cmp60, label %for.body.61, label %for.end.64

for.body.61:                                      ; preds = %for.cond.57
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.61
  %41 = load i32, i32* %l, align 4
  %add63 = add nsw i32 %41, 11
  store i32 %add63, i32* %l, align 4
  br label %for.cond.57

for.end.64:                                       ; preds = %for.cond.57
  %42 = load i32, i32* %l, align 4
  %43 = load i32, i32* %target, align 4
  %cmp65 = icmp eq i32 %42, %43
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %for.end.64
  store i32 1, i32* %retval
  br label %return

if.end.67:                                        ; preds = %for.end.64
  br label %if.end.81

if.else.68:                                       ; preds = %if.then.53
  %44 = load i32, i32* @wking_loc, align 4
  %sub69 = sub nsw i32 %44, 11
  store i32 %sub69, i32* %l, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.75, %if.else.68
  %45 = load i32, i32* %l, align 4
  %idxprom71 = sext i32 %45 to i64
  %arrayidx72 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom71
  %46 = load i32, i32* %arrayidx72, align 4
  %cmp73 = icmp eq i32 %46, 13
  br i1 %cmp73, label %for.body.74, label %for.end.77

for.body.74:                                      ; preds = %for.cond.70
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.74
  %47 = load i32, i32* %l, align 4
  %sub76 = sub nsw i32 %47, 11
  store i32 %sub76, i32* %l, align 4
  br label %for.cond.70

for.end.77:                                       ; preds = %for.cond.70
  %48 = load i32, i32* %l, align 4
  %49 = load i32, i32* %target, align 4
  %cmp78 = icmp eq i32 %48, %49
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.end.77
  store i32 1, i32* %retval
  br label %return

if.end.80:                                        ; preds = %for.end.77
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.67
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.else.47
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.46
  br label %sw.epilog

sw.bb.84:                                         ; preds = %if.then.6
  %50 = load i32, i32* %target, align 4
  %idxprom85 = sext i32 %50 to i64
  %arrayidx86 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom85
  %51 = load i32, i32* %arrayidx86, align 4
  %52 = load i32, i32* @wking_loc, align 4
  %idxprom87 = sext i32 %52 to i64
  %arrayidx88 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom87
  %53 = load i32, i32* %arrayidx88, align 4
  %cmp89 = icmp eq i32 %51, %53
  br i1 %cmp89, label %if.then.90, label %if.else.119

if.then.90:                                       ; preds = %sw.bb.84
  %54 = load i32, i32* @wking_loc, align 4
  %55 = load i32, i32* %target, align 4
  %cmp91 = icmp slt i32 %54, %55
  br i1 %cmp91, label %if.then.92, label %if.else.105

if.then.92:                                       ; preds = %if.then.90
  %56 = load i32, i32* @wking_loc, align 4
  %add93 = add nsw i32 %56, 12
  store i32 %add93, i32* %l, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.99, %if.then.92
  %57 = load i32, i32* %l, align 4
  %idxprom95 = sext i32 %57 to i64
  %arrayidx96 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom95
  %58 = load i32, i32* %arrayidx96, align 4
  %cmp97 = icmp eq i32 %58, 13
  br i1 %cmp97, label %for.body.98, label %for.end.101

for.body.98:                                      ; preds = %for.cond.94
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.98
  %59 = load i32, i32* %l, align 4
  %add100 = add nsw i32 %59, 12
  store i32 %add100, i32* %l, align 4
  br label %for.cond.94

for.end.101:                                      ; preds = %for.cond.94
  %60 = load i32, i32* %l, align 4
  %61 = load i32, i32* %target, align 4
  %cmp102 = icmp eq i32 %60, %61
  br i1 %cmp102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %for.end.101
  store i32 1, i32* %retval
  br label %return

if.end.104:                                       ; preds = %for.end.101
  br label %if.end.118

if.else.105:                                      ; preds = %if.then.90
  %62 = load i32, i32* @wking_loc, align 4
  %sub106 = sub nsw i32 %62, 12
  store i32 %sub106, i32* %l, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.112, %if.else.105
  %63 = load i32, i32* %l, align 4
  %idxprom108 = sext i32 %63 to i64
  %arrayidx109 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom108
  %64 = load i32, i32* %arrayidx109, align 4
  %cmp110 = icmp eq i32 %64, 13
  br i1 %cmp110, label %for.body.111, label %for.end.114

for.body.111:                                     ; preds = %for.cond.107
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body.111
  %65 = load i32, i32* %l, align 4
  %sub113 = sub nsw i32 %65, 12
  store i32 %sub113, i32* %l, align 4
  br label %for.cond.107

for.end.114:                                      ; preds = %for.cond.107
  %66 = load i32, i32* %l, align 4
  %67 = load i32, i32* %target, align 4
  %cmp115 = icmp eq i32 %66, %67
  br i1 %cmp115, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %for.end.114
  store i32 1, i32* %retval
  br label %return

if.end.117:                                       ; preds = %for.end.114
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end.104
  br label %if.end.153

if.else.119:                                      ; preds = %sw.bb.84
  %68 = load i32, i32* %target, align 4
  %idxprom120 = sext i32 %68 to i64
  %arrayidx121 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom120
  %69 = load i32, i32* %arrayidx121, align 4
  %70 = load i32, i32* @wking_loc, align 4
  %idxprom122 = sext i32 %70 to i64
  %arrayidx123 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom122
  %71 = load i32, i32* %arrayidx123, align 4
  %cmp124 = icmp eq i32 %69, %71
  br i1 %cmp124, label %if.then.125, label %if.end.152

if.then.125:                                      ; preds = %if.else.119
  %72 = load i32, i32* @wking_loc, align 4
  %73 = load i32, i32* %target, align 4
  %cmp126 = icmp slt i32 %72, %73
  br i1 %cmp126, label %if.then.127, label %if.else.139

if.then.127:                                      ; preds = %if.then.125
  %74 = load i32, i32* @wking_loc, align 4
  %add128 = add nsw i32 %74, 1
  store i32 %add128, i32* %l, align 4
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.134, %if.then.127
  %75 = load i32, i32* %l, align 4
  %idxprom130 = sext i32 %75 to i64
  %arrayidx131 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom130
  %76 = load i32, i32* %arrayidx131, align 4
  %cmp132 = icmp eq i32 %76, 13
  br i1 %cmp132, label %for.body.133, label %for.end.135

for.body.133:                                     ; preds = %for.cond.129
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.body.133
  %77 = load i32, i32* %l, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.129

for.end.135:                                      ; preds = %for.cond.129
  %78 = load i32, i32* %l, align 4
  %79 = load i32, i32* %target, align 4
  %cmp136 = icmp eq i32 %78, %79
  br i1 %cmp136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %for.end.135
  store i32 1, i32* %retval
  br label %return

if.end.138:                                       ; preds = %for.end.135
  br label %if.end.151

if.else.139:                                      ; preds = %if.then.125
  %80 = load i32, i32* @wking_loc, align 4
  %sub140 = sub nsw i32 %80, 1
  store i32 %sub140, i32* %l, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.146, %if.else.139
  %81 = load i32, i32* %l, align 4
  %idxprom142 = sext i32 %81 to i64
  %arrayidx143 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom142
  %82 = load i32, i32* %arrayidx143, align 4
  %cmp144 = icmp eq i32 %82, 13
  br i1 %cmp144, label %for.body.145, label %for.end.147

for.body.145:                                     ; preds = %for.cond.141
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.body.145
  %83 = load i32, i32* %l, align 4
  %dec = add nsw i32 %83, -1
  store i32 %dec, i32* %l, align 4
  br label %for.cond.141

for.end.147:                                      ; preds = %for.cond.141
  %84 = load i32, i32* %l, align 4
  %85 = load i32, i32* %target, align 4
  %cmp148 = icmp eq i32 %84, %85
  br i1 %cmp148, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %for.end.147
  store i32 1, i32* %retval
  br label %return

if.end.150:                                       ; preds = %for.end.147
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end.138
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.else.119
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.end.118
  br label %sw.epilog

sw.bb.154:                                        ; preds = %if.then.6
  store i32 0, i32* %l, align 4
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.164, %sw.bb.154
  %86 = load i32, i32* %l, align 4
  %cmp156 = icmp slt i32 %86, 8
  br i1 %cmp156, label %for.body.157, label %for.end.166

for.body.157:                                     ; preds = %for.cond.155
  %87 = load i32, i32* @wking_loc, align 4
  %88 = load i32, i32* %l, align 4
  %idxprom158 = sext i32 %88 to i64
  %arrayidx159 = getelementptr inbounds [8 x i32], [8 x i32]* @f_in_check.knight_o, i32 0, i64 %idxprom158
  %89 = load i32, i32* %arrayidx159, align 4
  %add160 = add nsw i32 %87, %89
  %90 = load i32, i32* %target, align 4
  %cmp161 = icmp eq i32 %add160, %90
  br i1 %cmp161, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %for.body.157
  store i32 1, i32* %retval
  br label %return

if.end.163:                                       ; preds = %for.body.157
  br label %for.inc.164

for.inc.164:                                      ; preds = %if.end.163
  %91 = load i32, i32* %l, align 4
  %inc165 = add nsw i32 %91, 1
  store i32 %inc165, i32* %l, align 4
  br label %for.cond.155

for.end.166:                                      ; preds = %for.cond.155
  br label %sw.epilog

sw.bb.167:                                        ; preds = %if.then.6
  %92 = load i32, i32* %target, align 4
  %idxprom168 = sext i32 %92 to i64
  %arrayidx169 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom168
  %93 = load i32, i32* %arrayidx169, align 4
  %94 = load i32, i32* @wking_loc, align 4
  %idxprom170 = sext i32 %94 to i64
  %arrayidx171 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom170
  %95 = load i32, i32* %arrayidx171, align 4
  %cmp172 = icmp eq i32 %93, %95
  br i1 %cmp172, label %if.then.173, label %if.else.202

if.then.173:                                      ; preds = %sw.bb.167
  %96 = load i32, i32* @wking_loc, align 4
  %97 = load i32, i32* %target, align 4
  %cmp174 = icmp slt i32 %96, %97
  br i1 %cmp174, label %if.then.175, label %if.else.188

if.then.175:                                      ; preds = %if.then.173
  %98 = load i32, i32* @wking_loc, align 4
  %add176 = add nsw i32 %98, 12
  store i32 %add176, i32* %l, align 4
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.182, %if.then.175
  %99 = load i32, i32* %l, align 4
  %idxprom178 = sext i32 %99 to i64
  %arrayidx179 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom178
  %100 = load i32, i32* %arrayidx179, align 4
  %cmp180 = icmp eq i32 %100, 13
  br i1 %cmp180, label %for.body.181, label %for.end.184

for.body.181:                                     ; preds = %for.cond.177
  br label %for.inc.182

for.inc.182:                                      ; preds = %for.body.181
  %101 = load i32, i32* %l, align 4
  %add183 = add nsw i32 %101, 12
  store i32 %add183, i32* %l, align 4
  br label %for.cond.177

for.end.184:                                      ; preds = %for.cond.177
  %102 = load i32, i32* %l, align 4
  %103 = load i32, i32* %target, align 4
  %cmp185 = icmp eq i32 %102, %103
  br i1 %cmp185, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %for.end.184
  store i32 1, i32* %retval
  br label %return

if.end.187:                                       ; preds = %for.end.184
  br label %if.end.201

if.else.188:                                      ; preds = %if.then.173
  %104 = load i32, i32* @wking_loc, align 4
  %sub189 = sub nsw i32 %104, 12
  store i32 %sub189, i32* %l, align 4
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.195, %if.else.188
  %105 = load i32, i32* %l, align 4
  %idxprom191 = sext i32 %105 to i64
  %arrayidx192 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom191
  %106 = load i32, i32* %arrayidx192, align 4
  %cmp193 = icmp eq i32 %106, 13
  br i1 %cmp193, label %for.body.194, label %for.end.197

for.body.194:                                     ; preds = %for.cond.190
  br label %for.inc.195

for.inc.195:                                      ; preds = %for.body.194
  %107 = load i32, i32* %l, align 4
  %sub196 = sub nsw i32 %107, 12
  store i32 %sub196, i32* %l, align 4
  br label %for.cond.190

for.end.197:                                      ; preds = %for.cond.190
  %108 = load i32, i32* %l, align 4
  %109 = load i32, i32* %target, align 4
  %cmp198 = icmp eq i32 %108, %109
  br i1 %cmp198, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %for.end.197
  store i32 1, i32* %retval
  br label %return

if.end.200:                                       ; preds = %for.end.197
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.end.187
  br label %if.end.310

if.else.202:                                      ; preds = %sw.bb.167
  %110 = load i32, i32* %target, align 4
  %idxprom203 = sext i32 %110 to i64
  %arrayidx204 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom203
  %111 = load i32, i32* %arrayidx204, align 4
  %112 = load i32, i32* @wking_loc, align 4
  %idxprom205 = sext i32 %112 to i64
  %arrayidx206 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom205
  %113 = load i32, i32* %arrayidx206, align 4
  %cmp207 = icmp eq i32 %111, %113
  br i1 %cmp207, label %if.then.208, label %if.else.237

if.then.208:                                      ; preds = %if.else.202
  %114 = load i32, i32* @wking_loc, align 4
  %115 = load i32, i32* %target, align 4
  %cmp209 = icmp slt i32 %114, %115
  br i1 %cmp209, label %if.then.210, label %if.else.223

if.then.210:                                      ; preds = %if.then.208
  %116 = load i32, i32* @wking_loc, align 4
  %add211 = add nsw i32 %116, 1
  store i32 %add211, i32* %l, align 4
  br label %for.cond.212

for.cond.212:                                     ; preds = %for.inc.217, %if.then.210
  %117 = load i32, i32* %l, align 4
  %idxprom213 = sext i32 %117 to i64
  %arrayidx214 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom213
  %118 = load i32, i32* %arrayidx214, align 4
  %cmp215 = icmp eq i32 %118, 13
  br i1 %cmp215, label %for.body.216, label %for.end.219

for.body.216:                                     ; preds = %for.cond.212
  br label %for.inc.217

for.inc.217:                                      ; preds = %for.body.216
  %119 = load i32, i32* %l, align 4
  %add218 = add nsw i32 %119, 1
  store i32 %add218, i32* %l, align 4
  br label %for.cond.212

for.end.219:                                      ; preds = %for.cond.212
  %120 = load i32, i32* %l, align 4
  %121 = load i32, i32* %target, align 4
  %cmp220 = icmp eq i32 %120, %121
  br i1 %cmp220, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %for.end.219
  store i32 1, i32* %retval
  br label %return

if.end.222:                                       ; preds = %for.end.219
  br label %if.end.236

if.else.223:                                      ; preds = %if.then.208
  %122 = load i32, i32* @wking_loc, align 4
  %sub224 = sub nsw i32 %122, 1
  store i32 %sub224, i32* %l, align 4
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.230, %if.else.223
  %123 = load i32, i32* %l, align 4
  %idxprom226 = sext i32 %123 to i64
  %arrayidx227 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom226
  %124 = load i32, i32* %arrayidx227, align 4
  %cmp228 = icmp eq i32 %124, 13
  br i1 %cmp228, label %for.body.229, label %for.end.232

for.body.229:                                     ; preds = %for.cond.225
  br label %for.inc.230

for.inc.230:                                      ; preds = %for.body.229
  %125 = load i32, i32* %l, align 4
  %sub231 = sub nsw i32 %125, 1
  store i32 %sub231, i32* %l, align 4
  br label %for.cond.225

for.end.232:                                      ; preds = %for.cond.225
  %126 = load i32, i32* %l, align 4
  %127 = load i32, i32* %target, align 4
  %cmp233 = icmp eq i32 %126, %127
  br i1 %cmp233, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %for.end.232
  store i32 1, i32* %retval
  br label %return

if.end.235:                                       ; preds = %for.end.232
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.end.222
  br label %if.end.309

if.else.237:                                      ; preds = %if.else.202
  %128 = load i32, i32* %target, align 4
  %idxprom238 = sext i32 %128 to i64
  %arrayidx239 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom238
  %129 = load i32, i32* %arrayidx239, align 4
  %130 = load i32, i32* @wking_loc, align 4
  %idxprom240 = sext i32 %130 to i64
  %arrayidx241 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom240
  %131 = load i32, i32* %arrayidx241, align 4
  %cmp242 = icmp eq i32 %129, %131
  br i1 %cmp242, label %if.then.243, label %if.else.272

if.then.243:                                      ; preds = %if.else.237
  %132 = load i32, i32* @wking_loc, align 4
  %133 = load i32, i32* %target, align 4
  %cmp244 = icmp slt i32 %132, %133
  br i1 %cmp244, label %if.then.245, label %if.else.258

if.then.245:                                      ; preds = %if.then.243
  %134 = load i32, i32* @wking_loc, align 4
  %add246 = add nsw i32 %134, 13
  store i32 %add246, i32* %l, align 4
  br label %for.cond.247

for.cond.247:                                     ; preds = %for.inc.252, %if.then.245
  %135 = load i32, i32* %l, align 4
  %idxprom248 = sext i32 %135 to i64
  %arrayidx249 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom248
  %136 = load i32, i32* %arrayidx249, align 4
  %cmp250 = icmp eq i32 %136, 13
  br i1 %cmp250, label %for.body.251, label %for.end.254

for.body.251:                                     ; preds = %for.cond.247
  br label %for.inc.252

for.inc.252:                                      ; preds = %for.body.251
  %137 = load i32, i32* %l, align 4
  %add253 = add nsw i32 %137, 13
  store i32 %add253, i32* %l, align 4
  br label %for.cond.247

for.end.254:                                      ; preds = %for.cond.247
  %138 = load i32, i32* %l, align 4
  %139 = load i32, i32* %target, align 4
  %cmp255 = icmp eq i32 %138, %139
  br i1 %cmp255, label %if.then.256, label %if.end.257

if.then.256:                                      ; preds = %for.end.254
  store i32 1, i32* %retval
  br label %return

if.end.257:                                       ; preds = %for.end.254
  br label %if.end.271

if.else.258:                                      ; preds = %if.then.243
  %140 = load i32, i32* @wking_loc, align 4
  %sub259 = sub nsw i32 %140, 13
  store i32 %sub259, i32* %l, align 4
  br label %for.cond.260

for.cond.260:                                     ; preds = %for.inc.265, %if.else.258
  %141 = load i32, i32* %l, align 4
  %idxprom261 = sext i32 %141 to i64
  %arrayidx262 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom261
  %142 = load i32, i32* %arrayidx262, align 4
  %cmp263 = icmp eq i32 %142, 13
  br i1 %cmp263, label %for.body.264, label %for.end.267

for.body.264:                                     ; preds = %for.cond.260
  br label %for.inc.265

for.inc.265:                                      ; preds = %for.body.264
  %143 = load i32, i32* %l, align 4
  %sub266 = sub nsw i32 %143, 13
  store i32 %sub266, i32* %l, align 4
  br label %for.cond.260

for.end.267:                                      ; preds = %for.cond.260
  %144 = load i32, i32* %l, align 4
  %145 = load i32, i32* %target, align 4
  %cmp268 = icmp eq i32 %144, %145
  br i1 %cmp268, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %for.end.267
  store i32 1, i32* %retval
  br label %return

if.end.270:                                       ; preds = %for.end.267
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %if.end.257
  br label %if.end.308

if.else.272:                                      ; preds = %if.else.237
  %146 = load i32, i32* %target, align 4
  %idxprom273 = sext i32 %146 to i64
  %arrayidx274 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom273
  %147 = load i32, i32* %arrayidx274, align 4
  %148 = load i32, i32* @wking_loc, align 4
  %idxprom275 = sext i32 %148 to i64
  %arrayidx276 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom275
  %149 = load i32, i32* %arrayidx276, align 4
  %cmp277 = icmp eq i32 %147, %149
  br i1 %cmp277, label %if.then.278, label %if.end.307

if.then.278:                                      ; preds = %if.else.272
  %150 = load i32, i32* @wking_loc, align 4
  %151 = load i32, i32* %target, align 4
  %cmp279 = icmp slt i32 %150, %151
  br i1 %cmp279, label %if.then.280, label %if.else.293

if.then.280:                                      ; preds = %if.then.278
  %152 = load i32, i32* @wking_loc, align 4
  %add281 = add nsw i32 %152, 11
  store i32 %add281, i32* %l, align 4
  br label %for.cond.282

for.cond.282:                                     ; preds = %for.inc.287, %if.then.280
  %153 = load i32, i32* %l, align 4
  %idxprom283 = sext i32 %153 to i64
  %arrayidx284 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom283
  %154 = load i32, i32* %arrayidx284, align 4
  %cmp285 = icmp eq i32 %154, 13
  br i1 %cmp285, label %for.body.286, label %for.end.289

for.body.286:                                     ; preds = %for.cond.282
  br label %for.inc.287

for.inc.287:                                      ; preds = %for.body.286
  %155 = load i32, i32* %l, align 4
  %add288 = add nsw i32 %155, 11
  store i32 %add288, i32* %l, align 4
  br label %for.cond.282

for.end.289:                                      ; preds = %for.cond.282
  %156 = load i32, i32* %l, align 4
  %157 = load i32, i32* %target, align 4
  %cmp290 = icmp eq i32 %156, %157
  br i1 %cmp290, label %if.then.291, label %if.end.292

if.then.291:                                      ; preds = %for.end.289
  store i32 1, i32* %retval
  br label %return

if.end.292:                                       ; preds = %for.end.289
  br label %if.end.306

if.else.293:                                      ; preds = %if.then.278
  %158 = load i32, i32* @wking_loc, align 4
  %sub294 = sub nsw i32 %158, 11
  store i32 %sub294, i32* %l, align 4
  br label %for.cond.295

for.cond.295:                                     ; preds = %for.inc.300, %if.else.293
  %159 = load i32, i32* %l, align 4
  %idxprom296 = sext i32 %159 to i64
  %arrayidx297 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom296
  %160 = load i32, i32* %arrayidx297, align 4
  %cmp298 = icmp eq i32 %160, 13
  br i1 %cmp298, label %for.body.299, label %for.end.302

for.body.299:                                     ; preds = %for.cond.295
  br label %for.inc.300

for.inc.300:                                      ; preds = %for.body.299
  %161 = load i32, i32* %l, align 4
  %sub301 = sub nsw i32 %161, 11
  store i32 %sub301, i32* %l, align 4
  br label %for.cond.295

for.end.302:                                      ; preds = %for.cond.295
  %162 = load i32, i32* %l, align 4
  %163 = load i32, i32* %target, align 4
  %cmp303 = icmp eq i32 %162, %163
  br i1 %cmp303, label %if.then.304, label %if.end.305

if.then.304:                                      ; preds = %for.end.302
  store i32 1, i32* %retval
  br label %return

if.end.305:                                       ; preds = %for.end.302
  br label %if.end.306

if.end.306:                                       ; preds = %if.end.305, %if.end.292
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.306, %if.else.272
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307, %if.end.271
  br label %if.end.309

if.end.309:                                       ; preds = %if.end.308, %if.end.236
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %if.end.201
  br label %sw.epilog

sw.bb.311:                                        ; preds = %if.then.6
  %164 = load i32, i32* %m.addr, align 4
  %idxprom312 = sext i32 %164 to i64
  %165 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx313 = getelementptr inbounds %struct.move_s, %struct.move_s* %165, i64 %idxprom312
  %castled = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx313, i32 0, i32 4
  %166 = load i32, i32* %castled, align 4
  %tobool = icmp ne i32 %166, 0
  br i1 %tobool, label %if.then.314, label %if.end.318

if.then.314:                                      ; preds = %sw.bb.311
  %167 = load i32, i32* @wking_loc, align 4
  %call = call i32 @is_attacked(i32 %167, i32 0)
  %tobool315 = icmp ne i32 %call, 0
  br i1 %tobool315, label %if.then.316, label %if.else.317

if.then.316:                                      ; preds = %if.then.314
  store i32 1, i32* %retval
  br label %return

if.else.317:                                      ; preds = %if.then.314
  store i32 0, i32* %retval
  br label %return

if.end.318:                                       ; preds = %sw.bb.311
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.6, %if.end.318, %if.end.310, %for.end.166, %if.end.153, %if.end.83, %if.end.17
  %168 = load i32, i32* %from, align 4
  %cmp319 = icmp eq i32 %168, 0
  br i1 %cmp319, label %if.then.320, label %if.end.321

if.then.320:                                      ; preds = %sw.epilog
  store i32 0, i32* %retval
  br label %return

if.end.321:                                       ; preds = %sw.epilog
  %169 = load i32, i32* %from, align 4
  %idxprom322 = sext i32 %169 to i64
  %arrayidx323 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom322
  %170 = load i32, i32* %arrayidx323, align 4
  %171 = load i32, i32* @wking_loc, align 4
  %idxprom324 = sext i32 %171 to i64
  %arrayidx325 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom324
  %172 = load i32, i32* %arrayidx325, align 4
  %cmp326 = icmp eq i32 %170, %172
  br i1 %cmp326, label %if.then.327, label %if.else.368

if.then.327:                                      ; preds = %if.end.321
  %173 = load i32, i32* @wking_loc, align 4
  %174 = load i32, i32* %from, align 4
  %cmp328 = icmp sgt i32 %173, %174
  br i1 %cmp328, label %if.then.329, label %if.else.348

if.then.329:                                      ; preds = %if.then.327
  %175 = load i32, i32* @wking_loc, align 4
  %sub330 = sub nsw i32 %175, 1
  store i32 %sub330, i32* %l, align 4
  br label %for.cond.331

for.cond.331:                                     ; preds = %for.inc.336, %if.then.329
  %176 = load i32, i32* %l, align 4
  %idxprom332 = sext i32 %176 to i64
  %arrayidx333 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom332
  %177 = load i32, i32* %arrayidx333, align 4
  %cmp334 = icmp eq i32 %177, 13
  br i1 %cmp334, label %for.body.335, label %for.end.338

for.body.335:                                     ; preds = %for.cond.331
  br label %for.inc.336

for.inc.336:                                      ; preds = %for.body.335
  %178 = load i32, i32* %l, align 4
  %dec337 = add nsw i32 %178, -1
  store i32 %dec337, i32* %l, align 4
  br label %for.cond.331

for.end.338:                                      ; preds = %for.cond.331
  %179 = load i32, i32* %l, align 4
  %idxprom339 = sext i32 %179 to i64
  %arrayidx340 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom339
  %180 = load i32, i32* %arrayidx340, align 4
  %cmp341 = icmp eq i32 %180, 8
  br i1 %cmp341, label %if.then.346, label %lor.lhs.false.342

lor.lhs.false.342:                                ; preds = %for.end.338
  %181 = load i32, i32* %l, align 4
  %idxprom343 = sext i32 %181 to i64
  %arrayidx344 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom343
  %182 = load i32, i32* %arrayidx344, align 4
  %cmp345 = icmp eq i32 %182, 10
  br i1 %cmp345, label %if.then.346, label %if.end.347

if.then.346:                                      ; preds = %lor.lhs.false.342, %for.end.338
  store i32 1, i32* %retval
  br label %return

if.end.347:                                       ; preds = %lor.lhs.false.342
  br label %if.end.367

if.else.348:                                      ; preds = %if.then.327
  %183 = load i32, i32* @wking_loc, align 4
  %add349 = add nsw i32 %183, 1
  store i32 %add349, i32* %l, align 4
  br label %for.cond.350

for.cond.350:                                     ; preds = %for.inc.355, %if.else.348
  %184 = load i32, i32* %l, align 4
  %idxprom351 = sext i32 %184 to i64
  %arrayidx352 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom351
  %185 = load i32, i32* %arrayidx352, align 4
  %cmp353 = icmp eq i32 %185, 13
  br i1 %cmp353, label %for.body.354, label %for.end.357

for.body.354:                                     ; preds = %for.cond.350
  br label %for.inc.355

for.inc.355:                                      ; preds = %for.body.354
  %186 = load i32, i32* %l, align 4
  %inc356 = add nsw i32 %186, 1
  store i32 %inc356, i32* %l, align 4
  br label %for.cond.350

for.end.357:                                      ; preds = %for.cond.350
  %187 = load i32, i32* %l, align 4
  %idxprom358 = sext i32 %187 to i64
  %arrayidx359 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom358
  %188 = load i32, i32* %arrayidx359, align 4
  %cmp360 = icmp eq i32 %188, 8
  br i1 %cmp360, label %if.then.365, label %lor.lhs.false.361

lor.lhs.false.361:                                ; preds = %for.end.357
  %189 = load i32, i32* %l, align 4
  %idxprom362 = sext i32 %189 to i64
  %arrayidx363 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom362
  %190 = load i32, i32* %arrayidx363, align 4
  %cmp364 = icmp eq i32 %190, 10
  br i1 %cmp364, label %if.then.365, label %if.end.366

if.then.365:                                      ; preds = %lor.lhs.false.361, %for.end.357
  store i32 1, i32* %retval
  br label %return

if.end.366:                                       ; preds = %lor.lhs.false.361
  br label %if.end.367

if.end.367:                                       ; preds = %if.end.366, %if.end.347
  br label %if.end.512

if.else.368:                                      ; preds = %if.end.321
  %191 = load i32, i32* %from, align 4
  %idxprom369 = sext i32 %191 to i64
  %arrayidx370 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom369
  %192 = load i32, i32* %arrayidx370, align 4
  %193 = load i32, i32* @wking_loc, align 4
  %idxprom371 = sext i32 %193 to i64
  %arrayidx372 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom371
  %194 = load i32, i32* %arrayidx372, align 4
  %cmp373 = icmp eq i32 %192, %194
  br i1 %cmp373, label %if.then.374, label %if.else.415

if.then.374:                                      ; preds = %if.else.368
  %195 = load i32, i32* @wking_loc, align 4
  %196 = load i32, i32* %from, align 4
  %cmp375 = icmp sgt i32 %195, %196
  br i1 %cmp375, label %if.then.376, label %if.else.395

if.then.376:                                      ; preds = %if.then.374
  %197 = load i32, i32* @wking_loc, align 4
  %sub377 = sub nsw i32 %197, 12
  store i32 %sub377, i32* %l, align 4
  br label %for.cond.378

for.cond.378:                                     ; preds = %for.inc.383, %if.then.376
  %198 = load i32, i32* %l, align 4
  %idxprom379 = sext i32 %198 to i64
  %arrayidx380 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom379
  %199 = load i32, i32* %arrayidx380, align 4
  %cmp381 = icmp eq i32 %199, 13
  br i1 %cmp381, label %for.body.382, label %for.end.385

for.body.382:                                     ; preds = %for.cond.378
  br label %for.inc.383

for.inc.383:                                      ; preds = %for.body.382
  %200 = load i32, i32* %l, align 4
  %sub384 = sub nsw i32 %200, 12
  store i32 %sub384, i32* %l, align 4
  br label %for.cond.378

for.end.385:                                      ; preds = %for.cond.378
  %201 = load i32, i32* %l, align 4
  %idxprom386 = sext i32 %201 to i64
  %arrayidx387 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom386
  %202 = load i32, i32* %arrayidx387, align 4
  %cmp388 = icmp eq i32 %202, 8
  br i1 %cmp388, label %if.then.393, label %lor.lhs.false.389

lor.lhs.false.389:                                ; preds = %for.end.385
  %203 = load i32, i32* %l, align 4
  %idxprom390 = sext i32 %203 to i64
  %arrayidx391 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom390
  %204 = load i32, i32* %arrayidx391, align 4
  %cmp392 = icmp eq i32 %204, 10
  br i1 %cmp392, label %if.then.393, label %if.end.394

if.then.393:                                      ; preds = %lor.lhs.false.389, %for.end.385
  store i32 1, i32* %retval
  br label %return

if.end.394:                                       ; preds = %lor.lhs.false.389
  br label %if.end.414

if.else.395:                                      ; preds = %if.then.374
  %205 = load i32, i32* @wking_loc, align 4
  %add396 = add nsw i32 %205, 12
  store i32 %add396, i32* %l, align 4
  br label %for.cond.397

for.cond.397:                                     ; preds = %for.inc.402, %if.else.395
  %206 = load i32, i32* %l, align 4
  %idxprom398 = sext i32 %206 to i64
  %arrayidx399 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom398
  %207 = load i32, i32* %arrayidx399, align 4
  %cmp400 = icmp eq i32 %207, 13
  br i1 %cmp400, label %for.body.401, label %for.end.404

for.body.401:                                     ; preds = %for.cond.397
  br label %for.inc.402

for.inc.402:                                      ; preds = %for.body.401
  %208 = load i32, i32* %l, align 4
  %add403 = add nsw i32 %208, 12
  store i32 %add403, i32* %l, align 4
  br label %for.cond.397

for.end.404:                                      ; preds = %for.cond.397
  %209 = load i32, i32* %l, align 4
  %idxprom405 = sext i32 %209 to i64
  %arrayidx406 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom405
  %210 = load i32, i32* %arrayidx406, align 4
  %cmp407 = icmp eq i32 %210, 8
  br i1 %cmp407, label %if.then.412, label %lor.lhs.false.408

lor.lhs.false.408:                                ; preds = %for.end.404
  %211 = load i32, i32* %l, align 4
  %idxprom409 = sext i32 %211 to i64
  %arrayidx410 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom409
  %212 = load i32, i32* %arrayidx410, align 4
  %cmp411 = icmp eq i32 %212, 10
  br i1 %cmp411, label %if.then.412, label %if.end.413

if.then.412:                                      ; preds = %lor.lhs.false.408, %for.end.404
  store i32 1, i32* %retval
  br label %return

if.end.413:                                       ; preds = %lor.lhs.false.408
  br label %if.end.414

if.end.414:                                       ; preds = %if.end.413, %if.end.394
  br label %if.end.511

if.else.415:                                      ; preds = %if.else.368
  %213 = load i32, i32* %from, align 4
  %idxprom416 = sext i32 %213 to i64
  %arrayidx417 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom416
  %214 = load i32, i32* %arrayidx417, align 4
  %215 = load i32, i32* @wking_loc, align 4
  %idxprom418 = sext i32 %215 to i64
  %arrayidx419 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom418
  %216 = load i32, i32* %arrayidx419, align 4
  %cmp420 = icmp eq i32 %214, %216
  br i1 %cmp420, label %if.then.421, label %if.else.462

if.then.421:                                      ; preds = %if.else.415
  %217 = load i32, i32* @wking_loc, align 4
  %218 = load i32, i32* %from, align 4
  %cmp422 = icmp sgt i32 %217, %218
  br i1 %cmp422, label %if.then.423, label %if.else.442

if.then.423:                                      ; preds = %if.then.421
  %219 = load i32, i32* @wking_loc, align 4
  %sub424 = sub nsw i32 %219, 13
  store i32 %sub424, i32* %l, align 4
  br label %for.cond.425

for.cond.425:                                     ; preds = %for.inc.430, %if.then.423
  %220 = load i32, i32* %l, align 4
  %idxprom426 = sext i32 %220 to i64
  %arrayidx427 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom426
  %221 = load i32, i32* %arrayidx427, align 4
  %cmp428 = icmp eq i32 %221, 13
  br i1 %cmp428, label %for.body.429, label %for.end.432

for.body.429:                                     ; preds = %for.cond.425
  br label %for.inc.430

for.inc.430:                                      ; preds = %for.body.429
  %222 = load i32, i32* %l, align 4
  %sub431 = sub nsw i32 %222, 13
  store i32 %sub431, i32* %l, align 4
  br label %for.cond.425

for.end.432:                                      ; preds = %for.cond.425
  %223 = load i32, i32* %l, align 4
  %idxprom433 = sext i32 %223 to i64
  %arrayidx434 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom433
  %224 = load i32, i32* %arrayidx434, align 4
  %cmp435 = icmp eq i32 %224, 12
  br i1 %cmp435, label %if.then.440, label %lor.lhs.false.436

lor.lhs.false.436:                                ; preds = %for.end.432
  %225 = load i32, i32* %l, align 4
  %idxprom437 = sext i32 %225 to i64
  %arrayidx438 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom437
  %226 = load i32, i32* %arrayidx438, align 4
  %cmp439 = icmp eq i32 %226, 10
  br i1 %cmp439, label %if.then.440, label %if.end.441

if.then.440:                                      ; preds = %lor.lhs.false.436, %for.end.432
  store i32 1, i32* %retval
  br label %return

if.end.441:                                       ; preds = %lor.lhs.false.436
  br label %if.end.461

if.else.442:                                      ; preds = %if.then.421
  %227 = load i32, i32* @wking_loc, align 4
  %add443 = add nsw i32 %227, 13
  store i32 %add443, i32* %l, align 4
  br label %for.cond.444

for.cond.444:                                     ; preds = %for.inc.449, %if.else.442
  %228 = load i32, i32* %l, align 4
  %idxprom445 = sext i32 %228 to i64
  %arrayidx446 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom445
  %229 = load i32, i32* %arrayidx446, align 4
  %cmp447 = icmp eq i32 %229, 13
  br i1 %cmp447, label %for.body.448, label %for.end.451

for.body.448:                                     ; preds = %for.cond.444
  br label %for.inc.449

for.inc.449:                                      ; preds = %for.body.448
  %230 = load i32, i32* %l, align 4
  %add450 = add nsw i32 %230, 13
  store i32 %add450, i32* %l, align 4
  br label %for.cond.444

for.end.451:                                      ; preds = %for.cond.444
  %231 = load i32, i32* %l, align 4
  %idxprom452 = sext i32 %231 to i64
  %arrayidx453 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom452
  %232 = load i32, i32* %arrayidx453, align 4
  %cmp454 = icmp eq i32 %232, 12
  br i1 %cmp454, label %if.then.459, label %lor.lhs.false.455

lor.lhs.false.455:                                ; preds = %for.end.451
  %233 = load i32, i32* %l, align 4
  %idxprom456 = sext i32 %233 to i64
  %arrayidx457 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom456
  %234 = load i32, i32* %arrayidx457, align 4
  %cmp458 = icmp eq i32 %234, 10
  br i1 %cmp458, label %if.then.459, label %if.end.460

if.then.459:                                      ; preds = %lor.lhs.false.455, %for.end.451
  store i32 1, i32* %retval
  br label %return

if.end.460:                                       ; preds = %lor.lhs.false.455
  br label %if.end.461

if.end.461:                                       ; preds = %if.end.460, %if.end.441
  br label %if.end.510

if.else.462:                                      ; preds = %if.else.415
  %235 = load i32, i32* %from, align 4
  %idxprom463 = sext i32 %235 to i64
  %arrayidx464 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom463
  %236 = load i32, i32* %arrayidx464, align 4
  %237 = load i32, i32* @wking_loc, align 4
  %idxprom465 = sext i32 %237 to i64
  %arrayidx466 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom465
  %238 = load i32, i32* %arrayidx466, align 4
  %cmp467 = icmp eq i32 %236, %238
  br i1 %cmp467, label %if.then.468, label %if.end.509

if.then.468:                                      ; preds = %if.else.462
  %239 = load i32, i32* @wking_loc, align 4
  %240 = load i32, i32* %from, align 4
  %cmp469 = icmp sgt i32 %239, %240
  br i1 %cmp469, label %if.then.470, label %if.else.489

if.then.470:                                      ; preds = %if.then.468
  %241 = load i32, i32* @wking_loc, align 4
  %sub471 = sub nsw i32 %241, 11
  store i32 %sub471, i32* %l, align 4
  br label %for.cond.472

for.cond.472:                                     ; preds = %for.inc.477, %if.then.470
  %242 = load i32, i32* %l, align 4
  %idxprom473 = sext i32 %242 to i64
  %arrayidx474 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom473
  %243 = load i32, i32* %arrayidx474, align 4
  %cmp475 = icmp eq i32 %243, 13
  br i1 %cmp475, label %for.body.476, label %for.end.479

for.body.476:                                     ; preds = %for.cond.472
  br label %for.inc.477

for.inc.477:                                      ; preds = %for.body.476
  %244 = load i32, i32* %l, align 4
  %sub478 = sub nsw i32 %244, 11
  store i32 %sub478, i32* %l, align 4
  br label %for.cond.472

for.end.479:                                      ; preds = %for.cond.472
  %245 = load i32, i32* %l, align 4
  %idxprom480 = sext i32 %245 to i64
  %arrayidx481 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom480
  %246 = load i32, i32* %arrayidx481, align 4
  %cmp482 = icmp eq i32 %246, 12
  br i1 %cmp482, label %if.then.487, label %lor.lhs.false.483

lor.lhs.false.483:                                ; preds = %for.end.479
  %247 = load i32, i32* %l, align 4
  %idxprom484 = sext i32 %247 to i64
  %arrayidx485 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom484
  %248 = load i32, i32* %arrayidx485, align 4
  %cmp486 = icmp eq i32 %248, 10
  br i1 %cmp486, label %if.then.487, label %if.end.488

if.then.487:                                      ; preds = %lor.lhs.false.483, %for.end.479
  store i32 1, i32* %retval
  br label %return

if.end.488:                                       ; preds = %lor.lhs.false.483
  br label %if.end.508

if.else.489:                                      ; preds = %if.then.468
  %249 = load i32, i32* @wking_loc, align 4
  %add490 = add nsw i32 %249, 11
  store i32 %add490, i32* %l, align 4
  br label %for.cond.491

for.cond.491:                                     ; preds = %for.inc.496, %if.else.489
  %250 = load i32, i32* %l, align 4
  %idxprom492 = sext i32 %250 to i64
  %arrayidx493 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom492
  %251 = load i32, i32* %arrayidx493, align 4
  %cmp494 = icmp eq i32 %251, 13
  br i1 %cmp494, label %for.body.495, label %for.end.498

for.body.495:                                     ; preds = %for.cond.491
  br label %for.inc.496

for.inc.496:                                      ; preds = %for.body.495
  %252 = load i32, i32* %l, align 4
  %add497 = add nsw i32 %252, 11
  store i32 %add497, i32* %l, align 4
  br label %for.cond.491

for.end.498:                                      ; preds = %for.cond.491
  %253 = load i32, i32* %l, align 4
  %idxprom499 = sext i32 %253 to i64
  %arrayidx500 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom499
  %254 = load i32, i32* %arrayidx500, align 4
  %cmp501 = icmp eq i32 %254, 12
  br i1 %cmp501, label %if.then.506, label %lor.lhs.false.502

lor.lhs.false.502:                                ; preds = %for.end.498
  %255 = load i32, i32* %l, align 4
  %idxprom503 = sext i32 %255 to i64
  %arrayidx504 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom503
  %256 = load i32, i32* %arrayidx504, align 4
  %cmp505 = icmp eq i32 %256, 10
  br i1 %cmp505, label %if.then.506, label %if.end.507

if.then.506:                                      ; preds = %lor.lhs.false.502, %for.end.498
  store i32 1, i32* %retval
  br label %return

if.end.507:                                       ; preds = %lor.lhs.false.502
  br label %if.end.508

if.end.508:                                       ; preds = %if.end.507, %if.end.488
  br label %if.end.509

if.end.509:                                       ; preds = %if.end.508, %if.else.462
  br label %if.end.510

if.end.510:                                       ; preds = %if.end.509, %if.end.461
  br label %if.end.511

if.end.511:                                       ; preds = %if.end.510, %if.end.414
  br label %if.end.512

if.end.512:                                       ; preds = %if.end.511, %if.end.367
  store i32 0, i32* %retval
  br label %return

if.else.513:                                      ; preds = %if.end
  %257 = load i32, i32* %target, align 4
  %idxprom514 = sext i32 %257 to i64
  %arrayidx515 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom514
  %258 = load i32, i32* %arrayidx515, align 4
  switch i32 %258, label %sw.epilog.840 [
    i32 1, label %sw.bb.516
    i32 11, label %sw.bb.528
    i32 7, label %sw.bb.600
    i32 3, label %sw.bb.672
    i32 9, label %sw.bb.685
    i32 5, label %sw.bb.829
  ]

sw.bb.516:                                        ; preds = %if.else.513
  %259 = load i32, i32* %target, align 4
  %add517 = add nsw i32 %259, 11
  %idxprom518 = sext i32 %add517 to i64
  %arrayidx519 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom518
  %260 = load i32, i32* %arrayidx519, align 4
  %cmp520 = icmp eq i32 %260, 6
  br i1 %cmp520, label %if.then.526, label %lor.lhs.false.521

lor.lhs.false.521:                                ; preds = %sw.bb.516
  %261 = load i32, i32* %target, align 4
  %add522 = add nsw i32 %261, 13
  %idxprom523 = sext i32 %add522 to i64
  %arrayidx524 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom523
  %262 = load i32, i32* %arrayidx524, align 4
  %cmp525 = icmp eq i32 %262, 6
  br i1 %cmp525, label %if.then.526, label %if.end.527

if.then.526:                                      ; preds = %lor.lhs.false.521, %sw.bb.516
  store i32 1, i32* %retval
  br label %return

if.end.527:                                       ; preds = %lor.lhs.false.521
  br label %sw.epilog.840

sw.bb.528:                                        ; preds = %if.else.513
  %263 = load i32, i32* %target, align 4
  %idxprom529 = sext i32 %263 to i64
  %arrayidx530 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom529
  %264 = load i32, i32* %arrayidx530, align 4
  %265 = load i32, i32* @bking_loc, align 4
  %idxprom531 = sext i32 %265 to i64
  %arrayidx532 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom531
  %266 = load i32, i32* %arrayidx532, align 4
  %cmp533 = icmp eq i32 %264, %266
  br i1 %cmp533, label %if.then.534, label %if.else.563

if.then.534:                                      ; preds = %sw.bb.528
  %267 = load i32, i32* @bking_loc, align 4
  %268 = load i32, i32* %target, align 4
  %cmp535 = icmp slt i32 %267, %268
  br i1 %cmp535, label %if.then.536, label %if.else.549

if.then.536:                                      ; preds = %if.then.534
  %269 = load i32, i32* @bking_loc, align 4
  %add537 = add nsw i32 %269, 13
  store i32 %add537, i32* %l, align 4
  br label %for.cond.538

for.cond.538:                                     ; preds = %for.inc.543, %if.then.536
  %270 = load i32, i32* %l, align 4
  %idxprom539 = sext i32 %270 to i64
  %arrayidx540 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom539
  %271 = load i32, i32* %arrayidx540, align 4
  %cmp541 = icmp eq i32 %271, 13
  br i1 %cmp541, label %for.body.542, label %for.end.545

for.body.542:                                     ; preds = %for.cond.538
  br label %for.inc.543

for.inc.543:                                      ; preds = %for.body.542
  %272 = load i32, i32* %l, align 4
  %add544 = add nsw i32 %272, 13
  store i32 %add544, i32* %l, align 4
  br label %for.cond.538

for.end.545:                                      ; preds = %for.cond.538
  %273 = load i32, i32* %l, align 4
  %274 = load i32, i32* %target, align 4
  %cmp546 = icmp eq i32 %273, %274
  br i1 %cmp546, label %if.then.547, label %if.end.548

if.then.547:                                      ; preds = %for.end.545
  store i32 1, i32* %retval
  br label %return

if.end.548:                                       ; preds = %for.end.545
  br label %if.end.562

if.else.549:                                      ; preds = %if.then.534
  %275 = load i32, i32* @bking_loc, align 4
  %sub550 = sub nsw i32 %275, 13
  store i32 %sub550, i32* %l, align 4
  br label %for.cond.551

for.cond.551:                                     ; preds = %for.inc.556, %if.else.549
  %276 = load i32, i32* %l, align 4
  %idxprom552 = sext i32 %276 to i64
  %arrayidx553 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom552
  %277 = load i32, i32* %arrayidx553, align 4
  %cmp554 = icmp eq i32 %277, 13
  br i1 %cmp554, label %for.body.555, label %for.end.558

for.body.555:                                     ; preds = %for.cond.551
  br label %for.inc.556

for.inc.556:                                      ; preds = %for.body.555
  %278 = load i32, i32* %l, align 4
  %sub557 = sub nsw i32 %278, 13
  store i32 %sub557, i32* %l, align 4
  br label %for.cond.551

for.end.558:                                      ; preds = %for.cond.551
  %279 = load i32, i32* %l, align 4
  %280 = load i32, i32* %target, align 4
  %cmp559 = icmp eq i32 %279, %280
  br i1 %cmp559, label %if.then.560, label %if.end.561

if.then.560:                                      ; preds = %for.end.558
  store i32 1, i32* %retval
  br label %return

if.end.561:                                       ; preds = %for.end.558
  br label %if.end.562

if.end.562:                                       ; preds = %if.end.561, %if.end.548
  br label %if.end.599

if.else.563:                                      ; preds = %sw.bb.528
  %281 = load i32, i32* %target, align 4
  %idxprom564 = sext i32 %281 to i64
  %arrayidx565 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom564
  %282 = load i32, i32* %arrayidx565, align 4
  %283 = load i32, i32* @bking_loc, align 4
  %idxprom566 = sext i32 %283 to i64
  %arrayidx567 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom566
  %284 = load i32, i32* %arrayidx567, align 4
  %cmp568 = icmp eq i32 %282, %284
  br i1 %cmp568, label %if.then.569, label %if.end.598

if.then.569:                                      ; preds = %if.else.563
  %285 = load i32, i32* @bking_loc, align 4
  %286 = load i32, i32* %target, align 4
  %cmp570 = icmp slt i32 %285, %286
  br i1 %cmp570, label %if.then.571, label %if.else.584

if.then.571:                                      ; preds = %if.then.569
  %287 = load i32, i32* @bking_loc, align 4
  %add572 = add nsw i32 %287, 11
  store i32 %add572, i32* %l, align 4
  br label %for.cond.573

for.cond.573:                                     ; preds = %for.inc.578, %if.then.571
  %288 = load i32, i32* %l, align 4
  %idxprom574 = sext i32 %288 to i64
  %arrayidx575 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom574
  %289 = load i32, i32* %arrayidx575, align 4
  %cmp576 = icmp eq i32 %289, 13
  br i1 %cmp576, label %for.body.577, label %for.end.580

for.body.577:                                     ; preds = %for.cond.573
  br label %for.inc.578

for.inc.578:                                      ; preds = %for.body.577
  %290 = load i32, i32* %l, align 4
  %add579 = add nsw i32 %290, 11
  store i32 %add579, i32* %l, align 4
  br label %for.cond.573

for.end.580:                                      ; preds = %for.cond.573
  %291 = load i32, i32* %l, align 4
  %292 = load i32, i32* %target, align 4
  %cmp581 = icmp eq i32 %291, %292
  br i1 %cmp581, label %if.then.582, label %if.end.583

if.then.582:                                      ; preds = %for.end.580
  store i32 1, i32* %retval
  br label %return

if.end.583:                                       ; preds = %for.end.580
  br label %if.end.597

if.else.584:                                      ; preds = %if.then.569
  %293 = load i32, i32* @bking_loc, align 4
  %sub585 = sub nsw i32 %293, 11
  store i32 %sub585, i32* %l, align 4
  br label %for.cond.586

for.cond.586:                                     ; preds = %for.inc.591, %if.else.584
  %294 = load i32, i32* %l, align 4
  %idxprom587 = sext i32 %294 to i64
  %arrayidx588 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom587
  %295 = load i32, i32* %arrayidx588, align 4
  %cmp589 = icmp eq i32 %295, 13
  br i1 %cmp589, label %for.body.590, label %for.end.593

for.body.590:                                     ; preds = %for.cond.586
  br label %for.inc.591

for.inc.591:                                      ; preds = %for.body.590
  %296 = load i32, i32* %l, align 4
  %sub592 = sub nsw i32 %296, 11
  store i32 %sub592, i32* %l, align 4
  br label %for.cond.586

for.end.593:                                      ; preds = %for.cond.586
  %297 = load i32, i32* %l, align 4
  %298 = load i32, i32* %target, align 4
  %cmp594 = icmp eq i32 %297, %298
  br i1 %cmp594, label %if.then.595, label %if.end.596

if.then.595:                                      ; preds = %for.end.593
  store i32 1, i32* %retval
  br label %return

if.end.596:                                       ; preds = %for.end.593
  br label %if.end.597

if.end.597:                                       ; preds = %if.end.596, %if.end.583
  br label %if.end.598

if.end.598:                                       ; preds = %if.end.597, %if.else.563
  br label %if.end.599

if.end.599:                                       ; preds = %if.end.598, %if.end.562
  br label %sw.epilog.840

sw.bb.600:                                        ; preds = %if.else.513
  %299 = load i32, i32* %target, align 4
  %idxprom601 = sext i32 %299 to i64
  %arrayidx602 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom601
  %300 = load i32, i32* %arrayidx602, align 4
  %301 = load i32, i32* @bking_loc, align 4
  %idxprom603 = sext i32 %301 to i64
  %arrayidx604 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom603
  %302 = load i32, i32* %arrayidx604, align 4
  %cmp605 = icmp eq i32 %300, %302
  br i1 %cmp605, label %if.then.606, label %if.else.635

if.then.606:                                      ; preds = %sw.bb.600
  %303 = load i32, i32* @bking_loc, align 4
  %304 = load i32, i32* %target, align 4
  %cmp607 = icmp slt i32 %303, %304
  br i1 %cmp607, label %if.then.608, label %if.else.621

if.then.608:                                      ; preds = %if.then.606
  %305 = load i32, i32* @bking_loc, align 4
  %add609 = add nsw i32 %305, 12
  store i32 %add609, i32* %l, align 4
  br label %for.cond.610

for.cond.610:                                     ; preds = %for.inc.615, %if.then.608
  %306 = load i32, i32* %l, align 4
  %idxprom611 = sext i32 %306 to i64
  %arrayidx612 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom611
  %307 = load i32, i32* %arrayidx612, align 4
  %cmp613 = icmp eq i32 %307, 13
  br i1 %cmp613, label %for.body.614, label %for.end.617

for.body.614:                                     ; preds = %for.cond.610
  br label %for.inc.615

for.inc.615:                                      ; preds = %for.body.614
  %308 = load i32, i32* %l, align 4
  %add616 = add nsw i32 %308, 12
  store i32 %add616, i32* %l, align 4
  br label %for.cond.610

for.end.617:                                      ; preds = %for.cond.610
  %309 = load i32, i32* %l, align 4
  %310 = load i32, i32* %target, align 4
  %cmp618 = icmp eq i32 %309, %310
  br i1 %cmp618, label %if.then.619, label %if.end.620

if.then.619:                                      ; preds = %for.end.617
  store i32 1, i32* %retval
  br label %return

if.end.620:                                       ; preds = %for.end.617
  br label %if.end.634

if.else.621:                                      ; preds = %if.then.606
  %311 = load i32, i32* @bking_loc, align 4
  %sub622 = sub nsw i32 %311, 12
  store i32 %sub622, i32* %l, align 4
  br label %for.cond.623

for.cond.623:                                     ; preds = %for.inc.628, %if.else.621
  %312 = load i32, i32* %l, align 4
  %idxprom624 = sext i32 %312 to i64
  %arrayidx625 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom624
  %313 = load i32, i32* %arrayidx625, align 4
  %cmp626 = icmp eq i32 %313, 13
  br i1 %cmp626, label %for.body.627, label %for.end.630

for.body.627:                                     ; preds = %for.cond.623
  br label %for.inc.628

for.inc.628:                                      ; preds = %for.body.627
  %314 = load i32, i32* %l, align 4
  %sub629 = sub nsw i32 %314, 12
  store i32 %sub629, i32* %l, align 4
  br label %for.cond.623

for.end.630:                                      ; preds = %for.cond.623
  %315 = load i32, i32* %l, align 4
  %316 = load i32, i32* %target, align 4
  %cmp631 = icmp eq i32 %315, %316
  br i1 %cmp631, label %if.then.632, label %if.end.633

if.then.632:                                      ; preds = %for.end.630
  store i32 1, i32* %retval
  br label %return

if.end.633:                                       ; preds = %for.end.630
  br label %if.end.634

if.end.634:                                       ; preds = %if.end.633, %if.end.620
  br label %if.end.671

if.else.635:                                      ; preds = %sw.bb.600
  %317 = load i32, i32* %target, align 4
  %idxprom636 = sext i32 %317 to i64
  %arrayidx637 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom636
  %318 = load i32, i32* %arrayidx637, align 4
  %319 = load i32, i32* @bking_loc, align 4
  %idxprom638 = sext i32 %319 to i64
  %arrayidx639 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom638
  %320 = load i32, i32* %arrayidx639, align 4
  %cmp640 = icmp eq i32 %318, %320
  br i1 %cmp640, label %if.then.641, label %if.end.670

if.then.641:                                      ; preds = %if.else.635
  %321 = load i32, i32* @bking_loc, align 4
  %322 = load i32, i32* %target, align 4
  %cmp642 = icmp slt i32 %321, %322
  br i1 %cmp642, label %if.then.643, label %if.else.656

if.then.643:                                      ; preds = %if.then.641
  %323 = load i32, i32* @bking_loc, align 4
  %add644 = add nsw i32 %323, 1
  store i32 %add644, i32* %l, align 4
  br label %for.cond.645

for.cond.645:                                     ; preds = %for.inc.650, %if.then.643
  %324 = load i32, i32* %l, align 4
  %idxprom646 = sext i32 %324 to i64
  %arrayidx647 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom646
  %325 = load i32, i32* %arrayidx647, align 4
  %cmp648 = icmp eq i32 %325, 13
  br i1 %cmp648, label %for.body.649, label %for.end.652

for.body.649:                                     ; preds = %for.cond.645
  br label %for.inc.650

for.inc.650:                                      ; preds = %for.body.649
  %326 = load i32, i32* %l, align 4
  %inc651 = add nsw i32 %326, 1
  store i32 %inc651, i32* %l, align 4
  br label %for.cond.645

for.end.652:                                      ; preds = %for.cond.645
  %327 = load i32, i32* %l, align 4
  %328 = load i32, i32* %target, align 4
  %cmp653 = icmp eq i32 %327, %328
  br i1 %cmp653, label %if.then.654, label %if.end.655

if.then.654:                                      ; preds = %for.end.652
  store i32 1, i32* %retval
  br label %return

if.end.655:                                       ; preds = %for.end.652
  br label %if.end.669

if.else.656:                                      ; preds = %if.then.641
  %329 = load i32, i32* @bking_loc, align 4
  %sub657 = sub nsw i32 %329, 1
  store i32 %sub657, i32* %l, align 4
  br label %for.cond.658

for.cond.658:                                     ; preds = %for.inc.663, %if.else.656
  %330 = load i32, i32* %l, align 4
  %idxprom659 = sext i32 %330 to i64
  %arrayidx660 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom659
  %331 = load i32, i32* %arrayidx660, align 4
  %cmp661 = icmp eq i32 %331, 13
  br i1 %cmp661, label %for.body.662, label %for.end.665

for.body.662:                                     ; preds = %for.cond.658
  br label %for.inc.663

for.inc.663:                                      ; preds = %for.body.662
  %332 = load i32, i32* %l, align 4
  %dec664 = add nsw i32 %332, -1
  store i32 %dec664, i32* %l, align 4
  br label %for.cond.658

for.end.665:                                      ; preds = %for.cond.658
  %333 = load i32, i32* %l, align 4
  %334 = load i32, i32* %target, align 4
  %cmp666 = icmp eq i32 %333, %334
  br i1 %cmp666, label %if.then.667, label %if.end.668

if.then.667:                                      ; preds = %for.end.665
  store i32 1, i32* %retval
  br label %return

if.end.668:                                       ; preds = %for.end.665
  br label %if.end.669

if.end.669:                                       ; preds = %if.end.668, %if.end.655
  br label %if.end.670

if.end.670:                                       ; preds = %if.end.669, %if.else.635
  br label %if.end.671

if.end.671:                                       ; preds = %if.end.670, %if.end.634
  br label %sw.epilog.840

sw.bb.672:                                        ; preds = %if.else.513
  store i32 0, i32* %l, align 4
  br label %for.cond.673

for.cond.673:                                     ; preds = %for.inc.682, %sw.bb.672
  %335 = load i32, i32* %l, align 4
  %cmp674 = icmp slt i32 %335, 8
  br i1 %cmp674, label %for.body.675, label %for.end.684

for.body.675:                                     ; preds = %for.cond.673
  %336 = load i32, i32* @bking_loc, align 4
  %337 = load i32, i32* %l, align 4
  %idxprom676 = sext i32 %337 to i64
  %arrayidx677 = getelementptr inbounds [8 x i32], [8 x i32]* @f_in_check.knight_o, i32 0, i64 %idxprom676
  %338 = load i32, i32* %arrayidx677, align 4
  %add678 = add nsw i32 %336, %338
  %339 = load i32, i32* %target, align 4
  %cmp679 = icmp eq i32 %add678, %339
  br i1 %cmp679, label %if.then.680, label %if.end.681

if.then.680:                                      ; preds = %for.body.675
  store i32 1, i32* %retval
  br label %return

if.end.681:                                       ; preds = %for.body.675
  br label %for.inc.682

for.inc.682:                                      ; preds = %if.end.681
  %340 = load i32, i32* %l, align 4
  %inc683 = add nsw i32 %340, 1
  store i32 %inc683, i32* %l, align 4
  br label %for.cond.673

for.end.684:                                      ; preds = %for.cond.673
  br label %sw.epilog.840

sw.bb.685:                                        ; preds = %if.else.513
  %341 = load i32, i32* %target, align 4
  %idxprom686 = sext i32 %341 to i64
  %arrayidx687 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom686
  %342 = load i32, i32* %arrayidx687, align 4
  %343 = load i32, i32* @bking_loc, align 4
  %idxprom688 = sext i32 %343 to i64
  %arrayidx689 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom688
  %344 = load i32, i32* %arrayidx689, align 4
  %cmp690 = icmp eq i32 %342, %344
  br i1 %cmp690, label %if.then.691, label %if.else.720

if.then.691:                                      ; preds = %sw.bb.685
  %345 = load i32, i32* @bking_loc, align 4
  %346 = load i32, i32* %target, align 4
  %cmp692 = icmp slt i32 %345, %346
  br i1 %cmp692, label %if.then.693, label %if.else.706

if.then.693:                                      ; preds = %if.then.691
  %347 = load i32, i32* @bking_loc, align 4
  %add694 = add nsw i32 %347, 12
  store i32 %add694, i32* %l, align 4
  br label %for.cond.695

for.cond.695:                                     ; preds = %for.inc.700, %if.then.693
  %348 = load i32, i32* %l, align 4
  %idxprom696 = sext i32 %348 to i64
  %arrayidx697 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom696
  %349 = load i32, i32* %arrayidx697, align 4
  %cmp698 = icmp eq i32 %349, 13
  br i1 %cmp698, label %for.body.699, label %for.end.702

for.body.699:                                     ; preds = %for.cond.695
  br label %for.inc.700

for.inc.700:                                      ; preds = %for.body.699
  %350 = load i32, i32* %l, align 4
  %add701 = add nsw i32 %350, 12
  store i32 %add701, i32* %l, align 4
  br label %for.cond.695

for.end.702:                                      ; preds = %for.cond.695
  %351 = load i32, i32* %l, align 4
  %352 = load i32, i32* %target, align 4
  %cmp703 = icmp eq i32 %351, %352
  br i1 %cmp703, label %if.then.704, label %if.end.705

if.then.704:                                      ; preds = %for.end.702
  store i32 1, i32* %retval
  br label %return

if.end.705:                                       ; preds = %for.end.702
  br label %if.end.719

if.else.706:                                      ; preds = %if.then.691
  %353 = load i32, i32* @bking_loc, align 4
  %sub707 = sub nsw i32 %353, 12
  store i32 %sub707, i32* %l, align 4
  br label %for.cond.708

for.cond.708:                                     ; preds = %for.inc.713, %if.else.706
  %354 = load i32, i32* %l, align 4
  %idxprom709 = sext i32 %354 to i64
  %arrayidx710 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom709
  %355 = load i32, i32* %arrayidx710, align 4
  %cmp711 = icmp eq i32 %355, 13
  br i1 %cmp711, label %for.body.712, label %for.end.715

for.body.712:                                     ; preds = %for.cond.708
  br label %for.inc.713

for.inc.713:                                      ; preds = %for.body.712
  %356 = load i32, i32* %l, align 4
  %sub714 = sub nsw i32 %356, 12
  store i32 %sub714, i32* %l, align 4
  br label %for.cond.708

for.end.715:                                      ; preds = %for.cond.708
  %357 = load i32, i32* %l, align 4
  %358 = load i32, i32* %target, align 4
  %cmp716 = icmp eq i32 %357, %358
  br i1 %cmp716, label %if.then.717, label %if.end.718

if.then.717:                                      ; preds = %for.end.715
  store i32 1, i32* %retval
  br label %return

if.end.718:                                       ; preds = %for.end.715
  br label %if.end.719

if.end.719:                                       ; preds = %if.end.718, %if.end.705
  br label %if.end.828

if.else.720:                                      ; preds = %sw.bb.685
  %359 = load i32, i32* %target, align 4
  %idxprom721 = sext i32 %359 to i64
  %arrayidx722 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom721
  %360 = load i32, i32* %arrayidx722, align 4
  %361 = load i32, i32* @bking_loc, align 4
  %idxprom723 = sext i32 %361 to i64
  %arrayidx724 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom723
  %362 = load i32, i32* %arrayidx724, align 4
  %cmp725 = icmp eq i32 %360, %362
  br i1 %cmp725, label %if.then.726, label %if.else.755

if.then.726:                                      ; preds = %if.else.720
  %363 = load i32, i32* @bking_loc, align 4
  %364 = load i32, i32* %target, align 4
  %cmp727 = icmp slt i32 %363, %364
  br i1 %cmp727, label %if.then.728, label %if.else.741

if.then.728:                                      ; preds = %if.then.726
  %365 = load i32, i32* @bking_loc, align 4
  %add729 = add nsw i32 %365, 1
  store i32 %add729, i32* %l, align 4
  br label %for.cond.730

for.cond.730:                                     ; preds = %for.inc.735, %if.then.728
  %366 = load i32, i32* %l, align 4
  %idxprom731 = sext i32 %366 to i64
  %arrayidx732 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom731
  %367 = load i32, i32* %arrayidx732, align 4
  %cmp733 = icmp eq i32 %367, 13
  br i1 %cmp733, label %for.body.734, label %for.end.737

for.body.734:                                     ; preds = %for.cond.730
  br label %for.inc.735

for.inc.735:                                      ; preds = %for.body.734
  %368 = load i32, i32* %l, align 4
  %add736 = add nsw i32 %368, 1
  store i32 %add736, i32* %l, align 4
  br label %for.cond.730

for.end.737:                                      ; preds = %for.cond.730
  %369 = load i32, i32* %l, align 4
  %370 = load i32, i32* %target, align 4
  %cmp738 = icmp eq i32 %369, %370
  br i1 %cmp738, label %if.then.739, label %if.end.740

if.then.739:                                      ; preds = %for.end.737
  store i32 1, i32* %retval
  br label %return

if.end.740:                                       ; preds = %for.end.737
  br label %if.end.754

if.else.741:                                      ; preds = %if.then.726
  %371 = load i32, i32* @bking_loc, align 4
  %sub742 = sub nsw i32 %371, 1
  store i32 %sub742, i32* %l, align 4
  br label %for.cond.743

for.cond.743:                                     ; preds = %for.inc.748, %if.else.741
  %372 = load i32, i32* %l, align 4
  %idxprom744 = sext i32 %372 to i64
  %arrayidx745 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom744
  %373 = load i32, i32* %arrayidx745, align 4
  %cmp746 = icmp eq i32 %373, 13
  br i1 %cmp746, label %for.body.747, label %for.end.750

for.body.747:                                     ; preds = %for.cond.743
  br label %for.inc.748

for.inc.748:                                      ; preds = %for.body.747
  %374 = load i32, i32* %l, align 4
  %sub749 = sub nsw i32 %374, 1
  store i32 %sub749, i32* %l, align 4
  br label %for.cond.743

for.end.750:                                      ; preds = %for.cond.743
  %375 = load i32, i32* %l, align 4
  %376 = load i32, i32* %target, align 4
  %cmp751 = icmp eq i32 %375, %376
  br i1 %cmp751, label %if.then.752, label %if.end.753

if.then.752:                                      ; preds = %for.end.750
  store i32 1, i32* %retval
  br label %return

if.end.753:                                       ; preds = %for.end.750
  br label %if.end.754

if.end.754:                                       ; preds = %if.end.753, %if.end.740
  br label %if.end.827

if.else.755:                                      ; preds = %if.else.720
  %377 = load i32, i32* %target, align 4
  %idxprom756 = sext i32 %377 to i64
  %arrayidx757 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom756
  %378 = load i32, i32* %arrayidx757, align 4
  %379 = load i32, i32* @bking_loc, align 4
  %idxprom758 = sext i32 %379 to i64
  %arrayidx759 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom758
  %380 = load i32, i32* %arrayidx759, align 4
  %cmp760 = icmp eq i32 %378, %380
  br i1 %cmp760, label %if.then.761, label %if.else.790

if.then.761:                                      ; preds = %if.else.755
  %381 = load i32, i32* @bking_loc, align 4
  %382 = load i32, i32* %target, align 4
  %cmp762 = icmp slt i32 %381, %382
  br i1 %cmp762, label %if.then.763, label %if.else.776

if.then.763:                                      ; preds = %if.then.761
  %383 = load i32, i32* @bking_loc, align 4
  %add764 = add nsw i32 %383, 13
  store i32 %add764, i32* %l, align 4
  br label %for.cond.765

for.cond.765:                                     ; preds = %for.inc.770, %if.then.763
  %384 = load i32, i32* %l, align 4
  %idxprom766 = sext i32 %384 to i64
  %arrayidx767 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom766
  %385 = load i32, i32* %arrayidx767, align 4
  %cmp768 = icmp eq i32 %385, 13
  br i1 %cmp768, label %for.body.769, label %for.end.772

for.body.769:                                     ; preds = %for.cond.765
  br label %for.inc.770

for.inc.770:                                      ; preds = %for.body.769
  %386 = load i32, i32* %l, align 4
  %add771 = add nsw i32 %386, 13
  store i32 %add771, i32* %l, align 4
  br label %for.cond.765

for.end.772:                                      ; preds = %for.cond.765
  %387 = load i32, i32* %l, align 4
  %388 = load i32, i32* %target, align 4
  %cmp773 = icmp eq i32 %387, %388
  br i1 %cmp773, label %if.then.774, label %if.end.775

if.then.774:                                      ; preds = %for.end.772
  store i32 1, i32* %retval
  br label %return

if.end.775:                                       ; preds = %for.end.772
  br label %if.end.789

if.else.776:                                      ; preds = %if.then.761
  %389 = load i32, i32* @bking_loc, align 4
  %sub777 = sub nsw i32 %389, 13
  store i32 %sub777, i32* %l, align 4
  br label %for.cond.778

for.cond.778:                                     ; preds = %for.inc.783, %if.else.776
  %390 = load i32, i32* %l, align 4
  %idxprom779 = sext i32 %390 to i64
  %arrayidx780 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom779
  %391 = load i32, i32* %arrayidx780, align 4
  %cmp781 = icmp eq i32 %391, 13
  br i1 %cmp781, label %for.body.782, label %for.end.785

for.body.782:                                     ; preds = %for.cond.778
  br label %for.inc.783

for.inc.783:                                      ; preds = %for.body.782
  %392 = load i32, i32* %l, align 4
  %sub784 = sub nsw i32 %392, 13
  store i32 %sub784, i32* %l, align 4
  br label %for.cond.778

for.end.785:                                      ; preds = %for.cond.778
  %393 = load i32, i32* %l, align 4
  %394 = load i32, i32* %target, align 4
  %cmp786 = icmp eq i32 %393, %394
  br i1 %cmp786, label %if.then.787, label %if.end.788

if.then.787:                                      ; preds = %for.end.785
  store i32 1, i32* %retval
  br label %return

if.end.788:                                       ; preds = %for.end.785
  br label %if.end.789

if.end.789:                                       ; preds = %if.end.788, %if.end.775
  br label %if.end.826

if.else.790:                                      ; preds = %if.else.755
  %395 = load i32, i32* %target, align 4
  %idxprom791 = sext i32 %395 to i64
  %arrayidx792 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom791
  %396 = load i32, i32* %arrayidx792, align 4
  %397 = load i32, i32* @bking_loc, align 4
  %idxprom793 = sext i32 %397 to i64
  %arrayidx794 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom793
  %398 = load i32, i32* %arrayidx794, align 4
  %cmp795 = icmp eq i32 %396, %398
  br i1 %cmp795, label %if.then.796, label %if.end.825

if.then.796:                                      ; preds = %if.else.790
  %399 = load i32, i32* @bking_loc, align 4
  %400 = load i32, i32* %target, align 4
  %cmp797 = icmp slt i32 %399, %400
  br i1 %cmp797, label %if.then.798, label %if.else.811

if.then.798:                                      ; preds = %if.then.796
  %401 = load i32, i32* @bking_loc, align 4
  %add799 = add nsw i32 %401, 11
  store i32 %add799, i32* %l, align 4
  br label %for.cond.800

for.cond.800:                                     ; preds = %for.inc.805, %if.then.798
  %402 = load i32, i32* %l, align 4
  %idxprom801 = sext i32 %402 to i64
  %arrayidx802 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom801
  %403 = load i32, i32* %arrayidx802, align 4
  %cmp803 = icmp eq i32 %403, 13
  br i1 %cmp803, label %for.body.804, label %for.end.807

for.body.804:                                     ; preds = %for.cond.800
  br label %for.inc.805

for.inc.805:                                      ; preds = %for.body.804
  %404 = load i32, i32* %l, align 4
  %add806 = add nsw i32 %404, 11
  store i32 %add806, i32* %l, align 4
  br label %for.cond.800

for.end.807:                                      ; preds = %for.cond.800
  %405 = load i32, i32* %l, align 4
  %406 = load i32, i32* %target, align 4
  %cmp808 = icmp eq i32 %405, %406
  br i1 %cmp808, label %if.then.809, label %if.end.810

if.then.809:                                      ; preds = %for.end.807
  store i32 1, i32* %retval
  br label %return

if.end.810:                                       ; preds = %for.end.807
  br label %if.end.824

if.else.811:                                      ; preds = %if.then.796
  %407 = load i32, i32* @bking_loc, align 4
  %sub812 = sub nsw i32 %407, 11
  store i32 %sub812, i32* %l, align 4
  br label %for.cond.813

for.cond.813:                                     ; preds = %for.inc.818, %if.else.811
  %408 = load i32, i32* %l, align 4
  %idxprom814 = sext i32 %408 to i64
  %arrayidx815 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom814
  %409 = load i32, i32* %arrayidx815, align 4
  %cmp816 = icmp eq i32 %409, 13
  br i1 %cmp816, label %for.body.817, label %for.end.820

for.body.817:                                     ; preds = %for.cond.813
  br label %for.inc.818

for.inc.818:                                      ; preds = %for.body.817
  %410 = load i32, i32* %l, align 4
  %sub819 = sub nsw i32 %410, 11
  store i32 %sub819, i32* %l, align 4
  br label %for.cond.813

for.end.820:                                      ; preds = %for.cond.813
  %411 = load i32, i32* %l, align 4
  %412 = load i32, i32* %target, align 4
  %cmp821 = icmp eq i32 %411, %412
  br i1 %cmp821, label %if.then.822, label %if.end.823

if.then.822:                                      ; preds = %for.end.820
  store i32 1, i32* %retval
  br label %return

if.end.823:                                       ; preds = %for.end.820
  br label %if.end.824

if.end.824:                                       ; preds = %if.end.823, %if.end.810
  br label %if.end.825

if.end.825:                                       ; preds = %if.end.824, %if.else.790
  br label %if.end.826

if.end.826:                                       ; preds = %if.end.825, %if.end.789
  br label %if.end.827

if.end.827:                                       ; preds = %if.end.826, %if.end.754
  br label %if.end.828

if.end.828:                                       ; preds = %if.end.827, %if.end.719
  br label %sw.epilog.840

sw.bb.829:                                        ; preds = %if.else.513
  %413 = load i32, i32* %m.addr, align 4
  %idxprom830 = sext i32 %413 to i64
  %414 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx831 = getelementptr inbounds %struct.move_s, %struct.move_s* %414, i64 %idxprom830
  %castled832 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx831, i32 0, i32 4
  %415 = load i32, i32* %castled832, align 4
  %tobool833 = icmp ne i32 %415, 0
  br i1 %tobool833, label %if.then.834, label %if.end.839

if.then.834:                                      ; preds = %sw.bb.829
  %416 = load i32, i32* @bking_loc, align 4
  %call835 = call i32 @is_attacked(i32 %416, i32 1)
  %tobool836 = icmp ne i32 %call835, 0
  br i1 %tobool836, label %if.then.837, label %if.else.838

if.then.837:                                      ; preds = %if.then.834
  store i32 1, i32* %retval
  br label %return

if.else.838:                                      ; preds = %if.then.834
  store i32 0, i32* %retval
  br label %return

if.end.839:                                       ; preds = %sw.bb.829
  br label %sw.epilog.840

sw.epilog.840:                                    ; preds = %if.else.513, %if.end.839, %if.end.828, %for.end.684, %if.end.671, %if.end.599, %if.end.527
  %417 = load i32, i32* %from, align 4
  %cmp841 = icmp eq i32 %417, 0
  br i1 %cmp841, label %if.then.842, label %if.end.843

if.then.842:                                      ; preds = %sw.epilog.840
  store i32 0, i32* %retval
  br label %return

if.end.843:                                       ; preds = %sw.epilog.840
  %418 = load i32, i32* %from, align 4
  %idxprom844 = sext i32 %418 to i64
  %arrayidx845 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom844
  %419 = load i32, i32* %arrayidx845, align 4
  %420 = load i32, i32* @bking_loc, align 4
  %idxprom846 = sext i32 %420 to i64
  %arrayidx847 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom846
  %421 = load i32, i32* %arrayidx847, align 4
  %cmp848 = icmp eq i32 %419, %421
  br i1 %cmp848, label %if.then.849, label %if.else.890

if.then.849:                                      ; preds = %if.end.843
  %422 = load i32, i32* @bking_loc, align 4
  %423 = load i32, i32* %from, align 4
  %cmp850 = icmp sgt i32 %422, %423
  br i1 %cmp850, label %if.then.851, label %if.else.870

if.then.851:                                      ; preds = %if.then.849
  %424 = load i32, i32* @bking_loc, align 4
  %sub852 = sub nsw i32 %424, 1
  store i32 %sub852, i32* %l, align 4
  br label %for.cond.853

for.cond.853:                                     ; preds = %for.inc.858, %if.then.851
  %425 = load i32, i32* %l, align 4
  %idxprom854 = sext i32 %425 to i64
  %arrayidx855 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom854
  %426 = load i32, i32* %arrayidx855, align 4
  %cmp856 = icmp eq i32 %426, 13
  br i1 %cmp856, label %for.body.857, label %for.end.860

for.body.857:                                     ; preds = %for.cond.853
  br label %for.inc.858

for.inc.858:                                      ; preds = %for.body.857
  %427 = load i32, i32* %l, align 4
  %dec859 = add nsw i32 %427, -1
  store i32 %dec859, i32* %l, align 4
  br label %for.cond.853

for.end.860:                                      ; preds = %for.cond.853
  %428 = load i32, i32* %l, align 4
  %idxprom861 = sext i32 %428 to i64
  %arrayidx862 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom861
  %429 = load i32, i32* %arrayidx862, align 4
  %cmp863 = icmp eq i32 %429, 7
  br i1 %cmp863, label %if.then.868, label %lor.lhs.false.864

lor.lhs.false.864:                                ; preds = %for.end.860
  %430 = load i32, i32* %l, align 4
  %idxprom865 = sext i32 %430 to i64
  %arrayidx866 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom865
  %431 = load i32, i32* %arrayidx866, align 4
  %cmp867 = icmp eq i32 %431, 9
  br i1 %cmp867, label %if.then.868, label %if.end.869

if.then.868:                                      ; preds = %lor.lhs.false.864, %for.end.860
  store i32 1, i32* %retval
  br label %return

if.end.869:                                       ; preds = %lor.lhs.false.864
  br label %if.end.889

if.else.870:                                      ; preds = %if.then.849
  %432 = load i32, i32* @bking_loc, align 4
  %add871 = add nsw i32 %432, 1
  store i32 %add871, i32* %l, align 4
  br label %for.cond.872

for.cond.872:                                     ; preds = %for.inc.877, %if.else.870
  %433 = load i32, i32* %l, align 4
  %idxprom873 = sext i32 %433 to i64
  %arrayidx874 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom873
  %434 = load i32, i32* %arrayidx874, align 4
  %cmp875 = icmp eq i32 %434, 13
  br i1 %cmp875, label %for.body.876, label %for.end.879

for.body.876:                                     ; preds = %for.cond.872
  br label %for.inc.877

for.inc.877:                                      ; preds = %for.body.876
  %435 = load i32, i32* %l, align 4
  %inc878 = add nsw i32 %435, 1
  store i32 %inc878, i32* %l, align 4
  br label %for.cond.872

for.end.879:                                      ; preds = %for.cond.872
  %436 = load i32, i32* %l, align 4
  %idxprom880 = sext i32 %436 to i64
  %arrayidx881 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom880
  %437 = load i32, i32* %arrayidx881, align 4
  %cmp882 = icmp eq i32 %437, 7
  br i1 %cmp882, label %if.then.887, label %lor.lhs.false.883

lor.lhs.false.883:                                ; preds = %for.end.879
  %438 = load i32, i32* %l, align 4
  %idxprom884 = sext i32 %438 to i64
  %arrayidx885 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom884
  %439 = load i32, i32* %arrayidx885, align 4
  %cmp886 = icmp eq i32 %439, 9
  br i1 %cmp886, label %if.then.887, label %if.end.888

if.then.887:                                      ; preds = %lor.lhs.false.883, %for.end.879
  store i32 1, i32* %retval
  br label %return

if.end.888:                                       ; preds = %lor.lhs.false.883
  br label %if.end.889

if.end.889:                                       ; preds = %if.end.888, %if.end.869
  br label %if.end.1034

if.else.890:                                      ; preds = %if.end.843
  %440 = load i32, i32* %from, align 4
  %idxprom891 = sext i32 %440 to i64
  %arrayidx892 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom891
  %441 = load i32, i32* %arrayidx892, align 4
  %442 = load i32, i32* @bking_loc, align 4
  %idxprom893 = sext i32 %442 to i64
  %arrayidx894 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom893
  %443 = load i32, i32* %arrayidx894, align 4
  %cmp895 = icmp eq i32 %441, %443
  br i1 %cmp895, label %if.then.896, label %if.else.937

if.then.896:                                      ; preds = %if.else.890
  %444 = load i32, i32* @bking_loc, align 4
  %445 = load i32, i32* %from, align 4
  %cmp897 = icmp sgt i32 %444, %445
  br i1 %cmp897, label %if.then.898, label %if.else.917

if.then.898:                                      ; preds = %if.then.896
  %446 = load i32, i32* @bking_loc, align 4
  %sub899 = sub nsw i32 %446, 12
  store i32 %sub899, i32* %l, align 4
  br label %for.cond.900

for.cond.900:                                     ; preds = %for.inc.905, %if.then.898
  %447 = load i32, i32* %l, align 4
  %idxprom901 = sext i32 %447 to i64
  %arrayidx902 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom901
  %448 = load i32, i32* %arrayidx902, align 4
  %cmp903 = icmp eq i32 %448, 13
  br i1 %cmp903, label %for.body.904, label %for.end.907

for.body.904:                                     ; preds = %for.cond.900
  br label %for.inc.905

for.inc.905:                                      ; preds = %for.body.904
  %449 = load i32, i32* %l, align 4
  %sub906 = sub nsw i32 %449, 12
  store i32 %sub906, i32* %l, align 4
  br label %for.cond.900

for.end.907:                                      ; preds = %for.cond.900
  %450 = load i32, i32* %l, align 4
  %idxprom908 = sext i32 %450 to i64
  %arrayidx909 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom908
  %451 = load i32, i32* %arrayidx909, align 4
  %cmp910 = icmp eq i32 %451, 7
  br i1 %cmp910, label %if.then.915, label %lor.lhs.false.911

lor.lhs.false.911:                                ; preds = %for.end.907
  %452 = load i32, i32* %l, align 4
  %idxprom912 = sext i32 %452 to i64
  %arrayidx913 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom912
  %453 = load i32, i32* %arrayidx913, align 4
  %cmp914 = icmp eq i32 %453, 9
  br i1 %cmp914, label %if.then.915, label %if.end.916

if.then.915:                                      ; preds = %lor.lhs.false.911, %for.end.907
  store i32 1, i32* %retval
  br label %return

if.end.916:                                       ; preds = %lor.lhs.false.911
  br label %if.end.936

if.else.917:                                      ; preds = %if.then.896
  %454 = load i32, i32* @bking_loc, align 4
  %add918 = add nsw i32 %454, 12
  store i32 %add918, i32* %l, align 4
  br label %for.cond.919

for.cond.919:                                     ; preds = %for.inc.924, %if.else.917
  %455 = load i32, i32* %l, align 4
  %idxprom920 = sext i32 %455 to i64
  %arrayidx921 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom920
  %456 = load i32, i32* %arrayidx921, align 4
  %cmp922 = icmp eq i32 %456, 13
  br i1 %cmp922, label %for.body.923, label %for.end.926

for.body.923:                                     ; preds = %for.cond.919
  br label %for.inc.924

for.inc.924:                                      ; preds = %for.body.923
  %457 = load i32, i32* %l, align 4
  %add925 = add nsw i32 %457, 12
  store i32 %add925, i32* %l, align 4
  br label %for.cond.919

for.end.926:                                      ; preds = %for.cond.919
  %458 = load i32, i32* %l, align 4
  %idxprom927 = sext i32 %458 to i64
  %arrayidx928 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom927
  %459 = load i32, i32* %arrayidx928, align 4
  %cmp929 = icmp eq i32 %459, 7
  br i1 %cmp929, label %if.then.934, label %lor.lhs.false.930

lor.lhs.false.930:                                ; preds = %for.end.926
  %460 = load i32, i32* %l, align 4
  %idxprom931 = sext i32 %460 to i64
  %arrayidx932 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom931
  %461 = load i32, i32* %arrayidx932, align 4
  %cmp933 = icmp eq i32 %461, 9
  br i1 %cmp933, label %if.then.934, label %if.end.935

if.then.934:                                      ; preds = %lor.lhs.false.930, %for.end.926
  store i32 1, i32* %retval
  br label %return

if.end.935:                                       ; preds = %lor.lhs.false.930
  br label %if.end.936

if.end.936:                                       ; preds = %if.end.935, %if.end.916
  br label %if.end.1033

if.else.937:                                      ; preds = %if.else.890
  %462 = load i32, i32* %from, align 4
  %idxprom938 = sext i32 %462 to i64
  %arrayidx939 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom938
  %463 = load i32, i32* %arrayidx939, align 4
  %464 = load i32, i32* @bking_loc, align 4
  %idxprom940 = sext i32 %464 to i64
  %arrayidx941 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagl, i32 0, i64 %idxprom940
  %465 = load i32, i32* %arrayidx941, align 4
  %cmp942 = icmp eq i32 %463, %465
  br i1 %cmp942, label %if.then.943, label %if.else.984

if.then.943:                                      ; preds = %if.else.937
  %466 = load i32, i32* @bking_loc, align 4
  %467 = load i32, i32* %from, align 4
  %cmp944 = icmp sgt i32 %466, %467
  br i1 %cmp944, label %if.then.945, label %if.else.964

if.then.945:                                      ; preds = %if.then.943
  %468 = load i32, i32* @bking_loc, align 4
  %sub946 = sub nsw i32 %468, 13
  store i32 %sub946, i32* %l, align 4
  br label %for.cond.947

for.cond.947:                                     ; preds = %for.inc.952, %if.then.945
  %469 = load i32, i32* %l, align 4
  %idxprom948 = sext i32 %469 to i64
  %arrayidx949 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom948
  %470 = load i32, i32* %arrayidx949, align 4
  %cmp950 = icmp eq i32 %470, 13
  br i1 %cmp950, label %for.body.951, label %for.end.954

for.body.951:                                     ; preds = %for.cond.947
  br label %for.inc.952

for.inc.952:                                      ; preds = %for.body.951
  %471 = load i32, i32* %l, align 4
  %sub953 = sub nsw i32 %471, 13
  store i32 %sub953, i32* %l, align 4
  br label %for.cond.947

for.end.954:                                      ; preds = %for.cond.947
  %472 = load i32, i32* %l, align 4
  %idxprom955 = sext i32 %472 to i64
  %arrayidx956 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom955
  %473 = load i32, i32* %arrayidx956, align 4
  %cmp957 = icmp eq i32 %473, 11
  br i1 %cmp957, label %if.then.962, label %lor.lhs.false.958

lor.lhs.false.958:                                ; preds = %for.end.954
  %474 = load i32, i32* %l, align 4
  %idxprom959 = sext i32 %474 to i64
  %arrayidx960 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom959
  %475 = load i32, i32* %arrayidx960, align 4
  %cmp961 = icmp eq i32 %475, 9
  br i1 %cmp961, label %if.then.962, label %if.end.963

if.then.962:                                      ; preds = %lor.lhs.false.958, %for.end.954
  store i32 1, i32* %retval
  br label %return

if.end.963:                                       ; preds = %lor.lhs.false.958
  br label %if.end.983

if.else.964:                                      ; preds = %if.then.943
  %476 = load i32, i32* @bking_loc, align 4
  %add965 = add nsw i32 %476, 13
  store i32 %add965, i32* %l, align 4
  br label %for.cond.966

for.cond.966:                                     ; preds = %for.inc.971, %if.else.964
  %477 = load i32, i32* %l, align 4
  %idxprom967 = sext i32 %477 to i64
  %arrayidx968 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom967
  %478 = load i32, i32* %arrayidx968, align 4
  %cmp969 = icmp eq i32 %478, 13
  br i1 %cmp969, label %for.body.970, label %for.end.973

for.body.970:                                     ; preds = %for.cond.966
  br label %for.inc.971

for.inc.971:                                      ; preds = %for.body.970
  %479 = load i32, i32* %l, align 4
  %add972 = add nsw i32 %479, 13
  store i32 %add972, i32* %l, align 4
  br label %for.cond.966

for.end.973:                                      ; preds = %for.cond.966
  %480 = load i32, i32* %l, align 4
  %idxprom974 = sext i32 %480 to i64
  %arrayidx975 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom974
  %481 = load i32, i32* %arrayidx975, align 4
  %cmp976 = icmp eq i32 %481, 11
  br i1 %cmp976, label %if.then.981, label %lor.lhs.false.977

lor.lhs.false.977:                                ; preds = %for.end.973
  %482 = load i32, i32* %l, align 4
  %idxprom978 = sext i32 %482 to i64
  %arrayidx979 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom978
  %483 = load i32, i32* %arrayidx979, align 4
  %cmp980 = icmp eq i32 %483, 9
  br i1 %cmp980, label %if.then.981, label %if.end.982

if.then.981:                                      ; preds = %lor.lhs.false.977, %for.end.973
  store i32 1, i32* %retval
  br label %return

if.end.982:                                       ; preds = %lor.lhs.false.977
  br label %if.end.983

if.end.983:                                       ; preds = %if.end.982, %if.end.963
  br label %if.end.1032

if.else.984:                                      ; preds = %if.else.937
  %484 = load i32, i32* %from, align 4
  %idxprom985 = sext i32 %484 to i64
  %arrayidx986 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom985
  %485 = load i32, i32* %arrayidx986, align 4
  %486 = load i32, i32* @bking_loc, align 4
  %idxprom987 = sext i32 %486 to i64
  %arrayidx988 = getelementptr inbounds [144 x i32], [144 x i32]* @Xdiagr, i32 0, i64 %idxprom987
  %487 = load i32, i32* %arrayidx988, align 4
  %cmp989 = icmp eq i32 %485, %487
  br i1 %cmp989, label %if.then.990, label %if.end.1031

if.then.990:                                      ; preds = %if.else.984
  %488 = load i32, i32* @bking_loc, align 4
  %489 = load i32, i32* %from, align 4
  %cmp991 = icmp sgt i32 %488, %489
  br i1 %cmp991, label %if.then.992, label %if.else.1011

if.then.992:                                      ; preds = %if.then.990
  %490 = load i32, i32* @bking_loc, align 4
  %sub993 = sub nsw i32 %490, 11
  store i32 %sub993, i32* %l, align 4
  br label %for.cond.994

for.cond.994:                                     ; preds = %for.inc.999, %if.then.992
  %491 = load i32, i32* %l, align 4
  %idxprom995 = sext i32 %491 to i64
  %arrayidx996 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom995
  %492 = load i32, i32* %arrayidx996, align 4
  %cmp997 = icmp eq i32 %492, 13
  br i1 %cmp997, label %for.body.998, label %for.end.1001

for.body.998:                                     ; preds = %for.cond.994
  br label %for.inc.999

for.inc.999:                                      ; preds = %for.body.998
  %493 = load i32, i32* %l, align 4
  %sub1000 = sub nsw i32 %493, 11
  store i32 %sub1000, i32* %l, align 4
  br label %for.cond.994

for.end.1001:                                     ; preds = %for.cond.994
  %494 = load i32, i32* %l, align 4
  %idxprom1002 = sext i32 %494 to i64
  %arrayidx1003 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom1002
  %495 = load i32, i32* %arrayidx1003, align 4
  %cmp1004 = icmp eq i32 %495, 11
  br i1 %cmp1004, label %if.then.1009, label %lor.lhs.false.1005

lor.lhs.false.1005:                               ; preds = %for.end.1001
  %496 = load i32, i32* %l, align 4
  %idxprom1006 = sext i32 %496 to i64
  %arrayidx1007 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom1006
  %497 = load i32, i32* %arrayidx1007, align 4
  %cmp1008 = icmp eq i32 %497, 9
  br i1 %cmp1008, label %if.then.1009, label %if.end.1010

if.then.1009:                                     ; preds = %lor.lhs.false.1005, %for.end.1001
  store i32 1, i32* %retval
  br label %return

if.end.1010:                                      ; preds = %lor.lhs.false.1005
  br label %if.end.1030

if.else.1011:                                     ; preds = %if.then.990
  %498 = load i32, i32* @bking_loc, align 4
  %add1012 = add nsw i32 %498, 11
  store i32 %add1012, i32* %l, align 4
  br label %for.cond.1013

for.cond.1013:                                    ; preds = %for.inc.1018, %if.else.1011
  %499 = load i32, i32* %l, align 4
  %idxprom1014 = sext i32 %499 to i64
  %arrayidx1015 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom1014
  %500 = load i32, i32* %arrayidx1015, align 4
  %cmp1016 = icmp eq i32 %500, 13
  br i1 %cmp1016, label %for.body.1017, label %for.end.1020

for.body.1017:                                    ; preds = %for.cond.1013
  br label %for.inc.1018

for.inc.1018:                                     ; preds = %for.body.1017
  %501 = load i32, i32* %l, align 4
  %add1019 = add nsw i32 %501, 11
  store i32 %add1019, i32* %l, align 4
  br label %for.cond.1013

for.end.1020:                                     ; preds = %for.cond.1013
  %502 = load i32, i32* %l, align 4
  %idxprom1021 = sext i32 %502 to i64
  %arrayidx1022 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom1021
  %503 = load i32, i32* %arrayidx1022, align 4
  %cmp1023 = icmp eq i32 %503, 11
  br i1 %cmp1023, label %if.then.1028, label %lor.lhs.false.1024

lor.lhs.false.1024:                               ; preds = %for.end.1020
  %504 = load i32, i32* %l, align 4
  %idxprom1025 = sext i32 %504 to i64
  %arrayidx1026 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom1025
  %505 = load i32, i32* %arrayidx1026, align 4
  %cmp1027 = icmp eq i32 %505, 9
  br i1 %cmp1027, label %if.then.1028, label %if.end.1029

if.then.1028:                                     ; preds = %lor.lhs.false.1024, %for.end.1020
  store i32 1, i32* %retval
  br label %return

if.end.1029:                                      ; preds = %lor.lhs.false.1024
  br label %if.end.1030

if.end.1030:                                      ; preds = %if.end.1029, %if.end.1010
  br label %if.end.1031

if.end.1031:                                      ; preds = %if.end.1030, %if.else.984
  br label %if.end.1032

if.end.1032:                                      ; preds = %if.end.1031, %if.end.983
  br label %if.end.1033

if.end.1033:                                      ; preds = %if.end.1032, %if.end.936
  br label %if.end.1034

if.end.1034:                                      ; preds = %if.end.1033, %if.end.889
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.1034, %if.then.1028, %if.then.1009, %if.then.981, %if.then.962, %if.then.934, %if.then.915, %if.then.887, %if.then.868, %if.then.842, %if.else.838, %if.then.837, %if.then.822, %if.then.809, %if.then.787, %if.then.774, %if.then.752, %if.then.739, %if.then.717, %if.then.704, %if.then.680, %if.then.667, %if.then.654, %if.then.632, %if.then.619, %if.then.595, %if.then.582, %if.then.560, %if.then.547, %if.then.526, %if.end.512, %if.then.506, %if.then.487, %if.then.459, %if.then.440, %if.then.412, %if.then.393, %if.then.365, %if.then.346, %if.then.320, %if.else.317, %if.then.316, %if.then.304, %if.then.291, %if.then.269, %if.then.256, %if.then.234, %if.then.221, %if.then.199, %if.then.186, %if.then.162, %if.then.149, %if.then.137, %if.then.116, %if.then.103, %if.then.79, %if.then.66, %if.then.44, %if.then.32, %if.then.16, %if.then
  %506 = load i32, i32* %retval
  ret i32 %506
}

; Function Attrs: nounwind uwtable
define i32 @extended_in_check() #0 {
entry:
  %retval = alloca i32, align 4
  %sq = alloca i32, align 4
  %0 = load i32, i32* @Variant, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @white_to_move, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then.2, label %if.else.81

if.then.2:                                        ; preds = %if.end
  %2 = load i32, i32* @wking_loc, align 4
  %sub = sub nsw i32 %2, 12
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %sq, align 4
  %4 = load i32, i32* %sq, align 4
  %cmp3 = icmp eq i32 %4, 8
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.2
  %5 = load i32, i32* %sq, align 4
  %cmp4 = icmp eq i32 %5, 10
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.then.2
  store i32 2, i32* %retval
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  %6 = load i32, i32* @wking_loc, align 4
  %sub7 = sub nsw i32 %6, 1
  %idxprom8 = sext i32 %sub7 to i64
  %arrayidx9 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom8
  %7 = load i32, i32* %arrayidx9, align 4
  store i32 %7, i32* %sq, align 4
  %8 = load i32, i32* %sq, align 4
  %cmp10 = icmp eq i32 %8, 8
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end.6
  %9 = load i32, i32* %sq, align 4
  %cmp12 = icmp eq i32 %9, 10
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false.11, %if.end.6
  store i32 2, i32* %retval
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false.11
  %10 = load i32, i32* @wking_loc, align 4
  %add = add nsw i32 %10, 1
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom15
  %11 = load i32, i32* %arrayidx16, align 4
  store i32 %11, i32* %sq, align 4
  %12 = load i32, i32* %sq, align 4
  %cmp17 = icmp eq i32 %12, 8
  br i1 %cmp17, label %if.then.20, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %if.end.14
  %13 = load i32, i32* %sq, align 4
  %cmp19 = icmp eq i32 %13, 10
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.18, %if.end.14
  store i32 2, i32* %retval
  br label %return

if.end.21:                                        ; preds = %lor.lhs.false.18
  %14 = load i32, i32* @wking_loc, align 4
  %add22 = add nsw i32 %14, 12
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom23
  %15 = load i32, i32* %arrayidx24, align 4
  store i32 %15, i32* %sq, align 4
  %16 = load i32, i32* %sq, align 4
  %cmp25 = icmp eq i32 %16, 8
  br i1 %cmp25, label %if.then.28, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %if.end.21
  %17 = load i32, i32* %sq, align 4
  %cmp27 = icmp eq i32 %17, 10
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %lor.lhs.false.26, %if.end.21
  store i32 2, i32* %retval
  br label %return

if.end.29:                                        ; preds = %lor.lhs.false.26
  %18 = load i32, i32* @wking_loc, align 4
  %add30 = add nsw i32 %18, 13
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom31
  %19 = load i32, i32* %arrayidx32, align 4
  store i32 %19, i32* %sq, align 4
  %20 = load i32, i32* %sq, align 4
  %cmp33 = icmp eq i32 %20, 12
  br i1 %cmp33, label %if.then.38, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.end.29
  %21 = load i32, i32* %sq, align 4
  %cmp35 = icmp eq i32 %21, 10
  br i1 %cmp35, label %if.then.38, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.34
  %22 = load i32, i32* %sq, align 4
  %cmp37 = icmp eq i32 %22, 2
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false.36, %lor.lhs.false.34, %if.end.29
  store i32 2, i32* %retval
  br label %return

if.end.39:                                        ; preds = %lor.lhs.false.36
  %23 = load i32, i32* @wking_loc, align 4
  %add40 = add nsw i32 %23, 11
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom41
  %24 = load i32, i32* %arrayidx42, align 4
  store i32 %24, i32* %sq, align 4
  %25 = load i32, i32* %sq, align 4
  %cmp43 = icmp eq i32 %25, 12
  br i1 %cmp43, label %if.then.48, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.end.39
  %26 = load i32, i32* %sq, align 4
  %cmp45 = icmp eq i32 %26, 10
  br i1 %cmp45, label %if.then.48, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.44
  %27 = load i32, i32* %sq, align 4
  %cmp47 = icmp eq i32 %27, 2
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %lor.lhs.false.46, %lor.lhs.false.44, %if.end.39
  store i32 2, i32* %retval
  br label %return

if.end.49:                                        ; preds = %lor.lhs.false.46
  %28 = load i32, i32* @wking_loc, align 4
  %sub50 = sub nsw i32 %28, 11
  %idxprom51 = sext i32 %sub50 to i64
  %arrayidx52 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom51
  %29 = load i32, i32* %arrayidx52, align 4
  store i32 %29, i32* %sq, align 4
  %30 = load i32, i32* %sq, align 4
  %cmp53 = icmp eq i32 %30, 12
  br i1 %cmp53, label %if.then.56, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %if.end.49
  %31 = load i32, i32* %sq, align 4
  %cmp55 = icmp eq i32 %31, 10
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %lor.lhs.false.54, %if.end.49
  store i32 2, i32* %retval
  br label %return

if.end.57:                                        ; preds = %lor.lhs.false.54
  %32 = load i32, i32* @wking_loc, align 4
  %sub58 = sub nsw i32 %32, 13
  %idxprom59 = sext i32 %sub58 to i64
  %arrayidx60 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom59
  %33 = load i32, i32* %arrayidx60, align 4
  store i32 %33, i32* %sq, align 4
  %34 = load i32, i32* %sq, align 4
  %cmp61 = icmp eq i32 %34, 12
  br i1 %cmp61, label %if.then.64, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %if.end.57
  %35 = load i32, i32* %sq, align 4
  %cmp63 = icmp eq i32 %35, 10
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %lor.lhs.false.62, %if.end.57
  store i32 2, i32* %retval
  br label %return

if.end.65:                                        ; preds = %lor.lhs.false.62
  store i32 0, i32* %sq, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.65
  %36 = load i32, i32* %sq, align 4
  %cmp66 = icmp slt i32 %36, 8
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* @wking_loc, align 4
  %38 = load i32, i32* %sq, align 4
  %idxprom67 = sext i32 %38 to i64
  %arrayidx68 = getelementptr inbounds [8 x i32], [8 x i32]* @extended_in_check.knight_o, i32 0, i64 %idxprom67
  %39 = load i32, i32* %arrayidx68, align 4
  %add69 = add nsw i32 %37, %39
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom70
  %40 = load i32, i32* %arrayidx71, align 4
  %cmp72 = icmp eq i32 %40, 4
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %for.body
  store i32 2, i32* %retval
  br label %return

if.end.74:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.74
  %41 = load i32, i32* %sq, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %sq, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* @wking_loc, align 4
  %call = call i32 @is_attacked(i32 %42, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.75, label %if.end.80

if.then.75:                                       ; preds = %for.end
  %43 = load i32, i32* @Variant, align 4
  %cmp76 = icmp eq i32 %43, 2
  br i1 %cmp76, label %if.then.79, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %if.then.75
  %44 = load i32, i32* @Variant, align 4
  %cmp78 = icmp eq i32 %44, 4
  br i1 %cmp78, label %if.then.79, label %if.else

if.then.79:                                       ; preds = %lor.lhs.false.77, %if.then.75
  store i32 2, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.77
  store i32 1, i32* %retval
  br label %return

if.end.80:                                        ; preds = %for.end
  br label %if.end.173

if.else.81:                                       ; preds = %if.end
  %45 = load i32, i32* @bking_loc, align 4
  %sub82 = sub nsw i32 %45, 12
  %idxprom83 = sext i32 %sub82 to i64
  %arrayidx84 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom83
  %46 = load i32, i32* %arrayidx84, align 4
  store i32 %46, i32* %sq, align 4
  %47 = load i32, i32* %sq, align 4
  %cmp85 = icmp eq i32 %47, 7
  br i1 %cmp85, label %if.then.88, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %if.else.81
  %48 = load i32, i32* %sq, align 4
  %cmp87 = icmp eq i32 %48, 9
  br i1 %cmp87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %lor.lhs.false.86, %if.else.81
  store i32 2, i32* %retval
  br label %return

if.end.89:                                        ; preds = %lor.lhs.false.86
  %49 = load i32, i32* @bking_loc, align 4
  %sub90 = sub nsw i32 %49, 1
  %idxprom91 = sext i32 %sub90 to i64
  %arrayidx92 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom91
  %50 = load i32, i32* %arrayidx92, align 4
  store i32 %50, i32* %sq, align 4
  %51 = load i32, i32* %sq, align 4
  %cmp93 = icmp eq i32 %51, 7
  br i1 %cmp93, label %if.then.96, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %if.end.89
  %52 = load i32, i32* %sq, align 4
  %cmp95 = icmp eq i32 %52, 9
  br i1 %cmp95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %lor.lhs.false.94, %if.end.89
  store i32 2, i32* %retval
  br label %return

if.end.97:                                        ; preds = %lor.lhs.false.94
  %53 = load i32, i32* @bking_loc, align 4
  %add98 = add nsw i32 %53, 1
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom99
  %54 = load i32, i32* %arrayidx100, align 4
  store i32 %54, i32* %sq, align 4
  %55 = load i32, i32* %sq, align 4
  %cmp101 = icmp eq i32 %55, 7
  br i1 %cmp101, label %if.then.104, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %if.end.97
  %56 = load i32, i32* %sq, align 4
  %cmp103 = icmp eq i32 %56, 9
  br i1 %cmp103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %lor.lhs.false.102, %if.end.97
  store i32 2, i32* %retval
  br label %return

if.end.105:                                       ; preds = %lor.lhs.false.102
  %57 = load i32, i32* @bking_loc, align 4
  %add106 = add nsw i32 %57, 12
  %idxprom107 = sext i32 %add106 to i64
  %arrayidx108 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom107
  %58 = load i32, i32* %arrayidx108, align 4
  store i32 %58, i32* %sq, align 4
  %59 = load i32, i32* %sq, align 4
  %cmp109 = icmp eq i32 %59, 7
  br i1 %cmp109, label %if.then.112, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %if.end.105
  %60 = load i32, i32* %sq, align 4
  %cmp111 = icmp eq i32 %60, 9
  br i1 %cmp111, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %lor.lhs.false.110, %if.end.105
  store i32 2, i32* %retval
  br label %return

if.end.113:                                       ; preds = %lor.lhs.false.110
  %61 = load i32, i32* @bking_loc, align 4
  %sub114 = sub nsw i32 %61, 13
  %idxprom115 = sext i32 %sub114 to i64
  %arrayidx116 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom115
  %62 = load i32, i32* %arrayidx116, align 4
  store i32 %62, i32* %sq, align 4
  %63 = load i32, i32* %sq, align 4
  %cmp117 = icmp eq i32 %63, 11
  br i1 %cmp117, label %if.then.122, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %if.end.113
  %64 = load i32, i32* %sq, align 4
  %cmp119 = icmp eq i32 %64, 9
  br i1 %cmp119, label %if.then.122, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %lor.lhs.false.118
  %65 = load i32, i32* %sq, align 4
  %cmp121 = icmp eq i32 %65, 1
  br i1 %cmp121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %lor.lhs.false.120, %lor.lhs.false.118, %if.end.113
  store i32 2, i32* %retval
  br label %return

if.end.123:                                       ; preds = %lor.lhs.false.120
  %66 = load i32, i32* @bking_loc, align 4
  %sub124 = sub nsw i32 %66, 11
  %idxprom125 = sext i32 %sub124 to i64
  %arrayidx126 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom125
  %67 = load i32, i32* %arrayidx126, align 4
  store i32 %67, i32* %sq, align 4
  %68 = load i32, i32* %sq, align 4
  %cmp127 = icmp eq i32 %68, 11
  br i1 %cmp127, label %if.then.132, label %lor.lhs.false.128

lor.lhs.false.128:                                ; preds = %if.end.123
  %69 = load i32, i32* %sq, align 4
  %cmp129 = icmp eq i32 %69, 9
  br i1 %cmp129, label %if.then.132, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %lor.lhs.false.128
  %70 = load i32, i32* %sq, align 4
  %cmp131 = icmp eq i32 %70, 1
  br i1 %cmp131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %lor.lhs.false.130, %lor.lhs.false.128, %if.end.123
  store i32 2, i32* %retval
  br label %return

if.end.133:                                       ; preds = %lor.lhs.false.130
  %71 = load i32, i32* @bking_loc, align 4
  %add134 = add nsw i32 %71, 11
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom135
  %72 = load i32, i32* %arrayidx136, align 4
  store i32 %72, i32* %sq, align 4
  %73 = load i32, i32* %sq, align 4
  %cmp137 = icmp eq i32 %73, 11
  br i1 %cmp137, label %if.then.140, label %lor.lhs.false.138

lor.lhs.false.138:                                ; preds = %if.end.133
  %74 = load i32, i32* %sq, align 4
  %cmp139 = icmp eq i32 %74, 9
  br i1 %cmp139, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %lor.lhs.false.138, %if.end.133
  store i32 2, i32* %retval
  br label %return

if.end.141:                                       ; preds = %lor.lhs.false.138
  %75 = load i32, i32* @bking_loc, align 4
  %add142 = add nsw i32 %75, 13
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom143
  %76 = load i32, i32* %arrayidx144, align 4
  store i32 %76, i32* %sq, align 4
  %77 = load i32, i32* %sq, align 4
  %cmp145 = icmp eq i32 %77, 11
  br i1 %cmp145, label %if.then.148, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %if.end.141
  %78 = load i32, i32* %sq, align 4
  %cmp147 = icmp eq i32 %78, 9
  br i1 %cmp147, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %lor.lhs.false.146, %if.end.141
  store i32 2, i32* %retval
  br label %return

if.end.149:                                       ; preds = %lor.lhs.false.146
  store i32 0, i32* %sq, align 4
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.161, %if.end.149
  %79 = load i32, i32* %sq, align 4
  %cmp151 = icmp slt i32 %79, 8
  br i1 %cmp151, label %for.body.152, label %for.end.163

for.body.152:                                     ; preds = %for.cond.150
  %80 = load i32, i32* @bking_loc, align 4
  %81 = load i32, i32* %sq, align 4
  %idxprom153 = sext i32 %81 to i64
  %arrayidx154 = getelementptr inbounds [8 x i32], [8 x i32]* @extended_in_check.knight_o, i32 0, i64 %idxprom153
  %82 = load i32, i32* %arrayidx154, align 4
  %add155 = add nsw i32 %80, %82
  %idxprom156 = sext i32 %add155 to i64
  %arrayidx157 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom156
  %83 = load i32, i32* %arrayidx157, align 4
  %cmp158 = icmp eq i32 %83, 3
  br i1 %cmp158, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %for.body.152
  store i32 2, i32* %retval
  br label %return

if.end.160:                                       ; preds = %for.body.152
  br label %for.inc.161

for.inc.161:                                      ; preds = %if.end.160
  %84 = load i32, i32* %sq, align 4
  %inc162 = add nsw i32 %84, 1
  store i32 %inc162, i32* %sq, align 4
  br label %for.cond.150

for.end.163:                                      ; preds = %for.cond.150
  %85 = load i32, i32* @bking_loc, align 4
  %call164 = call i32 @is_attacked(i32 %85, i32 1)
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %if.then.166, label %if.end.172

if.then.166:                                      ; preds = %for.end.163
  %86 = load i32, i32* @Variant, align 4
  %cmp167 = icmp eq i32 %86, 2
  br i1 %cmp167, label %if.then.170, label %lor.lhs.false.168

lor.lhs.false.168:                                ; preds = %if.then.166
  %87 = load i32, i32* @Variant, align 4
  %cmp169 = icmp eq i32 %87, 4
  br i1 %cmp169, label %if.then.170, label %if.else.171

if.then.170:                                      ; preds = %lor.lhs.false.168, %if.then.166
  store i32 2, i32* %retval
  br label %return

if.else.171:                                      ; preds = %lor.lhs.false.168
  store i32 1, i32* %retval
  br label %return

if.end.172:                                       ; preds = %for.end.163
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.end.80
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.173, %if.else.171, %if.then.170, %if.then.159, %if.then.148, %if.then.140, %if.then.132, %if.then.122, %if.then.112, %if.then.104, %if.then.96, %if.then.88, %if.else, %if.then.79, %if.then.73, %if.then.64, %if.then.56, %if.then.48, %if.then.38, %if.then.28, %if.then.20, %if.then.13, %if.then.5, %if.then
  %88 = load i32, i32* %retval
  ret i32 %88
}

; Function Attrs: nounwind uwtable
define void @make(%struct.move_s* %moves, i32 %i) #0 {
entry:
  %moves.addr = alloca %struct.move_s*, align 8
  %i.addr = alloca i32, align 4
  %ep = alloca i32, align 4
  %from = alloca i32, align 4
  %target = alloca i32, align 4
  %captured = alloca i32, align 4
  %promoted = alloca i32, align 4
  %castled = alloca i32, align 4
  %find_slot = alloca i32, align 4
  store %struct.move_s* %moves, %struct.move_s** %moves.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx = getelementptr inbounds %struct.move_s, %struct.move_s* %1, i64 %idxprom
  %ep1 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx, i32 0, i32 5
  %2 = load i32, i32* %ep1, align 4
  store i32 %2, i32* %ep, align 4
  %3 = load i32, i32* %i.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %4 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.move_s, %struct.move_s* %4, i64 %idxprom2
  %from4 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx3, i32 0, i32 0
  %5 = load i32, i32* %from4, align 4
  store i32 %5, i32* %from, align 4
  %6 = load i32, i32* %i.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.move_s, %struct.move_s* %7, i64 %idxprom5
  %target7 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx6, i32 0, i32 1
  %8 = load i32, i32* %target7, align 4
  store i32 %8, i32* %target, align 4
  %9 = load i32, i32* %i.addr, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.move_s, %struct.move_s* %10, i64 %idxprom8
  %captured10 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx9, i32 0, i32 2
  %11 = load i32, i32* %captured10, align 4
  store i32 %11, i32* %captured, align 4
  %12 = load i32, i32* %i.addr, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.move_s, %struct.move_s* %13, i64 %idxprom11
  %promoted13 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx12, i32 0, i32 3
  %14 = load i32, i32* %promoted13, align 4
  store i32 %14, i32* %promoted, align 4
  %15 = load i32, i32* %i.addr, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.move_s, %struct.move_s* %16, i64 %idxprom14
  %castled16 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx15, i32 0, i32 4
  %17 = load i32, i32* %castled16, align 4
  store i32 %17, i32* %castled, align 4
  %18 = load i32, i32* @ep_square, align 4
  %19 = load i32, i32* @ply, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i32 0, i64 %idxprom17
  %epsq = getelementptr inbounds %struct.move_x, %struct.move_x* %arrayidx18, i32 0, i32 2
  store i32 %18, i32* %epsq, align 4
  store i32 0, i32* @ep_square, align 4
  %20 = load i32, i32* @fifty, align 4
  %21 = load i32, i32* @ply, align 4
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i32 0, i64 %idxprom19
  %fifty = getelementptr inbounds %struct.move_x, %struct.move_x* %arrayidx20, i32 0, i32 3
  store i32 %20, i32* %fifty, align 4
  %22 = load i32, i32* %from, align 4
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom21
  %23 = load i32, i32* %arrayidx22, align 4
  %cmp = icmp eq i32 %23, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %24 = load i32, i32* %from, align 4
  %idxprom23 = sext i32 %24 to i64
  %arrayidx24 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom23
  %25 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp eq i32 %25, 2
  br i1 %cmp25, label %if.then, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false
  %26 = load i32, i32* %target, align 4
  %idxprom27 = sext i32 %26 to i64
  %arrayidx28 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom27
  %27 = load i32, i32* %arrayidx28, align 4
  %cmp29 = icmp ne i32 %27, 13
  br i1 %cmp29, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.26, %lor.lhs.false, %entry
  store i32 0, i32* @fifty, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.26
  %28 = load i32, i32* @fifty, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* @fifty, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %29 = load i32, i32* %from, align 4
  %cmp30 = icmp eq i32 %29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.57

if.then.31:                                       ; preds = %if.end
  %30 = load i32, i32* @piece_count, align 4
  %inc32 = add nsw i32 %30, 1
  store i32 %inc32, i32* @piece_count, align 4
  store i32 1, i32* %find_slot, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.31
  %31 = load i32, i32* %find_slot, align 4
  %idxprom33 = sext i32 %31 to i64
  %arrayidx34 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom33
  %32 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp ne i32 %32, 0
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %find_slot, align 4
  %inc36 = add nsw i32 %33, 1
  store i32 %inc36, i32* %find_slot, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %target, align 4
  %35 = load i32, i32* %find_slot, align 4
  %idxprom37 = sext i32 %35 to i64
  %arrayidx38 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom37
  store i32 %34, i32* %arrayidx38, align 4
  %36 = load i32, i32* %find_slot, align 4
  %idxprom39 = sext i32 %36 to i64
  %arrayidx40 = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i32 0, i64 %idxprom39
  %37 = load i32, i32* %arrayidx40, align 4
  %38 = load i32, i32* @ply, align 4
  %idxprom41 = sext i32 %38 to i64
  %arrayidx42 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i32 0, i64 %idxprom41
  %was_promoted = getelementptr inbounds %struct.move_x, %struct.move_x* %arrayidx42, i32 0, i32 1
  store i32 %37, i32* %was_promoted, align 4
  %39 = load i32, i32* %find_slot, align 4
  %idxprom43 = sext i32 %39 to i64
  %arrayidx44 = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i32 0, i64 %idxprom43
  store i32 0, i32* %arrayidx44, align 4
  %40 = load i32, i32* %find_slot, align 4
  %41 = load i32, i32* %target, align 4
  %idxprom45 = sext i32 %41 to i64
  %arrayidx46 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom45
  store i32 %40, i32* %arrayidx46, align 4
  %42 = load i32, i32* %promoted, align 4
  %43 = load i32, i32* @white_to_move, align 4
  %tobool = icmp ne i32 %43, 0
  %cond = select i1 %tobool, i32 0, i32 1
  call void @DropremoveHolding(i32 %42, i32 %cond)
  %44 = load i32, i32* %promoted, align 4
  %idxprom47 = sext i32 %44 to i64
  %arrayidx48 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom47
  %45 = load i32, i32* %arrayidx48, align 4
  %46 = load i32, i32* @Material, align 4
  %add = add nsw i32 %46, %45
  store i32 %add, i32* @Material, align 4
  %47 = load i32, i32* %promoted, align 4
  %48 = load i32, i32* %target, align 4
  %idxprom49 = sext i32 %48 to i64
  %arrayidx50 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom49
  store i32 %47, i32* %arrayidx50, align 4
  %49 = load i32, i32* %target, align 4
  %idxprom51 = sext i32 %49 to i64
  %50 = load i32, i32* %promoted, align 4
  %idxprom52 = sext i32 %50 to i64
  %arrayidx53 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom52
  %arrayidx54 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx53, i32 0, i64 %idxprom51
  %51 = load i32, i32* %arrayidx54, align 4
  %52 = load i32, i32* @hash, align 4
  %xor = xor i32 %52, %51
  store i32 %xor, i32* @hash, align 4
  %53 = load i32, i32* @white_to_move, align 4
  %xor55 = xor i32 %53, 1
  store i32 %xor55, i32* @white_to_move, align 4
  %54 = load i32, i32* @ply, align 4
  %inc56 = add nsw i32 %54, 1
  store i32 %inc56, i32* @ply, align 4
  br label %return

if.else.57:                                       ; preds = %if.end
  %55 = load i32, i32* %target, align 4
  %idxprom58 = sext i32 %55 to i64
  %arrayidx59 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom58
  %56 = load i32, i32* %arrayidx59, align 4
  %idxprom60 = sext i32 %56 to i64
  %arrayidx61 = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i32 0, i64 %idxprom60
  %57 = load i32, i32* %arrayidx61, align 4
  %58 = load i32, i32* @ply, align 4
  %idxprom62 = sext i32 %58 to i64
  %arrayidx63 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i32 0, i64 %idxprom62
  %was_promoted64 = getelementptr inbounds %struct.move_x, %struct.move_x* %arrayidx63, i32 0, i32 1
  store i32 %57, i32* %was_promoted64, align 4
  %59 = load i32, i32* %target, align 4
  %idxprom65 = sext i32 %59 to i64
  %arrayidx66 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom65
  %60 = load i32, i32* %arrayidx66, align 4
  %61 = load i32, i32* @ply, align 4
  %idxprom67 = sext i32 %61 to i64
  %arrayidx68 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i32 0, i64 %idxprom67
  %cap_num = getelementptr inbounds %struct.move_x, %struct.move_x* %arrayidx68, i32 0, i32 0
  store i32 %60, i32* %cap_num, align 4
  %62 = load i32, i32* %target, align 4
  %idxprom69 = sext i32 %62 to i64
  %arrayidx70 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom69
  %63 = load i32, i32* %arrayidx70, align 4
  %idxprom71 = sext i32 %63 to i64
  %arrayidx72 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom71
  store i32 0, i32* %arrayidx72, align 4
  %64 = load i32, i32* %target, align 4
  %65 = load i32, i32* %from, align 4
  %idxprom73 = sext i32 %65 to i64
  %arrayidx74 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom73
  %66 = load i32, i32* %arrayidx74, align 4
  %idxprom75 = sext i32 %66 to i64
  %arrayidx76 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom75
  store i32 %64, i32* %arrayidx76, align 4
  %67 = load i32, i32* %from, align 4
  %idxprom77 = sext i32 %67 to i64
  %arrayidx78 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom77
  %68 = load i32, i32* %arrayidx78, align 4
  %69 = load i32, i32* %target, align 4
  %idxprom79 = sext i32 %69 to i64
  %arrayidx80 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom79
  store i32 %68, i32* %arrayidx80, align 4
  %70 = load i32, i32* %from, align 4
  %idxprom81 = sext i32 %70 to i64
  %arrayidx82 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom81
  store i32 0, i32* %arrayidx82, align 4
  %71 = load i32, i32* %ep, align 4
  %tobool83 = icmp ne i32 %71, 0
  br i1 %tobool83, label %if.end.119, label %if.then.84

if.then.84:                                       ; preds = %if.else.57
  %72 = load i32, i32* %target, align 4
  %idxprom85 = sext i32 %72 to i64
  %arrayidx86 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom85
  %73 = load i32, i32* %arrayidx86, align 4
  switch i32 %73, label %sw.default [
    i32 13, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.84
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.84
  %74 = load i32, i32* @Variant, align 4
  %cmp87 = icmp eq i32 %74, 1
  br i1 %cmp87, label %if.then.90, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %sw.default
  %75 = load i32, i32* @Variant, align 4
  %cmp89 = icmp eq i32 %75, 0
  br i1 %cmp89, label %if.then.90, label %if.end.107

if.then.90:                                       ; preds = %lor.lhs.false.88, %sw.default
  %76 = load i32, i32* @ply, align 4
  %idxprom91 = sext i32 %76 to i64
  %arrayidx92 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i32 0, i64 %idxprom91
  %was_promoted93 = getelementptr inbounds %struct.move_x, %struct.move_x* %arrayidx92, i32 0, i32 1
  %77 = load i32, i32* %was_promoted93, align 4
  %tobool94 = icmp ne i32 %77, 0
  br i1 %tobool94, label %if.then.95, label %if.else.100

if.then.95:                                       ; preds = %if.then.90
  %78 = load i32, i32* %target, align 4
  %idxprom96 = sext i32 %78 to i64
  %arrayidx97 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom96
  %79 = load i32, i32* %arrayidx97, align 4
  %call = call i32 @SwitchPromoted(i32 %79)
  %80 = load i32, i32* @white_to_move, align 4
  %tobool98 = icmp ne i32 %80, 0
  %cond99 = select i1 %tobool98, i32 0, i32 1
  call void @addHolding(i32 %call, i32 %cond99)
  br label %if.end.106

if.else.100:                                      ; preds = %if.then.90
  %81 = load i32, i32* %target, align 4
  %idxprom101 = sext i32 %81 to i64
  %arrayidx102 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom101
  %82 = load i32, i32* %arrayidx102, align 4
  %call103 = call i32 @SwitchColor(i32 %82)
  %83 = load i32, i32* @white_to_move, align 4
  %tobool104 = icmp ne i32 %83, 0
  %cond105 = select i1 %tobool104, i32 0, i32 1
  call void @addHolding(i32 %call103, i32 %cond105)
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.100, %if.then.95
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %lor.lhs.false.88
  %84 = load i32, i32* %target, align 4
  %idxprom108 = sext i32 %84 to i64
  %arrayidx109 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom108
  %85 = load i32, i32* %arrayidx109, align 4
  %idxprom110 = sext i32 %85 to i64
  %arrayidx111 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom110
  %86 = load i32, i32* %arrayidx111, align 4
  %87 = load i32, i32* @Material, align 4
  %sub = sub nsw i32 %87, %86
  store i32 %sub, i32* @Material, align 4
  %88 = load i32, i32* %target, align 4
  %idxprom112 = sext i32 %88 to i64
  %89 = load i32, i32* %target, align 4
  %idxprom113 = sext i32 %89 to i64
  %arrayidx114 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom113
  %90 = load i32, i32* %arrayidx114, align 4
  %idxprom115 = sext i32 %90 to i64
  %arrayidx116 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom115
  %arrayidx117 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx116, i32 0, i64 %idxprom112
  %91 = load i32, i32* %arrayidx117, align 4
  %92 = load i32, i32* @hash, align 4
  %xor118 = xor i32 %92, %91
  store i32 %xor118, i32* @hash, align 4
  %93 = load i32, i32* @piece_count, align 4
  %dec = add nsw i32 %93, -1
  store i32 %dec, i32* @piece_count, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.107, %sw.bb
  br label %if.end.119

if.end.119:                                       ; preds = %sw.epilog, %if.else.57
  %94 = load i32, i32* %from, align 4
  %idxprom120 = sext i32 %94 to i64
  %arrayidx121 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom120
  %95 = load i32, i32* %arrayidx121, align 4
  %cmp122 = icmp eq i32 %95, 1
  br i1 %cmp122, label %if.then.123, label %if.end.226

if.then.123:                                      ; preds = %if.end.119
  %96 = load i32, i32* %promoted, align 4
  %tobool124 = icmp ne i32 %96, 0
  br i1 %tobool124, label %if.then.125, label %if.end.154

if.then.125:                                      ; preds = %if.then.123
  %97 = load i32, i32* %promoted, align 4
  %98 = load i32, i32* %target, align 4
  %idxprom126 = sext i32 %98 to i64
  %arrayidx127 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom126
  store i32 %97, i32* %arrayidx127, align 4
  %99 = load i32, i32* %from, align 4
  %idxprom128 = sext i32 %99 to i64
  %arrayidx129 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom128
  store i32 13, i32* %arrayidx129, align 4
  %100 = load i32, i32* %target, align 4
  %idxprom130 = sext i32 %100 to i64
  %arrayidx131 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom130
  %101 = load i32, i32* %arrayidx131, align 4
  %inc132 = add nsw i32 %101, 1
  store i32 %inc132, i32* %arrayidx131, align 4
  %102 = load i32, i32* %from, align 4
  %idxprom133 = sext i32 %102 to i64
  %arrayidx134 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom133
  %103 = load i32, i32* %arrayidx134, align 4
  %inc135 = add nsw i32 %103, 1
  store i32 %inc135, i32* %arrayidx134, align 4
  %104 = load i32, i32* @white_to_move, align 4
  %xor136 = xor i32 %104, 1
  store i32 %xor136, i32* @white_to_move, align 4
  %105 = load i32, i32* %target, align 4
  %idxprom137 = sext i32 %105 to i64
  %arrayidx138 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom137
  %106 = load i32, i32* %arrayidx138, align 4
  %idxprom139 = sext i32 %106 to i64
  %arrayidx140 = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i32 0, i64 %idxprom139
  store i32 1, i32* %arrayidx140, align 4
  %107 = load i32, i32* %from, align 4
  %idxprom141 = sext i32 %107 to i64
  %arrayidx142 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 1), i32 0, i64 %idxprom141
  %108 = load i32, i32* %arrayidx142, align 4
  %109 = load i32, i32* @hash, align 4
  %xor143 = xor i32 %109, %108
  store i32 %xor143, i32* @hash, align 4
  %110 = load i32, i32* %target, align 4
  %idxprom144 = sext i32 %110 to i64
  %111 = load i32, i32* %promoted, align 4
  %idxprom145 = sext i32 %111 to i64
  %arrayidx146 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom145
  %arrayidx147 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx146, i32 0, i64 %idxprom144
  %112 = load i32, i32* %arrayidx147, align 4
  %113 = load i32, i32* @hash, align 4
  %xor148 = xor i32 %113, %112
  store i32 %xor148, i32* @hash, align 4
  %114 = load i32, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @material, i32 0, i64 1), align 4
  %115 = load i32, i32* @Material, align 4
  %sub149 = sub nsw i32 %115, %114
  store i32 %sub149, i32* @Material, align 4
  %116 = load i32, i32* %promoted, align 4
  %idxprom150 = sext i32 %116 to i64
  %arrayidx151 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom150
  %117 = load i32, i32* %arrayidx151, align 4
  %118 = load i32, i32* @Material, align 4
  %add152 = add nsw i32 %118, %117
  store i32 %add152, i32* @Material, align 4
  %119 = load i32, i32* @ply, align 4
  %inc153 = add nsw i32 %119, 1
  store i32 %inc153, i32* @ply, align 4
  br label %return

if.end.154:                                       ; preds = %if.then.123
  %120 = load i32, i32* %ep, align 4
  %tobool155 = icmp ne i32 %120, 0
  br i1 %tobool155, label %if.then.156, label %if.end.202

if.then.156:                                      ; preds = %if.end.154
  %121 = load i32, i32* %from, align 4
  %idxprom157 = sext i32 %121 to i64
  %arrayidx158 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 1), i32 0, i64 %idxprom157
  %122 = load i32, i32* %arrayidx158, align 4
  %123 = load i32, i32* @hash, align 4
  %xor159 = xor i32 %123, %122
  store i32 %xor159, i32* @hash, align 4
  %124 = load i32, i32* %target, align 4
  %sub160 = sub nsw i32 %124, 12
  %idxprom161 = sext i32 %sub160 to i64
  %arrayidx162 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 2), i32 0, i64 %idxprom161
  %125 = load i32, i32* %arrayidx162, align 4
  %126 = load i32, i32* @hash, align 4
  %xor163 = xor i32 %126, %125
  store i32 %xor163, i32* @hash, align 4
  %127 = load i32, i32* %target, align 4
  %idxprom164 = sext i32 %127 to i64
  %arrayidx165 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 1), i32 0, i64 %idxprom164
  %128 = load i32, i32* %arrayidx165, align 4
  %129 = load i32, i32* @hash, align 4
  %xor166 = xor i32 %129, %128
  store i32 %xor166, i32* @hash, align 4
  %130 = load i32, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @material, i32 0, i64 2), align 4
  %131 = load i32, i32* @Material, align 4
  %sub167 = sub nsw i32 %131, %130
  store i32 %sub167, i32* @Material, align 4
  %132 = load i32, i32* %target, align 4
  %idxprom168 = sext i32 %132 to i64
  %arrayidx169 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom168
  store i32 1, i32* %arrayidx169, align 4
  %133 = load i32, i32* %from, align 4
  %idxprom170 = sext i32 %133 to i64
  %arrayidx171 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom170
  store i32 13, i32* %arrayidx171, align 4
  call void @addHolding(i32 1, i32 0)
  %134 = load i32, i32* @piece_count, align 4
  %dec172 = add nsw i32 %134, -1
  store i32 %dec172, i32* @piece_count, align 4
  %135 = load i32, i32* %target, align 4
  %sub173 = sub nsw i32 %135, 12
  %idxprom174 = sext i32 %sub173 to i64
  %arrayidx175 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom174
  store i32 13, i32* %arrayidx175, align 4
  %136 = load i32, i32* %target, align 4
  %idxprom176 = sext i32 %136 to i64
  %arrayidx177 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom176
  %137 = load i32, i32* %arrayidx177, align 4
  %inc178 = add nsw i32 %137, 1
  store i32 %inc178, i32* %arrayidx177, align 4
  %138 = load i32, i32* %from, align 4
  %idxprom179 = sext i32 %138 to i64
  %arrayidx180 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom179
  %139 = load i32, i32* %arrayidx180, align 4
  %inc181 = add nsw i32 %139, 1
  store i32 %inc181, i32* %arrayidx180, align 4
  %140 = load i32, i32* %target, align 4
  %sub182 = sub nsw i32 %140, 12
  %idxprom183 = sext i32 %sub182 to i64
  %arrayidx184 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom183
  %141 = load i32, i32* %arrayidx184, align 4
  %inc185 = add nsw i32 %141, 1
  store i32 %inc185, i32* %arrayidx184, align 4
  %142 = load i32, i32* @white_to_move, align 4
  %xor186 = xor i32 %142, 1
  store i32 %xor186, i32* @white_to_move, align 4
  %143 = load i32, i32* %target, align 4
  %sub187 = sub nsw i32 %143, 12
  %idxprom188 = sext i32 %sub187 to i64
  %arrayidx189 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom188
  %144 = load i32, i32* %arrayidx189, align 4
  %145 = load i32, i32* @ply, align 4
  %idxprom190 = sext i32 %145 to i64
  %arrayidx191 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i32 0, i64 %idxprom190
  %cap_num192 = getelementptr inbounds %struct.move_x, %struct.move_x* %arrayidx191, i32 0, i32 0
  store i32 %144, i32* %cap_num192, align 4
  %146 = load i32, i32* %target, align 4
  %sub193 = sub nsw i32 %146, 12
  %idxprom194 = sext i32 %sub193 to i64
  %arrayidx195 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom194
  %147 = load i32, i32* %arrayidx195, align 4
  %idxprom196 = sext i32 %147 to i64
  %arrayidx197 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom196
  store i32 0, i32* %arrayidx197, align 4
  %148 = load i32, i32* %target, align 4
  %sub198 = sub nsw i32 %148, 12
  %idxprom199 = sext i32 %sub198 to i64
  %arrayidx200 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom199
  store i32 0, i32* %arrayidx200, align 4
  %149 = load i32, i32* @ply, align 4
  %inc201 = add nsw i32 %149, 1
  store i32 %inc201, i32* @ply, align 4
  br label %return

if.end.202:                                       ; preds = %if.end.154
  %150 = load i32, i32* %target, align 4
  %151 = load i32, i32* %from, align 4
  %add203 = add nsw i32 %151, 24
  %cmp204 = icmp eq i32 %150, %add203
  br i1 %cmp204, label %if.then.205, label %if.end.207

if.then.205:                                      ; preds = %if.end.202
  %152 = load i32, i32* %from, align 4
  %add206 = add nsw i32 %152, 12
  store i32 %add206, i32* @ep_square, align 4
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.205, %if.end.202
  %153 = load i32, i32* %from, align 4
  %idxprom208 = sext i32 %153 to i64
  %arrayidx209 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 1), i32 0, i64 %idxprom208
  %154 = load i32, i32* %arrayidx209, align 4
  %155 = load i32, i32* @hash, align 4
  %xor210 = xor i32 %155, %154
  store i32 %xor210, i32* @hash, align 4
  %156 = load i32, i32* %target, align 4
  %idxprom211 = sext i32 %156 to i64
  %arrayidx212 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 1), i32 0, i64 %idxprom211
  %157 = load i32, i32* %arrayidx212, align 4
  %158 = load i32, i32* @hash, align 4
  %xor213 = xor i32 %158, %157
  store i32 %xor213, i32* @hash, align 4
  %159 = load i32, i32* %target, align 4
  %idxprom214 = sext i32 %159 to i64
  %arrayidx215 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom214
  store i32 1, i32* %arrayidx215, align 4
  %160 = load i32, i32* %from, align 4
  %idxprom216 = sext i32 %160 to i64
  %arrayidx217 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom216
  store i32 13, i32* %arrayidx217, align 4
  %161 = load i32, i32* %target, align 4
  %idxprom218 = sext i32 %161 to i64
  %arrayidx219 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom218
  %162 = load i32, i32* %arrayidx219, align 4
  %inc220 = add nsw i32 %162, 1
  store i32 %inc220, i32* %arrayidx219, align 4
  %163 = load i32, i32* %from, align 4
  %idxprom221 = sext i32 %163 to i64
  %arrayidx222 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom221
  %164 = load i32, i32* %arrayidx222, align 4
  %inc223 = add nsw i32 %164, 1
  store i32 %inc223, i32* %arrayidx222, align 4
  %165 = load i32, i32* @white_to_move, align 4
  %xor224 = xor i32 %165, 1
  store i32 %xor224, i32* @white_to_move, align 4
  %166 = load i32, i32* @ply, align 4
  %inc225 = add nsw i32 %166, 1
  store i32 %inc225, i32* @ply, align 4
  br label %return

if.end.226:                                       ; preds = %if.end.119
  %167 = load i32, i32* %from, align 4
  %idxprom227 = sext i32 %167 to i64
  %arrayidx228 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom227
  %168 = load i32, i32* %arrayidx228, align 4
  %cmp229 = icmp eq i32 %168, 2
  br i1 %cmp229, label %if.then.230, label %if.end.333

if.then.230:                                      ; preds = %if.end.226
  %169 = load i32, i32* %promoted, align 4
  %tobool231 = icmp ne i32 %169, 0
  br i1 %tobool231, label %if.then.232, label %if.end.261

if.then.232:                                      ; preds = %if.then.230
  %170 = load i32, i32* %promoted, align 4
  %171 = load i32, i32* %target, align 4
  %idxprom233 = sext i32 %171 to i64
  %arrayidx234 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom233
  store i32 %170, i32* %arrayidx234, align 4
  %172 = load i32, i32* %from, align 4
  %idxprom235 = sext i32 %172 to i64
  %arrayidx236 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom235
  store i32 13, i32* %arrayidx236, align 4
  %173 = load i32, i32* %target, align 4
  %idxprom237 = sext i32 %173 to i64
  %arrayidx238 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom237
  %174 = load i32, i32* %arrayidx238, align 4
  %inc239 = add nsw i32 %174, 1
  store i32 %inc239, i32* %arrayidx238, align 4
  %175 = load i32, i32* %from, align 4
  %idxprom240 = sext i32 %175 to i64
  %arrayidx241 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom240
  %176 = load i32, i32* %arrayidx241, align 4
  %inc242 = add nsw i32 %176, 1
  store i32 %inc242, i32* %arrayidx241, align 4
  %177 = load i32, i32* @white_to_move, align 4
  %xor243 = xor i32 %177, 1
  store i32 %xor243, i32* @white_to_move, align 4
  %178 = load i32, i32* %target, align 4
  %idxprom244 = sext i32 %178 to i64
  %arrayidx245 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom244
  %179 = load i32, i32* %arrayidx245, align 4
  %idxprom246 = sext i32 %179 to i64
  %arrayidx247 = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i32 0, i64 %idxprom246
  store i32 1, i32* %arrayidx247, align 4
  %180 = load i32, i32* %from, align 4
  %idxprom248 = sext i32 %180 to i64
  %arrayidx249 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 2), i32 0, i64 %idxprom248
  %181 = load i32, i32* %arrayidx249, align 4
  %182 = load i32, i32* @hash, align 4
  %xor250 = xor i32 %182, %181
  store i32 %xor250, i32* @hash, align 4
  %183 = load i32, i32* %target, align 4
  %idxprom251 = sext i32 %183 to i64
  %184 = load i32, i32* %promoted, align 4
  %idxprom252 = sext i32 %184 to i64
  %arrayidx253 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom252
  %arrayidx254 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx253, i32 0, i64 %idxprom251
  %185 = load i32, i32* %arrayidx254, align 4
  %186 = load i32, i32* @hash, align 4
  %xor255 = xor i32 %186, %185
  store i32 %xor255, i32* @hash, align 4
  %187 = load i32, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @material, i32 0, i64 2), align 4
  %188 = load i32, i32* @Material, align 4
  %sub256 = sub nsw i32 %188, %187
  store i32 %sub256, i32* @Material, align 4
  %189 = load i32, i32* %promoted, align 4
  %idxprom257 = sext i32 %189 to i64
  %arrayidx258 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom257
  %190 = load i32, i32* %arrayidx258, align 4
  %191 = load i32, i32* @Material, align 4
  %add259 = add nsw i32 %191, %190
  store i32 %add259, i32* @Material, align 4
  %192 = load i32, i32* @ply, align 4
  %inc260 = add nsw i32 %192, 1
  store i32 %inc260, i32* @ply, align 4
  br label %return

if.end.261:                                       ; preds = %if.then.230
  %193 = load i32, i32* %ep, align 4
  %tobool262 = icmp ne i32 %193, 0
  br i1 %tobool262, label %if.then.263, label %if.end.309

if.then.263:                                      ; preds = %if.end.261
  %194 = load i32, i32* %from, align 4
  %idxprom264 = sext i32 %194 to i64
  %arrayidx265 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 2), i32 0, i64 %idxprom264
  %195 = load i32, i32* %arrayidx265, align 4
  %196 = load i32, i32* @hash, align 4
  %xor266 = xor i32 %196, %195
  store i32 %xor266, i32* @hash, align 4
  %197 = load i32, i32* %target, align 4
  %add267 = add nsw i32 %197, 12
  %idxprom268 = sext i32 %add267 to i64
  %arrayidx269 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 1), i32 0, i64 %idxprom268
  %198 = load i32, i32* %arrayidx269, align 4
  %199 = load i32, i32* @hash, align 4
  %xor270 = xor i32 %199, %198
  store i32 %xor270, i32* @hash, align 4
  %200 = load i32, i32* %target, align 4
  %idxprom271 = sext i32 %200 to i64
  %arrayidx272 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 2), i32 0, i64 %idxprom271
  %201 = load i32, i32* %arrayidx272, align 4
  %202 = load i32, i32* @hash, align 4
  %xor273 = xor i32 %202, %201
  store i32 %xor273, i32* @hash, align 4
  %203 = load i32, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @material, i32 0, i64 1), align 4
  %204 = load i32, i32* @Material, align 4
  %sub274 = sub nsw i32 %204, %203
  store i32 %sub274, i32* @Material, align 4
  %205 = load i32, i32* %target, align 4
  %idxprom275 = sext i32 %205 to i64
  %arrayidx276 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom275
  store i32 2, i32* %arrayidx276, align 4
  %206 = load i32, i32* %from, align 4
  %idxprom277 = sext i32 %206 to i64
  %arrayidx278 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom277
  store i32 13, i32* %arrayidx278, align 4
  call void @addHolding(i32 2, i32 1)
  %207 = load i32, i32* @piece_count, align 4
  %dec279 = add nsw i32 %207, -1
  store i32 %dec279, i32* @piece_count, align 4
  %208 = load i32, i32* %target, align 4
  %add280 = add nsw i32 %208, 12
  %idxprom281 = sext i32 %add280 to i64
  %arrayidx282 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom281
  store i32 13, i32* %arrayidx282, align 4
  %209 = load i32, i32* %target, align 4
  %idxprom283 = sext i32 %209 to i64
  %arrayidx284 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom283
  %210 = load i32, i32* %arrayidx284, align 4
  %inc285 = add nsw i32 %210, 1
  store i32 %inc285, i32* %arrayidx284, align 4
  %211 = load i32, i32* %from, align 4
  %idxprom286 = sext i32 %211 to i64
  %arrayidx287 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom286
  %212 = load i32, i32* %arrayidx287, align 4
  %inc288 = add nsw i32 %212, 1
  store i32 %inc288, i32* %arrayidx287, align 4
  %213 = load i32, i32* %target, align 4
  %add289 = add nsw i32 %213, 12
  %idxprom290 = sext i32 %add289 to i64
  %arrayidx291 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom290
  %214 = load i32, i32* %arrayidx291, align 4
  %inc292 = add nsw i32 %214, 1
  store i32 %inc292, i32* %arrayidx291, align 4
  %215 = load i32, i32* @white_to_move, align 4
  %xor293 = xor i32 %215, 1
  store i32 %xor293, i32* @white_to_move, align 4
  %216 = load i32, i32* %target, align 4
  %add294 = add nsw i32 %216, 12
  %idxprom295 = sext i32 %add294 to i64
  %arrayidx296 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom295
  %217 = load i32, i32* %arrayidx296, align 4
  %218 = load i32, i32* @ply, align 4
  %idxprom297 = sext i32 %218 to i64
  %arrayidx298 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i32 0, i64 %idxprom297
  %cap_num299 = getelementptr inbounds %struct.move_x, %struct.move_x* %arrayidx298, i32 0, i32 0
  store i32 %217, i32* %cap_num299, align 4
  %219 = load i32, i32* %target, align 4
  %add300 = add nsw i32 %219, 12
  %idxprom301 = sext i32 %add300 to i64
  %arrayidx302 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom301
  %220 = load i32, i32* %arrayidx302, align 4
  %idxprom303 = sext i32 %220 to i64
  %arrayidx304 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom303
  store i32 0, i32* %arrayidx304, align 4
  %221 = load i32, i32* %target, align 4
  %add305 = add nsw i32 %221, 12
  %idxprom306 = sext i32 %add305 to i64
  %arrayidx307 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom306
  store i32 0, i32* %arrayidx307, align 4
  %222 = load i32, i32* @ply, align 4
  %inc308 = add nsw i32 %222, 1
  store i32 %inc308, i32* @ply, align 4
  br label %return

if.end.309:                                       ; preds = %if.end.261
  %223 = load i32, i32* %target, align 4
  %224 = load i32, i32* %from, align 4
  %sub310 = sub nsw i32 %224, 24
  %cmp311 = icmp eq i32 %223, %sub310
  br i1 %cmp311, label %if.then.312, label %if.end.314

if.then.312:                                      ; preds = %if.end.309
  %225 = load i32, i32* %from, align 4
  %sub313 = sub nsw i32 %225, 12
  store i32 %sub313, i32* @ep_square, align 4
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.312, %if.end.309
  %226 = load i32, i32* %target, align 4
  %idxprom315 = sext i32 %226 to i64
  %arrayidx316 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom315
  store i32 2, i32* %arrayidx316, align 4
  %227 = load i32, i32* %from, align 4
  %idxprom317 = sext i32 %227 to i64
  %arrayidx318 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom317
  store i32 13, i32* %arrayidx318, align 4
  %228 = load i32, i32* %target, align 4
  %idxprom319 = sext i32 %228 to i64
  %arrayidx320 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom319
  %229 = load i32, i32* %arrayidx320, align 4
  %inc321 = add nsw i32 %229, 1
  store i32 %inc321, i32* %arrayidx320, align 4
  %230 = load i32, i32* %from, align 4
  %idxprom322 = sext i32 %230 to i64
  %arrayidx323 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom322
  %231 = load i32, i32* %arrayidx323, align 4
  %inc324 = add nsw i32 %231, 1
  store i32 %inc324, i32* %arrayidx323, align 4
  %232 = load i32, i32* @white_to_move, align 4
  %xor325 = xor i32 %232, 1
  store i32 %xor325, i32* @white_to_move, align 4
  %233 = load i32, i32* %from, align 4
  %idxprom326 = sext i32 %233 to i64
  %arrayidx327 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 2), i32 0, i64 %idxprom326
  %234 = load i32, i32* %arrayidx327, align 4
  %235 = load i32, i32* @hash, align 4
  %xor328 = xor i32 %235, %234
  store i32 %xor328, i32* @hash, align 4
  %236 = load i32, i32* %target, align 4
  %idxprom329 = sext i32 %236 to i64
  %arrayidx330 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 2), i32 0, i64 %idxprom329
  %237 = load i32, i32* %arrayidx330, align 4
  %238 = load i32, i32* @hash, align 4
  %xor331 = xor i32 %238, %237
  store i32 %xor331, i32* @hash, align 4
  %239 = load i32, i32* @ply, align 4
  %inc332 = add nsw i32 %239, 1
  store i32 %inc332, i32* @ply, align 4
  br label %return

if.end.333:                                       ; preds = %if.end.226
  %240 = load i32, i32* %from, align 4
  %idxprom334 = sext i32 %240 to i64
  %arrayidx335 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom334
  %241 = load i32, i32* %arrayidx335, align 4
  %cmp336 = icmp ne i32 %241, 5
  br i1 %cmp336, label %land.lhs.true, label %if.end.369

land.lhs.true:                                    ; preds = %if.end.333
  %242 = load i32, i32* %from, align 4
  %idxprom337 = sext i32 %242 to i64
  %arrayidx338 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom337
  %243 = load i32, i32* %arrayidx338, align 4
  %cmp339 = icmp ne i32 %243, 6
  br i1 %cmp339, label %if.then.340, label %if.end.369

if.then.340:                                      ; preds = %land.lhs.true
  %244 = load i32, i32* %from, align 4
  %idxprom341 = sext i32 %244 to i64
  %245 = load i32, i32* %from, align 4
  %idxprom342 = sext i32 %245 to i64
  %arrayidx343 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom342
  %246 = load i32, i32* %arrayidx343, align 4
  %idxprom344 = sext i32 %246 to i64
  %arrayidx345 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom344
  %arrayidx346 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx345, i32 0, i64 %idxprom341
  %247 = load i32, i32* %arrayidx346, align 4
  %248 = load i32, i32* @hash, align 4
  %xor347 = xor i32 %248, %247
  store i32 %xor347, i32* @hash, align 4
  %249 = load i32, i32* %target, align 4
  %idxprom348 = sext i32 %249 to i64
  %250 = load i32, i32* %from, align 4
  %idxprom349 = sext i32 %250 to i64
  %arrayidx350 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom349
  %251 = load i32, i32* %arrayidx350, align 4
  %idxprom351 = sext i32 %251 to i64
  %arrayidx352 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom351
  %arrayidx353 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx352, i32 0, i64 %idxprom348
  %252 = load i32, i32* %arrayidx353, align 4
  %253 = load i32, i32* @hash, align 4
  %xor354 = xor i32 %253, %252
  store i32 %xor354, i32* @hash, align 4
  %254 = load i32, i32* %from, align 4
  %idxprom355 = sext i32 %254 to i64
  %arrayidx356 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom355
  %255 = load i32, i32* %arrayidx356, align 4
  %256 = load i32, i32* %target, align 4
  %idxprom357 = sext i32 %256 to i64
  %arrayidx358 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom357
  store i32 %255, i32* %arrayidx358, align 4
  %257 = load i32, i32* %from, align 4
  %idxprom359 = sext i32 %257 to i64
  %arrayidx360 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom359
  store i32 13, i32* %arrayidx360, align 4
  %258 = load i32, i32* %target, align 4
  %idxprom361 = sext i32 %258 to i64
  %arrayidx362 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom361
  %259 = load i32, i32* %arrayidx362, align 4
  %inc363 = add nsw i32 %259, 1
  store i32 %inc363, i32* %arrayidx362, align 4
  %260 = load i32, i32* %from, align 4
  %idxprom364 = sext i32 %260 to i64
  %arrayidx365 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom364
  %261 = load i32, i32* %arrayidx365, align 4
  %inc366 = add nsw i32 %261, 1
  store i32 %inc366, i32* %arrayidx365, align 4
  %262 = load i32, i32* @white_to_move, align 4
  %xor367 = xor i32 %262, 1
  store i32 %xor367, i32* @white_to_move, align 4
  %263 = load i32, i32* @ply, align 4
  %inc368 = add nsw i32 %263, 1
  store i32 %inc368, i32* @ply, align 4
  br label %return

if.end.369:                                       ; preds = %land.lhs.true, %if.end.333
  %264 = load i32, i32* %from, align 4
  %idxprom370 = sext i32 %264 to i64
  %arrayidx371 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom370
  %265 = load i32, i32* %arrayidx371, align 4
  %cmp372 = icmp eq i32 %265, 5
  br i1 %cmp372, label %if.then.373, label %if.else.413

if.then.373:                                      ; preds = %if.end.369
  %266 = load i32, i32* %target, align 4
  store i32 %266, i32* @wking_loc, align 4
  %267 = load i32, i32* %target, align 4
  %idxprom374 = sext i32 %267 to i64
  %arrayidx375 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom374
  store i32 5, i32* %arrayidx375, align 4
  %268 = load i32, i32* %from, align 4
  %idxprom376 = sext i32 %268 to i64
  %arrayidx377 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom376
  store i32 13, i32* %arrayidx377, align 4
  %269 = load i32, i32* %target, align 4
  %idxprom378 = sext i32 %269 to i64
  %arrayidx379 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom378
  %270 = load i32, i32* %arrayidx379, align 4
  %inc380 = add nsw i32 %270, 1
  store i32 %inc380, i32* %arrayidx379, align 4
  %271 = load i32, i32* %from, align 4
  %idxprom381 = sext i32 %271 to i64
  %arrayidx382 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom381
  %272 = load i32, i32* %arrayidx382, align 4
  %inc383 = add nsw i32 %272, 1
  store i32 %inc383, i32* %arrayidx382, align 4
  %273 = load i32, i32* @white_to_move, align 4
  %xor384 = xor i32 %273, 1
  store i32 %xor384, i32* @white_to_move, align 4
  %274 = load i32, i32* %from, align 4
  %idxprom385 = sext i32 %274 to i64
  %arrayidx386 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 5), i32 0, i64 %idxprom385
  %275 = load i32, i32* %arrayidx386, align 4
  %276 = load i32, i32* @hash, align 4
  %xor387 = xor i32 %276, %275
  store i32 %xor387, i32* @hash, align 4
  %277 = load i32, i32* %target, align 4
  %idxprom388 = sext i32 %277 to i64
  %arrayidx389 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 5), i32 0, i64 %idxprom388
  %278 = load i32, i32* %arrayidx389, align 4
  %279 = load i32, i32* @hash, align 4
  %xor390 = xor i32 %279, %278
  store i32 %xor390, i32* @hash, align 4
  %280 = load i32, i32* %castled, align 4
  %cmp391 = icmp eq i32 %280, 1
  br i1 %cmp391, label %if.then.392, label %if.else.400

if.then.392:                                      ; preds = %if.then.373
  store i32 13, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 33), align 4
  store i32 7, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 31), align 4
  %281 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 33), align 4
  %inc393 = add nsw i32 %281, 1
  store i32 %inc393, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 33), align 4
  %282 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 31), align 4
  %inc394 = add nsw i32 %282, 1
  store i32 %inc394, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 31), align 4
  store i32 1, i32* @white_castled, align 4
  %283 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 33), align 4
  %idxprom395 = sext i32 %283 to i64
  %arrayidx396 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom395
  store i32 31, i32* %arrayidx396, align 4
  %284 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 33), align 4
  store i32 %284, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 31), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 33), align 4
  %285 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 7, i64 33), align 4
  %286 = load i32, i32* @hash, align 4
  %xor397 = xor i32 %286, %285
  store i32 %xor397, i32* @hash, align 4
  %287 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 7, i64 31), align 4
  %288 = load i32, i32* @hash, align 4
  %xor398 = xor i32 %288, %287
  store i32 %xor398, i32* @hash, align 4
  %289 = load i32, i32* @ply, align 4
  %inc399 = add nsw i32 %289, 1
  store i32 %inc399, i32* @ply, align 4
  br label %return

if.else.400:                                      ; preds = %if.then.373
  %290 = load i32, i32* %castled, align 4
  %cmp401 = icmp eq i32 %290, 2
  br i1 %cmp401, label %if.then.402, label %if.end.410

if.then.402:                                      ; preds = %if.else.400
  store i32 13, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 26), align 4
  store i32 7, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 29), align 4
  %291 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 26), align 4
  %inc403 = add nsw i32 %291, 1
  store i32 %inc403, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 26), align 4
  %292 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 29), align 4
  %inc404 = add nsw i32 %292, 1
  store i32 %inc404, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 29), align 4
  store i32 2, i32* @white_castled, align 4
  %293 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 26), align 4
  %idxprom405 = sext i32 %293 to i64
  %arrayidx406 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom405
  store i32 29, i32* %arrayidx406, align 4
  %294 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 26), align 4
  store i32 %294, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 29), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 26), align 4
  %295 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 7, i64 26), align 4
  %296 = load i32, i32* @hash, align 4
  %xor407 = xor i32 %296, %295
  store i32 %xor407, i32* @hash, align 4
  %297 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 7, i64 29), align 4
  %298 = load i32, i32* @hash, align 4
  %xor408 = xor i32 %298, %297
  store i32 %xor408, i32* @hash, align 4
  %299 = load i32, i32* @ply, align 4
  %inc409 = add nsw i32 %299, 1
  store i32 %inc409, i32* @ply, align 4
  br label %return

if.end.410:                                       ; preds = %if.else.400
  br label %if.end.411

if.end.411:                                       ; preds = %if.end.410
  %300 = load i32, i32* @ply, align 4
  %inc412 = add nsw i32 %300, 1
  store i32 %inc412, i32* @ply, align 4
  br label %return

if.else.413:                                      ; preds = %if.end.369
  %301 = load i32, i32* %target, align 4
  store i32 %301, i32* @bking_loc, align 4
  %302 = load i32, i32* %target, align 4
  %idxprom414 = sext i32 %302 to i64
  %arrayidx415 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom414
  store i32 6, i32* %arrayidx415, align 4
  %303 = load i32, i32* %from, align 4
  %idxprom416 = sext i32 %303 to i64
  %arrayidx417 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom416
  store i32 13, i32* %arrayidx417, align 4
  %304 = load i32, i32* %target, align 4
  %idxprom418 = sext i32 %304 to i64
  %arrayidx419 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom418
  %305 = load i32, i32* %arrayidx419, align 4
  %inc420 = add nsw i32 %305, 1
  store i32 %inc420, i32* %arrayidx419, align 4
  %306 = load i32, i32* %from, align 4
  %idxprom421 = sext i32 %306 to i64
  %arrayidx422 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom421
  %307 = load i32, i32* %arrayidx422, align 4
  %inc423 = add nsw i32 %307, 1
  store i32 %inc423, i32* %arrayidx422, align 4
  %308 = load i32, i32* @white_to_move, align 4
  %xor424 = xor i32 %308, 1
  store i32 %xor424, i32* @white_to_move, align 4
  %309 = load i32, i32* %from, align 4
  %idxprom425 = sext i32 %309 to i64
  %arrayidx426 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 6), i32 0, i64 %idxprom425
  %310 = load i32, i32* %arrayidx426, align 4
  %311 = load i32, i32* @hash, align 4
  %xor427 = xor i32 %311, %310
  store i32 %xor427, i32* @hash, align 4
  %312 = load i32, i32* %target, align 4
  %idxprom428 = sext i32 %312 to i64
  %arrayidx429 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 6), i32 0, i64 %idxprom428
  %313 = load i32, i32* %arrayidx429, align 4
  %314 = load i32, i32* @hash, align 4
  %xor430 = xor i32 %314, %313
  store i32 %xor430, i32* @hash, align 4
  %315 = load i32, i32* %castled, align 4
  %cmp431 = icmp eq i32 %315, 3
  br i1 %cmp431, label %if.then.432, label %if.else.440

if.then.432:                                      ; preds = %if.else.413
  store i32 13, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 117), align 4
  store i32 8, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 115), align 4
  %316 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 117), align 4
  %inc433 = add nsw i32 %316, 1
  store i32 %inc433, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 117), align 4
  %317 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 115), align 4
  %inc434 = add nsw i32 %317, 1
  store i32 %inc434, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 115), align 4
  store i32 3, i32* @black_castled, align 4
  %318 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 117), align 4
  %idxprom435 = sext i32 %318 to i64
  %arrayidx436 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom435
  store i32 115, i32* %arrayidx436, align 4
  %319 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 117), align 4
  store i32 %319, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 115), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 117), align 4
  %320 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 8, i64 117), align 4
  %321 = load i32, i32* @hash, align 4
  %xor437 = xor i32 %321, %320
  store i32 %xor437, i32* @hash, align 4
  %322 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 8, i64 115), align 4
  %323 = load i32, i32* @hash, align 4
  %xor438 = xor i32 %323, %322
  store i32 %xor438, i32* @hash, align 4
  %324 = load i32, i32* @ply, align 4
  %inc439 = add nsw i32 %324, 1
  store i32 %inc439, i32* @ply, align 4
  br label %return

if.else.440:                                      ; preds = %if.else.413
  %325 = load i32, i32* %castled, align 4
  %cmp441 = icmp eq i32 %325, 4
  br i1 %cmp441, label %if.then.442, label %if.end.450

if.then.442:                                      ; preds = %if.else.440
  store i32 13, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 110), align 4
  store i32 8, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 113), align 4
  %326 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 110), align 4
  %inc443 = add nsw i32 %326, 1
  store i32 %inc443, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 110), align 4
  %327 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 113), align 4
  %inc444 = add nsw i32 %327, 1
  store i32 %inc444, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 113), align 4
  store i32 4, i32* @black_castled, align 4
  %328 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 110), align 4
  %idxprom445 = sext i32 %328 to i64
  %arrayidx446 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom445
  store i32 113, i32* %arrayidx446, align 4
  %329 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 110), align 4
  store i32 %329, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 113), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 110), align 4
  %330 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 8, i64 110), align 4
  %331 = load i32, i32* @hash, align 4
  %xor447 = xor i32 %331, %330
  store i32 %xor447, i32* @hash, align 4
  %332 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 8, i64 113), align 4
  %333 = load i32, i32* @hash, align 4
  %xor448 = xor i32 %333, %332
  store i32 %xor448, i32* @hash, align 4
  %334 = load i32, i32* @ply, align 4
  %inc449 = add nsw i32 %334, 1
  store i32 %inc449, i32* @ply, align 4
  br label %return

if.end.450:                                       ; preds = %if.else.440
  br label %if.end.451

if.end.451:                                       ; preds = %if.end.450
  br label %if.end.452

if.end.452:                                       ; preds = %if.end.451
  %335 = load i32, i32* @ply, align 4
  %inc453 = add nsw i32 %335, 1
  store i32 %inc453, i32* @ply, align 4
  br label %return

return:                                           ; preds = %if.end.452, %if.then.442, %if.then.432, %if.end.411, %if.then.402, %if.then.392, %if.then.340, %if.end.314, %if.then.263, %if.then.232, %if.end.207, %if.then.156, %if.then.125, %for.end
  ret void
}

declare void @DropremoveHolding(i32, i32) #1

declare void @addHolding(i32, i32) #1

declare i32 @SwitchPromoted(i32) #1

declare i32 @SwitchColor(i32) #1

; Function Attrs: nounwind uwtable
define void @add_move(i32 %Ptarget, i32 %Ppromoted) #0 {
entry:
  %Ptarget.addr = alloca i32, align 4
  %Ppromoted.addr = alloca i32, align 4
  store i32 %Ptarget, i32* %Ptarget.addr, align 4
  store i32 %Ppromoted, i32* %Ppromoted.addr, align 4
  %0 = load i32, i32* @gfrom, align 4
  %1 = load i32, i32* @numb_moves, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx = getelementptr inbounds %struct.move_s, %struct.move_s* %2, i64 %idxprom
  %from = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx, i32 0, i32 0
  store i32 %0, i32* %from, align 4
  %3 = load i32, i32* %Ptarget.addr, align 4
  %4 = load i32, i32* @numb_moves, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx2 = getelementptr inbounds %struct.move_s, %struct.move_s* %5, i64 %idxprom1
  %target = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx2, i32 0, i32 1
  store i32 %3, i32* %target, align 4
  %6 = load i32, i32* @numb_moves, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx4 = getelementptr inbounds %struct.move_s, %struct.move_s* %7, i64 %idxprom3
  %captured = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx4, i32 0, i32 2
  store i32 13, i32* %captured, align 4
  %8 = load i32, i32* @numb_moves, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx6 = getelementptr inbounds %struct.move_s, %struct.move_s* %9, i64 %idxprom5
  %castled = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx6, i32 0, i32 4
  store i32 0, i32* %castled, align 4
  %10 = load i32, i32* %Ppromoted.addr, align 4
  %11 = load i32, i32* @numb_moves, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx8 = getelementptr inbounds %struct.move_s, %struct.move_s* %12, i64 %idxprom7
  %promoted = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx8, i32 0, i32 3
  store i32 %10, i32* %promoted, align 4
  %13 = load i32, i32* @numb_moves, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx10 = getelementptr inbounds %struct.move_s, %struct.move_s* %14, i64 %idxprom9
  %ep = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx10, i32 0, i32 5
  store i32 0, i32* %ep, align 4
  %15 = load i32, i32* @numb_moves, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* @numb_moves, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_capture(i32 %Ptarget, i32 %Pcaptured, i32 %Ppromoted, i32 %Pep) #0 {
entry:
  %Ptarget.addr = alloca i32, align 4
  %Pcaptured.addr = alloca i32, align 4
  %Ppromoted.addr = alloca i32, align 4
  %Pep.addr = alloca i32, align 4
  store i32 %Ptarget, i32* %Ptarget.addr, align 4
  store i32 %Pcaptured, i32* %Pcaptured.addr, align 4
  store i32 %Ppromoted, i32* %Ppromoted.addr, align 4
  store i32 %Pep, i32* %Pep.addr, align 4
  %0 = load i32, i32* @Variant, align 4
  %cmp = icmp ne i32 %0, 3
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %Pcaptured.addr, align 4
  %cmp1 = icmp eq i32 %1, 5
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load i32, i32* %Pcaptured.addr, align 4
  %cmp2 = icmp eq i32 %2, 6
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, i32* @kingcap, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, i32* %Pcaptured.addr, align 4
  %cmp3 = icmp ne i32 %3, 13
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store i32 1, i32* @fcaptures, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end
  %4 = load i32, i32* @gfrom, align 4
  %5 = load i32, i32* @numb_moves, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx = getelementptr inbounds %struct.move_s, %struct.move_s* %6, i64 %idxprom
  %from = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx, i32 0, i32 0
  store i32 %4, i32* %from, align 4
  %7 = load i32, i32* %Ptarget.addr, align 4
  %8 = load i32, i32* @numb_moves, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx7 = getelementptr inbounds %struct.move_s, %struct.move_s* %9, i64 %idxprom6
  %target = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx7, i32 0, i32 1
  store i32 %7, i32* %target, align 4
  %10 = load i32, i32* %Pcaptured.addr, align 4
  %11 = load i32, i32* @numb_moves, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx9 = getelementptr inbounds %struct.move_s, %struct.move_s* %12, i64 %idxprom8
  %captured = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx9, i32 0, i32 2
  store i32 %10, i32* %captured, align 4
  %13 = load i32, i32* @numb_moves, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx11 = getelementptr inbounds %struct.move_s, %struct.move_s* %14, i64 %idxprom10
  %castled = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx11, i32 0, i32 4
  store i32 0, i32* %castled, align 4
  %15 = load i32, i32* %Ppromoted.addr, align 4
  %16 = load i32, i32* @numb_moves, align 4
  %idxprom12 = sext i32 %16 to i64
  %17 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx13 = getelementptr inbounds %struct.move_s, %struct.move_s* %17, i64 %idxprom12
  %promoted = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx13, i32 0, i32 3
  store i32 %15, i32* %promoted, align 4
  %18 = load i32, i32* %Pep.addr, align 4
  %19 = load i32, i32* @numb_moves, align 4
  %idxprom14 = sext i32 %19 to i64
  %20 = load %struct.move_s*, %struct.move_s** @genfor, align 8
  %arrayidx15 = getelementptr inbounds %struct.move_s, %struct.move_s* %20, i64 %idxprom14
  %ep = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx15, i32 0, i32 5
  store i32 %18, i32* %ep, align 4
  %21 = load i32, i32* @numb_moves, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* @numb_moves, align 4
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @unmake(%struct.move_s* %moves, i32 %i) #0 {
entry:
  %moves.addr = alloca %struct.move_s*, align 8
  %i.addr = alloca i32, align 4
  %ep = alloca i32, align 4
  %from = alloca i32, align 4
  %target = alloca i32, align 4
  %captured = alloca i32, align 4
  %promoted = alloca i32, align 4
  %castled = alloca i32, align 4
  store %struct.move_s* %moves, %struct.move_s** %moves.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx = getelementptr inbounds %struct.move_s, %struct.move_s* %1, i64 %idxprom
  %ep1 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx, i32 0, i32 5
  %2 = load i32, i32* %ep1, align 4
  store i32 %2, i32* %ep, align 4
  %3 = load i32, i32* %i.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %4 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.move_s, %struct.move_s* %4, i64 %idxprom2
  %from4 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx3, i32 0, i32 0
  %5 = load i32, i32* %from4, align 4
  store i32 %5, i32* %from, align 4
  %6 = load i32, i32* %i.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.move_s, %struct.move_s* %7, i64 %idxprom5
  %target7 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx6, i32 0, i32 1
  %8 = load i32, i32* %target7, align 4
  store i32 %8, i32* %target, align 4
  %9 = load i32, i32* %i.addr, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.move_s, %struct.move_s* %10, i64 %idxprom8
  %captured10 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx9, i32 0, i32 2
  %11 = load i32, i32* %captured10, align 4
  store i32 %11, i32* %captured, align 4
  %12 = load i32, i32* %i.addr, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.move_s, %struct.move_s* %13, i64 %idxprom11
  %promoted13 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx12, i32 0, i32 3
  %14 = load i32, i32* %promoted13, align 4
  store i32 %14, i32* %promoted, align 4
  %15 = load i32, i32* %i.addr, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.move_s, %struct.move_s* %16, i64 %idxprom14
  %castled16 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx15, i32 0, i32 4
  %17 = load i32, i32* %castled16, align 4
  store i32 %17, i32* %castled, align 4
  %18 = load i32, i32* @ply, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* @ply, align 4
  %19 = load i32, i32* @ply, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i32 0, i64 %idxprom17
  %epsq = getelementptr inbounds %struct.move_x, %struct.move_x* %arrayidx18, i32 0, i32 2
  %20 = load i32, i32* %epsq, align 4
  store i32 %20, i32* @ep_square, align 4
  %21 = load i32, i32* @ply, align 4
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i32 0, i64 %idxprom19
  %fifty = getelementptr inbounds %struct.move_x, %struct.move_x* %arrayidx20, i32 0, i32 3
  %22 = load i32, i32* %fifty, align 4
  store i32 %22, i32* @fifty, align 4
  %23 = load i32, i32* %from, align 4
  %cmp = icmp eq i32 %23, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %24 = load i32, i32* %target, align 4
  %idxprom21 = sext i32 %24 to i64
  %arrayidx22 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom21
  %25 = load i32, i32* %arrayidx22, align 4
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom23
  store i32 0, i32* %arrayidx24, align 4
  %26 = load i32, i32* @ply, align 4
  %idxprom25 = sext i32 %26 to i64
  %arrayidx26 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i32 0, i64 %idxprom25
  %was_promoted = getelementptr inbounds %struct.move_x, %struct.move_x* %arrayidx26, i32 0, i32 1
  %27 = load i32, i32* %was_promoted, align 4
  %28 = load i32, i32* %target, align 4
  %idxprom27 = sext i32 %28 to i64
  %arrayidx28 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom27
  %29 = load i32, i32* %arrayidx28, align 4
  %idxprom29 = sext i32 %29 to i64
  %arrayidx30 = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i32 0, i64 %idxprom29
  store i32 %27, i32* %arrayidx30, align 4
  %30 = load i32, i32* %target, align 4
  %idxprom31 = sext i32 %30 to i64
  %arrayidx32 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom31
  store i32 0, i32* %arrayidx32, align 4
  %31 = load i32, i32* @piece_count, align 4
  %dec33 = add nsw i32 %31, -1
  store i32 %dec33, i32* @piece_count, align 4
  %32 = load i32, i32* %promoted, align 4
  %33 = load i32, i32* @white_to_move, align 4
  %tobool = icmp ne i32 %33, 0
  %cond = select i1 %tobool, i32 1, i32 0
  call void @DropaddHolding(i32 %32, i32 %cond)
  %34 = load i32, i32* %promoted, align 4
  %idxprom34 = sext i32 %34 to i64
  %arrayidx35 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom34
  %35 = load i32, i32* %arrayidx35, align 4
  %36 = load i32, i32* @Material, align 4
  %sub = sub nsw i32 %36, %35
  store i32 %sub, i32* @Material, align 4
  %37 = load i32, i32* %captured, align 4
  %38 = load i32, i32* %target, align 4
  %idxprom36 = sext i32 %38 to i64
  %arrayidx37 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom36
  store i32 %37, i32* %arrayidx37, align 4
  %39 = load i32, i32* %target, align 4
  %idxprom38 = sext i32 %39 to i64
  %40 = load i32, i32* %promoted, align 4
  %idxprom39 = sext i32 %40 to i64
  %arrayidx40 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom39
  %arrayidx41 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx40, i32 0, i64 %idxprom38
  %41 = load i32, i32* %arrayidx41, align 4
  %42 = load i32, i32* @hash, align 4
  %xor = xor i32 %42, %41
  store i32 %xor, i32* @hash, align 4
  %43 = load i32, i32* @white_to_move, align 4
  %xor42 = xor i32 %43, 1
  store i32 %xor42, i32* @white_to_move, align 4
  br label %return

if.else:                                          ; preds = %entry
  %44 = load i32, i32* %target, align 4
  %idxprom43 = sext i32 %44 to i64
  %arrayidx44 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom43
  %45 = load i32, i32* %arrayidx44, align 4
  %46 = load i32, i32* %from, align 4
  %idxprom45 = sext i32 %46 to i64
  %arrayidx46 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom45
  store i32 %45, i32* %arrayidx46, align 4
  %47 = load i32, i32* @ply, align 4
  %idxprom47 = sext i32 %47 to i64
  %arrayidx48 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i32 0, i64 %idxprom47
  %cap_num = getelementptr inbounds %struct.move_x, %struct.move_x* %arrayidx48, i32 0, i32 0
  %48 = load i32, i32* %cap_num, align 4
  %49 = load i32, i32* %target, align 4
  %idxprom49 = sext i32 %49 to i64
  %arrayidx50 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom49
  store i32 %48, i32* %arrayidx50, align 4
  %50 = load i32, i32* %target, align 4
  %51 = load i32, i32* %target, align 4
  %idxprom51 = sext i32 %51 to i64
  %arrayidx52 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom51
  %52 = load i32, i32* %arrayidx52, align 4
  %idxprom53 = sext i32 %52 to i64
  %arrayidx54 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom53
  store i32 %50, i32* %arrayidx54, align 4
  %53 = load i32, i32* %from, align 4
  %54 = load i32, i32* %from, align 4
  %idxprom55 = sext i32 %54 to i64
  %arrayidx56 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom55
  %55 = load i32, i32* %arrayidx56, align 4
  %idxprom57 = sext i32 %55 to i64
  %arrayidx58 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom57
  store i32 %53, i32* %arrayidx58, align 4
  %56 = load i32, i32* @ply, align 4
  %idxprom59 = sext i32 %56 to i64
  %arrayidx60 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i32 0, i64 %idxprom59
  %was_promoted61 = getelementptr inbounds %struct.move_x, %struct.move_x* %arrayidx60, i32 0, i32 1
  %57 = load i32, i32* %was_promoted61, align 4
  %58 = load i32, i32* %target, align 4
  %idxprom62 = sext i32 %58 to i64
  %arrayidx63 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom62
  %59 = load i32, i32* %arrayidx63, align 4
  %idxprom64 = sext i32 %59 to i64
  %arrayidx65 = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i32 0, i64 %idxprom64
  store i32 %57, i32* %arrayidx65, align 4
  %60 = load i32, i32* %ep, align 4
  %tobool66 = icmp ne i32 %60, 0
  br i1 %tobool66, label %if.end.91, label %if.then.67

if.then.67:                                       ; preds = %if.else
  %61 = load i32, i32* %captured, align 4
  switch i32 %61, label %sw.default [
    i32 13, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.67
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.67
  %62 = load i32, i32* @Variant, align 4
  %cmp68 = icmp eq i32 %62, 1
  br i1 %cmp68, label %if.then.70, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.default
  %63 = load i32, i32* @Variant, align 4
  %cmp69 = icmp eq i32 %63, 0
  br i1 %cmp69, label %if.then.70, label %if.end.83

if.then.70:                                       ; preds = %lor.lhs.false, %sw.default
  %64 = load i32, i32* %target, align 4
  %idxprom71 = sext i32 %64 to i64
  %arrayidx72 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom71
  %65 = load i32, i32* %arrayidx72, align 4
  %idxprom73 = sext i32 %65 to i64
  %arrayidx74 = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i32 0, i64 %idxprom73
  %66 = load i32, i32* %arrayidx74, align 4
  %tobool75 = icmp ne i32 %66, 0
  br i1 %tobool75, label %if.then.76, label %if.else.79

if.then.76:                                       ; preds = %if.then.70
  %67 = load i32, i32* %captured, align 4
  %call = call i32 @SwitchPromoted(i32 %67)
  %68 = load i32, i32* @white_to_move, align 4
  %tobool77 = icmp ne i32 %68, 0
  %cond78 = select i1 %tobool77, i32 1, i32 0
  call void @removeHolding(i32 %call, i32 %cond78)
  br label %if.end

if.else.79:                                       ; preds = %if.then.70
  %69 = load i32, i32* %captured, align 4
  %call80 = call i32 @SwitchColor(i32 %69)
  %70 = load i32, i32* @white_to_move, align 4
  %tobool81 = icmp ne i32 %70, 0
  %cond82 = select i1 %tobool81, i32 1, i32 0
  call void @removeHolding(i32 %call80, i32 %cond82)
  br label %if.end

if.end:                                           ; preds = %if.else.79, %if.then.76
  br label %if.end.83

if.end.83:                                        ; preds = %if.end, %lor.lhs.false
  %71 = load i32, i32* %target, align 4
  %idxprom84 = sext i32 %71 to i64
  %72 = load i32, i32* %captured, align 4
  %idxprom85 = sext i32 %72 to i64
  %arrayidx86 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom85
  %arrayidx87 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx86, i32 0, i64 %idxprom84
  %73 = load i32, i32* %arrayidx87, align 4
  %74 = load i32, i32* @hash, align 4
  %xor88 = xor i32 %74, %73
  store i32 %xor88, i32* @hash, align 4
  %75 = load i32, i32* %captured, align 4
  %idxprom89 = sext i32 %75 to i64
  %arrayidx90 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom89
  %76 = load i32, i32* %arrayidx90, align 4
  %77 = load i32, i32* @Material, align 4
  %add = add nsw i32 %77, %76
  store i32 %add, i32* @Material, align 4
  %78 = load i32, i32* @piece_count, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* @piece_count, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.83, %sw.bb
  br label %if.end.91

if.end.91:                                        ; preds = %sw.epilog, %if.else
  %79 = load i32, i32* %target, align 4
  %idxprom92 = sext i32 %79 to i64
  %arrayidx93 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom92
  %80 = load i32, i32* %arrayidx93, align 4
  %cmp94 = icmp eq i32 %80, 1
  br i1 %cmp94, label %if.then.95, label %if.end.160

if.then.95:                                       ; preds = %if.end.91
  %81 = load i32, i32* %ep, align 4
  %tobool96 = icmp ne i32 %81, 0
  br i1 %tobool96, label %if.then.97, label %if.end.142

if.then.97:                                       ; preds = %if.then.95
  %82 = load i32, i32* %target, align 4
  %idxprom98 = sext i32 %82 to i64
  %arrayidx99 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 1), i32 0, i64 %idxprom98
  %83 = load i32, i32* %arrayidx99, align 4
  %84 = load i32, i32* @hash, align 4
  %xor100 = xor i32 %84, %83
  store i32 %xor100, i32* @hash, align 4
  %85 = load i32, i32* %from, align 4
  %idxprom101 = sext i32 %85 to i64
  %arrayidx102 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 1), i32 0, i64 %idxprom101
  %86 = load i32, i32* %arrayidx102, align 4
  %87 = load i32, i32* @hash, align 4
  %xor103 = xor i32 %87, %86
  store i32 %xor103, i32* @hash, align 4
  %88 = load i32, i32* %target, align 4
  %sub104 = sub nsw i32 %88, 12
  %idxprom105 = sext i32 %sub104 to i64
  %arrayidx106 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 2), i32 0, i64 %idxprom105
  %89 = load i32, i32* %arrayidx106, align 4
  %90 = load i32, i32* @hash, align 4
  %xor107 = xor i32 %90, %89
  store i32 %xor107, i32* @hash, align 4
  %91 = load i32, i32* %target, align 4
  %idxprom108 = sext i32 %91 to i64
  %arrayidx109 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom108
  store i32 13, i32* %arrayidx109, align 4
  %92 = load i32, i32* %from, align 4
  %idxprom110 = sext i32 %92 to i64
  %arrayidx111 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom110
  store i32 1, i32* %arrayidx111, align 4
  %93 = load i32, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @material, i32 0, i64 2), align 4
  %94 = load i32, i32* @Material, align 4
  %add112 = add nsw i32 %94, %93
  store i32 %add112, i32* @Material, align 4
  call void @removeHolding(i32 1, i32 0)
  %95 = load i32, i32* @piece_count, align 4
  %inc113 = add nsw i32 %95, 1
  store i32 %inc113, i32* @piece_count, align 4
  %96 = load i32, i32* %target, align 4
  %sub114 = sub nsw i32 %96, 12
  %idxprom115 = sext i32 %sub114 to i64
  %arrayidx116 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom115
  store i32 2, i32* %arrayidx116, align 4
  %97 = load i32, i32* %target, align 4
  %idxprom117 = sext i32 %97 to i64
  %arrayidx118 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom117
  %98 = load i32, i32* %arrayidx118, align 4
  %dec119 = add nsw i32 %98, -1
  store i32 %dec119, i32* %arrayidx118, align 4
  %99 = load i32, i32* %from, align 4
  %idxprom120 = sext i32 %99 to i64
  %arrayidx121 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom120
  %100 = load i32, i32* %arrayidx121, align 4
  %dec122 = add nsw i32 %100, -1
  store i32 %dec122, i32* %arrayidx121, align 4
  %101 = load i32, i32* %target, align 4
  %sub123 = sub nsw i32 %101, 12
  %idxprom124 = sext i32 %sub123 to i64
  %arrayidx125 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom124
  %102 = load i32, i32* %arrayidx125, align 4
  %dec126 = add nsw i32 %102, -1
  store i32 %dec126, i32* %arrayidx125, align 4
  %103 = load i32, i32* @white_to_move, align 4
  %xor127 = xor i32 %103, 1
  store i32 %xor127, i32* @white_to_move, align 4
  %104 = load i32, i32* @ply, align 4
  %idxprom128 = sext i32 %104 to i64
  %arrayidx129 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i32 0, i64 %idxprom128
  %cap_num130 = getelementptr inbounds %struct.move_x, %struct.move_x* %arrayidx129, i32 0, i32 0
  %105 = load i32, i32* %cap_num130, align 4
  %106 = load i32, i32* %target, align 4
  %sub131 = sub nsw i32 %106, 12
  %idxprom132 = sext i32 %sub131 to i64
  %arrayidx133 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom132
  store i32 %105, i32* %arrayidx133, align 4
  %107 = load i32, i32* %target, align 4
  %sub134 = sub nsw i32 %107, 12
  %108 = load i32, i32* @ply, align 4
  %idxprom135 = sext i32 %108 to i64
  %arrayidx136 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i32 0, i64 %idxprom135
  %cap_num137 = getelementptr inbounds %struct.move_x, %struct.move_x* %arrayidx136, i32 0, i32 0
  %109 = load i32, i32* %cap_num137, align 4
  %idxprom138 = sext i32 %109 to i64
  %arrayidx139 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom138
  store i32 %sub134, i32* %arrayidx139, align 4
  %110 = load i32, i32* %target, align 4
  %idxprom140 = sext i32 %110 to i64
  %arrayidx141 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom140
  store i32 0, i32* %arrayidx141, align 4
  br label %return

if.end.142:                                       ; preds = %if.then.95
  %111 = load i32, i32* %from, align 4
  %idxprom143 = sext i32 %111 to i64
  %arrayidx144 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 1), i32 0, i64 %idxprom143
  %112 = load i32, i32* %arrayidx144, align 4
  %113 = load i32, i32* @hash, align 4
  %xor145 = xor i32 %113, %112
  store i32 %xor145, i32* @hash, align 4
  %114 = load i32, i32* %target, align 4
  %idxprom146 = sext i32 %114 to i64
  %arrayidx147 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 1), i32 0, i64 %idxprom146
  %115 = load i32, i32* %arrayidx147, align 4
  %116 = load i32, i32* @hash, align 4
  %xor148 = xor i32 %116, %115
  store i32 %xor148, i32* @hash, align 4
  %117 = load i32, i32* %captured, align 4
  %118 = load i32, i32* %target, align 4
  %idxprom149 = sext i32 %118 to i64
  %arrayidx150 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom149
  store i32 %117, i32* %arrayidx150, align 4
  %119 = load i32, i32* %from, align 4
  %idxprom151 = sext i32 %119 to i64
  %arrayidx152 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom151
  store i32 1, i32* %arrayidx152, align 4
  %120 = load i32, i32* %target, align 4
  %idxprom153 = sext i32 %120 to i64
  %arrayidx154 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom153
  %121 = load i32, i32* %arrayidx154, align 4
  %dec155 = add nsw i32 %121, -1
  store i32 %dec155, i32* %arrayidx154, align 4
  %122 = load i32, i32* %from, align 4
  %idxprom156 = sext i32 %122 to i64
  %arrayidx157 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom156
  %123 = load i32, i32* %arrayidx157, align 4
  %dec158 = add nsw i32 %123, -1
  store i32 %dec158, i32* %arrayidx157, align 4
  %124 = load i32, i32* @white_to_move, align 4
  %xor159 = xor i32 %124, 1
  store i32 %xor159, i32* @white_to_move, align 4
  br label %return

if.end.160:                                       ; preds = %if.end.91
  %125 = load i32, i32* %target, align 4
  %idxprom161 = sext i32 %125 to i64
  %arrayidx162 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom161
  %126 = load i32, i32* %arrayidx162, align 4
  %cmp163 = icmp eq i32 %126, 2
  br i1 %cmp163, label %if.then.164, label %if.end.229

if.then.164:                                      ; preds = %if.end.160
  %127 = load i32, i32* %ep, align 4
  %tobool165 = icmp ne i32 %127, 0
  br i1 %tobool165, label %if.then.166, label %if.end.211

if.then.166:                                      ; preds = %if.then.164
  %128 = load i32, i32* %target, align 4
  %idxprom167 = sext i32 %128 to i64
  %arrayidx168 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 2), i32 0, i64 %idxprom167
  %129 = load i32, i32* %arrayidx168, align 4
  %130 = load i32, i32* @hash, align 4
  %xor169 = xor i32 %130, %129
  store i32 %xor169, i32* @hash, align 4
  %131 = load i32, i32* %from, align 4
  %idxprom170 = sext i32 %131 to i64
  %arrayidx171 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 2), i32 0, i64 %idxprom170
  %132 = load i32, i32* %arrayidx171, align 4
  %133 = load i32, i32* @hash, align 4
  %xor172 = xor i32 %133, %132
  store i32 %xor172, i32* @hash, align 4
  %134 = load i32, i32* %target, align 4
  %add173 = add nsw i32 %134, 12
  %idxprom174 = sext i32 %add173 to i64
  %arrayidx175 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 1), i32 0, i64 %idxprom174
  %135 = load i32, i32* %arrayidx175, align 4
  %136 = load i32, i32* @hash, align 4
  %xor176 = xor i32 %136, %135
  store i32 %xor176, i32* @hash, align 4
  %137 = load i32, i32* %target, align 4
  %idxprom177 = sext i32 %137 to i64
  %arrayidx178 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom177
  store i32 13, i32* %arrayidx178, align 4
  %138 = load i32, i32* %from, align 4
  %idxprom179 = sext i32 %138 to i64
  %arrayidx180 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom179
  store i32 2, i32* %arrayidx180, align 4
  %139 = load i32, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @material, i32 0, i64 1), align 4
  %140 = load i32, i32* @Material, align 4
  %add181 = add nsw i32 %140, %139
  store i32 %add181, i32* @Material, align 4
  call void @removeHolding(i32 2, i32 1)
  %141 = load i32, i32* @piece_count, align 4
  %inc182 = add nsw i32 %141, 1
  store i32 %inc182, i32* @piece_count, align 4
  %142 = load i32, i32* %target, align 4
  %add183 = add nsw i32 %142, 12
  %idxprom184 = sext i32 %add183 to i64
  %arrayidx185 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom184
  store i32 1, i32* %arrayidx185, align 4
  %143 = load i32, i32* %target, align 4
  %idxprom186 = sext i32 %143 to i64
  %arrayidx187 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom186
  %144 = load i32, i32* %arrayidx187, align 4
  %dec188 = add nsw i32 %144, -1
  store i32 %dec188, i32* %arrayidx187, align 4
  %145 = load i32, i32* %from, align 4
  %idxprom189 = sext i32 %145 to i64
  %arrayidx190 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom189
  %146 = load i32, i32* %arrayidx190, align 4
  %dec191 = add nsw i32 %146, -1
  store i32 %dec191, i32* %arrayidx190, align 4
  %147 = load i32, i32* %target, align 4
  %add192 = add nsw i32 %147, 12
  %idxprom193 = sext i32 %add192 to i64
  %arrayidx194 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom193
  %148 = load i32, i32* %arrayidx194, align 4
  %dec195 = add nsw i32 %148, -1
  store i32 %dec195, i32* %arrayidx194, align 4
  %149 = load i32, i32* @white_to_move, align 4
  %xor196 = xor i32 %149, 1
  store i32 %xor196, i32* @white_to_move, align 4
  %150 = load i32, i32* @ply, align 4
  %idxprom197 = sext i32 %150 to i64
  %arrayidx198 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i32 0, i64 %idxprom197
  %cap_num199 = getelementptr inbounds %struct.move_x, %struct.move_x* %arrayidx198, i32 0, i32 0
  %151 = load i32, i32* %cap_num199, align 4
  %152 = load i32, i32* %target, align 4
  %add200 = add nsw i32 %152, 12
  %idxprom201 = sext i32 %add200 to i64
  %arrayidx202 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom201
  store i32 %151, i32* %arrayidx202, align 4
  %153 = load i32, i32* %target, align 4
  %add203 = add nsw i32 %153, 12
  %154 = load i32, i32* @ply, align 4
  %idxprom204 = sext i32 %154 to i64
  %arrayidx205 = getelementptr inbounds [300 x %struct.move_x], [300 x %struct.move_x]* @path_x, i32 0, i64 %idxprom204
  %cap_num206 = getelementptr inbounds %struct.move_x, %struct.move_x* %arrayidx205, i32 0, i32 0
  %155 = load i32, i32* %cap_num206, align 4
  %idxprom207 = sext i32 %155 to i64
  %arrayidx208 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom207
  store i32 %add203, i32* %arrayidx208, align 4
  %156 = load i32, i32* %target, align 4
  %idxprom209 = sext i32 %156 to i64
  %arrayidx210 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom209
  store i32 0, i32* %arrayidx210, align 4
  br label %return

if.end.211:                                       ; preds = %if.then.164
  %157 = load i32, i32* %from, align 4
  %idxprom212 = sext i32 %157 to i64
  %arrayidx213 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 2), i32 0, i64 %idxprom212
  %158 = load i32, i32* %arrayidx213, align 4
  %159 = load i32, i32* @hash, align 4
  %xor214 = xor i32 %159, %158
  store i32 %xor214, i32* @hash, align 4
  %160 = load i32, i32* %target, align 4
  %idxprom215 = sext i32 %160 to i64
  %arrayidx216 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 2), i32 0, i64 %idxprom215
  %161 = load i32, i32* %arrayidx216, align 4
  %162 = load i32, i32* @hash, align 4
  %xor217 = xor i32 %162, %161
  store i32 %xor217, i32* @hash, align 4
  %163 = load i32, i32* %captured, align 4
  %164 = load i32, i32* %target, align 4
  %idxprom218 = sext i32 %164 to i64
  %arrayidx219 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom218
  store i32 %163, i32* %arrayidx219, align 4
  %165 = load i32, i32* %from, align 4
  %idxprom220 = sext i32 %165 to i64
  %arrayidx221 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom220
  store i32 2, i32* %arrayidx221, align 4
  %166 = load i32, i32* %target, align 4
  %idxprom222 = sext i32 %166 to i64
  %arrayidx223 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom222
  %167 = load i32, i32* %arrayidx223, align 4
  %dec224 = add nsw i32 %167, -1
  store i32 %dec224, i32* %arrayidx223, align 4
  %168 = load i32, i32* %from, align 4
  %idxprom225 = sext i32 %168 to i64
  %arrayidx226 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom225
  %169 = load i32, i32* %arrayidx226, align 4
  %dec227 = add nsw i32 %169, -1
  store i32 %dec227, i32* %arrayidx226, align 4
  %170 = load i32, i32* @white_to_move, align 4
  %xor228 = xor i32 %170, 1
  store i32 %xor228, i32* @white_to_move, align 4
  br label %return

if.end.229:                                       ; preds = %if.end.160
  %171 = load i32, i32* %target, align 4
  %idxprom230 = sext i32 %171 to i64
  %arrayidx231 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom230
  %172 = load i32, i32* %arrayidx231, align 4
  %cmp232 = icmp ne i32 %172, 5
  br i1 %cmp232, label %land.lhs.true, label %if.end.266

land.lhs.true:                                    ; preds = %if.end.229
  %173 = load i32, i32* %target, align 4
  %idxprom233 = sext i32 %173 to i64
  %arrayidx234 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom233
  %174 = load i32, i32* %arrayidx234, align 4
  %cmp235 = icmp ne i32 %174, 6
  br i1 %cmp235, label %land.lhs.true.236, label %if.end.266

land.lhs.true.236:                                ; preds = %land.lhs.true
  %175 = load i32, i32* %promoted, align 4
  %tobool237 = icmp ne i32 %175, 0
  br i1 %tobool237, label %if.end.266, label %if.then.238

if.then.238:                                      ; preds = %land.lhs.true.236
  %176 = load i32, i32* %target, align 4
  %idxprom239 = sext i32 %176 to i64
  %arrayidx240 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom239
  %177 = load i32, i32* %arrayidx240, align 4
  %178 = load i32, i32* %from, align 4
  %idxprom241 = sext i32 %178 to i64
  %arrayidx242 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom241
  store i32 %177, i32* %arrayidx242, align 4
  %179 = load i32, i32* %captured, align 4
  %180 = load i32, i32* %target, align 4
  %idxprom243 = sext i32 %180 to i64
  %arrayidx244 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom243
  store i32 %179, i32* %arrayidx244, align 4
  %181 = load i32, i32* %target, align 4
  %idxprom245 = sext i32 %181 to i64
  %arrayidx246 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom245
  %182 = load i32, i32* %arrayidx246, align 4
  %dec247 = add nsw i32 %182, -1
  store i32 %dec247, i32* %arrayidx246, align 4
  %183 = load i32, i32* %from, align 4
  %idxprom248 = sext i32 %183 to i64
  %arrayidx249 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom248
  %184 = load i32, i32* %arrayidx249, align 4
  %dec250 = add nsw i32 %184, -1
  store i32 %dec250, i32* %arrayidx249, align 4
  %185 = load i32, i32* @white_to_move, align 4
  %xor251 = xor i32 %185, 1
  store i32 %xor251, i32* @white_to_move, align 4
  %186 = load i32, i32* %target, align 4
  %idxprom252 = sext i32 %186 to i64
  %187 = load i32, i32* %from, align 4
  %idxprom253 = sext i32 %187 to i64
  %arrayidx254 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom253
  %188 = load i32, i32* %arrayidx254, align 4
  %idxprom255 = sext i32 %188 to i64
  %arrayidx256 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom255
  %arrayidx257 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx256, i32 0, i64 %idxprom252
  %189 = load i32, i32* %arrayidx257, align 4
  %190 = load i32, i32* @hash, align 4
  %xor258 = xor i32 %190, %189
  store i32 %xor258, i32* @hash, align 4
  %191 = load i32, i32* %from, align 4
  %idxprom259 = sext i32 %191 to i64
  %192 = load i32, i32* %from, align 4
  %idxprom260 = sext i32 %192 to i64
  %arrayidx261 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom260
  %193 = load i32, i32* %arrayidx261, align 4
  %idxprom262 = sext i32 %193 to i64
  %arrayidx263 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom262
  %arrayidx264 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx263, i32 0, i64 %idxprom259
  %194 = load i32, i32* %arrayidx264, align 4
  %195 = load i32, i32* @hash, align 4
  %xor265 = xor i32 %195, %194
  store i32 %xor265, i32* @hash, align 4
  br label %return

if.end.266:                                       ; preds = %land.lhs.true.236, %land.lhs.true, %if.end.229
  %196 = load i32, i32* %promoted, align 4
  %tobool267 = icmp ne i32 %196, 0
  br i1 %tobool267, label %if.then.268, label %if.end.320

if.then.268:                                      ; preds = %if.end.266
  %197 = load i32, i32* %target, align 4
  %idxprom269 = sext i32 %197 to i64
  %arrayidx270 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom269
  %198 = load i32, i32* %arrayidx270, align 4
  %rem = srem i32 %198, 2
  %tobool271 = icmp ne i32 %rem, 0
  br i1 %tobool271, label %if.then.272, label %if.end.296

if.then.272:                                      ; preds = %if.then.268
  %199 = load i32, i32* %captured, align 4
  %200 = load i32, i32* %target, align 4
  %idxprom273 = sext i32 %200 to i64
  %arrayidx274 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom273
  store i32 %199, i32* %arrayidx274, align 4
  %201 = load i32, i32* %from, align 4
  %idxprom275 = sext i32 %201 to i64
  %arrayidx276 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom275
  store i32 1, i32* %arrayidx276, align 4
  %202 = load i32, i32* %target, align 4
  %idxprom277 = sext i32 %202 to i64
  %arrayidx278 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom277
  %203 = load i32, i32* %arrayidx278, align 4
  %dec279 = add nsw i32 %203, -1
  store i32 %dec279, i32* %arrayidx278, align 4
  %204 = load i32, i32* %from, align 4
  %idxprom280 = sext i32 %204 to i64
  %arrayidx281 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom280
  %205 = load i32, i32* %arrayidx281, align 4
  %dec282 = add nsw i32 %205, -1
  store i32 %dec282, i32* %arrayidx281, align 4
  %206 = load i32, i32* @white_to_move, align 4
  %xor283 = xor i32 %206, 1
  store i32 %xor283, i32* @white_to_move, align 4
  %207 = load i32, i32* %from, align 4
  %idxprom284 = sext i32 %207 to i64
  %arrayidx285 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 1), i32 0, i64 %idxprom284
  %208 = load i32, i32* %arrayidx285, align 4
  %209 = load i32, i32* @hash, align 4
  %xor286 = xor i32 %209, %208
  store i32 %xor286, i32* @hash, align 4
  %210 = load i32, i32* %target, align 4
  %idxprom287 = sext i32 %210 to i64
  %211 = load i32, i32* %promoted, align 4
  %idxprom288 = sext i32 %211 to i64
  %arrayidx289 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom288
  %arrayidx290 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx289, i32 0, i64 %idxprom287
  %212 = load i32, i32* %arrayidx290, align 4
  %213 = load i32, i32* @hash, align 4
  %xor291 = xor i32 %213, %212
  store i32 %xor291, i32* @hash, align 4
  %214 = load i32, i32* %promoted, align 4
  %idxprom292 = sext i32 %214 to i64
  %arrayidx293 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom292
  %215 = load i32, i32* %arrayidx293, align 4
  %216 = load i32, i32* @Material, align 4
  %sub294 = sub nsw i32 %216, %215
  store i32 %sub294, i32* @Material, align 4
  %217 = load i32, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @material, i32 0, i64 1), align 4
  %218 = load i32, i32* @Material, align 4
  %add295 = add nsw i32 %218, %217
  store i32 %add295, i32* @Material, align 4
  br label %return

if.end.296:                                       ; preds = %if.then.268
  %219 = load i32, i32* %captured, align 4
  %220 = load i32, i32* %target, align 4
  %idxprom297 = sext i32 %220 to i64
  %arrayidx298 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom297
  store i32 %219, i32* %arrayidx298, align 4
  %221 = load i32, i32* %from, align 4
  %idxprom299 = sext i32 %221 to i64
  %arrayidx300 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom299
  store i32 2, i32* %arrayidx300, align 4
  %222 = load i32, i32* %target, align 4
  %idxprom301 = sext i32 %222 to i64
  %arrayidx302 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom301
  %223 = load i32, i32* %arrayidx302, align 4
  %dec303 = add nsw i32 %223, -1
  store i32 %dec303, i32* %arrayidx302, align 4
  %224 = load i32, i32* %from, align 4
  %idxprom304 = sext i32 %224 to i64
  %arrayidx305 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom304
  %225 = load i32, i32* %arrayidx305, align 4
  %dec306 = add nsw i32 %225, -1
  store i32 %dec306, i32* %arrayidx305, align 4
  %226 = load i32, i32* @white_to_move, align 4
  %xor307 = xor i32 %226, 1
  store i32 %xor307, i32* @white_to_move, align 4
  %227 = load i32, i32* %from, align 4
  %idxprom308 = sext i32 %227 to i64
  %arrayidx309 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 2), i32 0, i64 %idxprom308
  %228 = load i32, i32* %arrayidx309, align 4
  %229 = load i32, i32* @hash, align 4
  %xor310 = xor i32 %229, %228
  store i32 %xor310, i32* @hash, align 4
  %230 = load i32, i32* %target, align 4
  %idxprom311 = sext i32 %230 to i64
  %231 = load i32, i32* %promoted, align 4
  %idxprom312 = sext i32 %231 to i64
  %arrayidx313 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom312
  %arrayidx314 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx313, i32 0, i64 %idxprom311
  %232 = load i32, i32* %arrayidx314, align 4
  %233 = load i32, i32* @hash, align 4
  %xor315 = xor i32 %233, %232
  store i32 %xor315, i32* @hash, align 4
  %234 = load i32, i32* %promoted, align 4
  %idxprom316 = sext i32 %234 to i64
  %arrayidx317 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom316
  %235 = load i32, i32* %arrayidx317, align 4
  %236 = load i32, i32* @Material, align 4
  %sub318 = sub nsw i32 %236, %235
  store i32 %sub318, i32* @Material, align 4
  %237 = load i32, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @material, i32 0, i64 2), align 4
  %238 = load i32, i32* @Material, align 4
  %add319 = add nsw i32 %238, %237
  store i32 %add319, i32* @Material, align 4
  br label %return

if.end.320:                                       ; preds = %if.end.266
  %239 = load i32, i32* %target, align 4
  %idxprom321 = sext i32 %239 to i64
  %arrayidx322 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom321
  %240 = load i32, i32* %arrayidx322, align 4
  %cmp323 = icmp eq i32 %240, 5
  br i1 %cmp323, label %if.then.324, label %if.else.361

if.then.324:                                      ; preds = %if.end.320
  %241 = load i32, i32* %from, align 4
  store i32 %241, i32* @wking_loc, align 4
  %242 = load i32, i32* %captured, align 4
  %243 = load i32, i32* %target, align 4
  %idxprom325 = sext i32 %243 to i64
  %arrayidx326 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom325
  store i32 %242, i32* %arrayidx326, align 4
  %244 = load i32, i32* %from, align 4
  %idxprom327 = sext i32 %244 to i64
  %arrayidx328 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom327
  store i32 5, i32* %arrayidx328, align 4
  %245 = load i32, i32* %target, align 4
  %idxprom329 = sext i32 %245 to i64
  %arrayidx330 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom329
  %246 = load i32, i32* %arrayidx330, align 4
  %dec331 = add nsw i32 %246, -1
  store i32 %dec331, i32* %arrayidx330, align 4
  %247 = load i32, i32* %from, align 4
  %idxprom332 = sext i32 %247 to i64
  %arrayidx333 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom332
  %248 = load i32, i32* %arrayidx333, align 4
  %dec334 = add nsw i32 %248, -1
  store i32 %dec334, i32* %arrayidx333, align 4
  %249 = load i32, i32* @white_to_move, align 4
  %xor335 = xor i32 %249, 1
  store i32 %xor335, i32* @white_to_move, align 4
  %250 = load i32, i32* %from, align 4
  %idxprom336 = sext i32 %250 to i64
  %arrayidx337 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 5), i32 0, i64 %idxprom336
  %251 = load i32, i32* %arrayidx337, align 4
  %252 = load i32, i32* @hash, align 4
  %xor338 = xor i32 %252, %251
  store i32 %xor338, i32* @hash, align 4
  %253 = load i32, i32* %target, align 4
  %idxprom339 = sext i32 %253 to i64
  %arrayidx340 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 5), i32 0, i64 %idxprom339
  %254 = load i32, i32* %arrayidx340, align 4
  %255 = load i32, i32* @hash, align 4
  %xor341 = xor i32 %255, %254
  store i32 %xor341, i32* @hash, align 4
  %256 = load i32, i32* %castled, align 4
  %cmp342 = icmp eq i32 %256, 1
  br i1 %cmp342, label %if.then.343, label %if.else.350

if.then.343:                                      ; preds = %if.then.324
  store i32 7, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 33), align 4
  store i32 13, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 31), align 4
  %257 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 33), align 4
  %dec344 = add nsw i32 %257, -1
  store i32 %dec344, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 33), align 4
  %258 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 31), align 4
  %dec345 = add nsw i32 %258, -1
  store i32 %dec345, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 31), align 4
  store i32 0, i32* @white_castled, align 4
  %259 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 31), align 4
  store i32 %259, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 33), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 31), align 4
  %260 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 33), align 4
  %idxprom346 = sext i32 %260 to i64
  %arrayidx347 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom346
  store i32 33, i32* %arrayidx347, align 4
  %261 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 7, i64 33), align 4
  %262 = load i32, i32* @hash, align 4
  %xor348 = xor i32 %262, %261
  store i32 %xor348, i32* @hash, align 4
  %263 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 7, i64 31), align 4
  %264 = load i32, i32* @hash, align 4
  %xor349 = xor i32 %264, %263
  store i32 %xor349, i32* @hash, align 4
  br label %return

if.else.350:                                      ; preds = %if.then.324
  %265 = load i32, i32* %castled, align 4
  %cmp351 = icmp eq i32 %265, 2
  br i1 %cmp351, label %if.then.352, label %if.end.359

if.then.352:                                      ; preds = %if.else.350
  store i32 7, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 26), align 4
  store i32 13, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 29), align 4
  %266 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 26), align 4
  %dec353 = add nsw i32 %266, -1
  store i32 %dec353, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 26), align 4
  %267 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 29), align 4
  %dec354 = add nsw i32 %267, -1
  store i32 %dec354, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 29), align 4
  store i32 0, i32* @white_castled, align 4
  %268 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 29), align 4
  store i32 %268, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 26), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 29), align 4
  %269 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 26), align 4
  %idxprom355 = sext i32 %269 to i64
  %arrayidx356 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom355
  store i32 26, i32* %arrayidx356, align 4
  %270 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 7, i64 29), align 4
  %271 = load i32, i32* @hash, align 4
  %xor357 = xor i32 %271, %270
  store i32 %xor357, i32* @hash, align 4
  %272 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 7, i64 26), align 4
  %273 = load i32, i32* @hash, align 4
  %xor358 = xor i32 %273, %272
  store i32 %xor358, i32* @hash, align 4
  br label %return

if.end.359:                                       ; preds = %if.else.350
  br label %if.end.360

if.end.360:                                       ; preds = %if.end.359
  br label %return

if.else.361:                                      ; preds = %if.end.320
  %274 = load i32, i32* %from, align 4
  store i32 %274, i32* @bking_loc, align 4
  %275 = load i32, i32* %captured, align 4
  %276 = load i32, i32* %target, align 4
  %idxprom362 = sext i32 %276 to i64
  %arrayidx363 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom362
  store i32 %275, i32* %arrayidx363, align 4
  %277 = load i32, i32* %from, align 4
  %idxprom364 = sext i32 %277 to i64
  %arrayidx365 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom364
  store i32 6, i32* %arrayidx365, align 4
  %278 = load i32, i32* %target, align 4
  %idxprom366 = sext i32 %278 to i64
  %arrayidx367 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom366
  %279 = load i32, i32* %arrayidx367, align 4
  %dec368 = add nsw i32 %279, -1
  store i32 %dec368, i32* %arrayidx367, align 4
  %280 = load i32, i32* %from, align 4
  %idxprom369 = sext i32 %280 to i64
  %arrayidx370 = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom369
  %281 = load i32, i32* %arrayidx370, align 4
  %dec371 = add nsw i32 %281, -1
  store i32 %dec371, i32* %arrayidx370, align 4
  %282 = load i32, i32* @white_to_move, align 4
  %xor372 = xor i32 %282, 1
  store i32 %xor372, i32* @white_to_move, align 4
  %283 = load i32, i32* %from, align 4
  %idxprom373 = sext i32 %283 to i64
  %arrayidx374 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 6), i32 0, i64 %idxprom373
  %284 = load i32, i32* %arrayidx374, align 4
  %285 = load i32, i32* @hash, align 4
  %xor375 = xor i32 %285, %284
  store i32 %xor375, i32* @hash, align 4
  %286 = load i32, i32* %target, align 4
  %idxprom376 = sext i32 %286 to i64
  %arrayidx377 = getelementptr inbounds [144 x i32], [144 x i32]* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 6), i32 0, i64 %idxprom376
  %287 = load i32, i32* %arrayidx377, align 4
  %288 = load i32, i32* @hash, align 4
  %xor378 = xor i32 %288, %287
  store i32 %xor378, i32* @hash, align 4
  %289 = load i32, i32* %castled, align 4
  %cmp379 = icmp eq i32 %289, 3
  br i1 %cmp379, label %if.then.380, label %if.else.387

if.then.380:                                      ; preds = %if.else.361
  store i32 8, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 117), align 4
  store i32 13, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 115), align 4
  %290 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 117), align 4
  %dec381 = add nsw i32 %290, -1
  store i32 %dec381, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 117), align 4
  %291 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 115), align 4
  %dec382 = add nsw i32 %291, -1
  store i32 %dec382, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 115), align 4
  store i32 0, i32* @black_castled, align 4
  %292 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 115), align 4
  store i32 %292, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 117), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 115), align 4
  %293 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 117), align 4
  %idxprom383 = sext i32 %293 to i64
  %arrayidx384 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom383
  store i32 117, i32* %arrayidx384, align 4
  %294 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 8, i64 117), align 4
  %295 = load i32, i32* @hash, align 4
  %xor385 = xor i32 %295, %294
  store i32 %xor385, i32* @hash, align 4
  %296 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 8, i64 115), align 4
  %297 = load i32, i32* @hash, align 4
  %xor386 = xor i32 %297, %296
  store i32 %xor386, i32* @hash, align 4
  br label %return

if.else.387:                                      ; preds = %if.else.361
  %298 = load i32, i32* %castled, align 4
  %cmp388 = icmp eq i32 %298, 4
  br i1 %cmp388, label %if.then.389, label %if.end.396

if.then.389:                                      ; preds = %if.else.387
  store i32 8, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 110), align 4
  store i32 13, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 113), align 4
  %299 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 110), align 4
  %dec390 = add nsw i32 %299, -1
  store i32 %dec390, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 110), align 4
  %300 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 113), align 4
  %dec391 = add nsw i32 %300, -1
  store i32 %dec391, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 113), align 4
  store i32 0, i32* @black_castled, align 4
  %301 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 113), align 4
  store i32 %301, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 110), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 113), align 4
  %302 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @squares, i32 0, i64 110), align 4
  %idxprom392 = sext i32 %302 to i64
  %arrayidx393 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom392
  store i32 110, i32* %arrayidx393, align 4
  %303 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 8, i64 110), align 4
  %304 = load i32, i32* @hash, align 4
  %xor394 = xor i32 %304, %303
  store i32 %xor394, i32* @hash, align 4
  %305 = load i32, i32* getelementptr inbounds ([14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 8, i64 113), align 4
  %306 = load i32, i32* @hash, align 4
  %xor395 = xor i32 %306, %305
  store i32 %xor395, i32* @hash, align 4
  br label %return

if.end.396:                                       ; preds = %if.else.387
  br label %if.end.397

if.end.397:                                       ; preds = %if.end.396
  br label %if.end.398

if.end.398:                                       ; preds = %if.end.397
  br label %if.end.399

if.end.399:                                       ; preds = %if.end.398
  br label %return

return:                                           ; preds = %if.end.399, %if.then.389, %if.then.380, %if.end.360, %if.then.352, %if.then.343, %if.end.296, %if.then.272, %if.then.238, %if.end.211, %if.then.166, %if.end.142, %if.then.97, %if.then
  ret void
}

declare void @DropaddHolding(i32, i32) #1

declare void @removeHolding(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
