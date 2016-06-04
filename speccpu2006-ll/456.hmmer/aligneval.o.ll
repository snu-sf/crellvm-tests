; ModuleID = 'aligneval.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"aligneval.c\00", align 1

; Function Attrs: nounwind uwtable
define float @ComparePairAlignments(i8* %known1, i8* %known2, i8* %calc1, i8* %calc2) #0 {
entry:
  %retval = alloca float, align 4
  %known1.addr = alloca i8*, align 8
  %known2.addr = alloca i8*, align 8
  %calc1.addr = alloca i8*, align 8
  %calc2.addr = alloca i8*, align 8
  %klist1 = alloca i32*, align 8
  %klist2 = alloca i32*, align 8
  %tlist1 = alloca i32*, align 8
  %tlist2 = alloca i32*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %score = alloca float, align 4
  store i8* %known1, i8** %known1.addr, align 8
  store i8* %known2, i8** %known2.addr, align 8
  store i8* %calc1, i8** %calc1.addr, align 8
  store i8* %calc2, i8** %calc2.addr, align 8
  %0 = load i8*, i8** %calc1.addr, align 8
  %1 = load i8*, i8** %calc2.addr, align 8
  %call = call i32 @make_alilist(i8* %0, i8* %1, i32** %tlist1, i32* %len1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store float -1.000000e+00, float* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %calc2.addr, align 8
  %3 = load i8*, i8** %calc1.addr, align 8
  %call1 = call i32 @make_alilist(i8* %2, i8* %3, i32** %tlist2, i32* %len2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store float -1.000000e+00, float* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %known1.addr, align 8
  %5 = load i8*, i8** %known2.addr, align 8
  %call5 = call i32 @make_alilist(i8* %4, i8* %5, i32** %klist1, i32* %len1)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  store float -1.000000e+00, float* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %6 = load i8*, i8** %known2.addr, align 8
  %7 = load i8*, i8** %known1.addr, align 8
  %call9 = call i32 @make_alilist(i8* %6, i8* %7, i32** %klist2, i32* %len2)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  store float -1.000000e+00, float* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %8 = load i32*, i32** %klist1, align 8
  %9 = load i32*, i32** %klist2, align 8
  %10 = load i32*, i32** %tlist1, align 8
  %11 = load i32*, i32** %tlist2, align 8
  %12 = load i32, i32* %len1, align 4
  %13 = load i32, i32* %len2, align 4
  %call13 = call i32 @compare_lists(i32* %8, i32* %9, i32* %10, i32* %11, i32 %12, i32 %13, float* %score)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  store float -1.000000e+00, float* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %14 = load i32*, i32** %klist1, align 8
  %15 = bitcast i32* %14 to i8*
  call void @free(i8* %15) #5
  %16 = load i32*, i32** %klist2, align 8
  %17 = bitcast i32* %16 to i8*
  call void @free(i8* %17) #5
  %18 = load i32*, i32** %tlist1, align 8
  %19 = bitcast i32* %18 to i8*
  call void @free(i8* %19) #5
  %20 = load i32*, i32** %tlist2, align 8
  %21 = bitcast i32* %20 to i8*
  call void @free(i8* %21) #5
  %22 = load float, float* %score, align 4
  store float %22, float* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %23 = load float, float* %retval
  ret float %23
}

; Function Attrs: nounwind uwtable
define internal i32 @make_alilist(i8* %s1, i8* %s2, i32** %ret_s1_list, i32* %ret_listlen) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %ret_s1_list.addr = alloca i32**, align 8
  %ret_listlen.addr = alloca i32*, align 8
  %s1_list = alloca i32*, align 8
  %col = alloca i32, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32** %ret_s1_list, i32*** %ret_s1_list.addr, align 8
  store i32* %ret_listlen, i32** %ret_listlen.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %mul = mul i64 4, %call
  %call1 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 179, i64 %mul)
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** %s1_list, align 8
  store i32 0, i32* %r2, align 4
  store i32 0, i32* %r1, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %col, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %s1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %col, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load i8*, i8** %s1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 32
  br i1 %cmp6, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %8 = load i32, i32* %col, align 4
  %idxprom8 = sext i32 %8 to i64
  %9 = load i8*, i8** %s1.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %9, i64 %idxprom8
  %10 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %10 to i32
  %cmp11 = icmp eq i32 %conv10, 46
  br i1 %cmp11, label %if.end, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %11 = load i32, i32* %col, align 4
  %idxprom14 = sext i32 %11 to i64
  %12 = load i8*, i8** %s1.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %idxprom14
  %13 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %13 to i32
  %cmp17 = icmp eq i32 %conv16, 95
  br i1 %cmp17, label %if.end, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.13
  %14 = load i32, i32* %col, align 4
  %idxprom20 = sext i32 %14 to i64
  %15 = load i8*, i8** %s1.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %15, i64 %idxprom20
  %16 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %16 to i32
  %cmp23 = icmp eq i32 %conv22, 45
  br i1 %cmp23, label %if.end, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.19
  %17 = load i32, i32* %col, align 4
  %idxprom26 = sext i32 %17 to i64
  %18 = load i8*, i8** %s1.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %18, i64 %idxprom26
  %19 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %19 to i32
  %cmp29 = icmp eq i32 %conv28, 126
  br i1 %cmp29, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.25
  %20 = load i32, i32* %col, align 4
  %idxprom31 = sext i32 %20 to i64
  %21 = load i8*, i8** %s2.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %21, i64 %idxprom31
  %22 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %22 to i32
  %cmp34 = icmp eq i32 %conv33, 32
  br i1 %cmp34, label %cond.true, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.then
  %23 = load i32, i32* %col, align 4
  %idxprom37 = sext i32 %23 to i64
  %24 = load i8*, i8** %s2.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %24, i64 %idxprom37
  %25 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %25 to i32
  %cmp40 = icmp eq i32 %conv39, 46
  br i1 %cmp40, label %cond.true, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.36
  %26 = load i32, i32* %col, align 4
  %idxprom43 = sext i32 %26 to i64
  %27 = load i8*, i8** %s2.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %27, i64 %idxprom43
  %28 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %28 to i32
  %cmp46 = icmp eq i32 %conv45, 95
  br i1 %cmp46, label %cond.true, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.42
  %29 = load i32, i32* %col, align 4
  %idxprom49 = sext i32 %29 to i64
  %30 = load i8*, i8** %s2.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %30, i64 %idxprom49
  %31 = load i8, i8* %arrayidx50, align 1
  %conv51 = sext i8 %31 to i32
  %cmp52 = icmp eq i32 %conv51, 45
  br i1 %cmp52, label %cond.true, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.48
  %32 = load i32, i32* %col, align 4
  %idxprom55 = sext i32 %32 to i64
  %33 = load i8*, i8** %s2.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %33, i64 %idxprom55
  %34 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %34 to i32
  %cmp58 = icmp eq i32 %conv57, 126
  br i1 %cmp58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.54, %lor.lhs.false.48, %lor.lhs.false.42, %lor.lhs.false.36, %if.then
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.54
  %35 = load i32, i32* %r2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %35, %cond.false ]
  %36 = load i32, i32* %r1, align 4
  %idxprom60 = sext i32 %36 to i64
  %37 = load i32*, i32** %s1_list, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %37, i64 %idxprom60
  store i32 %cond, i32* %arrayidx61, align 4
  %38 = load i32, i32* %r1, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %r1, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %lor.lhs.false.25, %lor.lhs.false.19, %lor.lhs.false.13, %lor.lhs.false, %for.body
  %39 = load i32, i32* %col, align 4
  %idxprom62 = sext i32 %39 to i64
  %40 = load i8*, i8** %s2.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %40, i64 %idxprom62
  %41 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %41 to i32
  %cmp65 = icmp eq i32 %conv64, 32
  br i1 %cmp65, label %if.end.93, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %if.end
  %42 = load i32, i32* %col, align 4
  %idxprom68 = sext i32 %42 to i64
  %43 = load i8*, i8** %s2.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %43, i64 %idxprom68
  %44 = load i8, i8* %arrayidx69, align 1
  %conv70 = sext i8 %44 to i32
  %cmp71 = icmp eq i32 %conv70, 46
  br i1 %cmp71, label %if.end.93, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %lor.lhs.false.67
  %45 = load i32, i32* %col, align 4
  %idxprom74 = sext i32 %45 to i64
  %46 = load i8*, i8** %s2.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %46, i64 %idxprom74
  %47 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %47 to i32
  %cmp77 = icmp eq i32 %conv76, 95
  br i1 %cmp77, label %if.end.93, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %lor.lhs.false.73
  %48 = load i32, i32* %col, align 4
  %idxprom80 = sext i32 %48 to i64
  %49 = load i8*, i8** %s2.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %49, i64 %idxprom80
  %50 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %50 to i32
  %cmp83 = icmp eq i32 %conv82, 45
  br i1 %cmp83, label %if.end.93, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %lor.lhs.false.79
  %51 = load i32, i32* %col, align 4
  %idxprom86 = sext i32 %51 to i64
  %52 = load i8*, i8** %s2.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %52, i64 %idxprom86
  %53 = load i8, i8* %arrayidx87, align 1
  %conv88 = sext i8 %53 to i32
  %cmp89 = icmp eq i32 %conv88, 126
  br i1 %cmp89, label %if.end.93, label %if.then.91

if.then.91:                                       ; preds = %lor.lhs.false.85
  %54 = load i32, i32* %r2, align 4
  %inc92 = add nsw i32 %54, 1
  store i32 %inc92, i32* %r2, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %lor.lhs.false.85, %lor.lhs.false.79, %lor.lhs.false.73, %lor.lhs.false.67, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.93
  %55 = load i32, i32* %col, align 4
  %inc94 = add nsw i32 %55, 1
  store i32 %inc94, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load i32, i32* %r1, align 4
  %57 = load i32*, i32** %ret_listlen.addr, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32*, i32** %s1_list, align 8
  %59 = load i32**, i32*** %ret_s1_list.addr, align 8
  store i32* %58, i32** %59, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @compare_lists(i32* %k1, i32* %k2, i32* %t1, i32* %t2, i32 %len1, i32 %len2, float* %ret_sc) #0 {
entry:
  %k1.addr = alloca i32*, align 8
  %k2.addr = alloca i32*, align 8
  %t1.addr = alloca i32*, align 8
  %t2.addr = alloca i32*, align 8
  %len1.addr = alloca i32, align 4
  %len2.addr = alloca i32, align 4
  %ret_sc.addr = alloca float*, align 8
  %id = alloca float, align 4
  %tot = alloca float, align 4
  %i = alloca i32, align 4
  store i32* %k1, i32** %k1.addr, align 8
  store i32* %k2, i32** %k2.addr, align 8
  store i32* %t1, i32** %t1.addr, align 8
  store i32* %t2, i32** %t2.addr, align 8
  store i32 %len1, i32* %len1.addr, align 4
  store i32 %len2, i32* %len2.addr, align 4
  store float* %ret_sc, float** %ret_sc.addr, align 8
  store float 0.000000e+00, float* %tot, align 4
  store float 0.000000e+00, float* %id, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len1.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float, float* %tot, align 4
  %conv = fpext float %2 to double
  %add = fadd double %conv, 1.000000e+00
  %conv1 = fptrunc double %add to float
  store float %conv1, float* %tot, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %t1.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i32*, i32** %k1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp eq i32 %5, %8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load float, float* %id, align 4
  %conv6 = fpext float %9 to double
  %add7 = fadd double %conv6, 1.000000e+00
  %conv8 = fptrunc double %add7 to float
  store float %conv8, float* %id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.27, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %len2.addr, align 4
  %cmp10 = icmp slt i32 %11, %12
  br i1 %cmp10, label %for.body.12, label %for.end.29

for.body.12:                                      ; preds = %for.cond.9
  %13 = load float, float* %tot, align 4
  %conv13 = fpext float %13 to double
  %add14 = fadd double %conv13, 1.000000e+00
  %conv15 = fptrunc double %add14 to float
  store float %conv15, float* %tot, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %14 to i64
  %15 = load i32*, i32** %k2.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %15, i64 %idxprom16
  %16 = load i32, i32* %arrayidx17, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load i32*, i32** %t2.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %18, i64 %idxprom18
  %19 = load i32, i32* %arrayidx19, align 4
  %cmp20 = icmp eq i32 %16, %19
  br i1 %cmp20, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %for.body.12
  %20 = load float, float* %id, align 4
  %conv23 = fpext float %20 to double
  %add24 = fadd double %conv23, 1.000000e+00
  %conv25 = fptrunc double %add24 to float
  store float %conv25, float* %id, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %for.body.12
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %21 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %21, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.9

for.end.29:                                       ; preds = %for.cond.9
  %22 = load float, float* %id, align 4
  %23 = load float, float* %tot, align 4
  %div = fdiv float %22, %23
  %24 = load float*, float** %ret_sc.addr, align 8
  store float %div, float* %24, align 4
  ret i32 1
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define float @CompareRefPairAlignments(i32* %ref, i8* %known1, i8* %known2, i8* %calc1, i8* %calc2) #0 {
entry:
  %retval = alloca float, align 4
  %ref.addr = alloca i32*, align 8
  %known1.addr = alloca i8*, align 8
  %known2.addr = alloca i8*, align 8
  %calc1.addr = alloca i8*, align 8
  %calc2.addr = alloca i8*, align 8
  %klist1 = alloca i32*, align 8
  %klist2 = alloca i32*, align 8
  %tlist1 = alloca i32*, align 8
  %tlist2 = alloca i32*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %score = alloca float, align 4
  store i32* %ref, i32** %ref.addr, align 8
  store i8* %known1, i8** %known1.addr, align 8
  store i8* %known2, i8** %known2.addr, align 8
  store i8* %calc1, i8** %calc1.addr, align 8
  store i8* %calc2, i8** %calc2.addr, align 8
  %0 = load i32*, i32** %ref.addr, align 8
  %1 = load i8*, i8** %known1.addr, align 8
  %2 = load i8*, i8** %known2.addr, align 8
  %3 = load i8*, i8** %calc1.addr, align 8
  %4 = load i8*, i8** %calc2.addr, align 8
  %call = call i32 @make_ref_alilist(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32** %tlist1, i32* %len1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store float -1.000000e+00, float* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** %ref.addr, align 8
  %6 = load i8*, i8** %known2.addr, align 8
  %7 = load i8*, i8** %known1.addr, align 8
  %8 = load i8*, i8** %calc2.addr, align 8
  %9 = load i8*, i8** %calc1.addr, align 8
  %call1 = call i32 @make_ref_alilist(i32* %5, i8* %6, i8* %7, i8* %8, i8* %9, i32** %tlist2, i32* %len2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store float -1.000000e+00, float* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %10 = load i32*, i32** %ref.addr, align 8
  %11 = load i8*, i8** %known1.addr, align 8
  %12 = load i8*, i8** %known2.addr, align 8
  %13 = load i8*, i8** %known1.addr, align 8
  %14 = load i8*, i8** %known2.addr, align 8
  %call5 = call i32 @make_ref_alilist(i32* %10, i8* %11, i8* %12, i8* %13, i8* %14, i32** %klist1, i32* %len1)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  store float -1.000000e+00, float* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %15 = load i32*, i32** %ref.addr, align 8
  %16 = load i8*, i8** %known2.addr, align 8
  %17 = load i8*, i8** %known1.addr, align 8
  %18 = load i8*, i8** %known2.addr, align 8
  %19 = load i8*, i8** %known1.addr, align 8
  %call9 = call i32 @make_ref_alilist(i32* %15, i8* %16, i8* %17, i8* %18, i8* %19, i32** %klist2, i32* %len2)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  store float -1.000000e+00, float* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %20 = load i32*, i32** %klist1, align 8
  %21 = load i32*, i32** %klist2, align 8
  %22 = load i32*, i32** %tlist1, align 8
  %23 = load i32*, i32** %tlist2, align 8
  %24 = load i32, i32* %len1, align 4
  %25 = load i32, i32* %len2, align 4
  %call13 = call i32 @compare_lists(i32* %20, i32* %21, i32* %22, i32* %23, i32 %24, i32 %25, float* %score)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  store float -1.000000e+00, float* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %26 = load i32*, i32** %klist1, align 8
  %27 = bitcast i32* %26 to i8*
  call void @free(i8* %27) #5
  %28 = load i32*, i32** %klist2, align 8
  %29 = bitcast i32* %28 to i8*
  call void @free(i8* %29) #5
  %30 = load i32*, i32** %tlist1, align 8
  %31 = bitcast i32* %30 to i8*
  call void @free(i8* %31) #5
  %32 = load i32*, i32** %tlist2, align 8
  %33 = bitcast i32* %32 to i8*
  call void @free(i8* %33) #5
  %34 = load float, float* %score, align 4
  store float %34, float* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %35 = load float, float* %retval
  ret float %35
}

; Function Attrs: nounwind uwtable
define internal i32 @make_ref_alilist(i32* %ref, i8* %k1, i8* %k2, i8* %s1, i8* %s2, i32** %ret_s1_list, i32* %ret_listlen) #0 {
entry:
  %ref.addr = alloca i32*, align 8
  %k1.addr = alloca i8*, align 8
  %k2.addr = alloca i8*, align 8
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %ret_s1_list.addr = alloca i32**, align 8
  %ret_listlen.addr = alloca i32*, align 8
  %s1_list = alloca i32*, align 8
  %col = alloca i32, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %canons1 = alloca i32*, align 8
  %lpos = alloca i32, align 4
  store i32* %ref, i32** %ref.addr, align 8
  store i8* %k1, i8** %k1.addr, align 8
  store i8* %k2, i8** %k2.addr, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32** %ret_s1_list, i32*** %ret_s1_list.addr, align 8
  store i32* %ret_listlen, i32** %ret_listlen.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %mul = mul i64 4, %call
  %call1 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 236, i64 %mul)
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** %s1_list, align 8
  %2 = load i8*, i8** %s1.addr, align 8
  %call2 = call i64 @strlen(i8* %2) #6
  %mul3 = mul i64 4, %call2
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 237, i64 %mul3)
  %3 = bitcast i8* %call4 to i32*
  store i32* %3, i32** %canons1, align 8
  store i32 0, i32* %r1, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %col, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %k1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %col, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load i8*, i8** %k1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 %idxprom6
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %9 to i32
  %cmp9 = icmp eq i32 %conv8, 32
  br i1 %cmp9, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load i32, i32* %col, align 4
  %idxprom11 = sext i32 %10 to i64
  %11 = load i8*, i8** %k1.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %11, i64 %idxprom11
  %12 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %12 to i32
  %cmp14 = icmp eq i32 %conv13, 46
  br i1 %cmp14, label %if.end, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %13 = load i32, i32* %col, align 4
  %idxprom17 = sext i32 %13 to i64
  %14 = load i8*, i8** %k1.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %idxprom17
  %15 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %15 to i32
  %cmp20 = icmp eq i32 %conv19, 95
  br i1 %cmp20, label %if.end, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.16
  %16 = load i32, i32* %col, align 4
  %idxprom23 = sext i32 %16 to i64
  %17 = load i8*, i8** %k1.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %17, i64 %idxprom23
  %18 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %18 to i32
  %cmp26 = icmp eq i32 %conv25, 45
  br i1 %cmp26, label %if.end, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.22
  %19 = load i32, i32* %col, align 4
  %idxprom29 = sext i32 %19 to i64
  %20 = load i8*, i8** %k1.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %20, i64 %idxprom29
  %21 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %21 to i32
  %cmp32 = icmp eq i32 %conv31, 126
  br i1 %cmp32, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.28
  %22 = load i32, i32* %col, align 4
  %idxprom34 = sext i32 %22 to i64
  %23 = load i32*, i32** %ref.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %23, i64 %idxprom34
  %24 = load i32, i32* %arrayidx35, align 4
  %tobool = icmp ne i32 %24, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %25 = load i32, i32* %r1, align 4
  %idxprom36 = sext i32 %25 to i64
  %26 = load i32*, i32** %canons1, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %26, i64 %idxprom36
  store i32 %cond, i32* %arrayidx37, align 4
  %27 = load i32, i32* %r1, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %r1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.28, %lor.lhs.false.22, %lor.lhs.false.16, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %col, align 4
  %inc38 = add nsw i32 %28, 1
  store i32 %inc38, i32* %col, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %lpos, align 4
  store i32 0, i32* %r2, align 4
  store i32 0, i32* %r1, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.177, %for.end
  %29 = load i32, i32* %col, align 4
  %idxprom40 = sext i32 %29 to i64
  %30 = load i8*, i8** %s1.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %30, i64 %idxprom40
  %31 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %31 to i32
  %cmp43 = icmp ne i32 %conv42, 0
  br i1 %cmp43, label %for.body.45, label %for.end.179

for.body.45:                                      ; preds = %for.cond.39
  %32 = load i32, i32* %col, align 4
  %idxprom46 = sext i32 %32 to i64
  %33 = load i8*, i8** %s1.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %33, i64 %idxprom46
  %34 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %34 to i32
  %cmp49 = icmp eq i32 %conv48, 32
  br i1 %cmp49, label %if.end.112, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %for.body.45
  %35 = load i32, i32* %col, align 4
  %idxprom52 = sext i32 %35 to i64
  %36 = load i8*, i8** %s1.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %36, i64 %idxprom52
  %37 = load i8, i8* %arrayidx53, align 1
  %conv54 = sext i8 %37 to i32
  %cmp55 = icmp eq i32 %conv54, 46
  br i1 %cmp55, label %if.end.112, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false.51
  %38 = load i32, i32* %col, align 4
  %idxprom58 = sext i32 %38 to i64
  %39 = load i8*, i8** %s1.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %39, i64 %idxprom58
  %40 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %40 to i32
  %cmp61 = icmp eq i32 %conv60, 95
  br i1 %cmp61, label %if.end.112, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.57
  %41 = load i32, i32* %col, align 4
  %idxprom64 = sext i32 %41 to i64
  %42 = load i8*, i8** %s1.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %42, i64 %idxprom64
  %43 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %43 to i32
  %cmp67 = icmp eq i32 %conv66, 45
  br i1 %cmp67, label %if.end.112, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.63
  %44 = load i32, i32* %col, align 4
  %idxprom70 = sext i32 %44 to i64
  %45 = load i8*, i8** %s1.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %45, i64 %idxprom70
  %46 = load i8, i8* %arrayidx71, align 1
  %conv72 = sext i8 %46 to i32
  %cmp73 = icmp eq i32 %conv72, 126
  br i1 %cmp73, label %if.end.112, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.69
  %47 = load i32, i32* %r1, align 4
  %idxprom75 = sext i32 %47 to i64
  %48 = load i32*, i32** %canons1, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %48, i64 %idxprom75
  %49 = load i32, i32* %arrayidx76, align 4
  %tobool77 = icmp ne i32 %49, 0
  br i1 %tobool77, label %if.then.78, label %if.end.112

if.then.78:                                       ; preds = %land.lhs.true
  %50 = load i32, i32* %col, align 4
  %idxprom79 = sext i32 %50 to i64
  %51 = load i8*, i8** %s2.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %51, i64 %idxprom79
  %52 = load i8, i8* %arrayidx80, align 1
  %conv81 = sext i8 %52 to i32
  %cmp82 = icmp eq i32 %conv81, 32
  br i1 %cmp82, label %cond.true, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %if.then.78
  %53 = load i32, i32* %col, align 4
  %idxprom85 = sext i32 %53 to i64
  %54 = load i8*, i8** %s2.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %54, i64 %idxprom85
  %55 = load i8, i8* %arrayidx86, align 1
  %conv87 = sext i8 %55 to i32
  %cmp88 = icmp eq i32 %conv87, 46
  br i1 %cmp88, label %cond.true, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %lor.lhs.false.84
  %56 = load i32, i32* %col, align 4
  %idxprom91 = sext i32 %56 to i64
  %57 = load i8*, i8** %s2.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %57, i64 %idxprom91
  %58 = load i8, i8* %arrayidx92, align 1
  %conv93 = sext i8 %58 to i32
  %cmp94 = icmp eq i32 %conv93, 95
  br i1 %cmp94, label %cond.true, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %lor.lhs.false.90
  %59 = load i32, i32* %col, align 4
  %idxprom97 = sext i32 %59 to i64
  %60 = load i8*, i8** %s2.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %60, i64 %idxprom97
  %61 = load i8, i8* %arrayidx98, align 1
  %conv99 = sext i8 %61 to i32
  %cmp100 = icmp eq i32 %conv99, 45
  br i1 %cmp100, label %cond.true, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %lor.lhs.false.96
  %62 = load i32, i32* %col, align 4
  %idxprom103 = sext i32 %62 to i64
  %63 = load i8*, i8** %s2.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %63, i64 %idxprom103
  %64 = load i8, i8* %arrayidx104, align 1
  %conv105 = sext i8 %64 to i32
  %cmp106 = icmp eq i32 %conv105, 126
  br i1 %cmp106, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.102, %lor.lhs.false.96, %lor.lhs.false.90, %lor.lhs.false.84, %if.then.78
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.102
  %65 = load i32, i32* %r2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond108 = phi i32 [ -1, %cond.true ], [ %65, %cond.false ]
  %66 = load i32, i32* %lpos, align 4
  %idxprom109 = sext i32 %66 to i64
  %67 = load i32*, i32** %s1_list, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %67, i64 %idxprom109
  store i32 %cond108, i32* %arrayidx110, align 4
  %68 = load i32, i32* %lpos, align 4
  %inc111 = add nsw i32 %68, 1
  store i32 %inc111, i32* %lpos, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %cond.end, %land.lhs.true, %lor.lhs.false.69, %lor.lhs.false.63, %lor.lhs.false.57, %lor.lhs.false.51, %for.body.45
  %69 = load i32, i32* %col, align 4
  %idxprom113 = sext i32 %69 to i64
  %70 = load i8*, i8** %s1.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %70, i64 %idxprom113
  %71 = load i8, i8* %arrayidx114, align 1
  %conv115 = sext i8 %71 to i32
  %cmp116 = icmp eq i32 %conv115, 32
  br i1 %cmp116, label %if.end.144, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %if.end.112
  %72 = load i32, i32* %col, align 4
  %idxprom119 = sext i32 %72 to i64
  %73 = load i8*, i8** %s1.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %73, i64 %idxprom119
  %74 = load i8, i8* %arrayidx120, align 1
  %conv121 = sext i8 %74 to i32
  %cmp122 = icmp eq i32 %conv121, 46
  br i1 %cmp122, label %if.end.144, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %lor.lhs.false.118
  %75 = load i32, i32* %col, align 4
  %idxprom125 = sext i32 %75 to i64
  %76 = load i8*, i8** %s1.addr, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %76, i64 %idxprom125
  %77 = load i8, i8* %arrayidx126, align 1
  %conv127 = sext i8 %77 to i32
  %cmp128 = icmp eq i32 %conv127, 95
  br i1 %cmp128, label %if.end.144, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %lor.lhs.false.124
  %78 = load i32, i32* %col, align 4
  %idxprom131 = sext i32 %78 to i64
  %79 = load i8*, i8** %s1.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %79, i64 %idxprom131
  %80 = load i8, i8* %arrayidx132, align 1
  %conv133 = sext i8 %80 to i32
  %cmp134 = icmp eq i32 %conv133, 45
  br i1 %cmp134, label %if.end.144, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %lor.lhs.false.130
  %81 = load i32, i32* %col, align 4
  %idxprom137 = sext i32 %81 to i64
  %82 = load i8*, i8** %s1.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %82, i64 %idxprom137
  %83 = load i8, i8* %arrayidx138, align 1
  %conv139 = sext i8 %83 to i32
  %cmp140 = icmp eq i32 %conv139, 126
  br i1 %cmp140, label %if.end.144, label %if.then.142

if.then.142:                                      ; preds = %lor.lhs.false.136
  %84 = load i32, i32* %r1, align 4
  %inc143 = add nsw i32 %84, 1
  store i32 %inc143, i32* %r1, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.142, %lor.lhs.false.136, %lor.lhs.false.130, %lor.lhs.false.124, %lor.lhs.false.118, %if.end.112
  %85 = load i32, i32* %col, align 4
  %idxprom145 = sext i32 %85 to i64
  %86 = load i8*, i8** %s2.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %86, i64 %idxprom145
  %87 = load i8, i8* %arrayidx146, align 1
  %conv147 = sext i8 %87 to i32
  %cmp148 = icmp eq i32 %conv147, 32
  br i1 %cmp148, label %if.end.176, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %if.end.144
  %88 = load i32, i32* %col, align 4
  %idxprom151 = sext i32 %88 to i64
  %89 = load i8*, i8** %s2.addr, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %89, i64 %idxprom151
  %90 = load i8, i8* %arrayidx152, align 1
  %conv153 = sext i8 %90 to i32
  %cmp154 = icmp eq i32 %conv153, 46
  br i1 %cmp154, label %if.end.176, label %lor.lhs.false.156

lor.lhs.false.156:                                ; preds = %lor.lhs.false.150
  %91 = load i32, i32* %col, align 4
  %idxprom157 = sext i32 %91 to i64
  %92 = load i8*, i8** %s2.addr, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %92, i64 %idxprom157
  %93 = load i8, i8* %arrayidx158, align 1
  %conv159 = sext i8 %93 to i32
  %cmp160 = icmp eq i32 %conv159, 95
  br i1 %cmp160, label %if.end.176, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %lor.lhs.false.156
  %94 = load i32, i32* %col, align 4
  %idxprom163 = sext i32 %94 to i64
  %95 = load i8*, i8** %s2.addr, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %95, i64 %idxprom163
  %96 = load i8, i8* %arrayidx164, align 1
  %conv165 = sext i8 %96 to i32
  %cmp166 = icmp eq i32 %conv165, 45
  br i1 %cmp166, label %if.end.176, label %lor.lhs.false.168

lor.lhs.false.168:                                ; preds = %lor.lhs.false.162
  %97 = load i32, i32* %col, align 4
  %idxprom169 = sext i32 %97 to i64
  %98 = load i8*, i8** %s2.addr, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %98, i64 %idxprom169
  %99 = load i8, i8* %arrayidx170, align 1
  %conv171 = sext i8 %99 to i32
  %cmp172 = icmp eq i32 %conv171, 126
  br i1 %cmp172, label %if.end.176, label %if.then.174

if.then.174:                                      ; preds = %lor.lhs.false.168
  %100 = load i32, i32* %r2, align 4
  %inc175 = add nsw i32 %100, 1
  store i32 %inc175, i32* %r2, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.174, %lor.lhs.false.168, %lor.lhs.false.162, %lor.lhs.false.156, %lor.lhs.false.150, %if.end.144
  br label %for.inc.177

for.inc.177:                                      ; preds = %if.end.176
  %101 = load i32, i32* %col, align 4
  %inc178 = add nsw i32 %101, 1
  store i32 %inc178, i32* %col, align 4
  br label %for.cond.39

for.end.179:                                      ; preds = %for.cond.39
  %102 = load i32*, i32** %canons1, align 8
  %103 = bitcast i32* %102 to i8*
  call void @free(i8* %103) #5
  %104 = load i32, i32* %lpos, align 4
  %105 = load i32*, i32** %ret_listlen.addr, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32*, i32** %s1_list, align 8
  %107 = load i32**, i32*** %ret_s1_list.addr, align 8
  store i32* %106, i32** %107, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define float @CompareMultAlignments(i8** %kseqs, i8** %tseqs, i32 %N) #0 {
entry:
  %retval = alloca float, align 4
  %kseqs.addr = alloca i8**, align 8
  %tseqs.addr = alloca i8**, align 8
  %N.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %score = alloca float, align 4
  %tot_score = alloca float, align 4
  store i8** %kseqs, i8*** %kseqs.addr, align 8
  store i8** %tseqs, i8*** %tseqs.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store float 0.000000e+00, float* %tot_score, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %N.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %N.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8**, i8*** %kseqs.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load i8**, i8*** %kseqs.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %9, i64 %idxprom4
  %10 = load i8*, i8** %arrayidx5, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load i8**, i8*** %tseqs.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %12, i64 %idxprom6
  %13 = load i8*, i8** %arrayidx7, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load i8**, i8*** %tseqs.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %15, i64 %idxprom8
  %16 = load i8*, i8** %arrayidx9, align 8
  %call = call float @ComparePairAlignments(i8* %7, i8* %10, i8* %13, i8* %16)
  store float %call, float* %score, align 4
  %17 = load float, float* %score, align 4
  %conv = fpext float %17 to double
  %cmp10 = fcmp olt double %conv, 0.000000e+00
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  store float -1.000000e+00, float* %retval
  br label %return

if.end:                                           ; preds = %for.body.3
  %18 = load float, float* %score, align 4
  %19 = load float, float* %tot_score, align 4
  %add12 = fadd float %19, %18
  store float %add12, float* %tot_score, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %21 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %21, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  %22 = load float, float* %tot_score, align 4
  %conv16 = fpext float %22 to double
  %mul = fmul double %conv16, 2.000000e+00
  %23 = load i32, i32* %N.addr, align 4
  %conv17 = sitofp i32 %23 to float
  %conv18 = fpext float %conv17 to double
  %24 = load i32, i32* %N.addr, align 4
  %conv19 = sitofp i32 %24 to float
  %conv20 = fpext float %conv19 to double
  %sub = fsub double %conv20, 1.000000e+00
  %mul21 = fmul double %conv18, %sub
  %div = fdiv double %mul, %mul21
  %conv22 = fptrunc double %div to float
  store float %conv22, float* %retval
  br label %return

return:                                           ; preds = %for.end.15, %if.then
  %25 = load float, float* %retval
  ret float %25
}

; Function Attrs: nounwind uwtable
define float @CompareRefMultAlignments(i32* %ref, i8** %kseqs, i8** %tseqs, i32 %N) #0 {
entry:
  %retval = alloca float, align 4
  %ref.addr = alloca i32*, align 8
  %kseqs.addr = alloca i8**, align 8
  %tseqs.addr = alloca i8**, align 8
  %N.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %score = alloca float, align 4
  %tot_score = alloca float, align 4
  store i32* %ref, i32** %ref.addr, align 8
  store i8** %kseqs, i8*** %kseqs.addr, align 8
  store i8** %tseqs, i8*** %tseqs.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store float 0.000000e+00, float* %tot_score, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %N.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %N.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32*, i32** %ref.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8**, i8*** %kseqs.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %9 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load i8**, i8*** %kseqs.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %10, i64 %idxprom4
  %11 = load i8*, i8** %arrayidx5, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load i8**, i8*** %tseqs.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %13, i64 %idxprom6
  %14 = load i8*, i8** %arrayidx7, align 8
  %15 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load i8**, i8*** %tseqs.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %16, i64 %idxprom8
  %17 = load i8*, i8** %arrayidx9, align 8
  %call = call float @CompareRefPairAlignments(i32* %5, i8* %8, i8* %11, i8* %14, i8* %17)
  store float %call, float* %score, align 4
  %18 = load float, float* %score, align 4
  %conv = fpext float %18 to double
  %cmp10 = fcmp olt double %conv, 0.000000e+00
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  store float -1.000000e+00, float* %retval
  br label %return

if.end:                                           ; preds = %for.body.3
  %19 = load float, float* %score, align 4
  %20 = load float, float* %tot_score, align 4
  %add12 = fadd float %20, %19
  store float %add12, float* %tot_score, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %22, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  %23 = load float, float* %tot_score, align 4
  %conv16 = fpext float %23 to double
  %mul = fmul double %conv16, 2.000000e+00
  %24 = load i32, i32* %N.addr, align 4
  %conv17 = sitofp i32 %24 to float
  %conv18 = fpext float %conv17 to double
  %25 = load i32, i32* %N.addr, align 4
  %conv19 = sitofp i32 %25 to float
  %conv20 = fpext float %conv19 to double
  %sub = fsub double %conv20, 1.000000e+00
  %mul21 = fmul double %conv18, %sub
  %div = fdiv double %mul, %mul21
  %conv22 = fptrunc double %div to float
  store float %conv22, float* %retval
  br label %return

return:                                           ; preds = %for.end.15, %if.then
  %26 = load float, float* %retval
  ret float %26
}

; Function Attrs: nounwind uwtable
define float @PairwiseIdentity(i8* %s1, i8* %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %idents = alloca i32, align 4
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %x = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 0, i32* %len2, align 4
  store i32 0, i32* %len1, align 4
  store i32 0, i32* %idents, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %s1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %x, align 4
  %idxprom2 = sext i32 %3 to i64
  %4 = load i8*, i8** %s2.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 %idxprom2
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load i32, i32* %x, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load i8*, i8** %s1.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 %idxprom7
  %9 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %9 to i32
  %cmp10 = icmp eq i32 %conv9, 32
  br i1 %cmp10, label %if.end.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load i32, i32* %x, align 4
  %idxprom12 = sext i32 %10 to i64
  %11 = load i8*, i8** %s1.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %11, i64 %idxprom12
  %12 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %12 to i32
  %cmp15 = icmp eq i32 %conv14, 46
  br i1 %cmp15, label %if.end.45, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false
  %13 = load i32, i32* %x, align 4
  %idxprom18 = sext i32 %13 to i64
  %14 = load i8*, i8** %s1.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %14, i64 %idxprom18
  %15 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %15 to i32
  %cmp21 = icmp eq i32 %conv20, 95
  br i1 %cmp21, label %if.end.45, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.17
  %16 = load i32, i32* %x, align 4
  %idxprom24 = sext i32 %16 to i64
  %17 = load i8*, i8** %s1.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %17, i64 %idxprom24
  %18 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %18 to i32
  %cmp27 = icmp eq i32 %conv26, 45
  br i1 %cmp27, label %if.end.45, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.23
  %19 = load i32, i32* %x, align 4
  %idxprom30 = sext i32 %19 to i64
  %20 = load i8*, i8** %s1.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %20, i64 %idxprom30
  %21 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %21 to i32
  %cmp33 = icmp eq i32 %conv32, 126
  br i1 %cmp33, label %if.end.45, label %if.then

if.then:                                          ; preds = %lor.lhs.false.29
  %22 = load i32, i32* %len1, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %len1, align 4
  %23 = load i32, i32* %x, align 4
  %idxprom35 = sext i32 %23 to i64
  %24 = load i8*, i8** %s1.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %24, i64 %idxprom35
  %25 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %25 to i32
  %26 = load i32, i32* %x, align 4
  %idxprom38 = sext i32 %26 to i64
  %27 = load i8*, i8** %s2.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %27, i64 %idxprom38
  %28 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %28 to i32
  %cmp41 = icmp eq i32 %conv37, %conv40
  br i1 %cmp41, label %if.then.43, label %if.end

if.then.43:                                       ; preds = %if.then
  %29 = load i32, i32* %idents, align 4
  %inc44 = add nsw i32 %29, 1
  store i32 %inc44, i32* %idents, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.43, %if.then
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %lor.lhs.false.29, %lor.lhs.false.23, %lor.lhs.false.17, %lor.lhs.false, %for.body
  %30 = load i32, i32* %x, align 4
  %idxprom46 = sext i32 %30 to i64
  %31 = load i8*, i8** %s2.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %31, i64 %idxprom46
  %32 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %32 to i32
  %cmp49 = icmp eq i32 %conv48, 32
  br i1 %cmp49, label %if.end.77, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %if.end.45
  %33 = load i32, i32* %x, align 4
  %idxprom52 = sext i32 %33 to i64
  %34 = load i8*, i8** %s2.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %34, i64 %idxprom52
  %35 = load i8, i8* %arrayidx53, align 1
  %conv54 = sext i8 %35 to i32
  %cmp55 = icmp eq i32 %conv54, 46
  br i1 %cmp55, label %if.end.77, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false.51
  %36 = load i32, i32* %x, align 4
  %idxprom58 = sext i32 %36 to i64
  %37 = load i8*, i8** %s2.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %37, i64 %idxprom58
  %38 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %38 to i32
  %cmp61 = icmp eq i32 %conv60, 95
  br i1 %cmp61, label %if.end.77, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.57
  %39 = load i32, i32* %x, align 4
  %idxprom64 = sext i32 %39 to i64
  %40 = load i8*, i8** %s2.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %40, i64 %idxprom64
  %41 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %41 to i32
  %cmp67 = icmp eq i32 %conv66, 45
  br i1 %cmp67, label %if.end.77, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.63
  %42 = load i32, i32* %x, align 4
  %idxprom70 = sext i32 %42 to i64
  %43 = load i8*, i8** %s2.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %43, i64 %idxprom70
  %44 = load i8, i8* %arrayidx71, align 1
  %conv72 = sext i8 %44 to i32
  %cmp73 = icmp eq i32 %conv72, 126
  br i1 %cmp73, label %if.end.77, label %if.then.75

if.then.75:                                       ; preds = %lor.lhs.false.69
  %45 = load i32, i32* %len2, align 4
  %inc76 = add nsw i32 %45, 1
  store i32 %inc76, i32* %len2, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %lor.lhs.false.69, %lor.lhs.false.63, %lor.lhs.false.57, %lor.lhs.false.51, %if.end.45
  br label %for.inc

for.inc:                                          ; preds = %if.end.77
  %46 = load i32, i32* %x, align 4
  %inc78 = add nsw i32 %46, 1
  store i32 %inc78, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %47 = load i32, i32* %len2, align 4
  %48 = load i32, i32* %len1, align 4
  %cmp79 = icmp slt i32 %47, %48
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %for.end
  %49 = load i32, i32* %len2, align 4
  store i32 %49, i32* %len1, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %for.end
  %50 = load i32, i32* %len1, align 4
  %cmp83 = icmp eq i32 %50, 0
  br i1 %cmp83, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.82
  br label %cond.end

cond.false:                                       ; preds = %if.end.82
  %51 = load i32, i32* %idents, align 4
  %conv85 = sitofp i32 %51 to float
  %52 = load i32, i32* %len1, align 4
  %conv86 = sitofp i32 %52 to float
  %div = fdiv float %conv85, %conv86
  %conv87 = fpext float %div to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %conv87, %cond.false ]
  %conv88 = fptrunc double %cond to float
  ret float %conv88
}

; Function Attrs: nounwind uwtable
define float @AlignmentIdentityBySampling(i8** %aseq, i32 %L, i32 %N, i32 %nsample) #0 {
entry:
  %retval = alloca float, align 4
  %aseq.addr = alloca i8**, align 8
  %L.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %nsample.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca float, align 4
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32 %L, i32* %L.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %nsample, i32* %nsample.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 1.000000e+00, float* %retval
  br label %return

if.end:                                           ; preds = %entry
  store float 0.000000e+00, float* %sum, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %x, align 4
  %2 = load i32, i32* %nsample.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call double @sre_random()
  %3 = load i32, i32* %N.addr, align 4
  %conv = sitofp i32 %3 to double
  %mul = fmul double %call, %conv
  %conv2 = fptosi double %mul to i32
  store i32 %conv2, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %call3 = call double @sre_random()
  %4 = load i32, i32* %N.addr, align 4
  %conv4 = sitofp i32 %4 to double
  %mul5 = fmul double %call3, %conv4
  %conv6 = fptosi double %mul5 to i32
  store i32 %conv6, i32* %j, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %i, align 4
  %cmp7 = icmp eq i32 %5, %6
  br i1 %cmp7, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %11, i64 %idxprom9
  %12 = load i8*, i8** %arrayidx10, align 8
  %call11 = call float @PairwiseIdentity(i8* %9, i8* %12)
  %13 = load float, float* %sum, align 4
  %add = fadd float %13, %call11
  store float %add, float* %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %14 = load i32, i32* %x, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load float, float* %sum, align 4
  %16 = load i32, i32* %nsample.addr, align 4
  %conv12 = sitofp i32 %16 to float
  %div = fdiv float %15, %conv12
  store float %div, float* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %17 = load float, float* %retval
  ret float %17
}

declare double @sre_random() #2

; Function Attrs: nounwind uwtable
define i8* @MajorityRuleConsensus(i8** %aseq, i32 %nseq, i32 %alen) #0 {
entry:
  %aseq.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %alen.addr = alloca i32, align 4
  %cs = alloca i8*, align 8
  %count = alloca [27 x i32], align 16
  %idx = alloca i32, align 4
  %apos = alloca i32, align 4
  %spos = alloca i32, align 4
  %x = alloca i32, align 4
  %sym = alloca i32, align 4
  %max = alloca i32, align 4
  %bestx = alloca i32, align 4
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 %alen, i32* %alen.addr, align 4
  %0 = load i32, i32* %alen.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 1, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 485, i64 %mul)
  store i8* %call, i8** %cs, align 8
  store i32 0, i32* %spos, align 4
  store i32 0, i32* %apos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.61, %entry
  %1 = load i32, i32* %apos, align 4
  %2 = load i32, i32* %alen.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.63

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %x, align 4
  %cmp3 = icmp slt i32 %3, 27
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %4 = load i32, i32* %x, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [27 x i32], [27 x i32]* %count, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %5 = load i32, i32* %x, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  store i32 0, i32* %idx, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.30, %for.end
  %6 = load i32, i32* %idx, align 4
  %7 = load i32, i32* %nseq.addr, align 4
  %cmp7 = icmp slt i32 %6, %7
  br i1 %cmp7, label %for.body.9, label %for.end.32

for.body.9:                                       ; preds = %for.cond.6
  %8 = load i32, i32* %apos, align 4
  %idxprom10 = sext i32 %8 to i64
  %9 = load i32, i32* %idx, align 4
  %idxprom11 = sext i32 %9 to i64
  %10 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %10, i64 %idxprom11
  %11 = load i8*, i8** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %11, i64 %idxprom10
  %12 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %12 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %call16 = call i16** @__ctype_b_loc() #7
  %13 = load i16*, i16** %call16, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %13, i64 %idxprom15
  %14 = load i16, i16* %arrayidx17, align 2
  %conv18 = zext i16 %14 to i32
  %and = and i32 %conv18, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.9
  %15 = load i32, i32* %apos, align 4
  %idxprom19 = sext i32 %15 to i64
  %16 = load i32, i32* %idx, align 4
  %idxprom20 = sext i32 %16 to i64
  %17 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %17, i64 %idxprom20
  %18 = load i8*, i8** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %18, i64 %idxprom19
  %19 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %19 to i32
  %call24 = call i32 @toupper(i32 %conv23) #5
  store i32 %call24, i32* %sym, align 4
  %20 = load i32, i32* %sym, align 4
  %sub = sub nsw i32 %20, 65
  %idxprom25 = sext i32 %sub to i64
  %arrayidx26 = getelementptr inbounds [27 x i32], [27 x i32]* %count, i32 0, i64 %idxprom25
  %21 = load i32, i32* %arrayidx26, align 4
  %inc27 = add nsw i32 %21, 1
  store i32 %inc27, i32* %arrayidx26, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.9
  %arrayidx28 = getelementptr inbounds [27 x i32], [27 x i32]* %count, i32 0, i64 26
  %22 = load i32, i32* %arrayidx28, align 4
  %inc29 = add nsw i32 %22, 1
  store i32 %inc29, i32* %arrayidx28, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end
  %23 = load i32, i32* %idx, align 4
  %inc31 = add nsw i32 %23, 1
  store i32 %inc31, i32* %idx, align 4
  br label %for.cond.6

for.end.32:                                       ; preds = %for.cond.6
  %arrayidx33 = getelementptr inbounds [27 x i32], [27 x i32]* %count, i32 0, i64 26
  %24 = load i32, i32* %arrayidx33, align 4
  %conv34 = sitofp i32 %24 to float
  %25 = load i32, i32* %nseq.addr, align 4
  %conv35 = sitofp i32 %25 to float
  %div = fdiv float %conv34, %conv35
  %conv36 = fpext float %div to double
  %cmp37 = fcmp ole double %conv36, 5.000000e-01
  br i1 %cmp37, label %if.then.39, label %if.end.60

if.then.39:                                       ; preds = %for.end.32
  store i32 -1, i32* %bestx, align 4
  store i32 -1, i32* %max, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.52, %if.then.39
  %26 = load i32, i32* %x, align 4
  %cmp41 = icmp slt i32 %26, 26
  br i1 %cmp41, label %for.body.43, label %for.end.54

for.body.43:                                      ; preds = %for.cond.40
  %27 = load i32, i32* %x, align 4
  %idxprom44 = sext i32 %27 to i64
  %arrayidx45 = getelementptr inbounds [27 x i32], [27 x i32]* %count, i32 0, i64 %idxprom44
  %28 = load i32, i32* %arrayidx45, align 4
  %29 = load i32, i32* %max, align 4
  %cmp46 = icmp sgt i32 %28, %29
  br i1 %cmp46, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %for.body.43
  %30 = load i32, i32* %x, align 4
  %idxprom49 = sext i32 %30 to i64
  %arrayidx50 = getelementptr inbounds [27 x i32], [27 x i32]* %count, i32 0, i64 %idxprom49
  %31 = load i32, i32* %arrayidx50, align 4
  store i32 %31, i32* %max, align 4
  %32 = load i32, i32* %x, align 4
  store i32 %32, i32* %bestx, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %for.body.43
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %33 = load i32, i32* %x, align 4
  %inc53 = add nsw i32 %33, 1
  store i32 %inc53, i32* %x, align 4
  br label %for.cond.40

for.end.54:                                       ; preds = %for.cond.40
  %34 = load i32, i32* %bestx, align 4
  %add55 = add nsw i32 65, %34
  %conv56 = trunc i32 %add55 to i8
  %35 = load i32, i32* %spos, align 4
  %inc57 = add nsw i32 %35, 1
  store i32 %inc57, i32* %spos, align 4
  %idxprom58 = sext i32 %35 to i64
  %36 = load i8*, i8** %cs, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %36, i64 %idxprom58
  store i8 %conv56, i8* %arrayidx59, align 1
  br label %if.end.60

if.end.60:                                        ; preds = %for.end.54, %for.end.32
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %37 = load i32, i32* %apos, align 4
  %inc62 = add nsw i32 %37, 1
  store i32 %inc62, i32* %apos, align 4
  br label %for.cond

for.end.63:                                       ; preds = %for.cond
  %38 = load i32, i32* %spos, align 4
  %idxprom64 = sext i32 %38 to i64
  %39 = load i8*, i8** %cs, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %39, i64 %idxprom64
  store i8 0, i8* %arrayidx65, align 1
  %40 = load i8*, i8** %cs, align 8
  ret i8* %40
}

declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind
declare i32 @toupper(i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
