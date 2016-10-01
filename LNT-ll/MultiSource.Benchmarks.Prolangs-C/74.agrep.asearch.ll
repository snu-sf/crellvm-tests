; ModuleID = './MultiSource.Benchmarks.Prolangs-C/74.agrep.asearch.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D_endpos = external global i32, align 4
@Init1 = external global i32, align 4
@NO_ERR_MASK = external global i32, align 4
@Init = external global [0 x i32], align 4
@Mask = external global [0 x i32], align 4
@AND = external global i32, align 4
@endposition = external global i32, align 4
@INVERSE = external global i32, align 4
@FILENAMEONLY = external global i32, align 4
@num_of_matched = external global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@CurrentFileName = external global [0 x i8], align 1
@TRUNCATE = external global i32, align 4
@I = external global i32, align 4
@DELIMITER = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @asearch0(i8* %old_D_pat, i32 %text, i32 %D) #0 {
entry:
  %old_D_pat.addr = alloca i8*, align 8
  %text.addr = alloca i32, align 4
  %D.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %CMask = alloca i32, align 4
  %r_NO_ERR = alloca i32, align 4
  %r_Init1 = alloca i32, align 4
  %end = alloca i32, align 4
  %endpos = alloca i32, align 4
  %A = alloca [10 x i32], align 16
  %B = alloca [10 x i32], align 16
  %D_Mask = alloca i32, align 4
  %D_length = alloca i32, align 4
  %FIRSTROUND = alloca i32, align 4
  %ResidueSize = alloca i32, align 4
  %lasti = alloca i32, align 4
  %l = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %printout_end = alloca i32, align 4
  %buffer = alloca [98305 x i8], align 16
  store i8* %old_D_pat, i8** %old_D_pat.addr, align 8
  store i32 %text, i32* %text.addr, align 4
  store i32 %D, i32* %D.addr, align 4
  store i32 0, i32* %j, align 4
  %0 = load i8*, i8** %old_D_pat.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %D_length, align 4
  %arrayidx = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i64 49151
  store i8 10, i8* %arrayidx, align 1
  %1 = load i32, i32* @D_endpos, align 4
  store i32 %1, i32* %D_Mask, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %D_length, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %D_Mask, align 4
  %shl = shl i32 %4, 1
  %5 = load i32, i32* %D_Mask, align 4
  %or = or i32 %shl, %5
  store i32 %or, i32* %D_Mask, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %D_Mask, align 4
  %neg = xor i32 %7, -1
  store i32 %neg, i32* %D_Mask, align 4
  %8 = load i32, i32* @Init1, align 4
  store i32 %8, i32* %r_Init1, align 4
  %9 = load i32, i32* @NO_ERR_MASK, align 4
  store i32 %9, i32* %r_NO_ERR, align 4
  %10 = load i32, i32* @D_endpos, align 4
  store i32 %10, i32* %endpos, align 4
  store i32 1, i32* %FIRSTROUND, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.9, %for.end
  %11 = load i32, i32* %k, align 4
  %12 = load i32, i32* %D.addr, align 4
  %cmp3 = icmp ule i32 %11, %12
  br i1 %cmp3, label %for.body.5, label %for.end.11

for.body.5:                                       ; preds = %for.cond.2
  %13 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i32 0, i64 0), align 4
  %14 = load i32, i32* %k, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 %idxprom
  store i32 %13, i32* %arrayidx6, align 4
  %15 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 %idxprom7
  store i32 %13, i32* %arrayidx8, align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.5
  %16 = load i32, i32* %k, align 4
  %inc10 = add nsw i32 %16, 1
  store i32 %inc10, i32* %k, align 4
  br label %for.cond.2

for.end.11:                                       ; preds = %for.cond.2
  store i32 49152, i32* %lasti, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.311, %for.end.11
  %17 = load i32, i32* %text.addr, align 4
  %arraydecay = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 49152
  %call12 = call i32 @fill_buf(i32 %17, i8* %add.ptr, i32 49152)
  store i32 %call12, i32* %l, align 4
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %while.body, label %while.end.312

while.body:                                       ; preds = %while.cond
  store i32 49152, i32* %i, align 4
  %18 = load i32, i32* %l, align 4
  %add = add nsw i32 49152, %18
  store i32 %add, i32* %end, align 4
  %19 = load i32, i32* %FIRSTROUND, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 49151, i32* %i, align 4
  store i32 0, i32* %FIRSTROUND, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %20 = load i32, i32* %l, align 4
  %cmp15 = icmp slt i32 %20, 49152
  br i1 %cmp15, label %if.then.17, label %if.end.26

if.then.17:                                       ; preds = %if.end
  %arraydecay18 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i32 0
  %21 = load i32, i32* %end, align 4
  %idx.ext = zext i32 %21 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %arraydecay18, i64 %idx.ext
  %22 = load i8*, i8** %old_D_pat.addr, align 8
  %23 = load i32, i32* %D_length, align 4
  %conv20 = sext i32 %23 to i64
  %call21 = call i8* @strncpy(i8* %add.ptr19, i8* %22, i64 %conv20) #5
  %24 = load i32, i32* %end, align 4
  %25 = load i32, i32* %D_length, align 4
  %add22 = add i32 %24, %25
  %idxprom23 = zext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i64 %idxprom23
  store i8 0, i8* %arrayidx24, align 1
  %26 = load i32, i32* %end, align 4
  %27 = load i32, i32* %D_length, align 4
  %add25 = add i32 %26, %27
  store i32 %add25, i32* %end, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.17, %if.end
  br label %while.cond.27

while.cond.27:                                    ; preds = %if.end.287, %if.end.26
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %end, align 4
  %cmp28 = icmp ult i32 %28, %29
  br i1 %cmp28, label %while.body.30, label %while.end

while.body.30:                                    ; preds = %while.cond.27
  %30 = load i32, i32* %i, align 4
  %inc31 = add i32 %30, 1
  store i32 %inc31, i32* %i, align 4
  %idxprom32 = zext i32 %30 to i64
  %arrayidx33 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i64 %idxprom32
  %31 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %31 to i32
  store i32 %conv34, i32* %c, align 4
  %32 = load i32, i32* %c, align 4
  %idxprom35 = zext i32 %32 to i64
  %arrayidx36 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i32 0, i64 %idxprom35
  %33 = load i32, i32* %arrayidx36, align 4
  store i32 %33, i32* %CMask, align 4
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 0
  %34 = load i32, i32* %arrayidx37, align 4
  %35 = load i32, i32* %r_Init1, align 4
  %and = and i32 %34, %35
  store i32 %and, i32* %r1, align 4
  %arrayidx38 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 0
  %36 = load i32, i32* %arrayidx38, align 4
  %shr = lshr i32 %36, 1
  %37 = load i32, i32* %CMask, align 4
  %and39 = and i32 %shr, %37
  %38 = load i32, i32* %r1, align 4
  %or40 = or i32 %and39, %38
  %arrayidx41 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 0
  store i32 %or40, i32* %arrayidx41, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.69, %while.body.30
  %39 = load i32, i32* %k, align 4
  %40 = load i32, i32* %D.addr, align 4
  %cmp43 = icmp ule i32 %39, %40
  br i1 %cmp43, label %for.body.45, label %for.end.71

for.body.45:                                      ; preds = %for.cond.42
  %41 = load i32, i32* %r_Init1, align 4
  %42 = load i32, i32* %k, align 4
  %idxprom46 = sext i32 %42 to i64
  %arrayidx47 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 %idxprom46
  %43 = load i32, i32* %arrayidx47, align 4
  %and48 = and i32 %41, %43
  store i32 %and48, i32* %r1, align 4
  %44 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %44, 1
  %idxprom49 = sext i32 %sub to i64
  %arrayidx50 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 %idxprom49
  %45 = load i32, i32* %arrayidx50, align 4
  %46 = load i32, i32* %k, align 4
  %sub51 = sub nsw i32 %46, 1
  %idxprom52 = sext i32 %sub51 to i64
  %arrayidx53 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 %idxprom52
  %47 = load i32, i32* %arrayidx53, align 4
  %48 = load i32, i32* %k, align 4
  %sub54 = sub nsw i32 %48, 1
  %idxprom55 = sext i32 %sub54 to i64
  %arrayidx56 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 %idxprom55
  %49 = load i32, i32* %arrayidx56, align 4
  %or57 = or i32 %47, %49
  %shr58 = lshr i32 %or57, 1
  %50 = load i32, i32* %r_NO_ERR, align 4
  %and59 = and i32 %shr58, %50
  %or60 = or i32 %45, %and59
  store i32 %or60, i32* %r2, align 4
  %51 = load i32, i32* %k, align 4
  %idxprom61 = sext i32 %51 to i64
  %arrayidx62 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 %idxprom61
  %52 = load i32, i32* %arrayidx62, align 4
  %shr63 = lshr i32 %52, 1
  %53 = load i32, i32* %CMask, align 4
  %and64 = and i32 %shr63, %53
  %54 = load i32, i32* %r2, align 4
  %or65 = or i32 %and64, %54
  %55 = load i32, i32* %r1, align 4
  %or66 = or i32 %or65, %55
  %56 = load i32, i32* %k, align 4
  %idxprom67 = sext i32 %56 to i64
  %arrayidx68 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 %idxprom67
  store i32 %or66, i32* %arrayidx68, align 4
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.45
  %57 = load i32, i32* %k, align 4
  %inc70 = add nsw i32 %57, 1
  store i32 %inc70, i32* %k, align 4
  br label %for.cond.42

for.end.71:                                       ; preds = %for.cond.42
  %arrayidx72 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 0
  %58 = load i32, i32* %arrayidx72, align 4
  %59 = load i32, i32* %endpos, align 4
  %and73 = and i32 %58, %59
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.154

if.then.75:                                       ; preds = %for.end.71
  %60 = load i32, i32* %j, align 4
  %inc76 = add nsw i32 %60, 1
  store i32 %inc76, i32* %j, align 4
  %61 = load i32, i32* %D.addr, align 4
  %idxprom77 = zext i32 %61 to i64
  %arrayidx78 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 %idxprom77
  %62 = load i32, i32* %arrayidx78, align 4
  store i32 %62, i32* %r1, align 4
  %63 = load i32, i32* @AND, align 4
  %cmp79 = icmp eq i32 %63, 1
  br i1 %cmp79, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.75
  %64 = load i32, i32* %r1, align 4
  %65 = load i32, i32* @endposition, align 4
  %and81 = and i32 %64, %65
  %66 = load i32, i32* @endposition, align 4
  %cmp82 = icmp eq i32 %and81, %66
  br i1 %cmp82, label %if.then.89, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then.75
  %67 = load i32, i32* @AND, align 4
  %cmp84 = icmp eq i32 %67, 0
  br i1 %cmp84, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false
  %68 = load i32, i32* %r1, align 4
  %69 = load i32, i32* @endposition, align 4
  %and86 = and i32 %68, %69
  %tobool87 = icmp ne i32 %and86, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %70 = phi i1 [ false, %lor.lhs.false ], [ %tobool87, %land.rhs ]
  %land.ext = zext i1 %70 to i32
  %71 = load i32, i32* @INVERSE, align 4
  %xor = xor i32 %land.ext, %71
  %tobool88 = icmp ne i32 %xor, 0
  br i1 %tobool88, label %if.then.89, label %if.end.104

if.then.89:                                       ; preds = %land.end, %land.lhs.true
  %72 = load i32, i32* @FILENAMEONLY, align 4
  %tobool90 = icmp ne i32 %72, 0
  br i1 %tobool90, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %if.then.89
  %73 = load i32, i32* @num_of_matched, align 4
  %inc92 = add nsw i32 %73, 1
  store i32 %inc92, i32* @num_of_matched, align 4
  %call93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %return

if.end.94:                                        ; preds = %if.then.89
  %74 = load i32, i32* %i, align 4
  %75 = load i32, i32* %D_length, align 4
  %sub95 = sub i32 %74, %75
  %sub96 = sub i32 %sub95, 1
  store i32 %sub96, i32* %printout_end, align 4
  %76 = load i32, i32* %lasti, align 4
  %77 = load i32, i32* %l, align 4
  %add97 = add nsw i32 49152, %77
  %sub98 = sub nsw i32 %add97, 1
  %cmp99 = icmp sge i32 %76, %sub98
  br i1 %cmp99, label %if.end.103, label %if.then.101

if.then.101:                                      ; preds = %if.end.94
  %arraydecay102 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i32 0
  %78 = load i32, i32* %lasti, align 4
  %79 = load i32, i32* %printout_end, align 4
  %80 = load i32, i32* %j, align 4
  call void @output(i8* %arraydecay102, i32 %78, i32 %79, i32 %80)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %if.end.94
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %land.end
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %D_length, align 4
  %sub105 = sub i32 %81, %82
  store i32 %sub105, i32* %lasti, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.112, %if.end.104
  %83 = load i32, i32* %k, align 4
  %84 = load i32, i32* %D.addr, align 4
  %cmp107 = icmp ule i32 %83, %84
  br i1 %cmp107, label %for.body.109, label %for.end.114

for.body.109:                                     ; preds = %for.cond.106
  %85 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i32 0, i64 0), align 4
  %86 = load i32, i32* %k, align 4
  %idxprom110 = sext i32 %86 to i64
  %arrayidx111 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 %idxprom110
  store i32 %85, i32* %arrayidx111, align 4
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body.109
  %87 = load i32, i32* %k, align 4
  %inc113 = add nsw i32 %87, 1
  store i32 %inc113, i32* %k, align 4
  br label %for.cond.106

for.end.114:                                      ; preds = %for.cond.106
  %arrayidx115 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 0
  %88 = load i32, i32* %arrayidx115, align 4
  %89 = load i32, i32* %r_Init1, align 4
  %and116 = and i32 %88, %89
  store i32 %and116, i32* %r1, align 4
  %arrayidx117 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 0
  %90 = load i32, i32* %arrayidx117, align 4
  %shr118 = lshr i32 %90, 1
  %91 = load i32, i32* %CMask, align 4
  %and119 = and i32 %shr118, %91
  %92 = load i32, i32* %r1, align 4
  %or120 = or i32 %and119, %92
  %93 = load i32, i32* %D_Mask, align 4
  %and121 = and i32 %or120, %93
  %arrayidx122 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 0
  store i32 %and121, i32* %arrayidx122, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.151, %for.end.114
  %94 = load i32, i32* %k, align 4
  %95 = load i32, i32* %D.addr, align 4
  %cmp124 = icmp ule i32 %94, %95
  br i1 %cmp124, label %for.body.126, label %for.end.153

for.body.126:                                     ; preds = %for.cond.123
  %96 = load i32, i32* @Init1, align 4
  %97 = load i32, i32* %k, align 4
  %idxprom127 = sext i32 %97 to i64
  %arrayidx128 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 %idxprom127
  %98 = load i32, i32* %arrayidx128, align 4
  %and129 = and i32 %96, %98
  store i32 %and129, i32* %r1, align 4
  %99 = load i32, i32* %k, align 4
  %sub130 = sub nsw i32 %99, 1
  %idxprom131 = sext i32 %sub130 to i64
  %arrayidx132 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 %idxprom131
  %100 = load i32, i32* %arrayidx132, align 4
  %101 = load i32, i32* %k, align 4
  %sub133 = sub nsw i32 %101, 1
  %idxprom134 = sext i32 %sub133 to i64
  %arrayidx135 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 %idxprom134
  %102 = load i32, i32* %arrayidx135, align 4
  %103 = load i32, i32* %k, align 4
  %sub136 = sub nsw i32 %103, 1
  %idxprom137 = sext i32 %sub136 to i64
  %arrayidx138 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 %idxprom137
  %104 = load i32, i32* %arrayidx138, align 4
  %or139 = or i32 %102, %104
  %shr140 = lshr i32 %or139, 1
  %105 = load i32, i32* %r_NO_ERR, align 4
  %and141 = and i32 %shr140, %105
  %or142 = or i32 %100, %and141
  store i32 %or142, i32* %r2, align 4
  %106 = load i32, i32* %k, align 4
  %idxprom143 = sext i32 %106 to i64
  %arrayidx144 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 %idxprom143
  %107 = load i32, i32* %arrayidx144, align 4
  %shr145 = lshr i32 %107, 1
  %108 = load i32, i32* %CMask, align 4
  %and146 = and i32 %shr145, %108
  %109 = load i32, i32* %r1, align 4
  %or147 = or i32 %and146, %109
  %110 = load i32, i32* %r2, align 4
  %or148 = or i32 %or147, %110
  %111 = load i32, i32* %k, align 4
  %idxprom149 = sext i32 %111 to i64
  %arrayidx150 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 %idxprom149
  store i32 %or148, i32* %arrayidx150, align 4
  br label %for.inc.151

for.inc.151:                                      ; preds = %for.body.126
  %112 = load i32, i32* %k, align 4
  %inc152 = add nsw i32 %112, 1
  store i32 %inc152, i32* %k, align 4
  br label %for.cond.123

for.end.153:                                      ; preds = %for.cond.123
  br label %if.end.154

if.end.154:                                       ; preds = %for.end.153, %for.end.71
  %113 = load i32, i32* %i, align 4
  %inc155 = add i32 %113, 1
  store i32 %inc155, i32* %i, align 4
  %idxprom156 = zext i32 %113 to i64
  %arrayidx157 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i64 %idxprom156
  %114 = load i8, i8* %arrayidx157, align 1
  %conv158 = zext i8 %114 to i32
  store i32 %conv158, i32* %c, align 4
  %115 = load i32, i32* %c, align 4
  %idxprom159 = zext i32 %115 to i64
  %arrayidx160 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i32 0, i64 %idxprom159
  %116 = load i32, i32* %arrayidx160, align 4
  store i32 %116, i32* %CMask, align 4
  %117 = load i32, i32* %r_Init1, align 4
  %arrayidx161 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 0
  %118 = load i32, i32* %arrayidx161, align 4
  %and162 = and i32 %117, %118
  store i32 %and162, i32* %r1, align 4
  %arrayidx163 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 0
  %119 = load i32, i32* %arrayidx163, align 4
  %shr164 = lshr i32 %119, 1
  %120 = load i32, i32* %CMask, align 4
  %and165 = and i32 %shr164, %120
  %121 = load i32, i32* %r1, align 4
  %or166 = or i32 %and165, %121
  %arrayidx167 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 0
  store i32 %or166, i32* %arrayidx167, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.196, %if.end.154
  %122 = load i32, i32* %k, align 4
  %123 = load i32, i32* %D.addr, align 4
  %cmp169 = icmp ule i32 %122, %123
  br i1 %cmp169, label %for.body.171, label %for.end.198

for.body.171:                                     ; preds = %for.cond.168
  %124 = load i32, i32* %r_Init1, align 4
  %125 = load i32, i32* %k, align 4
  %idxprom172 = sext i32 %125 to i64
  %arrayidx173 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 %idxprom172
  %126 = load i32, i32* %arrayidx173, align 4
  %and174 = and i32 %124, %126
  store i32 %and174, i32* %r1, align 4
  %127 = load i32, i32* %k, align 4
  %sub175 = sub nsw i32 %127, 1
  %idxprom176 = sext i32 %sub175 to i64
  %arrayidx177 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 %idxprom176
  %128 = load i32, i32* %arrayidx177, align 4
  %129 = load i32, i32* %k, align 4
  %sub178 = sub nsw i32 %129, 1
  %idxprom179 = sext i32 %sub178 to i64
  %arrayidx180 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 %idxprom179
  %130 = load i32, i32* %arrayidx180, align 4
  %131 = load i32, i32* %k, align 4
  %sub181 = sub nsw i32 %131, 1
  %idxprom182 = sext i32 %sub181 to i64
  %arrayidx183 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 %idxprom182
  %132 = load i32, i32* %arrayidx183, align 4
  %or184 = or i32 %130, %132
  %shr185 = lshr i32 %or184, 1
  %133 = load i32, i32* %r_NO_ERR, align 4
  %and186 = and i32 %shr185, %133
  %or187 = or i32 %128, %and186
  store i32 %or187, i32* %r2, align 4
  %134 = load i32, i32* %k, align 4
  %idxprom188 = sext i32 %134 to i64
  %arrayidx189 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 %idxprom188
  %135 = load i32, i32* %arrayidx189, align 4
  %shr190 = lshr i32 %135, 1
  %136 = load i32, i32* %CMask, align 4
  %and191 = and i32 %shr190, %136
  %137 = load i32, i32* %r2, align 4
  %or192 = or i32 %and191, %137
  %138 = load i32, i32* %r1, align 4
  %or193 = or i32 %or192, %138
  %139 = load i32, i32* %k, align 4
  %idxprom194 = sext i32 %139 to i64
  %arrayidx195 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 %idxprom194
  store i32 %or193, i32* %arrayidx195, align 4
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.body.171
  %140 = load i32, i32* %k, align 4
  %inc197 = add nsw i32 %140, 1
  store i32 %inc197, i32* %k, align 4
  br label %for.cond.168

for.end.198:                                      ; preds = %for.cond.168
  %arrayidx199 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 0
  %141 = load i32, i32* %arrayidx199, align 4
  %142 = load i32, i32* %endpos, align 4
  %and200 = and i32 %141, %142
  %tobool201 = icmp ne i32 %and200, 0
  br i1 %tobool201, label %if.then.202, label %if.end.287

if.then.202:                                      ; preds = %for.end.198
  %143 = load i32, i32* %j, align 4
  %inc203 = add nsw i32 %143, 1
  store i32 %inc203, i32* %j, align 4
  %144 = load i32, i32* %D.addr, align 4
  %idxprom204 = zext i32 %144 to i64
  %arrayidx205 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 %idxprom204
  %145 = load i32, i32* %arrayidx205, align 4
  store i32 %145, i32* %r1, align 4
  %146 = load i32, i32* @AND, align 4
  %cmp206 = icmp eq i32 %146, 1
  br i1 %cmp206, label %land.lhs.true.208, label %lor.lhs.false.212

land.lhs.true.208:                                ; preds = %if.then.202
  %147 = load i32, i32* %r1, align 4
  %148 = load i32, i32* @endposition, align 4
  %and209 = and i32 %147, %148
  %149 = load i32, i32* @endposition, align 4
  %cmp210 = icmp eq i32 %and209, %149
  br i1 %cmp210, label %if.then.222, label %lor.lhs.false.212

lor.lhs.false.212:                                ; preds = %land.lhs.true.208, %if.then.202
  %150 = load i32, i32* @AND, align 4
  %cmp213 = icmp eq i32 %150, 0
  br i1 %cmp213, label %land.rhs.215, label %land.end.218

land.rhs.215:                                     ; preds = %lor.lhs.false.212
  %151 = load i32, i32* %r1, align 4
  %152 = load i32, i32* @endposition, align 4
  %and216 = and i32 %151, %152
  %tobool217 = icmp ne i32 %and216, 0
  br label %land.end.218

land.end.218:                                     ; preds = %land.rhs.215, %lor.lhs.false.212
  %153 = phi i1 [ false, %lor.lhs.false.212 ], [ %tobool217, %land.rhs.215 ]
  %land.ext219 = zext i1 %153 to i32
  %154 = load i32, i32* @INVERSE, align 4
  %xor220 = xor i32 %land.ext219, %154
  %tobool221 = icmp ne i32 %xor220, 0
  br i1 %tobool221, label %if.then.222, label %if.end.237

if.then.222:                                      ; preds = %land.end.218, %land.lhs.true.208
  %155 = load i32, i32* @FILENAMEONLY, align 4
  %tobool223 = icmp ne i32 %155, 0
  br i1 %tobool223, label %if.then.224, label %if.end.227

if.then.224:                                      ; preds = %if.then.222
  %156 = load i32, i32* @num_of_matched, align 4
  %inc225 = add nsw i32 %156, 1
  store i32 %inc225, i32* @num_of_matched, align 4
  %call226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %return

if.end.227:                                       ; preds = %if.then.222
  %157 = load i32, i32* %i, align 4
  %158 = load i32, i32* %D_length, align 4
  %sub228 = sub i32 %157, %158
  %sub229 = sub i32 %sub228, 1
  store i32 %sub229, i32* %printout_end, align 4
  %159 = load i32, i32* %lasti, align 4
  %160 = load i32, i32* %l, align 4
  %add230 = add nsw i32 49152, %160
  %sub231 = sub nsw i32 %add230, 1
  %cmp232 = icmp sge i32 %159, %sub231
  br i1 %cmp232, label %if.end.236, label %if.then.234

if.then.234:                                      ; preds = %if.end.227
  %arraydecay235 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i32 0
  %161 = load i32, i32* %lasti, align 4
  %162 = load i32, i32* %printout_end, align 4
  %163 = load i32, i32* %j, align 4
  call void @output(i8* %arraydecay235, i32 %161, i32 %162, i32 %163)
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.234, %if.end.227
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %land.end.218
  %164 = load i32, i32* %i, align 4
  %165 = load i32, i32* %D_length, align 4
  %sub238 = sub i32 %164, %165
  store i32 %sub238, i32* %lasti, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.239

for.cond.239:                                     ; preds = %for.inc.245, %if.end.237
  %166 = load i32, i32* %k, align 4
  %167 = load i32, i32* %D.addr, align 4
  %cmp240 = icmp ule i32 %166, %167
  br i1 %cmp240, label %for.body.242, label %for.end.247

for.body.242:                                     ; preds = %for.cond.239
  %168 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i32 0, i64 0), align 4
  %169 = load i32, i32* %k, align 4
  %idxprom243 = sext i32 %169 to i64
  %arrayidx244 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 %idxprom243
  store i32 %168, i32* %arrayidx244, align 4
  br label %for.inc.245

for.inc.245:                                      ; preds = %for.body.242
  %170 = load i32, i32* %k, align 4
  %inc246 = add nsw i32 %170, 1
  store i32 %inc246, i32* %k, align 4
  br label %for.cond.239

for.end.247:                                      ; preds = %for.cond.239
  %arrayidx248 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 0
  %171 = load i32, i32* %arrayidx248, align 4
  %172 = load i32, i32* %r_Init1, align 4
  %and249 = and i32 %171, %172
  store i32 %and249, i32* %r1, align 4
  %arrayidx250 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 0
  %173 = load i32, i32* %arrayidx250, align 4
  %shr251 = lshr i32 %173, 1
  %174 = load i32, i32* %CMask, align 4
  %and252 = and i32 %shr251, %174
  %175 = load i32, i32* %r1, align 4
  %or253 = or i32 %and252, %175
  %176 = load i32, i32* %D_Mask, align 4
  %and254 = and i32 %or253, %176
  %arrayidx255 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 0
  store i32 %and254, i32* %arrayidx255, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.256

for.cond.256:                                     ; preds = %for.inc.284, %for.end.247
  %177 = load i32, i32* %k, align 4
  %178 = load i32, i32* %D.addr, align 4
  %cmp257 = icmp ule i32 %177, %178
  br i1 %cmp257, label %for.body.259, label %for.end.286

for.body.259:                                     ; preds = %for.cond.256
  %179 = load i32, i32* %r_Init1, align 4
  %180 = load i32, i32* %k, align 4
  %idxprom260 = sext i32 %180 to i64
  %arrayidx261 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 %idxprom260
  %181 = load i32, i32* %arrayidx261, align 4
  %and262 = and i32 %179, %181
  store i32 %and262, i32* %r1, align 4
  %182 = load i32, i32* %k, align 4
  %sub263 = sub nsw i32 %182, 1
  %idxprom264 = sext i32 %sub263 to i64
  %arrayidx265 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 %idxprom264
  %183 = load i32, i32* %arrayidx265, align 4
  %184 = load i32, i32* %k, align 4
  %sub266 = sub nsw i32 %184, 1
  %idxprom267 = sext i32 %sub266 to i64
  %arrayidx268 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 %idxprom267
  %185 = load i32, i32* %arrayidx268, align 4
  %186 = load i32, i32* %k, align 4
  %sub269 = sub nsw i32 %186, 1
  %idxprom270 = sext i32 %sub269 to i64
  %arrayidx271 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 %idxprom270
  %187 = load i32, i32* %arrayidx271, align 4
  %or272 = or i32 %185, %187
  %shr273 = lshr i32 %or272, 1
  %188 = load i32, i32* %r_NO_ERR, align 4
  %and274 = and i32 %shr273, %188
  %or275 = or i32 %183, %and274
  store i32 %or275, i32* %r2, align 4
  %189 = load i32, i32* %k, align 4
  %idxprom276 = sext i32 %189 to i64
  %arrayidx277 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i32 0, i64 %idxprom276
  %190 = load i32, i32* %arrayidx277, align 4
  %shr278 = lshr i32 %190, 1
  %191 = load i32, i32* %CMask, align 4
  %and279 = and i32 %shr278, %191
  %192 = load i32, i32* %r1, align 4
  %or280 = or i32 %and279, %192
  %193 = load i32, i32* %r2, align 4
  %or281 = or i32 %or280, %193
  %194 = load i32, i32* %k, align 4
  %idxprom282 = sext i32 %194 to i64
  %arrayidx283 = getelementptr inbounds [10 x i32], [10 x i32]* %B, i32 0, i64 %idxprom282
  store i32 %or281, i32* %arrayidx283, align 4
  br label %for.inc.284

for.inc.284:                                      ; preds = %for.body.259
  %195 = load i32, i32* %k, align 4
  %inc285 = add nsw i32 %195, 1
  store i32 %inc285, i32* %k, align 4
  br label %for.cond.256

for.end.286:                                      ; preds = %for.cond.256
  br label %if.end.287

if.end.287:                                       ; preds = %for.end.286, %for.end.198
  br label %while.cond.27

while.end:                                        ; preds = %while.cond.27
  %196 = load i32, i32* %l, align 4
  %cmp288 = icmp slt i32 %196, 49152
  br i1 %cmp288, label %if.then.290, label %if.else

if.then.290:                                      ; preds = %while.end
  store i32 49152, i32* %lasti, align 4
  br label %if.end.311

if.else:                                          ; preds = %while.end
  %197 = load i32, i32* %l, align 4
  %add291 = add nsw i32 49152, %197
  %198 = load i32, i32* %lasti, align 4
  %sub292 = sub nsw i32 %add291, %198
  store i32 %sub292, i32* %ResidueSize, align 4
  %199 = load i32, i32* %ResidueSize, align 4
  %cmp293 = icmp sgt i32 %199, 49152
  br i1 %cmp293, label %if.then.295, label %if.end.296

if.then.295:                                      ; preds = %if.else
  store i32 49152, i32* %ResidueSize, align 4
  store i32 1, i32* @TRUNCATE, align 4
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.295, %if.else
  %arraydecay297 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i32 0
  %add.ptr298 = getelementptr inbounds i8, i8* %arraydecay297, i64 49152
  %200 = load i32, i32* %ResidueSize, align 4
  %idx.ext299 = sext i32 %200 to i64
  %idx.neg = sub i64 0, %idx.ext299
  %add.ptr300 = getelementptr inbounds i8, i8* %add.ptr298, i64 %idx.neg
  %arraydecay301 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i32 0
  %201 = load i32, i32* %lasti, align 4
  %idx.ext302 = sext i32 %201 to i64
  %add.ptr303 = getelementptr inbounds i8, i8* %arraydecay301, i64 %idx.ext302
  %202 = load i32, i32* %ResidueSize, align 4
  %conv304 = sext i32 %202 to i64
  %call305 = call i8* @strncpy(i8* %add.ptr300, i8* %add.ptr303, i64 %conv304) #5
  %203 = load i32, i32* %ResidueSize, align 4
  %sub306 = sub nsw i32 49152, %203
  store i32 %sub306, i32* %lasti, align 4
  %204 = load i32, i32* %lasti, align 4
  %cmp307 = icmp eq i32 %204, 0
  br i1 %cmp307, label %if.then.309, label %if.end.310

if.then.309:                                      ; preds = %if.end.296
  store i32 1, i32* %lasti, align 4
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.309, %if.end.296
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %if.then.290
  br label %while.cond

while.end.312:                                    ; preds = %while.cond
  br label %return

return:                                           ; preds = %while.end.312, %if.then.224, %if.then.91
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare i32 @fill_buf(i32, i8*, i32) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare i32 @printf(i8*, ...) #2

declare void @output(i8*, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @asearch(i8* %old_D_pat, i32 %text, i32 %D) #0 {
entry:
  %old_D_pat.addr = alloca i8*, align 8
  %text.addr = alloca i32, align 4
  %D.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %CMask = alloca i32, align 4
  %r_NO_ERR = alloca i32, align 4
  %r_Init1 = alloca i32, align 4
  %A0 = alloca i32, align 4
  %B0 = alloca i32, align 4
  %A1 = alloca i32, align 4
  %B1 = alloca i32, align 4
  %endpos = alloca i32, align 4
  %A2 = alloca i32, align 4
  %B2 = alloca i32, align 4
  %A3 = alloca i32, align 4
  %B3 = alloca i32, align 4
  %A4 = alloca i32, align 4
  %B4 = alloca i32, align 4
  %A = alloca [9 x i32], align 16
  %B = alloca [9 x i32], align 16
  %D_Mask = alloca i32, align 4
  %end = alloca i32, align 4
  %D_length = alloca i32, align 4
  %FIRSTROUND = alloca i32, align 4
  %ResidueSize = alloca i32, align 4
  %lasti = alloca i32, align 4
  %l = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %printout_end = alloca i32, align 4
  %buffer = alloca [98305 x i8], align 16
  store i8* %old_D_pat, i8** %old_D_pat.addr, align 8
  store i32 %text, i32* %text.addr, align 4
  store i32 %D, i32* %D.addr, align 4
  store i32 0, i32* %j, align 4
  %0 = load i32, i32* @I, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* @Init1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %D.addr, align 4
  %cmp1 = icmp ugt i32 %1, 4
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load i8*, i8** %old_D_pat.addr, align 8
  %3 = load i32, i32* %text.addr, align 4
  %4 = load i32, i32* %D.addr, align 4
  call void @asearch0(i8* %2, i32 %3, i32 %4)
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load i8*, i8** %old_D_pat.addr, align 8
  %call = call i64 @strlen(i8* %5) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %D_length, align 4
  %arrayidx = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i64 49151
  store i8 10, i8* %arrayidx, align 1
  %6 = load i32, i32* @D_endpos, align 4
  store i32 %6, i32* %D_Mask, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %D_length, align 4
  %cmp4 = icmp ult i32 %7, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %D_Mask, align 4
  %shl = shl i32 %9, 1
  %10 = load i32, i32* %D_Mask, align 4
  %or = or i32 %shl, %10
  store i32 %or, i32* %D_Mask, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %D_Mask, align 4
  %neg = xor i32 %12, -1
  store i32 %neg, i32* %D_Mask, align 4
  %13 = load i32, i32* @Init1, align 4
  store i32 %13, i32* %r_Init1, align 4
  %14 = load i32, i32* @NO_ERR_MASK, align 4
  store i32 %14, i32* %r_NO_ERR, align 4
  %15 = load i32, i32* @D_endpos, align 4
  store i32 %15, i32* %endpos, align 4
  store i32 1, i32* %FIRSTROUND, align 4
  %16 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i32 0, i64 0), align 4
  store i32 %16, i32* %B4, align 4
  store i32 %16, i32* %A4, align 4
  store i32 %16, i32* %B3, align 4
  store i32 %16, i32* %A3, align 4
  store i32 %16, i32* %B2, align 4
  store i32 %16, i32* %A2, align 4
  store i32 %16, i32* %B1, align 4
  store i32 %16, i32* %A1, align 4
  store i32 %16, i32* %B0, align 4
  store i32 %16, i32* %A0, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.13, %for.end
  %17 = load i32, i32* %k, align 4
  %18 = load i32, i32* %D.addr, align 4
  %cmp7 = icmp ule i32 %17, %18
  br i1 %cmp7, label %for.body.9, label %for.end.15

for.body.9:                                       ; preds = %for.cond.6
  %19 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i32 0, i64 0), align 4
  %20 = load i32, i32* %k, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx10 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 %idxprom
  store i32 %19, i32* %arrayidx10, align 4
  %21 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 %idxprom11
  store i32 %19, i32* %arrayidx12, align 4
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.9
  %22 = load i32, i32* %k, align 4
  %inc14 = add nsw i32 %22, 1
  store i32 %inc14, i32* %k, align 4
  br label %for.cond.6

for.end.15:                                       ; preds = %for.cond.6
  store i32 49152, i32* %lasti, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.424, %for.end.15
  %23 = load i32, i32* %text.addr, align 4
  %arraydecay = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 49152
  %call16 = call i32 @fill_buf(i32 %23, i8* %add.ptr, i32 49152)
  store i32 %call16, i32* %l, align 4
  %cmp17 = icmp sgt i32 %call16, 0
  br i1 %cmp17, label %while.body, label %while.end.425

while.body:                                       ; preds = %while.cond
  store i32 49152, i32* %i, align 4
  %24 = load i32, i32* %l, align 4
  %add = add nsw i32 49152, %24
  store i32 %add, i32* %end, align 4
  %25 = load i32, i32* %FIRSTROUND, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then.19, label %if.end.45

if.then.19:                                       ; preds = %while.body
  store i32 49151, i32* %i, align 4
  %26 = load i32, i32* @DELIMITER, align 4
  %tobool20 = icmp ne i32 %26, 0
  br i1 %tobool20, label %if.then.21, label %if.end.44

if.then.21:                                       ; preds = %if.then.19
  store i32 0, i32* %k, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.37, %if.then.21
  %27 = load i32, i32* %k, align 4
  %28 = load i32, i32* %D_length, align 4
  %cmp23 = icmp slt i32 %27, %28
  br i1 %cmp23, label %for.body.25, label %for.end.39

for.body.25:                                      ; preds = %for.cond.22
  %29 = load i32, i32* %k, align 4
  %idxprom26 = sext i32 %29 to i64
  %30 = load i8*, i8** %old_D_pat.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %30, i64 %idxprom26
  %31 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %31 to i32
  %32 = load i32, i32* %k, align 4
  %add29 = add nsw i32 49152, %32
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i64 %idxprom30
  %33 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %33 to i32
  %cmp33 = icmp ne i32 %conv28, %conv32
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.body.25
  br label %for.end.39

if.end.36:                                        ; preds = %for.body.25
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %34 = load i32, i32* %k, align 4
  %inc38 = add nsw i32 %34, 1
  store i32 %inc38, i32* %k, align 4
  br label %for.cond.22

for.end.39:                                       ; preds = %if.then.35, %for.cond.22
  %35 = load i32, i32* %k, align 4
  %36 = load i32, i32* %D_length, align 4
  %cmp40 = icmp sge i32 %35, %36
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.end.39
  %37 = load i32, i32* %j, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %j, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %for.end.39
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.19
  store i32 0, i32* %FIRSTROUND, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %while.body
  %38 = load i32, i32* %l, align 4
  %cmp46 = icmp slt i32 %38, 49152
  br i1 %cmp46, label %if.then.48, label %if.end.57

if.then.48:                                       ; preds = %if.end.45
  %arraydecay49 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i32 0
  %39 = load i32, i32* %end, align 4
  %idx.ext = zext i32 %39 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %arraydecay49, i64 %idx.ext
  %40 = load i8*, i8** %old_D_pat.addr, align 8
  %41 = load i32, i32* %D_length, align 4
  %conv51 = sext i32 %41 to i64
  %call52 = call i8* @strncpy(i8* %add.ptr50, i8* %40, i64 %conv51) #5
  %42 = load i32, i32* %end, align 4
  %43 = load i32, i32* %D_length, align 4
  %add53 = add i32 %42, %43
  %idxprom54 = zext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i64 %idxprom54
  store i8 0, i8* %arrayidx55, align 1
  %44 = load i32, i32* %end, align 4
  %45 = load i32, i32* %D_length, align 4
  %add56 = add i32 %44, %45
  store i32 %add56, i32* %end, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.48, %if.end.45
  br label %while.cond.58

while.cond.58:                                    ; preds = %if.end.400, %if.end.57
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %end, align 4
  %cmp59 = icmp ult i32 %46, %47
  br i1 %cmp59, label %while.body.61, label %while.end

while.body.61:                                    ; preds = %while.cond.58
  %48 = load i32, i32* %i, align 4
  %idxprom62 = zext i32 %48 to i64
  %arrayidx63 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i64 %idxprom62
  %49 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %49 to i32
  store i32 %conv64, i32* %c, align 4
  %50 = load i32, i32* %c, align 4
  %idxprom65 = zext i32 %50 to i64
  %arrayidx66 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i32 0, i64 %idxprom65
  %51 = load i32, i32* %arrayidx66, align 4
  store i32 %51, i32* %CMask, align 4
  %52 = load i32, i32* %r_Init1, align 4
  %53 = load i32, i32* %B0, align 4
  %and = and i32 %52, %53
  store i32 %and, i32* %r1, align 4
  %54 = load i32, i32* %B0, align 4
  %shr = lshr i32 %54, 1
  %55 = load i32, i32* %CMask, align 4
  %and67 = and i32 %shr, %55
  %56 = load i32, i32* %r1, align 4
  %or68 = or i32 %and67, %56
  store i32 %or68, i32* %A0, align 4
  %57 = load i32, i32* %r_Init1, align 4
  %58 = load i32, i32* %B1, align 4
  %and69 = and i32 %57, %58
  store i32 %and69, i32* %r1, align 4
  %59 = load i32, i32* %B0, align 4
  %60 = load i32, i32* %A0, align 4
  %61 = load i32, i32* %B0, align 4
  %or70 = or i32 %60, %61
  %shr71 = lshr i32 %or70, 1
  %62 = load i32, i32* %r_NO_ERR, align 4
  %and72 = and i32 %shr71, %62
  %or73 = or i32 %59, %and72
  store i32 %or73, i32* %r2, align 4
  %63 = load i32, i32* %B1, align 4
  %shr74 = lshr i32 %63, 1
  %64 = load i32, i32* %CMask, align 4
  %and75 = and i32 %shr74, %64
  %65 = load i32, i32* %r2, align 4
  %or76 = or i32 %and75, %65
  %66 = load i32, i32* %r1, align 4
  %or77 = or i32 %or76, %66
  store i32 %or77, i32* %A1, align 4
  %67 = load i32, i32* %D.addr, align 4
  %cmp78 = icmp eq i32 %67, 1
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %while.body.61
  br label %Nextchar

if.end.81:                                        ; preds = %while.body.61
  %68 = load i32, i32* %r_Init1, align 4
  %69 = load i32, i32* %B2, align 4
  %and82 = and i32 %68, %69
  store i32 %and82, i32* %r1, align 4
  %70 = load i32, i32* %B1, align 4
  %71 = load i32, i32* %A1, align 4
  %72 = load i32, i32* %B1, align 4
  %or83 = or i32 %71, %72
  %shr84 = lshr i32 %or83, 1
  %73 = load i32, i32* %r_NO_ERR, align 4
  %and85 = and i32 %shr84, %73
  %or86 = or i32 %70, %and85
  store i32 %or86, i32* %r2, align 4
  %74 = load i32, i32* %B2, align 4
  %shr87 = lshr i32 %74, 1
  %75 = load i32, i32* %CMask, align 4
  %and88 = and i32 %shr87, %75
  %76 = load i32, i32* %r2, align 4
  %or89 = or i32 %and88, %76
  %77 = load i32, i32* %r1, align 4
  %or90 = or i32 %or89, %77
  store i32 %or90, i32* %A2, align 4
  %78 = load i32, i32* %D.addr, align 4
  %cmp91 = icmp eq i32 %78, 2
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.81
  br label %Nextchar

if.end.94:                                        ; preds = %if.end.81
  %79 = load i32, i32* %r_Init1, align 4
  %80 = load i32, i32* %B3, align 4
  %and95 = and i32 %79, %80
  store i32 %and95, i32* %r1, align 4
  %81 = load i32, i32* %B2, align 4
  %82 = load i32, i32* %A2, align 4
  %83 = load i32, i32* %B2, align 4
  %or96 = or i32 %82, %83
  %shr97 = lshr i32 %or96, 1
  %84 = load i32, i32* %r_NO_ERR, align 4
  %and98 = and i32 %shr97, %84
  %or99 = or i32 %81, %and98
  store i32 %or99, i32* %r2, align 4
  %85 = load i32, i32* %B3, align 4
  %shr100 = lshr i32 %85, 1
  %86 = load i32, i32* %CMask, align 4
  %and101 = and i32 %shr100, %86
  %87 = load i32, i32* %r2, align 4
  %or102 = or i32 %and101, %87
  %88 = load i32, i32* %r1, align 4
  %or103 = or i32 %or102, %88
  store i32 %or103, i32* %A3, align 4
  %89 = load i32, i32* %D.addr, align 4
  %cmp104 = icmp eq i32 %89, 3
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.94
  br label %Nextchar

if.end.107:                                       ; preds = %if.end.94
  %90 = load i32, i32* %r_Init1, align 4
  %91 = load i32, i32* %B4, align 4
  %and108 = and i32 %90, %91
  store i32 %and108, i32* %r1, align 4
  %92 = load i32, i32* %B3, align 4
  %93 = load i32, i32* %A3, align 4
  %94 = load i32, i32* %B3, align 4
  %or109 = or i32 %93, %94
  %shr110 = lshr i32 %or109, 1
  %95 = load i32, i32* %r_NO_ERR, align 4
  %and111 = and i32 %shr110, %95
  %or112 = or i32 %92, %and111
  store i32 %or112, i32* %r2, align 4
  %96 = load i32, i32* %B4, align 4
  %shr113 = lshr i32 %96, 1
  %97 = load i32, i32* %CMask, align 4
  %and114 = and i32 %shr113, %97
  %98 = load i32, i32* %r2, align 4
  %or115 = or i32 %and114, %98
  %99 = load i32, i32* %r1, align 4
  %or116 = or i32 %or115, %99
  store i32 %or116, i32* %A4, align 4
  %100 = load i32, i32* %D.addr, align 4
  %cmp117 = icmp eq i32 %100, 4
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.107
  br label %Nextchar

if.end.120:                                       ; preds = %if.end.107
  br label %Nextchar

Nextchar:                                         ; preds = %if.end.120, %if.then.119, %if.then.106, %if.then.93, %if.then.80
  %101 = load i32, i32* %i, align 4
  %add121 = add i32 %101, 1
  store i32 %add121, i32* %i, align 4
  %102 = load i32, i32* %A0, align 4
  %103 = load i32, i32* %endpos, align 4
  %and122 = and i32 %102, %103
  %tobool123 = icmp ne i32 %and122, 0
  br i1 %tobool123, label %if.then.124, label %if.end.226

if.then.124:                                      ; preds = %Nextchar
  %104 = load i32, i32* %j, align 4
  %inc125 = add nsw i32 %104, 1
  store i32 %inc125, i32* %j, align 4
  %105 = load i32, i32* %A0, align 4
  store i32 %105, i32* %r1, align 4
  %106 = load i32, i32* %D.addr, align 4
  %cmp126 = icmp eq i32 %106, 1
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.then.124
  %107 = load i32, i32* %A1, align 4
  store i32 %107, i32* %r1, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %if.then.124
  %108 = load i32, i32* %D.addr, align 4
  %cmp130 = icmp eq i32 %108, 2
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.end.129
  %109 = load i32, i32* %A2, align 4
  store i32 %109, i32* %r1, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %if.end.129
  %110 = load i32, i32* %D.addr, align 4
  %cmp134 = icmp eq i32 %110, 3
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.133
  %111 = load i32, i32* %A3, align 4
  store i32 %111, i32* %r1, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %if.end.133
  %112 = load i32, i32* %D.addr, align 4
  %cmp138 = icmp eq i32 %112, 4
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.end.137
  %113 = load i32, i32* %A4, align 4
  store i32 %113, i32* %r1, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.140, %if.end.137
  %114 = load i32, i32* @AND, align 4
  %cmp142 = icmp eq i32 %114, 1
  br i1 %cmp142, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.141
  %115 = load i32, i32* %r1, align 4
  %116 = load i32, i32* @endposition, align 4
  %and144 = and i32 %115, %116
  %117 = load i32, i32* @endposition, align 4
  %cmp145 = icmp eq i32 %and144, %117
  br i1 %cmp145, label %if.then.152, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.141
  %118 = load i32, i32* @AND, align 4
  %cmp147 = icmp eq i32 %118, 0
  br i1 %cmp147, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false
  %119 = load i32, i32* %r1, align 4
  %120 = load i32, i32* @endposition, align 4
  %and149 = and i32 %119, %120
  %tobool150 = icmp ne i32 %and149, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %121 = phi i1 [ false, %lor.lhs.false ], [ %tobool150, %land.rhs ]
  %land.ext = zext i1 %121 to i32
  %122 = load i32, i32* @INVERSE, align 4
  %xor = xor i32 %land.ext, %122
  %tobool151 = icmp ne i32 %xor, 0
  br i1 %tobool151, label %if.then.152, label %if.end.166

if.then.152:                                      ; preds = %land.end, %land.lhs.true
  %123 = load i32, i32* @FILENAMEONLY, align 4
  %tobool153 = icmp ne i32 %123, 0
  br i1 %tobool153, label %if.then.154, label %if.end.157

if.then.154:                                      ; preds = %if.then.152
  %124 = load i32, i32* @num_of_matched, align 4
  %inc155 = add nsw i32 %124, 1
  store i32 %inc155, i32* @num_of_matched, align 4
  %call156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %return

if.end.157:                                       ; preds = %if.then.152
  %125 = load i32, i32* %i, align 4
  %126 = load i32, i32* %D_length, align 4
  %sub = sub i32 %125, %126
  %sub158 = sub i32 %sub, 1
  store i32 %sub158, i32* %printout_end, align 4
  %127 = load i32, i32* %lasti, align 4
  %128 = load i32, i32* %l, align 4
  %add159 = add nsw i32 49152, %128
  %sub160 = sub nsw i32 %add159, 1
  %cmp161 = icmp sge i32 %127, %sub160
  br i1 %cmp161, label %if.end.165, label %if.then.163

if.then.163:                                      ; preds = %if.end.157
  %arraydecay164 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i32 0
  %129 = load i32, i32* %lasti, align 4
  %130 = load i32, i32* %printout_end, align 4
  %131 = load i32, i32* %j, align 4
  call void @output(i8* %arraydecay164, i32 %129, i32 %130, i32 %131)
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.163, %if.end.157
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %land.end
  %132 = load i32, i32* %i, align 4
  %133 = load i32, i32* %D_length, align 4
  %sub167 = sub i32 %132, %133
  store i32 %sub167, i32* %lasti, align 4
  store i32 0, i32* @TRUNCATE, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.174, %if.end.166
  %134 = load i32, i32* %k, align 4
  %135 = load i32, i32* %D.addr, align 4
  %cmp169 = icmp ule i32 %134, %135
  br i1 %cmp169, label %for.body.171, label %for.end.176

for.body.171:                                     ; preds = %for.cond.168
  %136 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i32 0, i64 0), align 4
  %137 = load i32, i32* %k, align 4
  %idxprom172 = sext i32 %137 to i64
  %arrayidx173 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 %idxprom172
  store i32 %136, i32* %arrayidx173, align 4
  br label %for.inc.174

for.inc.174:                                      ; preds = %for.body.171
  %138 = load i32, i32* %k, align 4
  %inc175 = add nsw i32 %138, 1
  store i32 %inc175, i32* %k, align 4
  br label %for.cond.168

for.end.176:                                      ; preds = %for.cond.168
  %arrayidx177 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 0
  %139 = load i32, i32* %arrayidx177, align 4
  %140 = load i32, i32* @Init1, align 4
  %and178 = and i32 %139, %140
  store i32 %and178, i32* %r1, align 4
  %arrayidx179 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 0
  %141 = load i32, i32* %arrayidx179, align 4
  %shr180 = lshr i32 %141, 1
  %142 = load i32, i32* %CMask, align 4
  %and181 = and i32 %shr180, %142
  %143 = load i32, i32* %r1, align 4
  %or182 = or i32 %and181, %143
  %144 = load i32, i32* %D_Mask, align 4
  %and183 = and i32 %or182, %144
  %arrayidx184 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 0
  store i32 %and183, i32* %arrayidx184, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.213, %for.end.176
  %145 = load i32, i32* %k, align 4
  %146 = load i32, i32* %D.addr, align 4
  %cmp186 = icmp ule i32 %145, %146
  br i1 %cmp186, label %for.body.188, label %for.end.215

for.body.188:                                     ; preds = %for.cond.185
  %147 = load i32, i32* @Init1, align 4
  %148 = load i32, i32* %k, align 4
  %idxprom189 = sext i32 %148 to i64
  %arrayidx190 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 %idxprom189
  %149 = load i32, i32* %arrayidx190, align 4
  %and191 = and i32 %147, %149
  store i32 %and191, i32* %r1, align 4
  %150 = load i32, i32* %k, align 4
  %sub192 = sub nsw i32 %150, 1
  %idxprom193 = sext i32 %sub192 to i64
  %arrayidx194 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 %idxprom193
  %151 = load i32, i32* %arrayidx194, align 4
  %152 = load i32, i32* %k, align 4
  %sub195 = sub nsw i32 %152, 1
  %idxprom196 = sext i32 %sub195 to i64
  %arrayidx197 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 %idxprom196
  %153 = load i32, i32* %arrayidx197, align 4
  %154 = load i32, i32* %k, align 4
  %sub198 = sub nsw i32 %154, 1
  %idxprom199 = sext i32 %sub198 to i64
  %arrayidx200 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 %idxprom199
  %155 = load i32, i32* %arrayidx200, align 4
  %or201 = or i32 %153, %155
  %shr202 = lshr i32 %or201, 1
  %156 = load i32, i32* %r_NO_ERR, align 4
  %and203 = and i32 %shr202, %156
  %or204 = or i32 %151, %and203
  store i32 %or204, i32* %r2, align 4
  %157 = load i32, i32* %k, align 4
  %idxprom205 = sext i32 %157 to i64
  %arrayidx206 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 %idxprom205
  %158 = load i32, i32* %arrayidx206, align 4
  %shr207 = lshr i32 %158, 1
  %159 = load i32, i32* %CMask, align 4
  %and208 = and i32 %shr207, %159
  %160 = load i32, i32* %r1, align 4
  %or209 = or i32 %and208, %160
  %161 = load i32, i32* %r2, align 4
  %or210 = or i32 %or209, %161
  %162 = load i32, i32* %k, align 4
  %idxprom211 = sext i32 %162 to i64
  %arrayidx212 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 %idxprom211
  store i32 %or210, i32* %arrayidx212, align 4
  br label %for.inc.213

for.inc.213:                                      ; preds = %for.body.188
  %163 = load i32, i32* %k, align 4
  %inc214 = add nsw i32 %163, 1
  store i32 %inc214, i32* %k, align 4
  br label %for.cond.185

for.end.215:                                      ; preds = %for.cond.185
  %arrayidx216 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 0
  %164 = load i32, i32* %arrayidx216, align 4
  store i32 %164, i32* %A0, align 4
  %arrayidx217 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 0
  %165 = load i32, i32* %arrayidx217, align 4
  store i32 %165, i32* %B0, align 4
  %arrayidx218 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 1
  %166 = load i32, i32* %arrayidx218, align 4
  store i32 %166, i32* %A1, align 4
  %arrayidx219 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 1
  %167 = load i32, i32* %arrayidx219, align 4
  store i32 %167, i32* %B1, align 4
  %arrayidx220 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 2
  %168 = load i32, i32* %arrayidx220, align 4
  store i32 %168, i32* %A2, align 4
  %arrayidx221 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 2
  %169 = load i32, i32* %arrayidx221, align 4
  store i32 %169, i32* %B2, align 4
  %arrayidx222 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 3
  %170 = load i32, i32* %arrayidx222, align 4
  store i32 %170, i32* %A3, align 4
  %arrayidx223 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 3
  %171 = load i32, i32* %arrayidx223, align 4
  store i32 %171, i32* %B3, align 4
  %arrayidx224 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 4
  %172 = load i32, i32* %arrayidx224, align 4
  store i32 %172, i32* %A4, align 4
  %arrayidx225 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 4
  %173 = load i32, i32* %arrayidx225, align 4
  store i32 %173, i32* %B4, align 4
  br label %if.end.226

if.end.226:                                       ; preds = %for.end.215, %Nextchar
  %174 = load i32, i32* %i, align 4
  %idxprom227 = zext i32 %174 to i64
  %arrayidx228 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i64 %idxprom227
  %175 = load i8, i8* %arrayidx228, align 1
  %conv229 = zext i8 %175 to i32
  store i32 %conv229, i32* %c, align 4
  %176 = load i32, i32* %c, align 4
  %idxprom230 = zext i32 %176 to i64
  %arrayidx231 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i32 0, i64 %idxprom230
  %177 = load i32, i32* %arrayidx231, align 4
  store i32 %177, i32* %CMask, align 4
  %178 = load i32, i32* %r_Init1, align 4
  %179 = load i32, i32* %A0, align 4
  %and232 = and i32 %178, %179
  store i32 %and232, i32* %r1, align 4
  %180 = load i32, i32* %A0, align 4
  %shr233 = lshr i32 %180, 1
  %181 = load i32, i32* %CMask, align 4
  %and234 = and i32 %shr233, %181
  %182 = load i32, i32* %r1, align 4
  %or235 = or i32 %and234, %182
  store i32 %or235, i32* %B0, align 4
  %183 = load i32, i32* %r_Init1, align 4
  %184 = load i32, i32* %A1, align 4
  %and236 = and i32 %183, %184
  store i32 %and236, i32* %r1, align 4
  %185 = load i32, i32* %A0, align 4
  %186 = load i32, i32* %A0, align 4
  %187 = load i32, i32* %B0, align 4
  %or237 = or i32 %186, %187
  %shr238 = lshr i32 %or237, 1
  %188 = load i32, i32* %r_NO_ERR, align 4
  %and239 = and i32 %shr238, %188
  %or240 = or i32 %185, %and239
  store i32 %or240, i32* %r2, align 4
  %189 = load i32, i32* %A1, align 4
  %shr241 = lshr i32 %189, 1
  %190 = load i32, i32* %CMask, align 4
  %and242 = and i32 %shr241, %190
  %191 = load i32, i32* %r2, align 4
  %or243 = or i32 %and242, %191
  %192 = load i32, i32* %r1, align 4
  %or244 = or i32 %or243, %192
  store i32 %or244, i32* %B1, align 4
  %193 = load i32, i32* %D.addr, align 4
  %cmp245 = icmp eq i32 %193, 1
  br i1 %cmp245, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %if.end.226
  br label %Nextchar1

if.end.248:                                       ; preds = %if.end.226
  %194 = load i32, i32* %r_Init1, align 4
  %195 = load i32, i32* %A2, align 4
  %and249 = and i32 %194, %195
  store i32 %and249, i32* %r1, align 4
  %196 = load i32, i32* %A1, align 4
  %197 = load i32, i32* %A1, align 4
  %198 = load i32, i32* %B1, align 4
  %or250 = or i32 %197, %198
  %shr251 = lshr i32 %or250, 1
  %199 = load i32, i32* %r_NO_ERR, align 4
  %and252 = and i32 %shr251, %199
  %or253 = or i32 %196, %and252
  store i32 %or253, i32* %r2, align 4
  %200 = load i32, i32* %A2, align 4
  %shr254 = lshr i32 %200, 1
  %201 = load i32, i32* %CMask, align 4
  %and255 = and i32 %shr254, %201
  %202 = load i32, i32* %r2, align 4
  %or256 = or i32 %and255, %202
  %203 = load i32, i32* %r1, align 4
  %or257 = or i32 %or256, %203
  store i32 %or257, i32* %B2, align 4
  %204 = load i32, i32* %D.addr, align 4
  %cmp258 = icmp eq i32 %204, 2
  br i1 %cmp258, label %if.then.260, label %if.end.261

if.then.260:                                      ; preds = %if.end.248
  br label %Nextchar1

if.end.261:                                       ; preds = %if.end.248
  %205 = load i32, i32* %r_Init1, align 4
  %206 = load i32, i32* %A3, align 4
  %and262 = and i32 %205, %206
  store i32 %and262, i32* %r1, align 4
  %207 = load i32, i32* %A2, align 4
  %208 = load i32, i32* %A2, align 4
  %209 = load i32, i32* %B2, align 4
  %or263 = or i32 %208, %209
  %shr264 = lshr i32 %or263, 1
  %210 = load i32, i32* %r_NO_ERR, align 4
  %and265 = and i32 %shr264, %210
  %or266 = or i32 %207, %and265
  store i32 %or266, i32* %r2, align 4
  %211 = load i32, i32* %A3, align 4
  %shr267 = lshr i32 %211, 1
  %212 = load i32, i32* %CMask, align 4
  %and268 = and i32 %shr267, %212
  %213 = load i32, i32* %r2, align 4
  %or269 = or i32 %and268, %213
  %214 = load i32, i32* %r1, align 4
  %or270 = or i32 %or269, %214
  store i32 %or270, i32* %B3, align 4
  %215 = load i32, i32* %D.addr, align 4
  %cmp271 = icmp eq i32 %215, 3
  br i1 %cmp271, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %if.end.261
  br label %Nextchar1

if.end.274:                                       ; preds = %if.end.261
  %216 = load i32, i32* %r_Init1, align 4
  %217 = load i32, i32* %A4, align 4
  %and275 = and i32 %216, %217
  store i32 %and275, i32* %r1, align 4
  %218 = load i32, i32* %A3, align 4
  %219 = load i32, i32* %A3, align 4
  %220 = load i32, i32* %B3, align 4
  %or276 = or i32 %219, %220
  %shr277 = lshr i32 %or276, 1
  %221 = load i32, i32* %r_NO_ERR, align 4
  %and278 = and i32 %shr277, %221
  %or279 = or i32 %218, %and278
  store i32 %or279, i32* %r2, align 4
  %222 = load i32, i32* %A4, align 4
  %shr280 = lshr i32 %222, 1
  %223 = load i32, i32* %CMask, align 4
  %and281 = and i32 %shr280, %223
  %224 = load i32, i32* %r2, align 4
  %or282 = or i32 %and281, %224
  %225 = load i32, i32* %r1, align 4
  %or283 = or i32 %or282, %225
  store i32 %or283, i32* %B4, align 4
  %226 = load i32, i32* %D.addr, align 4
  %cmp284 = icmp eq i32 %226, 4
  br i1 %cmp284, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %if.end.274
  br label %Nextchar1

if.end.287:                                       ; preds = %if.end.274
  br label %Nextchar1

Nextchar1:                                        ; preds = %if.end.287, %if.then.286, %if.then.273, %if.then.260, %if.then.247
  %227 = load i32, i32* %i, align 4
  %add288 = add i32 %227, 1
  store i32 %add288, i32* %i, align 4
  %228 = load i32, i32* %B0, align 4
  %229 = load i32, i32* %endpos, align 4
  %and289 = and i32 %228, %229
  %tobool290 = icmp ne i32 %and289, 0
  br i1 %tobool290, label %if.then.291, label %if.end.400

if.then.291:                                      ; preds = %Nextchar1
  %230 = load i32, i32* %j, align 4
  %inc292 = add nsw i32 %230, 1
  store i32 %inc292, i32* %j, align 4
  %231 = load i32, i32* %B0, align 4
  store i32 %231, i32* %r1, align 4
  %232 = load i32, i32* %D.addr, align 4
  %cmp293 = icmp eq i32 %232, 1
  br i1 %cmp293, label %if.then.295, label %if.end.296

if.then.295:                                      ; preds = %if.then.291
  %233 = load i32, i32* %B1, align 4
  store i32 %233, i32* %r1, align 4
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.295, %if.then.291
  %234 = load i32, i32* %D.addr, align 4
  %cmp297 = icmp eq i32 %234, 2
  br i1 %cmp297, label %if.then.299, label %if.end.300

if.then.299:                                      ; preds = %if.end.296
  %235 = load i32, i32* %B2, align 4
  store i32 %235, i32* %r1, align 4
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.299, %if.end.296
  %236 = load i32, i32* %D.addr, align 4
  %cmp301 = icmp eq i32 %236, 3
  br i1 %cmp301, label %if.then.303, label %if.end.304

if.then.303:                                      ; preds = %if.end.300
  %237 = load i32, i32* %B3, align 4
  store i32 %237, i32* %r1, align 4
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.303, %if.end.300
  %238 = load i32, i32* %D.addr, align 4
  %cmp305 = icmp eq i32 %238, 4
  br i1 %cmp305, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %if.end.304
  %239 = load i32, i32* %B4, align 4
  store i32 %239, i32* %r1, align 4
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.307, %if.end.304
  %240 = load i32, i32* @AND, align 4
  %cmp309 = icmp eq i32 %240, 1
  br i1 %cmp309, label %land.lhs.true.311, label %lor.lhs.false.315

land.lhs.true.311:                                ; preds = %if.end.308
  %241 = load i32, i32* %r1, align 4
  %242 = load i32, i32* @endposition, align 4
  %and312 = and i32 %241, %242
  %243 = load i32, i32* @endposition, align 4
  %cmp313 = icmp eq i32 %and312, %243
  br i1 %cmp313, label %if.then.325, label %lor.lhs.false.315

lor.lhs.false.315:                                ; preds = %land.lhs.true.311, %if.end.308
  %244 = load i32, i32* @AND, align 4
  %cmp316 = icmp eq i32 %244, 0
  br i1 %cmp316, label %land.rhs.318, label %land.end.321

land.rhs.318:                                     ; preds = %lor.lhs.false.315
  %245 = load i32, i32* %r1, align 4
  %246 = load i32, i32* @endposition, align 4
  %and319 = and i32 %245, %246
  %tobool320 = icmp ne i32 %and319, 0
  br label %land.end.321

land.end.321:                                     ; preds = %land.rhs.318, %lor.lhs.false.315
  %247 = phi i1 [ false, %lor.lhs.false.315 ], [ %tobool320, %land.rhs.318 ]
  %land.ext322 = zext i1 %247 to i32
  %248 = load i32, i32* @INVERSE, align 4
  %xor323 = xor i32 %land.ext322, %248
  %tobool324 = icmp ne i32 %xor323, 0
  br i1 %tobool324, label %if.then.325, label %if.end.340

if.then.325:                                      ; preds = %land.end.321, %land.lhs.true.311
  %249 = load i32, i32* @FILENAMEONLY, align 4
  %tobool326 = icmp ne i32 %249, 0
  br i1 %tobool326, label %if.then.327, label %if.end.330

if.then.327:                                      ; preds = %if.then.325
  %250 = load i32, i32* @num_of_matched, align 4
  %inc328 = add nsw i32 %250, 1
  store i32 %inc328, i32* @num_of_matched, align 4
  %call329 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %return

if.end.330:                                       ; preds = %if.then.325
  %251 = load i32, i32* %i, align 4
  %252 = load i32, i32* %D_length, align 4
  %sub331 = sub i32 %251, %252
  %sub332 = sub i32 %sub331, 1
  store i32 %sub332, i32* %printout_end, align 4
  %253 = load i32, i32* %lasti, align 4
  %254 = load i32, i32* %l, align 4
  %add333 = add nsw i32 49152, %254
  %sub334 = sub nsw i32 %add333, 1
  %cmp335 = icmp sge i32 %253, %sub334
  br i1 %cmp335, label %if.end.339, label %if.then.337

if.then.337:                                      ; preds = %if.end.330
  %arraydecay338 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i32 0
  %255 = load i32, i32* %lasti, align 4
  %256 = load i32, i32* %printout_end, align 4
  %257 = load i32, i32* %j, align 4
  call void @output(i8* %arraydecay338, i32 %255, i32 %256, i32 %257)
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.337, %if.end.330
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.339, %land.end.321
  %258 = load i32, i32* %i, align 4
  %259 = load i32, i32* %D_length, align 4
  %sub341 = sub i32 %258, %259
  store i32 %sub341, i32* %lasti, align 4
  store i32 0, i32* @TRUNCATE, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.342

for.cond.342:                                     ; preds = %for.inc.348, %if.end.340
  %260 = load i32, i32* %k, align 4
  %261 = load i32, i32* %D.addr, align 4
  %cmp343 = icmp ule i32 %260, %261
  br i1 %cmp343, label %for.body.345, label %for.end.350

for.body.345:                                     ; preds = %for.cond.342
  %262 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i32 0, i64 0), align 4
  %263 = load i32, i32* %k, align 4
  %idxprom346 = sext i32 %263 to i64
  %arrayidx347 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 %idxprom346
  store i32 %262, i32* %arrayidx347, align 4
  br label %for.inc.348

for.inc.348:                                      ; preds = %for.body.345
  %264 = load i32, i32* %k, align 4
  %inc349 = add nsw i32 %264, 1
  store i32 %inc349, i32* %k, align 4
  br label %for.cond.342

for.end.350:                                      ; preds = %for.cond.342
  %arrayidx351 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 0
  %265 = load i32, i32* %arrayidx351, align 4
  %266 = load i32, i32* @Init1, align 4
  %and352 = and i32 %265, %266
  store i32 %and352, i32* %r1, align 4
  %arrayidx353 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 0
  %267 = load i32, i32* %arrayidx353, align 4
  %shr354 = lshr i32 %267, 1
  %268 = load i32, i32* %CMask, align 4
  %and355 = and i32 %shr354, %268
  %269 = load i32, i32* %r1, align 4
  %or356 = or i32 %and355, %269
  %270 = load i32, i32* %D_Mask, align 4
  %and357 = and i32 %or356, %270
  %arrayidx358 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 0
  store i32 %and357, i32* %arrayidx358, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.359

for.cond.359:                                     ; preds = %for.inc.387, %for.end.350
  %271 = load i32, i32* %k, align 4
  %272 = load i32, i32* %D.addr, align 4
  %cmp360 = icmp ule i32 %271, %272
  br i1 %cmp360, label %for.body.362, label %for.end.389

for.body.362:                                     ; preds = %for.cond.359
  %273 = load i32, i32* @Init1, align 4
  %274 = load i32, i32* %k, align 4
  %idxprom363 = sext i32 %274 to i64
  %arrayidx364 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 %idxprom363
  %275 = load i32, i32* %arrayidx364, align 4
  %and365 = and i32 %273, %275
  store i32 %and365, i32* %r1, align 4
  %276 = load i32, i32* %k, align 4
  %sub366 = sub nsw i32 %276, 1
  %idxprom367 = sext i32 %sub366 to i64
  %arrayidx368 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 %idxprom367
  %277 = load i32, i32* %arrayidx368, align 4
  %278 = load i32, i32* %k, align 4
  %sub369 = sub nsw i32 %278, 1
  %idxprom370 = sext i32 %sub369 to i64
  %arrayidx371 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 %idxprom370
  %279 = load i32, i32* %arrayidx371, align 4
  %280 = load i32, i32* %k, align 4
  %sub372 = sub nsw i32 %280, 1
  %idxprom373 = sext i32 %sub372 to i64
  %arrayidx374 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 %idxprom373
  %281 = load i32, i32* %arrayidx374, align 4
  %or375 = or i32 %279, %281
  %shr376 = lshr i32 %or375, 1
  %282 = load i32, i32* %r_NO_ERR, align 4
  %and377 = and i32 %shr376, %282
  %or378 = or i32 %277, %and377
  store i32 %or378, i32* %r2, align 4
  %283 = load i32, i32* %k, align 4
  %idxprom379 = sext i32 %283 to i64
  %arrayidx380 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 %idxprom379
  %284 = load i32, i32* %arrayidx380, align 4
  %shr381 = lshr i32 %284, 1
  %285 = load i32, i32* %CMask, align 4
  %and382 = and i32 %shr381, %285
  %286 = load i32, i32* %r1, align 4
  %or383 = or i32 %and382, %286
  %287 = load i32, i32* %r2, align 4
  %or384 = or i32 %or383, %287
  %288 = load i32, i32* %k, align 4
  %idxprom385 = sext i32 %288 to i64
  %arrayidx386 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 %idxprom385
  store i32 %or384, i32* %arrayidx386, align 4
  br label %for.inc.387

for.inc.387:                                      ; preds = %for.body.362
  %289 = load i32, i32* %k, align 4
  %inc388 = add nsw i32 %289, 1
  store i32 %inc388, i32* %k, align 4
  br label %for.cond.359

for.end.389:                                      ; preds = %for.cond.359
  %arrayidx390 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 0
  %290 = load i32, i32* %arrayidx390, align 4
  store i32 %290, i32* %A0, align 4
  %arrayidx391 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 0
  %291 = load i32, i32* %arrayidx391, align 4
  store i32 %291, i32* %B0, align 4
  %arrayidx392 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 1
  %292 = load i32, i32* %arrayidx392, align 4
  store i32 %292, i32* %A1, align 4
  %arrayidx393 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 1
  %293 = load i32, i32* %arrayidx393, align 4
  store i32 %293, i32* %B1, align 4
  %arrayidx394 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 2
  %294 = load i32, i32* %arrayidx394, align 4
  store i32 %294, i32* %A2, align 4
  %arrayidx395 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 2
  %295 = load i32, i32* %arrayidx395, align 4
  store i32 %295, i32* %B2, align 4
  %arrayidx396 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 3
  %296 = load i32, i32* %arrayidx396, align 4
  store i32 %296, i32* %A3, align 4
  %arrayidx397 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 3
  %297 = load i32, i32* %arrayidx397, align 4
  store i32 %297, i32* %B3, align 4
  %arrayidx398 = getelementptr inbounds [9 x i32], [9 x i32]* %A, i32 0, i64 4
  %298 = load i32, i32* %arrayidx398, align 4
  store i32 %298, i32* %A4, align 4
  %arrayidx399 = getelementptr inbounds [9 x i32], [9 x i32]* %B, i32 0, i64 4
  %299 = load i32, i32* %arrayidx399, align 4
  store i32 %299, i32* %B4, align 4
  br label %if.end.400

if.end.400:                                       ; preds = %for.end.389, %Nextchar1
  br label %while.cond.58

while.end:                                        ; preds = %while.cond.58
  %300 = load i32, i32* %l, align 4
  %cmp401 = icmp slt i32 %300, 49152
  br i1 %cmp401, label %if.then.403, label %if.else

if.then.403:                                      ; preds = %while.end
  store i32 49152, i32* %lasti, align 4
  br label %if.end.424

if.else:                                          ; preds = %while.end
  %301 = load i32, i32* %l, align 4
  %add404 = add nsw i32 49152, %301
  %302 = load i32, i32* %lasti, align 4
  %sub405 = sub nsw i32 %add404, %302
  store i32 %sub405, i32* %ResidueSize, align 4
  %303 = load i32, i32* %ResidueSize, align 4
  %cmp406 = icmp sgt i32 %303, 49152
  br i1 %cmp406, label %if.then.408, label %if.end.409

if.then.408:                                      ; preds = %if.else
  store i32 49152, i32* %ResidueSize, align 4
  store i32 1, i32* @TRUNCATE, align 4
  br label %if.end.409

if.end.409:                                       ; preds = %if.then.408, %if.else
  %arraydecay410 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i32 0
  %add.ptr411 = getelementptr inbounds i8, i8* %arraydecay410, i64 49152
  %304 = load i32, i32* %ResidueSize, align 4
  %idx.ext412 = sext i32 %304 to i64
  %idx.neg = sub i64 0, %idx.ext412
  %add.ptr413 = getelementptr inbounds i8, i8* %add.ptr411, i64 %idx.neg
  %arraydecay414 = getelementptr inbounds [98305 x i8], [98305 x i8]* %buffer, i32 0, i32 0
  %305 = load i32, i32* %lasti, align 4
  %idx.ext415 = sext i32 %305 to i64
  %add.ptr416 = getelementptr inbounds i8, i8* %arraydecay414, i64 %idx.ext415
  %306 = load i32, i32* %ResidueSize, align 4
  %conv417 = sext i32 %306 to i64
  %call418 = call i8* @strncpy(i8* %add.ptr413, i8* %add.ptr416, i64 %conv417) #5
  %307 = load i32, i32* %ResidueSize, align 4
  %sub419 = sub nsw i32 49152, %307
  store i32 %sub419, i32* %lasti, align 4
  %308 = load i32, i32* %lasti, align 4
  %cmp420 = icmp eq i32 %308, 0
  br i1 %cmp420, label %if.then.422, label %if.end.423

if.then.422:                                      ; preds = %if.end.409
  store i32 1, i32* %lasti, align 4
  br label %if.end.423

if.end.423:                                       ; preds = %if.then.422, %if.end.409
  br label %if.end.424

if.end.424:                                       ; preds = %if.end.423, %if.then.403
  br label %while.cond

while.end.425:                                    ; preds = %while.cond
  br label %return

return:                                           ; preds = %while.end.425, %if.then.327, %if.then.154, %if.then.2
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
