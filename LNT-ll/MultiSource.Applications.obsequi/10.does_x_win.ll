; ModuleID = './MultiSource.Applications.obsequi/10.does_x_win.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Basic_Info = type { i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@g_info_totals = external global [2 x %struct.Basic_Info], align 16
@g_empty_squares = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [29 x i8] c"%d moves next, do they win?\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"prot %d, vuln2 %d(%d), vuln1 %d(%d), safe %d, unused %d, empty %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"safe_op2 %d, safe_op1 %d, safe_op0 %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"moves:%d, opp:%d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"H WINS\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%d just moved, do they win?\0A\00", align 1
@g_board_size = external global [2 x i32], align 4
@g_board = external global [2 x [32 x i32]], align 16

; Function Attrs: nounwind uwtable
define i32 @does_next_player_win(i32 %next_player, i32 %print) #0 {
entry:
  %retval = alloca i32, align 4
  %next_player.addr = alloca i32, align 4
  %print.addr = alloca i32, align 4
  %prot = alloca i32, align 4
  %vuln2 = alloca i32, align 4
  %vuln2_w_prot = alloca i32, align 4
  %vuln1 = alloca i32, align 4
  %vuln1_w_prot = alloca i32, align 4
  %safe = alloca i32, align 4
  %unused = alloca i32, align 4
  %empty = alloca i32, align 4
  %safe_op2 = alloca i32, align 4
  %safe_op1 = alloca i32, align 4
  %safe_op0 = alloca i32, align 4
  %r_value = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp_board = alloca [32 x i32], align 16
  %moves = alloca i32, align 4
  %opp_moves = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %next_player, i32* %next_player.addr, align 4
  store i32 %print, i32* %print.addr, align 4
  store i32 0, i32* %r_value, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* %tmp_board, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load i32, i32* %next_player.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [2 x %struct.Basic_Info], [2 x %struct.Basic_Info]* @g_info_totals, i32 0, i64 %idxprom1
  %safe3 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx2, i32 0, i32 0
  %4 = load i32, i32* %safe3, align 4
  store i32 %4, i32* %safe, align 4
  %5 = load i32, i32* @g_empty_squares, align 4
  store i32 %5, i32* %empty, align 4
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %tmp_board, i32 0, i32 0
  %6 = load i32, i32* %next_player.addr, align 4
  call void @pack_prot(i32* %arraydecay, i32 %6, i32* %prot)
  %arraydecay4 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp_board, i32 0, i32 0
  %7 = load i32, i32* %next_player.addr, align 4
  call void @pack_vuln(i32* %arraydecay4, i32 %7, i32* %vuln2, i32* %vuln2_w_prot, i32* %vuln1, i32* %vuln1_w_prot, i32* %unused)
  %arraydecay5 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp_board, i32 0, i32 0
  %8 = load i32, i32* %next_player.addr, align 4
  call void @pack_safe(i32* %arraydecay5, i32 %8, i32* %safe_op2, i32* %safe_op1, i32* %safe_op0)
  %9 = load i32, i32* %print.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i32, i32* %next_player.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i32 %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i32, i32* %prot, align 4
  %14 = load i32, i32* %vuln2, align 4
  %15 = load i32, i32* %vuln2_w_prot, align 4
  %16 = load i32, i32* %vuln1, align 4
  %17 = load i32, i32* %vuln1_w_prot, align 4
  %18 = load i32, i32* %safe, align 4
  %19 = load i32, i32* %unused, align 4
  %20 = load i32, i32* %empty, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i32 0, i32 0), i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = load i32, i32* %safe_op2, align 4
  %23 = load i32, i32* %safe_op1, align 4
  %24 = load i32, i32* %safe_op0, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i32 %22, i32 %23, i32 %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  store i32 0, i32* %x, align 4
  %25 = load i32, i32* %prot, align 4
  %rem = srem i32 %25, 2
  %cmp8 = icmp eq i32 %rem, 1
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %26 = load i32, i32* %prot, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %prot, align 4
  %27 = load i32, i32* %safe, align 4
  %add = add nsw i32 %27, 2
  store i32 %add, i32* %safe, align 4
  br label %if.end.79

if.else:                                          ; preds = %if.end
  %28 = load i32, i32* %vuln2, align 4
  %rem10 = srem i32 %28, 3
  %cmp11 = icmp ne i32 %rem10, 0
  br i1 %cmp11, label %if.then.12, label %if.else.19

if.then.12:                                       ; preds = %if.else
  %29 = load i32, i32* %vuln2, align 4
  %dec13 = add nsw i32 %29, -1
  store i32 %dec13, i32* %vuln2, align 4
  %30 = load i32, i32* %safe, align 4
  %inc14 = add nsw i32 %30, 1
  store i32 %inc14, i32* %safe, align 4
  %31 = load i32, i32* %vuln2_w_prot, align 4
  %32 = load i32, i32* %vuln2, align 4
  %cmp15 = icmp sgt i32 %31, %32
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.then.12
  %33 = load i32, i32* %vuln2_w_prot, align 4
  %dec17 = add nsw i32 %33, -1
  store i32 %dec17, i32* %vuln2_w_prot, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.then.12
  br label %if.end.78

if.else.19:                                       ; preds = %if.else
  %34 = load i32, i32* %vuln1, align 4
  %rem20 = srem i32 %34, 2
  %cmp21 = icmp ne i32 %rem20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.29

if.then.22:                                       ; preds = %if.else.19
  %35 = load i32, i32* %vuln1, align 4
  %dec23 = add nsw i32 %35, -1
  store i32 %dec23, i32* %vuln1, align 4
  %36 = load i32, i32* %safe, align 4
  %inc24 = add nsw i32 %36, 1
  store i32 %inc24, i32* %safe, align 4
  %37 = load i32, i32* %vuln1_w_prot, align 4
  %38 = load i32, i32* %vuln1, align 4
  %cmp25 = icmp sgt i32 %37, %38
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.22
  %39 = load i32, i32* %vuln1_w_prot, align 4
  %dec27 = add nsw i32 %39, -1
  store i32 %dec27, i32* %vuln1_w_prot, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.22
  br label %if.end.77

if.else.29:                                       ; preds = %if.else.19
  %40 = load i32, i32* %safe_op2, align 4
  %rem30 = srem i32 %40, 2
  %cmp31 = icmp ne i32 %rem30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.35

if.then.32:                                       ; preds = %if.else.29
  %41 = load i32, i32* %safe_op2, align 4
  %dec33 = add nsw i32 %41, -1
  store i32 %dec33, i32* %safe_op2, align 4
  %42 = load i32, i32* %unused, align 4
  %add34 = add nsw i32 %42, 3
  store i32 %add34, i32* %unused, align 4
  br label %if.end.76

if.else.35:                                       ; preds = %if.else.29
  %43 = load i32, i32* %safe_op1, align 4
  %rem36 = srem i32 %43, 2
  %cmp37 = icmp ne i32 %rem36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.41

if.then.38:                                       ; preds = %if.else.35
  %44 = load i32, i32* %safe_op1, align 4
  %dec39 = add nsw i32 %44, -1
  store i32 %dec39, i32* %safe_op1, align 4
  %45 = load i32, i32* %unused, align 4
  %add40 = add nsw i32 %45, 2
  store i32 %add40, i32* %unused, align 4
  br label %if.end.75

if.else.41:                                       ; preds = %if.else.35
  %46 = load i32, i32* %safe_op0, align 4
  %rem42 = srem i32 %46, 2
  %cmp43 = icmp ne i32 %rem42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.47

if.then.44:                                       ; preds = %if.else.41
  %47 = load i32, i32* %safe_op0, align 4
  %dec45 = add nsw i32 %47, -1
  store i32 %dec45, i32* %safe_op0, align 4
  %48 = load i32, i32* %unused, align 4
  %add46 = add nsw i32 %48, 1
  store i32 %add46, i32* %unused, align 4
  br label %if.end.74

if.else.47:                                       ; preds = %if.else.41
  %49 = load i32, i32* %vuln2, align 4
  %cmp48 = icmp sgt i32 %49, 0
  br i1 %cmp48, label %if.then.49, label %if.else.56

if.then.49:                                       ; preds = %if.else.47
  %50 = load i32, i32* %vuln2, align 4
  %dec50 = add nsw i32 %50, -1
  store i32 %dec50, i32* %vuln2, align 4
  %51 = load i32, i32* %safe, align 4
  %inc51 = add nsw i32 %51, 1
  store i32 %inc51, i32* %safe, align 4
  %52 = load i32, i32* %vuln2_w_prot, align 4
  %53 = load i32, i32* %vuln2, align 4
  %cmp52 = icmp sgt i32 %52, %53
  br i1 %cmp52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.then.49
  %54 = load i32, i32* %vuln2_w_prot, align 4
  %dec54 = add nsw i32 %54, -1
  store i32 %dec54, i32* %vuln2_w_prot, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.then.49
  br label %if.end.73

if.else.56:                                       ; preds = %if.else.47
  %55 = load i32, i32* %vuln1, align 4
  %cmp57 = icmp sgt i32 %55, 0
  br i1 %cmp57, label %if.then.58, label %if.else.65

if.then.58:                                       ; preds = %if.else.56
  %56 = load i32, i32* %vuln1, align 4
  %dec59 = add nsw i32 %56, -1
  store i32 %dec59, i32* %vuln1, align 4
  %57 = load i32, i32* %safe, align 4
  %inc60 = add nsw i32 %57, 1
  store i32 %inc60, i32* %safe, align 4
  %58 = load i32, i32* %vuln1_w_prot, align 4
  %59 = load i32, i32* %vuln1, align 4
  %cmp61 = icmp sgt i32 %58, %59
  br i1 %cmp61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.then.58
  %60 = load i32, i32* %vuln1_w_prot, align 4
  %dec63 = add nsw i32 %60, -1
  store i32 %dec63, i32* %vuln1_w_prot, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.then.58
  br label %if.end.72

if.else.65:                                       ; preds = %if.else.56
  %61 = load i32, i32* %prot, align 4
  %cmp66 = icmp sgt i32 %61, 0
  br i1 %cmp66, label %if.then.67, label %if.else.70

if.then.67:                                       ; preds = %if.else.65
  %62 = load i32, i32* %prot, align 4
  %dec68 = add nsw i32 %62, -1
  store i32 %dec68, i32* %prot, align 4
  %63 = load i32, i32* %safe, align 4
  %add69 = add nsw i32 %63, 2
  store i32 %add69, i32* %safe, align 4
  br label %if.end.71

if.else.70:                                       ; preds = %if.else.65
  store i32 -1, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.then.67
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.64
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.55
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.44
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.38
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.32
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.28
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.18
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.9
  %64 = load i32, i32* %prot, align 4
  %rem80 = srem i32 %64, 2
  %cmp81 = icmp eq i32 %rem80, 1
  br i1 %cmp81, label %if.then.82, label %if.end.85

if.then.82:                                       ; preds = %if.end.79
  %65 = load i32, i32* %prot, align 4
  %dec83 = add nsw i32 %65, -1
  store i32 %dec83, i32* %prot, align 4
  %66 = load i32, i32* %vuln2, align 4
  %add84 = add nsw i32 %66, 2
  store i32 %add84, i32* %vuln2, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.82, %if.end.79
  %67 = load i32, i32* %prot, align 4
  %68 = load i32, i32* %vuln2, align 4
  %div = sdiv i32 %68, 3
  %add86 = add nsw i32 %67, %div
  %69 = load i32, i32* %vuln1, align 4
  %div87 = sdiv i32 %69, 2
  %add88 = add nsw i32 %add86, %div87
  %70 = load i32, i32* %safe, align 4
  %add89 = add nsw i32 %add88, %70
  store i32 %add89, i32* %moves, align 4
  %71 = load i32, i32* %vuln2, align 4
  %rem90 = srem i32 %71, 3
  %cmp91 = icmp ne i32 %rem90, 0
  br i1 %cmp91, label %land.lhs.true, label %if.else.97

land.lhs.true:                                    ; preds = %if.end.85
  %72 = load i32, i32* %vuln1, align 4
  %rem92 = srem i32 %72, 2
  %cmp93 = icmp ne i32 %rem92, 0
  br i1 %cmp93, label %if.then.94, label %if.else.97

if.then.94:                                       ; preds = %land.lhs.true
  %73 = load i32, i32* %moves, align 4
  %inc95 = add nsw i32 %73, 1
  store i32 %inc95, i32* %moves, align 4
  %74 = load i32, i32* %unused, align 4
  %dec96 = add nsw i32 %74, -1
  store i32 %dec96, i32* %unused, align 4
  store i32 1, i32* %x, align 4
  br label %if.end.105

if.else.97:                                       ; preds = %land.lhs.true, %if.end.85
  %75 = load i32, i32* %vuln2, align 4
  %rem98 = srem i32 %75, 3
  %cmp99 = icmp eq i32 %rem98, 0
  br i1 %cmp99, label %land.lhs.true.100, label %if.end.104

land.lhs.true.100:                                ; preds = %if.else.97
  %76 = load i32, i32* %vuln1, align 4
  %rem101 = srem i32 %76, 2
  %cmp102 = icmp eq i32 %rem101, 0
  br i1 %cmp102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %land.lhs.true.100
  store i32 1, i32* %x, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %land.lhs.true.100, %if.else.97
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.94
  %77 = load i32, i32* %x, align 4
  %cmp106 = icmp eq i32 %77, 1
  br i1 %cmp106, label %if.then.107, label %if.else.120

if.then.107:                                      ; preds = %if.end.105
  %78 = load i32, i32* %safe_op2, align 4
  %rem108 = srem i32 %78, 2
  %cmp109 = icmp eq i32 %rem108, 1
  br i1 %cmp109, label %if.then.110, label %if.end.113

if.then.110:                                      ; preds = %if.then.107
  %79 = load i32, i32* %safe_op2, align 4
  %dec111 = add nsw i32 %79, -1
  store i32 %dec111, i32* %safe_op2, align 4
  %80 = load i32, i32* %safe_op1, align 4
  %inc112 = add nsw i32 %80, 1
  store i32 %inc112, i32* %safe_op1, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.110, %if.then.107
  %81 = load i32, i32* %safe_op1, align 4
  %rem114 = srem i32 %81, 2
  %cmp115 = icmp eq i32 %rem114, 1
  br i1 %cmp115, label %if.then.116, label %if.end.119

if.then.116:                                      ; preds = %if.end.113
  %82 = load i32, i32* %safe_op1, align 4
  %dec117 = add nsw i32 %82, -1
  store i32 %dec117, i32* %safe_op1, align 4
  %83 = load i32, i32* %safe_op0, align 4
  %inc118 = add nsw i32 %83, 1
  store i32 %inc118, i32* %safe_op0, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.116, %if.end.113
  br label %if.end.144

if.else.120:                                      ; preds = %if.end.105
  %84 = load i32, i32* %safe_op2, align 4
  %rem121 = srem i32 %84, 2
  %cmp122 = icmp eq i32 %rem121, 1
  br i1 %cmp122, label %if.then.123, label %if.else.131

if.then.123:                                      ; preds = %if.else.120
  %85 = load i32, i32* %unused, align 4
  %add124 = add nsw i32 %85, 3
  store i32 %add124, i32* %unused, align 4
  %86 = load i32, i32* %safe_op1, align 4
  %rem125 = srem i32 %86, 2
  %cmp126 = icmp eq i32 %rem125, 1
  br i1 %cmp126, label %if.then.127, label %if.end.130

if.then.127:                                      ; preds = %if.then.123
  %87 = load i32, i32* %safe_op1, align 4
  %dec128 = add nsw i32 %87, -1
  store i32 %dec128, i32* %safe_op1, align 4
  %88 = load i32, i32* %safe_op0, align 4
  %inc129 = add nsw i32 %88, 1
  store i32 %inc129, i32* %safe_op0, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.127, %if.then.123
  br label %if.end.143

if.else.131:                                      ; preds = %if.else.120
  %89 = load i32, i32* %safe_op1, align 4
  %rem132 = srem i32 %89, 2
  %cmp133 = icmp eq i32 %rem132, 1
  br i1 %cmp133, label %if.then.134, label %if.else.136

if.then.134:                                      ; preds = %if.else.131
  %90 = load i32, i32* %unused, align 4
  %add135 = add nsw i32 %90, 2
  store i32 %add135, i32* %unused, align 4
  br label %if.end.142

if.else.136:                                      ; preds = %if.else.131
  %91 = load i32, i32* %safe_op0, align 4
  %rem137 = srem i32 %91, 2
  %cmp138 = icmp eq i32 %rem137, 1
  br i1 %cmp138, label %if.then.139, label %if.end.141

if.then.139:                                      ; preds = %if.else.136
  %92 = load i32, i32* %unused, align 4
  %add140 = add nsw i32 %92, 1
  store i32 %add140, i32* %unused, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.139, %if.else.136
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.then.134
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %if.end.130
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.end.119
  %93 = load i32, i32* %vuln2_w_prot, align 4
  %94 = load i32, i32* %vuln2, align 4
  %div145 = sdiv i32 %94, 3
  %95 = load i32, i32* %vuln2, align 4
  %96 = load i32, i32* %vuln2_w_prot, align 4
  %sub = sub nsw i32 %95, %96
  %div146 = sdiv i32 %sub, 3
  %sub147 = sub nsw i32 %div145, %div146
  %sub148 = sub nsw i32 %93, %sub147
  %97 = load i32, i32* %unused, align 4
  %add149 = add nsw i32 %97, %sub148
  store i32 %add149, i32* %unused, align 4
  %98 = load i32, i32* %vuln1_w_prot, align 4
  %99 = load i32, i32* %vuln1, align 4
  %div150 = sdiv i32 %99, 2
  %100 = load i32, i32* %vuln1, align 4
  %101 = load i32, i32* %vuln1_w_prot, align 4
  %sub151 = sub nsw i32 %100, %101
  %div152 = sdiv i32 %sub151, 2
  %sub153 = sub nsw i32 %div150, %div152
  %sub154 = sub nsw i32 %98, %sub153
  %102 = load i32, i32* %unused, align 4
  %add155 = add nsw i32 %102, %sub154
  store i32 %add155, i32* %unused, align 4
  %103 = load i32, i32* %safe_op2, align 4
  %div156 = sdiv i32 %103, 2
  %mul = mul nsw i32 %div156, 3
  %104 = load i32, i32* %unused, align 4
  %add157 = add nsw i32 %104, %mul
  store i32 %add157, i32* %unused, align 4
  %105 = load i32, i32* %safe_op1, align 4
  %div158 = sdiv i32 %105, 2
  %mul159 = mul nsw i32 %div158, 2
  %106 = load i32, i32* %unused, align 4
  %add160 = add nsw i32 %106, %mul159
  store i32 %add160, i32* %unused, align 4
  %107 = load i32, i32* %safe_op0, align 4
  %div161 = sdiv i32 %107, 2
  %mul162 = mul nsw i32 %div161, 1
  %108 = load i32, i32* %unused, align 4
  %add163 = add nsw i32 %108, %mul162
  store i32 %add163, i32* %unused, align 4
  %109 = load i32, i32* %empty, align 4
  %110 = load i32, i32* %moves, align 4
  %mul164 = mul nsw i32 %110, 2
  %sub165 = sub nsw i32 %109, %mul164
  %111 = load i32, i32* %unused, align 4
  %sub166 = sub nsw i32 %sub165, %111
  %div167 = sdiv i32 %sub166, 2
  store i32 %div167, i32* %opp_moves, align 4
  %112 = load i32, i32* %moves, align 4
  %113 = load i32, i32* %opp_moves, align 4
  %sub168 = sub nsw i32 %112, %113
  store i32 %sub168, i32* %r_value, align 4
  %114 = load i32, i32* %print.addr, align 4
  %tobool169 = icmp ne i32 %114, 0
  br i1 %tobool169, label %if.then.170, label %if.end.177

if.then.170:                                      ; preds = %if.end.144
  %115 = load i32, i32* %moves, align 4
  %116 = load i32, i32* %opp_moves, align 4
  %call171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 %115, i32 %116)
  %117 = load i32, i32* %moves, align 4
  %118 = load i32, i32* %opp_moves, align 4
  %sub172 = sub nsw i32 %117, %118
  %cmp173 = icmp sge i32 %sub172, 0
  br i1 %cmp173, label %if.then.174, label %if.end.176

if.then.174:                                      ; preds = %if.then.170
  %call175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.174, %if.then.170
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.end.144
  %119 = load i32, i32* %r_value, align 4
  store i32 %119, i32* %retval
  br label %return

return:                                           ; preds = %if.end.177, %if.else.70
  %120 = load i32, i32* %retval
  ret i32 %120
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pack_prot(i32* %tmp_board, i32 %player, i32* %prot) #1 {
entry:
  %tmp_board.addr = alloca i32*, align 8
  %player.addr = alloca i32, align 4
  %prot.addr = alloca i32*, align 8
  %r = alloca i32, align 4
  %p = alloca i32, align 4
  %tmp = alloca i32, align 4
  %inter = alloca i32, align 4
  %walls = alloca i32, align 4
  store i32* %tmp_board, i32** %tmp_board.addr, align 8
  store i32 %player, i32* %player.addr, align 4
  store i32* %prot, i32** %prot.addr, align 8
  store i32 0, i32* %r, align 4
  store i32 0, i32* %p, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %r, align 4
  %1 = load i32, i32* %player.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %r, align 4
  %idxprom3 = sext i32 %3 to i64
  %4 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %4, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %6 = load i32, i32* %r, align 4
  %add = add nsw i32 %6, 1
  %idxprom5 = sext i32 %add to i64
  %7 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %7, i64 %idxprom5
  %8 = load i32, i32* %arrayidx6, align 4
  %or = or i32 %5, %8
  %9 = load i32, i32* %r, align 4
  %add7 = add nsw i32 %9, 2
  %idxprom8 = sext i32 %add7 to i64
  %10 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %10, i64 %idxprom8
  %11 = load i32, i32* %arrayidx9, align 4
  %or10 = or i32 %or, %11
  %12 = load i32, i32* %r, align 4
  %add11 = add nsw i32 %12, 3
  %idxprom12 = sext i32 %add11 to i64
  %13 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %13, i64 %idxprom12
  %14 = load i32, i32* %arrayidx13, align 4
  %or14 = or i32 %or10, %14
  %15 = load i32, i32* %r, align 4
  %add15 = add nsw i32 %15, 1
  %idxprom16 = sext i32 %add15 to i64
  %16 = load i32, i32* %player.addr, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx18, i32 0, i64 %idxprom16
  %17 = load i32, i32* %arrayidx19, align 4
  %or20 = or i32 %or14, %17
  %18 = load i32, i32* %r, align 4
  %add21 = add nsw i32 %18, 2
  %idxprom22 = sext i32 %add21 to i64
  %19 = load i32, i32* %player.addr, align 4
  %idxprom23 = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx24, i32 0, i64 %idxprom22
  %20 = load i32, i32* %arrayidx25, align 4
  %or26 = or i32 %or20, %20
  store i32 %or26, i32* %inter, align 4
  %21 = load i32, i32* %inter, align 4
  %shr = lshr i32 %21, 1
  %22 = load i32, i32* %inter, align 4
  %or27 = or i32 %shr, %22
  store i32 %or27, i32* %inter, align 4
  %23 = load i32, i32* %r, align 4
  %idxprom28 = sext i32 %23 to i64
  %24 = load i32, i32* %player.addr, align 4
  %idxprom29 = sext i32 %24 to i64
  %arrayidx30 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx30, i32 0, i64 %idxprom28
  %25 = load i32, i32* %arrayidx31, align 4
  %shr32 = lshr i32 %25, 1
  %26 = load i32, i32* %r, align 4
  %idxprom33 = sext i32 %26 to i64
  %27 = load i32, i32* %player.addr, align 4
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx35, i32 0, i64 %idxprom33
  %28 = load i32, i32* %arrayidx36, align 4
  %and = and i32 %shr32, %28
  %29 = load i32, i32* %r, align 4
  %add37 = add nsw i32 %29, 3
  %idxprom38 = sext i32 %add37 to i64
  %30 = load i32, i32* %player.addr, align 4
  %idxprom39 = sext i32 %30 to i64
  %arrayidx40 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom39
  %arrayidx41 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx40, i32 0, i64 %idxprom38
  %31 = load i32, i32* %arrayidx41, align 4
  %shr42 = lshr i32 %31, 1
  %32 = load i32, i32* %r, align 4
  %add43 = add nsw i32 %32, 3
  %idxprom44 = sext i32 %add43 to i64
  %33 = load i32, i32* %player.addr, align 4
  %idxprom45 = sext i32 %33 to i64
  %arrayidx46 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom45
  %arrayidx47 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx46, i32 0, i64 %idxprom44
  %34 = load i32, i32* %arrayidx47, align 4
  %and48 = and i32 %shr42, %34
  %or49 = or i32 %and, %and48
  store i32 %or49, i32* %walls, align 4
  %35 = load i32, i32* %walls, align 4
  %36 = load i32, i32* %inter, align 4
  %neg = xor i32 %36, -1
  %and50 = and i32 %35, %neg
  store i32 %and50, i32* %inter, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %37 = load i32, i32* %inter, align 4
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %38 = load i32, i32* %inter, align 4
  %39 = load i32, i32* %inter, align 4
  %sub = sub i32 0, %39
  %and51 = and i32 %38, %sub
  store i32 %and51, i32* %tmp, align 4
  %40 = load i32, i32* %tmp, align 4
  %41 = load i32, i32* %tmp, align 4
  %shl = shl i32 %41, 1
  %or52 = or i32 %40, %shl
  %neg53 = xor i32 %or52, -1
  %42 = load i32, i32* %inter, align 4
  %and54 = and i32 %42, %neg53
  store i32 %and54, i32* %inter, align 4
  %43 = load i32, i32* %tmp, align 4
  %44 = load i32, i32* %tmp, align 4
  %shl55 = shl i32 %44, 1
  %or56 = or i32 %43, %shl55
  %45 = load i32, i32* %r, align 4
  %add57 = add nsw i32 %45, 1
  %idxprom58 = sext i32 %add57 to i64
  %46 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %46, i64 %idxprom58
  %47 = load i32, i32* %arrayidx59, align 4
  %or60 = or i32 %47, %or56
  store i32 %or60, i32* %arrayidx59, align 4
  %48 = load i32, i32* %tmp, align 4
  %49 = load i32, i32* %tmp, align 4
  %shl61 = shl i32 %49, 1
  %or62 = or i32 %48, %shl61
  %50 = load i32, i32* %r, align 4
  %add63 = add nsw i32 %50, 2
  %idxprom64 = sext i32 %add63 to i64
  %51 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %51, i64 %idxprom64
  %52 = load i32, i32* %arrayidx65, align 4
  %or66 = or i32 %52, %or62
  store i32 %or66, i32* %arrayidx65, align 4
  %53 = load i32, i32* %p, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %p, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %54 = load i32, i32* %r, align 4
  %inc67 = add nsw i32 %54, 1
  store i32 %inc67, i32* %r, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load i32, i32* %p, align 4
  %56 = load i32*, i32** %prot.addr, align 8
  store i32 %55, i32* %56, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pack_vuln(i32* %tmp_board, i32 %player, i32* %vuln2, i32* %vuln2_w_prot, i32* %vuln1, i32* %vuln1_w_prot, i32* %unused) #0 {
entry:
  %tmp_board.addr = alloca i32*, align 8
  %player.addr = alloca i32, align 4
  %vuln2.addr = alloca i32*, align 8
  %vuln2_w_prot.addr = alloca i32*, align 8
  %vuln1.addr = alloca i32*, align 8
  %vuln1_w_prot.addr = alloca i32*, align 8
  %unused.addr = alloca i32*, align 8
  %curr_row = alloca i32, align 4
  %adj_rows = alloca i32, align 4
  %next_prev_row = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp_ = alloca i32, align 4
  %v2 = alloca i32, align 4
  %v2_p = alloca i32, align 4
  %v1 = alloca i32, align 4
  %v1_p = alloca i32, align 4
  %u = alloca i32, align 4
  %r = alloca i32, align 4
  %state = alloca i32, align 4
  %s_v = alloca i32, align 4
  store i32* %tmp_board, i32** %tmp_board.addr, align 8
  store i32 %player, i32* %player.addr, align 4
  store i32* %vuln2, i32** %vuln2.addr, align 8
  store i32* %vuln2_w_prot, i32** %vuln2_w_prot.addr, align 8
  store i32* %vuln1, i32** %vuln1.addr, align 8
  store i32* %vuln1_w_prot, i32** %vuln1_w_prot.addr, align 8
  store i32* %unused, i32** %unused.addr, align 8
  store i32 0, i32* %tmp, align 4
  store i32 0, i32* %v2, align 4
  store i32 0, i32* %v2_p, align 4
  store i32 0, i32* %v1, align 4
  store i32 0, i32* %v1_p, align 4
  store i32 0, i32* %u, align 4
  store i32 0, i32* %s_v, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %r, align 4
  %1 = load i32, i32* %player.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %r, align 4
  %idxprom10 = sext i32 %3 to i64
  %4 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %4, i64 %idxprom10
  %5 = load i32, i32* %arrayidx11, align 4
  store i32 %5, i32* %next_prev_row, align 4
  %6 = load i32, i32* %r, align 4
  %add = add nsw i32 %6, 2
  %idxprom12 = sext i32 %add to i64
  %7 = load i32, i32* %player.addr, align 4
  %idxprom13 = sext i32 %7 to i64
  %arrayidx14 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx14, i32 0, i64 %idxprom12
  %8 = load i32, i32* %arrayidx15, align 4
  %9 = load i32, i32* %r, align 4
  %add16 = add nsw i32 %9, 2
  %idxprom17 = sext i32 %add16 to i64
  %10 = load i32, i32* %player.addr, align 4
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx19, i32 0, i64 %idxprom17
  %11 = load i32, i32* %arrayidx20, align 4
  %shl = shl i32 %11, 1
  %or = or i32 %8, %shl
  %neg = xor i32 %or, -1
  %12 = load i32, i32* %next_prev_row, align 4
  %or21 = or i32 %12, %neg
  store i32 %or21, i32* %next_prev_row, align 4
  %13 = load i32, i32* %r, align 4
  %add22 = add nsw i32 %13, 2
  %idxprom23 = sext i32 %add22 to i64
  %14 = load i32, i32* %player.addr, align 4
  %idxprom24 = sext i32 %14 to i64
  %arrayidx25 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx25, i32 0, i64 %idxprom23
  %15 = load i32, i32* %arrayidx26, align 4
  %16 = load i32, i32* %r, align 4
  %add27 = add nsw i32 %16, 2
  %idxprom28 = sext i32 %add27 to i64
  %17 = load i32, i32* %player.addr, align 4
  %idxprom29 = sext i32 %17 to i64
  %arrayidx30 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx30, i32 0, i64 %idxprom28
  %18 = load i32, i32* %arrayidx31, align 4
  %shr = lshr i32 %18, 1
  %or32 = or i32 %15, %shr
  %neg33 = xor i32 %or32, -1
  %19 = load i32, i32* %next_prev_row, align 4
  %or34 = or i32 %19, %neg33
  store i32 %or34, i32* %next_prev_row, align 4
  %20 = load i32, i32* %r, align 4
  %add35 = add nsw i32 %20, 1
  %idxprom36 = sext i32 %add35 to i64
  %21 = load i32, i32* %player.addr, align 4
  %idxprom37 = sext i32 %21 to i64
  %arrayidx38 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx38, i32 0, i64 %idxprom36
  %22 = load i32, i32* %arrayidx39, align 4
  %23 = load i32, i32* %r, align 4
  %add40 = add nsw i32 %23, 1
  %idxprom41 = sext i32 %add40 to i64
  %24 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %24, i64 %idxprom41
  %25 = load i32, i32* %arrayidx42, align 4
  %or43 = or i32 %22, %25
  %neg44 = xor i32 %or43, -1
  store i32 %neg44, i32* %curr_row, align 4
  %26 = load i32, i32* %r, align 4
  %idxprom45 = sext i32 %26 to i64
  %27 = load i32, i32* %player.addr, align 4
  %idxprom46 = sext i32 %27 to i64
  %arrayidx47 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx47, i32 0, i64 %idxprom45
  %28 = load i32, i32* %arrayidx48, align 4
  %29 = load i32, i32* %r, align 4
  %add49 = add nsw i32 %29, 2
  %idxprom50 = sext i32 %add49 to i64
  %30 = load i32, i32* %player.addr, align 4
  %idxprom51 = sext i32 %30 to i64
  %arrayidx52 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom51
  %arrayidx53 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx52, i32 0, i64 %idxprom50
  %31 = load i32, i32* %arrayidx53, align 4
  %and = and i32 %28, %31
  store i32 %and, i32* %adj_rows, align 4
  store i32 0, i32* %state, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.177, %for.body
  %32 = load i32, i32* %curr_row, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load i32, i32* %curr_row, align 4
  %34 = load i32, i32* %curr_row, align 4
  %sub = sub i32 0, %34
  %and54 = and i32 %33, %sub
  store i32 %and54, i32* %tmp_, align 4
  %35 = load i32, i32* %tmp_, align 4
  %36 = load i32, i32* %curr_row, align 4
  %xor = xor i32 %36, %35
  store i32 %xor, i32* %curr_row, align 4
  %37 = load i32, i32* %tmp_, align 4
  %shr55 = lshr i32 %37, 1
  %38 = load i32, i32* %tmp, align 4
  %and56 = and i32 %shr55, %38
  %cmp57 = icmp eq i32 %and56, 0
  br i1 %cmp57, label %if.then, label %if.end.83

if.then:                                          ; preds = %while.body
  %39 = load i32, i32* %state, align 4
  %cmp58 = icmp eq i32 %39, 1
  br i1 %cmp58, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %if.then
  %40 = load i32, i32* %u, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %u, align 4
  %41 = load i32, i32* %tmp, align 4
  %42 = load i32, i32* %r, align 4
  %add60 = add nsw i32 %42, 1
  %idxprom61 = sext i32 %add60 to i64
  %43 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %43, i64 %idxprom61
  %44 = load i32, i32* %arrayidx62, align 4
  %or63 = or i32 %44, %41
  store i32 %or63, i32* %arrayidx62, align 4
  br label %if.end.82

if.else:                                          ; preds = %if.then
  %45 = load i32, i32* %state, align 4
  %cmp64 = icmp eq i32 %45, 3
  br i1 %cmp64, label %if.then.65, label %if.end.81

if.then.65:                                       ; preds = %if.else
  %46 = load i32, i32* %s_v, align 4
  %47 = load i32, i32* %s_v, align 4
  %shl66 = shl i32 %47, 1
  %or67 = or i32 %46, %shl66
  %48 = load i32, i32* %r, align 4
  %add68 = add nsw i32 %48, 1
  %idxprom69 = sext i32 %add68 to i64
  %49 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %49, i64 %idxprom69
  %50 = load i32, i32* %arrayidx70, align 4
  %or71 = or i32 %50, %or67
  store i32 %or71, i32* %arrayidx70, align 4
  %51 = load i32, i32* %s_v, align 4
  %52 = load i32, i32* %next_prev_row, align 4
  %and72 = and i32 %51, %52
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.then.77, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.65
  %53 = load i32, i32* %s_v, align 4
  %shl74 = shl i32 %53, 1
  %54 = load i32, i32* %next_prev_row, align 4
  %and75 = and i32 %shl74, %54
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then.77, label %if.else.79

if.then.77:                                       ; preds = %lor.lhs.false, %if.then.65
  %55 = load i32, i32* %v2_p, align 4
  %inc78 = add nsw i32 %55, 1
  store i32 %inc78, i32* %v2_p, align 4
  br label %if.end

if.else.79:                                       ; preds = %lor.lhs.false
  %56 = load i32, i32* %v1_p, align 4
  %inc80 = add nsw i32 %56, 1
  store i32 %inc80, i32* %v1_p, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.79, %if.then.77
  br label %if.end.81

if.end.81:                                        ; preds = %if.end, %if.else
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.59
  store i32 0, i32* %state, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %while.body
  %57 = load i32, i32* %tmp_, align 4
  store i32 %57, i32* %tmp, align 4
  %58 = load i32, i32* %tmp, align 4
  %59 = load i32, i32* %adj_rows, align 4
  %and84 = and i32 %58, %59
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.then.86, label %if.else.106

if.then.86:                                       ; preds = %if.end.83
  %60 = load i32, i32* %state, align 4
  %cmp87 = icmp eq i32 %60, 0
  br i1 %cmp87, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %if.then.86
  store i32 1, i32* %state, align 4
  br label %if.end.105

if.else.89:                                       ; preds = %if.then.86
  %61 = load i32, i32* %state, align 4
  %cmp90 = icmp eq i32 %61, 1
  br i1 %cmp90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %if.else.89
  store i32 0, i32* %state, align 4
  br label %if.end.104

if.else.92:                                       ; preds = %if.else.89
  %62 = load i32, i32* %state, align 4
  %cmp93 = icmp eq i32 %62, 2
  br i1 %cmp93, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %if.else.92
  store i32 3, i32* %state, align 4
  br label %if.end.103

if.else.95:                                       ; preds = %if.else.92
  %63 = load i32, i32* %state, align 4
  %cmp96 = icmp eq i32 %63, 3
  br i1 %cmp96, label %if.then.97, label %if.else.98

if.then.97:                                       ; preds = %if.else.95
  store i32 4, i32* %state, align 4
  br label %if.end.102

if.else.98:                                       ; preds = %if.else.95
  %64 = load i32, i32* %state, align 4
  %cmp99 = icmp eq i32 %64, 4
  br i1 %cmp99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.else.98
  store i32 3, i32* %state, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %if.else.98
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.97
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.94
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.91
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.88
  br label %if.end.177

if.else.106:                                      ; preds = %if.end.83
  %65 = load i32, i32* %state, align 4
  %cmp107 = icmp eq i32 %65, 0
  br i1 %cmp107, label %if.then.108, label %if.else.109

if.then.108:                                      ; preds = %if.else.106
  store i32 2, i32* %state, align 4
  %66 = load i32, i32* %tmp, align 4
  store i32 %66, i32* %s_v, align 4
  br label %if.end.176

if.else.109:                                      ; preds = %if.else.106
  %67 = load i32, i32* %state, align 4
  %cmp110 = icmp eq i32 %67, 1
  br i1 %cmp110, label %if.then.111, label %if.else.129

if.then.111:                                      ; preds = %if.else.109
  store i32 0, i32* %state, align 4
  %68 = load i32, i32* %tmp, align 4
  %69 = load i32, i32* %tmp, align 4
  %shr112 = lshr i32 %69, 1
  %or113 = or i32 %68, %shr112
  %70 = load i32, i32* %r, align 4
  %add114 = add nsw i32 %70, 1
  %idxprom115 = sext i32 %add114 to i64
  %71 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %71, i64 %idxprom115
  %72 = load i32, i32* %arrayidx116, align 4
  %or117 = or i32 %72, %or113
  store i32 %or117, i32* %arrayidx116, align 4
  %73 = load i32, i32* %tmp, align 4
  %74 = load i32, i32* %next_prev_row, align 4
  %and118 = and i32 %73, %74
  %tobool119 = icmp ne i32 %and118, 0
  br i1 %tobool119, label %if.then.124, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %if.then.111
  %75 = load i32, i32* %tmp, align 4
  %shr121 = lshr i32 %75, 1
  %76 = load i32, i32* %next_prev_row, align 4
  %and122 = and i32 %shr121, %76
  %tobool123 = icmp ne i32 %and122, 0
  br i1 %tobool123, label %if.then.124, label %if.else.126

if.then.124:                                      ; preds = %lor.lhs.false.120, %if.then.111
  %77 = load i32, i32* %v2_p, align 4
  %inc125 = add nsw i32 %77, 1
  store i32 %inc125, i32* %v2_p, align 4
  br label %if.end.128

if.else.126:                                      ; preds = %lor.lhs.false.120
  %78 = load i32, i32* %v1_p, align 4
  %inc127 = add nsw i32 %78, 1
  store i32 %inc127, i32* %v1_p, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.126, %if.then.124
  br label %if.end.175

if.else.129:                                      ; preds = %if.else.109
  %79 = load i32, i32* %state, align 4
  %cmp130 = icmp eq i32 %79, 2
  br i1 %cmp130, label %if.then.131, label %if.else.149

if.then.131:                                      ; preds = %if.else.129
  store i32 0, i32* %state, align 4
  %80 = load i32, i32* %s_v, align 4
  %81 = load i32, i32* %s_v, align 4
  %shl132 = shl i32 %81, 1
  %or133 = or i32 %80, %shl132
  %82 = load i32, i32* %r, align 4
  %add134 = add nsw i32 %82, 1
  %idxprom135 = sext i32 %add134 to i64
  %83 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %83, i64 %idxprom135
  %84 = load i32, i32* %arrayidx136, align 4
  %or137 = or i32 %84, %or133
  store i32 %or137, i32* %arrayidx136, align 4
  %85 = load i32, i32* %s_v, align 4
  %86 = load i32, i32* %next_prev_row, align 4
  %and138 = and i32 %85, %86
  %tobool139 = icmp ne i32 %and138, 0
  br i1 %tobool139, label %if.then.144, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %if.then.131
  %87 = load i32, i32* %s_v, align 4
  %shl141 = shl i32 %87, 1
  %88 = load i32, i32* %next_prev_row, align 4
  %and142 = and i32 %shl141, %88
  %tobool143 = icmp ne i32 %and142, 0
  br i1 %tobool143, label %if.then.144, label %if.else.146

if.then.144:                                      ; preds = %lor.lhs.false.140, %if.then.131
  %89 = load i32, i32* %v2, align 4
  %inc145 = add nsw i32 %89, 1
  store i32 %inc145, i32* %v2, align 4
  br label %if.end.148

if.else.146:                                      ; preds = %lor.lhs.false.140
  %90 = load i32, i32* %v1, align 4
  %inc147 = add nsw i32 %90, 1
  store i32 %inc147, i32* %v1, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.146, %if.then.144
  br label %if.end.174

if.else.149:                                      ; preds = %if.else.129
  %91 = load i32, i32* %state, align 4
  %cmp150 = icmp eq i32 %91, 3
  br i1 %cmp150, label %if.then.151, label %if.else.169

if.then.151:                                      ; preds = %if.else.149
  store i32 2, i32* %state, align 4
  %92 = load i32, i32* %s_v, align 4
  %93 = load i32, i32* %s_v, align 4
  %shl152 = shl i32 %93, 1
  %or153 = or i32 %92, %shl152
  %94 = load i32, i32* %r, align 4
  %add154 = add nsw i32 %94, 1
  %idxprom155 = sext i32 %add154 to i64
  %95 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx156 = getelementptr inbounds i32, i32* %95, i64 %idxprom155
  %96 = load i32, i32* %arrayidx156, align 4
  %or157 = or i32 %96, %or153
  store i32 %or157, i32* %arrayidx156, align 4
  %97 = load i32, i32* %s_v, align 4
  %98 = load i32, i32* %next_prev_row, align 4
  %and158 = and i32 %97, %98
  %tobool159 = icmp ne i32 %and158, 0
  br i1 %tobool159, label %if.then.164, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %if.then.151
  %99 = load i32, i32* %s_v, align 4
  %shl161 = shl i32 %99, 1
  %100 = load i32, i32* %next_prev_row, align 4
  %and162 = and i32 %shl161, %100
  %tobool163 = icmp ne i32 %and162, 0
  br i1 %tobool163, label %if.then.164, label %if.else.166

if.then.164:                                      ; preds = %lor.lhs.false.160, %if.then.151
  %101 = load i32, i32* %v2_p, align 4
  %inc165 = add nsw i32 %101, 1
  store i32 %inc165, i32* %v2_p, align 4
  br label %if.end.168

if.else.166:                                      ; preds = %lor.lhs.false.160
  %102 = load i32, i32* %v1_p, align 4
  %inc167 = add nsw i32 %102, 1
  store i32 %inc167, i32* %v1_p, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.166, %if.then.164
  %103 = load i32, i32* %tmp, align 4
  store i32 %103, i32* %s_v, align 4
  br label %if.end.173

if.else.169:                                      ; preds = %if.else.149
  %104 = load i32, i32* %state, align 4
  %cmp170 = icmp eq i32 %104, 4
  br i1 %cmp170, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %if.else.169
  store i32 2, i32* %state, align 4
  %105 = load i32, i32* %tmp, align 4
  store i32 %105, i32* %s_v, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.171, %if.else.169
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.end.168
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end.148
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.end.128
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.then.108
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.end.105
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %106 = load i32, i32* %state, align 4
  %cmp178 = icmp eq i32 %106, 1
  br i1 %cmp178, label %if.then.179, label %if.else.185

if.then.179:                                      ; preds = %while.end
  %107 = load i32, i32* %u, align 4
  %inc180 = add nsw i32 %107, 1
  store i32 %inc180, i32* %u, align 4
  %108 = load i32, i32* %tmp, align 4
  %109 = load i32, i32* %r, align 4
  %add181 = add nsw i32 %109, 1
  %idxprom182 = sext i32 %add181 to i64
  %110 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx183 = getelementptr inbounds i32, i32* %110, i64 %idxprom182
  %111 = load i32, i32* %arrayidx183, align 4
  %or184 = or i32 %111, %108
  store i32 %or184, i32* %arrayidx183, align 4
  br label %if.end.206

if.else.185:                                      ; preds = %while.end
  %112 = load i32, i32* %state, align 4
  %cmp186 = icmp eq i32 %112, 3
  br i1 %cmp186, label %if.then.187, label %if.end.205

if.then.187:                                      ; preds = %if.else.185
  %113 = load i32, i32* %s_v, align 4
  %114 = load i32, i32* %s_v, align 4
  %shl188 = shl i32 %114, 1
  %or189 = or i32 %113, %shl188
  %115 = load i32, i32* %r, align 4
  %add190 = add nsw i32 %115, 1
  %idxprom191 = sext i32 %add190 to i64
  %116 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx192 = getelementptr inbounds i32, i32* %116, i64 %idxprom191
  %117 = load i32, i32* %arrayidx192, align 4
  %or193 = or i32 %117, %or189
  store i32 %or193, i32* %arrayidx192, align 4
  %118 = load i32, i32* %s_v, align 4
  %119 = load i32, i32* %next_prev_row, align 4
  %and194 = and i32 %118, %119
  %tobool195 = icmp ne i32 %and194, 0
  br i1 %tobool195, label %if.then.200, label %lor.lhs.false.196

lor.lhs.false.196:                                ; preds = %if.then.187
  %120 = load i32, i32* %s_v, align 4
  %shl197 = shl i32 %120, 1
  %121 = load i32, i32* %next_prev_row, align 4
  %and198 = and i32 %shl197, %121
  %tobool199 = icmp ne i32 %and198, 0
  br i1 %tobool199, label %if.then.200, label %if.else.202

if.then.200:                                      ; preds = %lor.lhs.false.196, %if.then.187
  %122 = load i32, i32* %v2_p, align 4
  %inc201 = add nsw i32 %122, 1
  store i32 %inc201, i32* %v2_p, align 4
  br label %if.end.204

if.else.202:                                      ; preds = %lor.lhs.false.196
  %123 = load i32, i32* %v1_p, align 4
  %inc203 = add nsw i32 %123, 1
  store i32 %inc203, i32* %v1_p, align 4
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.202, %if.then.200
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.else.185
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.then.179
  br label %for.inc

for.inc:                                          ; preds = %if.end.206
  %124 = load i32, i32* %r, align 4
  %inc207 = add nsw i32 %124, 1
  store i32 %inc207, i32* %r, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %125 = load i32, i32* %v2, align 4
  %126 = load i32, i32* %v2_p, align 4
  %add208 = add nsw i32 %125, %126
  %127 = load i32*, i32** %vuln2.addr, align 8
  store i32 %add208, i32* %127, align 4
  %128 = load i32, i32* %v2_p, align 4
  %129 = load i32*, i32** %vuln2_w_prot.addr, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32, i32* %v1, align 4
  %131 = load i32, i32* %v1_p, align 4
  %add209 = add nsw i32 %130, %131
  %132 = load i32*, i32** %vuln1.addr, align 8
  store i32 %add209, i32* %132, align 4
  %133 = load i32, i32* %v1_p, align 4
  %134 = load i32*, i32** %vuln1_w_prot.addr, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32, i32* %u, align 4
  %136 = load i32*, i32** %unused.addr, align 8
  store i32 %135, i32* %136, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pack_safe(i32* %tmp_board, i32 %player, i32* %safe_op2, i32* %safe_op1, i32* %safe_op0) #1 {
entry:
  %tmp_board.addr = alloca i32*, align 8
  %player.addr = alloca i32, align 4
  %safe_op2.addr = alloca i32*, align 8
  %safe_op1.addr = alloca i32*, align 8
  %safe_op0.addr = alloca i32*, align 8
  %guard = alloca i32, align 4
  %mask = alloca i32, align 4
  %curr = alloca i32, align 4
  %tmp = alloca i32, align 4
  %r = alloca i32, align 4
  %s2 = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s0 = alloca i32, align 4
  store i32* %tmp_board, i32** %tmp_board.addr, align 8
  store i32 %player, i32* %player.addr, align 4
  store i32* %safe_op2, i32** %safe_op2.addr, align 8
  store i32* %safe_op1, i32** %safe_op1.addr, align 8
  store i32* %safe_op0, i32** %safe_op0.addr, align 8
  store i32 0, i32* %s2, align 4
  store i32 0, i32* %s1, align 4
  store i32 0, i32* %s0, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %r, align 4
  %1 = load i32, i32* %player.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %r, align 4
  %idxprom5 = sext i32 %3 to i64
  %4 = load i32, i32* %player.addr, align 4
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx7, i32 0, i64 %idxprom5
  %5 = load i32, i32* %arrayidx8, align 4
  %6 = load i32, i32* %r, align 4
  %add = add nsw i32 %6, 2
  %idxprom9 = sext i32 %add to i64
  %7 = load i32, i32* %player.addr, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx11, i32 0, i64 %idxprom9
  %8 = load i32, i32* %arrayidx12, align 4
  %and = and i32 %5, %8
  store i32 %and, i32* %guard, align 4
  %9 = load i32, i32* %r, align 4
  %add13 = add nsw i32 %9, 1
  %idxprom14 = sext i32 %add13 to i64
  %10 = load i32, i32* %player.addr, align 4
  %idxprom15 = sext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx16, i32 0, i64 %idxprom14
  %11 = load i32, i32* %arrayidx17, align 4
  %12 = load i32, i32* %r, align 4
  %add18 = add nsw i32 %12, 1
  %idxprom19 = sext i32 %add18 to i64
  %13 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %13, i64 %idxprom19
  %14 = load i32, i32* %arrayidx20, align 4
  %or = or i32 %11, %14
  store i32 %or, i32* %curr, align 4
  %15 = load i32, i32* %curr, align 4
  %16 = load i32, i32* %curr, align 4
  %shr = lshr i32 %16, 1
  %or21 = or i32 %15, %shr
  %neg = xor i32 %or21, -1
  %17 = load i32, i32* %guard, align 4
  %18 = load i32, i32* %guard, align 4
  %shr22 = lshr i32 %18, 1
  %and23 = and i32 %17, %shr22
  %and24 = and i32 %neg, %and23
  store i32 %and24, i32* %mask, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.192, %for.body
  %19 = load i32, i32* %mask, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i32, i32* %mask, align 4
  %21 = load i32, i32* %mask, align 4
  %sub = sub i32 0, %21
  %and25 = and i32 %20, %sub
  store i32 %and25, i32* %tmp, align 4
  %22 = load i32, i32* %tmp, align 4
  %23 = load i32, i32* %tmp, align 4
  %shl = shl i32 %23, 1
  %or26 = or i32 %22, %shl
  %neg27 = xor i32 %or26, -1
  %24 = load i32, i32* %mask, align 4
  %and28 = and i32 %24, %neg27
  store i32 %and28, i32* %mask, align 4
  %25 = load i32, i32* %tmp, align 4
  %26 = load i32, i32* %tmp, align 4
  %shl29 = shl i32 %26, 1
  %or30 = or i32 %25, %shl29
  %27 = load i32, i32* %curr, align 4
  %or31 = or i32 %27, %or30
  store i32 %or31, i32* %curr, align 4
  %28 = load i32, i32* %curr, align 4
  %29 = load i32, i32* %r, align 4
  %idxprom32 = sext i32 %29 to i64
  %30 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %30, i64 %idxprom32
  %31 = load i32, i32* %arrayidx33, align 4
  %or34 = or i32 %28, %31
  %32 = load i32, i32* %r, align 4
  %add35 = add nsw i32 %32, 2
  %idxprom36 = sext i32 %add35 to i64
  %33 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %33, i64 %idxprom36
  %34 = load i32, i32* %arrayidx37, align 4
  %or38 = or i32 %or34, %34
  %35 = load i32, i32* %tmp, align 4
  %shr39 = lshr i32 %35, 1
  %and40 = and i32 %or38, %shr39
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.else.108, label %if.then

if.then:                                          ; preds = %while.body
  %36 = load i32, i32* %tmp, align 4
  %shr42 = lshr i32 %36, 1
  %37 = load i32, i32* %curr, align 4
  %or43 = or i32 %37, %shr42
  store i32 %or43, i32* %curr, align 4
  %38 = load i32, i32* %tmp, align 4
  %shr44 = lshr i32 %38, 1
  %39 = load i32, i32* %r, align 4
  %add45 = add nsw i32 %39, 1
  %idxprom46 = sext i32 %add45 to i64
  %40 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %40, i64 %idxprom46
  %41 = load i32, i32* %arrayidx47, align 4
  %or48 = or i32 %41, %shr44
  store i32 %or48, i32* %arrayidx47, align 4
  %42 = load i32, i32* %r, align 4
  %idxprom49 = sext i32 %42 to i64
  %43 = load i32, i32* %player.addr, align 4
  %idxprom50 = sext i32 %43 to i64
  %arrayidx51 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom50
  %arrayidx52 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx51, i32 0, i64 %idxprom49
  %44 = load i32, i32* %arrayidx52, align 4
  %45 = load i32, i32* %tmp, align 4
  %shr53 = lshr i32 %45, 1
  %and54 = and i32 %44, %shr53
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.else.84, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %46 = load i32, i32* %r, align 4
  %sub56 = sub nsw i32 %46, 1
  %idxprom57 = sext i32 %sub56 to i64
  %47 = load i32, i32* %player.addr, align 4
  %idxprom58 = sext i32 %47 to i64
  %arrayidx59 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx59, i32 0, i64 %idxprom57
  %48 = load i32, i32* %arrayidx60, align 4
  %49 = load i32, i32* %tmp, align 4
  %shr61 = lshr i32 %49, 1
  %and62 = and i32 %48, %shr61
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %if.then.64, label %if.else.84

if.then.64:                                       ; preds = %land.lhs.true
  %50 = load i32, i32* %r, align 4
  %add65 = add nsw i32 %50, 2
  %idxprom66 = sext i32 %add65 to i64
  %51 = load i32, i32* %player.addr, align 4
  %idxprom67 = sext i32 %51 to i64
  %arrayidx68 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom67
  %arrayidx69 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx68, i32 0, i64 %idxprom66
  %52 = load i32, i32* %arrayidx69, align 4
  %53 = load i32, i32* %tmp, align 4
  %shr70 = lshr i32 %53, 1
  %and71 = and i32 %52, %shr70
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.else, label %land.lhs.true.73

land.lhs.true.73:                                 ; preds = %if.then.64
  %54 = load i32, i32* %r, align 4
  %add74 = add nsw i32 %54, 3
  %idxprom75 = sext i32 %add74 to i64
  %55 = load i32, i32* %player.addr, align 4
  %idxprom76 = sext i32 %55 to i64
  %arrayidx77 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom76
  %arrayidx78 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx77, i32 0, i64 %idxprom75
  %56 = load i32, i32* %arrayidx78, align 4
  %57 = load i32, i32* %tmp, align 4
  %shr79 = lshr i32 %57, 1
  %and80 = and i32 %56, %shr79
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then.82, label %if.else

if.then.82:                                       ; preds = %land.lhs.true.73
  %58 = load i32, i32* %s2, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %s2, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.73, %if.then.64
  %59 = load i32, i32* %s1, align 4
  %inc83 = add nsw i32 %59, 1
  store i32 %inc83, i32* %s1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.82
  br label %if.end.107

if.else.84:                                       ; preds = %land.lhs.true, %if.then
  %60 = load i32, i32* %r, align 4
  %add85 = add nsw i32 %60, 2
  %idxprom86 = sext i32 %add85 to i64
  %61 = load i32, i32* %player.addr, align 4
  %idxprom87 = sext i32 %61 to i64
  %arrayidx88 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom87
  %arrayidx89 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx88, i32 0, i64 %idxprom86
  %62 = load i32, i32* %arrayidx89, align 4
  %63 = load i32, i32* %tmp, align 4
  %shr90 = lshr i32 %63, 1
  %and91 = and i32 %62, %shr90
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %if.else.104, label %land.lhs.true.93

land.lhs.true.93:                                 ; preds = %if.else.84
  %64 = load i32, i32* %r, align 4
  %add94 = add nsw i32 %64, 3
  %idxprom95 = sext i32 %add94 to i64
  %65 = load i32, i32* %player.addr, align 4
  %idxprom96 = sext i32 %65 to i64
  %arrayidx97 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom96
  %arrayidx98 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx97, i32 0, i64 %idxprom95
  %66 = load i32, i32* %arrayidx98, align 4
  %67 = load i32, i32* %tmp, align 4
  %shr99 = lshr i32 %67, 1
  %and100 = and i32 %66, %shr99
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %if.then.102, label %if.else.104

if.then.102:                                      ; preds = %land.lhs.true.93
  %68 = load i32, i32* %s1, align 4
  %inc103 = add nsw i32 %68, 1
  store i32 %inc103, i32* %s1, align 4
  br label %if.end.106

if.else.104:                                      ; preds = %land.lhs.true.93, %if.else.84
  %69 = load i32, i32* %s0, align 4
  %inc105 = add nsw i32 %69, 1
  store i32 %inc105, i32* %s0, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.104, %if.then.102
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.end
  br label %if.end.192

if.else.108:                                      ; preds = %while.body
  %70 = load i32, i32* %mask, align 4
  %71 = load i32, i32* %curr, align 4
  %or109 = or i32 %70, %71
  %72 = load i32, i32* %r, align 4
  %idxprom110 = sext i32 %72 to i64
  %73 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %73, i64 %idxprom110
  %74 = load i32, i32* %arrayidx111, align 4
  %or112 = or i32 %or109, %74
  %75 = load i32, i32* %r, align 4
  %add113 = add nsw i32 %75, 2
  %idxprom114 = sext i32 %add113 to i64
  %76 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %76, i64 %idxprom114
  %77 = load i32, i32* %arrayidx115, align 4
  %or116 = or i32 %or112, %77
  %78 = load i32, i32* %tmp, align 4
  %shl117 = shl i32 %78, 2
  %and118 = and i32 %or116, %shl117
  %tobool119 = icmp ne i32 %and118, 0
  br i1 %tobool119, label %if.end.191, label %if.then.120

if.then.120:                                      ; preds = %if.else.108
  %79 = load i32, i32* %tmp, align 4
  %shl121 = shl i32 %79, 2
  %80 = load i32, i32* %curr, align 4
  %or122 = or i32 %80, %shl121
  store i32 %or122, i32* %curr, align 4
  %81 = load i32, i32* %tmp, align 4
  %shl123 = shl i32 %81, 2
  %82 = load i32, i32* %r, align 4
  %add124 = add nsw i32 %82, 1
  %idxprom125 = sext i32 %add124 to i64
  %83 = load i32*, i32** %tmp_board.addr, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %83, i64 %idxprom125
  %84 = load i32, i32* %arrayidx126, align 4
  %or127 = or i32 %84, %shl123
  store i32 %or127, i32* %arrayidx126, align 4
  %85 = load i32, i32* %r, align 4
  %idxprom128 = sext i32 %85 to i64
  %86 = load i32, i32* %player.addr, align 4
  %idxprom129 = sext i32 %86 to i64
  %arrayidx130 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom129
  %arrayidx131 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx130, i32 0, i64 %idxprom128
  %87 = load i32, i32* %arrayidx131, align 4
  %88 = load i32, i32* %tmp, align 4
  %shl132 = shl i32 %88, 2
  %and133 = and i32 %87, %shl132
  %tobool134 = icmp ne i32 %and133, 0
  br i1 %tobool134, label %if.else.167, label %land.lhs.true.135

land.lhs.true.135:                                ; preds = %if.then.120
  %89 = load i32, i32* %r, align 4
  %sub136 = sub nsw i32 %89, 1
  %idxprom137 = sext i32 %sub136 to i64
  %90 = load i32, i32* %player.addr, align 4
  %idxprom138 = sext i32 %90 to i64
  %arrayidx139 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom138
  %arrayidx140 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx139, i32 0, i64 %idxprom137
  %91 = load i32, i32* %arrayidx140, align 4
  %92 = load i32, i32* %tmp, align 4
  %shl141 = shl i32 %92, 2
  %and142 = and i32 %91, %shl141
  %tobool143 = icmp ne i32 %and142, 0
  br i1 %tobool143, label %if.then.144, label %if.else.167

if.then.144:                                      ; preds = %land.lhs.true.135
  %93 = load i32, i32* %r, align 4
  %add145 = add nsw i32 %93, 2
  %idxprom146 = sext i32 %add145 to i64
  %94 = load i32, i32* %player.addr, align 4
  %idxprom147 = sext i32 %94 to i64
  %arrayidx148 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom147
  %arrayidx149 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx148, i32 0, i64 %idxprom146
  %95 = load i32, i32* %arrayidx149, align 4
  %96 = load i32, i32* %tmp, align 4
  %shl150 = shl i32 %96, 2
  %and151 = and i32 %95, %shl150
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %if.else.164, label %land.lhs.true.153

land.lhs.true.153:                                ; preds = %if.then.144
  %97 = load i32, i32* %r, align 4
  %add154 = add nsw i32 %97, 3
  %idxprom155 = sext i32 %add154 to i64
  %98 = load i32, i32* %player.addr, align 4
  %idxprom156 = sext i32 %98 to i64
  %arrayidx157 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom156
  %arrayidx158 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx157, i32 0, i64 %idxprom155
  %99 = load i32, i32* %arrayidx158, align 4
  %100 = load i32, i32* %tmp, align 4
  %shl159 = shl i32 %100, 2
  %and160 = and i32 %99, %shl159
  %tobool161 = icmp ne i32 %and160, 0
  br i1 %tobool161, label %if.then.162, label %if.else.164

if.then.162:                                      ; preds = %land.lhs.true.153
  %101 = load i32, i32* %s2, align 4
  %inc163 = add nsw i32 %101, 1
  store i32 %inc163, i32* %s2, align 4
  br label %if.end.166

if.else.164:                                      ; preds = %land.lhs.true.153, %if.then.144
  %102 = load i32, i32* %s1, align 4
  %inc165 = add nsw i32 %102, 1
  store i32 %inc165, i32* %s1, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.164, %if.then.162
  br label %if.end.190

if.else.167:                                      ; preds = %land.lhs.true.135, %if.then.120
  %103 = load i32, i32* %r, align 4
  %add168 = add nsw i32 %103, 2
  %idxprom169 = sext i32 %add168 to i64
  %104 = load i32, i32* %player.addr, align 4
  %idxprom170 = sext i32 %104 to i64
  %arrayidx171 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom170
  %arrayidx172 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx171, i32 0, i64 %idxprom169
  %105 = load i32, i32* %arrayidx172, align 4
  %106 = load i32, i32* %tmp, align 4
  %shl173 = shl i32 %106, 2
  %and174 = and i32 %105, %shl173
  %tobool175 = icmp ne i32 %and174, 0
  br i1 %tobool175, label %if.else.187, label %land.lhs.true.176

land.lhs.true.176:                                ; preds = %if.else.167
  %107 = load i32, i32* %r, align 4
  %add177 = add nsw i32 %107, 3
  %idxprom178 = sext i32 %add177 to i64
  %108 = load i32, i32* %player.addr, align 4
  %idxprom179 = sext i32 %108 to i64
  %arrayidx180 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom179
  %arrayidx181 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx180, i32 0, i64 %idxprom178
  %109 = load i32, i32* %arrayidx181, align 4
  %110 = load i32, i32* %tmp, align 4
  %shl182 = shl i32 %110, 2
  %and183 = and i32 %109, %shl182
  %tobool184 = icmp ne i32 %and183, 0
  br i1 %tobool184, label %if.then.185, label %if.else.187

if.then.185:                                      ; preds = %land.lhs.true.176
  %111 = load i32, i32* %s1, align 4
  %inc186 = add nsw i32 %111, 1
  store i32 %inc186, i32* %s1, align 4
  br label %if.end.189

if.else.187:                                      ; preds = %land.lhs.true.176, %if.else.167
  %112 = load i32, i32* %s0, align 4
  %inc188 = add nsw i32 %112, 1
  store i32 %inc188, i32* %s0, align 4
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.187, %if.then.185
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.end.166
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.else.108
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %if.end.107
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %113 = load i32, i32* %r, align 4
  %inc193 = add nsw i32 %113, 1
  store i32 %inc193, i32* %r, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %114 = load i32, i32* %s2, align 4
  %115 = load i32*, i32** %safe_op2.addr, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %s1, align 4
  %117 = load i32*, i32** %safe_op1.addr, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* %s0, align 4
  %119 = load i32*, i32** %safe_op0.addr, align 8
  store i32 %118, i32* %119, align 4
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @does_who_just_moved_win(i32 %who_just_moved, i32 %print) #0 {
entry:
  %who_just_moved.addr = alloca i32, align 4
  %print.addr = alloca i32, align 4
  %prot = alloca i32, align 4
  %vuln2 = alloca i32, align 4
  %vuln2_w_prot = alloca i32, align 4
  %vuln1 = alloca i32, align 4
  %vuln1_w_prot = alloca i32, align 4
  %safe = alloca i32, align 4
  %unused = alloca i32, align 4
  %empty = alloca i32, align 4
  %safe_op2 = alloca i32, align 4
  %safe_op1 = alloca i32, align 4
  %safe_op0 = alloca i32, align 4
  %r_value = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp_board = alloca [32 x i32], align 16
  %moves = alloca i32, align 4
  %opp_moves = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %who_just_moved, i32* %who_just_moved.addr, align 4
  store i32 %print, i32* %print.addr, align 4
  store i32 0, i32* %r_value, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* %tmp_board, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load i32, i32* %who_just_moved.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [2 x %struct.Basic_Info], [2 x %struct.Basic_Info]* @g_info_totals, i32 0, i64 %idxprom1
  %safe3 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx2, i32 0, i32 0
  %4 = load i32, i32* %safe3, align 4
  store i32 %4, i32* %safe, align 4
  %5 = load i32, i32* @g_empty_squares, align 4
  store i32 %5, i32* %empty, align 4
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %tmp_board, i32 0, i32 0
  %6 = load i32, i32* %who_just_moved.addr, align 4
  call void @pack_prot(i32* %arraydecay, i32 %6, i32* %prot)
  %arraydecay4 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp_board, i32 0, i32 0
  %7 = load i32, i32* %who_just_moved.addr, align 4
  call void @pack_vuln(i32* %arraydecay4, i32 %7, i32* %vuln2, i32* %vuln2_w_prot, i32* %vuln1, i32* %vuln1_w_prot, i32* %unused)
  %arraydecay5 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp_board, i32 0, i32 0
  %8 = load i32, i32* %who_just_moved.addr, align 4
  call void @pack_safe(i32* %arraydecay5, i32 %8, i32* %safe_op2, i32* %safe_op1, i32* %safe_op0)
  %9 = load i32, i32* %print.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i32, i32* %who_just_moved.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i32 %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i32, i32* %prot, align 4
  %14 = load i32, i32* %vuln2, align 4
  %15 = load i32, i32* %vuln2_w_prot, align 4
  %16 = load i32, i32* %vuln1, align 4
  %17 = load i32, i32* %vuln1_w_prot, align 4
  %18 = load i32, i32* %safe, align 4
  %19 = load i32, i32* %unused, align 4
  %20 = load i32, i32* %empty, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i32 0, i32 0), i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = load i32, i32* %safe_op2, align 4
  %23 = load i32, i32* %safe_op1, align 4
  %24 = load i32, i32* %safe_op0, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i32 %22, i32 %23, i32 %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  store i32 0, i32* %x, align 4
  %25 = load i32, i32* %prot, align 4
  %rem = srem i32 %25, 2
  %cmp8 = icmp eq i32 %rem, 1
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %26 = load i32, i32* %prot, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %prot, align 4
  %27 = load i32, i32* %vuln2, align 4
  %add = add nsw i32 %27, 2
  store i32 %add, i32* %vuln2, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %28 = load i32, i32* %prot, align 4
  %29 = load i32, i32* %vuln2, align 4
  %div = sdiv i32 %29, 3
  %add11 = add nsw i32 %28, %div
  %30 = load i32, i32* %vuln1, align 4
  %div12 = sdiv i32 %30, 2
  %add13 = add nsw i32 %add11, %div12
  %31 = load i32, i32* %safe, align 4
  %add14 = add nsw i32 %add13, %31
  store i32 %add14, i32* %moves, align 4
  %32 = load i32, i32* %vuln2, align 4
  %rem15 = srem i32 %32, 3
  %cmp16 = icmp ne i32 %rem15, 0
  br i1 %cmp16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.10
  %33 = load i32, i32* %vuln1, align 4
  %rem17 = srem i32 %33, 2
  %cmp18 = icmp ne i32 %rem17, 0
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %land.lhs.true
  %34 = load i32, i32* %moves, align 4
  %inc20 = add nsw i32 %34, 1
  store i32 %inc20, i32* %moves, align 4
  %35 = load i32, i32* %unused, align 4
  %dec21 = add nsw i32 %35, -1
  store i32 %dec21, i32* %unused, align 4
  store i32 1, i32* %x, align 4
  br label %if.end.29

if.else:                                          ; preds = %land.lhs.true, %if.end.10
  %36 = load i32, i32* %vuln2, align 4
  %rem22 = srem i32 %36, 3
  %cmp23 = icmp eq i32 %rem22, 0
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.28

land.lhs.true.24:                                 ; preds = %if.else
  %37 = load i32, i32* %vuln1, align 4
  %rem25 = srem i32 %37, 2
  %cmp26 = icmp eq i32 %rem25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %x, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true.24, %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.19
  %38 = load i32, i32* %x, align 4
  %cmp30 = icmp eq i32 %38, 1
  br i1 %cmp30, label %if.then.31, label %if.else.44

if.then.31:                                       ; preds = %if.end.29
  %39 = load i32, i32* %safe_op2, align 4
  %rem32 = srem i32 %39, 2
  %cmp33 = icmp eq i32 %rem32, 1
  br i1 %cmp33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.then.31
  %40 = load i32, i32* %safe_op2, align 4
  %dec35 = add nsw i32 %40, -1
  store i32 %dec35, i32* %safe_op2, align 4
  %41 = load i32, i32* %safe_op1, align 4
  %inc36 = add nsw i32 %41, 1
  store i32 %inc36, i32* %safe_op1, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.then.31
  %42 = load i32, i32* %safe_op1, align 4
  %rem38 = srem i32 %42, 2
  %cmp39 = icmp eq i32 %rem38, 1
  br i1 %cmp39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.37
  %43 = load i32, i32* %safe_op1, align 4
  %dec41 = add nsw i32 %43, -1
  store i32 %dec41, i32* %safe_op1, align 4
  %44 = load i32, i32* %safe_op0, align 4
  %inc42 = add nsw i32 %44, 1
  store i32 %inc42, i32* %safe_op0, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.37
  br label %if.end.68

if.else.44:                                       ; preds = %if.end.29
  %45 = load i32, i32* %safe_op2, align 4
  %rem45 = srem i32 %45, 2
  %cmp46 = icmp eq i32 %rem45, 1
  br i1 %cmp46, label %if.then.47, label %if.else.55

if.then.47:                                       ; preds = %if.else.44
  %46 = load i32, i32* %unused, align 4
  %add48 = add nsw i32 %46, 3
  store i32 %add48, i32* %unused, align 4
  %47 = load i32, i32* %safe_op1, align 4
  %rem49 = srem i32 %47, 2
  %cmp50 = icmp eq i32 %rem49, 1
  br i1 %cmp50, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %if.then.47
  %48 = load i32, i32* %safe_op1, align 4
  %dec52 = add nsw i32 %48, -1
  store i32 %dec52, i32* %safe_op1, align 4
  %49 = load i32, i32* %safe_op0, align 4
  %inc53 = add nsw i32 %49, 1
  store i32 %inc53, i32* %safe_op0, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %if.then.47
  br label %if.end.67

if.else.55:                                       ; preds = %if.else.44
  %50 = load i32, i32* %safe_op1, align 4
  %rem56 = srem i32 %50, 2
  %cmp57 = icmp eq i32 %rem56, 1
  br i1 %cmp57, label %if.then.58, label %if.else.60

if.then.58:                                       ; preds = %if.else.55
  %51 = load i32, i32* %unused, align 4
  %add59 = add nsw i32 %51, 2
  store i32 %add59, i32* %unused, align 4
  br label %if.end.66

if.else.60:                                       ; preds = %if.else.55
  %52 = load i32, i32* %safe_op0, align 4
  %rem61 = srem i32 %52, 2
  %cmp62 = icmp eq i32 %rem61, 1
  br i1 %cmp62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.else.60
  %53 = load i32, i32* %unused, align 4
  %add64 = add nsw i32 %53, 1
  store i32 %add64, i32* %unused, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.else.60
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.58
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.54
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.43
  %54 = load i32, i32* %vuln2_w_prot, align 4
  %55 = load i32, i32* %vuln2, align 4
  %div69 = sdiv i32 %55, 3
  %56 = load i32, i32* %vuln2, align 4
  %57 = load i32, i32* %vuln2_w_prot, align 4
  %sub = sub nsw i32 %56, %57
  %div70 = sdiv i32 %sub, 3
  %sub71 = sub nsw i32 %div69, %div70
  %sub72 = sub nsw i32 %54, %sub71
  %58 = load i32, i32* %unused, align 4
  %add73 = add nsw i32 %58, %sub72
  store i32 %add73, i32* %unused, align 4
  %59 = load i32, i32* %vuln1_w_prot, align 4
  %60 = load i32, i32* %vuln1, align 4
  %div74 = sdiv i32 %60, 2
  %61 = load i32, i32* %vuln1, align 4
  %62 = load i32, i32* %vuln1_w_prot, align 4
  %sub75 = sub nsw i32 %61, %62
  %div76 = sdiv i32 %sub75, 2
  %sub77 = sub nsw i32 %div74, %div76
  %sub78 = sub nsw i32 %59, %sub77
  %63 = load i32, i32* %unused, align 4
  %add79 = add nsw i32 %63, %sub78
  store i32 %add79, i32* %unused, align 4
  %64 = load i32, i32* %safe_op2, align 4
  %div80 = sdiv i32 %64, 2
  %mul = mul nsw i32 %div80, 3
  %65 = load i32, i32* %unused, align 4
  %add81 = add nsw i32 %65, %mul
  store i32 %add81, i32* %unused, align 4
  %66 = load i32, i32* %safe_op1, align 4
  %div82 = sdiv i32 %66, 2
  %mul83 = mul nsw i32 %div82, 2
  %67 = load i32, i32* %unused, align 4
  %add84 = add nsw i32 %67, %mul83
  store i32 %add84, i32* %unused, align 4
  %68 = load i32, i32* %safe_op0, align 4
  %div85 = sdiv i32 %68, 2
  %mul86 = mul nsw i32 %div85, 1
  %69 = load i32, i32* %unused, align 4
  %add87 = add nsw i32 %69, %mul86
  store i32 %add87, i32* %unused, align 4
  %70 = load i32, i32* %empty, align 4
  %71 = load i32, i32* %moves, align 4
  %mul88 = mul nsw i32 %71, 2
  %sub89 = sub nsw i32 %70, %mul88
  %72 = load i32, i32* %unused, align 4
  %sub90 = sub nsw i32 %sub89, %72
  %div91 = sdiv i32 %sub90, 2
  store i32 %div91, i32* %opp_moves, align 4
  %73 = load i32, i32* %moves, align 4
  %74 = load i32, i32* %opp_moves, align 4
  %sub92 = sub nsw i32 %73, %74
  store i32 %sub92, i32* %r_value, align 4
  %75 = load i32, i32* %print.addr, align 4
  %tobool93 = icmp ne i32 %75, 0
  br i1 %tobool93, label %if.then.94, label %if.end.101

if.then.94:                                       ; preds = %if.end.68
  %76 = load i32, i32* %moves, align 4
  %77 = load i32, i32* %opp_moves, align 4
  %call95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 %76, i32 %77)
  %78 = load i32, i32* %moves, align 4
  %79 = load i32, i32* %opp_moves, align 4
  %sub96 = sub nsw i32 %78, %79
  %cmp97 = icmp sge i32 %sub96, 0
  br i1 %cmp97, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %if.then.94
  %call99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %if.then.94
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end.68
  %80 = load i32, i32* %r_value, align 4
  ret i32 %80
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
