; ModuleID = './MultiSource.Benchmarks.Prolangs-C/283.football.sort.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.info = type { i32, i32, i32, i32, i32, [18 x i32] }

@divisions = external global [29 x [2 x i32]], align 16
@nfc_west_champ = external global i32, align 4
@nfc_central_champ = external global i32, align 4
@nfc_east_champ = external global i32, align 4
@afc_west_champ = external global i32, align 4
@afc_central_champ = external global i32, align 4
@afc_east_champ = external global i32, align 4
@nfc_wild_card3 = external global i32, align 4
@nfc_wild_card2 = external global i32, align 4
@nfc_wild_card1 = external global i32, align 4
@afc_wild_card3 = external global i32, align 4
@afc_wild_card2 = external global i32, align 4
@afc_wild_card1 = external global i32, align 4
@stdout = external global %struct._IO_FILE*, align 8
@stdin = external global %struct._IO_FILE*, align 8
@got_unused_responce = external global i32, align 4
@conf_standings = external global [29 x i32], align 16
@iyear = external global i32, align 4
@team_info = external global [29 x %struct.info], align 16
@standings = external global [29 x i32], align 16
@abs_standings = external global [29 x i32], align 16
@defence_ranks = external global [29 x i32], align 16
@defence_ranks_nfl = external global [29 x i32], align 16
@offence_ranks = external global [29 x i32], align 16
@offence_ranks_nfl = external global [29 x i32], align 16
@net_ranks = external global [29 x i32], align 16
@net_ranks_nfl = external global [29 x i32], align 16

; Function Attrs: nounwind uwtable
define i32 @absolute_standing_lt(%struct.info* %info, i32 %team1, i32 %team2) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.info*, align 8
  %team1.addr = alloca i32, align 4
  %team2.addr = alloca i32, align 4
  store %struct.info* %info, %struct.info** %info.addr, align 8
  store i32 %team1, i32* %team1.addr, align 4
  store i32 %team2, i32* %team2.addr, align 4
  %0 = load i32, i32* %team1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx = getelementptr inbounds %struct.info, %struct.info* %1, i64 %idxprom
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %wins, align 4
  %3 = load i32, i32* %team1.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.info, %struct.info* %4, i64 %idxprom1
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %loses, align 4
  %add = add nsw i32 %2, %5
  %6 = load i32, i32* %team1.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.info, %struct.info* %7, i64 %idxprom3
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx4, i32 0, i32 2
  %8 = load i32, i32* %ties, align 4
  %add5 = add nsw i32 %add, %8
  %cmp = icmp eq i32 %add5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %team1.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.info, %struct.info* %10, i64 %idxprom6
  %wins8 = getelementptr inbounds %struct.info, %struct.info* %arrayidx7, i32 0, i32 0
  %11 = load i32, i32* %wins8, align 4
  %conv = sitofp i32 %11 to double
  %12 = load i32, i32* %team1.addr, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.info, %struct.info* %13, i64 %idxprom9
  %ties11 = getelementptr inbounds %struct.info, %struct.info* %arrayidx10, i32 0, i32 2
  %14 = load i32, i32* %ties11, align 4
  %conv12 = sitofp i32 %14 to double
  %mul = fmul double 5.000000e-01, %conv12
  %add13 = fadd double %conv, %mul
  %15 = load i32, i32* %team1.addr, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.info, %struct.info* %16, i64 %idxprom14
  %wins16 = getelementptr inbounds %struct.info, %struct.info* %arrayidx15, i32 0, i32 0
  %17 = load i32, i32* %wins16, align 4
  %18 = load i32, i32* %team1.addr, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.info, %struct.info* %19, i64 %idxprom17
  %loses19 = getelementptr inbounds %struct.info, %struct.info* %arrayidx18, i32 0, i32 1
  %20 = load i32, i32* %loses19, align 4
  %add20 = add nsw i32 %17, %20
  %21 = load i32, i32* %team1.addr, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct.info, %struct.info* %22, i64 %idxprom21
  %ties23 = getelementptr inbounds %struct.info, %struct.info* %arrayidx22, i32 0, i32 2
  %23 = load i32, i32* %ties23, align 4
  %add24 = add nsw i32 %add20, %23
  %conv25 = sitofp i32 %add24 to double
  %div = fdiv double %add13, %conv25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %div, %cond.false ]
  %24 = load i32, i32* %team2.addr, align 4
  %idxprom26 = sext i32 %24 to i64
  %25 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct.info, %struct.info* %25, i64 %idxprom26
  %wins28 = getelementptr inbounds %struct.info, %struct.info* %arrayidx27, i32 0, i32 0
  %26 = load i32, i32* %wins28, align 4
  %27 = load i32, i32* %team2.addr, align 4
  %idxprom29 = sext i32 %27 to i64
  %28 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.info, %struct.info* %28, i64 %idxprom29
  %loses31 = getelementptr inbounds %struct.info, %struct.info* %arrayidx30, i32 0, i32 1
  %29 = load i32, i32* %loses31, align 4
  %add32 = add nsw i32 %26, %29
  %30 = load i32, i32* %team2.addr, align 4
  %idxprom33 = sext i32 %30 to i64
  %31 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct.info, %struct.info* %31, i64 %idxprom33
  %ties35 = getelementptr inbounds %struct.info, %struct.info* %arrayidx34, i32 0, i32 2
  %32 = load i32, i32* %ties35, align 4
  %add36 = add nsw i32 %add32, %32
  %cmp37 = icmp eq i32 %add36, 0
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.end
  br label %cond.end.64

cond.false.40:                                    ; preds = %cond.end
  %33 = load i32, i32* %team2.addr, align 4
  %idxprom41 = sext i32 %33 to i64
  %34 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct.info, %struct.info* %34, i64 %idxprom41
  %wins43 = getelementptr inbounds %struct.info, %struct.info* %arrayidx42, i32 0, i32 0
  %35 = load i32, i32* %wins43, align 4
  %conv44 = sitofp i32 %35 to double
  %36 = load i32, i32* %team2.addr, align 4
  %idxprom45 = sext i32 %36 to i64
  %37 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.info, %struct.info* %37, i64 %idxprom45
  %ties47 = getelementptr inbounds %struct.info, %struct.info* %arrayidx46, i32 0, i32 2
  %38 = load i32, i32* %ties47, align 4
  %conv48 = sitofp i32 %38 to double
  %mul49 = fmul double 5.000000e-01, %conv48
  %add50 = fadd double %conv44, %mul49
  %39 = load i32, i32* %team2.addr, align 4
  %idxprom51 = sext i32 %39 to i64
  %40 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct.info, %struct.info* %40, i64 %idxprom51
  %wins53 = getelementptr inbounds %struct.info, %struct.info* %arrayidx52, i32 0, i32 0
  %41 = load i32, i32* %wins53, align 4
  %42 = load i32, i32* %team2.addr, align 4
  %idxprom54 = sext i32 %42 to i64
  %43 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct.info, %struct.info* %43, i64 %idxprom54
  %loses56 = getelementptr inbounds %struct.info, %struct.info* %arrayidx55, i32 0, i32 1
  %44 = load i32, i32* %loses56, align 4
  %add57 = add nsw i32 %41, %44
  %45 = load i32, i32* %team2.addr, align 4
  %idxprom58 = sext i32 %45 to i64
  %46 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct.info, %struct.info* %46, i64 %idxprom58
  %ties60 = getelementptr inbounds %struct.info, %struct.info* %arrayidx59, i32 0, i32 2
  %47 = load i32, i32* %ties60, align 4
  %add61 = add nsw i32 %add57, %47
  %conv62 = sitofp i32 %add61 to double
  %div63 = fdiv double %add50, %conv62
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.40, %cond.true.39
  %cond65 = phi double [ 0.000000e+00, %cond.true.39 ], [ %div63, %cond.false.40 ]
  %cmp66 = fcmp une double %cond, %cond65
  br i1 %cmp66, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.64
  %48 = load i32, i32* %team1.addr, align 4
  %idxprom68 = sext i32 %48 to i64
  %49 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct.info, %struct.info* %49, i64 %idxprom68
  %wins70 = getelementptr inbounds %struct.info, %struct.info* %arrayidx69, i32 0, i32 0
  %50 = load i32, i32* %wins70, align 4
  %51 = load i32, i32* %team1.addr, align 4
  %idxprom71 = sext i32 %51 to i64
  %52 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct.info, %struct.info* %52, i64 %idxprom71
  %loses73 = getelementptr inbounds %struct.info, %struct.info* %arrayidx72, i32 0, i32 1
  %53 = load i32, i32* %loses73, align 4
  %add74 = add nsw i32 %50, %53
  %54 = load i32, i32* %team1.addr, align 4
  %idxprom75 = sext i32 %54 to i64
  %55 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct.info, %struct.info* %55, i64 %idxprom75
  %ties77 = getelementptr inbounds %struct.info, %struct.info* %arrayidx76, i32 0, i32 2
  %56 = load i32, i32* %ties77, align 4
  %add78 = add nsw i32 %add74, %56
  %cmp79 = icmp eq i32 %add78, 0
  br i1 %cmp79, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %if.then
  br label %cond.end.106

cond.false.82:                                    ; preds = %if.then
  %57 = load i32, i32* %team1.addr, align 4
  %idxprom83 = sext i32 %57 to i64
  %58 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx84 = getelementptr inbounds %struct.info, %struct.info* %58, i64 %idxprom83
  %wins85 = getelementptr inbounds %struct.info, %struct.info* %arrayidx84, i32 0, i32 0
  %59 = load i32, i32* %wins85, align 4
  %conv86 = sitofp i32 %59 to double
  %60 = load i32, i32* %team1.addr, align 4
  %idxprom87 = sext i32 %60 to i64
  %61 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx88 = getelementptr inbounds %struct.info, %struct.info* %61, i64 %idxprom87
  %ties89 = getelementptr inbounds %struct.info, %struct.info* %arrayidx88, i32 0, i32 2
  %62 = load i32, i32* %ties89, align 4
  %conv90 = sitofp i32 %62 to double
  %mul91 = fmul double 5.000000e-01, %conv90
  %add92 = fadd double %conv86, %mul91
  %63 = load i32, i32* %team1.addr, align 4
  %idxprom93 = sext i32 %63 to i64
  %64 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx94 = getelementptr inbounds %struct.info, %struct.info* %64, i64 %idxprom93
  %wins95 = getelementptr inbounds %struct.info, %struct.info* %arrayidx94, i32 0, i32 0
  %65 = load i32, i32* %wins95, align 4
  %66 = load i32, i32* %team1.addr, align 4
  %idxprom96 = sext i32 %66 to i64
  %67 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx97 = getelementptr inbounds %struct.info, %struct.info* %67, i64 %idxprom96
  %loses98 = getelementptr inbounds %struct.info, %struct.info* %arrayidx97, i32 0, i32 1
  %68 = load i32, i32* %loses98, align 4
  %add99 = add nsw i32 %65, %68
  %69 = load i32, i32* %team1.addr, align 4
  %idxprom100 = sext i32 %69 to i64
  %70 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx101 = getelementptr inbounds %struct.info, %struct.info* %70, i64 %idxprom100
  %ties102 = getelementptr inbounds %struct.info, %struct.info* %arrayidx101, i32 0, i32 2
  %71 = load i32, i32* %ties102, align 4
  %add103 = add nsw i32 %add99, %71
  %conv104 = sitofp i32 %add103 to double
  %div105 = fdiv double %add92, %conv104
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.82, %cond.true.81
  %cond107 = phi double [ 0.000000e+00, %cond.true.81 ], [ %div105, %cond.false.82 ]
  %72 = load i32, i32* %team2.addr, align 4
  %idxprom108 = sext i32 %72 to i64
  %73 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx109 = getelementptr inbounds %struct.info, %struct.info* %73, i64 %idxprom108
  %wins110 = getelementptr inbounds %struct.info, %struct.info* %arrayidx109, i32 0, i32 0
  %74 = load i32, i32* %wins110, align 4
  %75 = load i32, i32* %team2.addr, align 4
  %idxprom111 = sext i32 %75 to i64
  %76 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx112 = getelementptr inbounds %struct.info, %struct.info* %76, i64 %idxprom111
  %loses113 = getelementptr inbounds %struct.info, %struct.info* %arrayidx112, i32 0, i32 1
  %77 = load i32, i32* %loses113, align 4
  %add114 = add nsw i32 %74, %77
  %78 = load i32, i32* %team2.addr, align 4
  %idxprom115 = sext i32 %78 to i64
  %79 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx116 = getelementptr inbounds %struct.info, %struct.info* %79, i64 %idxprom115
  %ties117 = getelementptr inbounds %struct.info, %struct.info* %arrayidx116, i32 0, i32 2
  %80 = load i32, i32* %ties117, align 4
  %add118 = add nsw i32 %add114, %80
  %cmp119 = icmp eq i32 %add118, 0
  br i1 %cmp119, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %cond.end.106
  br label %cond.end.146

cond.false.122:                                   ; preds = %cond.end.106
  %81 = load i32, i32* %team2.addr, align 4
  %idxprom123 = sext i32 %81 to i64
  %82 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx124 = getelementptr inbounds %struct.info, %struct.info* %82, i64 %idxprom123
  %wins125 = getelementptr inbounds %struct.info, %struct.info* %arrayidx124, i32 0, i32 0
  %83 = load i32, i32* %wins125, align 4
  %conv126 = sitofp i32 %83 to double
  %84 = load i32, i32* %team2.addr, align 4
  %idxprom127 = sext i32 %84 to i64
  %85 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx128 = getelementptr inbounds %struct.info, %struct.info* %85, i64 %idxprom127
  %ties129 = getelementptr inbounds %struct.info, %struct.info* %arrayidx128, i32 0, i32 2
  %86 = load i32, i32* %ties129, align 4
  %conv130 = sitofp i32 %86 to double
  %mul131 = fmul double 5.000000e-01, %conv130
  %add132 = fadd double %conv126, %mul131
  %87 = load i32, i32* %team2.addr, align 4
  %idxprom133 = sext i32 %87 to i64
  %88 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx134 = getelementptr inbounds %struct.info, %struct.info* %88, i64 %idxprom133
  %wins135 = getelementptr inbounds %struct.info, %struct.info* %arrayidx134, i32 0, i32 0
  %89 = load i32, i32* %wins135, align 4
  %90 = load i32, i32* %team2.addr, align 4
  %idxprom136 = sext i32 %90 to i64
  %91 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx137 = getelementptr inbounds %struct.info, %struct.info* %91, i64 %idxprom136
  %loses138 = getelementptr inbounds %struct.info, %struct.info* %arrayidx137, i32 0, i32 1
  %92 = load i32, i32* %loses138, align 4
  %add139 = add nsw i32 %89, %92
  %93 = load i32, i32* %team2.addr, align 4
  %idxprom140 = sext i32 %93 to i64
  %94 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx141 = getelementptr inbounds %struct.info, %struct.info* %94, i64 %idxprom140
  %ties142 = getelementptr inbounds %struct.info, %struct.info* %arrayidx141, i32 0, i32 2
  %95 = load i32, i32* %ties142, align 4
  %add143 = add nsw i32 %add139, %95
  %conv144 = sitofp i32 %add143 to double
  %div145 = fdiv double %add132, %conv144
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.false.122, %cond.true.121
  %cond147 = phi double [ 0.000000e+00, %cond.true.121 ], [ %div145, %cond.false.122 ]
  %cmp148 = fcmp ogt double %cond107, %cond147
  %conv149 = zext i1 %cmp148 to i32
  store i32 %conv149, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.64
  %96 = load i32, i32* %team1.addr, align 4
  %idxprom150 = sext i32 %96 to i64
  %97 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx151 = getelementptr inbounds %struct.info, %struct.info* %97, i64 %idxprom150
  %loses152 = getelementptr inbounds %struct.info, %struct.info* %arrayidx151, i32 0, i32 1
  %98 = load i32, i32* %loses152, align 4
  %cmp153 = icmp eq i32 %98, 0
  br i1 %cmp153, label %land.lhs.true, label %if.end.169

land.lhs.true:                                    ; preds = %if.end
  %99 = load i32, i32* %team2.addr, align 4
  %idxprom155 = sext i32 %99 to i64
  %100 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx156 = getelementptr inbounds %struct.info, %struct.info* %100, i64 %idxprom155
  %loses157 = getelementptr inbounds %struct.info, %struct.info* %arrayidx156, i32 0, i32 1
  %101 = load i32, i32* %loses157, align 4
  %cmp158 = icmp eq i32 %101, 0
  br i1 %cmp158, label %if.then.160, label %if.end.169

if.then.160:                                      ; preds = %land.lhs.true
  %102 = load i32, i32* %team1.addr, align 4
  %idxprom161 = sext i32 %102 to i64
  %103 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx162 = getelementptr inbounds %struct.info, %struct.info* %103, i64 %idxprom161
  %wins163 = getelementptr inbounds %struct.info, %struct.info* %arrayidx162, i32 0, i32 0
  %104 = load i32, i32* %wins163, align 4
  %105 = load i32, i32* %team2.addr, align 4
  %idxprom164 = sext i32 %105 to i64
  %106 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx165 = getelementptr inbounds %struct.info, %struct.info* %106, i64 %idxprom164
  %wins166 = getelementptr inbounds %struct.info, %struct.info* %arrayidx165, i32 0, i32 0
  %107 = load i32, i32* %wins166, align 4
  %cmp167 = icmp sgt i32 %104, %107
  %conv168 = zext i1 %cmp167 to i32
  store i32 %conv168, i32* %retval
  br label %return

if.end.169:                                       ; preds = %land.lhs.true, %if.end
  %108 = load i32, i32* %team1.addr, align 4
  %idxprom170 = sext i32 %108 to i64
  %109 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx171 = getelementptr inbounds %struct.info, %struct.info* %109, i64 %idxprom170
  %wins172 = getelementptr inbounds %struct.info, %struct.info* %arrayidx171, i32 0, i32 0
  %110 = load i32, i32* %wins172, align 4
  %cmp173 = icmp eq i32 %110, 0
  br i1 %cmp173, label %land.lhs.true.175, label %if.end.190

land.lhs.true.175:                                ; preds = %if.end.169
  %111 = load i32, i32* %team2.addr, align 4
  %idxprom176 = sext i32 %111 to i64
  %112 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx177 = getelementptr inbounds %struct.info, %struct.info* %112, i64 %idxprom176
  %wins178 = getelementptr inbounds %struct.info, %struct.info* %arrayidx177, i32 0, i32 0
  %113 = load i32, i32* %wins178, align 4
  %cmp179 = icmp eq i32 %113, 0
  br i1 %cmp179, label %if.then.181, label %if.end.190

if.then.181:                                      ; preds = %land.lhs.true.175
  %114 = load i32, i32* %team1.addr, align 4
  %idxprom182 = sext i32 %114 to i64
  %115 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx183 = getelementptr inbounds %struct.info, %struct.info* %115, i64 %idxprom182
  %loses184 = getelementptr inbounds %struct.info, %struct.info* %arrayidx183, i32 0, i32 1
  %116 = load i32, i32* %loses184, align 4
  %117 = load i32, i32* %team2.addr, align 4
  %idxprom185 = sext i32 %117 to i64
  %118 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx186 = getelementptr inbounds %struct.info, %struct.info* %118, i64 %idxprom185
  %loses187 = getelementptr inbounds %struct.info, %struct.info* %arrayidx186, i32 0, i32 1
  %119 = load i32, i32* %loses187, align 4
  %cmp188 = icmp slt i32 %116, %119
  %conv189 = zext i1 %cmp188 to i32
  store i32 %conv189, i32* %retval
  br label %return

if.end.190:                                       ; preds = %land.lhs.true.175, %if.end.169
  %120 = load i32, i32* %team1.addr, align 4
  %call = call i32 @a_champ(i32 %120)
  %121 = load i32, i32* %team2.addr, align 4
  %call191 = call i32 @a_champ(i32 %121)
  %cmp192 = icmp ne i32 %call, %call191
  br i1 %cmp192, label %if.then.194, label %if.end.196

if.then.194:                                      ; preds = %if.end.190
  %122 = load i32, i32* %team1.addr, align 4
  %call195 = call i32 @a_champ(i32 %122)
  store i32 %call195, i32* %retval
  br label %return

if.end.196:                                       ; preds = %if.end.190
  %123 = load i32, i32* %team1.addr, align 4
  %call197 = call i32 @a_wild_card(i32 %123)
  %124 = load i32, i32* %team2.addr, align 4
  %call198 = call i32 @a_wild_card(i32 %124)
  %cmp199 = icmp ne i32 %call197, %call198
  br i1 %cmp199, label %if.then.201, label %if.end.203

if.then.201:                                      ; preds = %if.end.196
  %125 = load i32, i32* %team1.addr, align 4
  %call202 = call i32 @a_wild_card(i32 %125)
  store i32 %call202, i32* %retval
  br label %return

if.end.203:                                       ; preds = %if.end.196
  %126 = load i32, i32* %team1.addr, align 4
  %idxprom204 = sext i32 %126 to i64
  %arrayidx205 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom204
  %arrayidx206 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx205, i32 0, i64 0
  %127 = load i32, i32* %arrayidx206, align 4
  %128 = load i32, i32* %team2.addr, align 4
  %idxprom207 = sext i32 %128 to i64
  %arrayidx208 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom207
  %arrayidx209 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx208, i32 0, i64 0
  %129 = load i32, i32* %arrayidx209, align 4
  %cmp210 = icmp ne i32 %127, %129
  br i1 %cmp210, label %if.then.212, label %if.end.221

if.then.212:                                      ; preds = %if.end.203
  %130 = load i32, i32* %team1.addr, align 4
  %idxprom213 = sext i32 %130 to i64
  %arrayidx214 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom213
  %arrayidx215 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx214, i32 0, i64 0
  %131 = load i32, i32* %arrayidx215, align 4
  %132 = load i32, i32* %team2.addr, align 4
  %idxprom216 = sext i32 %132 to i64
  %arrayidx217 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom216
  %arrayidx218 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx217, i32 0, i64 0
  %133 = load i32, i32* %arrayidx218, align 4
  %cmp219 = icmp slt i32 %131, %133
  %conv220 = zext i1 %cmp219 to i32
  store i32 %conv220, i32* %retval
  br label %return

if.end.221:                                       ; preds = %if.end.203
  %134 = load i32, i32* %team1.addr, align 4
  %135 = load i32, i32* %team2.addr, align 4
  %cmp222 = icmp slt i32 %134, %135
  %conv223 = zext i1 %cmp222 to i32
  store i32 %conv223, i32* %retval
  br label %return

return:                                           ; preds = %if.end.221, %if.then.212, %if.then.201, %if.then.194, %if.then.181, %if.then.160, %cond.end.146
  %136 = load i32, i32* %retval
  ret i32 %136
}

declare i32 @a_champ(i32) #1

declare i32 @a_wild_card(i32) #1

; Function Attrs: nounwind uwtable
define i32 @standing_lt(%struct.info* %info, i32 %team1, i32 %team2) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.info*, align 8
  %team1.addr = alloca i32, align 4
  %team2.addr = alloca i32, align 4
  store %struct.info* %info, %struct.info** %info.addr, align 8
  store i32 %team1, i32* %team1.addr, align 4
  store i32 %team2, i32* %team2.addr, align 4
  %0 = load i32, i32* %team1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  %1 = load i32, i32* %arrayidx1, align 4
  %2 = load i32, i32* %team2.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx3, i32 0, i64 0
  %3 = load i32, i32* %arrayidx4, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %team1.addr, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx6, i32 0, i64 0
  %5 = load i32, i32* %arrayidx7, align 4
  %6 = load i32, i32* %team2.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx9, i32 0, i64 0
  %7 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp slt i32 %5, %7
  %conv = zext i1 %cmp11 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %team1.addr, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx13, i32 0, i64 1
  %9 = load i32, i32* %arrayidx14, align 4
  %10 = load i32, i32* %team2.addr, align 4
  %idxprom15 = sext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx16, i32 0, i64 1
  %11 = load i32, i32* %arrayidx17, align 4
  %cmp18 = icmp ne i32 %9, %11
  br i1 %cmp18, label %if.then.20, label %if.end.29

if.then.20:                                       ; preds = %if.end
  %12 = load i32, i32* %team1.addr, align 4
  %idxprom21 = sext i32 %12 to i64
  %arrayidx22 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx22, i32 0, i64 1
  %13 = load i32, i32* %arrayidx23, align 4
  %14 = load i32, i32* %team2.addr, align 4
  %idxprom24 = sext i32 %14 to i64
  %arrayidx25 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx25, i32 0, i64 1
  %15 = load i32, i32* %arrayidx26, align 4
  %cmp27 = icmp slt i32 %13, %15
  %conv28 = zext i1 %cmp27 to i32
  store i32 %conv28, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end
  %16 = load %struct.info*, %struct.info** %info.addr, align 8
  %17 = load i32, i32* %team1.addr, align 4
  %18 = load i32, i32* %team2.addr, align 4
  %call = call i32 @absolute_standing_lt(%struct.info* %16, i32 %17, i32 %18)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.20, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @conf_standing_lt(%struct.info* %info, i32 %team1, i32 %team2) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.info*, align 8
  %team1.addr = alloca i32, align 4
  %team2.addr = alloca i32, align 4
  store %struct.info* %info, %struct.info** %info.addr, align 8
  store i32 %team1, i32* %team1.addr, align 4
  store i32 %team2, i32* %team2.addr, align 4
  %0 = load i32, i32* %team1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  %1 = load i32, i32* %arrayidx1, align 4
  %2 = load i32, i32* %team2.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx3, i32 0, i64 0
  %3 = load i32, i32* %arrayidx4, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %team1.addr, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx6, i32 0, i64 0
  %5 = load i32, i32* %arrayidx7, align 4
  %6 = load i32, i32* %team2.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx9, i32 0, i64 0
  %7 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp slt i32 %5, %7
  %conv = zext i1 %cmp11 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.info*, %struct.info** %info.addr, align 8
  %9 = load i32, i32* %team1.addr, align 4
  %10 = load i32, i32* %team2.addr, align 4
  %call = call i32 @absolute_standing_lt(%struct.info* %8, i32 %9, i32 %10)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @defence_lt(%struct.info* %info, i32 %team1, i32 %team2) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.info*, align 8
  %team1.addr = alloca i32, align 4
  %team2.addr = alloca i32, align 4
  store %struct.info* %info, %struct.info** %info.addr, align 8
  store i32 %team1, i32* %team1.addr, align 4
  store i32 %team2, i32* %team2.addr, align 4
  %0 = load i32, i32* %team1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  %1 = load i32, i32* %arrayidx1, align 4
  %2 = load i32, i32* %team2.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx3, i32 0, i64 0
  %3 = load i32, i32* %arrayidx4, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %team1.addr, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx6, i32 0, i64 0
  %5 = load i32, i32* %arrayidx7, align 4
  %6 = load i32, i32* %team2.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx9, i32 0, i64 0
  %7 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp slt i32 %5, %7
  %conv = zext i1 %cmp11 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %team1.addr, align 4
  %idxprom12 = sext i32 %8 to i64
  %9 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.info, %struct.info* %9, i64 %idxprom12
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx13, i32 0, i32 0
  %10 = load i32, i32* %wins, align 4
  %11 = load i32, i32* %team1.addr, align 4
  %idxprom14 = sext i32 %11 to i64
  %12 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.info, %struct.info* %12, i64 %idxprom14
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx15, i32 0, i32 1
  %13 = load i32, i32* %loses, align 4
  %add = add nsw i32 %10, %13
  %14 = load i32, i32* %team1.addr, align 4
  %idxprom16 = sext i32 %14 to i64
  %15 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.info, %struct.info* %15, i64 %idxprom16
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx17, i32 0, i32 2
  %16 = load i32, i32* %ties, align 4
  %add18 = add nsw i32 %add, %16
  %cmp19 = icmp eq i32 %add18, 0
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %17 = load i32, i32* %team1.addr, align 4
  %idxprom21 = sext i32 %17 to i64
  %18 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct.info, %struct.info* %18, i64 %idxprom21
  %points_against = getelementptr inbounds %struct.info, %struct.info* %arrayidx22, i32 0, i32 4
  %19 = load i32, i32* %points_against, align 4
  %conv23 = sitofp i32 %19 to double
  %20 = load i32, i32* %team1.addr, align 4
  %idxprom24 = sext i32 %20 to i64
  %21 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct.info, %struct.info* %21, i64 %idxprom24
  %wins26 = getelementptr inbounds %struct.info, %struct.info* %arrayidx25, i32 0, i32 0
  %22 = load i32, i32* %wins26, align 4
  %23 = load i32, i32* %team1.addr, align 4
  %idxprom27 = sext i32 %23 to i64
  %24 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.info, %struct.info* %24, i64 %idxprom27
  %loses29 = getelementptr inbounds %struct.info, %struct.info* %arrayidx28, i32 0, i32 1
  %25 = load i32, i32* %loses29, align 4
  %add30 = add nsw i32 %22, %25
  %26 = load i32, i32* %team1.addr, align 4
  %idxprom31 = sext i32 %26 to i64
  %27 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct.info, %struct.info* %27, i64 %idxprom31
  %ties33 = getelementptr inbounds %struct.info, %struct.info* %arrayidx32, i32 0, i32 2
  %28 = load i32, i32* %ties33, align 4
  %add34 = add nsw i32 %add30, %28
  %conv35 = sitofp i32 %add34 to double
  %div = fdiv double %conv23, %conv35
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %div, %cond.false ]
  %29 = load i32, i32* %team2.addr, align 4
  %idxprom36 = sext i32 %29 to i64
  %30 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct.info, %struct.info* %30, i64 %idxprom36
  %wins38 = getelementptr inbounds %struct.info, %struct.info* %arrayidx37, i32 0, i32 0
  %31 = load i32, i32* %wins38, align 4
  %32 = load i32, i32* %team2.addr, align 4
  %idxprom39 = sext i32 %32 to i64
  %33 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct.info, %struct.info* %33, i64 %idxprom39
  %loses41 = getelementptr inbounds %struct.info, %struct.info* %arrayidx40, i32 0, i32 1
  %34 = load i32, i32* %loses41, align 4
  %add42 = add nsw i32 %31, %34
  %35 = load i32, i32* %team2.addr, align 4
  %idxprom43 = sext i32 %35 to i64
  %36 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct.info, %struct.info* %36, i64 %idxprom43
  %ties45 = getelementptr inbounds %struct.info, %struct.info* %arrayidx44, i32 0, i32 2
  %37 = load i32, i32* %ties45, align 4
  %add46 = add nsw i32 %add42, %37
  %cmp47 = icmp eq i32 %add46, 0
  br i1 %cmp47, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %cond.end
  br label %cond.end.68

cond.false.50:                                    ; preds = %cond.end
  %38 = load i32, i32* %team2.addr, align 4
  %idxprom51 = sext i32 %38 to i64
  %39 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct.info, %struct.info* %39, i64 %idxprom51
  %points_against53 = getelementptr inbounds %struct.info, %struct.info* %arrayidx52, i32 0, i32 4
  %40 = load i32, i32* %points_against53, align 4
  %conv54 = sitofp i32 %40 to double
  %41 = load i32, i32* %team2.addr, align 4
  %idxprom55 = sext i32 %41 to i64
  %42 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct.info, %struct.info* %42, i64 %idxprom55
  %wins57 = getelementptr inbounds %struct.info, %struct.info* %arrayidx56, i32 0, i32 0
  %43 = load i32, i32* %wins57, align 4
  %44 = load i32, i32* %team2.addr, align 4
  %idxprom58 = sext i32 %44 to i64
  %45 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct.info, %struct.info* %45, i64 %idxprom58
  %loses60 = getelementptr inbounds %struct.info, %struct.info* %arrayidx59, i32 0, i32 1
  %46 = load i32, i32* %loses60, align 4
  %add61 = add nsw i32 %43, %46
  %47 = load i32, i32* %team2.addr, align 4
  %idxprom62 = sext i32 %47 to i64
  %48 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx63 = getelementptr inbounds %struct.info, %struct.info* %48, i64 %idxprom62
  %ties64 = getelementptr inbounds %struct.info, %struct.info* %arrayidx63, i32 0, i32 2
  %49 = load i32, i32* %ties64, align 4
  %add65 = add nsw i32 %add61, %49
  %conv66 = sitofp i32 %add65 to double
  %div67 = fdiv double %conv54, %conv66
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.50, %cond.true.49
  %cond69 = phi double [ 0.000000e+00, %cond.true.49 ], [ %div67, %cond.false.50 ]
  %cmp70 = fcmp une double %cond, %cond69
  br i1 %cmp70, label %if.then.72, label %if.end.143

if.then.72:                                       ; preds = %cond.end.68
  %50 = load i32, i32* %team1.addr, align 4
  %idxprom73 = sext i32 %50 to i64
  %51 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx74 = getelementptr inbounds %struct.info, %struct.info* %51, i64 %idxprom73
  %wins75 = getelementptr inbounds %struct.info, %struct.info* %arrayidx74, i32 0, i32 0
  %52 = load i32, i32* %wins75, align 4
  %53 = load i32, i32* %team1.addr, align 4
  %idxprom76 = sext i32 %53 to i64
  %54 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx77 = getelementptr inbounds %struct.info, %struct.info* %54, i64 %idxprom76
  %loses78 = getelementptr inbounds %struct.info, %struct.info* %arrayidx77, i32 0, i32 1
  %55 = load i32, i32* %loses78, align 4
  %add79 = add nsw i32 %52, %55
  %56 = load i32, i32* %team1.addr, align 4
  %idxprom80 = sext i32 %56 to i64
  %57 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx81 = getelementptr inbounds %struct.info, %struct.info* %57, i64 %idxprom80
  %ties82 = getelementptr inbounds %struct.info, %struct.info* %arrayidx81, i32 0, i32 2
  %58 = load i32, i32* %ties82, align 4
  %add83 = add nsw i32 %add79, %58
  %cmp84 = icmp eq i32 %add83, 0
  br i1 %cmp84, label %cond.true.86, label %cond.false.87

cond.true.86:                                     ; preds = %if.then.72
  br label %cond.end.105

cond.false.87:                                    ; preds = %if.then.72
  %59 = load i32, i32* %team1.addr, align 4
  %idxprom88 = sext i32 %59 to i64
  %60 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx89 = getelementptr inbounds %struct.info, %struct.info* %60, i64 %idxprom88
  %points_against90 = getelementptr inbounds %struct.info, %struct.info* %arrayidx89, i32 0, i32 4
  %61 = load i32, i32* %points_against90, align 4
  %conv91 = sitofp i32 %61 to double
  %62 = load i32, i32* %team1.addr, align 4
  %idxprom92 = sext i32 %62 to i64
  %63 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx93 = getelementptr inbounds %struct.info, %struct.info* %63, i64 %idxprom92
  %wins94 = getelementptr inbounds %struct.info, %struct.info* %arrayidx93, i32 0, i32 0
  %64 = load i32, i32* %wins94, align 4
  %65 = load i32, i32* %team1.addr, align 4
  %idxprom95 = sext i32 %65 to i64
  %66 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx96 = getelementptr inbounds %struct.info, %struct.info* %66, i64 %idxprom95
  %loses97 = getelementptr inbounds %struct.info, %struct.info* %arrayidx96, i32 0, i32 1
  %67 = load i32, i32* %loses97, align 4
  %add98 = add nsw i32 %64, %67
  %68 = load i32, i32* %team1.addr, align 4
  %idxprom99 = sext i32 %68 to i64
  %69 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx100 = getelementptr inbounds %struct.info, %struct.info* %69, i64 %idxprom99
  %ties101 = getelementptr inbounds %struct.info, %struct.info* %arrayidx100, i32 0, i32 2
  %70 = load i32, i32* %ties101, align 4
  %add102 = add nsw i32 %add98, %70
  %conv103 = sitofp i32 %add102 to double
  %div104 = fdiv double %conv91, %conv103
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.false.87, %cond.true.86
  %cond106 = phi double [ 0.000000e+00, %cond.true.86 ], [ %div104, %cond.false.87 ]
  %71 = load i32, i32* %team2.addr, align 4
  %idxprom107 = sext i32 %71 to i64
  %72 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx108 = getelementptr inbounds %struct.info, %struct.info* %72, i64 %idxprom107
  %wins109 = getelementptr inbounds %struct.info, %struct.info* %arrayidx108, i32 0, i32 0
  %73 = load i32, i32* %wins109, align 4
  %74 = load i32, i32* %team2.addr, align 4
  %idxprom110 = sext i32 %74 to i64
  %75 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx111 = getelementptr inbounds %struct.info, %struct.info* %75, i64 %idxprom110
  %loses112 = getelementptr inbounds %struct.info, %struct.info* %arrayidx111, i32 0, i32 1
  %76 = load i32, i32* %loses112, align 4
  %add113 = add nsw i32 %73, %76
  %77 = load i32, i32* %team2.addr, align 4
  %idxprom114 = sext i32 %77 to i64
  %78 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx115 = getelementptr inbounds %struct.info, %struct.info* %78, i64 %idxprom114
  %ties116 = getelementptr inbounds %struct.info, %struct.info* %arrayidx115, i32 0, i32 2
  %79 = load i32, i32* %ties116, align 4
  %add117 = add nsw i32 %add113, %79
  %cmp118 = icmp eq i32 %add117, 0
  br i1 %cmp118, label %cond.true.120, label %cond.false.121

cond.true.120:                                    ; preds = %cond.end.105
  br label %cond.end.139

cond.false.121:                                   ; preds = %cond.end.105
  %80 = load i32, i32* %team2.addr, align 4
  %idxprom122 = sext i32 %80 to i64
  %81 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx123 = getelementptr inbounds %struct.info, %struct.info* %81, i64 %idxprom122
  %points_against124 = getelementptr inbounds %struct.info, %struct.info* %arrayidx123, i32 0, i32 4
  %82 = load i32, i32* %points_against124, align 4
  %conv125 = sitofp i32 %82 to double
  %83 = load i32, i32* %team2.addr, align 4
  %idxprom126 = sext i32 %83 to i64
  %84 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx127 = getelementptr inbounds %struct.info, %struct.info* %84, i64 %idxprom126
  %wins128 = getelementptr inbounds %struct.info, %struct.info* %arrayidx127, i32 0, i32 0
  %85 = load i32, i32* %wins128, align 4
  %86 = load i32, i32* %team2.addr, align 4
  %idxprom129 = sext i32 %86 to i64
  %87 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx130 = getelementptr inbounds %struct.info, %struct.info* %87, i64 %idxprom129
  %loses131 = getelementptr inbounds %struct.info, %struct.info* %arrayidx130, i32 0, i32 1
  %88 = load i32, i32* %loses131, align 4
  %add132 = add nsw i32 %85, %88
  %89 = load i32, i32* %team2.addr, align 4
  %idxprom133 = sext i32 %89 to i64
  %90 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx134 = getelementptr inbounds %struct.info, %struct.info* %90, i64 %idxprom133
  %ties135 = getelementptr inbounds %struct.info, %struct.info* %arrayidx134, i32 0, i32 2
  %91 = load i32, i32* %ties135, align 4
  %add136 = add nsw i32 %add132, %91
  %conv137 = sitofp i32 %add136 to double
  %div138 = fdiv double %conv125, %conv137
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.121, %cond.true.120
  %cond140 = phi double [ 0.000000e+00, %cond.true.120 ], [ %div138, %cond.false.121 ]
  %cmp141 = fcmp olt double %cond106, %cond140
  %conv142 = zext i1 %cmp141 to i32
  store i32 %conv142, i32* %retval
  br label %return

if.end.143:                                       ; preds = %cond.end.68
  %92 = load i32, i32* %team1.addr, align 4
  %93 = load i32, i32* %team2.addr, align 4
  %cmp144 = icmp slt i32 %92, %93
  %conv145 = zext i1 %cmp144 to i32
  store i32 %conv145, i32* %retval
  br label %return

return:                                           ; preds = %if.end.143, %cond.end.139, %if.then
  %94 = load i32, i32* %retval
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define i32 @defence_nfl_lt(%struct.info* %info, i32 %team1, i32 %team2) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.info*, align 8
  %team1.addr = alloca i32, align 4
  %team2.addr = alloca i32, align 4
  store %struct.info* %info, %struct.info** %info.addr, align 8
  store i32 %team1, i32* %team1.addr, align 4
  store i32 %team2, i32* %team2.addr, align 4
  %0 = load i32, i32* %team1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx = getelementptr inbounds %struct.info, %struct.info* %1, i64 %idxprom
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %wins, align 4
  %3 = load i32, i32* %team1.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.info, %struct.info* %4, i64 %idxprom1
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %loses, align 4
  %add = add nsw i32 %2, %5
  %6 = load i32, i32* %team1.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.info, %struct.info* %7, i64 %idxprom3
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx4, i32 0, i32 2
  %8 = load i32, i32* %ties, align 4
  %add5 = add nsw i32 %add, %8
  %cmp = icmp eq i32 %add5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %team1.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.info, %struct.info* %10, i64 %idxprom6
  %points_against = getelementptr inbounds %struct.info, %struct.info* %arrayidx7, i32 0, i32 4
  %11 = load i32, i32* %points_against, align 4
  %conv = sitofp i32 %11 to double
  %12 = load i32, i32* %team1.addr, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.info, %struct.info* %13, i64 %idxprom8
  %wins10 = getelementptr inbounds %struct.info, %struct.info* %arrayidx9, i32 0, i32 0
  %14 = load i32, i32* %wins10, align 4
  %15 = load i32, i32* %team1.addr, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.info, %struct.info* %16, i64 %idxprom11
  %loses13 = getelementptr inbounds %struct.info, %struct.info* %arrayidx12, i32 0, i32 1
  %17 = load i32, i32* %loses13, align 4
  %add14 = add nsw i32 %14, %17
  %18 = load i32, i32* %team1.addr, align 4
  %idxprom15 = sext i32 %18 to i64
  %19 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.info, %struct.info* %19, i64 %idxprom15
  %ties17 = getelementptr inbounds %struct.info, %struct.info* %arrayidx16, i32 0, i32 2
  %20 = load i32, i32* %ties17, align 4
  %add18 = add nsw i32 %add14, %20
  %conv19 = sitofp i32 %add18 to double
  %div = fdiv double %conv, %conv19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %div, %cond.false ]
  %21 = load i32, i32* %team2.addr, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.info, %struct.info* %22, i64 %idxprom20
  %wins22 = getelementptr inbounds %struct.info, %struct.info* %arrayidx21, i32 0, i32 0
  %23 = load i32, i32* %wins22, align 4
  %24 = load i32, i32* %team2.addr, align 4
  %idxprom23 = sext i32 %24 to i64
  %25 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.info, %struct.info* %25, i64 %idxprom23
  %loses25 = getelementptr inbounds %struct.info, %struct.info* %arrayidx24, i32 0, i32 1
  %26 = load i32, i32* %loses25, align 4
  %add26 = add nsw i32 %23, %26
  %27 = load i32, i32* %team2.addr, align 4
  %idxprom27 = sext i32 %27 to i64
  %28 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.info, %struct.info* %28, i64 %idxprom27
  %ties29 = getelementptr inbounds %struct.info, %struct.info* %arrayidx28, i32 0, i32 2
  %29 = load i32, i32* %ties29, align 4
  %add30 = add nsw i32 %add26, %29
  %cmp31 = icmp eq i32 %add30, 0
  br i1 %cmp31, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.end
  br label %cond.end.52

cond.false.34:                                    ; preds = %cond.end
  %30 = load i32, i32* %team2.addr, align 4
  %idxprom35 = sext i32 %30 to i64
  %31 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.info, %struct.info* %31, i64 %idxprom35
  %points_against37 = getelementptr inbounds %struct.info, %struct.info* %arrayidx36, i32 0, i32 4
  %32 = load i32, i32* %points_against37, align 4
  %conv38 = sitofp i32 %32 to double
  %33 = load i32, i32* %team2.addr, align 4
  %idxprom39 = sext i32 %33 to i64
  %34 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct.info, %struct.info* %34, i64 %idxprom39
  %wins41 = getelementptr inbounds %struct.info, %struct.info* %arrayidx40, i32 0, i32 0
  %35 = load i32, i32* %wins41, align 4
  %36 = load i32, i32* %team2.addr, align 4
  %idxprom42 = sext i32 %36 to i64
  %37 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct.info, %struct.info* %37, i64 %idxprom42
  %loses44 = getelementptr inbounds %struct.info, %struct.info* %arrayidx43, i32 0, i32 1
  %38 = load i32, i32* %loses44, align 4
  %add45 = add nsw i32 %35, %38
  %39 = load i32, i32* %team2.addr, align 4
  %idxprom46 = sext i32 %39 to i64
  %40 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct.info, %struct.info* %40, i64 %idxprom46
  %ties48 = getelementptr inbounds %struct.info, %struct.info* %arrayidx47, i32 0, i32 2
  %41 = load i32, i32* %ties48, align 4
  %add49 = add nsw i32 %add45, %41
  %conv50 = sitofp i32 %add49 to double
  %div51 = fdiv double %conv38, %conv50
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.34, %cond.true.33
  %cond53 = phi double [ 0.000000e+00, %cond.true.33 ], [ %div51, %cond.false.34 ]
  %cmp54 = fcmp une double %cond, %cond53
  br i1 %cmp54, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.52
  %42 = load i32, i32* %team1.addr, align 4
  %idxprom56 = sext i32 %42 to i64
  %43 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct.info, %struct.info* %43, i64 %idxprom56
  %wins58 = getelementptr inbounds %struct.info, %struct.info* %arrayidx57, i32 0, i32 0
  %44 = load i32, i32* %wins58, align 4
  %45 = load i32, i32* %team1.addr, align 4
  %idxprom59 = sext i32 %45 to i64
  %46 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx60 = getelementptr inbounds %struct.info, %struct.info* %46, i64 %idxprom59
  %loses61 = getelementptr inbounds %struct.info, %struct.info* %arrayidx60, i32 0, i32 1
  %47 = load i32, i32* %loses61, align 4
  %add62 = add nsw i32 %44, %47
  %48 = load i32, i32* %team1.addr, align 4
  %idxprom63 = sext i32 %48 to i64
  %49 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx64 = getelementptr inbounds %struct.info, %struct.info* %49, i64 %idxprom63
  %ties65 = getelementptr inbounds %struct.info, %struct.info* %arrayidx64, i32 0, i32 2
  %50 = load i32, i32* %ties65, align 4
  %add66 = add nsw i32 %add62, %50
  %cmp67 = icmp eq i32 %add66, 0
  br i1 %cmp67, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %if.then
  br label %cond.end.88

cond.false.70:                                    ; preds = %if.then
  %51 = load i32, i32* %team1.addr, align 4
  %idxprom71 = sext i32 %51 to i64
  %52 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct.info, %struct.info* %52, i64 %idxprom71
  %points_against73 = getelementptr inbounds %struct.info, %struct.info* %arrayidx72, i32 0, i32 4
  %53 = load i32, i32* %points_against73, align 4
  %conv74 = sitofp i32 %53 to double
  %54 = load i32, i32* %team1.addr, align 4
  %idxprom75 = sext i32 %54 to i64
  %55 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct.info, %struct.info* %55, i64 %idxprom75
  %wins77 = getelementptr inbounds %struct.info, %struct.info* %arrayidx76, i32 0, i32 0
  %56 = load i32, i32* %wins77, align 4
  %57 = load i32, i32* %team1.addr, align 4
  %idxprom78 = sext i32 %57 to i64
  %58 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx79 = getelementptr inbounds %struct.info, %struct.info* %58, i64 %idxprom78
  %loses80 = getelementptr inbounds %struct.info, %struct.info* %arrayidx79, i32 0, i32 1
  %59 = load i32, i32* %loses80, align 4
  %add81 = add nsw i32 %56, %59
  %60 = load i32, i32* %team1.addr, align 4
  %idxprom82 = sext i32 %60 to i64
  %61 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx83 = getelementptr inbounds %struct.info, %struct.info* %61, i64 %idxprom82
  %ties84 = getelementptr inbounds %struct.info, %struct.info* %arrayidx83, i32 0, i32 2
  %62 = load i32, i32* %ties84, align 4
  %add85 = add nsw i32 %add81, %62
  %conv86 = sitofp i32 %add85 to double
  %div87 = fdiv double %conv74, %conv86
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.70, %cond.true.69
  %cond89 = phi double [ 0.000000e+00, %cond.true.69 ], [ %div87, %cond.false.70 ]
  %63 = load i32, i32* %team2.addr, align 4
  %idxprom90 = sext i32 %63 to i64
  %64 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx91 = getelementptr inbounds %struct.info, %struct.info* %64, i64 %idxprom90
  %wins92 = getelementptr inbounds %struct.info, %struct.info* %arrayidx91, i32 0, i32 0
  %65 = load i32, i32* %wins92, align 4
  %66 = load i32, i32* %team2.addr, align 4
  %idxprom93 = sext i32 %66 to i64
  %67 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx94 = getelementptr inbounds %struct.info, %struct.info* %67, i64 %idxprom93
  %loses95 = getelementptr inbounds %struct.info, %struct.info* %arrayidx94, i32 0, i32 1
  %68 = load i32, i32* %loses95, align 4
  %add96 = add nsw i32 %65, %68
  %69 = load i32, i32* %team2.addr, align 4
  %idxprom97 = sext i32 %69 to i64
  %70 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx98 = getelementptr inbounds %struct.info, %struct.info* %70, i64 %idxprom97
  %ties99 = getelementptr inbounds %struct.info, %struct.info* %arrayidx98, i32 0, i32 2
  %71 = load i32, i32* %ties99, align 4
  %add100 = add nsw i32 %add96, %71
  %cmp101 = icmp eq i32 %add100, 0
  br i1 %cmp101, label %cond.true.103, label %cond.false.104

cond.true.103:                                    ; preds = %cond.end.88
  br label %cond.end.122

cond.false.104:                                   ; preds = %cond.end.88
  %72 = load i32, i32* %team2.addr, align 4
  %idxprom105 = sext i32 %72 to i64
  %73 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx106 = getelementptr inbounds %struct.info, %struct.info* %73, i64 %idxprom105
  %points_against107 = getelementptr inbounds %struct.info, %struct.info* %arrayidx106, i32 0, i32 4
  %74 = load i32, i32* %points_against107, align 4
  %conv108 = sitofp i32 %74 to double
  %75 = load i32, i32* %team2.addr, align 4
  %idxprom109 = sext i32 %75 to i64
  %76 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx110 = getelementptr inbounds %struct.info, %struct.info* %76, i64 %idxprom109
  %wins111 = getelementptr inbounds %struct.info, %struct.info* %arrayidx110, i32 0, i32 0
  %77 = load i32, i32* %wins111, align 4
  %78 = load i32, i32* %team2.addr, align 4
  %idxprom112 = sext i32 %78 to i64
  %79 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx113 = getelementptr inbounds %struct.info, %struct.info* %79, i64 %idxprom112
  %loses114 = getelementptr inbounds %struct.info, %struct.info* %arrayidx113, i32 0, i32 1
  %80 = load i32, i32* %loses114, align 4
  %add115 = add nsw i32 %77, %80
  %81 = load i32, i32* %team2.addr, align 4
  %idxprom116 = sext i32 %81 to i64
  %82 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx117 = getelementptr inbounds %struct.info, %struct.info* %82, i64 %idxprom116
  %ties118 = getelementptr inbounds %struct.info, %struct.info* %arrayidx117, i32 0, i32 2
  %83 = load i32, i32* %ties118, align 4
  %add119 = add nsw i32 %add115, %83
  %conv120 = sitofp i32 %add119 to double
  %div121 = fdiv double %conv108, %conv120
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.104, %cond.true.103
  %cond123 = phi double [ 0.000000e+00, %cond.true.103 ], [ %div121, %cond.false.104 ]
  %cmp124 = fcmp olt double %cond89, %cond123
  %conv125 = zext i1 %cmp124 to i32
  store i32 %conv125, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.52
  %84 = load i32, i32* %team1.addr, align 4
  %85 = load i32, i32* %team2.addr, align 4
  %cmp126 = icmp slt i32 %84, %85
  %conv127 = zext i1 %cmp126 to i32
  store i32 %conv127, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %cond.end.122
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define i32 @offence_lt(%struct.info* %info, i32 %team1, i32 %team2) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.info*, align 8
  %team1.addr = alloca i32, align 4
  %team2.addr = alloca i32, align 4
  store %struct.info* %info, %struct.info** %info.addr, align 8
  store i32 %team1, i32* %team1.addr, align 4
  store i32 %team2, i32* %team2.addr, align 4
  %0 = load i32, i32* %team1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  %1 = load i32, i32* %arrayidx1, align 4
  %2 = load i32, i32* %team2.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx3, i32 0, i64 0
  %3 = load i32, i32* %arrayidx4, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %team1.addr, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx6, i32 0, i64 0
  %5 = load i32, i32* %arrayidx7, align 4
  %6 = load i32, i32* %team2.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx9, i32 0, i64 0
  %7 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp slt i32 %5, %7
  %conv = zext i1 %cmp11 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %team1.addr, align 4
  %idxprom12 = sext i32 %8 to i64
  %9 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.info, %struct.info* %9, i64 %idxprom12
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx13, i32 0, i32 0
  %10 = load i32, i32* %wins, align 4
  %11 = load i32, i32* %team1.addr, align 4
  %idxprom14 = sext i32 %11 to i64
  %12 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.info, %struct.info* %12, i64 %idxprom14
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx15, i32 0, i32 1
  %13 = load i32, i32* %loses, align 4
  %add = add nsw i32 %10, %13
  %14 = load i32, i32* %team1.addr, align 4
  %idxprom16 = sext i32 %14 to i64
  %15 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.info, %struct.info* %15, i64 %idxprom16
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx17, i32 0, i32 2
  %16 = load i32, i32* %ties, align 4
  %add18 = add nsw i32 %add, %16
  %cmp19 = icmp eq i32 %add18, 0
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %17 = load i32, i32* %team1.addr, align 4
  %idxprom21 = sext i32 %17 to i64
  %18 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct.info, %struct.info* %18, i64 %idxprom21
  %points_for = getelementptr inbounds %struct.info, %struct.info* %arrayidx22, i32 0, i32 3
  %19 = load i32, i32* %points_for, align 4
  %conv23 = sitofp i32 %19 to double
  %20 = load i32, i32* %team1.addr, align 4
  %idxprom24 = sext i32 %20 to i64
  %21 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct.info, %struct.info* %21, i64 %idxprom24
  %wins26 = getelementptr inbounds %struct.info, %struct.info* %arrayidx25, i32 0, i32 0
  %22 = load i32, i32* %wins26, align 4
  %23 = load i32, i32* %team1.addr, align 4
  %idxprom27 = sext i32 %23 to i64
  %24 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.info, %struct.info* %24, i64 %idxprom27
  %loses29 = getelementptr inbounds %struct.info, %struct.info* %arrayidx28, i32 0, i32 1
  %25 = load i32, i32* %loses29, align 4
  %add30 = add nsw i32 %22, %25
  %26 = load i32, i32* %team1.addr, align 4
  %idxprom31 = sext i32 %26 to i64
  %27 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct.info, %struct.info* %27, i64 %idxprom31
  %ties33 = getelementptr inbounds %struct.info, %struct.info* %arrayidx32, i32 0, i32 2
  %28 = load i32, i32* %ties33, align 4
  %add34 = add nsw i32 %add30, %28
  %conv35 = sitofp i32 %add34 to double
  %div = fdiv double %conv23, %conv35
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %div, %cond.false ]
  %29 = load i32, i32* %team2.addr, align 4
  %idxprom36 = sext i32 %29 to i64
  %30 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct.info, %struct.info* %30, i64 %idxprom36
  %wins38 = getelementptr inbounds %struct.info, %struct.info* %arrayidx37, i32 0, i32 0
  %31 = load i32, i32* %wins38, align 4
  %32 = load i32, i32* %team2.addr, align 4
  %idxprom39 = sext i32 %32 to i64
  %33 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct.info, %struct.info* %33, i64 %idxprom39
  %loses41 = getelementptr inbounds %struct.info, %struct.info* %arrayidx40, i32 0, i32 1
  %34 = load i32, i32* %loses41, align 4
  %add42 = add nsw i32 %31, %34
  %35 = load i32, i32* %team2.addr, align 4
  %idxprom43 = sext i32 %35 to i64
  %36 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct.info, %struct.info* %36, i64 %idxprom43
  %ties45 = getelementptr inbounds %struct.info, %struct.info* %arrayidx44, i32 0, i32 2
  %37 = load i32, i32* %ties45, align 4
  %add46 = add nsw i32 %add42, %37
  %cmp47 = icmp eq i32 %add46, 0
  br i1 %cmp47, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %cond.end
  br label %cond.end.68

cond.false.50:                                    ; preds = %cond.end
  %38 = load i32, i32* %team2.addr, align 4
  %idxprom51 = sext i32 %38 to i64
  %39 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct.info, %struct.info* %39, i64 %idxprom51
  %points_for53 = getelementptr inbounds %struct.info, %struct.info* %arrayidx52, i32 0, i32 3
  %40 = load i32, i32* %points_for53, align 4
  %conv54 = sitofp i32 %40 to double
  %41 = load i32, i32* %team2.addr, align 4
  %idxprom55 = sext i32 %41 to i64
  %42 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct.info, %struct.info* %42, i64 %idxprom55
  %wins57 = getelementptr inbounds %struct.info, %struct.info* %arrayidx56, i32 0, i32 0
  %43 = load i32, i32* %wins57, align 4
  %44 = load i32, i32* %team2.addr, align 4
  %idxprom58 = sext i32 %44 to i64
  %45 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct.info, %struct.info* %45, i64 %idxprom58
  %loses60 = getelementptr inbounds %struct.info, %struct.info* %arrayidx59, i32 0, i32 1
  %46 = load i32, i32* %loses60, align 4
  %add61 = add nsw i32 %43, %46
  %47 = load i32, i32* %team2.addr, align 4
  %idxprom62 = sext i32 %47 to i64
  %48 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx63 = getelementptr inbounds %struct.info, %struct.info* %48, i64 %idxprom62
  %ties64 = getelementptr inbounds %struct.info, %struct.info* %arrayidx63, i32 0, i32 2
  %49 = load i32, i32* %ties64, align 4
  %add65 = add nsw i32 %add61, %49
  %conv66 = sitofp i32 %add65 to double
  %div67 = fdiv double %conv54, %conv66
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.50, %cond.true.49
  %cond69 = phi double [ 0.000000e+00, %cond.true.49 ], [ %div67, %cond.false.50 ]
  %cmp70 = fcmp une double %cond, %cond69
  br i1 %cmp70, label %if.then.72, label %if.end.143

if.then.72:                                       ; preds = %cond.end.68
  %50 = load i32, i32* %team1.addr, align 4
  %idxprom73 = sext i32 %50 to i64
  %51 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx74 = getelementptr inbounds %struct.info, %struct.info* %51, i64 %idxprom73
  %wins75 = getelementptr inbounds %struct.info, %struct.info* %arrayidx74, i32 0, i32 0
  %52 = load i32, i32* %wins75, align 4
  %53 = load i32, i32* %team1.addr, align 4
  %idxprom76 = sext i32 %53 to i64
  %54 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx77 = getelementptr inbounds %struct.info, %struct.info* %54, i64 %idxprom76
  %loses78 = getelementptr inbounds %struct.info, %struct.info* %arrayidx77, i32 0, i32 1
  %55 = load i32, i32* %loses78, align 4
  %add79 = add nsw i32 %52, %55
  %56 = load i32, i32* %team1.addr, align 4
  %idxprom80 = sext i32 %56 to i64
  %57 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx81 = getelementptr inbounds %struct.info, %struct.info* %57, i64 %idxprom80
  %ties82 = getelementptr inbounds %struct.info, %struct.info* %arrayidx81, i32 0, i32 2
  %58 = load i32, i32* %ties82, align 4
  %add83 = add nsw i32 %add79, %58
  %cmp84 = icmp eq i32 %add83, 0
  br i1 %cmp84, label %cond.true.86, label %cond.false.87

cond.true.86:                                     ; preds = %if.then.72
  br label %cond.end.105

cond.false.87:                                    ; preds = %if.then.72
  %59 = load i32, i32* %team1.addr, align 4
  %idxprom88 = sext i32 %59 to i64
  %60 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx89 = getelementptr inbounds %struct.info, %struct.info* %60, i64 %idxprom88
  %points_for90 = getelementptr inbounds %struct.info, %struct.info* %arrayidx89, i32 0, i32 3
  %61 = load i32, i32* %points_for90, align 4
  %conv91 = sitofp i32 %61 to double
  %62 = load i32, i32* %team1.addr, align 4
  %idxprom92 = sext i32 %62 to i64
  %63 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx93 = getelementptr inbounds %struct.info, %struct.info* %63, i64 %idxprom92
  %wins94 = getelementptr inbounds %struct.info, %struct.info* %arrayidx93, i32 0, i32 0
  %64 = load i32, i32* %wins94, align 4
  %65 = load i32, i32* %team1.addr, align 4
  %idxprom95 = sext i32 %65 to i64
  %66 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx96 = getelementptr inbounds %struct.info, %struct.info* %66, i64 %idxprom95
  %loses97 = getelementptr inbounds %struct.info, %struct.info* %arrayidx96, i32 0, i32 1
  %67 = load i32, i32* %loses97, align 4
  %add98 = add nsw i32 %64, %67
  %68 = load i32, i32* %team1.addr, align 4
  %idxprom99 = sext i32 %68 to i64
  %69 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx100 = getelementptr inbounds %struct.info, %struct.info* %69, i64 %idxprom99
  %ties101 = getelementptr inbounds %struct.info, %struct.info* %arrayidx100, i32 0, i32 2
  %70 = load i32, i32* %ties101, align 4
  %add102 = add nsw i32 %add98, %70
  %conv103 = sitofp i32 %add102 to double
  %div104 = fdiv double %conv91, %conv103
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.false.87, %cond.true.86
  %cond106 = phi double [ 0.000000e+00, %cond.true.86 ], [ %div104, %cond.false.87 ]
  %71 = load i32, i32* %team2.addr, align 4
  %idxprom107 = sext i32 %71 to i64
  %72 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx108 = getelementptr inbounds %struct.info, %struct.info* %72, i64 %idxprom107
  %wins109 = getelementptr inbounds %struct.info, %struct.info* %arrayidx108, i32 0, i32 0
  %73 = load i32, i32* %wins109, align 4
  %74 = load i32, i32* %team2.addr, align 4
  %idxprom110 = sext i32 %74 to i64
  %75 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx111 = getelementptr inbounds %struct.info, %struct.info* %75, i64 %idxprom110
  %loses112 = getelementptr inbounds %struct.info, %struct.info* %arrayidx111, i32 0, i32 1
  %76 = load i32, i32* %loses112, align 4
  %add113 = add nsw i32 %73, %76
  %77 = load i32, i32* %team2.addr, align 4
  %idxprom114 = sext i32 %77 to i64
  %78 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx115 = getelementptr inbounds %struct.info, %struct.info* %78, i64 %idxprom114
  %ties116 = getelementptr inbounds %struct.info, %struct.info* %arrayidx115, i32 0, i32 2
  %79 = load i32, i32* %ties116, align 4
  %add117 = add nsw i32 %add113, %79
  %cmp118 = icmp eq i32 %add117, 0
  br i1 %cmp118, label %cond.true.120, label %cond.false.121

cond.true.120:                                    ; preds = %cond.end.105
  br label %cond.end.139

cond.false.121:                                   ; preds = %cond.end.105
  %80 = load i32, i32* %team2.addr, align 4
  %idxprom122 = sext i32 %80 to i64
  %81 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx123 = getelementptr inbounds %struct.info, %struct.info* %81, i64 %idxprom122
  %points_for124 = getelementptr inbounds %struct.info, %struct.info* %arrayidx123, i32 0, i32 3
  %82 = load i32, i32* %points_for124, align 4
  %conv125 = sitofp i32 %82 to double
  %83 = load i32, i32* %team2.addr, align 4
  %idxprom126 = sext i32 %83 to i64
  %84 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx127 = getelementptr inbounds %struct.info, %struct.info* %84, i64 %idxprom126
  %wins128 = getelementptr inbounds %struct.info, %struct.info* %arrayidx127, i32 0, i32 0
  %85 = load i32, i32* %wins128, align 4
  %86 = load i32, i32* %team2.addr, align 4
  %idxprom129 = sext i32 %86 to i64
  %87 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx130 = getelementptr inbounds %struct.info, %struct.info* %87, i64 %idxprom129
  %loses131 = getelementptr inbounds %struct.info, %struct.info* %arrayidx130, i32 0, i32 1
  %88 = load i32, i32* %loses131, align 4
  %add132 = add nsw i32 %85, %88
  %89 = load i32, i32* %team2.addr, align 4
  %idxprom133 = sext i32 %89 to i64
  %90 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx134 = getelementptr inbounds %struct.info, %struct.info* %90, i64 %idxprom133
  %ties135 = getelementptr inbounds %struct.info, %struct.info* %arrayidx134, i32 0, i32 2
  %91 = load i32, i32* %ties135, align 4
  %add136 = add nsw i32 %add132, %91
  %conv137 = sitofp i32 %add136 to double
  %div138 = fdiv double %conv125, %conv137
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.121, %cond.true.120
  %cond140 = phi double [ 0.000000e+00, %cond.true.120 ], [ %div138, %cond.false.121 ]
  %cmp141 = fcmp ogt double %cond106, %cond140
  %conv142 = zext i1 %cmp141 to i32
  store i32 %conv142, i32* %retval
  br label %return

if.end.143:                                       ; preds = %cond.end.68
  %92 = load i32, i32* %team1.addr, align 4
  %93 = load i32, i32* %team2.addr, align 4
  %cmp144 = icmp slt i32 %92, %93
  %conv145 = zext i1 %cmp144 to i32
  store i32 %conv145, i32* %retval
  br label %return

return:                                           ; preds = %if.end.143, %cond.end.139, %if.then
  %94 = load i32, i32* %retval
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define i32 @offence_nfl_lt(%struct.info* %info, i32 %team1, i32 %team2) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.info*, align 8
  %team1.addr = alloca i32, align 4
  %team2.addr = alloca i32, align 4
  store %struct.info* %info, %struct.info** %info.addr, align 8
  store i32 %team1, i32* %team1.addr, align 4
  store i32 %team2, i32* %team2.addr, align 4
  %0 = load i32, i32* %team1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx = getelementptr inbounds %struct.info, %struct.info* %1, i64 %idxprom
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %wins, align 4
  %3 = load i32, i32* %team1.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.info, %struct.info* %4, i64 %idxprom1
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %loses, align 4
  %add = add nsw i32 %2, %5
  %6 = load i32, i32* %team1.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.info, %struct.info* %7, i64 %idxprom3
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx4, i32 0, i32 2
  %8 = load i32, i32* %ties, align 4
  %add5 = add nsw i32 %add, %8
  %cmp = icmp eq i32 %add5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %team1.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.info, %struct.info* %10, i64 %idxprom6
  %points_for = getelementptr inbounds %struct.info, %struct.info* %arrayidx7, i32 0, i32 3
  %11 = load i32, i32* %points_for, align 4
  %conv = sitofp i32 %11 to double
  %12 = load i32, i32* %team1.addr, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.info, %struct.info* %13, i64 %idxprom8
  %wins10 = getelementptr inbounds %struct.info, %struct.info* %arrayidx9, i32 0, i32 0
  %14 = load i32, i32* %wins10, align 4
  %15 = load i32, i32* %team1.addr, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.info, %struct.info* %16, i64 %idxprom11
  %loses13 = getelementptr inbounds %struct.info, %struct.info* %arrayidx12, i32 0, i32 1
  %17 = load i32, i32* %loses13, align 4
  %add14 = add nsw i32 %14, %17
  %18 = load i32, i32* %team1.addr, align 4
  %idxprom15 = sext i32 %18 to i64
  %19 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.info, %struct.info* %19, i64 %idxprom15
  %ties17 = getelementptr inbounds %struct.info, %struct.info* %arrayidx16, i32 0, i32 2
  %20 = load i32, i32* %ties17, align 4
  %add18 = add nsw i32 %add14, %20
  %conv19 = sitofp i32 %add18 to double
  %div = fdiv double %conv, %conv19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %div, %cond.false ]
  %21 = load i32, i32* %team2.addr, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.info, %struct.info* %22, i64 %idxprom20
  %wins22 = getelementptr inbounds %struct.info, %struct.info* %arrayidx21, i32 0, i32 0
  %23 = load i32, i32* %wins22, align 4
  %24 = load i32, i32* %team2.addr, align 4
  %idxprom23 = sext i32 %24 to i64
  %25 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.info, %struct.info* %25, i64 %idxprom23
  %loses25 = getelementptr inbounds %struct.info, %struct.info* %arrayidx24, i32 0, i32 1
  %26 = load i32, i32* %loses25, align 4
  %add26 = add nsw i32 %23, %26
  %27 = load i32, i32* %team2.addr, align 4
  %idxprom27 = sext i32 %27 to i64
  %28 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.info, %struct.info* %28, i64 %idxprom27
  %ties29 = getelementptr inbounds %struct.info, %struct.info* %arrayidx28, i32 0, i32 2
  %29 = load i32, i32* %ties29, align 4
  %add30 = add nsw i32 %add26, %29
  %cmp31 = icmp eq i32 %add30, 0
  br i1 %cmp31, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.end
  br label %cond.end.52

cond.false.34:                                    ; preds = %cond.end
  %30 = load i32, i32* %team2.addr, align 4
  %idxprom35 = sext i32 %30 to i64
  %31 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.info, %struct.info* %31, i64 %idxprom35
  %points_for37 = getelementptr inbounds %struct.info, %struct.info* %arrayidx36, i32 0, i32 3
  %32 = load i32, i32* %points_for37, align 4
  %conv38 = sitofp i32 %32 to double
  %33 = load i32, i32* %team2.addr, align 4
  %idxprom39 = sext i32 %33 to i64
  %34 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct.info, %struct.info* %34, i64 %idxprom39
  %wins41 = getelementptr inbounds %struct.info, %struct.info* %arrayidx40, i32 0, i32 0
  %35 = load i32, i32* %wins41, align 4
  %36 = load i32, i32* %team2.addr, align 4
  %idxprom42 = sext i32 %36 to i64
  %37 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct.info, %struct.info* %37, i64 %idxprom42
  %loses44 = getelementptr inbounds %struct.info, %struct.info* %arrayidx43, i32 0, i32 1
  %38 = load i32, i32* %loses44, align 4
  %add45 = add nsw i32 %35, %38
  %39 = load i32, i32* %team2.addr, align 4
  %idxprom46 = sext i32 %39 to i64
  %40 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct.info, %struct.info* %40, i64 %idxprom46
  %ties48 = getelementptr inbounds %struct.info, %struct.info* %arrayidx47, i32 0, i32 2
  %41 = load i32, i32* %ties48, align 4
  %add49 = add nsw i32 %add45, %41
  %conv50 = sitofp i32 %add49 to double
  %div51 = fdiv double %conv38, %conv50
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.34, %cond.true.33
  %cond53 = phi double [ 0.000000e+00, %cond.true.33 ], [ %div51, %cond.false.34 ]
  %cmp54 = fcmp une double %cond, %cond53
  br i1 %cmp54, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.52
  %42 = load i32, i32* %team1.addr, align 4
  %idxprom56 = sext i32 %42 to i64
  %43 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct.info, %struct.info* %43, i64 %idxprom56
  %wins58 = getelementptr inbounds %struct.info, %struct.info* %arrayidx57, i32 0, i32 0
  %44 = load i32, i32* %wins58, align 4
  %45 = load i32, i32* %team1.addr, align 4
  %idxprom59 = sext i32 %45 to i64
  %46 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx60 = getelementptr inbounds %struct.info, %struct.info* %46, i64 %idxprom59
  %loses61 = getelementptr inbounds %struct.info, %struct.info* %arrayidx60, i32 0, i32 1
  %47 = load i32, i32* %loses61, align 4
  %add62 = add nsw i32 %44, %47
  %48 = load i32, i32* %team1.addr, align 4
  %idxprom63 = sext i32 %48 to i64
  %49 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx64 = getelementptr inbounds %struct.info, %struct.info* %49, i64 %idxprom63
  %ties65 = getelementptr inbounds %struct.info, %struct.info* %arrayidx64, i32 0, i32 2
  %50 = load i32, i32* %ties65, align 4
  %add66 = add nsw i32 %add62, %50
  %cmp67 = icmp eq i32 %add66, 0
  br i1 %cmp67, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %if.then
  br label %cond.end.88

cond.false.70:                                    ; preds = %if.then
  %51 = load i32, i32* %team1.addr, align 4
  %idxprom71 = sext i32 %51 to i64
  %52 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct.info, %struct.info* %52, i64 %idxprom71
  %points_for73 = getelementptr inbounds %struct.info, %struct.info* %arrayidx72, i32 0, i32 3
  %53 = load i32, i32* %points_for73, align 4
  %conv74 = sitofp i32 %53 to double
  %54 = load i32, i32* %team1.addr, align 4
  %idxprom75 = sext i32 %54 to i64
  %55 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct.info, %struct.info* %55, i64 %idxprom75
  %wins77 = getelementptr inbounds %struct.info, %struct.info* %arrayidx76, i32 0, i32 0
  %56 = load i32, i32* %wins77, align 4
  %57 = load i32, i32* %team1.addr, align 4
  %idxprom78 = sext i32 %57 to i64
  %58 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx79 = getelementptr inbounds %struct.info, %struct.info* %58, i64 %idxprom78
  %loses80 = getelementptr inbounds %struct.info, %struct.info* %arrayidx79, i32 0, i32 1
  %59 = load i32, i32* %loses80, align 4
  %add81 = add nsw i32 %56, %59
  %60 = load i32, i32* %team1.addr, align 4
  %idxprom82 = sext i32 %60 to i64
  %61 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx83 = getelementptr inbounds %struct.info, %struct.info* %61, i64 %idxprom82
  %ties84 = getelementptr inbounds %struct.info, %struct.info* %arrayidx83, i32 0, i32 2
  %62 = load i32, i32* %ties84, align 4
  %add85 = add nsw i32 %add81, %62
  %conv86 = sitofp i32 %add85 to double
  %div87 = fdiv double %conv74, %conv86
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.70, %cond.true.69
  %cond89 = phi double [ 0.000000e+00, %cond.true.69 ], [ %div87, %cond.false.70 ]
  %63 = load i32, i32* %team2.addr, align 4
  %idxprom90 = sext i32 %63 to i64
  %64 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx91 = getelementptr inbounds %struct.info, %struct.info* %64, i64 %idxprom90
  %wins92 = getelementptr inbounds %struct.info, %struct.info* %arrayidx91, i32 0, i32 0
  %65 = load i32, i32* %wins92, align 4
  %66 = load i32, i32* %team2.addr, align 4
  %idxprom93 = sext i32 %66 to i64
  %67 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx94 = getelementptr inbounds %struct.info, %struct.info* %67, i64 %idxprom93
  %loses95 = getelementptr inbounds %struct.info, %struct.info* %arrayidx94, i32 0, i32 1
  %68 = load i32, i32* %loses95, align 4
  %add96 = add nsw i32 %65, %68
  %69 = load i32, i32* %team2.addr, align 4
  %idxprom97 = sext i32 %69 to i64
  %70 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx98 = getelementptr inbounds %struct.info, %struct.info* %70, i64 %idxprom97
  %ties99 = getelementptr inbounds %struct.info, %struct.info* %arrayidx98, i32 0, i32 2
  %71 = load i32, i32* %ties99, align 4
  %add100 = add nsw i32 %add96, %71
  %cmp101 = icmp eq i32 %add100, 0
  br i1 %cmp101, label %cond.true.103, label %cond.false.104

cond.true.103:                                    ; preds = %cond.end.88
  br label %cond.end.122

cond.false.104:                                   ; preds = %cond.end.88
  %72 = load i32, i32* %team2.addr, align 4
  %idxprom105 = sext i32 %72 to i64
  %73 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx106 = getelementptr inbounds %struct.info, %struct.info* %73, i64 %idxprom105
  %points_for107 = getelementptr inbounds %struct.info, %struct.info* %arrayidx106, i32 0, i32 3
  %74 = load i32, i32* %points_for107, align 4
  %conv108 = sitofp i32 %74 to double
  %75 = load i32, i32* %team2.addr, align 4
  %idxprom109 = sext i32 %75 to i64
  %76 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx110 = getelementptr inbounds %struct.info, %struct.info* %76, i64 %idxprom109
  %wins111 = getelementptr inbounds %struct.info, %struct.info* %arrayidx110, i32 0, i32 0
  %77 = load i32, i32* %wins111, align 4
  %78 = load i32, i32* %team2.addr, align 4
  %idxprom112 = sext i32 %78 to i64
  %79 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx113 = getelementptr inbounds %struct.info, %struct.info* %79, i64 %idxprom112
  %loses114 = getelementptr inbounds %struct.info, %struct.info* %arrayidx113, i32 0, i32 1
  %80 = load i32, i32* %loses114, align 4
  %add115 = add nsw i32 %77, %80
  %81 = load i32, i32* %team2.addr, align 4
  %idxprom116 = sext i32 %81 to i64
  %82 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx117 = getelementptr inbounds %struct.info, %struct.info* %82, i64 %idxprom116
  %ties118 = getelementptr inbounds %struct.info, %struct.info* %arrayidx117, i32 0, i32 2
  %83 = load i32, i32* %ties118, align 4
  %add119 = add nsw i32 %add115, %83
  %conv120 = sitofp i32 %add119 to double
  %div121 = fdiv double %conv108, %conv120
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.104, %cond.true.103
  %cond123 = phi double [ 0.000000e+00, %cond.true.103 ], [ %div121, %cond.false.104 ]
  %cmp124 = fcmp ogt double %cond89, %cond123
  %conv125 = zext i1 %cmp124 to i32
  store i32 %conv125, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.52
  %84 = load i32, i32* %team1.addr, align 4
  %85 = load i32, i32* %team2.addr, align 4
  %cmp126 = icmp slt i32 %84, %85
  %conv127 = zext i1 %cmp126 to i32
  store i32 %conv127, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %cond.end.122
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define i32 @net_nfl_lt(%struct.info* %info, i32 %team1, i32 %team2) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.info*, align 8
  %team1.addr = alloca i32, align 4
  %team2.addr = alloca i32, align 4
  store %struct.info* %info, %struct.info** %info.addr, align 8
  store i32 %team1, i32* %team1.addr, align 4
  store i32 %team2, i32* %team2.addr, align 4
  %0 = load i32, i32* %team1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx = getelementptr inbounds %struct.info, %struct.info* %1, i64 %idxprom
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %wins, align 4
  %3 = load i32, i32* %team1.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.info, %struct.info* %4, i64 %idxprom1
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %loses, align 4
  %add = add nsw i32 %2, %5
  %6 = load i32, i32* %team1.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.info, %struct.info* %7, i64 %idxprom3
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx4, i32 0, i32 2
  %8 = load i32, i32* %ties, align 4
  %add5 = add nsw i32 %add, %8
  %cmp = icmp eq i32 %add5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %team1.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.info, %struct.info* %10, i64 %idxprom6
  %points_for = getelementptr inbounds %struct.info, %struct.info* %arrayidx7, i32 0, i32 3
  %11 = load i32, i32* %points_for, align 4
  %12 = load i32, i32* %team1.addr, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.info, %struct.info* %13, i64 %idxprom8
  %points_against = getelementptr inbounds %struct.info, %struct.info* %arrayidx9, i32 0, i32 4
  %14 = load i32, i32* %points_against, align 4
  %sub = sub nsw i32 %11, %14
  %conv = sitofp i32 %sub to double
  %15 = load i32, i32* %team1.addr, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.info, %struct.info* %16, i64 %idxprom10
  %wins12 = getelementptr inbounds %struct.info, %struct.info* %arrayidx11, i32 0, i32 0
  %17 = load i32, i32* %wins12, align 4
  %18 = load i32, i32* %team1.addr, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.info, %struct.info* %19, i64 %idxprom13
  %loses15 = getelementptr inbounds %struct.info, %struct.info* %arrayidx14, i32 0, i32 1
  %20 = load i32, i32* %loses15, align 4
  %add16 = add nsw i32 %17, %20
  %21 = load i32, i32* %team1.addr, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.info, %struct.info* %22, i64 %idxprom17
  %ties19 = getelementptr inbounds %struct.info, %struct.info* %arrayidx18, i32 0, i32 2
  %23 = load i32, i32* %ties19, align 4
  %add20 = add nsw i32 %add16, %23
  %conv21 = sitofp i32 %add20 to double
  %div = fdiv double %conv, %conv21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %div, %cond.false ]
  %24 = load i32, i32* %team2.addr, align 4
  %idxprom22 = sext i32 %24 to i64
  %25 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct.info, %struct.info* %25, i64 %idxprom22
  %wins24 = getelementptr inbounds %struct.info, %struct.info* %arrayidx23, i32 0, i32 0
  %26 = load i32, i32* %wins24, align 4
  %27 = load i32, i32* %team2.addr, align 4
  %idxprom25 = sext i32 %27 to i64
  %28 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct.info, %struct.info* %28, i64 %idxprom25
  %loses27 = getelementptr inbounds %struct.info, %struct.info* %arrayidx26, i32 0, i32 1
  %29 = load i32, i32* %loses27, align 4
  %add28 = add nsw i32 %26, %29
  %30 = load i32, i32* %team2.addr, align 4
  %idxprom29 = sext i32 %30 to i64
  %31 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.info, %struct.info* %31, i64 %idxprom29
  %ties31 = getelementptr inbounds %struct.info, %struct.info* %arrayidx30, i32 0, i32 2
  %32 = load i32, i32* %ties31, align 4
  %add32 = add nsw i32 %add28, %32
  %cmp33 = icmp eq i32 %add32, 0
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.end
  br label %cond.end.58

cond.false.36:                                    ; preds = %cond.end
  %33 = load i32, i32* %team2.addr, align 4
  %idxprom37 = sext i32 %33 to i64
  %34 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.info, %struct.info* %34, i64 %idxprom37
  %points_for39 = getelementptr inbounds %struct.info, %struct.info* %arrayidx38, i32 0, i32 3
  %35 = load i32, i32* %points_for39, align 4
  %36 = load i32, i32* %team2.addr, align 4
  %idxprom40 = sext i32 %36 to i64
  %37 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct.info, %struct.info* %37, i64 %idxprom40
  %points_against42 = getelementptr inbounds %struct.info, %struct.info* %arrayidx41, i32 0, i32 4
  %38 = load i32, i32* %points_against42, align 4
  %sub43 = sub nsw i32 %35, %38
  %conv44 = sitofp i32 %sub43 to double
  %39 = load i32, i32* %team2.addr, align 4
  %idxprom45 = sext i32 %39 to i64
  %40 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.info, %struct.info* %40, i64 %idxprom45
  %wins47 = getelementptr inbounds %struct.info, %struct.info* %arrayidx46, i32 0, i32 0
  %41 = load i32, i32* %wins47, align 4
  %42 = load i32, i32* %team2.addr, align 4
  %idxprom48 = sext i32 %42 to i64
  %43 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct.info, %struct.info* %43, i64 %idxprom48
  %loses50 = getelementptr inbounds %struct.info, %struct.info* %arrayidx49, i32 0, i32 1
  %44 = load i32, i32* %loses50, align 4
  %add51 = add nsw i32 %41, %44
  %45 = load i32, i32* %team2.addr, align 4
  %idxprom52 = sext i32 %45 to i64
  %46 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct.info, %struct.info* %46, i64 %idxprom52
  %ties54 = getelementptr inbounds %struct.info, %struct.info* %arrayidx53, i32 0, i32 2
  %47 = load i32, i32* %ties54, align 4
  %add55 = add nsw i32 %add51, %47
  %conv56 = sitofp i32 %add55 to double
  %div57 = fdiv double %conv44, %conv56
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.36, %cond.true.35
  %cond59 = phi double [ 0.000000e+00, %cond.true.35 ], [ %div57, %cond.false.36 ]
  %cmp60 = fcmp une double %cond, %cond59
  br i1 %cmp60, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.58
  %48 = load i32, i32* %team1.addr, align 4
  %idxprom62 = sext i32 %48 to i64
  %49 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx63 = getelementptr inbounds %struct.info, %struct.info* %49, i64 %idxprom62
  %wins64 = getelementptr inbounds %struct.info, %struct.info* %arrayidx63, i32 0, i32 0
  %50 = load i32, i32* %wins64, align 4
  %51 = load i32, i32* %team1.addr, align 4
  %idxprom65 = sext i32 %51 to i64
  %52 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct.info, %struct.info* %52, i64 %idxprom65
  %loses67 = getelementptr inbounds %struct.info, %struct.info* %arrayidx66, i32 0, i32 1
  %53 = load i32, i32* %loses67, align 4
  %add68 = add nsw i32 %50, %53
  %54 = load i32, i32* %team1.addr, align 4
  %idxprom69 = sext i32 %54 to i64
  %55 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct.info, %struct.info* %55, i64 %idxprom69
  %ties71 = getelementptr inbounds %struct.info, %struct.info* %arrayidx70, i32 0, i32 2
  %56 = load i32, i32* %ties71, align 4
  %add72 = add nsw i32 %add68, %56
  %cmp73 = icmp eq i32 %add72, 0
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %if.then
  br label %cond.end.98

cond.false.76:                                    ; preds = %if.then
  %57 = load i32, i32* %team1.addr, align 4
  %idxprom77 = sext i32 %57 to i64
  %58 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx78 = getelementptr inbounds %struct.info, %struct.info* %58, i64 %idxprom77
  %points_for79 = getelementptr inbounds %struct.info, %struct.info* %arrayidx78, i32 0, i32 3
  %59 = load i32, i32* %points_for79, align 4
  %60 = load i32, i32* %team1.addr, align 4
  %idxprom80 = sext i32 %60 to i64
  %61 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx81 = getelementptr inbounds %struct.info, %struct.info* %61, i64 %idxprom80
  %points_against82 = getelementptr inbounds %struct.info, %struct.info* %arrayidx81, i32 0, i32 4
  %62 = load i32, i32* %points_against82, align 4
  %sub83 = sub nsw i32 %59, %62
  %conv84 = sitofp i32 %sub83 to double
  %63 = load i32, i32* %team1.addr, align 4
  %idxprom85 = sext i32 %63 to i64
  %64 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx86 = getelementptr inbounds %struct.info, %struct.info* %64, i64 %idxprom85
  %wins87 = getelementptr inbounds %struct.info, %struct.info* %arrayidx86, i32 0, i32 0
  %65 = load i32, i32* %wins87, align 4
  %66 = load i32, i32* %team1.addr, align 4
  %idxprom88 = sext i32 %66 to i64
  %67 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx89 = getelementptr inbounds %struct.info, %struct.info* %67, i64 %idxprom88
  %loses90 = getelementptr inbounds %struct.info, %struct.info* %arrayidx89, i32 0, i32 1
  %68 = load i32, i32* %loses90, align 4
  %add91 = add nsw i32 %65, %68
  %69 = load i32, i32* %team1.addr, align 4
  %idxprom92 = sext i32 %69 to i64
  %70 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx93 = getelementptr inbounds %struct.info, %struct.info* %70, i64 %idxprom92
  %ties94 = getelementptr inbounds %struct.info, %struct.info* %arrayidx93, i32 0, i32 2
  %71 = load i32, i32* %ties94, align 4
  %add95 = add nsw i32 %add91, %71
  %conv96 = sitofp i32 %add95 to double
  %div97 = fdiv double %conv84, %conv96
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.76, %cond.true.75
  %cond99 = phi double [ 0.000000e+00, %cond.true.75 ], [ %div97, %cond.false.76 ]
  %72 = load i32, i32* %team2.addr, align 4
  %idxprom100 = sext i32 %72 to i64
  %73 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx101 = getelementptr inbounds %struct.info, %struct.info* %73, i64 %idxprom100
  %wins102 = getelementptr inbounds %struct.info, %struct.info* %arrayidx101, i32 0, i32 0
  %74 = load i32, i32* %wins102, align 4
  %75 = load i32, i32* %team2.addr, align 4
  %idxprom103 = sext i32 %75 to i64
  %76 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx104 = getelementptr inbounds %struct.info, %struct.info* %76, i64 %idxprom103
  %loses105 = getelementptr inbounds %struct.info, %struct.info* %arrayidx104, i32 0, i32 1
  %77 = load i32, i32* %loses105, align 4
  %add106 = add nsw i32 %74, %77
  %78 = load i32, i32* %team2.addr, align 4
  %idxprom107 = sext i32 %78 to i64
  %79 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx108 = getelementptr inbounds %struct.info, %struct.info* %79, i64 %idxprom107
  %ties109 = getelementptr inbounds %struct.info, %struct.info* %arrayidx108, i32 0, i32 2
  %80 = load i32, i32* %ties109, align 4
  %add110 = add nsw i32 %add106, %80
  %cmp111 = icmp eq i32 %add110, 0
  br i1 %cmp111, label %cond.true.113, label %cond.false.114

cond.true.113:                                    ; preds = %cond.end.98
  br label %cond.end.136

cond.false.114:                                   ; preds = %cond.end.98
  %81 = load i32, i32* %team2.addr, align 4
  %idxprom115 = sext i32 %81 to i64
  %82 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx116 = getelementptr inbounds %struct.info, %struct.info* %82, i64 %idxprom115
  %points_for117 = getelementptr inbounds %struct.info, %struct.info* %arrayidx116, i32 0, i32 3
  %83 = load i32, i32* %points_for117, align 4
  %84 = load i32, i32* %team2.addr, align 4
  %idxprom118 = sext i32 %84 to i64
  %85 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx119 = getelementptr inbounds %struct.info, %struct.info* %85, i64 %idxprom118
  %points_against120 = getelementptr inbounds %struct.info, %struct.info* %arrayidx119, i32 0, i32 4
  %86 = load i32, i32* %points_against120, align 4
  %sub121 = sub nsw i32 %83, %86
  %conv122 = sitofp i32 %sub121 to double
  %87 = load i32, i32* %team2.addr, align 4
  %idxprom123 = sext i32 %87 to i64
  %88 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx124 = getelementptr inbounds %struct.info, %struct.info* %88, i64 %idxprom123
  %wins125 = getelementptr inbounds %struct.info, %struct.info* %arrayidx124, i32 0, i32 0
  %89 = load i32, i32* %wins125, align 4
  %90 = load i32, i32* %team2.addr, align 4
  %idxprom126 = sext i32 %90 to i64
  %91 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx127 = getelementptr inbounds %struct.info, %struct.info* %91, i64 %idxprom126
  %loses128 = getelementptr inbounds %struct.info, %struct.info* %arrayidx127, i32 0, i32 1
  %92 = load i32, i32* %loses128, align 4
  %add129 = add nsw i32 %89, %92
  %93 = load i32, i32* %team2.addr, align 4
  %idxprom130 = sext i32 %93 to i64
  %94 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx131 = getelementptr inbounds %struct.info, %struct.info* %94, i64 %idxprom130
  %ties132 = getelementptr inbounds %struct.info, %struct.info* %arrayidx131, i32 0, i32 2
  %95 = load i32, i32* %ties132, align 4
  %add133 = add nsw i32 %add129, %95
  %conv134 = sitofp i32 %add133 to double
  %div135 = fdiv double %conv122, %conv134
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.114, %cond.true.113
  %cond137 = phi double [ 0.000000e+00, %cond.true.113 ], [ %div135, %cond.false.114 ]
  %cmp138 = fcmp ogt double %cond99, %cond137
  %conv139 = zext i1 %cmp138 to i32
  store i32 %conv139, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.58
  %96 = load i32, i32* %team1.addr, align 4
  %97 = load i32, i32* %team2.addr, align 4
  %cmp140 = icmp slt i32 %96, %97
  %conv141 = zext i1 %cmp140 to i32
  store i32 %conv141, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %cond.end.136
  %98 = load i32, i32* %retval
  ret i32 %98
}

; Function Attrs: nounwind uwtable
define i32 @net_lt(%struct.info* %info, i32 %team1, i32 %team2) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.info*, align 8
  %team1.addr = alloca i32, align 4
  %team2.addr = alloca i32, align 4
  store %struct.info* %info, %struct.info** %info.addr, align 8
  store i32 %team1, i32* %team1.addr, align 4
  store i32 %team2, i32* %team2.addr, align 4
  %0 = load i32, i32* %team1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  %1 = load i32, i32* %arrayidx1, align 4
  %2 = load i32, i32* %team2.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx3, i32 0, i64 0
  %3 = load i32, i32* %arrayidx4, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %team1.addr, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx6, i32 0, i64 0
  %5 = load i32, i32* %arrayidx7, align 4
  %6 = load i32, i32* %team2.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx9, i32 0, i64 0
  %7 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp slt i32 %5, %7
  %conv = zext i1 %cmp11 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.info*, %struct.info** %info.addr, align 8
  %9 = load i32, i32* %team1.addr, align 4
  %10 = load i32, i32* %team2.addr, align 4
  %call = call i32 @net_nfl_lt(%struct.info* %8, i32 %9, i32 %10)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @tied(%struct.info* %info, i32 %team1, i32 %team2) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.info*, align 8
  %team1.addr = alloca i32, align 4
  %team2.addr = alloca i32, align 4
  store %struct.info* %info, %struct.info** %info.addr, align 8
  store i32 %team1, i32* %team1.addr, align 4
  store i32 %team2, i32* %team2.addr, align 4
  %0 = load i32, i32* %team1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx = getelementptr inbounds %struct.info, %struct.info* %1, i64 %idxprom
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %wins, align 4
  %3 = load i32, i32* %team1.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.info, %struct.info* %4, i64 %idxprom1
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %loses, align 4
  %add = add nsw i32 %2, %5
  %6 = load i32, i32* %team1.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.info, %struct.info* %7, i64 %idxprom3
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx4, i32 0, i32 2
  %8 = load i32, i32* %ties, align 4
  %add5 = add nsw i32 %add, %8
  %cmp = icmp eq i32 %add5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %team1.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.info, %struct.info* %10, i64 %idxprom6
  %wins8 = getelementptr inbounds %struct.info, %struct.info* %arrayidx7, i32 0, i32 0
  %11 = load i32, i32* %wins8, align 4
  %conv = sitofp i32 %11 to double
  %12 = load i32, i32* %team1.addr, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.info, %struct.info* %13, i64 %idxprom9
  %ties11 = getelementptr inbounds %struct.info, %struct.info* %arrayidx10, i32 0, i32 2
  %14 = load i32, i32* %ties11, align 4
  %conv12 = sitofp i32 %14 to double
  %mul = fmul double 5.000000e-01, %conv12
  %add13 = fadd double %conv, %mul
  %15 = load i32, i32* %team1.addr, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.info, %struct.info* %16, i64 %idxprom14
  %wins16 = getelementptr inbounds %struct.info, %struct.info* %arrayidx15, i32 0, i32 0
  %17 = load i32, i32* %wins16, align 4
  %18 = load i32, i32* %team1.addr, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.info, %struct.info* %19, i64 %idxprom17
  %loses19 = getelementptr inbounds %struct.info, %struct.info* %arrayidx18, i32 0, i32 1
  %20 = load i32, i32* %loses19, align 4
  %add20 = add nsw i32 %17, %20
  %21 = load i32, i32* %team1.addr, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct.info, %struct.info* %22, i64 %idxprom21
  %ties23 = getelementptr inbounds %struct.info, %struct.info* %arrayidx22, i32 0, i32 2
  %23 = load i32, i32* %ties23, align 4
  %add24 = add nsw i32 %add20, %23
  %conv25 = sitofp i32 %add24 to double
  %div = fdiv double %add13, %conv25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %div, %cond.false ]
  %24 = load i32, i32* %team2.addr, align 4
  %idxprom26 = sext i32 %24 to i64
  %25 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct.info, %struct.info* %25, i64 %idxprom26
  %wins28 = getelementptr inbounds %struct.info, %struct.info* %arrayidx27, i32 0, i32 0
  %26 = load i32, i32* %wins28, align 4
  %27 = load i32, i32* %team2.addr, align 4
  %idxprom29 = sext i32 %27 to i64
  %28 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.info, %struct.info* %28, i64 %idxprom29
  %loses31 = getelementptr inbounds %struct.info, %struct.info* %arrayidx30, i32 0, i32 1
  %29 = load i32, i32* %loses31, align 4
  %add32 = add nsw i32 %26, %29
  %30 = load i32, i32* %team2.addr, align 4
  %idxprom33 = sext i32 %30 to i64
  %31 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct.info, %struct.info* %31, i64 %idxprom33
  %ties35 = getelementptr inbounds %struct.info, %struct.info* %arrayidx34, i32 0, i32 2
  %32 = load i32, i32* %ties35, align 4
  %add36 = add nsw i32 %add32, %32
  %cmp37 = icmp eq i32 %add36, 0
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.end
  br label %cond.end.64

cond.false.40:                                    ; preds = %cond.end
  %33 = load i32, i32* %team2.addr, align 4
  %idxprom41 = sext i32 %33 to i64
  %34 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct.info, %struct.info* %34, i64 %idxprom41
  %wins43 = getelementptr inbounds %struct.info, %struct.info* %arrayidx42, i32 0, i32 0
  %35 = load i32, i32* %wins43, align 4
  %conv44 = sitofp i32 %35 to double
  %36 = load i32, i32* %team2.addr, align 4
  %idxprom45 = sext i32 %36 to i64
  %37 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.info, %struct.info* %37, i64 %idxprom45
  %ties47 = getelementptr inbounds %struct.info, %struct.info* %arrayidx46, i32 0, i32 2
  %38 = load i32, i32* %ties47, align 4
  %conv48 = sitofp i32 %38 to double
  %mul49 = fmul double 5.000000e-01, %conv48
  %add50 = fadd double %conv44, %mul49
  %39 = load i32, i32* %team2.addr, align 4
  %idxprom51 = sext i32 %39 to i64
  %40 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct.info, %struct.info* %40, i64 %idxprom51
  %wins53 = getelementptr inbounds %struct.info, %struct.info* %arrayidx52, i32 0, i32 0
  %41 = load i32, i32* %wins53, align 4
  %42 = load i32, i32* %team2.addr, align 4
  %idxprom54 = sext i32 %42 to i64
  %43 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct.info, %struct.info* %43, i64 %idxprom54
  %loses56 = getelementptr inbounds %struct.info, %struct.info* %arrayidx55, i32 0, i32 1
  %44 = load i32, i32* %loses56, align 4
  %add57 = add nsw i32 %41, %44
  %45 = load i32, i32* %team2.addr, align 4
  %idxprom58 = sext i32 %45 to i64
  %46 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct.info, %struct.info* %46, i64 %idxprom58
  %ties60 = getelementptr inbounds %struct.info, %struct.info* %arrayidx59, i32 0, i32 2
  %47 = load i32, i32* %ties60, align 4
  %add61 = add nsw i32 %add57, %47
  %conv62 = sitofp i32 %add61 to double
  %div63 = fdiv double %add50, %conv62
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.40, %cond.true.39
  %cond65 = phi double [ 0.000000e+00, %cond.true.39 ], [ %div63, %cond.false.40 ]
  %cmp66 = fcmp une double %cond, %cond65
  br i1 %cmp66, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.64
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.64
  %48 = load i32, i32* %team1.addr, align 4
  %idxprom68 = sext i32 %48 to i64
  %49 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct.info, %struct.info* %49, i64 %idxprom68
  %loses70 = getelementptr inbounds %struct.info, %struct.info* %arrayidx69, i32 0, i32 1
  %50 = load i32, i32* %loses70, align 4
  %cmp71 = icmp eq i32 %50, 0
  br i1 %cmp71, label %land.lhs.true, label %if.end.87

land.lhs.true:                                    ; preds = %if.end
  %51 = load i32, i32* %team2.addr, align 4
  %idxprom73 = sext i32 %51 to i64
  %52 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx74 = getelementptr inbounds %struct.info, %struct.info* %52, i64 %idxprom73
  %loses75 = getelementptr inbounds %struct.info, %struct.info* %arrayidx74, i32 0, i32 1
  %53 = load i32, i32* %loses75, align 4
  %cmp76 = icmp eq i32 %53, 0
  br i1 %cmp76, label %if.then.78, label %if.end.87

if.then.78:                                       ; preds = %land.lhs.true
  %54 = load i32, i32* %team1.addr, align 4
  %idxprom79 = sext i32 %54 to i64
  %55 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx80 = getelementptr inbounds %struct.info, %struct.info* %55, i64 %idxprom79
  %wins81 = getelementptr inbounds %struct.info, %struct.info* %arrayidx80, i32 0, i32 0
  %56 = load i32, i32* %wins81, align 4
  %57 = load i32, i32* %team2.addr, align 4
  %idxprom82 = sext i32 %57 to i64
  %58 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx83 = getelementptr inbounds %struct.info, %struct.info* %58, i64 %idxprom82
  %wins84 = getelementptr inbounds %struct.info, %struct.info* %arrayidx83, i32 0, i32 0
  %59 = load i32, i32* %wins84, align 4
  %cmp85 = icmp eq i32 %56, %59
  %conv86 = zext i1 %cmp85 to i32
  store i32 %conv86, i32* %retval
  br label %return

if.end.87:                                        ; preds = %land.lhs.true, %if.end
  %60 = load i32, i32* %team1.addr, align 4
  %idxprom88 = sext i32 %60 to i64
  %61 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx89 = getelementptr inbounds %struct.info, %struct.info* %61, i64 %idxprom88
  %wins90 = getelementptr inbounds %struct.info, %struct.info* %arrayidx89, i32 0, i32 0
  %62 = load i32, i32* %wins90, align 4
  %cmp91 = icmp eq i32 %62, 0
  br i1 %cmp91, label %land.lhs.true.93, label %if.end.108

land.lhs.true.93:                                 ; preds = %if.end.87
  %63 = load i32, i32* %team2.addr, align 4
  %idxprom94 = sext i32 %63 to i64
  %64 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx95 = getelementptr inbounds %struct.info, %struct.info* %64, i64 %idxprom94
  %wins96 = getelementptr inbounds %struct.info, %struct.info* %arrayidx95, i32 0, i32 0
  %65 = load i32, i32* %wins96, align 4
  %cmp97 = icmp eq i32 %65, 0
  br i1 %cmp97, label %if.then.99, label %if.end.108

if.then.99:                                       ; preds = %land.lhs.true.93
  %66 = load i32, i32* %team1.addr, align 4
  %idxprom100 = sext i32 %66 to i64
  %67 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx101 = getelementptr inbounds %struct.info, %struct.info* %67, i64 %idxprom100
  %loses102 = getelementptr inbounds %struct.info, %struct.info* %arrayidx101, i32 0, i32 1
  %68 = load i32, i32* %loses102, align 4
  %69 = load i32, i32* %team2.addr, align 4
  %idxprom103 = sext i32 %69 to i64
  %70 = load %struct.info*, %struct.info** %info.addr, align 8
  %arrayidx104 = getelementptr inbounds %struct.info, %struct.info* %70, i64 %idxprom103
  %loses105 = getelementptr inbounds %struct.info, %struct.info* %arrayidx104, i32 0, i32 1
  %71 = load i32, i32* %loses105, align 4
  %cmp106 = icmp eq i32 %68, %71
  %conv107 = zext i1 %cmp106 to i32
  store i32 %conv107, i32* %retval
  br label %return

if.end.108:                                       ; preds = %land.lhs.true.93, %if.end.87
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.108, %if.then.99, %if.then.78, %if.then
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define void @break_ties(%struct.info* %info, i32* %rank, i32 %within, i32 %display) #0 {
entry:
  %info.addr = alloca %struct.info*, align 8
  %rank.addr = alloca i32*, align 8
  %within.addr = alloca i32, align 4
  %display.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %first_of_equals = alloca i32, align 4
  %team_c = alloca i32, align 4
  %afc = alloca i32, align 4
  %nfc = alloca i32, align 4
  store %struct.info* %info, %struct.info** %info.addr, align 8
  store i32* %rank, i32** %rank.addr, align 8
  store i32 %within, i32* %within.addr, align 4
  store i32 %display, i32* %display.addr, align 4
  %0 = load i32, i32* %within.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %display.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* @nfc_west_champ, align 4
  store i32 0, i32* @nfc_central_champ, align 4
  store i32 0, i32* @nfc_east_champ, align 4
  store i32 0, i32* @afc_west_champ, align 4
  store i32 0, i32* @afc_central_champ, align 4
  store i32 0, i32* @afc_east_champ, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, i32* %within.addr, align 4
  %cmp1 = icmp ne i32 %2, 2
  br i1 %cmp1, label %land.lhs.true.2, label %if.end.5

land.lhs.true.2:                                  ; preds = %if.end
  %3 = load i32, i32* %display.addr, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true.2
  store i32 0, i32* @nfc_wild_card3, align 4
  store i32 0, i32* @nfc_wild_card2, align 4
  store i32 0, i32* @nfc_wild_card1, align 4
  store i32 0, i32* @afc_wild_card3, align 4
  store i32 0, i32* @afc_wild_card2, align 4
  store i32 0, i32* @afc_wild_card1, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %land.lhs.true.2, %if.end
  store i32 1, i32* %first_of_equals, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %4 = load i32, i32* %i, align 4
  %cmp6 = icmp sle i32 %4, 28
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %cmp7 = icmp eq i32 %5, 28
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br i1 false, label %if.end.96, label %if.then.82

cond.false:                                       ; preds = %for.body
  %6 = load %struct.info*, %struct.info** %info.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %rank.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load i32, i32* %i, align 4
  %add = add nsw i32 %10, 1
  %idxprom8 = sext i32 %add to i64
  %11 = load i32*, i32** %rank.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %11, i64 %idxprom8
  %12 = load i32, i32* %arrayidx9, align 4
  %call = call i32 @tied(%struct.info* %6, i32 %9, i32 %12)
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %cond.true.11, label %cond.false.81

cond.true.11:                                     ; preds = %cond.false
  %13 = load i32, i32* %within.addr, align 4
  %cmp12 = icmp eq i32 %13, 1
  br i1 %cmp12, label %cond.true.13, label %cond.false.39

cond.true.13:                                     ; preds = %cond.true.11
  %14 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load i32*, i32** %rank.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %15, i64 %idxprom14
  %16 = load i32, i32* %arrayidx15, align 4
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx17, i32 0, i64 1
  %17 = load i32, i32* %arrayidx18, align 4
  %18 = load i32, i32* %i, align 4
  %add19 = add nsw i32 %18, 1
  %idxprom20 = sext i32 %add19 to i64
  %19 = load i32*, i32** %rank.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %19, i64 %idxprom20
  %20 = load i32, i32* %arrayidx21, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx23, i32 0, i64 1
  %21 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp eq i32 %17, %21
  br i1 %cmp25, label %land.lhs.true.26, label %if.then.82

land.lhs.true.26:                                 ; preds = %cond.true.13
  %22 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %22 to i64
  %23 = load i32*, i32** %rank.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %23, i64 %idxprom27
  %24 = load i32, i32* %arrayidx28, align 4
  %idxprom29 = sext i32 %24 to i64
  %arrayidx30 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx30, i32 0, i64 0
  %25 = load i32, i32* %arrayidx31, align 4
  %26 = load i32, i32* %i, align 4
  %add32 = add nsw i32 %26, 1
  %idxprom33 = sext i32 %add32 to i64
  %27 = load i32*, i32** %rank.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %27, i64 %idxprom33
  %28 = load i32, i32* %arrayidx34, align 4
  %idxprom35 = sext i32 %28 to i64
  %arrayidx36 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx36, i32 0, i64 0
  %29 = load i32, i32* %arrayidx37, align 4
  %cmp38 = icmp eq i32 %25, %29
  br i1 %cmp38, label %if.end.96, label %if.then.82

cond.false.39:                                    ; preds = %cond.true.11
  %30 = load i32, i32* %within.addr, align 4
  %cmp40 = icmp eq i32 %30, 0
  br i1 %cmp40, label %cond.true.41, label %cond.false.63

cond.true.41:                                     ; preds = %cond.false.39
  %31 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %31 to i64
  %32 = load i32*, i32** %rank.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %32, i64 %idxprom42
  %33 = load i32, i32* %arrayidx43, align 4
  %idxprom44 = sext i32 %33 to i64
  %arrayidx45 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx45, i32 0, i64 0
  %34 = load i32, i32* %arrayidx46, align 4
  %35 = load i32, i32* %i, align 4
  %add47 = add nsw i32 %35, 1
  %idxprom48 = sext i32 %add47 to i64
  %36 = load i32*, i32** %rank.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %36, i64 %idxprom48
  %37 = load i32, i32* %arrayidx49, align 4
  %idxprom50 = sext i32 %37 to i64
  %arrayidx51 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom50
  %arrayidx52 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx51, i32 0, i64 0
  %38 = load i32, i32* %arrayidx52, align 4
  %cmp53 = icmp eq i32 %34, %38
  br i1 %cmp53, label %land.lhs.true.54, label %if.then.82

land.lhs.true.54:                                 ; preds = %cond.true.41
  %39 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %39 to i64
  %40 = load i32*, i32** %rank.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %40, i64 %idxprom55
  %41 = load i32, i32* %arrayidx56, align 4
  %call57 = call i32 @a_champ(i32 %41)
  %42 = load i32, i32* %i, align 4
  %add58 = add nsw i32 %42, 1
  %idxprom59 = sext i32 %add58 to i64
  %43 = load i32*, i32** %rank.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %43, i64 %idxprom59
  %44 = load i32, i32* %arrayidx60, align 4
  %call61 = call i32 @a_champ(i32 %44)
  %cmp62 = icmp eq i32 %call57, %call61
  br i1 %cmp62, label %if.end.96, label %if.then.82

cond.false.63:                                    ; preds = %cond.false.39
  %45 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %45 to i64
  %46 = load i32*, i32** %rank.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %46, i64 %idxprom64
  %47 = load i32, i32* %arrayidx65, align 4
  %call66 = call i32 @a_champ(i32 %47)
  %48 = load i32, i32* %i, align 4
  %add67 = add nsw i32 %48, 1
  %idxprom68 = sext i32 %add67 to i64
  %49 = load i32*, i32** %rank.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %49, i64 %idxprom68
  %50 = load i32, i32* %arrayidx69, align 4
  %call70 = call i32 @a_champ(i32 %50)
  %cmp71 = icmp eq i32 %call66, %call70
  br i1 %cmp71, label %land.lhs.true.72, label %if.then.82

land.lhs.true.72:                                 ; preds = %cond.false.63
  %51 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %51 to i64
  %52 = load i32*, i32** %rank.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %52, i64 %idxprom73
  %53 = load i32, i32* %arrayidx74, align 4
  %call75 = call i32 @a_wild_card(i32 %53)
  %54 = load i32, i32* %i, align 4
  %add76 = add nsw i32 %54, 1
  %idxprom77 = sext i32 %add76 to i64
  %55 = load i32*, i32** %rank.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %55, i64 %idxprom77
  %56 = load i32, i32* %arrayidx78, align 4
  %call79 = call i32 @a_wild_card(i32 %56)
  %cmp80 = icmp eq i32 %call75, %call79
  br i1 %cmp80, label %if.end.96, label %if.then.82

cond.false.81:                                    ; preds = %cond.false
  br i1 false, label %if.end.96, label %if.then.82

if.then.82:                                       ; preds = %cond.false.81, %land.lhs.true.72, %cond.false.63, %land.lhs.true.54, %cond.true.41, %land.lhs.true.26, %cond.true.13, %cond.true
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %first_of_equals, align 4
  %cmp83 = icmp ne i32 %57, %58
  br i1 %cmp83, label %if.then.84, label %if.end.94

if.then.84:                                       ; preds = %if.then.82
  %59 = load i32, i32* %first_of_equals, align 4
  %idxprom85 = sext i32 %59 to i64
  %60 = load i32*, i32** %rank.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %60, i64 %idxprom85
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %first_of_equals, align 4
  %sub = sub nsw i32 %61, %62
  %add87 = add nsw i32 %sub, 1
  %63 = load i32, i32* %display.addr, align 4
  call void @break_a_tie(i32* %arrayidx86, i32 %add87, i32 %63)
  %64 = load i32, i32* %display.addr, align 4
  %tobool88 = icmp ne i32 %64, 0
  br i1 %tobool88, label %if.then.89, label %if.end.93

if.then.89:                                       ; preds = %if.then.84
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @prompt(%struct._IO_FILE* %65, %struct._IO_FILE* %66)
  %67 = load i32, i32* @got_unused_responce, align 4
  %tobool90 = icmp ne i32 %67, 0
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.then.89
  store i32 0, i32* %display.addr, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.then.89
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.84
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.82
  %68 = load i32, i32* %i, align 4
  %add95 = add nsw i32 %68, 1
  store i32 %add95, i32* %first_of_equals, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.94, %cond.false.81, %land.lhs.true.72, %land.lhs.true.54, %land.lhs.true.26, %cond.true
  br label %for.inc

for.inc:                                          ; preds = %if.end.96
  %69 = load i32, i32* %i, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %nfc, align 4
  store i32 0, i32* %afc, align 4
  %70 = load i32, i32* %within.addr, align 4
  %cmp97 = icmp eq i32 %70, 1
  br i1 %cmp97, label %if.then.98, label %if.else

if.then.98:                                       ; preds = %for.end
  store i32 1, i32* %team_c, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.216, %if.then.98
  %71 = load i32, i32* %team_c, align 4
  %cmp100 = icmp sle i32 %71, 28
  br i1 %cmp100, label %for.body.101, label %for.end.218

for.body.101:                                     ; preds = %for.cond.99
  %72 = load i32, i32* @nfc_east_champ, align 4
  %cmp102 = icmp eq i32 %72, 0
  br i1 %cmp102, label %land.lhs.true.103, label %if.end.120

land.lhs.true.103:                                ; preds = %for.body.101
  %73 = load i32, i32* %team_c, align 4
  %idxprom104 = sext i32 %73 to i64
  %74 = load i32*, i32** %rank.addr, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %74, i64 %idxprom104
  %75 = load i32, i32* %arrayidx105, align 4
  %idxprom106 = sext i32 %75 to i64
  %arrayidx107 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom106
  %arrayidx108 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx107, i32 0, i64 0
  %76 = load i32, i32* %arrayidx108, align 4
  %cmp109 = icmp eq i32 %76, 0
  br i1 %cmp109, label %land.lhs.true.110, label %if.end.120

land.lhs.true.110:                                ; preds = %land.lhs.true.103
  %77 = load i32, i32* %team_c, align 4
  %idxprom111 = sext i32 %77 to i64
  %78 = load i32*, i32** %rank.addr, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %78, i64 %idxprom111
  %79 = load i32, i32* %arrayidx112, align 4
  %idxprom113 = sext i32 %79 to i64
  %arrayidx114 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom113
  %arrayidx115 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx114, i32 0, i64 1
  %80 = load i32, i32* %arrayidx115, align 4
  %cmp116 = icmp eq i32 %80, 0
  br i1 %cmp116, label %if.then.117, label %if.end.120

if.then.117:                                      ; preds = %land.lhs.true.110
  %81 = load i32, i32* %team_c, align 4
  %idxprom118 = sext i32 %81 to i64
  %82 = load i32*, i32** %rank.addr, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %82, i64 %idxprom118
  %83 = load i32, i32* %arrayidx119, align 4
  store i32 %83, i32* @nfc_east_champ, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.117, %land.lhs.true.110, %land.lhs.true.103, %for.body.101
  %84 = load i32, i32* @nfc_central_champ, align 4
  %cmp121 = icmp eq i32 %84, 0
  br i1 %cmp121, label %land.lhs.true.122, label %if.end.139

land.lhs.true.122:                                ; preds = %if.end.120
  %85 = load i32, i32* %team_c, align 4
  %idxprom123 = sext i32 %85 to i64
  %86 = load i32*, i32** %rank.addr, align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %86, i64 %idxprom123
  %87 = load i32, i32* %arrayidx124, align 4
  %idxprom125 = sext i32 %87 to i64
  %arrayidx126 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom125
  %arrayidx127 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx126, i32 0, i64 0
  %88 = load i32, i32* %arrayidx127, align 4
  %cmp128 = icmp eq i32 %88, 0
  br i1 %cmp128, label %land.lhs.true.129, label %if.end.139

land.lhs.true.129:                                ; preds = %land.lhs.true.122
  %89 = load i32, i32* %team_c, align 4
  %idxprom130 = sext i32 %89 to i64
  %90 = load i32*, i32** %rank.addr, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %90, i64 %idxprom130
  %91 = load i32, i32* %arrayidx131, align 4
  %idxprom132 = sext i32 %91 to i64
  %arrayidx133 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom132
  %arrayidx134 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx133, i32 0, i64 1
  %92 = load i32, i32* %arrayidx134, align 4
  %cmp135 = icmp eq i32 %92, 1
  br i1 %cmp135, label %if.then.136, label %if.end.139

if.then.136:                                      ; preds = %land.lhs.true.129
  %93 = load i32, i32* %team_c, align 4
  %idxprom137 = sext i32 %93 to i64
  %94 = load i32*, i32** %rank.addr, align 8
  %arrayidx138 = getelementptr inbounds i32, i32* %94, i64 %idxprom137
  %95 = load i32, i32* %arrayidx138, align 4
  store i32 %95, i32* @nfc_central_champ, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.136, %land.lhs.true.129, %land.lhs.true.122, %if.end.120
  %96 = load i32, i32* @nfc_west_champ, align 4
  %cmp140 = icmp eq i32 %96, 0
  br i1 %cmp140, label %land.lhs.true.141, label %if.end.158

land.lhs.true.141:                                ; preds = %if.end.139
  %97 = load i32, i32* %team_c, align 4
  %idxprom142 = sext i32 %97 to i64
  %98 = load i32*, i32** %rank.addr, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %98, i64 %idxprom142
  %99 = load i32, i32* %arrayidx143, align 4
  %idxprom144 = sext i32 %99 to i64
  %arrayidx145 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom144
  %arrayidx146 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx145, i32 0, i64 0
  %100 = load i32, i32* %arrayidx146, align 4
  %cmp147 = icmp eq i32 %100, 0
  br i1 %cmp147, label %land.lhs.true.148, label %if.end.158

land.lhs.true.148:                                ; preds = %land.lhs.true.141
  %101 = load i32, i32* %team_c, align 4
  %idxprom149 = sext i32 %101 to i64
  %102 = load i32*, i32** %rank.addr, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %102, i64 %idxprom149
  %103 = load i32, i32* %arrayidx150, align 4
  %idxprom151 = sext i32 %103 to i64
  %arrayidx152 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom151
  %arrayidx153 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx152, i32 0, i64 1
  %104 = load i32, i32* %arrayidx153, align 4
  %cmp154 = icmp eq i32 %104, 2
  br i1 %cmp154, label %if.then.155, label %if.end.158

if.then.155:                                      ; preds = %land.lhs.true.148
  %105 = load i32, i32* %team_c, align 4
  %idxprom156 = sext i32 %105 to i64
  %106 = load i32*, i32** %rank.addr, align 8
  %arrayidx157 = getelementptr inbounds i32, i32* %106, i64 %idxprom156
  %107 = load i32, i32* %arrayidx157, align 4
  store i32 %107, i32* @nfc_west_champ, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.155, %land.lhs.true.148, %land.lhs.true.141, %if.end.139
  %108 = load i32, i32* @afc_east_champ, align 4
  %cmp159 = icmp eq i32 %108, 0
  br i1 %cmp159, label %land.lhs.true.160, label %if.end.177

land.lhs.true.160:                                ; preds = %if.end.158
  %109 = load i32, i32* %team_c, align 4
  %idxprom161 = sext i32 %109 to i64
  %110 = load i32*, i32** %rank.addr, align 8
  %arrayidx162 = getelementptr inbounds i32, i32* %110, i64 %idxprom161
  %111 = load i32, i32* %arrayidx162, align 4
  %idxprom163 = sext i32 %111 to i64
  %arrayidx164 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom163
  %arrayidx165 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx164, i32 0, i64 0
  %112 = load i32, i32* %arrayidx165, align 4
  %cmp166 = icmp eq i32 %112, 1
  br i1 %cmp166, label %land.lhs.true.167, label %if.end.177

land.lhs.true.167:                                ; preds = %land.lhs.true.160
  %113 = load i32, i32* %team_c, align 4
  %idxprom168 = sext i32 %113 to i64
  %114 = load i32*, i32** %rank.addr, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %114, i64 %idxprom168
  %115 = load i32, i32* %arrayidx169, align 4
  %idxprom170 = sext i32 %115 to i64
  %arrayidx171 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom170
  %arrayidx172 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx171, i32 0, i64 1
  %116 = load i32, i32* %arrayidx172, align 4
  %cmp173 = icmp eq i32 %116, 0
  br i1 %cmp173, label %if.then.174, label %if.end.177

if.then.174:                                      ; preds = %land.lhs.true.167
  %117 = load i32, i32* %team_c, align 4
  %idxprom175 = sext i32 %117 to i64
  %118 = load i32*, i32** %rank.addr, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %118, i64 %idxprom175
  %119 = load i32, i32* %arrayidx176, align 4
  store i32 %119, i32* @afc_east_champ, align 4
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.174, %land.lhs.true.167, %land.lhs.true.160, %if.end.158
  %120 = load i32, i32* @afc_central_champ, align 4
  %cmp178 = icmp eq i32 %120, 0
  br i1 %cmp178, label %land.lhs.true.179, label %if.end.196

land.lhs.true.179:                                ; preds = %if.end.177
  %121 = load i32, i32* %team_c, align 4
  %idxprom180 = sext i32 %121 to i64
  %122 = load i32*, i32** %rank.addr, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %122, i64 %idxprom180
  %123 = load i32, i32* %arrayidx181, align 4
  %idxprom182 = sext i32 %123 to i64
  %arrayidx183 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom182
  %arrayidx184 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx183, i32 0, i64 0
  %124 = load i32, i32* %arrayidx184, align 4
  %cmp185 = icmp eq i32 %124, 1
  br i1 %cmp185, label %land.lhs.true.186, label %if.end.196

land.lhs.true.186:                                ; preds = %land.lhs.true.179
  %125 = load i32, i32* %team_c, align 4
  %idxprom187 = sext i32 %125 to i64
  %126 = load i32*, i32** %rank.addr, align 8
  %arrayidx188 = getelementptr inbounds i32, i32* %126, i64 %idxprom187
  %127 = load i32, i32* %arrayidx188, align 4
  %idxprom189 = sext i32 %127 to i64
  %arrayidx190 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom189
  %arrayidx191 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx190, i32 0, i64 1
  %128 = load i32, i32* %arrayidx191, align 4
  %cmp192 = icmp eq i32 %128, 1
  br i1 %cmp192, label %if.then.193, label %if.end.196

if.then.193:                                      ; preds = %land.lhs.true.186
  %129 = load i32, i32* %team_c, align 4
  %idxprom194 = sext i32 %129 to i64
  %130 = load i32*, i32** %rank.addr, align 8
  %arrayidx195 = getelementptr inbounds i32, i32* %130, i64 %idxprom194
  %131 = load i32, i32* %arrayidx195, align 4
  store i32 %131, i32* @afc_central_champ, align 4
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.193, %land.lhs.true.186, %land.lhs.true.179, %if.end.177
  %132 = load i32, i32* @afc_west_champ, align 4
  %cmp197 = icmp eq i32 %132, 0
  br i1 %cmp197, label %land.lhs.true.198, label %if.end.215

land.lhs.true.198:                                ; preds = %if.end.196
  %133 = load i32, i32* %team_c, align 4
  %idxprom199 = sext i32 %133 to i64
  %134 = load i32*, i32** %rank.addr, align 8
  %arrayidx200 = getelementptr inbounds i32, i32* %134, i64 %idxprom199
  %135 = load i32, i32* %arrayidx200, align 4
  %idxprom201 = sext i32 %135 to i64
  %arrayidx202 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom201
  %arrayidx203 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx202, i32 0, i64 0
  %136 = load i32, i32* %arrayidx203, align 4
  %cmp204 = icmp eq i32 %136, 1
  br i1 %cmp204, label %land.lhs.true.205, label %if.end.215

land.lhs.true.205:                                ; preds = %land.lhs.true.198
  %137 = load i32, i32* %team_c, align 4
  %idxprom206 = sext i32 %137 to i64
  %138 = load i32*, i32** %rank.addr, align 8
  %arrayidx207 = getelementptr inbounds i32, i32* %138, i64 %idxprom206
  %139 = load i32, i32* %arrayidx207, align 4
  %idxprom208 = sext i32 %139 to i64
  %arrayidx209 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom208
  %arrayidx210 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx209, i32 0, i64 1
  %140 = load i32, i32* %arrayidx210, align 4
  %cmp211 = icmp eq i32 %140, 2
  br i1 %cmp211, label %if.then.212, label %if.end.215

if.then.212:                                      ; preds = %land.lhs.true.205
  %141 = load i32, i32* %team_c, align 4
  %idxprom213 = sext i32 %141 to i64
  %142 = load i32*, i32** %rank.addr, align 8
  %arrayidx214 = getelementptr inbounds i32, i32* %142, i64 %idxprom213
  %143 = load i32, i32* %arrayidx214, align 4
  store i32 %143, i32* @afc_west_champ, align 4
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.212, %land.lhs.true.205, %land.lhs.true.198, %if.end.196
  br label %for.inc.216

for.inc.216:                                      ; preds = %if.end.215
  %144 = load i32, i32* %team_c, align 4
  %inc217 = add nsw i32 %144, 1
  store i32 %inc217, i32* %team_c, align 4
  br label %for.cond.99

for.end.218:                                      ; preds = %for.cond.99
  br label %if.end.296

if.else:                                          ; preds = %for.end
  %145 = load i32, i32* %within.addr, align 4
  %cmp219 = icmp eq i32 %145, 0
  br i1 %cmp219, label %if.then.220, label %if.end.295

if.then.220:                                      ; preds = %if.else
  store i32 1, i32* %team_c, align 4
  br label %for.cond.221

for.cond.221:                                     ; preds = %for.inc.292, %if.then.220
  %146 = load i32, i32* %team_c, align 4
  %cmp222 = icmp sle i32 %146, 28
  br i1 %cmp222, label %for.body.223, label %for.end.294

for.body.223:                                     ; preds = %for.cond.221
  %147 = load i32, i32* %team_c, align 4
  %idxprom224 = sext i32 %147 to i64
  %arrayidx225 = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom224
  %148 = load i32, i32* %arrayidx225, align 4
  %idxprom226 = sext i32 %148 to i64
  %arrayidx227 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom226
  %arrayidx228 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx227, i32 0, i64 0
  %149 = load i32, i32* %arrayidx228, align 4
  %cmp229 = icmp eq i32 %149, 0
  br i1 %cmp229, label %if.then.230, label %if.else.260

if.then.230:                                      ; preds = %for.body.223
  %150 = load i32, i32* %team_c, align 4
  %idxprom231 = sext i32 %150 to i64
  %arrayidx232 = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom231
  %151 = load i32, i32* %arrayidx232, align 4
  %call233 = call i32 @a_champ(i32 %151)
  %tobool234 = icmp ne i32 %call233, 0
  br i1 %tobool234, label %if.end.259, label %if.then.235

if.then.235:                                      ; preds = %if.then.230
  %152 = load i32, i32* %nfc, align 4
  %cmp236 = icmp eq i32 %152, 0
  br i1 %cmp236, label %if.then.237, label %if.else.241

if.then.237:                                      ; preds = %if.then.235
  %153 = load i32, i32* %nfc, align 4
  %inc238 = add nsw i32 %153, 1
  store i32 %inc238, i32* %nfc, align 4
  %154 = load i32, i32* %team_c, align 4
  %idxprom239 = sext i32 %154 to i64
  %arrayidx240 = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom239
  %155 = load i32, i32* %arrayidx240, align 4
  store i32 %155, i32* @nfc_wild_card1, align 4
  br label %if.end.258

if.else.241:                                      ; preds = %if.then.235
  %156 = load i32, i32* %nfc, align 4
  %cmp242 = icmp eq i32 %156, 1
  br i1 %cmp242, label %if.then.243, label %if.else.247

if.then.243:                                      ; preds = %if.else.241
  %157 = load i32, i32* %nfc, align 4
  %inc244 = add nsw i32 %157, 1
  store i32 %inc244, i32* %nfc, align 4
  %158 = load i32, i32* %team_c, align 4
  %idxprom245 = sext i32 %158 to i64
  %arrayidx246 = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom245
  %159 = load i32, i32* %arrayidx246, align 4
  store i32 %159, i32* @nfc_wild_card2, align 4
  br label %if.end.257

if.else.247:                                      ; preds = %if.else.241
  %160 = load i32, i32* %nfc, align 4
  %cmp248 = icmp eq i32 %160, 2
  br i1 %cmp248, label %land.lhs.true.249, label %if.end.256

land.lhs.true.249:                                ; preds = %if.else.247
  %161 = load i32, i32* @iyear, align 4
  %cmp250 = icmp sge i32 %161, 90
  br i1 %cmp250, label %if.then.252, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.249
  %162 = load i32, i32* @iyear, align 4
  %cmp251 = icmp sle i32 %162, 70
  br i1 %cmp251, label %if.then.252, label %if.end.256

if.then.252:                                      ; preds = %lor.lhs.false, %land.lhs.true.249
  %163 = load i32, i32* %nfc, align 4
  %inc253 = add nsw i32 %163, 1
  store i32 %inc253, i32* %nfc, align 4
  %164 = load i32, i32* %team_c, align 4
  %idxprom254 = sext i32 %164 to i64
  %arrayidx255 = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom254
  %165 = load i32, i32* %arrayidx255, align 4
  store i32 %165, i32* @nfc_wild_card3, align 4
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.252, %lor.lhs.false, %if.else.247
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256, %if.then.243
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %if.then.237
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %if.then.230
  br label %if.end.291

if.else.260:                                      ; preds = %for.body.223
  %166 = load i32, i32* %team_c, align 4
  %idxprom261 = sext i32 %166 to i64
  %arrayidx262 = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom261
  %167 = load i32, i32* %arrayidx262, align 4
  %call263 = call i32 @a_champ(i32 %167)
  %tobool264 = icmp ne i32 %call263, 0
  br i1 %tobool264, label %if.end.290, label %if.then.265

if.then.265:                                      ; preds = %if.else.260
  %168 = load i32, i32* %afc, align 4
  %cmp266 = icmp eq i32 %168, 0
  br i1 %cmp266, label %if.then.267, label %if.else.271

if.then.267:                                      ; preds = %if.then.265
  %169 = load i32, i32* %afc, align 4
  %inc268 = add nsw i32 %169, 1
  store i32 %inc268, i32* %afc, align 4
  %170 = load i32, i32* %team_c, align 4
  %idxprom269 = sext i32 %170 to i64
  %arrayidx270 = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom269
  %171 = load i32, i32* %arrayidx270, align 4
  store i32 %171, i32* @afc_wild_card1, align 4
  br label %if.end.289

if.else.271:                                      ; preds = %if.then.265
  %172 = load i32, i32* %afc, align 4
  %cmp272 = icmp eq i32 %172, 1
  br i1 %cmp272, label %if.then.273, label %if.else.277

if.then.273:                                      ; preds = %if.else.271
  %173 = load i32, i32* %afc, align 4
  %inc274 = add nsw i32 %173, 1
  store i32 %inc274, i32* %afc, align 4
  %174 = load i32, i32* %team_c, align 4
  %idxprom275 = sext i32 %174 to i64
  %arrayidx276 = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom275
  %175 = load i32, i32* %arrayidx276, align 4
  store i32 %175, i32* @afc_wild_card2, align 4
  br label %if.end.288

if.else.277:                                      ; preds = %if.else.271
  %176 = load i32, i32* %afc, align 4
  %cmp278 = icmp eq i32 %176, 2
  br i1 %cmp278, label %land.lhs.true.279, label %if.end.287

land.lhs.true.279:                                ; preds = %if.else.277
  %177 = load i32, i32* @iyear, align 4
  %cmp280 = icmp sge i32 %177, 90
  br i1 %cmp280, label %if.then.283, label %lor.lhs.false.281

lor.lhs.false.281:                                ; preds = %land.lhs.true.279
  %178 = load i32, i32* @iyear, align 4
  %cmp282 = icmp sle i32 %178, 70
  br i1 %cmp282, label %if.then.283, label %if.end.287

if.then.283:                                      ; preds = %lor.lhs.false.281, %land.lhs.true.279
  %179 = load i32, i32* %afc, align 4
  %inc284 = add nsw i32 %179, 1
  store i32 %inc284, i32* %afc, align 4
  %180 = load i32, i32* %team_c, align 4
  %idxprom285 = sext i32 %180 to i64
  %arrayidx286 = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom285
  %181 = load i32, i32* %arrayidx286, align 4
  store i32 %181, i32* @afc_wild_card3, align 4
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.283, %lor.lhs.false.281, %if.else.277
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %if.then.273
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %if.then.267
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %if.else.260
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.end.259
  br label %for.inc.292

for.inc.292:                                      ; preds = %if.end.291
  %182 = load i32, i32* %team_c, align 4
  %inc293 = add nsw i32 %182, 1
  store i32 %inc293, i32* %team_c, align 4
  br label %for.cond.221

for.end.294:                                      ; preds = %for.cond.221
  br label %if.end.295

if.end.295:                                       ; preds = %for.end.294, %if.else
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %for.end.218
  ret void
}

declare void @break_a_tie(i32*, i32, i32) #1

declare void @prompt(%struct._IO_FILE*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @sort_all() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %flag = alloca i32, align 4
  %temp = alloca i32, align 4
  %i19 = alloca i32, align 4
  %j20 = alloca i32, align 4
  %flag21 = alloca i32, align 4
  %temp22 = alloca i32, align 4
  %i57 = alloca i32, align 4
  %j58 = alloca i32, align 4
  %flag59 = alloca i32, align 4
  %temp60 = alloca i32, align 4
  %i95 = alloca i32, align 4
  %j96 = alloca i32, align 4
  %flag97 = alloca i32, align 4
  %temp98 = alloca i32, align 4
  %i133 = alloca i32, align 4
  %j134 = alloca i32, align 4
  %flag135 = alloca i32, align 4
  %temp136 = alloca i32, align 4
  %i171 = alloca i32, align 4
  %j172 = alloca i32, align 4
  %flag173 = alloca i32, align 4
  %temp174 = alloca i32, align 4
  %i209 = alloca i32, align 4
  %j210 = alloca i32, align 4
  %flag211 = alloca i32, align 4
  %temp212 = alloca i32, align 4
  %i247 = alloca i32, align 4
  %j248 = alloca i32, align 4
  %flag249 = alloca i32, align 4
  %temp250 = alloca i32, align 4
  %i285 = alloca i32, align 4
  %j286 = alloca i32, align 4
  %flag287 = alloca i32, align 4
  %temp288 = alloca i32, align 4
  store i32 1, i32* %flag, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 28
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, i32* %flag, align 4
  %tobool = icmp ne i32 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %2 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %2, label %for.body, label %for.end.18

for.body:                                         ; preds = %land.end
  store i32 0, i32* %flag, align 4
  store i32 28, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %i, align 4
  %cmp2 = icmp sgt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom4 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %call = call i32 @standing_lt(%struct.info* getelementptr inbounds ([29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i32 0), i32 %6, i32 %8)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %9 = load i32, i32* %j, align 4
  %sub7 = sub nsw i32 %9, 1
  %idxprom8 = sext i32 %sub7 to i64
  %arrayidx9 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom8
  %10 = load i32, i32* %arrayidx9, align 4
  store i32 %10, i32* %temp, align 4
  %11 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom10
  %12 = load i32, i32* %arrayidx11, align 4
  %13 = load i32, i32* %j, align 4
  %sub12 = sub nsw i32 %13, 1
  %idxprom13 = sext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom13
  store i32 %12, i32* %arrayidx14, align 4
  %14 = load i32, i32* %temp, align 4
  %15 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom15
  store i32 %14, i32* %arrayidx16, align 4
  store i32 1, i32* %flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %j, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.18:                                       ; preds = %land.end
  call void @break_ties(%struct.info* getelementptr inbounds ([29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i32 0), i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i32 0), i32 1, i32 0)
  store i32 1, i32* %flag21, align 4
  store i32 1, i32* %i19, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.54, %for.end.18
  %18 = load i32, i32* %i19, align 4
  %cmp24 = icmp sle i32 %18, 28
  br i1 %cmp24, label %land.rhs.25, label %land.end.27

land.rhs.25:                                      ; preds = %for.cond.23
  %19 = load i32, i32* %flag21, align 4
  %tobool26 = icmp ne i32 %19, 0
  br label %land.end.27

land.end.27:                                      ; preds = %land.rhs.25, %for.cond.23
  %20 = phi i1 [ false, %for.cond.23 ], [ %tobool26, %land.rhs.25 ]
  br i1 %20, label %for.body.28, label %for.end.56

for.body.28:                                      ; preds = %land.end.27
  store i32 0, i32* %flag21, align 4
  store i32 28, i32* %j20, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.51, %for.body.28
  %21 = load i32, i32* %j20, align 4
  %22 = load i32, i32* %i19, align 4
  %cmp30 = icmp sgt i32 %21, %22
  br i1 %cmp30, label %for.body.31, label %for.end.53

for.body.31:                                      ; preds = %for.cond.29
  %23 = load i32, i32* %j20, align 4
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom32
  %24 = load i32, i32* %arrayidx33, align 4
  %25 = load i32, i32* %j20, align 4
  %sub34 = sub nsw i32 %25, 1
  %idxprom35 = sext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom35
  %26 = load i32, i32* %arrayidx36, align 4
  %call37 = call i32 @conf_standing_lt(%struct.info* getelementptr inbounds ([29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i32 0), i32 %24, i32 %26)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.50

if.then.39:                                       ; preds = %for.body.31
  %27 = load i32, i32* %j20, align 4
  %sub40 = sub nsw i32 %27, 1
  %idxprom41 = sext i32 %sub40 to i64
  %arrayidx42 = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom41
  %28 = load i32, i32* %arrayidx42, align 4
  store i32 %28, i32* %temp22, align 4
  %29 = load i32, i32* %j20, align 4
  %idxprom43 = sext i32 %29 to i64
  %arrayidx44 = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom43
  %30 = load i32, i32* %arrayidx44, align 4
  %31 = load i32, i32* %j20, align 4
  %sub45 = sub nsw i32 %31, 1
  %idxprom46 = sext i32 %sub45 to i64
  %arrayidx47 = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom46
  store i32 %30, i32* %arrayidx47, align 4
  %32 = load i32, i32* %temp22, align 4
  %33 = load i32, i32* %j20, align 4
  %idxprom48 = sext i32 %33 to i64
  %arrayidx49 = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom48
  store i32 %32, i32* %arrayidx49, align 4
  store i32 1, i32* %flag21, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.39, %for.body.31
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %34 = load i32, i32* %j20, align 4
  %dec52 = add nsw i32 %34, -1
  store i32 %dec52, i32* %j20, align 4
  br label %for.cond.29

for.end.53:                                       ; preds = %for.cond.29
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end.53
  %35 = load i32, i32* %i19, align 4
  %inc55 = add nsw i32 %35, 1
  store i32 %inc55, i32* %i19, align 4
  br label %for.cond.23

for.end.56:                                       ; preds = %land.end.27
  call void @break_ties(%struct.info* getelementptr inbounds ([29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i32 0), i32* getelementptr inbounds ([29 x i32], [29 x i32]* @conf_standings, i32 0, i32 0), i32 0, i32 0)
  store i32 1, i32* %flag59, align 4
  store i32 1, i32* %i57, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.92, %for.end.56
  %36 = load i32, i32* %i57, align 4
  %cmp62 = icmp sle i32 %36, 28
  br i1 %cmp62, label %land.rhs.63, label %land.end.65

land.rhs.63:                                      ; preds = %for.cond.61
  %37 = load i32, i32* %flag59, align 4
  %tobool64 = icmp ne i32 %37, 0
  br label %land.end.65

land.end.65:                                      ; preds = %land.rhs.63, %for.cond.61
  %38 = phi i1 [ false, %for.cond.61 ], [ %tobool64, %land.rhs.63 ]
  br i1 %38, label %for.body.66, label %for.end.94

for.body.66:                                      ; preds = %land.end.65
  store i32 0, i32* %flag59, align 4
  store i32 28, i32* %j58, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.89, %for.body.66
  %39 = load i32, i32* %j58, align 4
  %40 = load i32, i32* %i57, align 4
  %cmp68 = icmp sgt i32 %39, %40
  br i1 %cmp68, label %for.body.69, label %for.end.91

for.body.69:                                      ; preds = %for.cond.67
  %41 = load i32, i32* %j58, align 4
  %idxprom70 = sext i32 %41 to i64
  %arrayidx71 = getelementptr inbounds [29 x i32], [29 x i32]* @abs_standings, i32 0, i64 %idxprom70
  %42 = load i32, i32* %arrayidx71, align 4
  %43 = load i32, i32* %j58, align 4
  %sub72 = sub nsw i32 %43, 1
  %idxprom73 = sext i32 %sub72 to i64
  %arrayidx74 = getelementptr inbounds [29 x i32], [29 x i32]* @abs_standings, i32 0, i64 %idxprom73
  %44 = load i32, i32* %arrayidx74, align 4
  %call75 = call i32 @absolute_standing_lt(%struct.info* getelementptr inbounds ([29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i32 0), i32 %42, i32 %44)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.88

if.then.77:                                       ; preds = %for.body.69
  %45 = load i32, i32* %j58, align 4
  %sub78 = sub nsw i32 %45, 1
  %idxprom79 = sext i32 %sub78 to i64
  %arrayidx80 = getelementptr inbounds [29 x i32], [29 x i32]* @abs_standings, i32 0, i64 %idxprom79
  %46 = load i32, i32* %arrayidx80, align 4
  store i32 %46, i32* %temp60, align 4
  %47 = load i32, i32* %j58, align 4
  %idxprom81 = sext i32 %47 to i64
  %arrayidx82 = getelementptr inbounds [29 x i32], [29 x i32]* @abs_standings, i32 0, i64 %idxprom81
  %48 = load i32, i32* %arrayidx82, align 4
  %49 = load i32, i32* %j58, align 4
  %sub83 = sub nsw i32 %49, 1
  %idxprom84 = sext i32 %sub83 to i64
  %arrayidx85 = getelementptr inbounds [29 x i32], [29 x i32]* @abs_standings, i32 0, i64 %idxprom84
  store i32 %48, i32* %arrayidx85, align 4
  %50 = load i32, i32* %temp60, align 4
  %51 = load i32, i32* %j58, align 4
  %idxprom86 = sext i32 %51 to i64
  %arrayidx87 = getelementptr inbounds [29 x i32], [29 x i32]* @abs_standings, i32 0, i64 %idxprom86
  store i32 %50, i32* %arrayidx87, align 4
  store i32 1, i32* %flag59, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.77, %for.body.69
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %52 = load i32, i32* %j58, align 4
  %dec90 = add nsw i32 %52, -1
  store i32 %dec90, i32* %j58, align 4
  br label %for.cond.67

for.end.91:                                       ; preds = %for.cond.67
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.end.91
  %53 = load i32, i32* %i57, align 4
  %inc93 = add nsw i32 %53, 1
  store i32 %inc93, i32* %i57, align 4
  br label %for.cond.61

for.end.94:                                       ; preds = %land.end.65
  call void @break_ties(%struct.info* getelementptr inbounds ([29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i32 0), i32* getelementptr inbounds ([29 x i32], [29 x i32]* @abs_standings, i32 0, i32 0), i32 2, i32 0)
  store i32 1, i32* %flag97, align 4
  store i32 1, i32* %i95, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.130, %for.end.94
  %54 = load i32, i32* %i95, align 4
  %cmp100 = icmp sle i32 %54, 28
  br i1 %cmp100, label %land.rhs.101, label %land.end.103

land.rhs.101:                                     ; preds = %for.cond.99
  %55 = load i32, i32* %flag97, align 4
  %tobool102 = icmp ne i32 %55, 0
  br label %land.end.103

land.end.103:                                     ; preds = %land.rhs.101, %for.cond.99
  %56 = phi i1 [ false, %for.cond.99 ], [ %tobool102, %land.rhs.101 ]
  br i1 %56, label %for.body.104, label %for.end.132

for.body.104:                                     ; preds = %land.end.103
  store i32 0, i32* %flag97, align 4
  store i32 28, i32* %j96, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.127, %for.body.104
  %57 = load i32, i32* %j96, align 4
  %58 = load i32, i32* %i95, align 4
  %cmp106 = icmp sgt i32 %57, %58
  br i1 %cmp106, label %for.body.107, label %for.end.129

for.body.107:                                     ; preds = %for.cond.105
  %59 = load i32, i32* %j96, align 4
  %idxprom108 = sext i32 %59 to i64
  %arrayidx109 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom108
  %60 = load i32, i32* %arrayidx109, align 4
  %61 = load i32, i32* %j96, align 4
  %sub110 = sub nsw i32 %61, 1
  %idxprom111 = sext i32 %sub110 to i64
  %arrayidx112 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom111
  %62 = load i32, i32* %arrayidx112, align 4
  %call113 = call i32 @defence_lt(%struct.info* getelementptr inbounds ([29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i32 0), i32 %60, i32 %62)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then.115, label %if.end.126

if.then.115:                                      ; preds = %for.body.107
  %63 = load i32, i32* %j96, align 4
  %sub116 = sub nsw i32 %63, 1
  %idxprom117 = sext i32 %sub116 to i64
  %arrayidx118 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom117
  %64 = load i32, i32* %arrayidx118, align 4
  store i32 %64, i32* %temp98, align 4
  %65 = load i32, i32* %j96, align 4
  %idxprom119 = sext i32 %65 to i64
  %arrayidx120 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom119
  %66 = load i32, i32* %arrayidx120, align 4
  %67 = load i32, i32* %j96, align 4
  %sub121 = sub nsw i32 %67, 1
  %idxprom122 = sext i32 %sub121 to i64
  %arrayidx123 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom122
  store i32 %66, i32* %arrayidx123, align 4
  %68 = load i32, i32* %temp98, align 4
  %69 = load i32, i32* %j96, align 4
  %idxprom124 = sext i32 %69 to i64
  %arrayidx125 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom124
  store i32 %68, i32* %arrayidx125, align 4
  store i32 1, i32* %flag97, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.115, %for.body.107
  br label %for.inc.127

for.inc.127:                                      ; preds = %if.end.126
  %70 = load i32, i32* %j96, align 4
  %dec128 = add nsw i32 %70, -1
  store i32 %dec128, i32* %j96, align 4
  br label %for.cond.105

for.end.129:                                      ; preds = %for.cond.105
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.end.129
  %71 = load i32, i32* %i95, align 4
  %inc131 = add nsw i32 %71, 1
  store i32 %inc131, i32* %i95, align 4
  br label %for.cond.99

for.end.132:                                      ; preds = %land.end.103
  store i32 1, i32* %flag135, align 4
  store i32 1, i32* %i133, align 4
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.168, %for.end.132
  %72 = load i32, i32* %i133, align 4
  %cmp138 = icmp sle i32 %72, 28
  br i1 %cmp138, label %land.rhs.139, label %land.end.141

land.rhs.139:                                     ; preds = %for.cond.137
  %73 = load i32, i32* %flag135, align 4
  %tobool140 = icmp ne i32 %73, 0
  br label %land.end.141

land.end.141:                                     ; preds = %land.rhs.139, %for.cond.137
  %74 = phi i1 [ false, %for.cond.137 ], [ %tobool140, %land.rhs.139 ]
  br i1 %74, label %for.body.142, label %for.end.170

for.body.142:                                     ; preds = %land.end.141
  store i32 0, i32* %flag135, align 4
  store i32 28, i32* %j134, align 4
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.165, %for.body.142
  %75 = load i32, i32* %j134, align 4
  %76 = load i32, i32* %i133, align 4
  %cmp144 = icmp sgt i32 %75, %76
  br i1 %cmp144, label %for.body.145, label %for.end.167

for.body.145:                                     ; preds = %for.cond.143
  %77 = load i32, i32* %j134, align 4
  %idxprom146 = sext i32 %77 to i64
  %arrayidx147 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks_nfl, i32 0, i64 %idxprom146
  %78 = load i32, i32* %arrayidx147, align 4
  %79 = load i32, i32* %j134, align 4
  %sub148 = sub nsw i32 %79, 1
  %idxprom149 = sext i32 %sub148 to i64
  %arrayidx150 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks_nfl, i32 0, i64 %idxprom149
  %80 = load i32, i32* %arrayidx150, align 4
  %call151 = call i32 @defence_nfl_lt(%struct.info* getelementptr inbounds ([29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i32 0), i32 %78, i32 %80)
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %if.then.153, label %if.end.164

if.then.153:                                      ; preds = %for.body.145
  %81 = load i32, i32* %j134, align 4
  %sub154 = sub nsw i32 %81, 1
  %idxprom155 = sext i32 %sub154 to i64
  %arrayidx156 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks_nfl, i32 0, i64 %idxprom155
  %82 = load i32, i32* %arrayidx156, align 4
  store i32 %82, i32* %temp136, align 4
  %83 = load i32, i32* %j134, align 4
  %idxprom157 = sext i32 %83 to i64
  %arrayidx158 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks_nfl, i32 0, i64 %idxprom157
  %84 = load i32, i32* %arrayidx158, align 4
  %85 = load i32, i32* %j134, align 4
  %sub159 = sub nsw i32 %85, 1
  %idxprom160 = sext i32 %sub159 to i64
  %arrayidx161 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks_nfl, i32 0, i64 %idxprom160
  store i32 %84, i32* %arrayidx161, align 4
  %86 = load i32, i32* %temp136, align 4
  %87 = load i32, i32* %j134, align 4
  %idxprom162 = sext i32 %87 to i64
  %arrayidx163 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks_nfl, i32 0, i64 %idxprom162
  store i32 %86, i32* %arrayidx163, align 4
  store i32 1, i32* %flag135, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.153, %for.body.145
  br label %for.inc.165

for.inc.165:                                      ; preds = %if.end.164
  %88 = load i32, i32* %j134, align 4
  %dec166 = add nsw i32 %88, -1
  store i32 %dec166, i32* %j134, align 4
  br label %for.cond.143

for.end.167:                                      ; preds = %for.cond.143
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.end.167
  %89 = load i32, i32* %i133, align 4
  %inc169 = add nsw i32 %89, 1
  store i32 %inc169, i32* %i133, align 4
  br label %for.cond.137

for.end.170:                                      ; preds = %land.end.141
  store i32 1, i32* %flag173, align 4
  store i32 1, i32* %i171, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.206, %for.end.170
  %90 = load i32, i32* %i171, align 4
  %cmp176 = icmp sle i32 %90, 28
  br i1 %cmp176, label %land.rhs.177, label %land.end.179

land.rhs.177:                                     ; preds = %for.cond.175
  %91 = load i32, i32* %flag173, align 4
  %tobool178 = icmp ne i32 %91, 0
  br label %land.end.179

land.end.179:                                     ; preds = %land.rhs.177, %for.cond.175
  %92 = phi i1 [ false, %for.cond.175 ], [ %tobool178, %land.rhs.177 ]
  br i1 %92, label %for.body.180, label %for.end.208

for.body.180:                                     ; preds = %land.end.179
  store i32 0, i32* %flag173, align 4
  store i32 28, i32* %j172, align 4
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.203, %for.body.180
  %93 = load i32, i32* %j172, align 4
  %94 = load i32, i32* %i171, align 4
  %cmp182 = icmp sgt i32 %93, %94
  br i1 %cmp182, label %for.body.183, label %for.end.205

for.body.183:                                     ; preds = %for.cond.181
  %95 = load i32, i32* %j172, align 4
  %idxprom184 = sext i32 %95 to i64
  %arrayidx185 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom184
  %96 = load i32, i32* %arrayidx185, align 4
  %97 = load i32, i32* %j172, align 4
  %sub186 = sub nsw i32 %97, 1
  %idxprom187 = sext i32 %sub186 to i64
  %arrayidx188 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom187
  %98 = load i32, i32* %arrayidx188, align 4
  %call189 = call i32 @offence_lt(%struct.info* getelementptr inbounds ([29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i32 0), i32 %96, i32 %98)
  %tobool190 = icmp ne i32 %call189, 0
  br i1 %tobool190, label %if.then.191, label %if.end.202

if.then.191:                                      ; preds = %for.body.183
  %99 = load i32, i32* %j172, align 4
  %sub192 = sub nsw i32 %99, 1
  %idxprom193 = sext i32 %sub192 to i64
  %arrayidx194 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom193
  %100 = load i32, i32* %arrayidx194, align 4
  store i32 %100, i32* %temp174, align 4
  %101 = load i32, i32* %j172, align 4
  %idxprom195 = sext i32 %101 to i64
  %arrayidx196 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom195
  %102 = load i32, i32* %arrayidx196, align 4
  %103 = load i32, i32* %j172, align 4
  %sub197 = sub nsw i32 %103, 1
  %idxprom198 = sext i32 %sub197 to i64
  %arrayidx199 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom198
  store i32 %102, i32* %arrayidx199, align 4
  %104 = load i32, i32* %temp174, align 4
  %105 = load i32, i32* %j172, align 4
  %idxprom200 = sext i32 %105 to i64
  %arrayidx201 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom200
  store i32 %104, i32* %arrayidx201, align 4
  store i32 1, i32* %flag173, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.191, %for.body.183
  br label %for.inc.203

for.inc.203:                                      ; preds = %if.end.202
  %106 = load i32, i32* %j172, align 4
  %dec204 = add nsw i32 %106, -1
  store i32 %dec204, i32* %j172, align 4
  br label %for.cond.181

for.end.205:                                      ; preds = %for.cond.181
  br label %for.inc.206

for.inc.206:                                      ; preds = %for.end.205
  %107 = load i32, i32* %i171, align 4
  %inc207 = add nsw i32 %107, 1
  store i32 %inc207, i32* %i171, align 4
  br label %for.cond.175

for.end.208:                                      ; preds = %land.end.179
  store i32 1, i32* %flag211, align 4
  store i32 1, i32* %i209, align 4
  br label %for.cond.213

for.cond.213:                                     ; preds = %for.inc.244, %for.end.208
  %108 = load i32, i32* %i209, align 4
  %cmp214 = icmp sle i32 %108, 28
  br i1 %cmp214, label %land.rhs.215, label %land.end.217

land.rhs.215:                                     ; preds = %for.cond.213
  %109 = load i32, i32* %flag211, align 4
  %tobool216 = icmp ne i32 %109, 0
  br label %land.end.217

land.end.217:                                     ; preds = %land.rhs.215, %for.cond.213
  %110 = phi i1 [ false, %for.cond.213 ], [ %tobool216, %land.rhs.215 ]
  br i1 %110, label %for.body.218, label %for.end.246

for.body.218:                                     ; preds = %land.end.217
  store i32 0, i32* %flag211, align 4
  store i32 28, i32* %j210, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.241, %for.body.218
  %111 = load i32, i32* %j210, align 4
  %112 = load i32, i32* %i209, align 4
  %cmp220 = icmp sgt i32 %111, %112
  br i1 %cmp220, label %for.body.221, label %for.end.243

for.body.221:                                     ; preds = %for.cond.219
  %113 = load i32, i32* %j210, align 4
  %idxprom222 = sext i32 %113 to i64
  %arrayidx223 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks_nfl, i32 0, i64 %idxprom222
  %114 = load i32, i32* %arrayidx223, align 4
  %115 = load i32, i32* %j210, align 4
  %sub224 = sub nsw i32 %115, 1
  %idxprom225 = sext i32 %sub224 to i64
  %arrayidx226 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks_nfl, i32 0, i64 %idxprom225
  %116 = load i32, i32* %arrayidx226, align 4
  %call227 = call i32 @offence_nfl_lt(%struct.info* getelementptr inbounds ([29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i32 0), i32 %114, i32 %116)
  %tobool228 = icmp ne i32 %call227, 0
  br i1 %tobool228, label %if.then.229, label %if.end.240

if.then.229:                                      ; preds = %for.body.221
  %117 = load i32, i32* %j210, align 4
  %sub230 = sub nsw i32 %117, 1
  %idxprom231 = sext i32 %sub230 to i64
  %arrayidx232 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks_nfl, i32 0, i64 %idxprom231
  %118 = load i32, i32* %arrayidx232, align 4
  store i32 %118, i32* %temp212, align 4
  %119 = load i32, i32* %j210, align 4
  %idxprom233 = sext i32 %119 to i64
  %arrayidx234 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks_nfl, i32 0, i64 %idxprom233
  %120 = load i32, i32* %arrayidx234, align 4
  %121 = load i32, i32* %j210, align 4
  %sub235 = sub nsw i32 %121, 1
  %idxprom236 = sext i32 %sub235 to i64
  %arrayidx237 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks_nfl, i32 0, i64 %idxprom236
  store i32 %120, i32* %arrayidx237, align 4
  %122 = load i32, i32* %temp212, align 4
  %123 = load i32, i32* %j210, align 4
  %idxprom238 = sext i32 %123 to i64
  %arrayidx239 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks_nfl, i32 0, i64 %idxprom238
  store i32 %122, i32* %arrayidx239, align 4
  store i32 1, i32* %flag211, align 4
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.229, %for.body.221
  br label %for.inc.241

for.inc.241:                                      ; preds = %if.end.240
  %124 = load i32, i32* %j210, align 4
  %dec242 = add nsw i32 %124, -1
  store i32 %dec242, i32* %j210, align 4
  br label %for.cond.219

for.end.243:                                      ; preds = %for.cond.219
  br label %for.inc.244

for.inc.244:                                      ; preds = %for.end.243
  %125 = load i32, i32* %i209, align 4
  %inc245 = add nsw i32 %125, 1
  store i32 %inc245, i32* %i209, align 4
  br label %for.cond.213

for.end.246:                                      ; preds = %land.end.217
  store i32 1, i32* %flag249, align 4
  store i32 1, i32* %i247, align 4
  br label %for.cond.251

for.cond.251:                                     ; preds = %for.inc.282, %for.end.246
  %126 = load i32, i32* %i247, align 4
  %cmp252 = icmp sle i32 %126, 28
  br i1 %cmp252, label %land.rhs.253, label %land.end.255

land.rhs.253:                                     ; preds = %for.cond.251
  %127 = load i32, i32* %flag249, align 4
  %tobool254 = icmp ne i32 %127, 0
  br label %land.end.255

land.end.255:                                     ; preds = %land.rhs.253, %for.cond.251
  %128 = phi i1 [ false, %for.cond.251 ], [ %tobool254, %land.rhs.253 ]
  br i1 %128, label %for.body.256, label %for.end.284

for.body.256:                                     ; preds = %land.end.255
  store i32 0, i32* %flag249, align 4
  store i32 28, i32* %j248, align 4
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.279, %for.body.256
  %129 = load i32, i32* %j248, align 4
  %130 = load i32, i32* %i247, align 4
  %cmp258 = icmp sgt i32 %129, %130
  br i1 %cmp258, label %for.body.259, label %for.end.281

for.body.259:                                     ; preds = %for.cond.257
  %131 = load i32, i32* %j248, align 4
  %idxprom260 = sext i32 %131 to i64
  %arrayidx261 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom260
  %132 = load i32, i32* %arrayidx261, align 4
  %133 = load i32, i32* %j248, align 4
  %sub262 = sub nsw i32 %133, 1
  %idxprom263 = sext i32 %sub262 to i64
  %arrayidx264 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom263
  %134 = load i32, i32* %arrayidx264, align 4
  %call265 = call i32 @net_lt(%struct.info* getelementptr inbounds ([29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i32 0), i32 %132, i32 %134)
  %tobool266 = icmp ne i32 %call265, 0
  br i1 %tobool266, label %if.then.267, label %if.end.278

if.then.267:                                      ; preds = %for.body.259
  %135 = load i32, i32* %j248, align 4
  %sub268 = sub nsw i32 %135, 1
  %idxprom269 = sext i32 %sub268 to i64
  %arrayidx270 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom269
  %136 = load i32, i32* %arrayidx270, align 4
  store i32 %136, i32* %temp250, align 4
  %137 = load i32, i32* %j248, align 4
  %idxprom271 = sext i32 %137 to i64
  %arrayidx272 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom271
  %138 = load i32, i32* %arrayidx272, align 4
  %139 = load i32, i32* %j248, align 4
  %sub273 = sub nsw i32 %139, 1
  %idxprom274 = sext i32 %sub273 to i64
  %arrayidx275 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom274
  store i32 %138, i32* %arrayidx275, align 4
  %140 = load i32, i32* %temp250, align 4
  %141 = load i32, i32* %j248, align 4
  %idxprom276 = sext i32 %141 to i64
  %arrayidx277 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom276
  store i32 %140, i32* %arrayidx277, align 4
  store i32 1, i32* %flag249, align 4
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.267, %for.body.259
  br label %for.inc.279

for.inc.279:                                      ; preds = %if.end.278
  %142 = load i32, i32* %j248, align 4
  %dec280 = add nsw i32 %142, -1
  store i32 %dec280, i32* %j248, align 4
  br label %for.cond.257

for.end.281:                                      ; preds = %for.cond.257
  br label %for.inc.282

for.inc.282:                                      ; preds = %for.end.281
  %143 = load i32, i32* %i247, align 4
  %inc283 = add nsw i32 %143, 1
  store i32 %inc283, i32* %i247, align 4
  br label %for.cond.251

for.end.284:                                      ; preds = %land.end.255
  store i32 1, i32* %flag287, align 4
  store i32 1, i32* %i285, align 4
  br label %for.cond.289

for.cond.289:                                     ; preds = %for.inc.320, %for.end.284
  %144 = load i32, i32* %i285, align 4
  %cmp290 = icmp sle i32 %144, 28
  br i1 %cmp290, label %land.rhs.291, label %land.end.293

land.rhs.291:                                     ; preds = %for.cond.289
  %145 = load i32, i32* %flag287, align 4
  %tobool292 = icmp ne i32 %145, 0
  br label %land.end.293

land.end.293:                                     ; preds = %land.rhs.291, %for.cond.289
  %146 = phi i1 [ false, %for.cond.289 ], [ %tobool292, %land.rhs.291 ]
  br i1 %146, label %for.body.294, label %for.end.322

for.body.294:                                     ; preds = %land.end.293
  store i32 0, i32* %flag287, align 4
  store i32 28, i32* %j286, align 4
  br label %for.cond.295

for.cond.295:                                     ; preds = %for.inc.317, %for.body.294
  %147 = load i32, i32* %j286, align 4
  %148 = load i32, i32* %i285, align 4
  %cmp296 = icmp sgt i32 %147, %148
  br i1 %cmp296, label %for.body.297, label %for.end.319

for.body.297:                                     ; preds = %for.cond.295
  %149 = load i32, i32* %j286, align 4
  %idxprom298 = sext i32 %149 to i64
  %arrayidx299 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks_nfl, i32 0, i64 %idxprom298
  %150 = load i32, i32* %arrayidx299, align 4
  %151 = load i32, i32* %j286, align 4
  %sub300 = sub nsw i32 %151, 1
  %idxprom301 = sext i32 %sub300 to i64
  %arrayidx302 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks_nfl, i32 0, i64 %idxprom301
  %152 = load i32, i32* %arrayidx302, align 4
  %call303 = call i32 @net_nfl_lt(%struct.info* getelementptr inbounds ([29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i32 0), i32 %150, i32 %152)
  %tobool304 = icmp ne i32 %call303, 0
  br i1 %tobool304, label %if.then.305, label %if.end.316

if.then.305:                                      ; preds = %for.body.297
  %153 = load i32, i32* %j286, align 4
  %sub306 = sub nsw i32 %153, 1
  %idxprom307 = sext i32 %sub306 to i64
  %arrayidx308 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks_nfl, i32 0, i64 %idxprom307
  %154 = load i32, i32* %arrayidx308, align 4
  store i32 %154, i32* %temp288, align 4
  %155 = load i32, i32* %j286, align 4
  %idxprom309 = sext i32 %155 to i64
  %arrayidx310 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks_nfl, i32 0, i64 %idxprom309
  %156 = load i32, i32* %arrayidx310, align 4
  %157 = load i32, i32* %j286, align 4
  %sub311 = sub nsw i32 %157, 1
  %idxprom312 = sext i32 %sub311 to i64
  %arrayidx313 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks_nfl, i32 0, i64 %idxprom312
  store i32 %156, i32* %arrayidx313, align 4
  %158 = load i32, i32* %temp288, align 4
  %159 = load i32, i32* %j286, align 4
  %idxprom314 = sext i32 %159 to i64
  %arrayidx315 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks_nfl, i32 0, i64 %idxprom314
  store i32 %158, i32* %arrayidx315, align 4
  store i32 1, i32* %flag287, align 4
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.305, %for.body.297
  br label %for.inc.317

for.inc.317:                                      ; preds = %if.end.316
  %160 = load i32, i32* %j286, align 4
  %dec318 = add nsw i32 %160, -1
  store i32 %dec318, i32* %j286, align 4
  br label %for.cond.295

for.end.319:                                      ; preds = %for.cond.295
  br label %for.inc.320

for.inc.320:                                      ; preds = %for.end.319
  %161 = load i32, i32* %i285, align 4
  %inc321 = add nsw i32 %161, 1
  store i32 %inc321, i32* %i285, align 4
  br label %for.cond.289

for.end.322:                                      ; preds = %land.end.293
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
