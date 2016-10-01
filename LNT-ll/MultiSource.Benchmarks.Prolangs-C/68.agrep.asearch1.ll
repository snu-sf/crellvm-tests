; ModuleID = './MultiSource.Benchmarks.Prolangs-C/68.agrep.asearch1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I = external global i32, align 4
@Init1 = external global i32, align 4
@DD = external global i32, align 4
@S = external global i32, align 4
@NO_ERR_MASK = external global i32, align 4
@D_endpos = external global i32, align 4
@Init = external global [0 x i32], align 4
@DELIMITER = external global i32, align 4
@Mask = external global [0 x i32], align 4
@AND = external global i32, align 4
@endposition = external global i32, align 4
@INVERSE = external global i32, align 4
@FILENAMEONLY = external global i32, align 4
@num_of_matched = external global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@CurrentFileName = external global [0 x i8], align 1
@TRUNCATE = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @asearch1(i8* %old_D_pat, i32 %Text, i32 %D) #0 {
entry:
  %old_D_pat.addr = alloca i8*, align 8
  %Text.addr = alloca i32, align 4
  %D.addr = alloca i32, align 4
  %end = alloca i32, align 4
  %i = alloca i32, align 4
  %r1 = alloca i32, align 4
  %r3 = alloca i32, align 4
  %r4 = alloca i32, align 4
  %r5 = alloca i32, align 4
  %CMask = alloca i32, align 4
  %D_Mask = alloca i32, align 4
  %k = alloca i32, align 4
  %endpos = alloca i32, align 4
  %r_NO_ERR = alloca i32, align 4
  %A = alloca [17 x i32], align 16
  %B = alloca [17 x i32], align 16
  %D_length = alloca i32, align 4
  %ResidueSize = alloca i32, align 4
  %lasti = alloca i32, align 4
  %num_read = alloca i32, align 4
  %FIRSTROUND = alloca i32, align 4
  %j = alloca i32, align 4
  %buffer = alloca [98305 x i8], align 16
  store i8* %old_D_pat, i8** %old_D_pat.addr, align 8
  store i32 %Text, i32* %Text.addr, align 4
  store i32 %D, i32* %D.addr, align 4
  store i32 0, i32* %j, align 4
  %0 = load i32, i32* @I, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* @Init1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @DD, align 4
  %2 = load i32, i32* %D.addr, align 4
  %cmp1 = icmp ugt i32 %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* %D.addr, align 4
  %add = add i32 %3, 1
  store i32 %add, i32* @DD, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %4 = load i32, i32* @I, align 4
  %5 = load i32, i32* %D.addr, align 4
  %cmp4 = icmp ugt i32 %4, %5
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %6 = load i32, i32* %D.addr, align 4
  %add6 = add i32 %6, 1
  store i32 %add6, i32* @I, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  %7 = load i32, i32* @S, align 4
  %8 = load i32, i32* %D.addr, align 4
  %cmp8 = icmp ugt i32 %7, %8
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %9 = load i32, i32* %D.addr, align 4
  %add10 = add i32 %9, 1
  store i32 %add10, i32* @S, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  %10 = load i8*, i8** %old_D_pat.addr, align 8
  %call = call i64 @strlen(i8* %10) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %D_length, align 4
  %arrayidx = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i64 49151
  store i8 10, i8* %arrayidx, align 1
  store i32 49152, i32* %lasti, align 4
  %11 = load i32, i32* @NO_ERR_MASK, align 4
  store i32 %11, i32* %r_NO_ERR, align 4
  %12 = load i32, i32* @D_endpos, align 4
  store i32 %12, i32* %D_Mask, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %D_length, align 4
  %cmp12 = icmp ult i32 %13, %14
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %D_Mask, align 4
  %shl = shl i32 %15, 1
  %16 = load i32, i32* %D_Mask, align 4
  %or = or i32 %shl, %16
  store i32 %or, i32* %D_Mask, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %D_Mask, align 4
  %neg = xor i32 %18, -1
  store i32 %neg, i32* %D_Mask, align 4
  %19 = load i32, i32* @D_endpos, align 4
  store i32 %19, i32* %endpos, align 4
  %20 = load i32, i32* %D.addr, align 4
  %add14 = add i32 %20, 1
  store i32 %add14, i32* %r3, align 4
  %21 = load i32, i32* %D.addr, align 4
  %mul = mul i32 %21, 2
  store i32 %mul, i32* %r4, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.22, %for.end
  %22 = load i32, i32* %k, align 4
  %23 = load i32, i32* %D.addr, align 4
  %cmp16 = icmp ult i32 %22, %23
  br i1 %cmp16, label %for.body.18, label %for.end.24

for.body.18:                                      ; preds = %for.cond.15
  %24 = load i32, i32* %k, align 4
  %idxprom = zext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx19, align 4
  %25 = load i32, i32* %k, align 4
  %idxprom20 = zext i32 %25 to i64
  %arrayidx21 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom20
  store i32 0, i32* %arrayidx21, align 4
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.18
  %26 = load i32, i32* %k, align 4
  %inc23 = add i32 %26, 1
  store i32 %inc23, i32* %k, align 4
  br label %for.cond.15

for.end.24:                                       ; preds = %for.cond.15
  %27 = load i32, i32* %D.addr, align 4
  store i32 %27, i32* %k, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.33, %for.end.24
  %28 = load i32, i32* %k, align 4
  %29 = load i32, i32* %r4, align 4
  %cmp26 = icmp ule i32 %28, %29
  br i1 %cmp26, label %for.body.28, label %for.end.35

for.body.28:                                      ; preds = %for.cond.25
  %30 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i32 0, i64 0), align 4
  %31 = load i32, i32* %k, align 4
  %idxprom29 = zext i32 %31 to i64
  %arrayidx30 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom29
  store i32 %30, i32* %arrayidx30, align 4
  %32 = load i32, i32* %k, align 4
  %idxprom31 = zext i32 %32 to i64
  %arrayidx32 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom31
  store i32 %30, i32* %arrayidx32, align 4
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.28
  %33 = load i32, i32* %k, align 4
  %inc34 = add i32 %33, 1
  store i32 %inc34, i32* %k, align 4
  br label %for.cond.25

for.end.35:                                       ; preds = %for.cond.25
  br label %while.cond

while.cond:                                       ; preds = %if.end.377, %for.end.35
  %34 = load i32, i32* %Text.addr, align 4
  %arraydecay = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 49152
  %call36 = call i32 @fill_buf(i32 %34, i8* %add.ptr, i32 49152)
  store i32 %call36, i32* %num_read, align 4
  %cmp37 = icmp sgt i32 %call36, 0
  br i1 %cmp37, label %while.body, label %while.end.378

while.body:                                       ; preds = %while.cond
  store i32 49152, i32* %i, align 4
  %35 = load i32, i32* %num_read, align 4
  %add39 = add nsw i32 49152, %35
  store i32 %add39, i32* %end, align 4
  %36 = load i32, i32* %FIRSTROUND, align 4
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %if.then.40, label %if.end.66

if.then.40:                                       ; preds = %while.body
  store i32 49151, i32* %i, align 4
  %37 = load i32, i32* @DELIMITER, align 4
  %tobool41 = icmp ne i32 %37, 0
  br i1 %tobool41, label %if.then.42, label %if.end.65

if.then.42:                                       ; preds = %if.then.40
  store i32 0, i32* %k, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.58, %if.then.42
  %38 = load i32, i32* %k, align 4
  %39 = load i32, i32* %D_length, align 4
  %cmp44 = icmp ult i32 %38, %39
  br i1 %cmp44, label %for.body.46, label %for.end.60

for.body.46:                                      ; preds = %for.cond.43
  %40 = load i32, i32* %k, align 4
  %idxprom47 = zext i32 %40 to i64
  %41 = load i8*, i8** %old_D_pat.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %41, i64 %idxprom47
  %42 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %42 to i32
  %43 = load i32, i32* %k, align 4
  %add50 = add i32 49152, %43
  %idxprom51 = zext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i64 %idxprom51
  %44 = load i8, i8* %arrayidx52, align 1
  %conv53 = sext i8 %44 to i32
  %cmp54 = icmp ne i32 %conv49, %conv53
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %for.body.46
  br label %for.end.60

if.end.57:                                        ; preds = %for.body.46
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.57
  %45 = load i32, i32* %k, align 4
  %inc59 = add i32 %45, 1
  store i32 %inc59, i32* %k, align 4
  br label %for.cond.43

for.end.60:                                       ; preds = %if.then.56, %for.cond.43
  %46 = load i32, i32* %k, align 4
  %47 = load i32, i32* %D_length, align 4
  %cmp61 = icmp uge i32 %46, %47
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %for.end.60
  %48 = load i32, i32* %j, align 4
  %dec = add nsw i32 %48, -1
  store i32 %dec, i32* %j, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %for.end.60
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.40
  store i32 0, i32* %FIRSTROUND, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %while.body
  %49 = load i32, i32* %num_read, align 4
  %cmp67 = icmp slt i32 %49, 49152
  br i1 %cmp67, label %if.then.69, label %if.end.78

if.then.69:                                       ; preds = %if.end.66
  %arraydecay70 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i32 0
  %add.ptr71 = getelementptr inbounds i8, i8* %arraydecay70, i64 49152
  %50 = load i32, i32* %num_read, align 4
  %idx.ext = sext i32 %50 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %add.ptr71, i64 %idx.ext
  %51 = load i8*, i8** %old_D_pat.addr, align 8
  %52 = load i32, i32* %D_length, align 4
  %conv73 = sext i32 %52 to i64
  %call74 = call i8* @strncpy(i8* %add.ptr72, i8* %51, i64 %conv73) #5
  %53 = load i32, i32* %end, align 4
  %54 = load i32, i32* %D_length, align 4
  %add75 = add i32 %53, %54
  store i32 %add75, i32* %end, align 4
  %55 = load i32, i32* %end, align 4
  %idxprom76 = zext i32 %55 to i64
  %arrayidx77 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i64 %idxprom76
  store i8 0, i8* %arrayidx77, align 1
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.69, %if.end.66
  br label %while.cond.79

while.cond.79:                                    ; preds = %if.end.353, %if.end.78
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %end, align 4
  %cmp80 = icmp ult i32 %56, %57
  br i1 %cmp80, label %while.body.82, label %while.end

while.body.82:                                    ; preds = %while.cond.79
  %58 = load i32, i32* %i, align 4
  %inc83 = add i32 %58, 1
  store i32 %inc83, i32* %i, align 4
  %idxprom84 = zext i32 %58 to i64
  %arrayidx85 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i64 %idxprom84
  %59 = load i8, i8* %arrayidx85, align 1
  %idxprom86 = sext i8 %59 to i64
  %arrayidx87 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i32 0, i64 %idxprom86
  %60 = load i32, i32* %arrayidx87, align 4
  store i32 %60, i32* %CMask, align 4
  %61 = load i32, i32* @Init1, align 4
  %62 = load i32, i32* %D.addr, align 4
  %idxprom88 = zext i32 %62 to i64
  %arrayidx89 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom88
  %63 = load i32, i32* %arrayidx89, align 4
  %and = and i32 %61, %63
  store i32 %and, i32* %r1, align 4
  %64 = load i32, i32* %D.addr, align 4
  %idxprom90 = zext i32 %64 to i64
  %arrayidx91 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom90
  %65 = load i32, i32* %arrayidx91, align 4
  %shr = lshr i32 %65, 1
  %66 = load i32, i32* %CMask, align 4
  %and92 = and i32 %shr, %66
  %67 = load i32, i32* %r1, align 4
  %or93 = or i32 %and92, %67
  %68 = load i32, i32* %D.addr, align 4
  %idxprom94 = zext i32 %68 to i64
  %arrayidx95 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom94
  store i32 %or93, i32* %arrayidx95, align 4
  %69 = load i32, i32* %r3, align 4
  store i32 %69, i32* %k, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.121, %while.body.82
  %70 = load i32, i32* %k, align 4
  %71 = load i32, i32* %r4, align 4
  %cmp97 = icmp ule i32 %70, %71
  br i1 %cmp97, label %for.body.99, label %for.end.123

for.body.99:                                      ; preds = %for.cond.96
  %72 = load i32, i32* %k, align 4
  %idxprom100 = zext i32 %72 to i64
  %arrayidx101 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom100
  %73 = load i32, i32* %arrayidx101, align 4
  store i32 %73, i32* %r5, align 4
  %74 = load i32, i32* @Init1, align 4
  %75 = load i32, i32* %r5, align 4
  %and102 = and i32 %74, %75
  store i32 %and102, i32* %r1, align 4
  %76 = load i32, i32* %r5, align 4
  %shr103 = lshr i32 %76, 1
  %77 = load i32, i32* %CMask, align 4
  %and104 = and i32 %shr103, %77
  %78 = load i32, i32* %k, align 4
  %79 = load i32, i32* @I, align 4
  %sub = sub i32 %78, %79
  %idxprom105 = zext i32 %sub to i64
  %arrayidx106 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom105
  %80 = load i32, i32* %arrayidx106, align 4
  %or107 = or i32 %and104, %80
  %81 = load i32, i32* %k, align 4
  %82 = load i32, i32* @DD, align 4
  %sub108 = sub i32 %81, %82
  %idxprom109 = zext i32 %sub108 to i64
  %arrayidx110 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom109
  %83 = load i32, i32* %arrayidx110, align 4
  %84 = load i32, i32* %k, align 4
  %85 = load i32, i32* @S, align 4
  %sub111 = sub i32 %84, %85
  %idxprom112 = zext i32 %sub111 to i64
  %arrayidx113 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom112
  %86 = load i32, i32* %arrayidx113, align 4
  %or114 = or i32 %83, %86
  %shr115 = lshr i32 %or114, 1
  %87 = load i32, i32* %r_NO_ERR, align 4
  %and116 = and i32 %shr115, %87
  %or117 = or i32 %or107, %and116
  %88 = load i32, i32* %r1, align 4
  %or118 = or i32 %or117, %88
  %89 = load i32, i32* %k, align 4
  %idxprom119 = zext i32 %89 to i64
  %arrayidx120 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom119
  store i32 %or118, i32* %arrayidx120, align 4
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.body.99
  %90 = load i32, i32* %k, align 4
  %inc122 = add i32 %90, 1
  store i32 %inc122, i32* %k, align 4
  br label %for.cond.96

for.end.123:                                      ; preds = %for.cond.96
  %91 = load i32, i32* %D.addr, align 4
  %idxprom124 = zext i32 %91 to i64
  %arrayidx125 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom124
  %92 = load i32, i32* %arrayidx125, align 4
  %93 = load i32, i32* %endpos, align 4
  %and126 = and i32 %92, %93
  %tobool127 = icmp ne i32 %and126, 0
  br i1 %tobool127, label %if.then.128, label %if.end.213

if.then.128:                                      ; preds = %for.end.123
  %94 = load i32, i32* %j, align 4
  %inc129 = add nsw i32 %94, 1
  store i32 %inc129, i32* %j, align 4
  %95 = load i32, i32* @AND, align 4
  %cmp130 = icmp eq i32 %95, 1
  br i1 %cmp130, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.128
  %96 = load i32, i32* %D.addr, align 4
  %mul132 = mul i32 %96, 2
  %idxprom133 = zext i32 %mul132 to i64
  %arrayidx134 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom133
  %97 = load i32, i32* %arrayidx134, align 4
  %98 = load i32, i32* @endposition, align 4
  %and135 = and i32 %97, %98
  %99 = load i32, i32* @endposition, align 4
  %cmp136 = icmp eq i32 %and135, %99
  br i1 %cmp136, label %if.then.146, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then.128
  %100 = load i32, i32* @AND, align 4
  %cmp138 = icmp eq i32 %100, 0
  br i1 %cmp138, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false
  %101 = load i32, i32* %D.addr, align 4
  %mul140 = mul i32 %101, 2
  %idxprom141 = zext i32 %mul140 to i64
  %arrayidx142 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom141
  %102 = load i32, i32* %arrayidx142, align 4
  %103 = load i32, i32* @endposition, align 4
  %and143 = and i32 %102, %103
  %tobool144 = icmp ne i32 %and143, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %104 = phi i1 [ false, %lor.lhs.false ], [ %tobool144, %land.rhs ]
  %land.ext = zext i1 %104 to i32
  %105 = load i32, i32* @INVERSE, align 4
  %xor = xor i32 %land.ext, %105
  %tobool145 = icmp ne i32 %xor, 0
  br i1 %tobool145, label %if.then.146, label %if.end.160

if.then.146:                                      ; preds = %land.end, %land.lhs.true
  %106 = load i32, i32* @FILENAMEONLY, align 4
  %tobool147 = icmp ne i32 %106, 0
  br i1 %tobool147, label %if.then.148, label %if.end.151

if.then.148:                                      ; preds = %if.then.146
  %107 = load i32, i32* @num_of_matched, align 4
  %inc149 = add nsw i32 %107, 1
  store i32 %inc149, i32* @num_of_matched, align 4
  %call150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %return

if.end.151:                                       ; preds = %if.then.146
  %108 = load i32, i32* %lasti, align 4
  %109 = load i32, i32* %num_read, align 4
  %add152 = add nsw i32 49152, %109
  %cmp153 = icmp slt i32 %108, %add152
  br i1 %cmp153, label %if.then.155, label %if.end.159

if.then.155:                                      ; preds = %if.end.151
  %arraydecay156 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i32 0
  %110 = load i32, i32* %lasti, align 4
  %111 = load i32, i32* %i, align 4
  %112 = load i32, i32* %D_length, align 4
  %sub157 = sub i32 %111, %112
  %sub158 = sub i32 %sub157, 1
  %113 = load i32, i32* %j, align 4
  call void @output(i8* %arraydecay156, i32 %110, i32 %sub158, i32 %113)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.155, %if.end.151
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %land.end
  %114 = load i32, i32* %i, align 4
  %115 = load i32, i32* %D_length, align 4
  %sub161 = sub i32 %114, %115
  store i32 %sub161, i32* %lasti, align 4
  store i32 0, i32* @TRUNCATE, align 4
  %116 = load i32, i32* %D.addr, align 4
  store i32 %116, i32* %k, align 4
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.170, %if.end.160
  %117 = load i32, i32* %k, align 4
  %118 = load i32, i32* %r4, align 4
  %cmp163 = icmp ule i32 %117, %118
  br i1 %cmp163, label %for.body.165, label %for.end.172

for.body.165:                                     ; preds = %for.cond.162
  %119 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i32 0, i64 0), align 4
  %120 = load i32, i32* %k, align 4
  %idxprom166 = zext i32 %120 to i64
  %arrayidx167 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom166
  store i32 %119, i32* %arrayidx167, align 4
  %121 = load i32, i32* %k, align 4
  %idxprom168 = zext i32 %121 to i64
  %arrayidx169 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom168
  store i32 %119, i32* %arrayidx169, align 4
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.body.165
  %122 = load i32, i32* %k, align 4
  %inc171 = add i32 %122, 1
  store i32 %inc171, i32* %k, align 4
  br label %for.cond.162

for.end.172:                                      ; preds = %for.cond.162
  %123 = load i32, i32* @Init1, align 4
  %124 = load i32, i32* %D.addr, align 4
  %idxprom173 = zext i32 %124 to i64
  %arrayidx174 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom173
  %125 = load i32, i32* %arrayidx174, align 4
  %and175 = and i32 %123, %125
  store i32 %and175, i32* %r1, align 4
  %126 = load i32, i32* %D.addr, align 4
  %idxprom176 = zext i32 %126 to i64
  %arrayidx177 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom176
  %127 = load i32, i32* %arrayidx177, align 4
  %shr178 = lshr i32 %127, 1
  %128 = load i32, i32* %CMask, align 4
  %and179 = and i32 %shr178, %128
  %129 = load i32, i32* %r1, align 4
  %or180 = or i32 %and179, %129
  %130 = load i32, i32* %D_Mask, align 4
  %and181 = and i32 %or180, %130
  %131 = load i32, i32* %D.addr, align 4
  %idxprom182 = zext i32 %131 to i64
  %arrayidx183 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom182
  store i32 %and181, i32* %arrayidx183, align 4
  %132 = load i32, i32* %r3, align 4
  store i32 %132, i32* %k, align 4
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.210, %for.end.172
  %133 = load i32, i32* %k, align 4
  %134 = load i32, i32* %r4, align 4
  %cmp185 = icmp ule i32 %133, %134
  br i1 %cmp185, label %for.body.187, label %for.end.212

for.body.187:                                     ; preds = %for.cond.184
  %135 = load i32, i32* %k, align 4
  %idxprom188 = zext i32 %135 to i64
  %arrayidx189 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom188
  %136 = load i32, i32* %arrayidx189, align 4
  store i32 %136, i32* %r5, align 4
  %137 = load i32, i32* @Init1, align 4
  %138 = load i32, i32* %r5, align 4
  %and190 = and i32 %137, %138
  store i32 %and190, i32* %r1, align 4
  %139 = load i32, i32* %r5, align 4
  %shr191 = lshr i32 %139, 1
  %140 = load i32, i32* %CMask, align 4
  %and192 = and i32 %shr191, %140
  %141 = load i32, i32* %k, align 4
  %142 = load i32, i32* @I, align 4
  %sub193 = sub i32 %141, %142
  %idxprom194 = zext i32 %sub193 to i64
  %arrayidx195 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom194
  %143 = load i32, i32* %arrayidx195, align 4
  %or196 = or i32 %and192, %143
  %144 = load i32, i32* %k, align 4
  %145 = load i32, i32* @DD, align 4
  %sub197 = sub i32 %144, %145
  %idxprom198 = zext i32 %sub197 to i64
  %arrayidx199 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom198
  %146 = load i32, i32* %arrayidx199, align 4
  %147 = load i32, i32* %k, align 4
  %148 = load i32, i32* @S, align 4
  %sub200 = sub i32 %147, %148
  %idxprom201 = zext i32 %sub200 to i64
  %arrayidx202 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom201
  %149 = load i32, i32* %arrayidx202, align 4
  %or203 = or i32 %146, %149
  %shr204 = lshr i32 %or203, 1
  %150 = load i32, i32* %r_NO_ERR, align 4
  %and205 = and i32 %shr204, %150
  %or206 = or i32 %or196, %and205
  %151 = load i32, i32* %r1, align 4
  %or207 = or i32 %or206, %151
  %152 = load i32, i32* %k, align 4
  %idxprom208 = zext i32 %152 to i64
  %arrayidx209 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom208
  store i32 %or207, i32* %arrayidx209, align 4
  br label %for.inc.210

for.inc.210:                                      ; preds = %for.body.187
  %153 = load i32, i32* %k, align 4
  %inc211 = add i32 %153, 1
  store i32 %inc211, i32* %k, align 4
  br label %for.cond.184

for.end.212:                                      ; preds = %for.cond.184
  br label %if.end.213

if.end.213:                                       ; preds = %for.end.212, %for.end.123
  %154 = load i32, i32* %i, align 4
  %inc214 = add i32 %154, 1
  store i32 %inc214, i32* %i, align 4
  %idxprom215 = zext i32 %154 to i64
  %arrayidx216 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i64 %idxprom215
  %155 = load i8, i8* %arrayidx216, align 1
  %idxprom217 = sext i8 %155 to i64
  %arrayidx218 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i32 0, i64 %idxprom217
  %156 = load i32, i32* %arrayidx218, align 4
  store i32 %156, i32* %CMask, align 4
  %157 = load i32, i32* %D.addr, align 4
  %idxprom219 = zext i32 %157 to i64
  %arrayidx220 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom219
  %158 = load i32, i32* %arrayidx220, align 4
  %159 = load i32, i32* @Init1, align 4
  %and221 = and i32 %158, %159
  store i32 %and221, i32* %r1, align 4
  %160 = load i32, i32* %D.addr, align 4
  %idxprom222 = zext i32 %160 to i64
  %arrayidx223 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom222
  %161 = load i32, i32* %arrayidx223, align 4
  %shr224 = lshr i32 %161, 1
  %162 = load i32, i32* %CMask, align 4
  %and225 = and i32 %shr224, %162
  %163 = load i32, i32* %r1, align 4
  %or226 = or i32 %and225, %163
  %164 = load i32, i32* %D.addr, align 4
  %idxprom227 = zext i32 %164 to i64
  %arrayidx228 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom227
  store i32 %or226, i32* %arrayidx228, align 4
  %165 = load i32, i32* %r3, align 4
  store i32 %165, i32* %k, align 4
  br label %for.cond.229

for.cond.229:                                     ; preds = %for.inc.257, %if.end.213
  %166 = load i32, i32* %k, align 4
  %167 = load i32, i32* %r4, align 4
  %cmp230 = icmp ule i32 %166, %167
  br i1 %cmp230, label %for.body.232, label %for.end.259

for.body.232:                                     ; preds = %for.cond.229
  %168 = load i32, i32* %k, align 4
  %idxprom233 = zext i32 %168 to i64
  %arrayidx234 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom233
  %169 = load i32, i32* %arrayidx234, align 4
  %170 = load i32, i32* @Init1, align 4
  %and235 = and i32 %169, %170
  store i32 %and235, i32* %r1, align 4
  %171 = load i32, i32* %k, align 4
  %idxprom236 = zext i32 %171 to i64
  %arrayidx237 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom236
  %172 = load i32, i32* %arrayidx237, align 4
  %shr238 = lshr i32 %172, 1
  %173 = load i32, i32* %CMask, align 4
  %and239 = and i32 %shr238, %173
  %174 = load i32, i32* %k, align 4
  %175 = load i32, i32* @I, align 4
  %sub240 = sub i32 %174, %175
  %idxprom241 = zext i32 %sub240 to i64
  %arrayidx242 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom241
  %176 = load i32, i32* %arrayidx242, align 4
  %or243 = or i32 %and239, %176
  %177 = load i32, i32* %k, align 4
  %178 = load i32, i32* @DD, align 4
  %sub244 = sub i32 %177, %178
  %idxprom245 = zext i32 %sub244 to i64
  %arrayidx246 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom245
  %179 = load i32, i32* %arrayidx246, align 4
  %180 = load i32, i32* %k, align 4
  %181 = load i32, i32* @S, align 4
  %sub247 = sub i32 %180, %181
  %idxprom248 = zext i32 %sub247 to i64
  %arrayidx249 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom248
  %182 = load i32, i32* %arrayidx249, align 4
  %or250 = or i32 %179, %182
  %shr251 = lshr i32 %or250, 1
  %183 = load i32, i32* %r_NO_ERR, align 4
  %and252 = and i32 %shr251, %183
  %or253 = or i32 %or243, %and252
  %184 = load i32, i32* %r1, align 4
  %or254 = or i32 %or253, %184
  %185 = load i32, i32* %k, align 4
  %idxprom255 = zext i32 %185 to i64
  %arrayidx256 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom255
  store i32 %or254, i32* %arrayidx256, align 4
  br label %for.inc.257

for.inc.257:                                      ; preds = %for.body.232
  %186 = load i32, i32* %k, align 4
  %inc258 = add i32 %186, 1
  store i32 %inc258, i32* %k, align 4
  br label %for.cond.229

for.end.259:                                      ; preds = %for.cond.229
  %187 = load i32, i32* %D.addr, align 4
  %idxprom260 = zext i32 %187 to i64
  %arrayidx261 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom260
  %188 = load i32, i32* %arrayidx261, align 4
  %189 = load i32, i32* %endpos, align 4
  %and262 = and i32 %188, %189
  %tobool263 = icmp ne i32 %and262, 0
  br i1 %tobool263, label %if.then.264, label %if.end.353

if.then.264:                                      ; preds = %for.end.259
  %190 = load i32, i32* %j, align 4
  %inc265 = add nsw i32 %190, 1
  store i32 %inc265, i32* %j, align 4
  %191 = load i32, i32* @AND, align 4
  %cmp266 = icmp eq i32 %191, 1
  br i1 %cmp266, label %land.lhs.true.268, label %lor.lhs.false.274

land.lhs.true.268:                                ; preds = %if.then.264
  %192 = load i32, i32* %r4, align 4
  %idxprom269 = zext i32 %192 to i64
  %arrayidx270 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom269
  %193 = load i32, i32* %arrayidx270, align 4
  %194 = load i32, i32* @endposition, align 4
  %and271 = and i32 %193, %194
  %195 = load i32, i32* @endposition, align 4
  %cmp272 = icmp eq i32 %and271, %195
  br i1 %cmp272, label %if.then.286, label %lor.lhs.false.274

lor.lhs.false.274:                                ; preds = %land.lhs.true.268, %if.then.264
  %196 = load i32, i32* @AND, align 4
  %cmp275 = icmp eq i32 %196, 0
  br i1 %cmp275, label %land.rhs.277, label %land.end.282

land.rhs.277:                                     ; preds = %lor.lhs.false.274
  %197 = load i32, i32* %r4, align 4
  %idxprom278 = zext i32 %197 to i64
  %arrayidx279 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom278
  %198 = load i32, i32* %arrayidx279, align 4
  %199 = load i32, i32* @endposition, align 4
  %and280 = and i32 %198, %199
  %tobool281 = icmp ne i32 %and280, 0
  br label %land.end.282

land.end.282:                                     ; preds = %land.rhs.277, %lor.lhs.false.274
  %200 = phi i1 [ false, %lor.lhs.false.274 ], [ %tobool281, %land.rhs.277 ]
  %land.ext283 = zext i1 %200 to i32
  %201 = load i32, i32* @INVERSE, align 4
  %xor284 = xor i32 %land.ext283, %201
  %tobool285 = icmp ne i32 %xor284, 0
  br i1 %tobool285, label %if.then.286, label %if.end.300

if.then.286:                                      ; preds = %land.end.282, %land.lhs.true.268
  %202 = load i32, i32* @FILENAMEONLY, align 4
  %tobool287 = icmp ne i32 %202, 0
  br i1 %tobool287, label %if.then.288, label %if.end.291

if.then.288:                                      ; preds = %if.then.286
  %203 = load i32, i32* @num_of_matched, align 4
  %inc289 = add nsw i32 %203, 1
  store i32 %inc289, i32* @num_of_matched, align 4
  %call290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %return

if.end.291:                                       ; preds = %if.then.286
  %204 = load i32, i32* %lasti, align 4
  %205 = load i32, i32* %num_read, align 4
  %add292 = add nsw i32 49152, %205
  %cmp293 = icmp slt i32 %204, %add292
  br i1 %cmp293, label %if.then.295, label %if.end.299

if.then.295:                                      ; preds = %if.end.291
  %arraydecay296 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i32 0
  %206 = load i32, i32* %lasti, align 4
  %207 = load i32, i32* %i, align 4
  %208 = load i32, i32* %D_length, align 4
  %sub297 = sub i32 %207, %208
  %sub298 = sub i32 %sub297, 1
  %209 = load i32, i32* %j, align 4
  call void @output(i8* %arraydecay296, i32 %206, i32 %sub298, i32 %209)
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.295, %if.end.291
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299, %land.end.282
  %210 = load i32, i32* %i, align 4
  %211 = load i32, i32* %D_length, align 4
  %sub301 = sub i32 %210, %211
  store i32 %sub301, i32* %lasti, align 4
  store i32 0, i32* @TRUNCATE, align 4
  %212 = load i32, i32* %D.addr, align 4
  store i32 %212, i32* %k, align 4
  br label %for.cond.302

for.cond.302:                                     ; preds = %for.inc.310, %if.end.300
  %213 = load i32, i32* %k, align 4
  %214 = load i32, i32* %r4, align 4
  %cmp303 = icmp ule i32 %213, %214
  br i1 %cmp303, label %for.body.305, label %for.end.312

for.body.305:                                     ; preds = %for.cond.302
  %215 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i32 0, i64 0), align 4
  %216 = load i32, i32* %k, align 4
  %idxprom306 = zext i32 %216 to i64
  %arrayidx307 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom306
  store i32 %215, i32* %arrayidx307, align 4
  %217 = load i32, i32* %k, align 4
  %idxprom308 = zext i32 %217 to i64
  %arrayidx309 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom308
  store i32 %215, i32* %arrayidx309, align 4
  br label %for.inc.310

for.inc.310:                                      ; preds = %for.body.305
  %218 = load i32, i32* %k, align 4
  %inc311 = add i32 %218, 1
  store i32 %inc311, i32* %k, align 4
  br label %for.cond.302

for.end.312:                                      ; preds = %for.cond.302
  %219 = load i32, i32* @Init1, align 4
  %220 = load i32, i32* %D.addr, align 4
  %idxprom313 = zext i32 %220 to i64
  %arrayidx314 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom313
  %221 = load i32, i32* %arrayidx314, align 4
  %and315 = and i32 %219, %221
  store i32 %and315, i32* %r1, align 4
  %222 = load i32, i32* %D.addr, align 4
  %idxprom316 = zext i32 %222 to i64
  %arrayidx317 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom316
  %223 = load i32, i32* %arrayidx317, align 4
  %shr318 = lshr i32 %223, 1
  %224 = load i32, i32* %CMask, align 4
  %and319 = and i32 %shr318, %224
  %225 = load i32, i32* %r1, align 4
  %or320 = or i32 %and319, %225
  %226 = load i32, i32* %D_Mask, align 4
  %and321 = and i32 %or320, %226
  %227 = load i32, i32* %D.addr, align 4
  %idxprom322 = zext i32 %227 to i64
  %arrayidx323 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom322
  store i32 %and321, i32* %arrayidx323, align 4
  %228 = load i32, i32* %r3, align 4
  store i32 %228, i32* %k, align 4
  br label %for.cond.324

for.cond.324:                                     ; preds = %for.inc.350, %for.end.312
  %229 = load i32, i32* %k, align 4
  %230 = load i32, i32* %r4, align 4
  %cmp325 = icmp ule i32 %229, %230
  br i1 %cmp325, label %for.body.327, label %for.end.352

for.body.327:                                     ; preds = %for.cond.324
  %231 = load i32, i32* %k, align 4
  %idxprom328 = zext i32 %231 to i64
  %arrayidx329 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom328
  %232 = load i32, i32* %arrayidx329, align 4
  store i32 %232, i32* %r5, align 4
  %233 = load i32, i32* @Init1, align 4
  %234 = load i32, i32* %r5, align 4
  %and330 = and i32 %233, %234
  store i32 %and330, i32* %r1, align 4
  %235 = load i32, i32* %r5, align 4
  %shr331 = lshr i32 %235, 1
  %236 = load i32, i32* %CMask, align 4
  %and332 = and i32 %shr331, %236
  %237 = load i32, i32* %k, align 4
  %238 = load i32, i32* @I, align 4
  %sub333 = sub i32 %237, %238
  %idxprom334 = zext i32 %sub333 to i64
  %arrayidx335 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom334
  %239 = load i32, i32* %arrayidx335, align 4
  %or336 = or i32 %and332, %239
  %240 = load i32, i32* %k, align 4
  %241 = load i32, i32* @DD, align 4
  %sub337 = sub i32 %240, %241
  %idxprom338 = zext i32 %sub337 to i64
  %arrayidx339 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom338
  %242 = load i32, i32* %arrayidx339, align 4
  %243 = load i32, i32* %k, align 4
  %244 = load i32, i32* @S, align 4
  %sub340 = sub i32 %243, %244
  %idxprom341 = zext i32 %sub340 to i64
  %arrayidx342 = getelementptr inbounds [17 x i32], [17 x i32]* %A, i32 0, i64 %idxprom341
  %245 = load i32, i32* %arrayidx342, align 4
  %or343 = or i32 %242, %245
  %shr344 = lshr i32 %or343, 1
  %246 = load i32, i32* %r_NO_ERR, align 4
  %and345 = and i32 %shr344, %246
  %or346 = or i32 %or336, %and345
  %247 = load i32, i32* %r1, align 4
  %or347 = or i32 %or346, %247
  %248 = load i32, i32* %k, align 4
  %idxprom348 = zext i32 %248 to i64
  %arrayidx349 = getelementptr inbounds [17 x i32], [17 x i32]* %B, i32 0, i64 %idxprom348
  store i32 %or347, i32* %arrayidx349, align 4
  br label %for.inc.350

for.inc.350:                                      ; preds = %for.body.327
  %249 = load i32, i32* %k, align 4
  %inc351 = add i32 %249, 1
  store i32 %inc351, i32* %k, align 4
  br label %for.cond.324

for.end.352:                                      ; preds = %for.cond.324
  br label %if.end.353

if.end.353:                                       ; preds = %for.end.352, %for.end.259
  br label %while.cond.79

while.end:                                        ; preds = %while.cond.79
  %250 = load i32, i32* %num_read, align 4
  %add354 = add nsw i32 49152, %250
  %251 = load i32, i32* %lasti, align 4
  %sub355 = sub nsw i32 %add354, %251
  store i32 %sub355, i32* %ResidueSize, align 4
  %252 = load i32, i32* %ResidueSize, align 4
  %cmp356 = icmp sgt i32 %252, 49152
  br i1 %cmp356, label %if.then.358, label %if.end.359

if.then.358:                                      ; preds = %while.end
  store i32 49152, i32* %ResidueSize, align 4
  store i32 1, i32* @TRUNCATE, align 4
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.358, %while.end
  %arraydecay360 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i32 0
  %add.ptr361 = getelementptr inbounds i8, i8* %arraydecay360, i64 49152
  %253 = load i32, i32* %ResidueSize, align 4
  %idx.ext362 = sext i32 %253 to i64
  %idx.neg = sub i64 0, %idx.ext362
  %add.ptr363 = getelementptr inbounds i8, i8* %add.ptr361, i64 %idx.neg
  %arraydecay364 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i32 0
  %254 = load i32, i32* %lasti, align 4
  %idx.ext365 = sext i32 %254 to i64
  %add.ptr366 = getelementptr inbounds i8, i8* %arraydecay364, i64 %idx.ext365
  %255 = load i32, i32* %ResidueSize, align 4
  %conv367 = sext i32 %255 to i64
  %call368 = call i8* @strncpy(i8* %add.ptr363, i8* %add.ptr366, i64 %conv367) #5
  %256 = load i32, i32* %ResidueSize, align 4
  %sub369 = sub nsw i32 49152, %256
  store i32 %sub369, i32* %lasti, align 4
  %257 = load i32, i32* %lasti, align 4
  %cmp370 = icmp slt i32 %257, 0
  br i1 %cmp370, label %if.then.372, label %if.end.373

if.then.372:                                      ; preds = %if.end.359
  store i32 1, i32* %lasti, align 4
  br label %if.end.373

if.end.373:                                       ; preds = %if.then.372, %if.end.359
  %258 = load i32, i32* %num_read, align 4
  %cmp374 = icmp slt i32 %258, 49152
  br i1 %cmp374, label %if.then.376, label %if.end.377

if.then.376:                                      ; preds = %if.end.373
  store i32 49152, i32* %lasti, align 4
  br label %if.end.377

if.end.377:                                       ; preds = %if.then.376, %if.end.373
  br label %while.cond

while.end.378:                                    ; preds = %while.cond
  br label %return

return:                                           ; preds = %while.end.378, %if.then.288, %if.then.148
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare i32 @fill_buf(i32, i8*, i32) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare i32 @printf(i8*, ...) #2

declare void @output(i8*, i32, i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
