; ModuleID = 'engine/surround.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.surround_data = type { i32, [400 x i8] }

@board = external global [421 x i8], align 16
@worm = external global [400 x %struct.worm_data], align 16
@dragon = external global [400 x %struct.dragon_data], align 16
@dragon2 = external global %struct.dragon_data2*, align 8
@.str = private unnamed_addr constant [18 x i8] c"engine/surround.c\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"(board[apos] != 3)\00", align 1
@board_size = external global i32, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"(board[best_found] != 3)\00", align 1
@delta = external global [8 x i32], align 16
@surround_pointer = external global i32, align 4
@surroundings = external global [10 x %struct.surround_data], align 16

; Function Attrs: nounwind uwtable
define i32 @compute_surroundings(i32 %pos, i32 %apos, i32 %showboard, i32* %surround_size) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %apos.addr = alloca i32, align 4
  %showboard.addr = alloca i32, align 4
  %surround_size.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %dpos = alloca i32, align 4
  %surrounded = alloca i32, align 4
  %left_corner = alloca [19 x i32], align 16
  %right_corner = alloca [19 x i32], align 16
  %left_corners = alloca i32, align 4
  %right_corners = alloca i32, align 4
  %top_row = alloca i32, align 4
  %bottom_row = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %mf = alloca [400 x i8], align 16
  %mn = alloca [400 x i8], align 16
  %nd = alloca i32, align 4
  %best_found = alloca i32, align 4
  %best_slope = alloca float, align 4
  %m150 = alloca i32, align 4
  %n156 = alloca i32, align 4
  %slope = alloca float, align 4
  %best_found239 = alloca i32, align 4
  %best_slope240 = alloca float, align 4
  %m241 = alloca i32, align 4
  %n247 = alloca i32, align 4
  %slope270 = alloca float, align 4
  %left_boundary = alloca i32, align 4
  %right_boundary = alloca i32, align 4
  %ti = alloca float, align 4
  %tj = alloca float, align 4
  %bi = alloca float, align 4
  %bj = alloca float, align 4
  %ti410 = alloca float, align 4
  %tj417 = alloca float, align 4
  %bi424 = alloca float, align 4
  %bj430 = alloca float, align 4
  %mpos = alloca i32, align 4
  %col = alloca i32, align 4
  %c = alloca i32, align 4
  %pos1040 = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %showboard, i32* %showboard.addr, align 4
  store i32* %surround_size, i32** %surround_size.addr, align 8
  store i32 0, i32* %left_corners, align 4
  store i32 0, i32* %right_corners, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  %3 = bitcast [400 x i8]* %mf to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 400, i32 16, i1 false)
  %4 = bitcast [400 x i8]* %mn to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 400, i32 16, i1 false)
  store i32 21, i32* %dpos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %dpos, align 4
  %cmp = icmp slt i32 %5, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %dpos, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %7 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %cmp5 = icmp ne i32 %conv4, 3
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load i32, i32* %dpos, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom7
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx8, i32 0, i32 3
  %9 = load i32, i32* %origin, align 4
  %10 = load i32, i32* %dpos, align 4
  %cmp9 = icmp eq i32 %9, %10
  br i1 %cmp9, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %11 = load i32, i32* %dpos, align 4
  %12 = load i32, i32* %pos.addr, align 4
  %call = call i32 @is_same_dragon(i32 %11, i32 %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.11
  %13 = load i32, i32* %dpos, align 4
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %mf, i32 0, i32 0
  call void @mark_string(i32 %13, i8* %arraydecay, i8 signext 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.11, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %dpos, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %dpos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %pos.addr, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom12
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx13, i32 0, i32 1
  %16 = load i32, i32* %id, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx15 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %17, i64 %idxprom14
  %hostile_neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx15, i32 0, i32 3
  %18 = load i32, i32* %hostile_neighbors, align 4
  %cmp16 = icmp eq i32 %18, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %for.end
  store i32 0, i32* %k, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.73, %if.end.19
  %19 = load i32, i32* %k, align 4
  %20 = load i32, i32* %pos.addr, align 4
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom21
  %id23 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx22, i32 0, i32 1
  %21 = load i32, i32* %id23, align 4
  %idxprom24 = sext i32 %21 to i64
  %22 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx25 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %22, i64 %idxprom24
  %neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx25, i32 0, i32 2
  %23 = load i32, i32* %neighbors, align 4
  %cmp26 = icmp slt i32 %19, %23
  br i1 %cmp26, label %for.body.28, label %for.end.75

for.body.28:                                      ; preds = %for.cond.20
  %24 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %24 to i64
  %25 = load i32, i32* %pos.addr, align 4
  %idxprom30 = sext i32 %25 to i64
  %arrayidx31 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom30
  %id32 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx31, i32 0, i32 1
  %26 = load i32, i32* %id32, align 4
  %idxprom33 = sext i32 %26 to i64
  %27 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx34 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %27, i64 %idxprom33
  %adjacent = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx34, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent, i32 0, i64 %idxprom29
  %28 = load i32, i32* %arrayidx35, align 4
  %idxprom36 = sext i32 %28 to i64
  %29 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx37 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %29, i64 %idxprom36
  %origin38 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx37, i32 0, i32 0
  %30 = load i32, i32* %origin38, align 4
  %idxprom39 = sext i32 %30 to i64
  %arrayidx40 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom39
  %origin41 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx40, i32 0, i32 2
  %31 = load i32, i32* %origin41, align 4
  store i32 %31, i32* %nd, align 4
  %32 = load i32, i32* %nd, align 4
  %idxprom42 = sext i32 %32 to i64
  %arrayidx43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom42
  %33 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %33 to i32
  %34 = load i32, i32* %color, align 4
  %cmp45 = icmp ne i32 %conv44, %34
  br i1 %cmp45, label %if.then.47, label %if.end.72

if.then.47:                                       ; preds = %for.body.28
  store i32 21, i32* %dpos, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.69, %if.then.47
  %35 = load i32, i32* %dpos, align 4
  %cmp49 = icmp slt i32 %35, 400
  br i1 %cmp49, label %for.body.51, label %for.end.71

for.body.51:                                      ; preds = %for.cond.48
  %36 = load i32, i32* %dpos, align 4
  %idxprom52 = sext i32 %36 to i64
  %arrayidx53 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom52
  %37 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %37 to i32
  %cmp55 = icmp ne i32 %conv54, 3
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.68

land.lhs.true.57:                                 ; preds = %for.body.51
  %38 = load i32, i32* %dpos, align 4
  %idxprom58 = sext i32 %38 to i64
  %arrayidx59 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom58
  %origin60 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx59, i32 0, i32 3
  %39 = load i32, i32* %origin60, align 4
  %40 = load i32, i32* %dpos, align 4
  %cmp61 = icmp eq i32 %39, %40
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.68

land.lhs.true.63:                                 ; preds = %land.lhs.true.57
  %41 = load i32, i32* %dpos, align 4
  %42 = load i32, i32* %nd, align 4
  %call64 = call i32 @is_same_dragon(i32 %41, i32 %42)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %land.lhs.true.63
  %43 = load i32, i32* %dpos, align 4
  %arraydecay67 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i32 0
  call void @mark_string(i32 %43, i8* %arraydecay67, i8 signext 1)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %land.lhs.true.63, %land.lhs.true.57, %for.body.51
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %44 = load i32, i32* %dpos, align 4
  %inc70 = add nsw i32 %44, 1
  store i32 %inc70, i32* %dpos, align 4
  br label %for.cond.48

for.end.71:                                       ; preds = %for.cond.48
  br label %if.end.72

if.end.72:                                        ; preds = %for.end.71, %for.body.28
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %45 = load i32, i32* %k, align 4
  %inc74 = add nsw i32 %45, 1
  store i32 %inc74, i32* %k, align 4
  br label %for.cond.20

for.end.75:                                       ; preds = %for.cond.20
  %46 = load i32, i32* %apos.addr, align 4
  %tobool76 = icmp ne i32 %46, 0
  br i1 %tobool76, label %if.then.77, label %if.end.87

if.then.77:                                       ; preds = %for.end.75
  %47 = load i32, i32* %apos.addr, align 4
  %idxprom78 = sext i32 %47 to i64
  %arrayidx79 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom78
  %48 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %48 to i32
  %cmp81 = icmp ne i32 %conv80, 3
  br i1 %cmp81, label %if.then.83, label %if.else

if.then.83:                                       ; preds = %if.then.77
  br label %if.end.84

if.else:                                          ; preds = %if.then.77
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else, %if.then.83
  %49 = load i32, i32* %apos.addr, align 4
  %idxprom85 = sext i32 %49 to i64
  %arrayidx86 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom85
  store i8 1, i8* %arrayidx86, align 1
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.84, %for.end.75
  store i32 -1, i32* %top_row, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.113, %if.end.87
  %50 = load i32, i32* %m, align 4
  %51 = load i32, i32* @board_size, align 4
  %cmp89 = icmp slt i32 %50, %51
  br i1 %cmp89, label %for.body.91, label %for.end.115

for.body.91:                                      ; preds = %for.cond.88
  %52 = load i32, i32* %top_row, align 4
  %cmp92 = icmp ne i32 %52, -1
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %for.body.91
  br label %for.end.115

if.end.95:                                        ; preds = %for.body.91
  store i32 0, i32* %n, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.110, %if.end.95
  %53 = load i32, i32* %n, align 4
  %54 = load i32, i32* @board_size, align 4
  %cmp97 = icmp slt i32 %53, %54
  br i1 %cmp97, label %for.body.99, label %for.end.112

for.body.99:                                      ; preds = %for.cond.96
  %55 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %55, 20
  %add = add nsw i32 21, %mul
  %56 = load i32, i32* %n, align 4
  %add100 = add nsw i32 %add, %56
  %idxprom101 = sext i32 %add100 to i64
  %arrayidx102 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom101
  %57 = load i8, i8* %arrayidx102, align 1
  %tobool103 = icmp ne i8 %57, 0
  br i1 %tobool103, label %if.then.104, label %if.end.109

if.then.104:                                      ; preds = %for.body.99
  %58 = load i32, i32* %m, align 4
  %mul105 = mul nsw i32 %58, 20
  %add106 = add nsw i32 21, %mul105
  %59 = load i32, i32* %n, align 4
  %add107 = add nsw i32 %add106, %59
  %arrayidx108 = getelementptr inbounds [19 x i32], [19 x i32]* %left_corner, i32 0, i64 0
  store i32 %add107, i32* %arrayidx108, align 4
  %60 = load i32, i32* %m, align 4
  store i32 %60, i32* %top_row, align 4
  br label %for.end.112

if.end.109:                                       ; preds = %for.body.99
  br label %for.inc.110

for.inc.110:                                      ; preds = %if.end.109
  %61 = load i32, i32* %n, align 4
  %inc111 = add nsw i32 %61, 1
  store i32 %inc111, i32* %n, align 4
  br label %for.cond.96

for.end.112:                                      ; preds = %if.then.104, %for.cond.96
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.end.112
  %62 = load i32, i32* %m, align 4
  %inc114 = add nsw i32 %62, 1
  store i32 %inc114, i32* %m, align 4
  br label %for.cond.88

for.end.115:                                      ; preds = %if.then.94, %for.cond.88
  store i32 -1, i32* %bottom_row, align 4
  %63 = load i32, i32* @board_size, align 4
  %sub116 = sub nsw i32 %63, 1
  store i32 %sub116, i32* %m, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.140, %for.end.115
  %64 = load i32, i32* %m, align 4
  %cmp118 = icmp sge i32 %64, 0
  br i1 %cmp118, label %for.body.120, label %for.end.141

for.body.120:                                     ; preds = %for.cond.117
  %65 = load i32, i32* %bottom_row, align 4
  %cmp121 = icmp ne i32 %65, -1
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %for.body.120
  br label %for.end.141

if.end.124:                                       ; preds = %for.body.120
  store i32 0, i32* %n, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.137, %if.end.124
  %66 = load i32, i32* %n, align 4
  %67 = load i32, i32* @board_size, align 4
  %cmp126 = icmp slt i32 %66, %67
  br i1 %cmp126, label %for.body.128, label %for.end.139

for.body.128:                                     ; preds = %for.cond.125
  %68 = load i32, i32* %m, align 4
  %mul129 = mul nsw i32 %68, 20
  %add130 = add nsw i32 21, %mul129
  %69 = load i32, i32* %n, align 4
  %add131 = add nsw i32 %add130, %69
  %idxprom132 = sext i32 %add131 to i64
  %arrayidx133 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom132
  %70 = load i8, i8* %arrayidx133, align 1
  %tobool134 = icmp ne i8 %70, 0
  br i1 %tobool134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %for.body.128
  %71 = load i32, i32* %m, align 4
  store i32 %71, i32* %bottom_row, align 4
  br label %for.end.139

if.end.136:                                       ; preds = %for.body.128
  br label %for.inc.137

for.inc.137:                                      ; preds = %if.end.136
  %72 = load i32, i32* %n, align 4
  %inc138 = add nsw i32 %72, 1
  store i32 %inc138, i32* %n, align 4
  br label %for.cond.125

for.end.139:                                      ; preds = %if.then.135, %for.cond.125
  br label %for.inc.140

for.inc.140:                                      ; preds = %for.end.139
  %73 = load i32, i32* %m, align 4
  %dec = add nsw i32 %73, -1
  store i32 %dec, i32* %m, align 4
  br label %for.cond.117

for.end.141:                                      ; preds = %if.then.123, %for.cond.117
  store i32 1, i32* %left_corners, align 4
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.207, %for.end.141
  %74 = load i32, i32* %left_corners, align 4
  %sub143 = sub nsw i32 %74, 1
  %idxprom144 = sext i32 %sub143 to i64
  %arrayidx145 = getelementptr inbounds [19 x i32], [19 x i32]* %left_corner, i32 0, i64 %idxprom144
  %75 = load i32, i32* %arrayidx145, align 4
  %div = sdiv i32 %75, 20
  %sub146 = sub nsw i32 %div, 1
  %76 = load i32, i32* %bottom_row, align 4
  %cmp147 = icmp slt i32 %sub146, %76
  br i1 %cmp147, label %for.body.149, label %for.end.209

for.body.149:                                     ; preds = %for.cond.142
  store i32 0, i32* %best_found, align 4
  store float 0.000000e+00, float* %best_slope, align 4
  %77 = load i32, i32* %left_corners, align 4
  %sub151 = sub nsw i32 %77, 1
  %idxprom152 = sext i32 %sub151 to i64
  %arrayidx153 = getelementptr inbounds [19 x i32], [19 x i32]* %left_corner, i32 0, i64 %idxprom152
  %78 = load i32, i32* %arrayidx153, align 4
  %div154 = sdiv i32 %78, 20
  %sub155 = sub nsw i32 %div154, 1
  store i32 %sub155, i32* %m150, align 4
  %79 = load i32, i32* %left_corners, align 4
  %sub157 = sub nsw i32 %79, 1
  %idxprom158 = sext i32 %sub157 to i64
  %arrayidx159 = getelementptr inbounds [19 x i32], [19 x i32]* %left_corner, i32 0, i64 %idxprom158
  %80 = load i32, i32* %arrayidx159, align 4
  %rem = srem i32 %80, 20
  %sub160 = sub nsw i32 %rem, 1
  store i32 %sub160, i32* %n156, align 4
  %81 = load i32, i32* %m150, align 4
  %add161 = add nsw i32 %81, 1
  store i32 %add161, i32* %i, align 4
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.194, %for.body.149
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %bottom_row, align 4
  %cmp163 = icmp sle i32 %82, %83
  br i1 %cmp163, label %for.body.165, label %for.end.196

for.body.165:                                     ; preds = %for.cond.162
  store i32 0, i32* %j, align 4
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.191, %for.body.165
  %84 = load i32, i32* %j, align 4
  %85 = load i32, i32* @board_size, align 4
  %cmp167 = icmp slt i32 %84, %85
  br i1 %cmp167, label %for.body.169, label %for.end.193

for.body.169:                                     ; preds = %for.cond.166
  %86 = load i32, i32* %i, align 4
  %mul170 = mul nsw i32 %86, 20
  %add171 = add nsw i32 21, %mul170
  %87 = load i32, i32* %j, align 4
  %add172 = add nsw i32 %add171, %87
  %idxprom173 = sext i32 %add172 to i64
  %arrayidx174 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom173
  %88 = load i8, i8* %arrayidx174, align 1
  %tobool175 = icmp ne i8 %88, 0
  br i1 %tobool175, label %if.then.176, label %if.end.190

if.then.176:                                      ; preds = %for.body.169
  %89 = load i32, i32* %j, align 4
  %90 = load i32, i32* %n156, align 4
  %sub177 = sub nsw i32 %89, %90
  %conv178 = sitofp i32 %sub177 to float
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* %m150, align 4
  %sub179 = sub nsw i32 %91, %92
  %conv180 = sitofp i32 %sub179 to float
  %div181 = fdiv float %conv178, %conv180
  store float %div181, float* %slope, align 4
  %93 = load i32, i32* %best_found, align 4
  %tobool182 = icmp ne i32 %93, 0
  br i1 %tobool182, label %lor.lhs.false, label %if.then.185

lor.lhs.false:                                    ; preds = %if.then.176
  %94 = load float, float* %slope, align 4
  %95 = load float, float* %best_slope, align 4
  %cmp183 = fcmp olt float %94, %95
  br i1 %cmp183, label %if.then.185, label %if.end.189

if.then.185:                                      ; preds = %lor.lhs.false, %if.then.176
  %96 = load i32, i32* %i, align 4
  %mul186 = mul nsw i32 %96, 20
  %add187 = add nsw i32 21, %mul186
  %97 = load i32, i32* %j, align 4
  %add188 = add nsw i32 %add187, %97
  store i32 %add188, i32* %best_found, align 4
  %98 = load float, float* %slope, align 4
  store float %98, float* %best_slope, align 4
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.185, %lor.lhs.false
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %for.body.169
  br label %for.inc.191

for.inc.191:                                      ; preds = %if.end.190
  %99 = load i32, i32* %j, align 4
  %inc192 = add nsw i32 %99, 1
  store i32 %inc192, i32* %j, align 4
  br label %for.cond.166

for.end.193:                                      ; preds = %for.cond.166
  br label %for.inc.194

for.inc.194:                                      ; preds = %for.end.193
  %100 = load i32, i32* %i, align 4
  %inc195 = add nsw i32 %100, 1
  store i32 %inc195, i32* %i, align 4
  br label %for.cond.162

for.end.196:                                      ; preds = %for.cond.162
  %101 = load i32, i32* %best_found, align 4
  %idxprom197 = sext i32 %101 to i64
  %arrayidx198 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom197
  %102 = load i8, i8* %arrayidx198, align 1
  %conv199 = zext i8 %102 to i32
  %cmp200 = icmp ne i32 %conv199, 3
  br i1 %cmp200, label %if.then.202, label %if.else.203

if.then.202:                                      ; preds = %for.end.196
  br label %if.end.204

if.else.203:                                      ; preds = %for.end.196
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 175, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.203, %if.then.202
  %103 = load i32, i32* %best_found, align 4
  %104 = load i32, i32* %left_corners, align 4
  %idxprom205 = sext i32 %104 to i64
  %arrayidx206 = getelementptr inbounds [19 x i32], [19 x i32]* %left_corner, i32 0, i64 %idxprom205
  store i32 %103, i32* %arrayidx206, align 4
  br label %for.inc.207

for.inc.207:                                      ; preds = %if.end.204
  %105 = load i32, i32* %left_corners, align 4
  %inc208 = add nsw i32 %105, 1
  store i32 %inc208, i32* %left_corners, align 4
  br label %for.cond.142

for.end.209:                                      ; preds = %for.cond.142
  %106 = load i32, i32* @board_size, align 4
  %sub210 = sub nsw i32 %106, 1
  store i32 %sub210, i32* %n, align 4
  br label %for.cond.211

for.cond.211:                                     ; preds = %for.inc.227, %for.end.209
  %107 = load i32, i32* %n, align 4
  %cmp212 = icmp sge i32 %107, 0
  br i1 %cmp212, label %for.body.214, label %for.end.229

for.body.214:                                     ; preds = %for.cond.211
  %108 = load i32, i32* %top_row, align 4
  %mul215 = mul nsw i32 %108, 20
  %add216 = add nsw i32 21, %mul215
  %109 = load i32, i32* %n, align 4
  %add217 = add nsw i32 %add216, %109
  %idxprom218 = sext i32 %add217 to i64
  %arrayidx219 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom218
  %110 = load i8, i8* %arrayidx219, align 1
  %tobool220 = icmp ne i8 %110, 0
  br i1 %tobool220, label %if.then.221, label %if.end.226

if.then.221:                                      ; preds = %for.body.214
  %111 = load i32, i32* %top_row, align 4
  %mul222 = mul nsw i32 %111, 20
  %add223 = add nsw i32 21, %mul222
  %112 = load i32, i32* %n, align 4
  %add224 = add nsw i32 %add223, %112
  %arrayidx225 = getelementptr inbounds [19 x i32], [19 x i32]* %right_corner, i32 0, i64 0
  store i32 %add224, i32* %arrayidx225, align 4
  br label %for.end.229

if.end.226:                                       ; preds = %for.body.214
  br label %for.inc.227

for.inc.227:                                      ; preds = %if.end.226
  %113 = load i32, i32* %n, align 4
  %dec228 = add nsw i32 %113, -1
  store i32 %dec228, i32* %n, align 4
  br label %for.cond.211

for.end.229:                                      ; preds = %if.then.221, %for.cond.211
  store i32 1, i32* %right_corners, align 4
  br label %for.cond.230

for.cond.230:                                     ; preds = %for.inc.302, %for.end.229
  %114 = load i32, i32* %right_corners, align 4
  %sub231 = sub nsw i32 %114, 1
  %idxprom232 = sext i32 %sub231 to i64
  %arrayidx233 = getelementptr inbounds [19 x i32], [19 x i32]* %right_corner, i32 0, i64 %idxprom232
  %115 = load i32, i32* %arrayidx233, align 4
  %div234 = sdiv i32 %115, 20
  %sub235 = sub nsw i32 %div234, 1
  %116 = load i32, i32* %bottom_row, align 4
  %cmp236 = icmp slt i32 %sub235, %116
  br i1 %cmp236, label %for.body.238, label %for.end.304

for.body.238:                                     ; preds = %for.cond.230
  store i32 0, i32* %best_found239, align 4
  store float 0.000000e+00, float* %best_slope240, align 4
  %117 = load i32, i32* %right_corners, align 4
  %sub242 = sub nsw i32 %117, 1
  %idxprom243 = sext i32 %sub242 to i64
  %arrayidx244 = getelementptr inbounds [19 x i32], [19 x i32]* %right_corner, i32 0, i64 %idxprom243
  %118 = load i32, i32* %arrayidx244, align 4
  %div245 = sdiv i32 %118, 20
  %sub246 = sub nsw i32 %div245, 1
  store i32 %sub246, i32* %m241, align 4
  %119 = load i32, i32* %right_corners, align 4
  %sub248 = sub nsw i32 %119, 1
  %idxprom249 = sext i32 %sub248 to i64
  %arrayidx250 = getelementptr inbounds [19 x i32], [19 x i32]* %right_corner, i32 0, i64 %idxprom249
  %120 = load i32, i32* %arrayidx250, align 4
  %rem251 = srem i32 %120, 20
  %sub252 = sub nsw i32 %rem251, 1
  store i32 %sub252, i32* %n247, align 4
  %121 = load i32, i32* %m241, align 4
  %add253 = add nsw i32 %121, 1
  store i32 %add253, i32* %i, align 4
  br label %for.cond.254

for.cond.254:                                     ; preds = %for.inc.289, %for.body.238
  %122 = load i32, i32* %i, align 4
  %123 = load i32, i32* %bottom_row, align 4
  %cmp255 = icmp sle i32 %122, %123
  br i1 %cmp255, label %for.body.257, label %for.end.291

for.body.257:                                     ; preds = %for.cond.254
  %124 = load i32, i32* @board_size, align 4
  %sub258 = sub nsw i32 %124, 1
  store i32 %sub258, i32* %j, align 4
  br label %for.cond.259

for.cond.259:                                     ; preds = %for.inc.286, %for.body.257
  %125 = load i32, i32* %j, align 4
  %cmp260 = icmp sge i32 %125, 0
  br i1 %cmp260, label %for.body.262, label %for.end.288

for.body.262:                                     ; preds = %for.cond.259
  %126 = load i32, i32* %i, align 4
  %mul263 = mul nsw i32 %126, 20
  %add264 = add nsw i32 21, %mul263
  %127 = load i32, i32* %j, align 4
  %add265 = add nsw i32 %add264, %127
  %idxprom266 = sext i32 %add265 to i64
  %arrayidx267 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom266
  %128 = load i8, i8* %arrayidx267, align 1
  %tobool268 = icmp ne i8 %128, 0
  br i1 %tobool268, label %if.then.269, label %if.end.285

if.then.269:                                      ; preds = %for.body.262
  %129 = load i32, i32* %j, align 4
  %130 = load i32, i32* %n247, align 4
  %sub271 = sub nsw i32 %129, %130
  %conv272 = sitofp i32 %sub271 to float
  %131 = load i32, i32* %i, align 4
  %132 = load i32, i32* %m241, align 4
  %sub273 = sub nsw i32 %131, %132
  %conv274 = sitofp i32 %sub273 to float
  %div275 = fdiv float %conv272, %conv274
  store float %div275, float* %slope270, align 4
  %133 = load i32, i32* %best_found239, align 4
  %tobool276 = icmp ne i32 %133, 0
  br i1 %tobool276, label %lor.lhs.false.277, label %if.then.280

lor.lhs.false.277:                                ; preds = %if.then.269
  %134 = load float, float* %slope270, align 4
  %135 = load float, float* %best_slope240, align 4
  %cmp278 = fcmp ogt float %134, %135
  br i1 %cmp278, label %if.then.280, label %if.end.284

if.then.280:                                      ; preds = %lor.lhs.false.277, %if.then.269
  %136 = load i32, i32* %i, align 4
  %mul281 = mul nsw i32 %136, 20
  %add282 = add nsw i32 21, %mul281
  %137 = load i32, i32* %j, align 4
  %add283 = add nsw i32 %add282, %137
  store i32 %add283, i32* %best_found239, align 4
  %138 = load float, float* %slope270, align 4
  store float %138, float* %best_slope240, align 4
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.280, %lor.lhs.false.277
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.284, %for.body.262
  br label %for.inc.286

for.inc.286:                                      ; preds = %if.end.285
  %139 = load i32, i32* %j, align 4
  %dec287 = add nsw i32 %139, -1
  store i32 %dec287, i32* %j, align 4
  br label %for.cond.259

for.end.288:                                      ; preds = %for.cond.259
  br label %for.inc.289

for.inc.289:                                      ; preds = %for.end.288
  %140 = load i32, i32* %i, align 4
  %inc290 = add nsw i32 %140, 1
  store i32 %inc290, i32* %i, align 4
  br label %for.cond.254

for.end.291:                                      ; preds = %for.cond.254
  %141 = load i32, i32* %best_found239, align 4
  %idxprom292 = sext i32 %141 to i64
  %arrayidx293 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom292
  %142 = load i8, i8* %arrayidx293, align 1
  %conv294 = zext i8 %142 to i32
  %cmp295 = icmp ne i32 %conv294, 3
  br i1 %cmp295, label %if.then.297, label %if.else.298

if.then.297:                                      ; preds = %for.end.291
  br label %if.end.299

if.else.298:                                      ; preds = %for.end.291
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 207, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.299

if.end.299:                                       ; preds = %if.else.298, %if.then.297
  %143 = load i32, i32* %best_found239, align 4
  %144 = load i32, i32* %right_corners, align 4
  %idxprom300 = sext i32 %144 to i64
  %arrayidx301 = getelementptr inbounds [19 x i32], [19 x i32]* %right_corner, i32 0, i64 %idxprom300
  store i32 %143, i32* %arrayidx301, align 4
  br label %for.inc.302

for.inc.302:                                      ; preds = %if.end.299
  %145 = load i32, i32* %right_corners, align 4
  %inc303 = add nsw i32 %145, 1
  store i32 %inc303, i32* %right_corners, align 4
  br label %for.cond.230

for.end.304:                                      ; preds = %for.cond.230
  %arrayidx305 = getelementptr inbounds [19 x i32], [19 x i32]* %left_corner, i32 0, i64 0
  %146 = load i32, i32* %arrayidx305, align 4
  %rem306 = srem i32 %146, 20
  %sub307 = sub nsw i32 %rem306, 1
  store i32 %sub307, i32* %n, align 4
  br label %for.cond.308

for.cond.308:                                     ; preds = %for.inc.320, %for.end.304
  %147 = load i32, i32* %n, align 4
  %arrayidx309 = getelementptr inbounds [19 x i32], [19 x i32]* %right_corner, i32 0, i64 0
  %148 = load i32, i32* %arrayidx309, align 4
  %rem310 = srem i32 %148, 20
  %sub311 = sub nsw i32 %rem310, 1
  %cmp312 = icmp sle i32 %147, %sub311
  br i1 %cmp312, label %for.body.314, label %for.end.322

for.body.314:                                     ; preds = %for.cond.308
  %149 = load i32, i32* %top_row, align 4
  %mul315 = mul nsw i32 %149, 20
  %add316 = add nsw i32 21, %mul315
  %150 = load i32, i32* %n, align 4
  %add317 = add nsw i32 %add316, %150
  %idxprom318 = sext i32 %add317 to i64
  %arrayidx319 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom318
  store i8 1, i8* %arrayidx319, align 1
  br label %for.inc.320

for.inc.320:                                      ; preds = %for.body.314
  %151 = load i32, i32* %n, align 4
  %inc321 = add nsw i32 %151, 1
  store i32 %inc321, i32* %n, align 4
  br label %for.cond.308

for.end.322:                                      ; preds = %for.cond.308
  %152 = load i32, i32* %left_corners, align 4
  %sub323 = sub nsw i32 %152, 1
  %idxprom324 = sext i32 %sub323 to i64
  %arrayidx325 = getelementptr inbounds [19 x i32], [19 x i32]* %left_corner, i32 0, i64 %idxprom324
  %153 = load i32, i32* %arrayidx325, align 4
  %rem326 = srem i32 %153, 20
  %sub327 = sub nsw i32 %rem326, 1
  store i32 %sub327, i32* %n, align 4
  br label %for.cond.328

for.cond.328:                                     ; preds = %for.inc.342, %for.end.322
  %154 = load i32, i32* %n, align 4
  %155 = load i32, i32* %right_corners, align 4
  %sub329 = sub nsw i32 %155, 1
  %idxprom330 = sext i32 %sub329 to i64
  %arrayidx331 = getelementptr inbounds [19 x i32], [19 x i32]* %right_corner, i32 0, i64 %idxprom330
  %156 = load i32, i32* %arrayidx331, align 4
  %rem332 = srem i32 %156, 20
  %sub333 = sub nsw i32 %rem332, 1
  %cmp334 = icmp sle i32 %154, %sub333
  br i1 %cmp334, label %for.body.336, label %for.end.344

for.body.336:                                     ; preds = %for.cond.328
  %157 = load i32, i32* %bottom_row, align 4
  %mul337 = mul nsw i32 %157, 20
  %add338 = add nsw i32 21, %mul337
  %158 = load i32, i32* %n, align 4
  %add339 = add nsw i32 %add338, %158
  %idxprom340 = sext i32 %add339 to i64
  %arrayidx341 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom340
  store i8 1, i8* %arrayidx341, align 1
  br label %for.inc.342

for.inc.342:                                      ; preds = %for.body.336
  %159 = load i32, i32* %n, align 4
  %inc343 = add nsw i32 %159, 1
  store i32 %inc343, i32* %n, align 4
  br label %for.cond.328

for.end.344:                                      ; preds = %for.cond.328
  %160 = load i32, i32* %top_row, align 4
  %add345 = add nsw i32 %160, 1
  store i32 %add345, i32* %m, align 4
  br label %for.cond.346

for.cond.346:                                     ; preds = %for.inc.464, %for.end.344
  %161 = load i32, i32* %m, align 4
  %162 = load i32, i32* %bottom_row, align 4
  %cmp347 = icmp slt i32 %161, %162
  br i1 %cmp347, label %for.body.349, label %for.end.466

for.body.349:                                     ; preds = %for.cond.346
  store i32 -1, i32* %left_boundary, align 4
  store i32 -1, i32* %right_boundary, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.350

for.cond.350:                                     ; preds = %for.inc.396, %for.body.349
  %163 = load i32, i32* %k, align 4
  %164 = load i32, i32* %left_corners, align 4
  %cmp351 = icmp slt i32 %163, %164
  br i1 %cmp351, label %for.body.353, label %for.end.398

for.body.353:                                     ; preds = %for.cond.350
  %165 = load i32, i32* %k, align 4
  %idxprom354 = sext i32 %165 to i64
  %arrayidx355 = getelementptr inbounds [19 x i32], [19 x i32]* %left_corner, i32 0, i64 %idxprom354
  %166 = load i32, i32* %arrayidx355, align 4
  %div356 = sdiv i32 %166, 20
  %sub357 = sub nsw i32 %div356, 1
  %167 = load i32, i32* %m, align 4
  %cmp358 = icmp sgt i32 %sub357, %167
  br i1 %cmp358, label %if.then.360, label %if.end.395

if.then.360:                                      ; preds = %for.body.353
  %168 = load i32, i32* %k, align 4
  %sub361 = sub nsw i32 %168, 1
  %idxprom362 = sext i32 %sub361 to i64
  %arrayidx363 = getelementptr inbounds [19 x i32], [19 x i32]* %left_corner, i32 0, i64 %idxprom362
  %169 = load i32, i32* %arrayidx363, align 4
  %div364 = sdiv i32 %169, 20
  %sub365 = sub nsw i32 %div364, 1
  %conv366 = sitofp i32 %sub365 to float
  store float %conv366, float* %ti, align 4
  %170 = load i32, i32* %k, align 4
  %sub367 = sub nsw i32 %170, 1
  %idxprom368 = sext i32 %sub367 to i64
  %arrayidx369 = getelementptr inbounds [19 x i32], [19 x i32]* %left_corner, i32 0, i64 %idxprom368
  %171 = load i32, i32* %arrayidx369, align 4
  %rem370 = srem i32 %171, 20
  %sub371 = sub nsw i32 %rem370, 1
  %conv372 = sitofp i32 %sub371 to float
  store float %conv372, float* %tj, align 4
  %172 = load i32, i32* %k, align 4
  %idxprom373 = sext i32 %172 to i64
  %arrayidx374 = getelementptr inbounds [19 x i32], [19 x i32]* %left_corner, i32 0, i64 %idxprom373
  %173 = load i32, i32* %arrayidx374, align 4
  %div375 = sdiv i32 %173, 20
  %sub376 = sub nsw i32 %div375, 1
  %conv377 = sitofp i32 %sub376 to float
  store float %conv377, float* %bi, align 4
  %174 = load i32, i32* %k, align 4
  %idxprom378 = sext i32 %174 to i64
  %arrayidx379 = getelementptr inbounds [19 x i32], [19 x i32]* %left_corner, i32 0, i64 %idxprom378
  %175 = load i32, i32* %arrayidx379, align 4
  %rem380 = srem i32 %175, 20
  %sub381 = sub nsw i32 %rem380, 1
  %conv382 = sitofp i32 %sub381 to float
  store float %conv382, float* %bj, align 4
  %176 = load float, float* %tj, align 4
  %conv383 = fpext float %176 to double
  %add384 = fadd double -1.000000e-03, %conv383
  %177 = load i32, i32* %m, align 4
  %conv385 = sitofp i32 %177 to float
  %178 = load float, float* %ti, align 4
  %sub386 = fsub float %conv385, %178
  %179 = load float, float* %bj, align 4
  %180 = load float, float* %tj, align 4
  %sub387 = fsub float %179, %180
  %mul388 = fmul float %sub386, %sub387
  %181 = load float, float* %bi, align 4
  %182 = load float, float* %ti, align 4
  %sub389 = fsub float %181, %182
  %div390 = fdiv float %mul388, %sub389
  %conv391 = fpext float %div390 to double
  %add392 = fadd double %add384, %conv391
  %call393 = call double @ceil(double %add392) #4
  %conv394 = fptosi double %call393 to i32
  store i32 %conv394, i32* %left_boundary, align 4
  br label %for.end.398

if.end.395:                                       ; preds = %for.body.353
  br label %for.inc.396

for.inc.396:                                      ; preds = %if.end.395
  %183 = load i32, i32* %k, align 4
  %inc397 = add nsw i32 %183, 1
  store i32 %inc397, i32* %k, align 4
  br label %for.cond.350

for.end.398:                                      ; preds = %if.then.360, %for.cond.350
  store i32 1, i32* %k, align 4
  br label %for.cond.399

for.cond.399:                                     ; preds = %for.inc.449, %for.end.398
  %184 = load i32, i32* %k, align 4
  %185 = load i32, i32* %right_corners, align 4
  %cmp400 = icmp slt i32 %184, %185
  br i1 %cmp400, label %for.body.402, label %for.end.451

for.body.402:                                     ; preds = %for.cond.399
  %186 = load i32, i32* %k, align 4
  %idxprom403 = sext i32 %186 to i64
  %arrayidx404 = getelementptr inbounds [19 x i32], [19 x i32]* %right_corner, i32 0, i64 %idxprom403
  %187 = load i32, i32* %arrayidx404, align 4
  %div405 = sdiv i32 %187, 20
  %sub406 = sub nsw i32 %div405, 1
  %188 = load i32, i32* %m, align 4
  %cmp407 = icmp sgt i32 %sub406, %188
  br i1 %cmp407, label %if.then.409, label %if.end.448

if.then.409:                                      ; preds = %for.body.402
  %189 = load i32, i32* %k, align 4
  %sub411 = sub nsw i32 %189, 1
  %idxprom412 = sext i32 %sub411 to i64
  %arrayidx413 = getelementptr inbounds [19 x i32], [19 x i32]* %right_corner, i32 0, i64 %idxprom412
  %190 = load i32, i32* %arrayidx413, align 4
  %div414 = sdiv i32 %190, 20
  %sub415 = sub nsw i32 %div414, 1
  %conv416 = sitofp i32 %sub415 to float
  store float %conv416, float* %ti410, align 4
  %191 = load i32, i32* %k, align 4
  %sub418 = sub nsw i32 %191, 1
  %idxprom419 = sext i32 %sub418 to i64
  %arrayidx420 = getelementptr inbounds [19 x i32], [19 x i32]* %right_corner, i32 0, i64 %idxprom419
  %192 = load i32, i32* %arrayidx420, align 4
  %rem421 = srem i32 %192, 20
  %sub422 = sub nsw i32 %rem421, 1
  %conv423 = sitofp i32 %sub422 to float
  store float %conv423, float* %tj417, align 4
  %193 = load i32, i32* %k, align 4
  %idxprom425 = sext i32 %193 to i64
  %arrayidx426 = getelementptr inbounds [19 x i32], [19 x i32]* %right_corner, i32 0, i64 %idxprom425
  %194 = load i32, i32* %arrayidx426, align 4
  %div427 = sdiv i32 %194, 20
  %sub428 = sub nsw i32 %div427, 1
  %conv429 = sitofp i32 %sub428 to float
  store float %conv429, float* %bi424, align 4
  %195 = load i32, i32* %k, align 4
  %idxprom431 = sext i32 %195 to i64
  %arrayidx432 = getelementptr inbounds [19 x i32], [19 x i32]* %right_corner, i32 0, i64 %idxprom431
  %196 = load i32, i32* %arrayidx432, align 4
  %rem433 = srem i32 %196, 20
  %sub434 = sub nsw i32 %rem433, 1
  %conv435 = sitofp i32 %sub434 to float
  store float %conv435, float* %bj430, align 4
  %197 = load float, float* %tj417, align 4
  %conv436 = fpext float %197 to double
  %add437 = fadd double 1.000000e-03, %conv436
  %198 = load i32, i32* %m, align 4
  %conv438 = sitofp i32 %198 to float
  %199 = load float, float* %ti410, align 4
  %sub439 = fsub float %conv438, %199
  %200 = load float, float* %bj430, align 4
  %201 = load float, float* %tj417, align 4
  %sub440 = fsub float %200, %201
  %mul441 = fmul float %sub439, %sub440
  %202 = load float, float* %bi424, align 4
  %203 = load float, float* %ti410, align 4
  %sub442 = fsub float %202, %203
  %div443 = fdiv float %mul441, %sub442
  %conv444 = fpext float %div443 to double
  %add445 = fadd double %add437, %conv444
  %call446 = call double @floor(double %add445) #4
  %conv447 = fptosi double %call446 to i32
  store i32 %conv447, i32* %right_boundary, align 4
  br label %for.end.451

if.end.448:                                       ; preds = %for.body.402
  br label %for.inc.449

for.inc.449:                                      ; preds = %if.end.448
  %204 = load i32, i32* %k, align 4
  %inc450 = add nsw i32 %204, 1
  store i32 %inc450, i32* %k, align 4
  br label %for.cond.399

for.end.451:                                      ; preds = %if.then.409, %for.cond.399
  %205 = load i32, i32* %left_boundary, align 4
  store i32 %205, i32* %n, align 4
  br label %for.cond.452

for.cond.452:                                     ; preds = %for.inc.461, %for.end.451
  %206 = load i32, i32* %n, align 4
  %207 = load i32, i32* %right_boundary, align 4
  %cmp453 = icmp sle i32 %206, %207
  br i1 %cmp453, label %for.body.455, label %for.end.463

for.body.455:                                     ; preds = %for.cond.452
  %208 = load i32, i32* %m, align 4
  %mul456 = mul nsw i32 %208, 20
  %add457 = add nsw i32 21, %mul456
  %209 = load i32, i32* %n, align 4
  %add458 = add nsw i32 %add457, %209
  %idxprom459 = sext i32 %add458 to i64
  %arrayidx460 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom459
  store i8 1, i8* %arrayidx460, align 1
  br label %for.inc.461

for.inc.461:                                      ; preds = %for.body.455
  %210 = load i32, i32* %n, align 4
  %inc462 = add nsw i32 %210, 1
  store i32 %inc462, i32* %n, align 4
  br label %for.cond.452

for.end.463:                                      ; preds = %for.cond.452
  br label %for.inc.464

for.inc.464:                                      ; preds = %for.end.463
  %211 = load i32, i32* %m, align 4
  %inc465 = add nsw i32 %211, 1
  store i32 %inc465, i32* %m, align 4
  br label %for.cond.346

for.end.466:                                      ; preds = %for.cond.346
  store i32 21, i32* %dpos, align 4
  br label %for.cond.467

for.cond.467:                                     ; preds = %for.inc.513, %for.end.466
  %212 = load i32, i32* %dpos, align 4
  %cmp468 = icmp slt i32 %212, 400
  br i1 %cmp468, label %for.body.470, label %for.end.515

for.body.470:                                     ; preds = %for.cond.467
  %213 = load i32, i32* %dpos, align 4
  %idxprom471 = sext i32 %213 to i64
  %arrayidx472 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom471
  %214 = load i8, i8* %arrayidx472, align 1
  %conv473 = zext i8 %214 to i32
  %cmp474 = icmp ne i32 %conv473, 3
  br i1 %cmp474, label %land.lhs.true.476, label %if.end.512

land.lhs.true.476:                                ; preds = %for.body.470
  %215 = load i32, i32* %dpos, align 4
  %idxprom477 = sext i32 %215 to i64
  %arrayidx478 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom477
  %216 = load i8, i8* %arrayidx478, align 1
  %conv479 = sext i8 %216 to i32
  %cmp480 = icmp eq i32 %conv479, 1
  br i1 %cmp480, label %if.then.482, label %if.end.512

if.then.482:                                      ; preds = %land.lhs.true.476
  store i32 0, i32* %k, align 4
  br label %for.cond.483

for.cond.483:                                     ; preds = %for.inc.509, %if.then.482
  %217 = load i32, i32* %k, align 4
  %cmp484 = icmp slt i32 %217, 4
  br i1 %cmp484, label %for.body.486, label %for.end.511

for.body.486:                                     ; preds = %for.cond.483
  %218 = load i32, i32* %dpos, align 4
  %219 = load i32, i32* %k, align 4
  %idxprom487 = sext i32 %219 to i64
  %arrayidx488 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom487
  %220 = load i32, i32* %arrayidx488, align 4
  %add489 = add nsw i32 %218, %220
  %idxprom490 = sext i32 %add489 to i64
  %arrayidx491 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom490
  %221 = load i8, i8* %arrayidx491, align 1
  %conv492 = zext i8 %221 to i32
  %cmp493 = icmp ne i32 %conv492, 3
  br i1 %cmp493, label %land.lhs.true.495, label %if.end.508

land.lhs.true.495:                                ; preds = %for.body.486
  %222 = load i32, i32* %dpos, align 4
  %223 = load i32, i32* %k, align 4
  %idxprom496 = sext i32 %223 to i64
  %arrayidx497 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom496
  %224 = load i32, i32* %arrayidx497, align 4
  %add498 = add nsw i32 %222, %224
  %idxprom499 = sext i32 %add498 to i64
  %arrayidx500 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom499
  %225 = load i8, i8* %arrayidx500, align 1
  %tobool501 = icmp ne i8 %225, 0
  br i1 %tobool501, label %if.end.508, label %if.then.502

if.then.502:                                      ; preds = %land.lhs.true.495
  %226 = load i32, i32* %dpos, align 4
  %227 = load i32, i32* %k, align 4
  %idxprom503 = sext i32 %227 to i64
  %arrayidx504 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom503
  %228 = load i32, i32* %arrayidx504, align 4
  %add505 = add nsw i32 %226, %228
  %idxprom506 = sext i32 %add505 to i64
  %arrayidx507 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom506
  store i8 2, i8* %arrayidx507, align 1
  br label %if.end.508

if.end.508:                                       ; preds = %if.then.502, %land.lhs.true.495, %for.body.486
  br label %for.inc.509

for.inc.509:                                      ; preds = %if.end.508
  %229 = load i32, i32* %k, align 4
  %inc510 = add nsw i32 %229, 1
  store i32 %inc510, i32* %k, align 4
  br label %for.cond.483

for.end.511:                                      ; preds = %for.cond.483
  br label %if.end.512

if.end.512:                                       ; preds = %for.end.511, %land.lhs.true.476, %for.body.470
  br label %for.inc.513

for.inc.513:                                      ; preds = %if.end.512
  %230 = load i32, i32* %dpos, align 4
  %inc514 = add nsw i32 %230, 1
  store i32 %inc514, i32* %dpos, align 4
  br label %for.cond.467

for.end.515:                                      ; preds = %for.cond.467
  store i32 21, i32* %dpos, align 4
  br label %for.cond.516

for.cond.516:                                     ; preds = %for.inc.565, %for.end.515
  %231 = load i32, i32* %dpos, align 4
  %cmp517 = icmp slt i32 %231, 400
  br i1 %cmp517, label %for.body.519, label %for.end.567

for.body.519:                                     ; preds = %for.cond.516
  %232 = load i32, i32* %dpos, align 4
  %idxprom520 = sext i32 %232 to i64
  %arrayidx521 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom520
  %233 = load i8, i8* %arrayidx521, align 1
  %conv522 = zext i8 %233 to i32
  %cmp523 = icmp ne i32 %conv522, 3
  br i1 %cmp523, label %land.lhs.true.525, label %if.end.564

land.lhs.true.525:                                ; preds = %for.body.519
  %234 = load i32, i32* %dpos, align 4
  %idxprom526 = sext i32 %234 to i64
  %arrayidx527 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom526
  %235 = load i8, i8* %arrayidx527, align 1
  %conv528 = sext i8 %235 to i32
  %cmp529 = icmp eq i32 %conv528, 1
  br i1 %cmp529, label %land.lhs.true.531, label %if.end.564

land.lhs.true.531:                                ; preds = %land.lhs.true.525
  %236 = load i32, i32* %dpos, align 4
  %idxprom532 = sext i32 %236 to i64
  %arrayidx533 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom532
  %237 = load i8, i8* %arrayidx533, align 1
  %conv534 = zext i8 %237 to i32
  %238 = load i32, i32* %color, align 4
  %cmp535 = icmp eq i32 %conv534, %238
  br i1 %cmp535, label %land.lhs.true.537, label %if.end.564

land.lhs.true.537:                                ; preds = %land.lhs.true.531
  %239 = load i32, i32* %pos.addr, align 4
  %240 = load i32, i32* %dpos, align 4
  %call538 = call i32 @are_neighbor_dragons(i32 %239, i32 %240)
  %tobool539 = icmp ne i32 %call538, 0
  br i1 %tobool539, label %land.lhs.true.540, label %if.end.564

land.lhs.true.540:                                ; preds = %land.lhs.true.537
  %241 = load i32, i32* %dpos, align 4
  %idxprom541 = sext i32 %241 to i64
  %arrayidx542 = getelementptr inbounds [400 x i8], [400 x i8]* %mf, i32 0, i64 %idxprom541
  %242 = load i8, i8* %arrayidx542, align 1
  %tobool543 = icmp ne i8 %242, 0
  br i1 %tobool543, label %if.end.564, label %if.then.544

if.then.544:                                      ; preds = %land.lhs.true.540
  store i32 21, i32* %mpos, align 4
  br label %for.cond.545

for.cond.545:                                     ; preds = %for.inc.561, %if.then.544
  %243 = load i32, i32* %mpos, align 4
  %cmp546 = icmp slt i32 %243, 400
  br i1 %cmp546, label %for.body.548, label %for.end.563

for.body.548:                                     ; preds = %for.cond.545
  %244 = load i32, i32* %mpos, align 4
  %idxprom549 = sext i32 %244 to i64
  %arrayidx550 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom549
  %245 = load i8, i8* %arrayidx550, align 1
  %conv551 = zext i8 %245 to i32
  %cmp552 = icmp ne i32 %conv551, 3
  br i1 %cmp552, label %land.lhs.true.554, label %if.end.560

land.lhs.true.554:                                ; preds = %for.body.548
  %246 = load i32, i32* %mpos, align 4
  %247 = load i32, i32* %dpos, align 4
  %call555 = call i32 @is_same_dragon(i32 %246, i32 %247)
  %tobool556 = icmp ne i32 %call555, 0
  br i1 %tobool556, label %if.then.557, label %if.end.560

if.then.557:                                      ; preds = %land.lhs.true.554
  %248 = load i32, i32* %mpos, align 4
  %idxprom558 = sext i32 %248 to i64
  %arrayidx559 = getelementptr inbounds [400 x i8], [400 x i8]* %mf, i32 0, i64 %idxprom558
  store i8 2, i8* %arrayidx559, align 1
  br label %if.end.560

if.end.560:                                       ; preds = %if.then.557, %land.lhs.true.554, %for.body.548
  br label %for.inc.561

for.inc.561:                                      ; preds = %if.end.560
  %249 = load i32, i32* %mpos, align 4
  %inc562 = add nsw i32 %249, 1
  store i32 %inc562, i32* %mpos, align 4
  br label %for.cond.545

for.end.563:                                      ; preds = %for.cond.545
  br label %if.end.564

if.end.564:                                       ; preds = %for.end.563, %land.lhs.true.540, %land.lhs.true.537, %land.lhs.true.531, %land.lhs.true.525, %for.body.519
  br label %for.inc.565

for.inc.565:                                      ; preds = %if.end.564
  %250 = load i32, i32* %dpos, align 4
  %inc566 = add nsw i32 %250, 1
  store i32 %inc566, i32* %dpos, align 4
  br label %for.cond.516

for.end.567:                                      ; preds = %for.cond.516
  store i32 1, i32* %surrounded, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.568

for.cond.568:                                     ; preds = %for.inc.608, %for.end.567
  %251 = load i32, i32* %m, align 4
  %252 = load i32, i32* @board_size, align 4
  %cmp569 = icmp slt i32 %251, %252
  br i1 %cmp569, label %for.body.571, label %for.end.610

for.body.571:                                     ; preds = %for.cond.568
  store i32 0, i32* %n, align 4
  br label %for.cond.572

for.cond.572:                                     ; preds = %for.inc.605, %for.body.571
  %253 = load i32, i32* %n, align 4
  %254 = load i32, i32* @board_size, align 4
  %cmp573 = icmp slt i32 %253, %254
  br i1 %cmp573, label %for.body.575, label %for.end.607

for.body.575:                                     ; preds = %for.cond.572
  %255 = load i32, i32* %m, align 4
  %mul576 = mul nsw i32 %255, 20
  %add577 = add nsw i32 21, %mul576
  %256 = load i32, i32* %n, align 4
  %add578 = add nsw i32 %add577, %256
  %idxprom579 = sext i32 %add578 to i64
  %arrayidx580 = getelementptr inbounds [400 x i8], [400 x i8]* %mf, i32 0, i64 %idxprom579
  %257 = load i8, i8* %arrayidx580, align 1
  %tobool581 = icmp ne i8 %257, 0
  br i1 %tobool581, label %if.then.582, label %if.end.604

if.then.582:                                      ; preds = %for.body.575
  %258 = load i32, i32* %m, align 4
  %mul583 = mul nsw i32 %258, 20
  %add584 = add nsw i32 21, %mul583
  %259 = load i32, i32* %n, align 4
  %add585 = add nsw i32 %add584, %259
  %idxprom586 = sext i32 %add585 to i64
  %arrayidx587 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom586
  %260 = load i8, i8* %arrayidx587, align 1
  %conv588 = sext i8 %260 to i32
  %cmp589 = icmp eq i32 %conv588, 0
  br i1 %cmp589, label %if.then.591, label %if.else.592

if.then.591:                                      ; preds = %if.then.582
  store i32 0, i32* %surrounded, align 4
  br label %for.end.607

if.else.592:                                      ; preds = %if.then.582
  %261 = load i32, i32* %m, align 4
  %mul593 = mul nsw i32 %261, 20
  %add594 = add nsw i32 21, %mul593
  %262 = load i32, i32* %n, align 4
  %add595 = add nsw i32 %add594, %262
  %idxprom596 = sext i32 %add595 to i64
  %arrayidx597 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom596
  %263 = load i8, i8* %arrayidx597, align 1
  %conv598 = sext i8 %263 to i32
  %cmp599 = icmp eq i32 %conv598, 2
  br i1 %cmp599, label %if.then.601, label %if.end.602

if.then.601:                                      ; preds = %if.else.592
  store i32 2, i32* %surrounded, align 4
  br label %if.end.602

if.end.602:                                       ; preds = %if.then.601, %if.else.592
  br label %if.end.603

if.end.603:                                       ; preds = %if.end.602
  br label %if.end.604

if.end.604:                                       ; preds = %if.end.603, %for.body.575
  br label %for.inc.605

for.inc.605:                                      ; preds = %if.end.604
  %264 = load i32, i32* %n, align 4
  %inc606 = add nsw i32 %264, 1
  store i32 %inc606, i32* %n, align 4
  br label %for.cond.572

for.end.607:                                      ; preds = %if.then.591, %for.cond.572
  br label %for.inc.608

for.inc.608:                                      ; preds = %for.end.607
  %265 = load i32, i32* %m, align 4
  %inc609 = add nsw i32 %265, 1
  store i32 %inc609, i32* %m, align 4
  br label %for.cond.568

for.end.610:                                      ; preds = %for.cond.568
  %266 = load i32, i32* %surrounded, align 4
  %tobool611 = icmp ne i32 %266, 0
  br i1 %tobool611, label %if.then.612, label %if.end.914

if.then.612:                                      ; preds = %for.end.610
  store i32 21, i32* %dpos, align 4
  br label %for.cond.613

for.cond.613:                                     ; preds = %for.inc.911, %if.then.612
  %267 = load i32, i32* %dpos, align 4
  %cmp614 = icmp slt i32 %267, 400
  br i1 %cmp614, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.613
  %268 = load i32, i32* %surrounded, align 4
  %tobool616 = icmp ne i32 %268, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.613
  %269 = phi i1 [ false, %for.cond.613 ], [ %tobool616, %land.rhs ]
  br i1 %269, label %for.body.617, label %for.end.913

for.body.617:                                     ; preds = %land.end
  %270 = load i32, i32* %dpos, align 4
  %idxprom618 = sext i32 %270 to i64
  %arrayidx619 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom618
  %271 = load i8, i8* %arrayidx619, align 1
  %conv620 = zext i8 %271 to i32
  %cmp621 = icmp ne i32 %conv620, 3
  br i1 %cmp621, label %land.lhs.true.623, label %if.end.910

land.lhs.true.623:                                ; preds = %for.body.617
  %272 = load i32, i32* %dpos, align 4
  %idxprom624 = sext i32 %272 to i64
  %arrayidx625 = getelementptr inbounds [400 x i8], [400 x i8]* %mf, i32 0, i64 %idxprom624
  %273 = load i8, i8* %arrayidx625, align 1
  %conv626 = sext i8 %273 to i32
  %tobool627 = icmp ne i32 %conv626, 0
  br i1 %tobool627, label %if.then.628, label %if.end.910

if.then.628:                                      ; preds = %land.lhs.true.623
  %274 = load i32, i32* %dpos, align 4
  %sub629 = sub nsw i32 %274, 20
  %idxprom630 = sext i32 %sub629 to i64
  %arrayidx631 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom630
  %275 = load i8, i8* %arrayidx631, align 1
  %conv632 = zext i8 %275 to i32
  %cmp633 = icmp ne i32 %conv632, 3
  br i1 %cmp633, label %land.lhs.true.635, label %lor.lhs.false.698

land.lhs.true.635:                                ; preds = %if.then.628
  %276 = load i32, i32* %dpos, align 4
  %sub636 = sub nsw i32 %276, 20
  %idxprom637 = sext i32 %sub636 to i64
  %arrayidx638 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom637
  %277 = load i8, i8* %arrayidx638, align 1
  %conv639 = zext i8 %277 to i32
  %cmp640 = icmp eq i32 %conv639, 0
  br i1 %cmp640, label %land.lhs.true.642, label %lor.lhs.false.698

land.lhs.true.642:                                ; preds = %land.lhs.true.635
  %278 = load i32, i32* %dpos, align 4
  %sub643 = sub nsw i32 %278, 20
  %sub644 = sub nsw i32 %sub643, 20
  %idxprom645 = sext i32 %sub644 to i64
  %arrayidx646 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom645
  %279 = load i8, i8* %arrayidx646, align 1
  %conv647 = zext i8 %279 to i32
  %cmp648 = icmp ne i32 %conv647, 3
  br i1 %cmp648, label %land.lhs.true.650, label %lor.lhs.false.698

land.lhs.true.650:                                ; preds = %land.lhs.true.642
  %280 = load i32, i32* %dpos, align 4
  %sub651 = sub nsw i32 %280, 20
  %sub652 = sub nsw i32 %sub651, 20
  %idxprom653 = sext i32 %sub652 to i64
  %arrayidx654 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom653
  %281 = load i8, i8* %arrayidx654, align 1
  %conv655 = zext i8 %281 to i32
  %282 = load i32, i32* %color, align 4
  %cmp656 = icmp eq i32 %conv655, %282
  br i1 %cmp656, label %land.lhs.true.658, label %lor.lhs.false.698

land.lhs.true.658:                                ; preds = %land.lhs.true.650
  %283 = load i32, i32* %dpos, align 4
  %sub659 = sub nsw i32 %283, 20
  %sub660 = sub nsw i32 %sub659, 20
  %idxprom661 = sext i32 %sub660 to i64
  %arrayidx662 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom661
  %284 = load i8, i8* %arrayidx662, align 1
  %conv663 = sext i8 %284 to i32
  %cmp664 = icmp ne i32 %conv663, 1
  br i1 %cmp664, label %land.lhs.true.666, label %lor.lhs.false.698

land.lhs.true.666:                                ; preds = %land.lhs.true.658
  %285 = load i32, i32* %dpos, align 4
  %sub667 = sub nsw i32 %285, 20
  %add668 = add nsw i32 %sub667, 1
  %idxprom669 = sext i32 %add668 to i64
  %arrayidx670 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom669
  %286 = load i8, i8* %arrayidx670, align 1
  %conv671 = zext i8 %286 to i32
  %cmp672 = icmp ne i32 %conv671, 3
  br i1 %cmp672, label %land.lhs.true.674, label %lor.lhs.false.698

land.lhs.true.674:                                ; preds = %land.lhs.true.666
  %287 = load i32, i32* %dpos, align 4
  %sub675 = sub nsw i32 %287, 20
  %add676 = add nsw i32 %sub675, 1
  %idxprom677 = sext i32 %add676 to i64
  %arrayidx678 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom677
  %288 = load i8, i8* %arrayidx678, align 1
  %conv679 = zext i8 %288 to i32
  %289 = load i32, i32* %other, align 4
  %cmp680 = icmp ne i32 %conv679, %289
  br i1 %cmp680, label %land.lhs.true.682, label %lor.lhs.false.698

land.lhs.true.682:                                ; preds = %land.lhs.true.674
  %290 = load i32, i32* %dpos, align 4
  %sub683 = sub nsw i32 %290, 20
  %sub684 = sub nsw i32 %sub683, 1
  %idxprom685 = sext i32 %sub684 to i64
  %arrayidx686 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom685
  %291 = load i8, i8* %arrayidx686, align 1
  %conv687 = zext i8 %291 to i32
  %cmp688 = icmp ne i32 %conv687, 3
  br i1 %cmp688, label %land.lhs.true.690, label %lor.lhs.false.698

land.lhs.true.690:                                ; preds = %land.lhs.true.682
  %292 = load i32, i32* %dpos, align 4
  %sub691 = sub nsw i32 %292, 20
  %sub692 = sub nsw i32 %sub691, 1
  %idxprom693 = sext i32 %sub692 to i64
  %arrayidx694 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom693
  %293 = load i8, i8* %arrayidx694, align 1
  %conv695 = zext i8 %293 to i32
  %294 = load i32, i32* %other, align 4
  %cmp696 = icmp ne i32 %conv695, %294
  br i1 %cmp696, label %if.then.908, label %lor.lhs.false.698

lor.lhs.false.698:                                ; preds = %land.lhs.true.690, %land.lhs.true.682, %land.lhs.true.674, %land.lhs.true.666, %land.lhs.true.658, %land.lhs.true.650, %land.lhs.true.642, %land.lhs.true.635, %if.then.628
  %295 = load i32, i32* %dpos, align 4
  %add699 = add nsw i32 %295, 20
  %idxprom700 = sext i32 %add699 to i64
  %arrayidx701 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom700
  %296 = load i8, i8* %arrayidx701, align 1
  %conv702 = zext i8 %296 to i32
  %cmp703 = icmp ne i32 %conv702, 3
  br i1 %cmp703, label %land.lhs.true.705, label %lor.lhs.false.768

land.lhs.true.705:                                ; preds = %lor.lhs.false.698
  %297 = load i32, i32* %dpos, align 4
  %add706 = add nsw i32 %297, 20
  %idxprom707 = sext i32 %add706 to i64
  %arrayidx708 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom707
  %298 = load i8, i8* %arrayidx708, align 1
  %conv709 = zext i8 %298 to i32
  %cmp710 = icmp eq i32 %conv709, 0
  br i1 %cmp710, label %land.lhs.true.712, label %lor.lhs.false.768

land.lhs.true.712:                                ; preds = %land.lhs.true.705
  %299 = load i32, i32* %dpos, align 4
  %add713 = add nsw i32 %299, 20
  %add714 = add nsw i32 %add713, 20
  %idxprom715 = sext i32 %add714 to i64
  %arrayidx716 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom715
  %300 = load i8, i8* %arrayidx716, align 1
  %conv717 = zext i8 %300 to i32
  %cmp718 = icmp ne i32 %conv717, 3
  br i1 %cmp718, label %land.lhs.true.720, label %lor.lhs.false.768

land.lhs.true.720:                                ; preds = %land.lhs.true.712
  %301 = load i32, i32* %dpos, align 4
  %add721 = add nsw i32 %301, 20
  %add722 = add nsw i32 %add721, 20
  %idxprom723 = sext i32 %add722 to i64
  %arrayidx724 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom723
  %302 = load i8, i8* %arrayidx724, align 1
  %conv725 = zext i8 %302 to i32
  %303 = load i32, i32* %color, align 4
  %cmp726 = icmp eq i32 %conv725, %303
  br i1 %cmp726, label %land.lhs.true.728, label %lor.lhs.false.768

land.lhs.true.728:                                ; preds = %land.lhs.true.720
  %304 = load i32, i32* %dpos, align 4
  %add729 = add nsw i32 %304, 20
  %add730 = add nsw i32 %add729, 20
  %idxprom731 = sext i32 %add730 to i64
  %arrayidx732 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom731
  %305 = load i8, i8* %arrayidx732, align 1
  %conv733 = sext i8 %305 to i32
  %cmp734 = icmp ne i32 %conv733, 1
  br i1 %cmp734, label %land.lhs.true.736, label %lor.lhs.false.768

land.lhs.true.736:                                ; preds = %land.lhs.true.728
  %306 = load i32, i32* %dpos, align 4
  %add737 = add nsw i32 %306, 20
  %add738 = add nsw i32 %add737, 1
  %idxprom739 = sext i32 %add738 to i64
  %arrayidx740 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom739
  %307 = load i8, i8* %arrayidx740, align 1
  %conv741 = zext i8 %307 to i32
  %cmp742 = icmp ne i32 %conv741, 3
  br i1 %cmp742, label %land.lhs.true.744, label %lor.lhs.false.768

land.lhs.true.744:                                ; preds = %land.lhs.true.736
  %308 = load i32, i32* %dpos, align 4
  %add745 = add nsw i32 %308, 20
  %add746 = add nsw i32 %add745, 1
  %idxprom747 = sext i32 %add746 to i64
  %arrayidx748 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom747
  %309 = load i8, i8* %arrayidx748, align 1
  %conv749 = zext i8 %309 to i32
  %310 = load i32, i32* %other, align 4
  %cmp750 = icmp ne i32 %conv749, %310
  br i1 %cmp750, label %land.lhs.true.752, label %lor.lhs.false.768

land.lhs.true.752:                                ; preds = %land.lhs.true.744
  %311 = load i32, i32* %dpos, align 4
  %add753 = add nsw i32 %311, 20
  %sub754 = sub nsw i32 %add753, 1
  %idxprom755 = sext i32 %sub754 to i64
  %arrayidx756 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom755
  %312 = load i8, i8* %arrayidx756, align 1
  %conv757 = zext i8 %312 to i32
  %cmp758 = icmp ne i32 %conv757, 3
  br i1 %cmp758, label %land.lhs.true.760, label %lor.lhs.false.768

land.lhs.true.760:                                ; preds = %land.lhs.true.752
  %313 = load i32, i32* %dpos, align 4
  %add761 = add nsw i32 %313, 20
  %sub762 = sub nsw i32 %add761, 1
  %idxprom763 = sext i32 %sub762 to i64
  %arrayidx764 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom763
  %314 = load i8, i8* %arrayidx764, align 1
  %conv765 = zext i8 %314 to i32
  %315 = load i32, i32* %other, align 4
  %cmp766 = icmp ne i32 %conv765, %315
  br i1 %cmp766, label %if.then.908, label %lor.lhs.false.768

lor.lhs.false.768:                                ; preds = %land.lhs.true.760, %land.lhs.true.752, %land.lhs.true.744, %land.lhs.true.736, %land.lhs.true.728, %land.lhs.true.720, %land.lhs.true.712, %land.lhs.true.705, %lor.lhs.false.698
  %316 = load i32, i32* %dpos, align 4
  %add769 = add nsw i32 %316, 1
  %idxprom770 = sext i32 %add769 to i64
  %arrayidx771 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom770
  %317 = load i8, i8* %arrayidx771, align 1
  %conv772 = zext i8 %317 to i32
  %cmp773 = icmp ne i32 %conv772, 3
  br i1 %cmp773, label %land.lhs.true.775, label %lor.lhs.false.838

land.lhs.true.775:                                ; preds = %lor.lhs.false.768
  %318 = load i32, i32* %dpos, align 4
  %add776 = add nsw i32 %318, 1
  %idxprom777 = sext i32 %add776 to i64
  %arrayidx778 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom777
  %319 = load i8, i8* %arrayidx778, align 1
  %conv779 = zext i8 %319 to i32
  %cmp780 = icmp eq i32 %conv779, 0
  br i1 %cmp780, label %land.lhs.true.782, label %lor.lhs.false.838

land.lhs.true.782:                                ; preds = %land.lhs.true.775
  %320 = load i32, i32* %dpos, align 4
  %add783 = add nsw i32 %320, 1
  %add784 = add nsw i32 %add783, 1
  %idxprom785 = sext i32 %add784 to i64
  %arrayidx786 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom785
  %321 = load i8, i8* %arrayidx786, align 1
  %conv787 = zext i8 %321 to i32
  %cmp788 = icmp ne i32 %conv787, 3
  br i1 %cmp788, label %land.lhs.true.790, label %lor.lhs.false.838

land.lhs.true.790:                                ; preds = %land.lhs.true.782
  %322 = load i32, i32* %dpos, align 4
  %add791 = add nsw i32 %322, 1
  %add792 = add nsw i32 %add791, 1
  %idxprom793 = sext i32 %add792 to i64
  %arrayidx794 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom793
  %323 = load i8, i8* %arrayidx794, align 1
  %conv795 = zext i8 %323 to i32
  %324 = load i32, i32* %color, align 4
  %cmp796 = icmp eq i32 %conv795, %324
  br i1 %cmp796, label %land.lhs.true.798, label %lor.lhs.false.838

land.lhs.true.798:                                ; preds = %land.lhs.true.790
  %325 = load i32, i32* %dpos, align 4
  %add799 = add nsw i32 %325, 1
  %add800 = add nsw i32 %add799, 1
  %idxprom801 = sext i32 %add800 to i64
  %arrayidx802 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom801
  %326 = load i8, i8* %arrayidx802, align 1
  %conv803 = sext i8 %326 to i32
  %cmp804 = icmp ne i32 %conv803, 1
  br i1 %cmp804, label %land.lhs.true.806, label %lor.lhs.false.838

land.lhs.true.806:                                ; preds = %land.lhs.true.798
  %327 = load i32, i32* %dpos, align 4
  %add807 = add nsw i32 %327, 1
  %sub808 = sub nsw i32 %add807, 20
  %idxprom809 = sext i32 %sub808 to i64
  %arrayidx810 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom809
  %328 = load i8, i8* %arrayidx810, align 1
  %conv811 = zext i8 %328 to i32
  %cmp812 = icmp ne i32 %conv811, 3
  br i1 %cmp812, label %land.lhs.true.814, label %lor.lhs.false.838

land.lhs.true.814:                                ; preds = %land.lhs.true.806
  %329 = load i32, i32* %dpos, align 4
  %add815 = add nsw i32 %329, 1
  %sub816 = sub nsw i32 %add815, 20
  %idxprom817 = sext i32 %sub816 to i64
  %arrayidx818 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom817
  %330 = load i8, i8* %arrayidx818, align 1
  %conv819 = zext i8 %330 to i32
  %331 = load i32, i32* %other, align 4
  %cmp820 = icmp ne i32 %conv819, %331
  br i1 %cmp820, label %land.lhs.true.822, label %lor.lhs.false.838

land.lhs.true.822:                                ; preds = %land.lhs.true.814
  %332 = load i32, i32* %dpos, align 4
  %add823 = add nsw i32 %332, 1
  %add824 = add nsw i32 %add823, 20
  %idxprom825 = sext i32 %add824 to i64
  %arrayidx826 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom825
  %333 = load i8, i8* %arrayidx826, align 1
  %conv827 = zext i8 %333 to i32
  %cmp828 = icmp ne i32 %conv827, 3
  br i1 %cmp828, label %land.lhs.true.830, label %lor.lhs.false.838

land.lhs.true.830:                                ; preds = %land.lhs.true.822
  %334 = load i32, i32* %dpos, align 4
  %add831 = add nsw i32 %334, 1
  %add832 = add nsw i32 %add831, 20
  %idxprom833 = sext i32 %add832 to i64
  %arrayidx834 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom833
  %335 = load i8, i8* %arrayidx834, align 1
  %conv835 = zext i8 %335 to i32
  %336 = load i32, i32* %other, align 4
  %cmp836 = icmp ne i32 %conv835, %336
  br i1 %cmp836, label %if.then.908, label %lor.lhs.false.838

lor.lhs.false.838:                                ; preds = %land.lhs.true.830, %land.lhs.true.822, %land.lhs.true.814, %land.lhs.true.806, %land.lhs.true.798, %land.lhs.true.790, %land.lhs.true.782, %land.lhs.true.775, %lor.lhs.false.768
  %337 = load i32, i32* %dpos, align 4
  %sub839 = sub nsw i32 %337, 1
  %idxprom840 = sext i32 %sub839 to i64
  %arrayidx841 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom840
  %338 = load i8, i8* %arrayidx841, align 1
  %conv842 = zext i8 %338 to i32
  %cmp843 = icmp ne i32 %conv842, 3
  br i1 %cmp843, label %land.lhs.true.845, label %if.end.909

land.lhs.true.845:                                ; preds = %lor.lhs.false.838
  %339 = load i32, i32* %dpos, align 4
  %sub846 = sub nsw i32 %339, 1
  %idxprom847 = sext i32 %sub846 to i64
  %arrayidx848 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom847
  %340 = load i8, i8* %arrayidx848, align 1
  %conv849 = zext i8 %340 to i32
  %cmp850 = icmp eq i32 %conv849, 0
  br i1 %cmp850, label %land.lhs.true.852, label %if.end.909

land.lhs.true.852:                                ; preds = %land.lhs.true.845
  %341 = load i32, i32* %dpos, align 4
  %sub853 = sub nsw i32 %341, 1
  %sub854 = sub nsw i32 %sub853, 1
  %idxprom855 = sext i32 %sub854 to i64
  %arrayidx856 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom855
  %342 = load i8, i8* %arrayidx856, align 1
  %conv857 = zext i8 %342 to i32
  %cmp858 = icmp ne i32 %conv857, 3
  br i1 %cmp858, label %land.lhs.true.860, label %if.end.909

land.lhs.true.860:                                ; preds = %land.lhs.true.852
  %343 = load i32, i32* %dpos, align 4
  %sub861 = sub nsw i32 %343, 1
  %sub862 = sub nsw i32 %sub861, 1
  %idxprom863 = sext i32 %sub862 to i64
  %arrayidx864 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom863
  %344 = load i8, i8* %arrayidx864, align 1
  %conv865 = zext i8 %344 to i32
  %345 = load i32, i32* %color, align 4
  %cmp866 = icmp eq i32 %conv865, %345
  br i1 %cmp866, label %land.lhs.true.868, label %if.end.909

land.lhs.true.868:                                ; preds = %land.lhs.true.860
  %346 = load i32, i32* %dpos, align 4
  %sub869 = sub nsw i32 %346, 1
  %sub870 = sub nsw i32 %sub869, 1
  %idxprom871 = sext i32 %sub870 to i64
  %arrayidx872 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom871
  %347 = load i8, i8* %arrayidx872, align 1
  %conv873 = sext i8 %347 to i32
  %cmp874 = icmp ne i32 %conv873, 1
  br i1 %cmp874, label %land.lhs.true.876, label %if.end.909

land.lhs.true.876:                                ; preds = %land.lhs.true.868
  %348 = load i32, i32* %dpos, align 4
  %sub877 = sub nsw i32 %348, 1
  %sub878 = sub nsw i32 %sub877, 20
  %idxprom879 = sext i32 %sub878 to i64
  %arrayidx880 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom879
  %349 = load i8, i8* %arrayidx880, align 1
  %conv881 = zext i8 %349 to i32
  %cmp882 = icmp ne i32 %conv881, 3
  br i1 %cmp882, label %land.lhs.true.884, label %if.end.909

land.lhs.true.884:                                ; preds = %land.lhs.true.876
  %350 = load i32, i32* %dpos, align 4
  %sub885 = sub nsw i32 %350, 1
  %sub886 = sub nsw i32 %sub885, 20
  %idxprom887 = sext i32 %sub886 to i64
  %arrayidx888 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom887
  %351 = load i8, i8* %arrayidx888, align 1
  %conv889 = zext i8 %351 to i32
  %352 = load i32, i32* %other, align 4
  %cmp890 = icmp ne i32 %conv889, %352
  br i1 %cmp890, label %land.lhs.true.892, label %if.end.909

land.lhs.true.892:                                ; preds = %land.lhs.true.884
  %353 = load i32, i32* %dpos, align 4
  %sub893 = sub nsw i32 %353, 1
  %add894 = add nsw i32 %sub893, 20
  %idxprom895 = sext i32 %add894 to i64
  %arrayidx896 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom895
  %354 = load i8, i8* %arrayidx896, align 1
  %conv897 = zext i8 %354 to i32
  %cmp898 = icmp ne i32 %conv897, 3
  br i1 %cmp898, label %land.lhs.true.900, label %if.end.909

land.lhs.true.900:                                ; preds = %land.lhs.true.892
  %355 = load i32, i32* %dpos, align 4
  %sub901 = sub nsw i32 %355, 1
  %add902 = add nsw i32 %sub901, 20
  %idxprom903 = sext i32 %add902 to i64
  %arrayidx904 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom903
  %356 = load i8, i8* %arrayidx904, align 1
  %conv905 = zext i8 %356 to i32
  %357 = load i32, i32* %other, align 4
  %cmp906 = icmp ne i32 %conv905, %357
  br i1 %cmp906, label %if.then.908, label %if.end.909

if.then.908:                                      ; preds = %land.lhs.true.900, %land.lhs.true.830, %land.lhs.true.760, %land.lhs.true.690
  store i32 0, i32* %surrounded, align 4
  br label %if.end.909

if.end.909:                                       ; preds = %if.then.908, %land.lhs.true.900, %land.lhs.true.892, %land.lhs.true.884, %land.lhs.true.876, %land.lhs.true.868, %land.lhs.true.860, %land.lhs.true.852, %land.lhs.true.845, %lor.lhs.false.838
  br label %if.end.910

if.end.910:                                       ; preds = %if.end.909, %land.lhs.true.623, %for.body.617
  br label %for.inc.911

for.inc.911:                                      ; preds = %if.end.910
  %358 = load i32, i32* %dpos, align 4
  %inc912 = add nsw i32 %358, 1
  store i32 %inc912, i32* %dpos, align 4
  br label %for.cond.613

for.end.913:                                      ; preds = %land.end
  br label %if.end.914

if.end.914:                                       ; preds = %for.end.913, %for.end.610
  %359 = load i32, i32* %showboard.addr, align 4
  %cmp915 = icmp eq i32 %359, 1
  br i1 %cmp915, label %if.then.922, label %lor.lhs.false.917

lor.lhs.false.917:                                ; preds = %if.end.914
  %360 = load i32, i32* %showboard.addr, align 4
  %cmp918 = icmp eq i32 %360, 2
  br i1 %cmp918, label %land.lhs.true.920, label %if.end.1021

land.lhs.true.920:                                ; preds = %lor.lhs.false.917
  %361 = load i32, i32* %surrounded, align 4
  %tobool921 = icmp ne i32 %361, 0
  br i1 %tobool921, label %if.then.922, label %if.end.1021

if.then.922:                                      ; preds = %land.lhs.true.920, %if.end.914
  call void @start_draw_board()
  store i32 0, i32* %m, align 4
  br label %for.cond.923

for.cond.923:                                     ; preds = %for.inc.1018, %if.then.922
  %362 = load i32, i32* %m, align 4
  %363 = load i32, i32* @board_size, align 4
  %cmp924 = icmp slt i32 %362, %363
  br i1 %cmp924, label %for.body.926, label %for.end.1020

for.body.926:                                     ; preds = %for.cond.923
  store i32 0, i32* %n, align 4
  br label %for.cond.927

for.cond.927:                                     ; preds = %for.inc.1015, %for.body.926
  %364 = load i32, i32* %n, align 4
  %365 = load i32, i32* @board_size, align 4
  %cmp928 = icmp slt i32 %364, %365
  br i1 %cmp928, label %for.body.930, label %for.end.1017

for.body.930:                                     ; preds = %for.cond.927
  %366 = load i32, i32* %m, align 4
  %mul931 = mul nsw i32 %366, 20
  %add932 = add nsw i32 21, %mul931
  %367 = load i32, i32* %n, align 4
  %add933 = add nsw i32 %add932, %367
  %idxprom934 = sext i32 %add933 to i64
  %arrayidx935 = getelementptr inbounds [400 x i8], [400 x i8]* %mf, i32 0, i64 %idxprom934
  %368 = load i8, i8* %arrayidx935, align 1
  %tobool936 = icmp ne i8 %368, 0
  br i1 %tobool936, label %if.then.937, label %if.else.960

if.then.937:                                      ; preds = %for.body.930
  %369 = load i32, i32* %m, align 4
  %mul938 = mul nsw i32 %369, 20
  %add939 = add nsw i32 21, %mul938
  %370 = load i32, i32* %n, align 4
  %add940 = add nsw i32 %add939, %370
  %idxprom941 = sext i32 %add940 to i64
  %arrayidx942 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom941
  %371 = load i8, i8* %arrayidx942, align 1
  %conv943 = sext i8 %371 to i32
  %cmp944 = icmp eq i32 %conv943, 1
  br i1 %cmp944, label %if.then.946, label %if.else.947

if.then.946:                                      ; preds = %if.then.937
  store i32 1, i32* %col, align 4
  br label %if.end.959

if.else.947:                                      ; preds = %if.then.937
  %372 = load i32, i32* %m, align 4
  %mul948 = mul nsw i32 %372, 20
  %add949 = add nsw i32 21, %mul948
  %373 = load i32, i32* %n, align 4
  %add950 = add nsw i32 %add949, %373
  %idxprom951 = sext i32 %add950 to i64
  %arrayidx952 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom951
  %374 = load i8, i8* %arrayidx952, align 1
  %conv953 = sext i8 %374 to i32
  %cmp954 = icmp eq i32 %conv953, 2
  br i1 %cmp954, label %if.then.956, label %if.else.957

if.then.956:                                      ; preds = %if.else.947
  store i32 3, i32* %col, align 4
  br label %if.end.958

if.else.957:                                      ; preds = %if.else.947
  store i32 2, i32* %col, align 4
  br label %if.end.958

if.end.958:                                       ; preds = %if.else.957, %if.then.956
  br label %if.end.959

if.end.959:                                       ; preds = %if.end.958, %if.then.946
  br label %if.end.983

if.else.960:                                      ; preds = %for.body.930
  %375 = load i32, i32* %m, align 4
  %mul961 = mul nsw i32 %375, 20
  %add962 = add nsw i32 21, %mul961
  %376 = load i32, i32* %n, align 4
  %add963 = add nsw i32 %add962, %376
  %idxprom964 = sext i32 %add963 to i64
  %arrayidx965 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom964
  %377 = load i8, i8* %arrayidx965, align 1
  %conv966 = sext i8 %377 to i32
  %cmp967 = icmp eq i32 %conv966, 1
  br i1 %cmp967, label %if.then.969, label %if.else.970

if.then.969:                                      ; preds = %if.else.960
  store i32 4, i32* %col, align 4
  br label %if.end.982

if.else.970:                                      ; preds = %if.else.960
  %378 = load i32, i32* %m, align 4
  %mul971 = mul nsw i32 %378, 20
  %add972 = add nsw i32 21, %mul971
  %379 = load i32, i32* %n, align 4
  %add973 = add nsw i32 %add972, %379
  %idxprom974 = sext i32 %add973 to i64
  %arrayidx975 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom974
  %380 = load i8, i8* %arrayidx975, align 1
  %conv976 = sext i8 %380 to i32
  %cmp977 = icmp eq i32 %conv976, 2
  br i1 %cmp977, label %if.then.979, label %if.else.980

if.then.979:                                      ; preds = %if.else.970
  store i32 6, i32* %col, align 4
  br label %if.end.981

if.else.980:                                      ; preds = %if.else.970
  store i32 0, i32* %col, align 4
  br label %if.end.981

if.end.981:                                       ; preds = %if.else.980, %if.then.979
  br label %if.end.982

if.end.982:                                       ; preds = %if.end.981, %if.then.969
  br label %if.end.983

if.end.983:                                       ; preds = %if.end.982, %if.end.959
  %381 = load i32, i32* %m, align 4
  %mul984 = mul nsw i32 %381, 20
  %add985 = add nsw i32 21, %mul984
  %382 = load i32, i32* %n, align 4
  %add986 = add nsw i32 %add985, %382
  %idxprom987 = sext i32 %add986 to i64
  %arrayidx988 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom987
  %383 = load i8, i8* %arrayidx988, align 1
  %conv989 = zext i8 %383 to i32
  %cmp990 = icmp eq i32 %conv989, 2
  br i1 %cmp990, label %if.then.992, label %if.else.993

if.then.992:                                      ; preds = %if.end.983
  store i32 88, i32* %c, align 4
  br label %if.end.1014

if.else.993:                                      ; preds = %if.end.983
  %384 = load i32, i32* %m, align 4
  %mul994 = mul nsw i32 %384, 20
  %add995 = add nsw i32 21, %mul994
  %385 = load i32, i32* %n, align 4
  %add996 = add nsw i32 %add995, %385
  %idxprom997 = sext i32 %add996 to i64
  %arrayidx998 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom997
  %386 = load i8, i8* %arrayidx998, align 1
  %conv999 = zext i8 %386 to i32
  %cmp1000 = icmp eq i32 %conv999, 1
  br i1 %cmp1000, label %if.then.1002, label %if.else.1003

if.then.1002:                                     ; preds = %if.else.993
  store i32 79, i32* %c, align 4
  br label %if.end.1013

if.else.1003:                                     ; preds = %if.else.993
  %387 = load i32, i32* %m, align 4
  %mul1004 = mul nsw i32 %387, 20
  %add1005 = add nsw i32 21, %mul1004
  %388 = load i32, i32* %n, align 4
  %add1006 = add nsw i32 %add1005, %388
  %idxprom1007 = sext i32 %add1006 to i64
  %arrayidx1008 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom1007
  %389 = load i8, i8* %arrayidx1008, align 1
  %tobool1009 = icmp ne i8 %389, 0
  br i1 %tobool1009, label %if.then.1010, label %if.else.1011

if.then.1010:                                     ; preds = %if.else.1003
  store i32 42, i32* %c, align 4
  br label %if.end.1012

if.else.1011:                                     ; preds = %if.else.1003
  store i32 46, i32* %c, align 4
  br label %if.end.1012

if.end.1012:                                      ; preds = %if.else.1011, %if.then.1010
  br label %if.end.1013

if.end.1013:                                      ; preds = %if.end.1012, %if.then.1002
  br label %if.end.1014

if.end.1014:                                      ; preds = %if.end.1013, %if.then.992
  %390 = load i32, i32* %m, align 4
  %391 = load i32, i32* %n, align 4
  %392 = load i32, i32* %c, align 4
  %393 = load i32, i32* %col, align 4
  call void @draw_color_char(i32 %390, i32 %391, i32 %392, i32 %393)
  br label %for.inc.1015

for.inc.1015:                                     ; preds = %if.end.1014
  %394 = load i32, i32* %n, align 4
  %inc1016 = add nsw i32 %394, 1
  store i32 %inc1016, i32* %n, align 4
  br label %for.cond.927

for.end.1017:                                     ; preds = %for.cond.927
  br label %for.inc.1018

for.inc.1018:                                     ; preds = %for.end.1017
  %395 = load i32, i32* %m, align 4
  %inc1019 = add nsw i32 %395, 1
  store i32 %inc1019, i32* %m, align 4
  br label %for.cond.923

for.end.1020:                                     ; preds = %for.cond.923
  call void @end_draw_board()
  br label %if.end.1021

if.end.1021:                                      ; preds = %for.end.1020, %land.lhs.true.920, %lor.lhs.false.917
  %396 = load i32, i32* %apos.addr, align 4
  %tobool1022 = icmp ne i32 %396, 0
  br i1 %tobool1022, label %if.end.1037, label %land.lhs.true.1023

land.lhs.true.1023:                               ; preds = %if.end.1021
  %397 = load i32, i32* %surrounded, align 4
  %tobool1024 = icmp ne i32 %397, 0
  br i1 %tobool1024, label %land.lhs.true.1025, label %if.end.1037

land.lhs.true.1025:                               ; preds = %land.lhs.true.1023
  %398 = load i32, i32* @surround_pointer, align 4
  %cmp1026 = icmp slt i32 %398, 10
  br i1 %cmp1026, label %if.then.1028, label %if.end.1037

if.then.1028:                                     ; preds = %land.lhs.true.1025
  %399 = load i32, i32* @surround_pointer, align 4
  %idxprom1029 = sext i32 %399 to i64
  %arrayidx1030 = getelementptr inbounds [10 x %struct.surround_data], [10 x %struct.surround_data]* @surroundings, i32 0, i64 %idxprom1029
  %surround_map = getelementptr inbounds %struct.surround_data, %struct.surround_data* %arrayidx1030, i32 0, i32 1
  %400 = bitcast [400 x i8]* %surround_map to i8*
  %401 = bitcast [400 x i8]* %mn to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %400, i8* %401, i64 400, i32 4, i1 false)
  %402 = load i32, i32* %pos.addr, align 4
  %idxprom1031 = sext i32 %402 to i64
  %arrayidx1032 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1031
  %id1033 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1032, i32 0, i32 1
  %403 = load i32, i32* %id1033, align 4
  %404 = load i32, i32* @surround_pointer, align 4
  %idxprom1034 = sext i32 %404 to i64
  %arrayidx1035 = getelementptr inbounds [10 x %struct.surround_data], [10 x %struct.surround_data]* @surroundings, i32 0, i64 %idxprom1034
  %dragon_number = getelementptr inbounds %struct.surround_data, %struct.surround_data* %arrayidx1035, i32 0, i32 0
  store i32 %403, i32* %dragon_number, align 4
  %405 = load i32, i32* @surround_pointer, align 4
  %inc1036 = add nsw i32 %405, 1
  store i32 %inc1036, i32* @surround_pointer, align 4
  br label %if.end.1037

if.end.1037:                                      ; preds = %if.then.1028, %land.lhs.true.1025, %land.lhs.true.1023, %if.end.1021
  %406 = load i32*, i32** %surround_size.addr, align 8
  %tobool1038 = icmp ne i32* %406, null
  br i1 %tobool1038, label %if.then.1039, label %if.end.1062

if.then.1039:                                     ; preds = %if.end.1037
  %407 = load i32*, i32** %surround_size.addr, align 8
  store i32 0, i32* %407, align 4
  store i32 21, i32* %pos1040, align 4
  br label %for.cond.1041

for.cond.1041:                                    ; preds = %for.inc.1059, %if.then.1039
  %408 = load i32, i32* %pos1040, align 4
  %cmp1042 = icmp slt i32 %408, 400
  br i1 %cmp1042, label %for.body.1044, label %for.end.1061

for.body.1044:                                    ; preds = %for.cond.1041
  %409 = load i32, i32* %pos1040, align 4
  %idxprom1045 = sext i32 %409 to i64
  %arrayidx1046 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1045
  %410 = load i8, i8* %arrayidx1046, align 1
  %conv1047 = zext i8 %410 to i32
  %cmp1048 = icmp ne i32 %conv1047, 3
  br i1 %cmp1048, label %land.lhs.true.1050, label %if.end.1058

land.lhs.true.1050:                               ; preds = %for.body.1044
  %411 = load i32, i32* %pos1040, align 4
  %idxprom1051 = sext i32 %411 to i64
  %arrayidx1052 = getelementptr inbounds [400 x i8], [400 x i8]* %mn, i32 0, i64 %idxprom1051
  %412 = load i8, i8* %arrayidx1052, align 1
  %conv1053 = sext i8 %412 to i32
  %cmp1054 = icmp eq i32 %conv1053, 1
  br i1 %cmp1054, label %if.then.1056, label %if.end.1058

if.then.1056:                                     ; preds = %land.lhs.true.1050
  %413 = load i32*, i32** %surround_size.addr, align 8
  %414 = load i32, i32* %413, align 4
  %inc1057 = add nsw i32 %414, 1
  store i32 %inc1057, i32* %413, align 4
  br label %if.end.1058

if.end.1058:                                      ; preds = %if.then.1056, %land.lhs.true.1050, %for.body.1044
  br label %for.inc.1059

for.inc.1059:                                     ; preds = %if.end.1058
  %415 = load i32, i32* %pos1040, align 4
  %inc1060 = add nsw i32 %415, 1
  store i32 %inc1060, i32* %pos1040, align 4
  br label %for.cond.1041

for.end.1061:                                     ; preds = %for.cond.1041
  br label %if.end.1062

if.end.1062:                                      ; preds = %for.end.1061, %if.end.1037
  %416 = load i32, i32* %surrounded, align 4
  store i32 %416, i32* %retval
  br label %return

return:                                           ; preds = %if.end.1062, %if.then.18
  %417 = load i32, i32* %retval
  ret i32 %417
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @is_same_dragon(i32, i32) #2

declare void @mark_string(i32, i8*, i8 signext) #2

declare void @abortgo(i8*, i32, i8*, i32, i32) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #3

declare i32 @are_neighbor_dragons(i32, i32) #2

declare void @start_draw_board() #2

declare void @draw_color_char(i32, i32, i32, i32) #2

declare void @end_draw_board() #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @is_surrounded(i32 %dr) #0 {
entry:
  %dr.addr = alloca i32, align 4
  store i32 %dr, i32* %dr.addr, align 4
  %0 = load i32, i32* %dr.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 1
  %1 = load i32, i32* %id, align 4
  %idxprom1 = sext i32 %1 to i64
  %2 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx2 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %2, i64 %idxprom1
  %surround_status = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx2, i32 0, i32 15
  %3 = load i32, i32* %surround_status, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @does_surround(i32 %move, i32 %dr) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %dr.addr = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %dr, i32* %dr.addr, align 4
  %0 = load i32, i32* %dr.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 1
  %1 = load i32, i32* %id, align 4
  %idxprom1 = sext i32 %1 to i64
  %2 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx2 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %2, i64 %idxprom1
  %surround_status = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx2, i32 0, i32 15
  %3 = load i32, i32* %surround_status, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %dr.addr, align 4
  %5 = load i32, i32* %move.addr, align 4
  %call = call i32 @compute_surroundings(i32 %4, i32 %5, i32 0, i32* null)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @reset_surround_data() #0 {
entry:
  store i32 0, i32* @surround_pointer, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @surround_map(i32 %dr, i32 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %dr.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %dr, i32* %dr.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* @surround_pointer, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.surround_data], [10 x %struct.surround_data]* @surroundings, i32 0, i64 %idxprom
  %dragon_number = getelementptr inbounds %struct.surround_data, %struct.surround_data* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %dragon_number, align 4
  %4 = load i32, i32* %dr.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %id, align 4
  %cmp3 = icmp eq i32 %3, %5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [10 x %struct.surround_data], [10 x %struct.surround_data]* @surroundings, i32 0, i64 %idxprom5
  %surround_map = getelementptr inbounds %struct.surround_data, %struct.surround_data* %arrayidx6, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [400 x i8], [400 x i8]* %surround_map, i32 0, i64 %idxprom4
  %8 = load i8, i8* %arrayidx7, align 1
  %conv = sext i8 %8 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %k, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
