; ModuleID = 'shuffle.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"shuffle.c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"hey, you didn't end on s_f.\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"hey, pos (%d) != len (%d).\00", align 1

; Function Attrs: nounwind uwtable
define i32 @StrShuffle(i8* %s1, i8* %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %pos = alloca i32, align 4
  %c = alloca i8, align 1
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  %cmp = icmp ne i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s1.addr, align 8
  %3 = load i8*, i8** %s2.addr, align 8
  %call = call i8* @strcpy(i8* %2, i8* %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %s1.addr, align 8
  %call1 = call i64 @strlen(i8* %4) #6
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %len, align 4
  %cmp2 = icmp sgt i32 %5, 1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call4 = call double @sre_random()
  %6 = load i32, i32* %len, align 4
  %conv5 = sitofp i32 %6 to double
  %mul = fmul double %call4, %conv5
  %conv6 = fptosi double %mul to i32
  store i32 %conv6, i32* %pos, align 4
  %7 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8*, i8** %s1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  store i8 %9, i8* %c, align 1
  %10 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom7 = sext i32 %sub to i64
  %11 = load i8*, i8** %s1.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 %idxprom7
  %12 = load i8, i8* %arrayidx8, align 1
  %13 = load i32, i32* %pos, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load i8*, i8** %s1.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %14, i64 %idxprom9
  store i8 %12, i8* %arrayidx10, align 1
  %15 = load i8, i8* %c, align 1
  %16 = load i32, i32* %len, align 4
  %sub11 = sub nsw i32 %16, 1
  %idxprom12 = sext i32 %sub11 to i64
  %17 = load i8*, i8** %s1.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %17, i64 %idxprom12
  store i8 %15, i8* %arrayidx13, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %len, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %len, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare double @sre_random() #3

; Function Attrs: nounwind uwtable
define i32 @StrDPShuffle(i8* %s1, i8* %s2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %pos = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %E = alloca i8**, align 8
  %nE = alloca i32*, align 8
  %iE = alloca i32*, align 8
  %n = alloca i32, align 4
  %sf = alloca i8, align 1
  %Z = alloca [26 x i8], align 16
  %keep_connecting = alloca i32, align 4
  %is_eulerian = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s2.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  store i32 0, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %pos, align 4
  %2 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %s2.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %5 to i32
  %idxprom3 = sext i32 %conv2 to i64
  %call4 = call i16** @__ctype_b_loc() #7
  %6 = load i16*, i16** %call4, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %6, i64 %idxprom3
  %7 = load i16, i16* %arrayidx5, align 2
  %conv6 = zext i16 %7 to i32
  %and = and i32 %conv6, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call7 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 127, i64 208)
  %9 = bitcast i8* %call7 to i8**
  store i8** %9, i8*** %E, align 8
  %call8 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 128, i64 104)
  %10 = bitcast i8* %call8 to i32*
  store i32* %10, i32** %nE, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.19, %for.end
  %11 = load i32, i32* %x, align 4
  %cmp10 = icmp slt i32 %11, 26
  br i1 %cmp10, label %for.body.12, label %for.end.21

for.body.12:                                      ; preds = %for.cond.9
  %12 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %12, 1
  %conv13 = sext i32 %sub to i64
  %mul = mul i64 1, %conv13
  %call14 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 131, i64 %mul)
  %13 = load i32, i32* %x, align 4
  %idxprom15 = sext i32 %13 to i64
  %14 = load i8**, i8*** %E, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %14, i64 %idxprom15
  store i8* %call14, i8** %arrayidx16, align 8
  %15 = load i32, i32* %x, align 4
  %idxprom17 = sext i32 %15 to i64
  %16 = load i32*, i32** %nE, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %16, i64 %idxprom17
  store i32 0, i32* %arrayidx18, align 4
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.12
  %17 = load i32, i32* %x, align 4
  %inc20 = add nsw i32 %17, 1
  store i32 %inc20, i32* %x, align 4
  br label %for.cond.9

for.end.21:                                       ; preds = %for.cond.9
  %18 = load i8*, i8** %s2.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %19 to i32
  %call24 = call i32 @toupper(i32 %conv23) #5
  %sub25 = sub nsw i32 %call24, 65
  store i32 %sub25, i32* %x, align 4
  store i32 1, i32* %pos, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.45, %for.end.21
  %20 = load i32, i32* %pos, align 4
  %21 = load i32, i32* %len, align 4
  %cmp27 = icmp slt i32 %20, %21
  br i1 %cmp27, label %for.body.29, label %for.end.47

for.body.29:                                      ; preds = %for.cond.26
  %22 = load i32, i32* %pos, align 4
  %idxprom30 = sext i32 %22 to i64
  %23 = load i8*, i8** %s2.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %23, i64 %idxprom30
  %24 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %24 to i32
  %call33 = call i32 @toupper(i32 %conv32) #5
  %sub34 = sub nsw i32 %call33, 65
  store i32 %sub34, i32* %y, align 4
  %25 = load i32, i32* %y, align 4
  %conv35 = trunc i32 %25 to i8
  %26 = load i32, i32* %x, align 4
  %idxprom36 = sext i32 %26 to i64
  %27 = load i32*, i32** %nE, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %27, i64 %idxprom36
  %28 = load i32, i32* %arrayidx37, align 4
  %idxprom38 = sext i32 %28 to i64
  %29 = load i32, i32* %x, align 4
  %idxprom39 = sext i32 %29 to i64
  %30 = load i8**, i8*** %E, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %30, i64 %idxprom39
  %31 = load i8*, i8** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %31, i64 %idxprom38
  store i8 %conv35, i8* %arrayidx41, align 1
  %32 = load i32, i32* %x, align 4
  %idxprom42 = sext i32 %32 to i64
  %33 = load i32*, i32** %nE, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %33, i64 %idxprom42
  %34 = load i32, i32* %arrayidx43, align 4
  %inc44 = add nsw i32 %34, 1
  store i32 %inc44, i32* %arrayidx43, align 4
  %35 = load i32, i32* %y, align 4
  store i32 %35, i32* %x, align 4
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.29
  %36 = load i32, i32* %pos, align 4
  %inc46 = add nsw i32 %36, 1
  store i32 %inc46, i32* %pos, align 4
  br label %for.cond.26

for.end.47:                                       ; preds = %for.cond.26
  %37 = load i32, i32* %len, align 4
  %sub48 = sub nsw i32 %37, 1
  %idxprom49 = sext i32 %sub48 to i64
  %38 = load i8*, i8** %s2.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %38, i64 %idxprom49
  %39 = load i8, i8* %arrayidx50, align 1
  %conv51 = sext i8 %39 to i32
  %call52 = call i32 @toupper(i32 %conv51) #5
  %sub53 = sub nsw i32 %call52, 65
  %conv54 = trunc i32 %sub53 to i8
  store i8 %conv54, i8* %sf, align 1
  store i32 0, i32* %is_eulerian, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.169, %for.end.47
  %40 = load i32, i32* %is_eulerian, align 4
  %tobool55 = icmp ne i32 %40, 0
  %lnot = xor i1 %tobool55, true
  br i1 %lnot, label %while.body, label %while.end.170

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.99, %while.body
  %41 = load i32, i32* %x, align 4
  %cmp57 = icmp slt i32 %41, 26
  br i1 %cmp57, label %for.body.59, label %for.end.101

for.body.59:                                      ; preds = %for.cond.56
  %42 = load i32, i32* %x, align 4
  %idxprom60 = sext i32 %42 to i64
  %43 = load i32*, i32** %nE, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %43, i64 %idxprom60
  %44 = load i32, i32* %arrayidx61, align 4
  %cmp62 = icmp eq i32 %44, 0
  br i1 %cmp62, label %if.then.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.59
  %45 = load i32, i32* %x, align 4
  %46 = load i8, i8* %sf, align 1
  %conv64 = sext i8 %46 to i32
  %cmp65 = icmp eq i32 %45, %conv64
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %lor.lhs.false, %for.body.59
  br label %for.inc.99

if.end.68:                                        ; preds = %lor.lhs.false
  %call69 = call double @sre_random()
  %47 = load i32, i32* %x, align 4
  %idxprom70 = sext i32 %47 to i64
  %48 = load i32*, i32** %nE, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %48, i64 %idxprom70
  %49 = load i32, i32* %arrayidx71, align 4
  %conv72 = sitofp i32 %49 to double
  %mul73 = fmul double %call69, %conv72
  %conv74 = fptosi double %mul73 to i32
  store i32 %conv74, i32* %pos, align 4
  %50 = load i32, i32* %pos, align 4
  %idxprom75 = sext i32 %50 to i64
  %51 = load i32, i32* %x, align 4
  %idxprom76 = sext i32 %51 to i64
  %52 = load i8**, i8*** %E, align 8
  %arrayidx77 = getelementptr inbounds i8*, i8** %52, i64 %idxprom76
  %53 = load i8*, i8** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %53, i64 %idxprom75
  %54 = load i8, i8* %arrayidx78, align 1
  %conv79 = sext i8 %54 to i32
  store i32 %conv79, i32* %y, align 4
  %55 = load i32, i32* %x, align 4
  %idxprom80 = sext i32 %55 to i64
  %56 = load i32*, i32** %nE, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %56, i64 %idxprom80
  %57 = load i32, i32* %arrayidx81, align 4
  %sub82 = sub nsw i32 %57, 1
  %idxprom83 = sext i32 %sub82 to i64
  %58 = load i32, i32* %x, align 4
  %idxprom84 = sext i32 %58 to i64
  %59 = load i8**, i8*** %E, align 8
  %arrayidx85 = getelementptr inbounds i8*, i8** %59, i64 %idxprom84
  %60 = load i8*, i8** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %60, i64 %idxprom83
  %61 = load i8, i8* %arrayidx86, align 1
  %62 = load i32, i32* %pos, align 4
  %idxprom87 = sext i32 %62 to i64
  %63 = load i32, i32* %x, align 4
  %idxprom88 = sext i32 %63 to i64
  %64 = load i8**, i8*** %E, align 8
  %arrayidx89 = getelementptr inbounds i8*, i8** %64, i64 %idxprom88
  %65 = load i8*, i8** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %65, i64 %idxprom87
  store i8 %61, i8* %arrayidx90, align 1
  %66 = load i32, i32* %y, align 4
  %conv91 = trunc i32 %66 to i8
  %67 = load i32, i32* %x, align 4
  %idxprom92 = sext i32 %67 to i64
  %68 = load i32*, i32** %nE, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %68, i64 %idxprom92
  %69 = load i32, i32* %arrayidx93, align 4
  %sub94 = sub nsw i32 %69, 1
  %idxprom95 = sext i32 %sub94 to i64
  %70 = load i32, i32* %x, align 4
  %idxprom96 = sext i32 %70 to i64
  %71 = load i8**, i8*** %E, align 8
  %arrayidx97 = getelementptr inbounds i8*, i8** %71, i64 %idxprom96
  %72 = load i8*, i8** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %72, i64 %idxprom95
  store i8 %conv91, i8* %arrayidx98, align 1
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.68, %if.then.67
  %73 = load i32, i32* %x, align 4
  %inc100 = add nsw i32 %73, 1
  store i32 %inc100, i32* %x, align 4
  br label %for.cond.56

for.end.101:                                      ; preds = %for.cond.56
  store i32 0, i32* %x, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.108, %for.end.101
  %74 = load i32, i32* %x, align 4
  %cmp103 = icmp slt i32 %74, 26
  br i1 %cmp103, label %for.body.105, label %for.end.110

for.body.105:                                     ; preds = %for.cond.102
  %75 = load i32, i32* %x, align 4
  %idxprom106 = sext i32 %75 to i64
  %arrayidx107 = getelementptr inbounds [26 x i8], [26 x i8]* %Z, i32 0, i64 %idxprom106
  store i8 0, i8* %arrayidx107, align 1
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.body.105
  %76 = load i32, i32* %x, align 4
  %inc109 = add nsw i32 %76, 1
  store i32 %inc109, i32* %x, align 4
  br label %for.cond.102

for.end.110:                                      ; preds = %for.cond.102
  store i32 1, i32* %keep_connecting, align 4
  %77 = load i8, i8* %sf, align 1
  %conv111 = sext i8 %77 to i32
  %idxprom112 = sext i32 %conv111 to i64
  %arrayidx113 = getelementptr inbounds [26 x i8], [26 x i8]* %Z, i32 0, i64 %idxprom112
  store i8 1, i8* %arrayidx113, align 1
  br label %while.cond.114

while.cond.114:                                   ; preds = %for.end.145, %for.end.110
  %78 = load i32, i32* %keep_connecting, align 4
  %tobool115 = icmp ne i32 %78, 0
  br i1 %tobool115, label %while.body.116, label %while.end

while.body.116:                                   ; preds = %while.cond.114
  store i32 0, i32* %keep_connecting, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.143, %while.body.116
  %79 = load i32, i32* %x, align 4
  %cmp118 = icmp slt i32 %79, 26
  br i1 %cmp118, label %for.body.120, label %for.end.145

for.body.120:                                     ; preds = %for.cond.117
  %80 = load i32, i32* %x, align 4
  %idxprom121 = sext i32 %80 to i64
  %81 = load i32*, i32** %nE, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %81, i64 %idxprom121
  %82 = load i32, i32* %arrayidx122, align 4
  %sub123 = sub nsw i32 %82, 1
  %idxprom124 = sext i32 %sub123 to i64
  %83 = load i32, i32* %x, align 4
  %idxprom125 = sext i32 %83 to i64
  %84 = load i8**, i8*** %E, align 8
  %arrayidx126 = getelementptr inbounds i8*, i8** %84, i64 %idxprom125
  %85 = load i8*, i8** %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %85, i64 %idxprom124
  %86 = load i8, i8* %arrayidx127, align 1
  %conv128 = sext i8 %86 to i32
  store i32 %conv128, i32* %y, align 4
  %87 = load i32, i32* %x, align 4
  %idxprom129 = sext i32 %87 to i64
  %arrayidx130 = getelementptr inbounds [26 x i8], [26 x i8]* %Z, i32 0, i64 %idxprom129
  %88 = load i8, i8* %arrayidx130, align 1
  %conv131 = sext i8 %88 to i32
  %cmp132 = icmp eq i32 %conv131, 0
  br i1 %cmp132, label %land.lhs.true, label %if.end.142

land.lhs.true:                                    ; preds = %for.body.120
  %89 = load i32, i32* %y, align 4
  %idxprom134 = sext i32 %89 to i64
  %arrayidx135 = getelementptr inbounds [26 x i8], [26 x i8]* %Z, i32 0, i64 %idxprom134
  %90 = load i8, i8* %arrayidx135, align 1
  %conv136 = sext i8 %90 to i32
  %cmp137 = icmp eq i32 %conv136, 1
  br i1 %cmp137, label %if.then.139, label %if.end.142

if.then.139:                                      ; preds = %land.lhs.true
  %91 = load i32, i32* %x, align 4
  %idxprom140 = sext i32 %91 to i64
  %arrayidx141 = getelementptr inbounds [26 x i8], [26 x i8]* %Z, i32 0, i64 %idxprom140
  store i8 1, i8* %arrayidx141, align 1
  store i32 1, i32* %keep_connecting, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.139, %land.lhs.true, %for.body.120
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.142
  %92 = load i32, i32* %x, align 4
  %inc144 = add nsw i32 %92, 1
  store i32 %inc144, i32* %x, align 4
  br label %for.cond.117

for.end.145:                                      ; preds = %for.cond.117
  br label %while.cond.114

while.end:                                        ; preds = %while.cond.114
  store i32 1, i32* %is_eulerian, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.167, %while.end
  %93 = load i32, i32* %x, align 4
  %cmp147 = icmp slt i32 %93, 26
  br i1 %cmp147, label %for.body.149, label %for.end.169

for.body.149:                                     ; preds = %for.cond.146
  %94 = load i32, i32* %x, align 4
  %idxprom150 = sext i32 %94 to i64
  %95 = load i32*, i32** %nE, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %95, i64 %idxprom150
  %96 = load i32, i32* %arrayidx151, align 4
  %cmp152 = icmp eq i32 %96, 0
  br i1 %cmp152, label %if.then.158, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %for.body.149
  %97 = load i32, i32* %x, align 4
  %98 = load i8, i8* %sf, align 1
  %conv155 = sext i8 %98 to i32
  %cmp156 = icmp eq i32 %97, %conv155
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %lor.lhs.false.154, %for.body.149
  br label %for.inc.167

if.end.159:                                       ; preds = %lor.lhs.false.154
  %99 = load i32, i32* %x, align 4
  %idxprom160 = sext i32 %99 to i64
  %arrayidx161 = getelementptr inbounds [26 x i8], [26 x i8]* %Z, i32 0, i64 %idxprom160
  %100 = load i8, i8* %arrayidx161, align 1
  %conv162 = sext i8 %100 to i32
  %cmp163 = icmp eq i32 %conv162, 0
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end.159
  store i32 0, i32* %is_eulerian, align 4
  br label %for.end.169

if.end.166:                                       ; preds = %if.end.159
  br label %for.inc.167

for.inc.167:                                      ; preds = %if.end.166, %if.then.158
  %101 = load i32, i32* %x, align 4
  %inc168 = add nsw i32 %101, 1
  store i32 %inc168, i32* %x, align 4
  br label %for.cond.146

for.end.169:                                      ; preds = %if.then.165, %for.cond.146
  br label %while.cond

while.end.170:                                    ; preds = %while.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.208, %while.end.170
  %102 = load i32, i32* %x, align 4
  %cmp172 = icmp slt i32 %102, 26
  br i1 %cmp172, label %for.body.174, label %for.end.210

for.body.174:                                     ; preds = %for.cond.171
  %103 = load i32, i32* %x, align 4
  %idxprom175 = sext i32 %103 to i64
  %104 = load i32*, i32** %nE, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %104, i64 %idxprom175
  %105 = load i32, i32* %arrayidx176, align 4
  %sub177 = sub nsw i32 %105, 1
  store i32 %sub177, i32* %n, align 4
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.206, %for.body.174
  %106 = load i32, i32* %n, align 4
  %cmp179 = icmp sgt i32 %106, 1
  br i1 %cmp179, label %for.body.181, label %for.end.207

for.body.181:                                     ; preds = %for.cond.178
  %call182 = call double @sre_random()
  %107 = load i32, i32* %n, align 4
  %conv183 = sitofp i32 %107 to double
  %mul184 = fmul double %call182, %conv183
  %conv185 = fptosi double %mul184 to i32
  store i32 %conv185, i32* %pos, align 4
  %108 = load i32, i32* %pos, align 4
  %idxprom186 = sext i32 %108 to i64
  %109 = load i32, i32* %x, align 4
  %idxprom187 = sext i32 %109 to i64
  %110 = load i8**, i8*** %E, align 8
  %arrayidx188 = getelementptr inbounds i8*, i8** %110, i64 %idxprom187
  %111 = load i8*, i8** %arrayidx188, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %111, i64 %idxprom186
  %112 = load i8, i8* %arrayidx189, align 1
  %conv190 = sext i8 %112 to i32
  store i32 %conv190, i32* %y, align 4
  %113 = load i32, i32* %n, align 4
  %sub191 = sub nsw i32 %113, 1
  %idxprom192 = sext i32 %sub191 to i64
  %114 = load i32, i32* %x, align 4
  %idxprom193 = sext i32 %114 to i64
  %115 = load i8**, i8*** %E, align 8
  %arrayidx194 = getelementptr inbounds i8*, i8** %115, i64 %idxprom193
  %116 = load i8*, i8** %arrayidx194, align 8
  %arrayidx195 = getelementptr inbounds i8, i8* %116, i64 %idxprom192
  %117 = load i8, i8* %arrayidx195, align 1
  %118 = load i32, i32* %pos, align 4
  %idxprom196 = sext i32 %118 to i64
  %119 = load i32, i32* %x, align 4
  %idxprom197 = sext i32 %119 to i64
  %120 = load i8**, i8*** %E, align 8
  %arrayidx198 = getelementptr inbounds i8*, i8** %120, i64 %idxprom197
  %121 = load i8*, i8** %arrayidx198, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %121, i64 %idxprom196
  store i8 %117, i8* %arrayidx199, align 1
  %122 = load i32, i32* %y, align 4
  %conv200 = trunc i32 %122 to i8
  %123 = load i32, i32* %n, align 4
  %sub201 = sub nsw i32 %123, 1
  %idxprom202 = sext i32 %sub201 to i64
  %124 = load i32, i32* %x, align 4
  %idxprom203 = sext i32 %124 to i64
  %125 = load i8**, i8*** %E, align 8
  %arrayidx204 = getelementptr inbounds i8*, i8** %125, i64 %idxprom203
  %126 = load i8*, i8** %arrayidx204, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %126, i64 %idxprom202
  store i8 %conv200, i8* %arrayidx205, align 1
  br label %for.inc.206

for.inc.206:                                      ; preds = %for.body.181
  %127 = load i32, i32* %n, align 4
  %dec = add nsw i32 %127, -1
  store i32 %dec, i32* %n, align 4
  br label %for.cond.178

for.end.207:                                      ; preds = %for.cond.178
  br label %for.inc.208

for.inc.208:                                      ; preds = %for.end.207
  %128 = load i32, i32* %x, align 4
  %inc209 = add nsw i32 %128, 1
  store i32 %inc209, i32* %x, align 4
  br label %for.cond.171

for.end.210:                                      ; preds = %for.cond.171
  %call211 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 240, i64 104)
  %129 = bitcast i8* %call211 to i32*
  store i32* %129, i32** %iE, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.212

for.cond.212:                                     ; preds = %for.inc.218, %for.end.210
  %130 = load i32, i32* %x, align 4
  %cmp213 = icmp slt i32 %130, 26
  br i1 %cmp213, label %for.body.215, label %for.end.220

for.body.215:                                     ; preds = %for.cond.212
  %131 = load i32, i32* %x, align 4
  %idxprom216 = sext i32 %131 to i64
  %132 = load i32*, i32** %iE, align 8
  %arrayidx217 = getelementptr inbounds i32, i32* %132, i64 %idxprom216
  store i32 0, i32* %arrayidx217, align 4
  br label %for.inc.218

for.inc.218:                                      ; preds = %for.body.215
  %133 = load i32, i32* %x, align 4
  %inc219 = add nsw i32 %133, 1
  store i32 %inc219, i32* %x, align 4
  br label %for.cond.212

for.end.220:                                      ; preds = %for.cond.212
  store i32 0, i32* %pos, align 4
  %134 = load i8*, i8** %s2.addr, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %134, i64 0
  %135 = load i8, i8* %arrayidx221, align 1
  %conv222 = sext i8 %135 to i32
  %call223 = call i32 @toupper(i32 %conv222) #5
  %sub224 = sub nsw i32 %call223, 65
  store i32 %sub224, i32* %x, align 4
  br label %while.body.226

while.body.226:                                   ; preds = %for.end.220, %if.end.248
  %136 = load i32, i32* %x, align 4
  %add = add nsw i32 65, %136
  %conv227 = trunc i32 %add to i8
  %137 = load i32, i32* %pos, align 4
  %inc228 = add nsw i32 %137, 1
  store i32 %inc228, i32* %pos, align 4
  %idxprom229 = sext i32 %137 to i64
  %138 = load i8*, i8** %s1.addr, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %138, i64 %idxprom229
  store i8 %conv227, i8* %arrayidx230, align 1
  %139 = load i32, i32* %x, align 4
  %idxprom231 = sext i32 %139 to i64
  %140 = load i32*, i32** %iE, align 8
  %arrayidx232 = getelementptr inbounds i32, i32* %140, i64 %idxprom231
  %141 = load i32, i32* %arrayidx232, align 4
  %idxprom233 = sext i32 %141 to i64
  %142 = load i32, i32* %x, align 4
  %idxprom234 = sext i32 %142 to i64
  %143 = load i8**, i8*** %E, align 8
  %arrayidx235 = getelementptr inbounds i8*, i8** %143, i64 %idxprom234
  %144 = load i8*, i8** %arrayidx235, align 8
  %arrayidx236 = getelementptr inbounds i8, i8* %144, i64 %idxprom233
  %145 = load i8, i8* %arrayidx236, align 1
  %conv237 = sext i8 %145 to i32
  store i32 %conv237, i32* %y, align 4
  %146 = load i32, i32* %x, align 4
  %idxprom238 = sext i32 %146 to i64
  %147 = load i32*, i32** %iE, align 8
  %arrayidx239 = getelementptr inbounds i32, i32* %147, i64 %idxprom238
  %148 = load i32, i32* %arrayidx239, align 4
  %inc240 = add nsw i32 %148, 1
  store i32 %inc240, i32* %arrayidx239, align 4
  %149 = load i32, i32* %y, align 4
  store i32 %149, i32* %x, align 4
  %150 = load i32, i32* %x, align 4
  %idxprom241 = sext i32 %150 to i64
  %151 = load i32*, i32** %iE, align 8
  %arrayidx242 = getelementptr inbounds i32, i32* %151, i64 %idxprom241
  %152 = load i32, i32* %arrayidx242, align 4
  %153 = load i32, i32* %x, align 4
  %idxprom243 = sext i32 %153 to i64
  %154 = load i32*, i32** %nE, align 8
  %arrayidx244 = getelementptr inbounds i32, i32* %154, i64 %idxprom243
  %155 = load i32, i32* %arrayidx244, align 4
  %cmp245 = icmp eq i32 %152, %155
  br i1 %cmp245, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %while.body.226
  br label %while.end.249

if.end.248:                                       ; preds = %while.body.226
  br label %while.body.226

while.end.249:                                    ; preds = %if.then.247
  %156 = load i8, i8* %sf, align 1
  %conv250 = sext i8 %156 to i32
  %add251 = add nsw i32 65, %conv250
  %conv252 = trunc i32 %add251 to i8
  %157 = load i32, i32* %pos, align 4
  %inc253 = add nsw i32 %157, 1
  store i32 %inc253, i32* %pos, align 4
  %idxprom254 = sext i32 %157 to i64
  %158 = load i8*, i8** %s1.addr, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %158, i64 %idxprom254
  store i8 %conv252, i8* %arrayidx255, align 1
  %159 = load i32, i32* %pos, align 4
  %idxprom256 = sext i32 %159 to i64
  %160 = load i8*, i8** %s1.addr, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %160, i64 %idxprom256
  store i8 0, i8* %arrayidx257, align 1
  %161 = load i32, i32* %x, align 4
  %162 = load i8, i8* %sf, align 1
  %conv258 = sext i8 %162 to i32
  %cmp259 = icmp ne i32 %161, %conv258
  br i1 %cmp259, label %if.then.261, label %if.end.262

if.then.261:                                      ; preds = %while.end.249
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.261, %while.end.249
  %163 = load i32, i32* %pos, align 4
  %164 = load i32, i32* %len, align 4
  %cmp263 = icmp ne i32 %163, %164
  br i1 %cmp263, label %if.then.265, label %if.end.266

if.then.265:                                      ; preds = %if.end.262
  %165 = load i32, i32* %pos, align 4
  %166 = load i32, i32* %len, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i32 %165, i32 %166)
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.265, %if.end.262
  %167 = load i8**, i8*** %E, align 8
  call void @Free2DArray(i8** %167, i32 26)
  %168 = load i32*, i32** %nE, align 8
  %169 = bitcast i32* %168 to i8*
  call void @free(i8* %169) #5
  %170 = load i32*, i32** %iE, align 8
  %171 = bitcast i32* %170 to i8*
  call void @free(i8* %171) #5
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.266, %if.then
  %172 = load i32, i32* %retval
  ret i32 %172
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare i8* @sre_malloc(i8*, i32, i64) #3

; Function Attrs: nounwind
declare i32 @toupper(i32) #1

declare void @Die(i8*, ...) #3

declare void @Free2DArray(i8**, i32) #3

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @StrMarkov0(i8* %s1, i8* %s2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %pos = alloca i32, align 4
  %p = alloca [26 x float], align 16
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s2.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  store i32 0, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %pos, align 4
  %2 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %s2.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %5 to i32
  %idxprom3 = sext i32 %conv2 to i64
  %call4 = call i16** @__ctype_b_loc() #7
  %6 = load i16*, i16** %call4, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %6, i64 %idxprom3
  %7 = load i16, i16* %arrayidx5, align 2
  %conv6 = zext i16 %7 to i32
  %and = and i32 %conv6, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [26 x float], [26 x float]* %p, i32 0, i32 0
  call void @FSet(float* %arraydecay, i32 26, float 0.000000e+00)
  store i32 0, i32* %pos, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.19, %for.end
  %9 = load i32, i32* %pos, align 4
  %10 = load i32, i32* %len, align 4
  %cmp8 = icmp slt i32 %9, %10
  br i1 %cmp8, label %for.body.10, label %for.end.21

for.body.10:                                      ; preds = %for.cond.7
  %11 = load i32, i32* %pos, align 4
  %idxprom11 = sext i32 %11 to i64
  %12 = load i8*, i8** %s2.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %12, i64 %idxprom11
  %13 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %13 to i32
  %call14 = call i32 @toupper(i32 %conv13) #5
  %sub = sub nsw i32 %call14, 65
  %idxprom15 = sext i32 %sub to i64
  %arrayidx16 = getelementptr inbounds [26 x float], [26 x float]* %p, i32 0, i64 %idxprom15
  %14 = load float, float* %arrayidx16, align 4
  %conv17 = fpext float %14 to double
  %add = fadd double %conv17, 1.000000e+00
  %conv18 = fptrunc double %add to float
  store float %conv18, float* %arrayidx16, align 4
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.10
  %15 = load i32, i32* %pos, align 4
  %inc20 = add nsw i32 %15, 1
  store i32 %inc20, i32* %pos, align 4
  br label %for.cond.7

for.end.21:                                       ; preds = %for.cond.7
  %arraydecay22 = getelementptr inbounds [26 x float], [26 x float]* %p, i32 0, i32 0
  call void @FNorm(float* %arraydecay22, i32 26)
  store i32 0, i32* %pos, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.33, %for.end.21
  %16 = load i32, i32* %pos, align 4
  %17 = load i32, i32* %len, align 4
  %cmp24 = icmp slt i32 %16, %17
  br i1 %cmp24, label %for.body.26, label %for.end.35

for.body.26:                                      ; preds = %for.cond.23
  %arraydecay27 = getelementptr inbounds [26 x float], [26 x float]* %p, i32 0, i32 0
  %call28 = call i32 @FChoose(float* %arraydecay27, i32 26)
  %add29 = add nsw i32 %call28, 65
  %conv30 = trunc i32 %add29 to i8
  %18 = load i32, i32* %pos, align 4
  %idxprom31 = sext i32 %18 to i64
  %19 = load i8*, i8** %s1.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %19, i64 %idxprom31
  store i8 %conv30, i8* %arrayidx32, align 1
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.26
  %20 = load i32, i32* %pos, align 4
  %inc34 = add nsw i32 %20, 1
  store i32 %inc34, i32* %pos, align 4
  br label %for.cond.23

for.end.35:                                       ; preds = %for.cond.23
  %21 = load i32, i32* %pos, align 4
  %idxprom36 = sext i32 %21 to i64
  %22 = load i8*, i8** %s1.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %22, i64 %idxprom36
  store i8 0, i8* %arrayidx37, align 1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.35, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare void @FSet(float*, i32, float) #3

declare void @FNorm(float*, i32) #3

declare i32 @FChoose(float*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @StrMarkov1(i8* %s1, i8* %s2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %pos = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca [26 x [26 x float]], align 16
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s2.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  store i32 0, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %pos, align 4
  %2 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %s2.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %5 to i32
  %idxprom3 = sext i32 %conv2 to i64
  %call4 = call i16** @__ctype_b_loc() #7
  %6 = load i16*, i16** %call4, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %6, i64 %idxprom3
  %7 = load i16, i16* %arrayidx5, align 2
  %conv6 = zext i16 %7 to i32
  %and = and i32 %conv6, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.13, %for.end
  %9 = load i32, i32* %x, align 4
  %cmp8 = icmp slt i32 %9, 26
  br i1 %cmp8, label %for.body.10, label %for.end.15

for.body.10:                                      ; preds = %for.cond.7
  %10 = load i32, i32* %x, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [26 x [26 x float]], [26 x [26 x float]]* %p, i32 0, i64 %idxprom11
  %arraydecay = getelementptr inbounds [26 x float], [26 x float]* %arrayidx12, i32 0, i32 0
  call void @FSet(float* %arraydecay, i32 26, float 0.000000e+00)
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.10
  %11 = load i32, i32* %x, align 4
  %inc14 = add nsw i32 %11, 1
  store i32 %inc14, i32* %x, align 4
  br label %for.cond.7

for.end.15:                                       ; preds = %for.cond.7
  %12 = load i8*, i8** %s2.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %13 to i32
  %call18 = call i32 @toupper(i32 %conv17) #5
  %sub = sub nsw i32 %call18, 65
  store i32 %sub, i32* %x, align 4
  store i32 %sub, i32* %i, align 4
  store i32 1, i32* %pos, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.34, %for.end.15
  %14 = load i32, i32* %pos, align 4
  %15 = load i32, i32* %len, align 4
  %cmp20 = icmp slt i32 %14, %15
  br i1 %cmp20, label %for.body.22, label %for.end.36

for.body.22:                                      ; preds = %for.cond.19
  %16 = load i32, i32* %pos, align 4
  %idxprom23 = sext i32 %16 to i64
  %17 = load i8*, i8** %s2.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %17, i64 %idxprom23
  %18 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %18 to i32
  %call26 = call i32 @toupper(i32 %conv25) #5
  %sub27 = sub nsw i32 %call26, 65
  store i32 %sub27, i32* %y, align 4
  %19 = load i32, i32* %y, align 4
  %idxprom28 = sext i32 %19 to i64
  %20 = load i32, i32* %x, align 4
  %idxprom29 = sext i32 %20 to i64
  %arrayidx30 = getelementptr inbounds [26 x [26 x float]], [26 x [26 x float]]* %p, i32 0, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [26 x float], [26 x float]* %arrayidx30, i32 0, i64 %idxprom28
  %21 = load float, float* %arrayidx31, align 4
  %conv32 = fpext float %21 to double
  %add = fadd double %conv32, 1.000000e+00
  %conv33 = fptrunc double %add to float
  store float %conv33, float* %arrayidx31, align 4
  %22 = load i32, i32* %y, align 4
  store i32 %22, i32* %x, align 4
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.22
  %23 = load i32, i32* %pos, align 4
  %inc35 = add nsw i32 %23, 1
  store i32 %inc35, i32* %pos, align 4
  br label %for.cond.19

for.end.36:                                       ; preds = %for.cond.19
  store i32 0, i32* %x, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.44, %for.end.36
  %24 = load i32, i32* %x, align 4
  %cmp38 = icmp slt i32 %24, 26
  br i1 %cmp38, label %for.body.40, label %for.end.46

for.body.40:                                      ; preds = %for.cond.37
  %25 = load i32, i32* %x, align 4
  %idxprom41 = sext i32 %25 to i64
  %arrayidx42 = getelementptr inbounds [26 x [26 x float]], [26 x [26 x float]]* %p, i32 0, i64 %idxprom41
  %arraydecay43 = getelementptr inbounds [26 x float], [26 x float]* %arrayidx42, i32 0, i32 0
  call void @FNorm(float* %arraydecay43, i32 26)
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.40
  %26 = load i32, i32* %x, align 4
  %inc45 = add nsw i32 %26, 1
  store i32 %inc45, i32* %x, align 4
  br label %for.cond.37

for.end.46:                                       ; preds = %for.cond.37
  %27 = load i32, i32* %i, align 4
  store i32 %27, i32* %x, align 4
  %28 = load i32, i32* %x, align 4
  %add47 = add nsw i32 %28, 65
  %conv48 = trunc i32 %add47 to i8
  %29 = load i8*, i8** %s1.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %conv48, i8* %arrayidx49, align 1
  store i32 1, i32* %pos, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.62, %for.end.46
  %30 = load i32, i32* %pos, align 4
  %31 = load i32, i32* %len, align 4
  %cmp51 = icmp slt i32 %30, %31
  br i1 %cmp51, label %for.body.53, label %for.end.64

for.body.53:                                      ; preds = %for.cond.50
  %32 = load i32, i32* %x, align 4
  %idxprom54 = sext i32 %32 to i64
  %arrayidx55 = getelementptr inbounds [26 x [26 x float]], [26 x [26 x float]]* %p, i32 0, i64 %idxprom54
  %arraydecay56 = getelementptr inbounds [26 x float], [26 x float]* %arrayidx55, i32 0, i32 0
  %call57 = call i32 @FChoose(float* %arraydecay56, i32 26)
  store i32 %call57, i32* %y, align 4
  %33 = load i32, i32* %y, align 4
  %add58 = add nsw i32 %33, 65
  %conv59 = trunc i32 %add58 to i8
  %34 = load i32, i32* %pos, align 4
  %idxprom60 = sext i32 %34 to i64
  %35 = load i8*, i8** %s1.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %35, i64 %idxprom60
  store i8 %conv59, i8* %arrayidx61, align 1
  %36 = load i32, i32* %y, align 4
  store i32 %36, i32* %x, align 4
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.53
  %37 = load i32, i32* %pos, align 4
  %inc63 = add nsw i32 %37, 1
  store i32 %inc63, i32* %pos, align 4
  br label %for.cond.50

for.end.64:                                       ; preds = %for.cond.50
  %38 = load i32, i32* %pos, align 4
  %idxprom65 = sext i32 %38 to i64
  %39 = load i8*, i8** %s1.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %39, i64 %idxprom65
  store i8 0, i8* %arrayidx66, align 1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.64, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define i32 @StrReverse(i8* %s1, i8* %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %pos = alloca i32, align 4
  %c = alloca i8, align 1
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s2.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  store i32 0, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %pos, align 4
  %2 = load i32, i32* %len, align 4
  %div = sdiv i32 %2, 2
  %cmp = icmp slt i32 %1, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %len, align 4
  %4 = load i32, i32* %pos, align 4
  %sub = sub nsw i32 %3, %4
  %sub2 = sub nsw i32 %sub, 1
  %idxprom = sext i32 %sub2 to i64
  %5 = load i8*, i8** %s2.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  store i8 %6, i8* %c, align 1
  %7 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load i8*, i8** %s2.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 %idxprom3
  %9 = load i8, i8* %arrayidx4, align 1
  %10 = load i32, i32* %len, align 4
  %11 = load i32, i32* %pos, align 4
  %sub5 = sub nsw i32 %10, %11
  %sub6 = sub nsw i32 %sub5, 1
  %idxprom7 = sext i32 %sub6 to i64
  %12 = load i8*, i8** %s1.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %idxprom7
  store i8 %9, i8* %arrayidx8, align 1
  %13 = load i8, i8* %c, align 1
  %14 = load i32, i32* %pos, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load i8*, i8** %s1.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %15, i64 %idxprom9
  store i8 %13, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %len, align 4
  %rem = srem i32 %17, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %18 = load i32, i32* %pos, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load i8*, i8** %s2.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %19, i64 %idxprom11
  %20 = load i8, i8* %arrayidx12, align 1
  %21 = load i32, i32* %pos, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load i8*, i8** %s1.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %22, i64 %idxprom13
  store i8 %20, i8* %arrayidx14, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %23 = load i32, i32* %len, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load i8*, i8** %s1.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %24, i64 %idxprom15
  store i8 0, i8* %arrayidx16, align 1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @StrRegionalShuffle(i8* %s1, i8* %s2, i32 %w) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %w.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %c = alloca i8, align 1
  %pos = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %w, i32* %w.addr, align 4
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  %cmp = icmp ne i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %s1.addr, align 8
  %3 = load i8*, i8** %s2.addr, align 8
  %call = call i8* @strcpy(i8* %2, i8* %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %s1.addr, align 8
  %call1 = call i64 @strlen(i8* %4) #6
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %len, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %7, 1
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %w.addr, align 4
  %add = add nsw i32 %8, %9
  %sub4 = sub nsw i32 %add, 1
  %cmp5 = icmp slt i32 %sub, %sub4
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load i32, i32* %len, align 4
  %sub7 = sub nsw i32 %10, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %w.addr, align 4
  %add8 = add nsw i32 %11, %12
  %sub9 = sub nsw i32 %add8, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub7, %cond.true ], [ %sub9, %cond.false ]
  store i32 %cond, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %cond.end
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %i, align 4
  %cmp11 = icmp sgt i32 %13, %14
  br i1 %cmp11, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.10
  %15 = load i32, i32* %i, align 4
  %call14 = call double @sre_random()
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %i, align 4
  %sub15 = sub nsw i32 %16, %17
  %conv16 = sitofp i32 %sub15 to double
  %mul = fmul double %call14, %conv16
  %conv17 = fptosi double %mul to i32
  %add18 = add nsw i32 %15, %conv17
  store i32 %add18, i32* %pos, align 4
  %18 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i8*, i8** %s1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %idxprom
  %20 = load i8, i8* %arrayidx, align 1
  store i8 %20, i8* %c, align 1
  %21 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %21 to i64
  %22 = load i8*, i8** %s1.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %22, i64 %idxprom19
  %23 = load i8, i8* %arrayidx20, align 1
  %24 = load i32, i32* %pos, align 4
  %idxprom21 = sext i32 %24 to i64
  %25 = load i8*, i8** %s1.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %25, i64 %idxprom21
  store i8 %23, i8* %arrayidx22, align 1
  %26 = load i8, i8* %c, align 1
  %27 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %27 to i64
  %28 = load i8*, i8** %s1.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %28, i64 %idxprom23
  store i8 %26, i8* %arrayidx24, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %29 = load i32, i32* %j, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %30 = load i32, i32* %w.addr, align 4
  %31 = load i32, i32* %i, align 4
  %add26 = add nsw i32 %31, %30
  store i32 %add26, i32* %i, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @AlignmentShuffle(i8** %ali1, i8** %ali2, i32 %nseq, i32 %alen) #0 {
entry:
  %ali1.addr = alloca i8**, align 8
  %ali2.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %alen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %c = alloca i8, align 1
  store i8** %ali1, i8*** %ali1.addr, align 8
  store i8** %ali2, i8*** %ali2.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 %alen, i32* %alen.addr, align 4
  %0 = load i8**, i8*** %ali1.addr, align 8
  %1 = load i8**, i8*** %ali2.addr, align 8
  %cmp = icmp ne i8** %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %nseq.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %ali1.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load i8**, i8*** %ali2.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %8, i64 %idxprom2
  %9 = load i8*, i8** %arrayidx3, align 8
  %call = call i8* @strcpy(i8* %6, i8* %9) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.11, %if.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %nseq.addr, align 4
  %cmp5 = icmp slt i32 %11, %12
  br i1 %cmp5, label %for.body.6, label %for.end.13

for.body.6:                                       ; preds = %for.cond.4
  %13 = load i32, i32* %alen.addr, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load i8**, i8*** %ali1.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %15, i64 %idxprom8
  %16 = load i8*, i8** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %16, i64 %idxprom7
  store i8 0, i8* %arrayidx10, align 1
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.6
  %17 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %17, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.4

for.end.13:                                       ; preds = %for.cond.4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.43, %for.end.13
  %18 = load i32, i32* %alen.addr, align 4
  %cmp15 = icmp sgt i32 %18, 1
  br i1 %cmp15, label %for.body.16, label %for.end.44

for.body.16:                                      ; preds = %for.cond.14
  %call17 = call double @sre_random()
  %19 = load i32, i32* %alen.addr, align 4
  %conv = sitofp i32 %19 to double
  %mul = fmul double %call17, %conv
  %conv18 = fptosi double %mul to i32
  store i32 %conv18, i32* %pos, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.40, %for.body.16
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %nseq.addr, align 4
  %cmp20 = icmp slt i32 %20, %21
  br i1 %cmp20, label %for.body.22, label %for.end.42

for.body.22:                                      ; preds = %for.cond.19
  %22 = load i32, i32* %pos, align 4
  %idxprom23 = sext i32 %22 to i64
  %23 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %23 to i64
  %24 = load i8**, i8*** %ali1.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %24, i64 %idxprom24
  %25 = load i8*, i8** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %25, i64 %idxprom23
  %26 = load i8, i8* %arrayidx26, align 1
  store i8 %26, i8* %c, align 1
  %27 = load i32, i32* %alen.addr, align 4
  %sub = sub nsw i32 %27, 1
  %idxprom27 = sext i32 %sub to i64
  %28 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %28 to i64
  %29 = load i8**, i8*** %ali1.addr, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %29, i64 %idxprom28
  %30 = load i8*, i8** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %30, i64 %idxprom27
  %31 = load i8, i8* %arrayidx30, align 1
  %32 = load i32, i32* %pos, align 4
  %idxprom31 = sext i32 %32 to i64
  %33 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %33 to i64
  %34 = load i8**, i8*** %ali1.addr, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %34, i64 %idxprom32
  %35 = load i8*, i8** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %35, i64 %idxprom31
  store i8 %31, i8* %arrayidx34, align 1
  %36 = load i8, i8* %c, align 1
  %37 = load i32, i32* %alen.addr, align 4
  %sub35 = sub nsw i32 %37, 1
  %idxprom36 = sext i32 %sub35 to i64
  %38 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %38 to i64
  %39 = load i8**, i8*** %ali1.addr, align 8
  %arrayidx38 = getelementptr inbounds i8*, i8** %39, i64 %idxprom37
  %40 = load i8*, i8** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %40, i64 %idxprom36
  store i8 %36, i8* %arrayidx39, align 1
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.22
  %41 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %41, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond.19

for.end.42:                                       ; preds = %for.cond.19
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end.42
  %42 = load i32, i32* %alen.addr, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %alen.addr, align 4
  br label %for.cond.14

for.end.44:                                       ; preds = %for.cond.14
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @AlignmentBootstrap(i8** %ali1, i8** %ali2, i32 %nseq, i32 %alen) #0 {
entry:
  %ali1.addr = alloca i8**, align 8
  %ali2.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %alen.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %col = alloca i32, align 4
  %i = alloca i32, align 4
  store i8** %ali1, i8*** %ali1.addr, align 8
  store i8** %ali2, i8*** %ali2.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 %alen, i32* %alen.addr, align 4
  store i32 0, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %0 = load i32, i32* %pos, align 4
  %1 = load i32, i32* %alen.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %call = call double @sre_random()
  %2 = load i32, i32* %alen.addr, align 4
  %conv = sitofp i32 %2 to double
  %mul = fmul double %call, %conv
  %conv1 = fptosi double %mul to i32
  store i32 %conv1, i32* %col, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %nseq.addr, align 4
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %5 = load i32, i32* %col, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load i8**, i8*** %ali2.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom6
  %8 = load i8*, i8** %arrayidx, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx7, align 1
  %10 = load i32, i32* %pos, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load i8**, i8*** %ali1.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %12, i64 %idxprom9
  %13 = load i8*, i8** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 %idxprom8
  store i8 %9, i8* %arrayidx11, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %15 = load i32, i32* %pos, align 4
  %inc13 = add nsw i32 %15, 1
  store i32 %inc13, i32* %pos, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.23, %for.end.14
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %nseq.addr, align 4
  %cmp16 = icmp slt i32 %16, %17
  br i1 %cmp16, label %for.body.18, label %for.end.25

for.body.18:                                      ; preds = %for.cond.15
  %18 = load i32, i32* %alen.addr, align 4
  %idxprom19 = sext i32 %18 to i64
  %19 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load i8**, i8*** %ali1.addr, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %20, i64 %idxprom20
  %21 = load i8*, i8** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %21, i64 %idxprom19
  store i8 0, i8* %arrayidx22, align 1
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.18
  %22 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %22, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.15

for.end.25:                                       ; preds = %for.cond.15
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @QRNAShuffle(i8* %xs, i8* %ys, i8* %x, i8* %y) #0 {
entry:
  %xs.addr = alloca i8*, align 8
  %ys.addr = alloca i8*, align 8
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  %L = alloca i32, align 4
  %xycol = alloca i32*, align 8
  %xcol = alloca i32*, align 8
  %ycol = alloca i32*, align 8
  %nxy = alloca i32, align 4
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %c = alloca i32, align 4
  %xsym = alloca i8, align 1
  %ysym = alloca i8, align 1
  store i8* %xs, i8** %xs.addr, align 8
  store i8* %ys, i8** %ys.addr, align 8
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  %0 = load i8*, i8** %xs.addr, align 8
  %1 = load i8*, i8** %x.addr, align 8
  %cmp = icmp ne i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %xs.addr, align 8
  %3 = load i8*, i8** %x.addr, align 8
  %call = call i8* @strcpy(i8* %2, i8* %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %ys.addr, align 8
  %5 = load i8*, i8** %y.addr, align 8
  %cmp1 = icmp ne i8* %4, %5
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %6 = load i8*, i8** %ys.addr, align 8
  %7 = load i8*, i8** %y.addr, align 8
  %call3 = call i8* @strcpy(i8* %6, i8* %7) #5
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %8 = load i8*, i8** %x.addr, align 8
  %call5 = call i64 @strlen(i8* %8) #6
  %conv = trunc i64 %call5 to i32
  store i32 %conv, i32* %L, align 4
  %9 = load i32, i32* %L, align 4
  %conv6 = sext i32 %9 to i64
  %mul = mul i64 4, %conv6
  %call7 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 572, i64 %mul)
  %10 = bitcast i8* %call7 to i32*
  store i32* %10, i32** %xycol, align 8
  %11 = load i32, i32* %L, align 4
  %conv8 = sext i32 %11 to i64
  %mul9 = mul i64 4, %conv8
  %call10 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 573, i64 %mul9)
  %12 = bitcast i8* %call10 to i32*
  store i32* %12, i32** %xcol, align 8
  %13 = load i32, i32* %L, align 4
  %conv11 = sext i32 %13 to i64
  %mul12 = mul i64 4, %conv11
  %call13 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 574, i64 %mul12)
  %14 = bitcast i8* %call13 to i32*
  store i32* %14, i32** %ycol, align 8
  store i32 0, i32* %ny, align 4
  store i32 0, i32* %nx, align 4
  store i32 0, i32* %nxy, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %L, align 4
  %cmp14 = icmp slt i32 %15, %16
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i8*, i8** %x.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1
  %conv16 = sext i8 %19 to i32
  %cmp17 = icmp eq i32 %conv16, 32
  br i1 %cmp17, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %20 to i64
  %21 = load i8*, i8** %x.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %21, i64 %idxprom19
  %22 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %22 to i32
  %cmp22 = icmp eq i32 %conv21, 46
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false
  %23 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %23 to i64
  %24 = load i8*, i8** %x.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %24, i64 %idxprom25
  %25 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %25 to i32
  %cmp28 = icmp eq i32 %conv27, 95
  br i1 %cmp28, label %land.lhs.true, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.24
  %26 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %26 to i64
  %27 = load i8*, i8** %x.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %27, i64 %idxprom31
  %28 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %28 to i32
  %cmp34 = icmp eq i32 %conv33, 45
  br i1 %cmp34, label %land.lhs.true, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.30
  %29 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %29 to i64
  %30 = load i8*, i8** %x.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %30, i64 %idxprom37
  %31 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %31 to i32
  %cmp40 = icmp eq i32 %conv39, 126
  br i1 %cmp40, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.36, %lor.lhs.false.30, %lor.lhs.false.24, %lor.lhs.false, %for.body
  %32 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %32 to i64
  %33 = load i8*, i8** %y.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %33, i64 %idxprom42
  %34 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %34 to i32
  %cmp45 = icmp eq i32 %conv44, 32
  br i1 %cmp45, label %if.then.71, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %land.lhs.true
  %35 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %35 to i64
  %36 = load i8*, i8** %y.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %36, i64 %idxprom48
  %37 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %37 to i32
  %cmp51 = icmp eq i32 %conv50, 46
  br i1 %cmp51, label %if.then.71, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false.47
  %38 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %38 to i64
  %39 = load i8*, i8** %y.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %39, i64 %idxprom54
  %40 = load i8, i8* %arrayidx55, align 1
  %conv56 = sext i8 %40 to i32
  %cmp57 = icmp eq i32 %conv56, 95
  br i1 %cmp57, label %if.then.71, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.53
  %41 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %41 to i64
  %42 = load i8*, i8** %y.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %42, i64 %idxprom60
  %43 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %43 to i32
  %cmp63 = icmp eq i32 %conv62, 45
  br i1 %cmp63, label %if.then.71, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.59
  %44 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %44 to i64
  %45 = load i8*, i8** %y.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %45, i64 %idxprom66
  %46 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %46 to i32
  %cmp69 = icmp eq i32 %conv68, 126
  br i1 %cmp69, label %if.then.71, label %if.else

if.then.71:                                       ; preds = %lor.lhs.false.65, %lor.lhs.false.59, %lor.lhs.false.53, %lor.lhs.false.47, %land.lhs.true
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false.65, %lor.lhs.false.36
  %47 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %47 to i64
  %48 = load i8*, i8** %x.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %48, i64 %idxprom72
  %49 = load i8, i8* %arrayidx73, align 1
  %conv74 = sext i8 %49 to i32
  %cmp75 = icmp eq i32 %conv74, 32
  br i1 %cmp75, label %if.else.134, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %if.else
  %50 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %50 to i64
  %51 = load i8*, i8** %x.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %51, i64 %idxprom78
  %52 = load i8, i8* %arrayidx79, align 1
  %conv80 = sext i8 %52 to i32
  %cmp81 = icmp eq i32 %conv80, 46
  br i1 %cmp81, label %if.else.134, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %lor.lhs.false.77
  %53 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %53 to i64
  %54 = load i8*, i8** %x.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %54, i64 %idxprom84
  %55 = load i8, i8* %arrayidx85, align 1
  %conv86 = sext i8 %55 to i32
  %cmp87 = icmp eq i32 %conv86, 95
  br i1 %cmp87, label %if.else.134, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %lor.lhs.false.83
  %56 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %56 to i64
  %57 = load i8*, i8** %x.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %57, i64 %idxprom90
  %58 = load i8, i8* %arrayidx91, align 1
  %conv92 = sext i8 %58 to i32
  %cmp93 = icmp eq i32 %conv92, 45
  br i1 %cmp93, label %if.else.134, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %lor.lhs.false.89
  %59 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %59 to i64
  %60 = load i8*, i8** %x.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %60, i64 %idxprom96
  %61 = load i8, i8* %arrayidx97, align 1
  %conv98 = sext i8 %61 to i32
  %cmp99 = icmp eq i32 %conv98, 126
  br i1 %cmp99, label %if.else.134, label %land.lhs.true.101

land.lhs.true.101:                                ; preds = %lor.lhs.false.95
  %62 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %62 to i64
  %63 = load i8*, i8** %y.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %63, i64 %idxprom102
  %64 = load i8, i8* %arrayidx103, align 1
  %conv104 = sext i8 %64 to i32
  %cmp105 = icmp eq i32 %conv104, 32
  br i1 %cmp105, label %if.else.134, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %land.lhs.true.101
  %65 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %65 to i64
  %66 = load i8*, i8** %y.addr, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %66, i64 %idxprom108
  %67 = load i8, i8* %arrayidx109, align 1
  %conv110 = sext i8 %67 to i32
  %cmp111 = icmp eq i32 %conv110, 46
  br i1 %cmp111, label %if.else.134, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %lor.lhs.false.107
  %68 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %68 to i64
  %69 = load i8*, i8** %y.addr, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %69, i64 %idxprom114
  %70 = load i8, i8* %arrayidx115, align 1
  %conv116 = sext i8 %70 to i32
  %cmp117 = icmp eq i32 %conv116, 95
  br i1 %cmp117, label %if.else.134, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %lor.lhs.false.113
  %71 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %71 to i64
  %72 = load i8*, i8** %y.addr, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %72, i64 %idxprom120
  %73 = load i8, i8* %arrayidx121, align 1
  %conv122 = sext i8 %73 to i32
  %cmp123 = icmp eq i32 %conv122, 45
  br i1 %cmp123, label %if.else.134, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %lor.lhs.false.119
  %74 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %74 to i64
  %75 = load i8*, i8** %y.addr, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %75, i64 %idxprom126
  %76 = load i8, i8* %arrayidx127, align 1
  %conv128 = sext i8 %76 to i32
  %cmp129 = icmp eq i32 %conv128, 126
  br i1 %cmp129, label %if.else.134, label %if.then.131

if.then.131:                                      ; preds = %lor.lhs.false.125
  %77 = load i32, i32* %i, align 4
  %78 = load i32, i32* %nxy, align 4
  %idxprom132 = sext i32 %78 to i64
  %79 = load i32*, i32** %xycol, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %79, i64 %idxprom132
  store i32 %77, i32* %arrayidx133, align 4
  %80 = load i32, i32* %nxy, align 4
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %nxy, align 4
  br label %if.end.204

if.else.134:                                      ; preds = %lor.lhs.false.125, %lor.lhs.false.119, %lor.lhs.false.113, %lor.lhs.false.107, %land.lhs.true.101, %lor.lhs.false.95, %lor.lhs.false.89, %lor.lhs.false.83, %lor.lhs.false.77, %if.else
  %81 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %81 to i64
  %82 = load i8*, i8** %x.addr, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %82, i64 %idxprom135
  %83 = load i8, i8* %arrayidx136, align 1
  %conv137 = sext i8 %83 to i32
  %cmp138 = icmp eq i32 %conv137, 32
  br i1 %cmp138, label %if.then.164, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %if.else.134
  %84 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %84 to i64
  %85 = load i8*, i8** %x.addr, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %85, i64 %idxprom141
  %86 = load i8, i8* %arrayidx142, align 1
  %conv143 = sext i8 %86 to i32
  %cmp144 = icmp eq i32 %conv143, 46
  br i1 %cmp144, label %if.then.164, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %lor.lhs.false.140
  %87 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %87 to i64
  %88 = load i8*, i8** %x.addr, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %88, i64 %idxprom147
  %89 = load i8, i8* %arrayidx148, align 1
  %conv149 = sext i8 %89 to i32
  %cmp150 = icmp eq i32 %conv149, 95
  br i1 %cmp150, label %if.then.164, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %lor.lhs.false.146
  %90 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %90 to i64
  %91 = load i8*, i8** %x.addr, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %91, i64 %idxprom153
  %92 = load i8, i8* %arrayidx154, align 1
  %conv155 = sext i8 %92 to i32
  %cmp156 = icmp eq i32 %conv155, 45
  br i1 %cmp156, label %if.then.164, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %lor.lhs.false.152
  %93 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %93 to i64
  %94 = load i8*, i8** %x.addr, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %94, i64 %idxprom159
  %95 = load i8, i8* %arrayidx160, align 1
  %conv161 = sext i8 %95 to i32
  %cmp162 = icmp eq i32 %conv161, 126
  br i1 %cmp162, label %if.then.164, label %if.else.168

if.then.164:                                      ; preds = %lor.lhs.false.158, %lor.lhs.false.152, %lor.lhs.false.146, %lor.lhs.false.140, %if.else.134
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* %ny, align 4
  %idxprom165 = sext i32 %97 to i64
  %98 = load i32*, i32** %ycol, align 8
  %arrayidx166 = getelementptr inbounds i32, i32* %98, i64 %idxprom165
  store i32 %96, i32* %arrayidx166, align 4
  %99 = load i32, i32* %ny, align 4
  %inc167 = add nsw i32 %99, 1
  store i32 %inc167, i32* %ny, align 4
  br label %if.end.203

if.else.168:                                      ; preds = %lor.lhs.false.158
  %100 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %100 to i64
  %101 = load i8*, i8** %y.addr, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %101, i64 %idxprom169
  %102 = load i8, i8* %arrayidx170, align 1
  %conv171 = sext i8 %102 to i32
  %cmp172 = icmp eq i32 %conv171, 32
  br i1 %cmp172, label %if.then.198, label %lor.lhs.false.174

lor.lhs.false.174:                                ; preds = %if.else.168
  %103 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %103 to i64
  %104 = load i8*, i8** %y.addr, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %104, i64 %idxprom175
  %105 = load i8, i8* %arrayidx176, align 1
  %conv177 = sext i8 %105 to i32
  %cmp178 = icmp eq i32 %conv177, 46
  br i1 %cmp178, label %if.then.198, label %lor.lhs.false.180

lor.lhs.false.180:                                ; preds = %lor.lhs.false.174
  %106 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %106 to i64
  %107 = load i8*, i8** %y.addr, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %107, i64 %idxprom181
  %108 = load i8, i8* %arrayidx182, align 1
  %conv183 = sext i8 %108 to i32
  %cmp184 = icmp eq i32 %conv183, 95
  br i1 %cmp184, label %if.then.198, label %lor.lhs.false.186

lor.lhs.false.186:                                ; preds = %lor.lhs.false.180
  %109 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %109 to i64
  %110 = load i8*, i8** %y.addr, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %110, i64 %idxprom187
  %111 = load i8, i8* %arrayidx188, align 1
  %conv189 = sext i8 %111 to i32
  %cmp190 = icmp eq i32 %conv189, 45
  br i1 %cmp190, label %if.then.198, label %lor.lhs.false.192

lor.lhs.false.192:                                ; preds = %lor.lhs.false.186
  %112 = load i32, i32* %i, align 4
  %idxprom193 = sext i32 %112 to i64
  %113 = load i8*, i8** %y.addr, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %113, i64 %idxprom193
  %114 = load i8, i8* %arrayidx194, align 1
  %conv195 = sext i8 %114 to i32
  %cmp196 = icmp eq i32 %conv195, 126
  br i1 %cmp196, label %if.then.198, label %if.end.202

if.then.198:                                      ; preds = %lor.lhs.false.192, %lor.lhs.false.186, %lor.lhs.false.180, %lor.lhs.false.174, %if.else.168
  %115 = load i32, i32* %i, align 4
  %116 = load i32, i32* %nx, align 4
  %idxprom199 = sext i32 %116 to i64
  %117 = load i32*, i32** %xcol, align 8
  %arrayidx200 = getelementptr inbounds i32, i32* %117, i64 %idxprom199
  store i32 %115, i32* %arrayidx200, align 4
  %118 = load i32, i32* %nx, align 4
  %inc201 = add nsw i32 %118, 1
  store i32 %inc201, i32* %nx, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.198, %lor.lhs.false.192
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.then.164
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.then.131
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204
  br label %for.inc

for.inc:                                          ; preds = %if.end.205, %if.then.71
  %119 = load i32, i32* %i, align 4
  %inc206 = add nsw i32 %119, 1
  store i32 %inc206, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.207

for.cond.207:                                     ; preds = %for.inc.262, %for.end
  %120 = load i32, i32* %nxy, align 4
  %cmp208 = icmp sgt i32 %120, 1
  br i1 %cmp208, label %for.body.210, label %for.end.263

for.body.210:                                     ; preds = %for.cond.207
  %call211 = call double @sre_random()
  %121 = load i32, i32* %nxy, align 4
  %conv212 = sitofp i32 %121 to double
  %mul213 = fmul double %call211, %conv212
  %conv214 = fptosi double %mul213 to i32
  store i32 %conv214, i32* %pos, align 4
  %122 = load i32, i32* %pos, align 4
  %idxprom215 = sext i32 %122 to i64
  %123 = load i32*, i32** %xycol, align 8
  %arrayidx216 = getelementptr inbounds i32, i32* %123, i64 %idxprom215
  %124 = load i32, i32* %arrayidx216, align 4
  %idxprom217 = sext i32 %124 to i64
  %125 = load i8*, i8** %xs.addr, align 8
  %arrayidx218 = getelementptr inbounds i8, i8* %125, i64 %idxprom217
  %126 = load i8, i8* %arrayidx218, align 1
  store i8 %126, i8* %xsym, align 1
  %127 = load i32, i32* %pos, align 4
  %idxprom219 = sext i32 %127 to i64
  %128 = load i32*, i32** %xycol, align 8
  %arrayidx220 = getelementptr inbounds i32, i32* %128, i64 %idxprom219
  %129 = load i32, i32* %arrayidx220, align 4
  %idxprom221 = sext i32 %129 to i64
  %130 = load i8*, i8** %ys.addr, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %130, i64 %idxprom221
  %131 = load i8, i8* %arrayidx222, align 1
  store i8 %131, i8* %ysym, align 1
  %132 = load i32, i32* %pos, align 4
  %idxprom223 = sext i32 %132 to i64
  %133 = load i32*, i32** %xycol, align 8
  %arrayidx224 = getelementptr inbounds i32, i32* %133, i64 %idxprom223
  %134 = load i32, i32* %arrayidx224, align 4
  store i32 %134, i32* %c, align 4
  %135 = load i32, i32* %nxy, align 4
  %sub = sub nsw i32 %135, 1
  %idxprom225 = sext i32 %sub to i64
  %136 = load i32*, i32** %xycol, align 8
  %arrayidx226 = getelementptr inbounds i32, i32* %136, i64 %idxprom225
  %137 = load i32, i32* %arrayidx226, align 4
  %idxprom227 = sext i32 %137 to i64
  %138 = load i8*, i8** %xs.addr, align 8
  %arrayidx228 = getelementptr inbounds i8, i8* %138, i64 %idxprom227
  %139 = load i8, i8* %arrayidx228, align 1
  %140 = load i32, i32* %pos, align 4
  %idxprom229 = sext i32 %140 to i64
  %141 = load i32*, i32** %xycol, align 8
  %arrayidx230 = getelementptr inbounds i32, i32* %141, i64 %idxprom229
  %142 = load i32, i32* %arrayidx230, align 4
  %idxprom231 = sext i32 %142 to i64
  %143 = load i8*, i8** %xs.addr, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %143, i64 %idxprom231
  store i8 %139, i8* %arrayidx232, align 1
  %144 = load i32, i32* %nxy, align 4
  %sub233 = sub nsw i32 %144, 1
  %idxprom234 = sext i32 %sub233 to i64
  %145 = load i32*, i32** %xycol, align 8
  %arrayidx235 = getelementptr inbounds i32, i32* %145, i64 %idxprom234
  %146 = load i32, i32* %arrayidx235, align 4
  %idxprom236 = sext i32 %146 to i64
  %147 = load i8*, i8** %ys.addr, align 8
  %arrayidx237 = getelementptr inbounds i8, i8* %147, i64 %idxprom236
  %148 = load i8, i8* %arrayidx237, align 1
  %149 = load i32, i32* %pos, align 4
  %idxprom238 = sext i32 %149 to i64
  %150 = load i32*, i32** %xycol, align 8
  %arrayidx239 = getelementptr inbounds i32, i32* %150, i64 %idxprom238
  %151 = load i32, i32* %arrayidx239, align 4
  %idxprom240 = sext i32 %151 to i64
  %152 = load i8*, i8** %ys.addr, align 8
  %arrayidx241 = getelementptr inbounds i8, i8* %152, i64 %idxprom240
  store i8 %148, i8* %arrayidx241, align 1
  %153 = load i32, i32* %nxy, align 4
  %sub242 = sub nsw i32 %153, 1
  %idxprom243 = sext i32 %sub242 to i64
  %154 = load i32*, i32** %xycol, align 8
  %arrayidx244 = getelementptr inbounds i32, i32* %154, i64 %idxprom243
  %155 = load i32, i32* %arrayidx244, align 4
  %156 = load i32, i32* %pos, align 4
  %idxprom245 = sext i32 %156 to i64
  %157 = load i32*, i32** %xycol, align 8
  %arrayidx246 = getelementptr inbounds i32, i32* %157, i64 %idxprom245
  store i32 %155, i32* %arrayidx246, align 4
  %158 = load i8, i8* %xsym, align 1
  %159 = load i32, i32* %nxy, align 4
  %sub247 = sub nsw i32 %159, 1
  %idxprom248 = sext i32 %sub247 to i64
  %160 = load i32*, i32** %xycol, align 8
  %arrayidx249 = getelementptr inbounds i32, i32* %160, i64 %idxprom248
  %161 = load i32, i32* %arrayidx249, align 4
  %idxprom250 = sext i32 %161 to i64
  %162 = load i8*, i8** %xs.addr, align 8
  %arrayidx251 = getelementptr inbounds i8, i8* %162, i64 %idxprom250
  store i8 %158, i8* %arrayidx251, align 1
  %163 = load i8, i8* %ysym, align 1
  %164 = load i32, i32* %nxy, align 4
  %sub252 = sub nsw i32 %164, 1
  %idxprom253 = sext i32 %sub252 to i64
  %165 = load i32*, i32** %xycol, align 8
  %arrayidx254 = getelementptr inbounds i32, i32* %165, i64 %idxprom253
  %166 = load i32, i32* %arrayidx254, align 4
  %idxprom255 = sext i32 %166 to i64
  %167 = load i8*, i8** %ys.addr, align 8
  %arrayidx256 = getelementptr inbounds i8, i8* %167, i64 %idxprom255
  store i8 %163, i8* %arrayidx256, align 1
  %168 = load i32, i32* %nxy, align 4
  %sub257 = sub nsw i32 %168, 1
  %idxprom258 = sext i32 %sub257 to i64
  %169 = load i32*, i32** %xycol, align 8
  %arrayidx259 = getelementptr inbounds i32, i32* %169, i64 %idxprom258
  %170 = load i32, i32* %arrayidx259, align 4
  %171 = load i32, i32* %pos, align 4
  %idxprom260 = sext i32 %171 to i64
  %172 = load i32*, i32** %xycol, align 8
  %arrayidx261 = getelementptr inbounds i32, i32* %172, i64 %idxprom260
  store i32 %170, i32* %arrayidx261, align 4
  br label %for.inc.262

for.inc.262:                                      ; preds = %for.body.210
  %173 = load i32, i32* %nxy, align 4
  %dec = add nsw i32 %173, -1
  store i32 %dec, i32* %nxy, align 4
  br label %for.cond.207

for.end.263:                                      ; preds = %for.cond.207
  br label %for.cond.264

for.cond.264:                                     ; preds = %for.inc.318, %for.end.263
  %174 = load i32, i32* %nx, align 4
  %cmp265 = icmp sgt i32 %174, 1
  br i1 %cmp265, label %for.body.267, label %for.end.320

for.body.267:                                     ; preds = %for.cond.264
  %call268 = call double @sre_random()
  %175 = load i32, i32* %nx, align 4
  %conv269 = sitofp i32 %175 to double
  %mul270 = fmul double %call268, %conv269
  %conv271 = fptosi double %mul270 to i32
  store i32 %conv271, i32* %pos, align 4
  %176 = load i32, i32* %pos, align 4
  %idxprom272 = sext i32 %176 to i64
  %177 = load i32*, i32** %xcol, align 8
  %arrayidx273 = getelementptr inbounds i32, i32* %177, i64 %idxprom272
  %178 = load i32, i32* %arrayidx273, align 4
  %idxprom274 = sext i32 %178 to i64
  %179 = load i8*, i8** %xs.addr, align 8
  %arrayidx275 = getelementptr inbounds i8, i8* %179, i64 %idxprom274
  %180 = load i8, i8* %arrayidx275, align 1
  store i8 %180, i8* %xsym, align 1
  %181 = load i32, i32* %pos, align 4
  %idxprom276 = sext i32 %181 to i64
  %182 = load i32*, i32** %xcol, align 8
  %arrayidx277 = getelementptr inbounds i32, i32* %182, i64 %idxprom276
  %183 = load i32, i32* %arrayidx277, align 4
  %idxprom278 = sext i32 %183 to i64
  %184 = load i8*, i8** %ys.addr, align 8
  %arrayidx279 = getelementptr inbounds i8, i8* %184, i64 %idxprom278
  %185 = load i8, i8* %arrayidx279, align 1
  store i8 %185, i8* %ysym, align 1
  %186 = load i32, i32* %pos, align 4
  %idxprom280 = sext i32 %186 to i64
  %187 = load i32*, i32** %xcol, align 8
  %arrayidx281 = getelementptr inbounds i32, i32* %187, i64 %idxprom280
  %188 = load i32, i32* %arrayidx281, align 4
  store i32 %188, i32* %c, align 4
  %189 = load i32, i32* %nx, align 4
  %sub282 = sub nsw i32 %189, 1
  %idxprom283 = sext i32 %sub282 to i64
  %190 = load i32*, i32** %xcol, align 8
  %arrayidx284 = getelementptr inbounds i32, i32* %190, i64 %idxprom283
  %191 = load i32, i32* %arrayidx284, align 4
  %idxprom285 = sext i32 %191 to i64
  %192 = load i8*, i8** %xs.addr, align 8
  %arrayidx286 = getelementptr inbounds i8, i8* %192, i64 %idxprom285
  %193 = load i8, i8* %arrayidx286, align 1
  %194 = load i32, i32* %pos, align 4
  %idxprom287 = sext i32 %194 to i64
  %195 = load i32*, i32** %xcol, align 8
  %arrayidx288 = getelementptr inbounds i32, i32* %195, i64 %idxprom287
  %196 = load i32, i32* %arrayidx288, align 4
  %idxprom289 = sext i32 %196 to i64
  %197 = load i8*, i8** %xs.addr, align 8
  %arrayidx290 = getelementptr inbounds i8, i8* %197, i64 %idxprom289
  store i8 %193, i8* %arrayidx290, align 1
  %198 = load i32, i32* %nx, align 4
  %sub291 = sub nsw i32 %198, 1
  %idxprom292 = sext i32 %sub291 to i64
  %199 = load i32*, i32** %xcol, align 8
  %arrayidx293 = getelementptr inbounds i32, i32* %199, i64 %idxprom292
  %200 = load i32, i32* %arrayidx293, align 4
  %idxprom294 = sext i32 %200 to i64
  %201 = load i8*, i8** %ys.addr, align 8
  %arrayidx295 = getelementptr inbounds i8, i8* %201, i64 %idxprom294
  %202 = load i8, i8* %arrayidx295, align 1
  %203 = load i32, i32* %pos, align 4
  %idxprom296 = sext i32 %203 to i64
  %204 = load i32*, i32** %xcol, align 8
  %arrayidx297 = getelementptr inbounds i32, i32* %204, i64 %idxprom296
  %205 = load i32, i32* %arrayidx297, align 4
  %idxprom298 = sext i32 %205 to i64
  %206 = load i8*, i8** %ys.addr, align 8
  %arrayidx299 = getelementptr inbounds i8, i8* %206, i64 %idxprom298
  store i8 %202, i8* %arrayidx299, align 1
  %207 = load i32, i32* %nx, align 4
  %sub300 = sub nsw i32 %207, 1
  %idxprom301 = sext i32 %sub300 to i64
  %208 = load i32*, i32** %xcol, align 8
  %arrayidx302 = getelementptr inbounds i32, i32* %208, i64 %idxprom301
  %209 = load i32, i32* %arrayidx302, align 4
  %210 = load i32, i32* %pos, align 4
  %idxprom303 = sext i32 %210 to i64
  %211 = load i32*, i32** %xcol, align 8
  %arrayidx304 = getelementptr inbounds i32, i32* %211, i64 %idxprom303
  store i32 %209, i32* %arrayidx304, align 4
  %212 = load i8, i8* %xsym, align 1
  %213 = load i32, i32* %nx, align 4
  %sub305 = sub nsw i32 %213, 1
  %idxprom306 = sext i32 %sub305 to i64
  %214 = load i32*, i32** %xcol, align 8
  %arrayidx307 = getelementptr inbounds i32, i32* %214, i64 %idxprom306
  %215 = load i32, i32* %arrayidx307, align 4
  %idxprom308 = sext i32 %215 to i64
  %216 = load i8*, i8** %xs.addr, align 8
  %arrayidx309 = getelementptr inbounds i8, i8* %216, i64 %idxprom308
  store i8 %212, i8* %arrayidx309, align 1
  %217 = load i8, i8* %ysym, align 1
  %218 = load i32, i32* %nx, align 4
  %sub310 = sub nsw i32 %218, 1
  %idxprom311 = sext i32 %sub310 to i64
  %219 = load i32*, i32** %xcol, align 8
  %arrayidx312 = getelementptr inbounds i32, i32* %219, i64 %idxprom311
  %220 = load i32, i32* %arrayidx312, align 4
  %idxprom313 = sext i32 %220 to i64
  %221 = load i8*, i8** %ys.addr, align 8
  %arrayidx314 = getelementptr inbounds i8, i8* %221, i64 %idxprom313
  store i8 %217, i8* %arrayidx314, align 1
  %222 = load i32, i32* %c, align 4
  %223 = load i32, i32* %nx, align 4
  %sub315 = sub nsw i32 %223, 1
  %idxprom316 = sext i32 %sub315 to i64
  %224 = load i32*, i32** %xcol, align 8
  %arrayidx317 = getelementptr inbounds i32, i32* %224, i64 %idxprom316
  store i32 %222, i32* %arrayidx317, align 4
  br label %for.inc.318

for.inc.318:                                      ; preds = %for.body.267
  %225 = load i32, i32* %nx, align 4
  %dec319 = add nsw i32 %225, -1
  store i32 %dec319, i32* %nx, align 4
  br label %for.cond.264

for.end.320:                                      ; preds = %for.cond.264
  br label %for.cond.321

for.cond.321:                                     ; preds = %for.inc.375, %for.end.320
  %226 = load i32, i32* %ny, align 4
  %cmp322 = icmp sgt i32 %226, 1
  br i1 %cmp322, label %for.body.324, label %for.end.377

for.body.324:                                     ; preds = %for.cond.321
  %call325 = call double @sre_random()
  %227 = load i32, i32* %ny, align 4
  %conv326 = sitofp i32 %227 to double
  %mul327 = fmul double %call325, %conv326
  %conv328 = fptosi double %mul327 to i32
  store i32 %conv328, i32* %pos, align 4
  %228 = load i32, i32* %pos, align 4
  %idxprom329 = sext i32 %228 to i64
  %229 = load i32*, i32** %ycol, align 8
  %arrayidx330 = getelementptr inbounds i32, i32* %229, i64 %idxprom329
  %230 = load i32, i32* %arrayidx330, align 4
  %idxprom331 = sext i32 %230 to i64
  %231 = load i8*, i8** %xs.addr, align 8
  %arrayidx332 = getelementptr inbounds i8, i8* %231, i64 %idxprom331
  %232 = load i8, i8* %arrayidx332, align 1
  store i8 %232, i8* %xsym, align 1
  %233 = load i32, i32* %pos, align 4
  %idxprom333 = sext i32 %233 to i64
  %234 = load i32*, i32** %ycol, align 8
  %arrayidx334 = getelementptr inbounds i32, i32* %234, i64 %idxprom333
  %235 = load i32, i32* %arrayidx334, align 4
  %idxprom335 = sext i32 %235 to i64
  %236 = load i8*, i8** %ys.addr, align 8
  %arrayidx336 = getelementptr inbounds i8, i8* %236, i64 %idxprom335
  %237 = load i8, i8* %arrayidx336, align 1
  store i8 %237, i8* %ysym, align 1
  %238 = load i32, i32* %pos, align 4
  %idxprom337 = sext i32 %238 to i64
  %239 = load i32*, i32** %ycol, align 8
  %arrayidx338 = getelementptr inbounds i32, i32* %239, i64 %idxprom337
  %240 = load i32, i32* %arrayidx338, align 4
  store i32 %240, i32* %c, align 4
  %241 = load i32, i32* %ny, align 4
  %sub339 = sub nsw i32 %241, 1
  %idxprom340 = sext i32 %sub339 to i64
  %242 = load i32*, i32** %ycol, align 8
  %arrayidx341 = getelementptr inbounds i32, i32* %242, i64 %idxprom340
  %243 = load i32, i32* %arrayidx341, align 4
  %idxprom342 = sext i32 %243 to i64
  %244 = load i8*, i8** %xs.addr, align 8
  %arrayidx343 = getelementptr inbounds i8, i8* %244, i64 %idxprom342
  %245 = load i8, i8* %arrayidx343, align 1
  %246 = load i32, i32* %pos, align 4
  %idxprom344 = sext i32 %246 to i64
  %247 = load i32*, i32** %ycol, align 8
  %arrayidx345 = getelementptr inbounds i32, i32* %247, i64 %idxprom344
  %248 = load i32, i32* %arrayidx345, align 4
  %idxprom346 = sext i32 %248 to i64
  %249 = load i8*, i8** %xs.addr, align 8
  %arrayidx347 = getelementptr inbounds i8, i8* %249, i64 %idxprom346
  store i8 %245, i8* %arrayidx347, align 1
  %250 = load i32, i32* %ny, align 4
  %sub348 = sub nsw i32 %250, 1
  %idxprom349 = sext i32 %sub348 to i64
  %251 = load i32*, i32** %ycol, align 8
  %arrayidx350 = getelementptr inbounds i32, i32* %251, i64 %idxprom349
  %252 = load i32, i32* %arrayidx350, align 4
  %idxprom351 = sext i32 %252 to i64
  %253 = load i8*, i8** %ys.addr, align 8
  %arrayidx352 = getelementptr inbounds i8, i8* %253, i64 %idxprom351
  %254 = load i8, i8* %arrayidx352, align 1
  %255 = load i32, i32* %pos, align 4
  %idxprom353 = sext i32 %255 to i64
  %256 = load i32*, i32** %ycol, align 8
  %arrayidx354 = getelementptr inbounds i32, i32* %256, i64 %idxprom353
  %257 = load i32, i32* %arrayidx354, align 4
  %idxprom355 = sext i32 %257 to i64
  %258 = load i8*, i8** %ys.addr, align 8
  %arrayidx356 = getelementptr inbounds i8, i8* %258, i64 %idxprom355
  store i8 %254, i8* %arrayidx356, align 1
  %259 = load i32, i32* %ny, align 4
  %sub357 = sub nsw i32 %259, 1
  %idxprom358 = sext i32 %sub357 to i64
  %260 = load i32*, i32** %ycol, align 8
  %arrayidx359 = getelementptr inbounds i32, i32* %260, i64 %idxprom358
  %261 = load i32, i32* %arrayidx359, align 4
  %262 = load i32, i32* %pos, align 4
  %idxprom360 = sext i32 %262 to i64
  %263 = load i32*, i32** %ycol, align 8
  %arrayidx361 = getelementptr inbounds i32, i32* %263, i64 %idxprom360
  store i32 %261, i32* %arrayidx361, align 4
  %264 = load i8, i8* %xsym, align 1
  %265 = load i32, i32* %ny, align 4
  %sub362 = sub nsw i32 %265, 1
  %idxprom363 = sext i32 %sub362 to i64
  %266 = load i32*, i32** %ycol, align 8
  %arrayidx364 = getelementptr inbounds i32, i32* %266, i64 %idxprom363
  %267 = load i32, i32* %arrayidx364, align 4
  %idxprom365 = sext i32 %267 to i64
  %268 = load i8*, i8** %xs.addr, align 8
  %arrayidx366 = getelementptr inbounds i8, i8* %268, i64 %idxprom365
  store i8 %264, i8* %arrayidx366, align 1
  %269 = load i8, i8* %ysym, align 1
  %270 = load i32, i32* %ny, align 4
  %sub367 = sub nsw i32 %270, 1
  %idxprom368 = sext i32 %sub367 to i64
  %271 = load i32*, i32** %ycol, align 8
  %arrayidx369 = getelementptr inbounds i32, i32* %271, i64 %idxprom368
  %272 = load i32, i32* %arrayidx369, align 4
  %idxprom370 = sext i32 %272 to i64
  %273 = load i8*, i8** %ys.addr, align 8
  %arrayidx371 = getelementptr inbounds i8, i8* %273, i64 %idxprom370
  store i8 %269, i8* %arrayidx371, align 1
  %274 = load i32, i32* %c, align 4
  %275 = load i32, i32* %ny, align 4
  %sub372 = sub nsw i32 %275, 1
  %idxprom373 = sext i32 %sub372 to i64
  %276 = load i32*, i32** %ycol, align 8
  %arrayidx374 = getelementptr inbounds i32, i32* %276, i64 %idxprom373
  store i32 %274, i32* %arrayidx374, align 4
  br label %for.inc.375

for.inc.375:                                      ; preds = %for.body.324
  %277 = load i32, i32* %ny, align 4
  %dec376 = add nsw i32 %277, -1
  store i32 %dec376, i32* %ny, align 4
  br label %for.cond.321

for.end.377:                                      ; preds = %for.cond.321
  %278 = load i32*, i32** %xycol, align 8
  %279 = bitcast i32* %278 to i8*
  call void @free(i8* %279) #5
  %280 = load i32*, i32** %xcol, align 8
  %281 = bitcast i32* %280 to i8*
  call void @free(i8* %281) #5
  %282 = load i32*, i32** %ycol, align 8
  %283 = bitcast i32* %282 to i8*
  call void @free(i8* %283) #5
  ret i32 1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
