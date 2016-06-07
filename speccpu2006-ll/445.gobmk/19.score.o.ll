; ModuleID = 'engine/score.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.eyevalue = type { i8, i8, i8, i8 }

@printmoyo = external global i32, align 4
@debug = external global i32, align 4
@board_size = external global i32, align 4
@board = external global [421 x i8], align 16
@chinese_rules = external global i32, align 4
@.str = private unnamed_addr constant [36 x i8] c"in row %d, white area=%d, black=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"in row %d, white territory=%d, black=%d\0A\00", align 1
@komi = external global float, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"black captured: %d\0Awhite captured: %d\0Akomi: %f\0A\00", align 1
@black_captured = external global i32, align 4
@white_captured = external global i32, align 4
@dragon = external global [400 x %struct.dragon_data], align 16
@dragon2 = external global %struct.dragon_data2*, align 8

; Function Attrs: nounwind uwtable
define void @print_moyo() #0 {
entry:
  %0 = load i32, i32* @printmoyo, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @print_new_moyo(i32 5, i32 21)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @printmoyo, align 4
  %and1 = and i32 %1, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @print_new_moyo(i32 5, i32 10)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %2 = load i32, i32* @printmoyo, align 4
  %and5 = and i32 %2, 4
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  call void @print_new_moyo(i32 4, i32 0)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_new_moyo(i32 %dilations, i32 %erosions) #0 {
entry:
  %dilations.addr = alloca i32, align 4
  %erosions.addr = alloca i32, align 4
  %gb = alloca [400 x i32], align 16
  store i32 %dilations, i32* %dilations.addr, align 4
  store i32 %erosions, i32* %erosions.addr, align 4
  %0 = load i32, i32* %dilations.addr, align 4
  %1 = load i32, i32* %erosions.addr, align 4
  %arraydecay = getelementptr inbounds [400 x i32], [400 x i32]* %gb, i32 0, i32 0
  %call = call i32 @dilate_erode(i32 %0, i32 %1, i32* %arraydecay, i32 1)
  %arraydecay1 = getelementptr inbounds [400 x i32], [400 x i32]* %gb, i32 0, i32 0
  call void @close_bubbles(i32* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [400 x i32], [400 x i32]* %gb, i32 0, i32 0
  call void @print_regions(i32* %arraydecay2)
  ret void
}

; Function Attrs: nounwind uwtable
define float @estimate_score(float* %upper, float* %lower) #0 {
entry:
  %upper.addr = alloca float*, align 8
  %lower.addr = alloca float*, align 8
  %gb = alloca [400 x i32], align 16
  %white_territory = alloca float, align 4
  %black_territory = alloca float, align 4
  %white_area = alloca float, align 4
  %black_area = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ii = alloca i32, align 4
  %u = alloca float, align 4
  %l = alloca float, align 4
  %critical = alloca i32, align 4
  %black_territory_in_row = alloca i32, align 4
  %white_territory_in_row = alloca i32, align 4
  %white_area_in_row = alloca i32, align 4
  %black_area_in_row = alloca i32, align 4
  %black_territory_in_row109 = alloca i32, align 4
  %white_territory_in_row110 = alloca i32, align 4
  %white_area_in_row111 = alloca i32, align 4
  %black_area_in_row112 = alloca i32, align 4
  store float* %upper, float** %upper.addr, align 8
  store float* %lower, float** %lower.addr, align 8
  store float 0.000000e+00, float* %white_territory, align 4
  store float 0.000000e+00, float* %black_territory, align 4
  store float 0.000000e+00, float* %white_area, align 4
  store float 0.000000e+00, float* %black_area, align 4
  %arraydecay = getelementptr inbounds [400 x i32], [400 x i32]* %gb, i32 0, i32 0
  %call = call i32 @dilate_erode(i32 5, i32 21, i32* %arraydecay, i32 1)
  store i32 %call, i32* %critical, align 4
  %arraydecay1 = getelementptr inbounds [400 x i32], [400 x i32]* %gb, i32 0, i32 0
  call void @close_bubbles(i32* %arraydecay1)
  %0 = load i32, i32* @debug, align 4
  %and = and i32 %0, 65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [400 x i32], [400 x i32]* %gb, i32 0, i32 0
  call void @print_regions(i32* %arraydecay2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.78, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.80

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %black_territory_in_row, align 4
  store i32 0, i32* %white_territory_in_row, align 4
  store i32 0, i32* %white_area_in_row, align 4
  store i32 0, i32* %black_area_in_row, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* @board_size, align 4
  %cmp4 = icmp slt i32 %3, %4
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %5 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %5, 20
  %add = add nsw i32 21, %mul
  %6 = load i32, i32* %j, align 4
  %add6 = add nsw i32 %add, %6
  store i32 %add6, i32* %ii, align 4
  %7 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %cmp7 = icmp eq i32 %conv, 2
  br i1 %cmp7, label %if.then.9, label %if.else.19

if.then.9:                                        ; preds = %for.body.5
  %9 = load i32, i32* %ii, align 4
  %call10 = call i32 @captured_territory(i32 %9, i32 1)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  %10 = load float, float* %white_territory, align 4
  %add13 = fadd float %10, 2.000000e+00
  store float %add13, float* %white_territory, align 4
  %11 = load float, float* %white_area, align 4
  %inc = fadd float %11, 1.000000e+00
  store float %inc, float* %white_area, align 4
  %12 = load i32, i32* %white_territory_in_row, align 4
  %add14 = add nsw i32 %12, 2
  store i32 %add14, i32* %white_territory_in_row, align 4
  %13 = load i32, i32* %white_area_in_row, align 4
  %inc15 = add nsw i32 %13, 1
  store i32 %inc15, i32* %white_area_in_row, align 4
  br label %if.end.18

if.else:                                          ; preds = %if.then.9
  %14 = load float, float* %black_area, align 4
  %inc16 = fadd float %14, 1.000000e+00
  store float %inc16, float* %black_area, align 4
  %15 = load i32, i32* %black_area_in_row, align 4
  %inc17 = add nsw i32 %15, 1
  store i32 %inc17, i32* %black_area_in_row, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.12
  br label %if.end.62

if.else.19:                                       ; preds = %for.body.5
  %16 = load i32, i32* %ii, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom20
  %17 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %17 to i32
  %cmp23 = icmp eq i32 %conv22, 1
  br i1 %cmp23, label %if.then.25, label %if.else.37

if.then.25:                                       ; preds = %if.else.19
  %18 = load i32, i32* %ii, align 4
  %call26 = call i32 @captured_territory(i32 %18, i32 1)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.else.33

if.then.28:                                       ; preds = %if.then.25
  %19 = load float, float* %black_territory, align 4
  %add29 = fadd float %19, 2.000000e+00
  store float %add29, float* %black_territory, align 4
  %20 = load float, float* %black_area, align 4
  %inc30 = fadd float %20, 1.000000e+00
  store float %inc30, float* %black_area, align 4
  %21 = load i32, i32* %black_territory_in_row, align 4
  %add31 = add nsw i32 %21, 2
  store i32 %add31, i32* %black_territory_in_row, align 4
  %22 = load i32, i32* %black_area_in_row, align 4
  %inc32 = add nsw i32 %22, 1
  store i32 %inc32, i32* %black_area_in_row, align 4
  br label %if.end.36

if.else.33:                                       ; preds = %if.then.25
  %23 = load float, float* %white_area, align 4
  %inc34 = fadd float %23, 1.000000e+00
  store float %inc34, float* %white_area, align 4
  %24 = load i32, i32* %white_area_in_row, align 4
  %inc35 = add nsw i32 %24, 1
  store i32 %inc35, i32* %white_area_in_row, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.28
  br label %if.end.61

if.else.37:                                       ; preds = %if.else.19
  %25 = load i32, i32* %ii, align 4
  %idxprom38 = sext i32 %25 to i64
  %arrayidx39 = getelementptr inbounds [400 x i32], [400 x i32]* %gb, i32 0, i64 %idxprom38
  %26 = load i32, i32* %arrayidx39, align 4
  %conv40 = sitofp i32 %26 to double
  %cmp41 = fcmp ogt double %conv40, 0.000000e+00
  br i1 %cmp41, label %if.then.43, label %if.else.48

if.then.43:                                       ; preds = %if.else.37
  %27 = load float, float* %white_territory, align 4
  %inc44 = fadd float %27, 1.000000e+00
  store float %inc44, float* %white_territory, align 4
  %28 = load float, float* %white_area, align 4
  %inc45 = fadd float %28, 1.000000e+00
  store float %inc45, float* %white_area, align 4
  %29 = load i32, i32* %white_territory_in_row, align 4
  %inc46 = add nsw i32 %29, 1
  store i32 %inc46, i32* %white_territory_in_row, align 4
  %30 = load i32, i32* %white_area_in_row, align 4
  %inc47 = add nsw i32 %30, 1
  store i32 %inc47, i32* %white_area_in_row, align 4
  br label %if.end.60

if.else.48:                                       ; preds = %if.else.37
  %31 = load i32, i32* %ii, align 4
  %idxprom49 = sext i32 %31 to i64
  %arrayidx50 = getelementptr inbounds [400 x i32], [400 x i32]* %gb, i32 0, i64 %idxprom49
  %32 = load i32, i32* %arrayidx50, align 4
  %conv51 = sitofp i32 %32 to double
  %cmp52 = fcmp olt double %conv51, 0.000000e+00
  br i1 %cmp52, label %if.then.54, label %if.end.59

if.then.54:                                       ; preds = %if.else.48
  %33 = load float, float* %black_territory, align 4
  %inc55 = fadd float %33, 1.000000e+00
  store float %inc55, float* %black_territory, align 4
  %34 = load float, float* %black_area, align 4
  %inc56 = fadd float %34, 1.000000e+00
  store float %inc56, float* %black_area, align 4
  %35 = load i32, i32* %black_territory_in_row, align 4
  %inc57 = add nsw i32 %35, 1
  store i32 %inc57, i32* %black_territory_in_row, align 4
  %36 = load i32, i32* %black_area_in_row, align 4
  %inc58 = add nsw i32 %36, 1
  store i32 %inc58, i32* %black_area_in_row, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.54, %if.else.48
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.43
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.36
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.62
  %37 = load i32, i32* %j, align 4
  %inc63 = add nsw i32 %37, 1
  store i32 %inc63, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %38 = load i32, i32* @chinese_rules, align 4
  %tobool64 = icmp ne i32 %38, 0
  br i1 %tobool64, label %if.then.65, label %if.else.69

if.then.65:                                       ; preds = %for.end
  %39 = load i32, i32* @debug, align 4
  %and66 = and i32 %39, 65536
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.65
  br label %cond.end

cond.false:                                       ; preds = %if.then.65
  %40 = load i32, i32* @board_size, align 4
  %41 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %40, %41
  %42 = load i32, i32* %white_area_in_row, align 4
  %43 = load i32, i32* %black_area_in_row, align 4
  %call68 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i32 %sub, i32 %42, i32 %43)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end.77

if.else.69:                                       ; preds = %for.end
  %44 = load i32, i32* @debug, align 4
  %and70 = and i32 %44, 65536
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %cond.false.73, label %cond.true.72

cond.true.72:                                     ; preds = %if.else.69
  br label %cond.end.76

cond.false.73:                                    ; preds = %if.else.69
  %45 = load i32, i32* @board_size, align 4
  %46 = load i32, i32* %i, align 4
  %sub74 = sub nsw i32 %45, %46
  %47 = load i32, i32* %white_territory_in_row, align 4
  %48 = load i32, i32* %black_territory_in_row, align 4
  %call75 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i32 %sub74, i32 %47, i32 %48)
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.73, %cond.true.72
  br label %if.end.77

if.end.77:                                        ; preds = %cond.end.76, %cond.end
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.77
  %49 = load i32, i32* %i, align 4
  %inc79 = add nsw i32 %49, 1
  store i32 %inc79, i32* %i, align 4
  br label %for.cond

for.end.80:                                       ; preds = %for.cond
  %50 = load i32, i32* @chinese_rules, align 4
  %tobool81 = icmp ne i32 %50, 0
  br i1 %tobool81, label %if.then.82, label %if.else.85

if.then.82:                                       ; preds = %for.end.80
  %51 = load float, float* %white_area, align 4
  %52 = load float, float* %black_area, align 4
  %sub83 = fsub float %51, %52
  %53 = load float, float* @komi, align 4
  %add84 = fadd float %sub83, %53
  store float %add84, float* %u, align 4
  br label %if.end.99

if.else.85:                                       ; preds = %for.end.80
  %54 = load i32, i32* @debug, align 4
  %and86 = and i32 %54, 65536
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %cond.false.89, label %cond.true.88

cond.true.88:                                     ; preds = %if.else.85
  br label %cond.end.92

cond.false.89:                                    ; preds = %if.else.85
  %55 = load i32, i32* @black_captured, align 4
  %56 = load i32, i32* @white_captured, align 4
  %57 = load float, float* @komi, align 4
  %conv90 = fpext float %57 to double
  %call91 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0), i32 %55, i32 %56, double %conv90)
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.89, %cond.true.88
  %58 = load float, float* %white_territory, align 4
  %59 = load i32, i32* @black_captured, align 4
  %conv93 = sitofp i32 %59 to float
  %add94 = fadd float %58, %conv93
  %60 = load float, float* %black_territory, align 4
  %sub95 = fsub float %add94, %60
  %61 = load i32, i32* @white_captured, align 4
  %conv96 = sitofp i32 %61 to float
  %sub97 = fsub float %sub95, %conv96
  %62 = load float, float* @komi, align 4
  %add98 = fadd float %sub97, %62
  store float %add98, float* %u, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %cond.end.92, %if.then.82
  %63 = load i32, i32* %critical, align 4
  %tobool100 = icmp ne i32 %63, 0
  br i1 %tobool100, label %if.then.101, label %if.else.221

if.then.101:                                      ; preds = %if.end.99
  store float 0.000000e+00, float* %white_territory, align 4
  store float 0.000000e+00, float* %black_territory, align 4
  store float 0.000000e+00, float* %white_area, align 4
  store float 0.000000e+00, float* %black_area, align 4
  %arraydecay102 = getelementptr inbounds [400 x i32], [400 x i32]* %gb, i32 0, i32 0
  %call103 = call i32 @dilate_erode(i32 5, i32 21, i32* %arraydecay102, i32 2)
  %arraydecay104 = getelementptr inbounds [400 x i32], [400 x i32]* %gb, i32 0, i32 0
  call void @close_bubbles(i32* %arraydecay104)
  store i32 0, i32* %i, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.199, %if.then.101
  %64 = load i32, i32* %i, align 4
  %65 = load i32, i32* @board_size, align 4
  %cmp106 = icmp slt i32 %64, %65
  br i1 %cmp106, label %for.body.108, label %for.end.201

for.body.108:                                     ; preds = %for.cond.105
  store i32 0, i32* %black_territory_in_row109, align 4
  store i32 0, i32* %white_territory_in_row110, align 4
  store i32 0, i32* %white_area_in_row111, align 4
  store i32 0, i32* %black_area_in_row112, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.178, %for.body.108
  %66 = load i32, i32* %j, align 4
  %67 = load i32, i32* @board_size, align 4
  %cmp114 = icmp slt i32 %66, %67
  br i1 %cmp114, label %for.body.116, label %for.end.180

for.body.116:                                     ; preds = %for.cond.113
  %68 = load i32, i32* %i, align 4
  %mul117 = mul nsw i32 %68, 20
  %add118 = add nsw i32 21, %mul117
  %69 = load i32, i32* %j, align 4
  %add119 = add nsw i32 %add118, %69
  store i32 %add119, i32* %ii, align 4
  %70 = load i32, i32* %ii, align 4
  %idxprom120 = sext i32 %70 to i64
  %arrayidx121 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom120
  %71 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %71 to i32
  %cmp123 = icmp eq i32 %conv122, 2
  br i1 %cmp123, label %if.then.125, label %if.else.137

if.then.125:                                      ; preds = %for.body.116
  %72 = load i32, i32* %ii, align 4
  %call126 = call i32 @captured_territory(i32 %72, i32 2)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.then.128, label %if.else.133

if.then.128:                                      ; preds = %if.then.125
  %73 = load float, float* %white_territory, align 4
  %add129 = fadd float %73, 2.000000e+00
  store float %add129, float* %white_territory, align 4
  %74 = load i32, i32* %white_territory_in_row110, align 4
  %add130 = add nsw i32 %74, 2
  store i32 %add130, i32* %white_territory_in_row110, align 4
  %75 = load float, float* %white_area, align 4
  %inc131 = fadd float %75, 1.000000e+00
  store float %inc131, float* %white_area, align 4
  %76 = load i32, i32* %white_area_in_row111, align 4
  %inc132 = add nsw i32 %76, 1
  store i32 %inc132, i32* %white_area_in_row111, align 4
  br label %if.end.136

if.else.133:                                      ; preds = %if.then.125
  %77 = load float, float* %black_area, align 4
  %inc134 = fadd float %77, 1.000000e+00
  store float %inc134, float* %black_area, align 4
  %78 = load i32, i32* %black_area_in_row112, align 4
  %inc135 = add nsw i32 %78, 1
  store i32 %inc135, i32* %black_area_in_row112, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.133, %if.then.128
  br label %if.end.177

if.else.137:                                      ; preds = %for.body.116
  %79 = load i32, i32* %ii, align 4
  %idxprom138 = sext i32 %79 to i64
  %arrayidx139 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom138
  %80 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %80 to i32
  %cmp141 = icmp eq i32 %conv140, 1
  br i1 %cmp141, label %if.then.143, label %if.else.152

if.then.143:                                      ; preds = %if.else.137
  %81 = load i32, i32* %ii, align 4
  %call144 = call i32 @captured_territory(i32 %81, i32 2)
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %if.then.146, label %if.end.151

if.then.146:                                      ; preds = %if.then.143
  %82 = load float, float* %black_territory, align 4
  %add147 = fadd float %82, 2.000000e+00
  store float %add147, float* %black_territory, align 4
  %83 = load float, float* %black_area, align 4
  %inc148 = fadd float %83, 1.000000e+00
  store float %inc148, float* %black_area, align 4
  %84 = load i32, i32* %black_territory_in_row109, align 4
  %add149 = add nsw i32 %84, 2
  store i32 %add149, i32* %black_territory_in_row109, align 4
  %85 = load float, float* %black_area, align 4
  %inc150 = fadd float %85, 1.000000e+00
  store float %inc150, float* %black_area, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.146, %if.then.143
  br label %if.end.176

if.else.152:                                      ; preds = %if.else.137
  %86 = load i32, i32* %ii, align 4
  %idxprom153 = sext i32 %86 to i64
  %arrayidx154 = getelementptr inbounds [400 x i32], [400 x i32]* %gb, i32 0, i64 %idxprom153
  %87 = load i32, i32* %arrayidx154, align 4
  %conv155 = sitofp i32 %87 to double
  %cmp156 = fcmp ogt double %conv155, 0.000000e+00
  br i1 %cmp156, label %if.then.158, label %if.else.163

if.then.158:                                      ; preds = %if.else.152
  %88 = load float, float* %white_territory, align 4
  %inc159 = fadd float %88, 1.000000e+00
  store float %inc159, float* %white_territory, align 4
  %89 = load float, float* %white_area, align 4
  %inc160 = fadd float %89, 1.000000e+00
  store float %inc160, float* %white_area, align 4
  %90 = load i32, i32* %white_territory_in_row110, align 4
  %inc161 = add nsw i32 %90, 1
  store i32 %inc161, i32* %white_territory_in_row110, align 4
  %91 = load float, float* %white_area, align 4
  %inc162 = fadd float %91, 1.000000e+00
  store float %inc162, float* %white_area, align 4
  br label %if.end.175

if.else.163:                                      ; preds = %if.else.152
  %92 = load i32, i32* %ii, align 4
  %idxprom164 = sext i32 %92 to i64
  %arrayidx165 = getelementptr inbounds [400 x i32], [400 x i32]* %gb, i32 0, i64 %idxprom164
  %93 = load i32, i32* %arrayidx165, align 4
  %conv166 = sitofp i32 %93 to double
  %cmp167 = fcmp olt double %conv166, 0.000000e+00
  br i1 %cmp167, label %if.then.169, label %if.end.174

if.then.169:                                      ; preds = %if.else.163
  %94 = load float, float* %black_territory, align 4
  %inc170 = fadd float %94, 1.000000e+00
  store float %inc170, float* %black_territory, align 4
  %95 = load float, float* %black_area, align 4
  %inc171 = fadd float %95, 1.000000e+00
  store float %inc171, float* %black_area, align 4
  %96 = load i32, i32* %black_territory_in_row109, align 4
  %inc172 = add nsw i32 %96, 1
  store i32 %inc172, i32* %black_territory_in_row109, align 4
  %97 = load i32, i32* %black_area_in_row112, align 4
  %inc173 = add nsw i32 %97, 1
  store i32 %inc173, i32* %black_area_in_row112, align 4
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.169, %if.else.163
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.then.158
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.end.151
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.end.136
  br label %for.inc.178

for.inc.178:                                      ; preds = %if.end.177
  %98 = load i32, i32* %j, align 4
  %inc179 = add nsw i32 %98, 1
  store i32 %inc179, i32* %j, align 4
  br label %for.cond.113

for.end.180:                                      ; preds = %for.cond.113
  %99 = load i32, i32* @chinese_rules, align 4
  %tobool181 = icmp ne i32 %99, 0
  br i1 %tobool181, label %if.then.182, label %if.else.190

if.then.182:                                      ; preds = %for.end.180
  %100 = load i32, i32* @debug, align 4
  %and183 = and i32 %100, 65536
  %tobool184 = icmp ne i32 %and183, 0
  br i1 %tobool184, label %cond.false.186, label %cond.true.185

cond.true.185:                                    ; preds = %if.then.182
  br label %cond.end.189

cond.false.186:                                   ; preds = %if.then.182
  %101 = load i32, i32* @board_size, align 4
  %102 = load i32, i32* %i, align 4
  %sub187 = sub nsw i32 %101, %102
  %103 = load i32, i32* %white_area_in_row111, align 4
  %104 = load i32, i32* %black_area_in_row112, align 4
  %call188 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i32 %sub187, i32 %103, i32 %104)
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.false.186, %cond.true.185
  br label %if.end.198

if.else.190:                                      ; preds = %for.end.180
  %105 = load i32, i32* @debug, align 4
  %and191 = and i32 %105, 65536
  %tobool192 = icmp ne i32 %and191, 0
  br i1 %tobool192, label %cond.false.194, label %cond.true.193

cond.true.193:                                    ; preds = %if.else.190
  br label %cond.end.197

cond.false.194:                                   ; preds = %if.else.190
  %106 = load i32, i32* @board_size, align 4
  %107 = load i32, i32* %i, align 4
  %sub195 = sub nsw i32 %106, %107
  %108 = load i32, i32* %white_territory_in_row110, align 4
  %109 = load i32, i32* %black_territory_in_row109, align 4
  %call196 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i32 %sub195, i32 %108, i32 %109)
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.false.194, %cond.true.193
  br label %if.end.198

if.end.198:                                       ; preds = %cond.end.197, %cond.end.189
  br label %for.inc.199

for.inc.199:                                      ; preds = %if.end.198
  %110 = load i32, i32* %i, align 4
  %inc200 = add nsw i32 %110, 1
  store i32 %inc200, i32* %i, align 4
  br label %for.cond.105

for.end.201:                                      ; preds = %for.cond.105
  %111 = load i32, i32* @chinese_rules, align 4
  %tobool202 = icmp ne i32 %111, 0
  br i1 %tobool202, label %if.then.203, label %if.else.206

if.then.203:                                      ; preds = %for.end.201
  %112 = load float, float* %white_area, align 4
  %113 = load float, float* %black_area, align 4
  %sub204 = fsub float %112, %113
  %114 = load float, float* @komi, align 4
  %add205 = fadd float %sub204, %114
  store float %add205, float* %l, align 4
  br label %if.end.220

if.else.206:                                      ; preds = %for.end.201
  %115 = load i32, i32* @debug, align 4
  %and207 = and i32 %115, 65536
  %tobool208 = icmp ne i32 %and207, 0
  br i1 %tobool208, label %cond.false.210, label %cond.true.209

cond.true.209:                                    ; preds = %if.else.206
  br label %cond.end.213

cond.false.210:                                   ; preds = %if.else.206
  %116 = load i32, i32* @black_captured, align 4
  %117 = load i32, i32* @white_captured, align 4
  %118 = load float, float* @komi, align 4
  %conv211 = fpext float %118 to double
  %call212 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0), i32 %116, i32 %117, double %conv211)
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.false.210, %cond.true.209
  %119 = load float, float* %white_territory, align 4
  %120 = load i32, i32* @black_captured, align 4
  %conv214 = sitofp i32 %120 to float
  %add215 = fadd float %119, %conv214
  %121 = load float, float* %black_territory, align 4
  %sub216 = fsub float %add215, %121
  %122 = load i32, i32* @white_captured, align 4
  %conv217 = sitofp i32 %122 to float
  %sub218 = fsub float %sub216, %conv217
  %123 = load float, float* @komi, align 4
  %add219 = fadd float %sub218, %123
  store float %add219, float* %l, align 4
  br label %if.end.220

if.end.220:                                       ; preds = %cond.end.213, %if.then.203
  br label %if.end.222

if.else.221:                                      ; preds = %if.end.99
  %124 = load float, float* %u, align 4
  store float %124, float* %l, align 4
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.221, %if.end.220
  %125 = load float*, float** %upper.addr, align 8
  %tobool223 = icmp ne float* %125, null
  br i1 %tobool223, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %if.end.222
  %126 = load float, float* %u, align 4
  %127 = load float*, float** %upper.addr, align 8
  store float %126, float* %127, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.224, %if.end.222
  %128 = load float*, float** %lower.addr, align 8
  %tobool226 = icmp ne float* %128, null
  br i1 %tobool226, label %if.then.227, label %if.end.228

if.then.227:                                      ; preds = %if.end.225
  %129 = load float, float* %l, align 4
  %130 = load float*, float** %lower.addr, align 8
  store float %129, float* %130, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.227, %if.end.225
  %131 = load float, float* %u, align 4
  %132 = load float, float* %l, align 4
  %add229 = fadd float %131, %132
  %div = fdiv float %add229, 2.000000e+00
  ret float %div
}

; Function Attrs: nounwind uwtable
define internal i32 @dilate_erode(i32 %dilations, i32 %erosions, i32* %gb, i32 %color) #0 {
entry:
  %dilations.addr = alloca i32, align 4
  %erosions.addr = alloca i32, align 4
  %gb.addr = alloca i32*, align 8
  %color.addr = alloca i32, align 4
  %ii = alloca i32, align 4
  %work = alloca [400 x i32], align 16
  %n = alloca i32, align 4
  %critical_found = alloca i32, align 4
  store i32 %dilations, i32* %dilations.addr, align 4
  store i32 %erosions, i32* %erosions.addr, align 4
  store i32* %gb, i32** %gb.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %critical_found, align 4
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %ii, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %3 = load i32, i32* %ii, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3
  %4 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %4 to i32
  %tobool = icmp ne i32 %conv5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %ii, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom6
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx7, i32 0, i32 16
  %6 = load i32, i32* %status, align 4
  %cmp8 = icmp eq i32 %6, 2
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %critical_found, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %land.lhs.true, %if.end
  %7 = load i32, i32* %ii, align 4
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom12
  %8 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %8 to i32
  %cmp15 = icmp eq i32 %conv14, 1
  br i1 %cmp15, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %if.end.11
  %9 = load i32, i32* %ii, align 4
  %10 = load i32, i32* %color.addr, align 4
  %call = call i32 @captured_territory(i32 %9, i32 %10)
  %tobool18 = icmp ne i32 %call, 0
  br i1 %tobool18, label %if.else, label %if.then.19

if.then.19:                                       ; preds = %land.lhs.true.17
  %11 = load i32, i32* %ii, align 4
  %idxprom20 = sext i32 %11 to i64
  %12 = load i32*, i32** %gb.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %12, i64 %idxprom20
  store i32 128, i32* %arrayidx21, align 4
  br label %if.end.37

if.else:                                          ; preds = %land.lhs.true.17, %if.end.11
  %13 = load i32, i32* %ii, align 4
  %idxprom22 = sext i32 %13 to i64
  %arrayidx23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom22
  %14 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %14 to i32
  %cmp25 = icmp eq i32 %conv24, 2
  br i1 %cmp25, label %land.lhs.true.27, label %if.else.33

land.lhs.true.27:                                 ; preds = %if.else
  %15 = load i32, i32* %ii, align 4
  %16 = load i32, i32* %color.addr, align 4
  %call28 = call i32 @captured_territory(i32 %15, i32 %16)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.else.33, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.27
  %17 = load i32, i32* %ii, align 4
  %idxprom31 = sext i32 %17 to i64
  %18 = load i32*, i32** %gb.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %18, i64 %idxprom31
  store i32 -128, i32* %arrayidx32, align 4
  br label %if.end.36

if.else.33:                                       ; preds = %land.lhs.true.27, %if.else
  %19 = load i32, i32* %ii, align 4
  %idxprom34 = sext i32 %19 to i64
  %20 = load i32*, i32** %gb.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %20, i64 %idxprom34
  store i32 0, i32* %arrayidx35, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.30
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.37, %if.then
  %21 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = bitcast [400 x i32]* %work to i8*
  %23 = load i32*, i32** %gb.addr, align 8
  %24 = bitcast i32* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %24, i64 1600, i32 4, i1 false)
  store i32 0, i32* %n, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.304, %for.end
  %25 = load i32, i32* %n, align 4
  %26 = load i32, i32* %dilations.addr, align 4
  %cmp39 = icmp slt i32 %25, %26
  br i1 %cmp39, label %for.body.41, label %for.end.306

for.body.41:                                      ; preds = %for.cond.38
  store i32 21, i32* %ii, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.301, %for.body.41
  %27 = load i32, i32* %ii, align 4
  %cmp43 = icmp slt i32 %27, 400
  br i1 %cmp43, label %for.body.45, label %for.end.303

for.body.45:                                      ; preds = %for.cond.42
  %28 = load i32, i32* %ii, align 4
  %idxprom46 = sext i32 %28 to i64
  %arrayidx47 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom46
  %29 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %29 to i32
  %cmp49 = icmp ne i32 %conv48, 3
  br i1 %cmp49, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %for.body.45
  br label %for.inc.301

if.end.52:                                        ; preds = %for.body.45
  %30 = load i32, i32* %ii, align 4
  %idxprom53 = sext i32 %30 to i64
  %31 = load i32*, i32** %gb.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %31, i64 %idxprom53
  %32 = load i32, i32* %arrayidx54, align 4
  %cmp55 = icmp sge i32 %32, 0
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.175

land.lhs.true.57:                                 ; preds = %if.end.52
  %33 = load i32, i32* %ii, align 4
  %add = add nsw i32 %33, 20
  %idxprom58 = sext i32 %add to i64
  %arrayidx59 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom58
  %34 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %34 to i32
  %cmp61 = icmp ne i32 %conv60, 3
  br i1 %cmp61, label %lor.lhs.false, label %land.lhs.true.68

lor.lhs.false:                                    ; preds = %land.lhs.true.57
  %35 = load i32, i32* %ii, align 4
  %add63 = add nsw i32 %35, 20
  %idxprom64 = sext i32 %add63 to i64
  %36 = load i32*, i32** %gb.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %36, i64 %idxprom64
  %37 = load i32, i32* %arrayidx65, align 4
  %cmp66 = icmp sge i32 %37, 0
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.175

land.lhs.true.68:                                 ; preds = %lor.lhs.false, %land.lhs.true.57
  %38 = load i32, i32* %ii, align 4
  %sub = sub nsw i32 %38, 1
  %idxprom69 = sext i32 %sub to i64
  %arrayidx70 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom69
  %39 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %39 to i32
  %cmp72 = icmp ne i32 %conv71, 3
  br i1 %cmp72, label %lor.lhs.false.74, label %land.lhs.true.80

lor.lhs.false.74:                                 ; preds = %land.lhs.true.68
  %40 = load i32, i32* %ii, align 4
  %sub75 = sub nsw i32 %40, 1
  %idxprom76 = sext i32 %sub75 to i64
  %41 = load i32*, i32** %gb.addr, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %41, i64 %idxprom76
  %42 = load i32, i32* %arrayidx77, align 4
  %cmp78 = icmp sge i32 %42, 0
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.175

land.lhs.true.80:                                 ; preds = %lor.lhs.false.74, %land.lhs.true.68
  %43 = load i32, i32* %ii, align 4
  %sub81 = sub nsw i32 %43, 20
  %idxprom82 = sext i32 %sub81 to i64
  %arrayidx83 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom82
  %44 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %44 to i32
  %cmp85 = icmp ne i32 %conv84, 3
  br i1 %cmp85, label %lor.lhs.false.87, label %land.lhs.true.93

lor.lhs.false.87:                                 ; preds = %land.lhs.true.80
  %45 = load i32, i32* %ii, align 4
  %sub88 = sub nsw i32 %45, 20
  %idxprom89 = sext i32 %sub88 to i64
  %46 = load i32*, i32** %gb.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %46, i64 %idxprom89
  %47 = load i32, i32* %arrayidx90, align 4
  %cmp91 = icmp sge i32 %47, 0
  br i1 %cmp91, label %land.lhs.true.93, label %if.end.175

land.lhs.true.93:                                 ; preds = %lor.lhs.false.87, %land.lhs.true.80
  %48 = load i32, i32* %ii, align 4
  %add94 = add nsw i32 %48, 1
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom95
  %49 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %49 to i32
  %cmp98 = icmp ne i32 %conv97, 3
  br i1 %cmp98, label %lor.lhs.false.100, label %if.then.106

lor.lhs.false.100:                                ; preds = %land.lhs.true.93
  %50 = load i32, i32* %ii, align 4
  %add101 = add nsw i32 %50, 1
  %idxprom102 = sext i32 %add101 to i64
  %51 = load i32*, i32** %gb.addr, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %51, i64 %idxprom102
  %52 = load i32, i32* %arrayidx103, align 4
  %cmp104 = icmp sge i32 %52, 0
  br i1 %cmp104, label %if.then.106, label %if.end.175

if.then.106:                                      ; preds = %lor.lhs.false.100, %land.lhs.true.93
  %53 = load i32, i32* %ii, align 4
  %add107 = add nsw i32 %53, 20
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom108
  %54 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %54 to i32
  %cmp111 = icmp ne i32 %conv110, 3
  br i1 %cmp111, label %land.lhs.true.113, label %if.end.123

land.lhs.true.113:                                ; preds = %if.then.106
  %55 = load i32, i32* %ii, align 4
  %add114 = add nsw i32 %55, 20
  %idxprom115 = sext i32 %add114 to i64
  %56 = load i32*, i32** %gb.addr, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %56, i64 %idxprom115
  %57 = load i32, i32* %arrayidx116, align 4
  %cmp117 = icmp sgt i32 %57, 0
  br i1 %cmp117, label %if.then.119, label %if.end.123

if.then.119:                                      ; preds = %land.lhs.true.113
  %58 = load i32, i32* %ii, align 4
  %idxprom120 = sext i32 %58 to i64
  %arrayidx121 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom120
  %59 = load i32, i32* %arrayidx121, align 4
  %inc122 = add nsw i32 %59, 1
  store i32 %inc122, i32* %arrayidx121, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.119, %land.lhs.true.113, %if.then.106
  %60 = load i32, i32* %ii, align 4
  %sub124 = sub nsw i32 %60, 1
  %idxprom125 = sext i32 %sub124 to i64
  %arrayidx126 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom125
  %61 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %61 to i32
  %cmp128 = icmp ne i32 %conv127, 3
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.140

land.lhs.true.130:                                ; preds = %if.end.123
  %62 = load i32, i32* %ii, align 4
  %sub131 = sub nsw i32 %62, 1
  %idxprom132 = sext i32 %sub131 to i64
  %63 = load i32*, i32** %gb.addr, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %63, i64 %idxprom132
  %64 = load i32, i32* %arrayidx133, align 4
  %cmp134 = icmp sgt i32 %64, 0
  br i1 %cmp134, label %if.then.136, label %if.end.140

if.then.136:                                      ; preds = %land.lhs.true.130
  %65 = load i32, i32* %ii, align 4
  %idxprom137 = sext i32 %65 to i64
  %arrayidx138 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom137
  %66 = load i32, i32* %arrayidx138, align 4
  %inc139 = add nsw i32 %66, 1
  store i32 %inc139, i32* %arrayidx138, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.136, %land.lhs.true.130, %if.end.123
  %67 = load i32, i32* %ii, align 4
  %sub141 = sub nsw i32 %67, 20
  %idxprom142 = sext i32 %sub141 to i64
  %arrayidx143 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom142
  %68 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %68 to i32
  %cmp145 = icmp ne i32 %conv144, 3
  br i1 %cmp145, label %land.lhs.true.147, label %if.end.157

land.lhs.true.147:                                ; preds = %if.end.140
  %69 = load i32, i32* %ii, align 4
  %sub148 = sub nsw i32 %69, 20
  %idxprom149 = sext i32 %sub148 to i64
  %70 = load i32*, i32** %gb.addr, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %70, i64 %idxprom149
  %71 = load i32, i32* %arrayidx150, align 4
  %cmp151 = icmp sgt i32 %71, 0
  br i1 %cmp151, label %if.then.153, label %if.end.157

if.then.153:                                      ; preds = %land.lhs.true.147
  %72 = load i32, i32* %ii, align 4
  %idxprom154 = sext i32 %72 to i64
  %arrayidx155 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom154
  %73 = load i32, i32* %arrayidx155, align 4
  %inc156 = add nsw i32 %73, 1
  store i32 %inc156, i32* %arrayidx155, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.153, %land.lhs.true.147, %if.end.140
  %74 = load i32, i32* %ii, align 4
  %add158 = add nsw i32 %74, 1
  %idxprom159 = sext i32 %add158 to i64
  %arrayidx160 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom159
  %75 = load i8, i8* %arrayidx160, align 1
  %conv161 = zext i8 %75 to i32
  %cmp162 = icmp ne i32 %conv161, 3
  br i1 %cmp162, label %land.lhs.true.164, label %if.end.174

land.lhs.true.164:                                ; preds = %if.end.157
  %76 = load i32, i32* %ii, align 4
  %add165 = add nsw i32 %76, 1
  %idxprom166 = sext i32 %add165 to i64
  %77 = load i32*, i32** %gb.addr, align 8
  %arrayidx167 = getelementptr inbounds i32, i32* %77, i64 %idxprom166
  %78 = load i32, i32* %arrayidx167, align 4
  %cmp168 = icmp sgt i32 %78, 0
  br i1 %cmp168, label %if.then.170, label %if.end.174

if.then.170:                                      ; preds = %land.lhs.true.164
  %79 = load i32, i32* %ii, align 4
  %idxprom171 = sext i32 %79 to i64
  %arrayidx172 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom171
  %80 = load i32, i32* %arrayidx172, align 4
  %inc173 = add nsw i32 %80, 1
  store i32 %inc173, i32* %arrayidx172, align 4
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.170, %land.lhs.true.164, %if.end.157
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %lor.lhs.false.100, %lor.lhs.false.87, %lor.lhs.false.74, %lor.lhs.false, %if.end.52
  %81 = load i32, i32* %ii, align 4
  %idxprom176 = sext i32 %81 to i64
  %82 = load i32*, i32** %gb.addr, align 8
  %arrayidx177 = getelementptr inbounds i32, i32* %82, i64 %idxprom176
  %83 = load i32, i32* %arrayidx177, align 4
  %cmp178 = icmp sle i32 %83, 0
  br i1 %cmp178, label %land.lhs.true.180, label %if.end.300

land.lhs.true.180:                                ; preds = %if.end.175
  %84 = load i32, i32* %ii, align 4
  %add181 = add nsw i32 %84, 20
  %idxprom182 = sext i32 %add181 to i64
  %arrayidx183 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom182
  %85 = load i8, i8* %arrayidx183, align 1
  %conv184 = zext i8 %85 to i32
  %cmp185 = icmp ne i32 %conv184, 3
  br i1 %cmp185, label %lor.lhs.false.187, label %land.lhs.true.193

lor.lhs.false.187:                                ; preds = %land.lhs.true.180
  %86 = load i32, i32* %ii, align 4
  %add188 = add nsw i32 %86, 20
  %idxprom189 = sext i32 %add188 to i64
  %87 = load i32*, i32** %gb.addr, align 8
  %arrayidx190 = getelementptr inbounds i32, i32* %87, i64 %idxprom189
  %88 = load i32, i32* %arrayidx190, align 4
  %cmp191 = icmp sle i32 %88, 0
  br i1 %cmp191, label %land.lhs.true.193, label %if.end.300

land.lhs.true.193:                                ; preds = %lor.lhs.false.187, %land.lhs.true.180
  %89 = load i32, i32* %ii, align 4
  %sub194 = sub nsw i32 %89, 1
  %idxprom195 = sext i32 %sub194 to i64
  %arrayidx196 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom195
  %90 = load i8, i8* %arrayidx196, align 1
  %conv197 = zext i8 %90 to i32
  %cmp198 = icmp ne i32 %conv197, 3
  br i1 %cmp198, label %lor.lhs.false.200, label %land.lhs.true.206

lor.lhs.false.200:                                ; preds = %land.lhs.true.193
  %91 = load i32, i32* %ii, align 4
  %sub201 = sub nsw i32 %91, 1
  %idxprom202 = sext i32 %sub201 to i64
  %92 = load i32*, i32** %gb.addr, align 8
  %arrayidx203 = getelementptr inbounds i32, i32* %92, i64 %idxprom202
  %93 = load i32, i32* %arrayidx203, align 4
  %cmp204 = icmp sle i32 %93, 0
  br i1 %cmp204, label %land.lhs.true.206, label %if.end.300

land.lhs.true.206:                                ; preds = %lor.lhs.false.200, %land.lhs.true.193
  %94 = load i32, i32* %ii, align 4
  %sub207 = sub nsw i32 %94, 20
  %idxprom208 = sext i32 %sub207 to i64
  %arrayidx209 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom208
  %95 = load i8, i8* %arrayidx209, align 1
  %conv210 = zext i8 %95 to i32
  %cmp211 = icmp ne i32 %conv210, 3
  br i1 %cmp211, label %lor.lhs.false.213, label %land.lhs.true.219

lor.lhs.false.213:                                ; preds = %land.lhs.true.206
  %96 = load i32, i32* %ii, align 4
  %sub214 = sub nsw i32 %96, 20
  %idxprom215 = sext i32 %sub214 to i64
  %97 = load i32*, i32** %gb.addr, align 8
  %arrayidx216 = getelementptr inbounds i32, i32* %97, i64 %idxprom215
  %98 = load i32, i32* %arrayidx216, align 4
  %cmp217 = icmp sle i32 %98, 0
  br i1 %cmp217, label %land.lhs.true.219, label %if.end.300

land.lhs.true.219:                                ; preds = %lor.lhs.false.213, %land.lhs.true.206
  %99 = load i32, i32* %ii, align 4
  %add220 = add nsw i32 %99, 1
  %idxprom221 = sext i32 %add220 to i64
  %arrayidx222 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom221
  %100 = load i8, i8* %arrayidx222, align 1
  %conv223 = zext i8 %100 to i32
  %cmp224 = icmp ne i32 %conv223, 3
  br i1 %cmp224, label %lor.lhs.false.226, label %if.then.232

lor.lhs.false.226:                                ; preds = %land.lhs.true.219
  %101 = load i32, i32* %ii, align 4
  %add227 = add nsw i32 %101, 1
  %idxprom228 = sext i32 %add227 to i64
  %102 = load i32*, i32** %gb.addr, align 8
  %arrayidx229 = getelementptr inbounds i32, i32* %102, i64 %idxprom228
  %103 = load i32, i32* %arrayidx229, align 4
  %cmp230 = icmp sle i32 %103, 0
  br i1 %cmp230, label %if.then.232, label %if.end.300

if.then.232:                                      ; preds = %lor.lhs.false.226, %land.lhs.true.219
  %104 = load i32, i32* %ii, align 4
  %add233 = add nsw i32 %104, 20
  %idxprom234 = sext i32 %add233 to i64
  %arrayidx235 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom234
  %105 = load i8, i8* %arrayidx235, align 1
  %conv236 = zext i8 %105 to i32
  %cmp237 = icmp ne i32 %conv236, 3
  br i1 %cmp237, label %land.lhs.true.239, label %if.end.248

land.lhs.true.239:                                ; preds = %if.then.232
  %106 = load i32, i32* %ii, align 4
  %add240 = add nsw i32 %106, 20
  %idxprom241 = sext i32 %add240 to i64
  %107 = load i32*, i32** %gb.addr, align 8
  %arrayidx242 = getelementptr inbounds i32, i32* %107, i64 %idxprom241
  %108 = load i32, i32* %arrayidx242, align 4
  %cmp243 = icmp slt i32 %108, 0
  br i1 %cmp243, label %if.then.245, label %if.end.248

if.then.245:                                      ; preds = %land.lhs.true.239
  %109 = load i32, i32* %ii, align 4
  %idxprom246 = sext i32 %109 to i64
  %arrayidx247 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom246
  %110 = load i32, i32* %arrayidx247, align 4
  %dec = add nsw i32 %110, -1
  store i32 %dec, i32* %arrayidx247, align 4
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.245, %land.lhs.true.239, %if.then.232
  %111 = load i32, i32* %ii, align 4
  %sub249 = sub nsw i32 %111, 1
  %idxprom250 = sext i32 %sub249 to i64
  %arrayidx251 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom250
  %112 = load i8, i8* %arrayidx251, align 1
  %conv252 = zext i8 %112 to i32
  %cmp253 = icmp ne i32 %conv252, 3
  br i1 %cmp253, label %land.lhs.true.255, label %if.end.265

land.lhs.true.255:                                ; preds = %if.end.248
  %113 = load i32, i32* %ii, align 4
  %sub256 = sub nsw i32 %113, 1
  %idxprom257 = sext i32 %sub256 to i64
  %114 = load i32*, i32** %gb.addr, align 8
  %arrayidx258 = getelementptr inbounds i32, i32* %114, i64 %idxprom257
  %115 = load i32, i32* %arrayidx258, align 4
  %cmp259 = icmp slt i32 %115, 0
  br i1 %cmp259, label %if.then.261, label %if.end.265

if.then.261:                                      ; preds = %land.lhs.true.255
  %116 = load i32, i32* %ii, align 4
  %idxprom262 = sext i32 %116 to i64
  %arrayidx263 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom262
  %117 = load i32, i32* %arrayidx263, align 4
  %dec264 = add nsw i32 %117, -1
  store i32 %dec264, i32* %arrayidx263, align 4
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.261, %land.lhs.true.255, %if.end.248
  %118 = load i32, i32* %ii, align 4
  %sub266 = sub nsw i32 %118, 20
  %idxprom267 = sext i32 %sub266 to i64
  %arrayidx268 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom267
  %119 = load i8, i8* %arrayidx268, align 1
  %conv269 = zext i8 %119 to i32
  %cmp270 = icmp ne i32 %conv269, 3
  br i1 %cmp270, label %land.lhs.true.272, label %if.end.282

land.lhs.true.272:                                ; preds = %if.end.265
  %120 = load i32, i32* %ii, align 4
  %sub273 = sub nsw i32 %120, 20
  %idxprom274 = sext i32 %sub273 to i64
  %121 = load i32*, i32** %gb.addr, align 8
  %arrayidx275 = getelementptr inbounds i32, i32* %121, i64 %idxprom274
  %122 = load i32, i32* %arrayidx275, align 4
  %cmp276 = icmp slt i32 %122, 0
  br i1 %cmp276, label %if.then.278, label %if.end.282

if.then.278:                                      ; preds = %land.lhs.true.272
  %123 = load i32, i32* %ii, align 4
  %idxprom279 = sext i32 %123 to i64
  %arrayidx280 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom279
  %124 = load i32, i32* %arrayidx280, align 4
  %dec281 = add nsw i32 %124, -1
  store i32 %dec281, i32* %arrayidx280, align 4
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.278, %land.lhs.true.272, %if.end.265
  %125 = load i32, i32* %ii, align 4
  %add283 = add nsw i32 %125, 1
  %idxprom284 = sext i32 %add283 to i64
  %arrayidx285 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom284
  %126 = load i8, i8* %arrayidx285, align 1
  %conv286 = zext i8 %126 to i32
  %cmp287 = icmp ne i32 %conv286, 3
  br i1 %cmp287, label %land.lhs.true.289, label %if.end.299

land.lhs.true.289:                                ; preds = %if.end.282
  %127 = load i32, i32* %ii, align 4
  %add290 = add nsw i32 %127, 1
  %idxprom291 = sext i32 %add290 to i64
  %128 = load i32*, i32** %gb.addr, align 8
  %arrayidx292 = getelementptr inbounds i32, i32* %128, i64 %idxprom291
  %129 = load i32, i32* %arrayidx292, align 4
  %cmp293 = icmp slt i32 %129, 0
  br i1 %cmp293, label %if.then.295, label %if.end.299

if.then.295:                                      ; preds = %land.lhs.true.289
  %130 = load i32, i32* %ii, align 4
  %idxprom296 = sext i32 %130 to i64
  %arrayidx297 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom296
  %131 = load i32, i32* %arrayidx297, align 4
  %dec298 = add nsw i32 %131, -1
  store i32 %dec298, i32* %arrayidx297, align 4
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.295, %land.lhs.true.289, %if.end.282
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299, %lor.lhs.false.226, %lor.lhs.false.213, %lor.lhs.false.200, %lor.lhs.false.187, %if.end.175
  br label %for.inc.301

for.inc.301:                                      ; preds = %if.end.300, %if.then.51
  %132 = load i32, i32* %ii, align 4
  %inc302 = add nsw i32 %132, 1
  store i32 %inc302, i32* %ii, align 4
  br label %for.cond.42

for.end.303:                                      ; preds = %for.cond.42
  %133 = load i32*, i32** %gb.addr, align 8
  %134 = bitcast i32* %133 to i8*
  %135 = bitcast [400 x i32]* %work to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %134, i8* %135, i64 1600, i32 4, i1 false)
  br label %for.inc.304

for.inc.304:                                      ; preds = %for.end.303
  %136 = load i32, i32* %n, align 4
  %inc305 = add nsw i32 %136, 1
  store i32 %inc305, i32* %n, align 4
  br label %for.cond.38

for.end.306:                                      ; preds = %for.cond.38
  store i32 0, i32* %n, align 4
  br label %for.cond.307

for.cond.307:                                     ; preds = %for.inc.503, %for.end.306
  %137 = load i32, i32* %n, align 4
  %138 = load i32, i32* %erosions.addr, align 4
  %cmp308 = icmp slt i32 %137, %138
  br i1 %cmp308, label %for.body.310, label %for.end.505

for.body.310:                                     ; preds = %for.cond.307
  store i32 21, i32* %ii, align 4
  br label %for.cond.311

for.cond.311:                                     ; preds = %for.inc.500, %for.body.310
  %139 = load i32, i32* %ii, align 4
  %cmp312 = icmp slt i32 %139, 400
  br i1 %cmp312, label %for.body.314, label %for.end.502

for.body.314:                                     ; preds = %for.cond.311
  %140 = load i32, i32* %ii, align 4
  %idxprom315 = sext i32 %140 to i64
  %arrayidx316 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom315
  %141 = load i8, i8* %arrayidx316, align 1
  %conv317 = zext i8 %141 to i32
  %cmp318 = icmp ne i32 %conv317, 3
  br i1 %cmp318, label %if.end.321, label %if.then.320

if.then.320:                                      ; preds = %for.body.314
  br label %for.inc.500

if.end.321:                                       ; preds = %for.body.314
  %142 = load i32, i32* %ii, align 4
  %idxprom322 = sext i32 %142 to i64
  %arrayidx323 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom322
  %143 = load i32, i32* %arrayidx323, align 4
  %cmp324 = icmp sgt i32 %143, 0
  br i1 %cmp324, label %if.then.326, label %if.end.410

if.then.326:                                      ; preds = %if.end.321
  %144 = load i32, i32* %ii, align 4
  %add327 = add nsw i32 %144, 20
  %idxprom328 = sext i32 %add327 to i64
  %arrayidx329 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom328
  %145 = load i8, i8* %arrayidx329, align 1
  %conv330 = zext i8 %145 to i32
  %cmp331 = icmp ne i32 %conv330, 3
  br i1 %cmp331, label %land.lhs.true.333, label %if.end.343

land.lhs.true.333:                                ; preds = %if.then.326
  %146 = load i32, i32* %ii, align 4
  %add334 = add nsw i32 %146, 20
  %idxprom335 = sext i32 %add334 to i64
  %147 = load i32*, i32** %gb.addr, align 8
  %arrayidx336 = getelementptr inbounds i32, i32* %147, i64 %idxprom335
  %148 = load i32, i32* %arrayidx336, align 4
  %cmp337 = icmp sle i32 %148, 0
  br i1 %cmp337, label %if.then.339, label %if.end.343

if.then.339:                                      ; preds = %land.lhs.true.333
  %149 = load i32, i32* %ii, align 4
  %idxprom340 = sext i32 %149 to i64
  %arrayidx341 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom340
  %150 = load i32, i32* %arrayidx341, align 4
  %dec342 = add nsw i32 %150, -1
  store i32 %dec342, i32* %arrayidx341, align 4
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.339, %land.lhs.true.333, %if.then.326
  %151 = load i32, i32* %ii, align 4
  %sub344 = sub nsw i32 %151, 1
  %idxprom345 = sext i32 %sub344 to i64
  %arrayidx346 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom345
  %152 = load i8, i8* %arrayidx346, align 1
  %conv347 = zext i8 %152 to i32
  %cmp348 = icmp ne i32 %conv347, 3
  br i1 %cmp348, label %land.lhs.true.350, label %if.end.365

land.lhs.true.350:                                ; preds = %if.end.343
  %153 = load i32, i32* %ii, align 4
  %sub351 = sub nsw i32 %153, 1
  %idxprom352 = sext i32 %sub351 to i64
  %154 = load i32*, i32** %gb.addr, align 8
  %arrayidx353 = getelementptr inbounds i32, i32* %154, i64 %idxprom352
  %155 = load i32, i32* %arrayidx353, align 4
  %cmp354 = icmp sle i32 %155, 0
  br i1 %cmp354, label %land.lhs.true.356, label %if.end.365

land.lhs.true.356:                                ; preds = %land.lhs.true.350
  %156 = load i32, i32* %ii, align 4
  %idxprom357 = sext i32 %156 to i64
  %arrayidx358 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom357
  %157 = load i32, i32* %arrayidx358, align 4
  %cmp359 = icmp sgt i32 %157, 0
  br i1 %cmp359, label %if.then.361, label %if.end.365

if.then.361:                                      ; preds = %land.lhs.true.356
  %158 = load i32, i32* %ii, align 4
  %idxprom362 = sext i32 %158 to i64
  %arrayidx363 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom362
  %159 = load i32, i32* %arrayidx363, align 4
  %dec364 = add nsw i32 %159, -1
  store i32 %dec364, i32* %arrayidx363, align 4
  br label %if.end.365

if.end.365:                                       ; preds = %if.then.361, %land.lhs.true.356, %land.lhs.true.350, %if.end.343
  %160 = load i32, i32* %ii, align 4
  %sub366 = sub nsw i32 %160, 20
  %idxprom367 = sext i32 %sub366 to i64
  %arrayidx368 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom367
  %161 = load i8, i8* %arrayidx368, align 1
  %conv369 = zext i8 %161 to i32
  %cmp370 = icmp ne i32 %conv369, 3
  br i1 %cmp370, label %land.lhs.true.372, label %if.end.387

land.lhs.true.372:                                ; preds = %if.end.365
  %162 = load i32, i32* %ii, align 4
  %sub373 = sub nsw i32 %162, 20
  %idxprom374 = sext i32 %sub373 to i64
  %163 = load i32*, i32** %gb.addr, align 8
  %arrayidx375 = getelementptr inbounds i32, i32* %163, i64 %idxprom374
  %164 = load i32, i32* %arrayidx375, align 4
  %cmp376 = icmp sle i32 %164, 0
  br i1 %cmp376, label %land.lhs.true.378, label %if.end.387

land.lhs.true.378:                                ; preds = %land.lhs.true.372
  %165 = load i32, i32* %ii, align 4
  %idxprom379 = sext i32 %165 to i64
  %arrayidx380 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom379
  %166 = load i32, i32* %arrayidx380, align 4
  %cmp381 = icmp sgt i32 %166, 0
  br i1 %cmp381, label %if.then.383, label %if.end.387

if.then.383:                                      ; preds = %land.lhs.true.378
  %167 = load i32, i32* %ii, align 4
  %idxprom384 = sext i32 %167 to i64
  %arrayidx385 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom384
  %168 = load i32, i32* %arrayidx385, align 4
  %dec386 = add nsw i32 %168, -1
  store i32 %dec386, i32* %arrayidx385, align 4
  br label %if.end.387

if.end.387:                                       ; preds = %if.then.383, %land.lhs.true.378, %land.lhs.true.372, %if.end.365
  %169 = load i32, i32* %ii, align 4
  %add388 = add nsw i32 %169, 1
  %idxprom389 = sext i32 %add388 to i64
  %arrayidx390 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom389
  %170 = load i8, i8* %arrayidx390, align 1
  %conv391 = zext i8 %170 to i32
  %cmp392 = icmp ne i32 %conv391, 3
  br i1 %cmp392, label %land.lhs.true.394, label %if.end.409

land.lhs.true.394:                                ; preds = %if.end.387
  %171 = load i32, i32* %ii, align 4
  %add395 = add nsw i32 %171, 1
  %idxprom396 = sext i32 %add395 to i64
  %172 = load i32*, i32** %gb.addr, align 8
  %arrayidx397 = getelementptr inbounds i32, i32* %172, i64 %idxprom396
  %173 = load i32, i32* %arrayidx397, align 4
  %cmp398 = icmp sle i32 %173, 0
  br i1 %cmp398, label %land.lhs.true.400, label %if.end.409

land.lhs.true.400:                                ; preds = %land.lhs.true.394
  %174 = load i32, i32* %ii, align 4
  %idxprom401 = sext i32 %174 to i64
  %arrayidx402 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom401
  %175 = load i32, i32* %arrayidx402, align 4
  %cmp403 = icmp sgt i32 %175, 0
  br i1 %cmp403, label %if.then.405, label %if.end.409

if.then.405:                                      ; preds = %land.lhs.true.400
  %176 = load i32, i32* %ii, align 4
  %idxprom406 = sext i32 %176 to i64
  %arrayidx407 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom406
  %177 = load i32, i32* %arrayidx407, align 4
  %dec408 = add nsw i32 %177, -1
  store i32 %dec408, i32* %arrayidx407, align 4
  br label %if.end.409

if.end.409:                                       ; preds = %if.then.405, %land.lhs.true.400, %land.lhs.true.394, %if.end.387
  br label %if.end.410

if.end.410:                                       ; preds = %if.end.409, %if.end.321
  %178 = load i32, i32* %ii, align 4
  %idxprom411 = sext i32 %178 to i64
  %arrayidx412 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom411
  %179 = load i32, i32* %arrayidx412, align 4
  %cmp413 = icmp slt i32 %179, 0
  br i1 %cmp413, label %if.then.415, label %if.end.499

if.then.415:                                      ; preds = %if.end.410
  %180 = load i32, i32* %ii, align 4
  %add416 = add nsw i32 %180, 20
  %idxprom417 = sext i32 %add416 to i64
  %arrayidx418 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom417
  %181 = load i8, i8* %arrayidx418, align 1
  %conv419 = zext i8 %181 to i32
  %cmp420 = icmp ne i32 %conv419, 3
  br i1 %cmp420, label %land.lhs.true.422, label %if.end.432

land.lhs.true.422:                                ; preds = %if.then.415
  %182 = load i32, i32* %ii, align 4
  %add423 = add nsw i32 %182, 20
  %idxprom424 = sext i32 %add423 to i64
  %183 = load i32*, i32** %gb.addr, align 8
  %arrayidx425 = getelementptr inbounds i32, i32* %183, i64 %idxprom424
  %184 = load i32, i32* %arrayidx425, align 4
  %cmp426 = icmp sge i32 %184, 0
  br i1 %cmp426, label %if.then.428, label %if.end.432

if.then.428:                                      ; preds = %land.lhs.true.422
  %185 = load i32, i32* %ii, align 4
  %idxprom429 = sext i32 %185 to i64
  %arrayidx430 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom429
  %186 = load i32, i32* %arrayidx430, align 4
  %inc431 = add nsw i32 %186, 1
  store i32 %inc431, i32* %arrayidx430, align 4
  br label %if.end.432

if.end.432:                                       ; preds = %if.then.428, %land.lhs.true.422, %if.then.415
  %187 = load i32, i32* %ii, align 4
  %sub433 = sub nsw i32 %187, 1
  %idxprom434 = sext i32 %sub433 to i64
  %arrayidx435 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom434
  %188 = load i8, i8* %arrayidx435, align 1
  %conv436 = zext i8 %188 to i32
  %cmp437 = icmp ne i32 %conv436, 3
  br i1 %cmp437, label %land.lhs.true.439, label %if.end.454

land.lhs.true.439:                                ; preds = %if.end.432
  %189 = load i32, i32* %ii, align 4
  %sub440 = sub nsw i32 %189, 1
  %idxprom441 = sext i32 %sub440 to i64
  %190 = load i32*, i32** %gb.addr, align 8
  %arrayidx442 = getelementptr inbounds i32, i32* %190, i64 %idxprom441
  %191 = load i32, i32* %arrayidx442, align 4
  %cmp443 = icmp sge i32 %191, 0
  br i1 %cmp443, label %land.lhs.true.445, label %if.end.454

land.lhs.true.445:                                ; preds = %land.lhs.true.439
  %192 = load i32, i32* %ii, align 4
  %idxprom446 = sext i32 %192 to i64
  %arrayidx447 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom446
  %193 = load i32, i32* %arrayidx447, align 4
  %cmp448 = icmp slt i32 %193, 0
  br i1 %cmp448, label %if.then.450, label %if.end.454

if.then.450:                                      ; preds = %land.lhs.true.445
  %194 = load i32, i32* %ii, align 4
  %idxprom451 = sext i32 %194 to i64
  %arrayidx452 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom451
  %195 = load i32, i32* %arrayidx452, align 4
  %inc453 = add nsw i32 %195, 1
  store i32 %inc453, i32* %arrayidx452, align 4
  br label %if.end.454

if.end.454:                                       ; preds = %if.then.450, %land.lhs.true.445, %land.lhs.true.439, %if.end.432
  %196 = load i32, i32* %ii, align 4
  %sub455 = sub nsw i32 %196, 20
  %idxprom456 = sext i32 %sub455 to i64
  %arrayidx457 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom456
  %197 = load i8, i8* %arrayidx457, align 1
  %conv458 = zext i8 %197 to i32
  %cmp459 = icmp ne i32 %conv458, 3
  br i1 %cmp459, label %land.lhs.true.461, label %if.end.476

land.lhs.true.461:                                ; preds = %if.end.454
  %198 = load i32, i32* %ii, align 4
  %sub462 = sub nsw i32 %198, 20
  %idxprom463 = sext i32 %sub462 to i64
  %199 = load i32*, i32** %gb.addr, align 8
  %arrayidx464 = getelementptr inbounds i32, i32* %199, i64 %idxprom463
  %200 = load i32, i32* %arrayidx464, align 4
  %cmp465 = icmp sge i32 %200, 0
  br i1 %cmp465, label %land.lhs.true.467, label %if.end.476

land.lhs.true.467:                                ; preds = %land.lhs.true.461
  %201 = load i32, i32* %ii, align 4
  %idxprom468 = sext i32 %201 to i64
  %arrayidx469 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom468
  %202 = load i32, i32* %arrayidx469, align 4
  %cmp470 = icmp slt i32 %202, 0
  br i1 %cmp470, label %if.then.472, label %if.end.476

if.then.472:                                      ; preds = %land.lhs.true.467
  %203 = load i32, i32* %ii, align 4
  %idxprom473 = sext i32 %203 to i64
  %arrayidx474 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom473
  %204 = load i32, i32* %arrayidx474, align 4
  %inc475 = add nsw i32 %204, 1
  store i32 %inc475, i32* %arrayidx474, align 4
  br label %if.end.476

if.end.476:                                       ; preds = %if.then.472, %land.lhs.true.467, %land.lhs.true.461, %if.end.454
  %205 = load i32, i32* %ii, align 4
  %add477 = add nsw i32 %205, 1
  %idxprom478 = sext i32 %add477 to i64
  %arrayidx479 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom478
  %206 = load i8, i8* %arrayidx479, align 1
  %conv480 = zext i8 %206 to i32
  %cmp481 = icmp ne i32 %conv480, 3
  br i1 %cmp481, label %land.lhs.true.483, label %if.end.498

land.lhs.true.483:                                ; preds = %if.end.476
  %207 = load i32, i32* %ii, align 4
  %add484 = add nsw i32 %207, 1
  %idxprom485 = sext i32 %add484 to i64
  %208 = load i32*, i32** %gb.addr, align 8
  %arrayidx486 = getelementptr inbounds i32, i32* %208, i64 %idxprom485
  %209 = load i32, i32* %arrayidx486, align 4
  %cmp487 = icmp sge i32 %209, 0
  br i1 %cmp487, label %land.lhs.true.489, label %if.end.498

land.lhs.true.489:                                ; preds = %land.lhs.true.483
  %210 = load i32, i32* %ii, align 4
  %idxprom490 = sext i32 %210 to i64
  %arrayidx491 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom490
  %211 = load i32, i32* %arrayidx491, align 4
  %cmp492 = icmp slt i32 %211, 0
  br i1 %cmp492, label %if.then.494, label %if.end.498

if.then.494:                                      ; preds = %land.lhs.true.489
  %212 = load i32, i32* %ii, align 4
  %idxprom495 = sext i32 %212 to i64
  %arrayidx496 = getelementptr inbounds [400 x i32], [400 x i32]* %work, i32 0, i64 %idxprom495
  %213 = load i32, i32* %arrayidx496, align 4
  %inc497 = add nsw i32 %213, 1
  store i32 %inc497, i32* %arrayidx496, align 4
  br label %if.end.498

if.end.498:                                       ; preds = %if.then.494, %land.lhs.true.489, %land.lhs.true.483, %if.end.476
  br label %if.end.499

if.end.499:                                       ; preds = %if.end.498, %if.end.410
  br label %for.inc.500

for.inc.500:                                      ; preds = %if.end.499, %if.then.320
  %214 = load i32, i32* %ii, align 4
  %inc501 = add nsw i32 %214, 1
  store i32 %inc501, i32* %ii, align 4
  br label %for.cond.311

for.end.502:                                      ; preds = %for.cond.311
  %215 = load i32*, i32** %gb.addr, align 8
  %216 = bitcast i32* %215 to i8*
  %217 = bitcast [400 x i32]* %work to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %216, i8* %217, i64 1600, i32 4, i1 false)
  br label %for.inc.503

for.inc.503:                                      ; preds = %for.end.502
  %218 = load i32, i32* %n, align 4
  %inc504 = add nsw i32 %218, 1
  store i32 %inc504, i32* %n, align 4
  br label %for.cond.307

for.end.505:                                      ; preds = %for.cond.307
  %219 = load i32, i32* %critical_found, align 4
  ret i32 %219
}

; Function Attrs: nounwind uwtable
define internal void @close_bubbles(i32* %gb) #0 {
entry:
  %gb.addr = alloca i32*, align 8
  %bubbles = alloca [400 x i32], align 16
  %ii = alloca i32, align 4
  %found_one = alloca i32, align 4
  %white_neighbor = alloca i32, align 4
  %black_neighbor = alloca i32, align 4
  %new_color = alloca i32, align 4
  store i32* %gb, i32** %gb.addr, align 8
  store i32 1, i32* %found_one, align 4
  %0 = bitcast [400 x i32]* %bubbles to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 1600, i32 16, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %1 = load i32, i32* %found_one, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %found_one, align 4
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %2 = load i32, i32* %ii, align 4
  %cmp = icmp slt i32 %2, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %white_neighbor, align 4
  store i32 0, i32* %black_neighbor, align 4
  store i32 0, i32* %new_color, align 4
  %3 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i32, i32* %ii, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load i32*, i32** %gb.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i64 %idxprom3
  %7 = load i32, i32* %arrayidx4, align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %ii, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom7
  %9 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp eq i32 %9, 3
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false.6
  %10 = load i32, i32* %ii, align 4
  %add = add nsw i32 %10, 20
  %idxprom11 = sext i32 %add to i64
  %arrayidx12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom11
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %11 to i32
  %cmp14 = icmp ne i32 %conv13, 3
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false.21

land.lhs.true:                                    ; preds = %if.end
  %12 = load i32, i32* %ii, align 4
  %add16 = add nsw i32 %12, 20
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom17
  %13 = load i32, i32* %arrayidx18, align 4
  %cmp19 = icmp eq i32 %13, 3
  br i1 %cmp19, label %if.then.59, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %land.lhs.true, %if.end
  %14 = load i32, i32* %ii, align 4
  %sub = sub nsw i32 %14, 1
  %idxprom22 = sext i32 %sub to i64
  %arrayidx23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom22
  %15 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %15 to i32
  %cmp25 = icmp ne i32 %conv24, 3
  br i1 %cmp25, label %land.lhs.true.27, label %lor.lhs.false.33

land.lhs.true.27:                                 ; preds = %lor.lhs.false.21
  %16 = load i32, i32* %ii, align 4
  %sub28 = sub nsw i32 %16, 1
  %idxprom29 = sext i32 %sub28 to i64
  %arrayidx30 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom29
  %17 = load i32, i32* %arrayidx30, align 4
  %cmp31 = icmp eq i32 %17, 3
  br i1 %cmp31, label %if.then.59, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %land.lhs.true.27, %lor.lhs.false.21
  %18 = load i32, i32* %ii, align 4
  %sub34 = sub nsw i32 %18, 20
  %idxprom35 = sext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom35
  %19 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %19 to i32
  %cmp38 = icmp ne i32 %conv37, 3
  br i1 %cmp38, label %land.lhs.true.40, label %lor.lhs.false.46

land.lhs.true.40:                                 ; preds = %lor.lhs.false.33
  %20 = load i32, i32* %ii, align 4
  %sub41 = sub nsw i32 %20, 20
  %idxprom42 = sext i32 %sub41 to i64
  %arrayidx43 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom42
  %21 = load i32, i32* %arrayidx43, align 4
  %cmp44 = icmp eq i32 %21, 3
  br i1 %cmp44, label %if.then.59, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %land.lhs.true.40, %lor.lhs.false.33
  %22 = load i32, i32* %ii, align 4
  %add47 = add nsw i32 %22, 1
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom48
  %23 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %23 to i32
  %cmp51 = icmp ne i32 %conv50, 3
  br i1 %cmp51, label %land.lhs.true.53, label %if.else

land.lhs.true.53:                                 ; preds = %lor.lhs.false.46
  %24 = load i32, i32* %ii, align 4
  %add54 = add nsw i32 %24, 1
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom55
  %25 = load i32, i32* %arrayidx56, align 4
  %cmp57 = icmp eq i32 %25, 3
  br i1 %cmp57, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %land.lhs.true.53, %land.lhs.true.40, %land.lhs.true.27, %land.lhs.true
  store i32 1, i32* %found_one, align 4
  %26 = load i32, i32* %ii, align 4
  %idxprom60 = sext i32 %26 to i64
  %arrayidx61 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom60
  store i32 3, i32* %arrayidx61, align 4
  br label %if.end.247

if.else:                                          ; preds = %land.lhs.true.53, %lor.lhs.false.46
  %27 = load i32, i32* %ii, align 4
  %idxprom62 = sext i32 %27 to i64
  %arrayidx63 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom62
  %28 = load i32, i32* %arrayidx63, align 4
  %cmp64 = icmp eq i32 %28, 1
  br i1 %cmp64, label %if.then.142, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.else
  %29 = load i32, i32* %ii, align 4
  %add67 = add nsw i32 %29, 20
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom68
  %30 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %30 to i32
  %cmp71 = icmp ne i32 %conv70, 3
  br i1 %cmp71, label %land.lhs.true.73, label %lor.lhs.false.85

land.lhs.true.73:                                 ; preds = %lor.lhs.false.66
  %31 = load i32, i32* %ii, align 4
  %add74 = add nsw i32 %31, 20
  %idxprom75 = sext i32 %add74 to i64
  %32 = load i32*, i32** %gb.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %32, i64 %idxprom75
  %33 = load i32, i32* %arrayidx76, align 4
  %cmp77 = icmp sgt i32 %33, 0
  br i1 %cmp77, label %if.then.142, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %land.lhs.true.73
  %34 = load i32, i32* %ii, align 4
  %add80 = add nsw i32 %34, 20
  %idxprom81 = sext i32 %add80 to i64
  %arrayidx82 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom81
  %35 = load i32, i32* %arrayidx82, align 4
  %cmp83 = icmp eq i32 %35, 1
  br i1 %cmp83, label %if.then.142, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %lor.lhs.false.79, %lor.lhs.false.66
  %36 = load i32, i32* %ii, align 4
  %sub86 = sub nsw i32 %36, 1
  %idxprom87 = sext i32 %sub86 to i64
  %arrayidx88 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom87
  %37 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %37 to i32
  %cmp90 = icmp ne i32 %conv89, 3
  br i1 %cmp90, label %land.lhs.true.92, label %lor.lhs.false.104

land.lhs.true.92:                                 ; preds = %lor.lhs.false.85
  %38 = load i32, i32* %ii, align 4
  %sub93 = sub nsw i32 %38, 1
  %idxprom94 = sext i32 %sub93 to i64
  %39 = load i32*, i32** %gb.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %39, i64 %idxprom94
  %40 = load i32, i32* %arrayidx95, align 4
  %cmp96 = icmp sgt i32 %40, 0
  br i1 %cmp96, label %if.then.142, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %land.lhs.true.92
  %41 = load i32, i32* %ii, align 4
  %sub99 = sub nsw i32 %41, 1
  %idxprom100 = sext i32 %sub99 to i64
  %arrayidx101 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom100
  %42 = load i32, i32* %arrayidx101, align 4
  %cmp102 = icmp eq i32 %42, 1
  br i1 %cmp102, label %if.then.142, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %lor.lhs.false.98, %lor.lhs.false.85
  %43 = load i32, i32* %ii, align 4
  %sub105 = sub nsw i32 %43, 20
  %idxprom106 = sext i32 %sub105 to i64
  %arrayidx107 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom106
  %44 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %44 to i32
  %cmp109 = icmp ne i32 %conv108, 3
  br i1 %cmp109, label %land.lhs.true.111, label %lor.lhs.false.123

land.lhs.true.111:                                ; preds = %lor.lhs.false.104
  %45 = load i32, i32* %ii, align 4
  %sub112 = sub nsw i32 %45, 20
  %idxprom113 = sext i32 %sub112 to i64
  %46 = load i32*, i32** %gb.addr, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %46, i64 %idxprom113
  %47 = load i32, i32* %arrayidx114, align 4
  %cmp115 = icmp sgt i32 %47, 0
  br i1 %cmp115, label %if.then.142, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %land.lhs.true.111
  %48 = load i32, i32* %ii, align 4
  %sub118 = sub nsw i32 %48, 20
  %idxprom119 = sext i32 %sub118 to i64
  %arrayidx120 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom119
  %49 = load i32, i32* %arrayidx120, align 4
  %cmp121 = icmp eq i32 %49, 1
  br i1 %cmp121, label %if.then.142, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %lor.lhs.false.117, %lor.lhs.false.104
  %50 = load i32, i32* %ii, align 4
  %add124 = add nsw i32 %50, 1
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom125
  %51 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %51 to i32
  %cmp128 = icmp ne i32 %conv127, 3
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.143

land.lhs.true.130:                                ; preds = %lor.lhs.false.123
  %52 = load i32, i32* %ii, align 4
  %add131 = add nsw i32 %52, 1
  %idxprom132 = sext i32 %add131 to i64
  %53 = load i32*, i32** %gb.addr, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %53, i64 %idxprom132
  %54 = load i32, i32* %arrayidx133, align 4
  %cmp134 = icmp sgt i32 %54, 0
  br i1 %cmp134, label %if.then.142, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %land.lhs.true.130
  %55 = load i32, i32* %ii, align 4
  %add137 = add nsw i32 %55, 1
  %idxprom138 = sext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom138
  %56 = load i32, i32* %arrayidx139, align 4
  %cmp140 = icmp eq i32 %56, 1
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %lor.lhs.false.136, %land.lhs.true.130, %lor.lhs.false.117, %land.lhs.true.111, %lor.lhs.false.98, %land.lhs.true.92, %lor.lhs.false.79, %land.lhs.true.73, %if.else
  store i32 1, i32* %white_neighbor, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %lor.lhs.false.136, %lor.lhs.false.123
  %57 = load i32, i32* %ii, align 4
  %idxprom144 = sext i32 %57 to i64
  %arrayidx145 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom144
  %58 = load i32, i32* %arrayidx145, align 4
  %cmp146 = icmp eq i32 %58, 2
  br i1 %cmp146, label %if.then.224, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %if.end.143
  %59 = load i32, i32* %ii, align 4
  %add149 = add nsw i32 %59, 20
  %idxprom150 = sext i32 %add149 to i64
  %arrayidx151 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom150
  %60 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %60 to i32
  %cmp153 = icmp ne i32 %conv152, 3
  br i1 %cmp153, label %land.lhs.true.155, label %lor.lhs.false.167

land.lhs.true.155:                                ; preds = %lor.lhs.false.148
  %61 = load i32, i32* %ii, align 4
  %add156 = add nsw i32 %61, 20
  %idxprom157 = sext i32 %add156 to i64
  %62 = load i32*, i32** %gb.addr, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %62, i64 %idxprom157
  %63 = load i32, i32* %arrayidx158, align 4
  %cmp159 = icmp slt i32 %63, 0
  br i1 %cmp159, label %if.then.224, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %land.lhs.true.155
  %64 = load i32, i32* %ii, align 4
  %add162 = add nsw i32 %64, 20
  %idxprom163 = sext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom163
  %65 = load i32, i32* %arrayidx164, align 4
  %cmp165 = icmp eq i32 %65, 2
  br i1 %cmp165, label %if.then.224, label %lor.lhs.false.167

lor.lhs.false.167:                                ; preds = %lor.lhs.false.161, %lor.lhs.false.148
  %66 = load i32, i32* %ii, align 4
  %sub168 = sub nsw i32 %66, 1
  %idxprom169 = sext i32 %sub168 to i64
  %arrayidx170 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom169
  %67 = load i8, i8* %arrayidx170, align 1
  %conv171 = zext i8 %67 to i32
  %cmp172 = icmp ne i32 %conv171, 3
  br i1 %cmp172, label %land.lhs.true.174, label %lor.lhs.false.186

land.lhs.true.174:                                ; preds = %lor.lhs.false.167
  %68 = load i32, i32* %ii, align 4
  %sub175 = sub nsw i32 %68, 1
  %idxprom176 = sext i32 %sub175 to i64
  %69 = load i32*, i32** %gb.addr, align 8
  %arrayidx177 = getelementptr inbounds i32, i32* %69, i64 %idxprom176
  %70 = load i32, i32* %arrayidx177, align 4
  %cmp178 = icmp slt i32 %70, 0
  br i1 %cmp178, label %if.then.224, label %lor.lhs.false.180

lor.lhs.false.180:                                ; preds = %land.lhs.true.174
  %71 = load i32, i32* %ii, align 4
  %sub181 = sub nsw i32 %71, 1
  %idxprom182 = sext i32 %sub181 to i64
  %arrayidx183 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom182
  %72 = load i32, i32* %arrayidx183, align 4
  %cmp184 = icmp eq i32 %72, 2
  br i1 %cmp184, label %if.then.224, label %lor.lhs.false.186

lor.lhs.false.186:                                ; preds = %lor.lhs.false.180, %lor.lhs.false.167
  %73 = load i32, i32* %ii, align 4
  %sub187 = sub nsw i32 %73, 20
  %idxprom188 = sext i32 %sub187 to i64
  %arrayidx189 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom188
  %74 = load i8, i8* %arrayidx189, align 1
  %conv190 = zext i8 %74 to i32
  %cmp191 = icmp ne i32 %conv190, 3
  br i1 %cmp191, label %land.lhs.true.193, label %lor.lhs.false.205

land.lhs.true.193:                                ; preds = %lor.lhs.false.186
  %75 = load i32, i32* %ii, align 4
  %sub194 = sub nsw i32 %75, 20
  %idxprom195 = sext i32 %sub194 to i64
  %76 = load i32*, i32** %gb.addr, align 8
  %arrayidx196 = getelementptr inbounds i32, i32* %76, i64 %idxprom195
  %77 = load i32, i32* %arrayidx196, align 4
  %cmp197 = icmp slt i32 %77, 0
  br i1 %cmp197, label %if.then.224, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %land.lhs.true.193
  %78 = load i32, i32* %ii, align 4
  %sub200 = sub nsw i32 %78, 20
  %idxprom201 = sext i32 %sub200 to i64
  %arrayidx202 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom201
  %79 = load i32, i32* %arrayidx202, align 4
  %cmp203 = icmp eq i32 %79, 2
  br i1 %cmp203, label %if.then.224, label %lor.lhs.false.205

lor.lhs.false.205:                                ; preds = %lor.lhs.false.199, %lor.lhs.false.186
  %80 = load i32, i32* %ii, align 4
  %add206 = add nsw i32 %80, 1
  %idxprom207 = sext i32 %add206 to i64
  %arrayidx208 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom207
  %81 = load i8, i8* %arrayidx208, align 1
  %conv209 = zext i8 %81 to i32
  %cmp210 = icmp ne i32 %conv209, 3
  br i1 %cmp210, label %land.lhs.true.212, label %if.end.225

land.lhs.true.212:                                ; preds = %lor.lhs.false.205
  %82 = load i32, i32* %ii, align 4
  %add213 = add nsw i32 %82, 1
  %idxprom214 = sext i32 %add213 to i64
  %83 = load i32*, i32** %gb.addr, align 8
  %arrayidx215 = getelementptr inbounds i32, i32* %83, i64 %idxprom214
  %84 = load i32, i32* %arrayidx215, align 4
  %cmp216 = icmp slt i32 %84, 0
  br i1 %cmp216, label %if.then.224, label %lor.lhs.false.218

lor.lhs.false.218:                                ; preds = %land.lhs.true.212
  %85 = load i32, i32* %ii, align 4
  %add219 = add nsw i32 %85, 1
  %idxprom220 = sext i32 %add219 to i64
  %arrayidx221 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom220
  %86 = load i32, i32* %arrayidx221, align 4
  %cmp222 = icmp eq i32 %86, 2
  br i1 %cmp222, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %lor.lhs.false.218, %land.lhs.true.212, %lor.lhs.false.199, %land.lhs.true.193, %lor.lhs.false.180, %land.lhs.true.174, %lor.lhs.false.161, %land.lhs.true.155, %if.end.143
  store i32 1, i32* %black_neighbor, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.224, %lor.lhs.false.218, %lor.lhs.false.205
  %87 = load i32, i32* %white_neighbor, align 4
  %tobool226 = icmp ne i32 %87, 0
  br i1 %tobool226, label %if.then.227, label %if.else.232

if.then.227:                                      ; preds = %if.end.225
  %88 = load i32, i32* %black_neighbor, align 4
  %tobool228 = icmp ne i32 %88, 0
  br i1 %tobool228, label %if.then.229, label %if.else.230

if.then.229:                                      ; preds = %if.then.227
  store i32 3, i32* %new_color, align 4
  br label %if.end.231

if.else.230:                                      ; preds = %if.then.227
  store i32 1, i32* %new_color, align 4
  br label %if.end.231

if.end.231:                                       ; preds = %if.else.230, %if.then.229
  br label %if.end.236

if.else.232:                                      ; preds = %if.end.225
  %89 = load i32, i32* %black_neighbor, align 4
  %tobool233 = icmp ne i32 %89, 0
  br i1 %tobool233, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %if.else.232
  store i32 2, i32* %new_color, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.234, %if.else.232
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.end.231
  %90 = load i32, i32* %new_color, align 4
  %tobool237 = icmp ne i32 %90, 0
  br i1 %tobool237, label %land.lhs.true.238, label %if.end.246

land.lhs.true.238:                                ; preds = %if.end.236
  %91 = load i32, i32* %new_color, align 4
  %92 = load i32, i32* %ii, align 4
  %idxprom239 = sext i32 %92 to i64
  %arrayidx240 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom239
  %93 = load i32, i32* %arrayidx240, align 4
  %cmp241 = icmp ne i32 %91, %93
  br i1 %cmp241, label %if.then.243, label %if.end.246

if.then.243:                                      ; preds = %land.lhs.true.238
  store i32 1, i32* %found_one, align 4
  %94 = load i32, i32* %new_color, align 4
  %95 = load i32, i32* %ii, align 4
  %idxprom244 = sext i32 %95 to i64
  %arrayidx245 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom244
  store i32 %94, i32* %arrayidx245, align 4
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.243, %land.lhs.true.238, %if.end.236
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %if.then.59
  br label %for.inc

for.inc:                                          ; preds = %if.end.247, %if.then
  %96 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %96, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 21, i32* %ii, align 4
  br label %for.cond.248

for.cond.248:                                     ; preds = %for.inc.279, %while.end
  %97 = load i32, i32* %ii, align 4
  %cmp249 = icmp slt i32 %97, 400
  br i1 %cmp249, label %for.body.251, label %for.end.281

for.body.251:                                     ; preds = %for.cond.248
  %98 = load i32, i32* %ii, align 4
  %idxprom252 = sext i32 %98 to i64
  %arrayidx253 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom252
  %99 = load i8, i8* %arrayidx253, align 1
  %conv254 = zext i8 %99 to i32
  %cmp255 = icmp ne i32 %conv254, 3
  br i1 %cmp255, label %lor.lhs.false.257, label %if.then.261

lor.lhs.false.257:                                ; preds = %for.body.251
  %100 = load i32, i32* %ii, align 4
  %idxprom258 = sext i32 %100 to i64
  %101 = load i32*, i32** %gb.addr, align 8
  %arrayidx259 = getelementptr inbounds i32, i32* %101, i64 %idxprom258
  %102 = load i32, i32* %arrayidx259, align 4
  %tobool260 = icmp ne i32 %102, 0
  br i1 %tobool260, label %if.then.261, label %if.end.262

if.then.261:                                      ; preds = %lor.lhs.false.257, %for.body.251
  br label %for.inc.279

if.end.262:                                       ; preds = %lor.lhs.false.257
  %103 = load i32, i32* %ii, align 4
  %idxprom263 = sext i32 %103 to i64
  %arrayidx264 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom263
  %104 = load i32, i32* %arrayidx264, align 4
  %cmp265 = icmp eq i32 %104, 1
  br i1 %cmp265, label %if.then.267, label %if.end.270

if.then.267:                                      ; preds = %if.end.262
  %105 = load i32, i32* %ii, align 4
  %idxprom268 = sext i32 %105 to i64
  %106 = load i32*, i32** %gb.addr, align 8
  %arrayidx269 = getelementptr inbounds i32, i32* %106, i64 %idxprom268
  store i32 1, i32* %arrayidx269, align 4
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.267, %if.end.262
  %107 = load i32, i32* %ii, align 4
  %idxprom271 = sext i32 %107 to i64
  %arrayidx272 = getelementptr inbounds [400 x i32], [400 x i32]* %bubbles, i32 0, i64 %idxprom271
  %108 = load i32, i32* %arrayidx272, align 4
  %cmp273 = icmp eq i32 %108, 2
  br i1 %cmp273, label %if.then.275, label %if.end.278

if.then.275:                                      ; preds = %if.end.270
  %109 = load i32, i32* %ii, align 4
  %idxprom276 = sext i32 %109 to i64
  %110 = load i32*, i32** %gb.addr, align 8
  %arrayidx277 = getelementptr inbounds i32, i32* %110, i64 %idxprom276
  store i32 -1, i32* %arrayidx277, align 4
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.275, %if.end.270
  br label %for.inc.279

for.inc.279:                                      ; preds = %if.end.278, %if.then.261
  %111 = load i32, i32* %ii, align 4
  %inc280 = add nsw i32 %111, 1
  store i32 %inc280, i32* %ii, align 4
  br label %for.cond.248

for.end.281:                                      ; preds = %for.cond.248
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_regions(i32* %gb) #0 {
entry:
  %gb.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ii = alloca i32, align 4
  store i32* %gb, i32** %gb.addr, align 8
  call void @start_draw_board()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* @board_size, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %4, 20
  %add = add nsw i32 21, %mul
  %5 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %add, %5
  store i32 %add4, i32* %ii, align 4
  %6 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.3
  %8 = load i32, i32* %ii, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom5
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx6, i32 0, i32 16
  %9 = load i32, i32* %status, align 4
  %cmp7 = icmp ne i32 %9, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, i32* %ii, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom9
  %11 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %11 to i32
  store i32 %conv11, i32* %k, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body.3
  store i32 0, i32* %k, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %k, align 4
  switch i32 %12, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.26
    i32 1, label %sw.bb.35
  ]

sw.bb:                                            ; preds = %if.end
  %13 = load i32, i32* %ii, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load i32*, i32** %gb.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %14, i64 %idxprom12
  %15 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp sgt i32 %15, 0
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %sw.bb
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %j, align 4
  call void @draw_color_char(i32 %16, i32 %17, i32 119, i32 2)
  br label %if.end.25

if.else.17:                                       ; preds = %sw.bb
  %18 = load i32, i32* %ii, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load i32*, i32** %gb.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %19, i64 %idxprom18
  %20 = load i32, i32* %arrayidx19, align 4
  %cmp20 = icmp slt i32 %20, 0
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else.17
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %j, align 4
  call void @draw_color_char(i32 %21, i32 %22, i32 98, i32 5)
  br label %if.end.24

if.else.23:                                       ; preds = %if.else.17
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %j, align 4
  call void @draw_color_char(i32 %23, i32 %24, i32 46, i32 0)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.22
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.16
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end
  %25 = load i32, i32* %ii, align 4
  %idxprom27 = sext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom27
  %status29 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx28, i32 0, i32 16
  %26 = load i32, i32* %status29, align 4
  %cmp30 = icmp eq i32 %26, 2
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %sw.bb.26
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %j, align 4
  call void @draw_color_char(i32 %27, i32 %28, i32 88, i32 1)
  br label %if.end.34

if.else.33:                                       ; preds = %sw.bb.26
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %j, align 4
  call void @draw_color_char(i32 %29, i32 %30, i32 88, i32 0)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.32
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end
  %31 = load i32, i32* %ii, align 4
  %idxprom36 = sext i32 %31 to i64
  %arrayidx37 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom36
  %status38 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx37, i32 0, i32 16
  %32 = load i32, i32* %status38, align 4
  %cmp39 = icmp eq i32 %32, 2
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %sw.bb.35
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %j, align 4
  call void @draw_color_char(i32 %33, i32 %34, i32 79, i32 1)
  br label %if.end.43

if.else.42:                                       ; preds = %sw.bb.35
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %j, align 4
  call void @draw_color_char(i32 %35, i32 %36, i32 79, i32 0)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.then.41
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.end.43, %if.end.34, %if.end.25
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %37 = load i32, i32* %j, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end
  %38 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %38, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond

for.end.46:                                       ; preds = %for.cond
  call void @end_draw_board()
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @captured_territory(i32 %pos, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom2
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx3, i32 0, i32 16
  %3 = load i32, i32* %status, align 4
  %cmp4 = icmp eq i32 %3, 1
  br i1 %cmp4, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %pos.addr, align 4
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom7
  %status9 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx8, i32 0, i32 16
  %5 = load i32, i32* %status9, align 4
  %cmp10 = icmp eq i32 %5, 3
  br i1 %cmp10, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.6
  %6 = load i32, i32* %pos.addr, align 4
  %idxprom13 = sext i32 %6 to i64
  %arrayidx14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom13
  %7 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %7 to i32
  %8 = load i32, i32* %color.addr, align 4
  %cmp16 = icmp eq i32 %conv15, %8
  br i1 %cmp16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.12
  %9 = load i32, i32* %pos.addr, align 4
  %idxprom18 = sext i32 %9 to i64
  %arrayidx19 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom18
  %status20 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx19, i32 0, i32 16
  %10 = load i32, i32* %status20, align 4
  %cmp21 = icmp eq i32 %10, 2
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false.6, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false.12
  %11 = load i32, i32* %pos.addr, align 4
  %idxprom23 = sext i32 %11 to i64
  %arrayidx24 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom23
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx24, i32 0, i32 1
  %12 = load i32, i32* %id, align 4
  %idxprom25 = sext i32 %12 to i64
  %13 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx26 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %13, i64 %idxprom25
  %neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx26, i32 0, i32 2
  %14 = load i32, i32* %neighbors, align 4
  %cmp27 = icmp eq i32 %14, 0
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.36

land.lhs.true.29:                                 ; preds = %if.end
  %15 = load i32, i32* %pos.addr, align 4
  %idxprom30 = sext i32 %15 to i64
  %arrayidx31 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom30
  %status32 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx31, i32 0, i32 16
  %16 = load i32, i32* %status32, align 4
  %cmp33 = icmp eq i32 %16, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true.29
  store i32 1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %land.lhs.true.29, %if.end
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.36
  %17 = load i32, i32* %d, align 4
  %18 = load i32, i32* %pos.addr, align 4
  %idxprom37 = sext i32 %18 to i64
  %arrayidx38 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom37
  %id39 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx38, i32 0, i32 1
  %19 = load i32, i32* %id39, align 4
  %idxprom40 = sext i32 %19 to i64
  %20 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx41 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %20, i64 %idxprom40
  %neighbors42 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx41, i32 0, i32 2
  %21 = load i32, i32* %neighbors42, align 4
  %cmp43 = icmp slt i32 %17, %21
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %d, align 4
  %idxprom45 = sext i32 %22 to i64
  %23 = load i32, i32* %pos.addr, align 4
  %idxprom46 = sext i32 %23 to i64
  %arrayidx47 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom46
  %id48 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx47, i32 0, i32 1
  %24 = load i32, i32* %id48, align 4
  %idxprom49 = sext i32 %24 to i64
  %25 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx50 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %25, i64 %idxprom49
  %adjacent = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx50, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent, i32 0, i64 %idxprom45
  %26 = load i32, i32* %arrayidx51, align 4
  %idxprom52 = sext i32 %26 to i64
  %27 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx53 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %27, i64 %idxprom52
  %origin = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx53, i32 0, i32 0
  %28 = load i32, i32* %origin, align 4
  %idxprom54 = sext i32 %28 to i64
  %arrayidx55 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom54
  %color56 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx55, i32 0, i32 0
  %29 = load i32, i32* %color56, align 4
  %30 = load i32, i32* %pos.addr, align 4
  %idxprom57 = sext i32 %30 to i64
  %arrayidx58 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom57
  %31 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %31 to i32
  %sub = sub nsw i32 3, %conv59
  %cmp60 = icmp eq i32 %29, %sub
  br i1 %cmp60, label %land.lhs.true.62, label %if.end.103

land.lhs.true.62:                                 ; preds = %for.body
  %32 = load i32, i32* %d, align 4
  %idxprom63 = sext i32 %32 to i64
  %33 = load i32, i32* %pos.addr, align 4
  %idxprom64 = sext i32 %33 to i64
  %arrayidx65 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom64
  %id66 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx65, i32 0, i32 1
  %34 = load i32, i32* %id66, align 4
  %idxprom67 = sext i32 %34 to i64
  %35 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx68 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %35, i64 %idxprom67
  %adjacent69 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx68, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent69, i32 0, i64 %idxprom63
  %36 = load i32, i32* %arrayidx70, align 4
  %idxprom71 = sext i32 %36 to i64
  %37 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx72 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %37, i64 %idxprom71
  %origin73 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx72, i32 0, i32 0
  %38 = load i32, i32* %origin73, align 4
  %idxprom74 = sext i32 %38 to i64
  %arrayidx75 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom74
  %status76 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx75, i32 0, i32 16
  %39 = load i32, i32* %status76, align 4
  %cmp77 = icmp eq i32 %39, 1
  br i1 %cmp77, label %if.then.102, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %land.lhs.true.62
  %40 = load i32, i32* %pos.addr, align 4
  %idxprom80 = sext i32 %40 to i64
  %arrayidx81 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom80
  %41 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %41 to i32
  %42 = load i32, i32* %color.addr, align 4
  %cmp83 = icmp ne i32 %conv82, %42
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.103

land.lhs.true.85:                                 ; preds = %lor.lhs.false.79
  %43 = load i32, i32* %d, align 4
  %idxprom86 = sext i32 %43 to i64
  %44 = load i32, i32* %pos.addr, align 4
  %idxprom87 = sext i32 %44 to i64
  %arrayidx88 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom87
  %id89 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx88, i32 0, i32 1
  %45 = load i32, i32* %id89, align 4
  %idxprom90 = sext i32 %45 to i64
  %46 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx91 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %46, i64 %idxprom90
  %adjacent92 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx91, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent92, i32 0, i64 %idxprom86
  %47 = load i32, i32* %arrayidx93, align 4
  %idxprom94 = sext i32 %47 to i64
  %48 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx95 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %48, i64 %idxprom94
  %origin96 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx95, i32 0, i32 0
  %49 = load i32, i32* %origin96, align 4
  %idxprom97 = sext i32 %49 to i64
  %arrayidx98 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom97
  %status99 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx98, i32 0, i32 16
  %50 = load i32, i32* %status99, align 4
  %cmp100 = icmp eq i32 %50, 2
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %land.lhs.true.85, %land.lhs.true.62
  store i32 1, i32* %retval
  br label %return

if.end.103:                                       ; preds = %land.lhs.true.85, %lor.lhs.false.79, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.103
  %51 = load i32, i32* %d, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.102, %if.then.35, %if.then
  %52 = load i32, i32* %retval
  ret i32 %52
}

declare i32 @gprintf(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare void @start_draw_board() #1

declare void @draw_color_char(i32, i32, i32, i32) #1

declare void @end_draw_board() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
