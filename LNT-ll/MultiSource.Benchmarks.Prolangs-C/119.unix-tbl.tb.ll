; ModuleID = './MultiSource.Benchmarks.Prolangs-C/119.unix-tbl.tb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colstr = type { i8*, i8* }

@ncol = external global i32, align 4
@rused = external global [0 x i32], align 4
@lused = external global [0 x i32], align 4
@used = external global [0 x i32], align 4
@nlin = external global i32, align 4
@instead = external global [0 x i8*], align 8
@fullbot = external global [0 x i32], align 4
@table = external global [0 x %struct.colstr*], align 8
@spcount = global i32 0, align 4
@spvecs = common global [20 x i8*] zeroinitializer, align 16
@.str = private unnamed_addr constant [29 x i8] c"Too many characters in table\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"no space for characters\00", align 1
@tpcount = global i32 -1, align 4
@thisvec = common global i8* null, align 8
@tpvecs = common global [50 x i8*] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"no space for vectors\00", align 1
@exstore = external global i8*, align 8

; Function Attrs: nounwind uwtable
define void @checkuse() #0 {
entry:
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.73, %entry
  %0 = load i32, i32* %c, align 4
  %1 = load i32, i32* @ncol, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.75

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %c, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @rused, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %3 = load i32, i32* %c, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [0 x i32], [0 x i32]* @lused, i32 0, i64 %idxprom1
  store i32 0, i32* %arrayidx2, align 4
  %4 = load i32, i32* %c, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [0 x i32], [0 x i32]* @used, i32 0, i64 %idxprom3
  store i32 0, i32* %arrayidx4, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* @nlin, align 4
  %cmp6 = icmp slt i32 %5, %6
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %7 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom8
  %8 = load i8*, i8** %arrayidx9, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.7
  %9 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom10
  %10 = load i32, i32* %arrayidx11, align 4
  %tobool12 = icmp ne i32 %10, 0
  br i1 %tobool12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body.7
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %c, align 4
  %call = call i32 @ctype(i32 %11, i32 %12)
  store i32 %call, i32* %k, align 4
  %13 = load i32, i32* %k, align 4
  %cmp13 = icmp eq i32 %13, 45
  br i1 %cmp13, label %if.then.16, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %if.end
  %14 = load i32, i32* %k, align 4
  %cmp15 = icmp eq i32 %14, 61
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false.14, %if.end
  br label %for.inc

if.end.17:                                        ; preds = %lor.lhs.false.14
  %15 = load i32, i32* %k, align 4
  %cmp18 = icmp eq i32 %15, 110
  br i1 %cmp18, label %if.then.21, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.end.17
  %16 = load i32, i32* %k, align 4
  %cmp20 = icmp eq i32 %16, 97
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %lor.lhs.false.19, %if.end.17
  %17 = load i32, i32* %c, align 4
  %idxprom22 = sext i32 %17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom23
  %19 = load %struct.colstr*, %struct.colstr** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds %struct.colstr, %struct.colstr* %19, i64 %idxprom22
  %rcol = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx25, i32 0, i32 1
  %20 = load i8*, i8** %rcol, align 8
  %call26 = call i32 @real(i8* %20)
  %21 = load i32, i32* %c, align 4
  %idxprom27 = sext i32 %21 to i64
  %arrayidx28 = getelementptr inbounds [0 x i32], [0 x i32]* @rused, i32 0, i64 %idxprom27
  %22 = load i32, i32* %arrayidx28, align 4
  %or = or i32 %22, %call26
  store i32 %or, i32* %arrayidx28, align 4
  %23 = load i32, i32* %c, align 4
  %idxprom29 = sext i32 %23 to i64
  %24 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom30
  %25 = load %struct.colstr*, %struct.colstr** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds %struct.colstr, %struct.colstr* %25, i64 %idxprom29
  %rcol33 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx32, i32 0, i32 1
  %26 = load i8*, i8** %rcol33, align 8
  %call34 = call i32 @real(i8* %26)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.45, label %if.then.36

if.then.36:                                       ; preds = %if.then.21
  %27 = load i32, i32* %c, align 4
  %idxprom37 = sext i32 %27 to i64
  %28 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %28 to i64
  %arrayidx39 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom38
  %29 = load %struct.colstr*, %struct.colstr** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds %struct.colstr, %struct.colstr* %29, i64 %idxprom37
  %col = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx40, i32 0, i32 0
  %30 = load i8*, i8** %col, align 8
  %call41 = call i32 @real(i8* %30)
  %31 = load i32, i32* %c, align 4
  %idxprom42 = sext i32 %31 to i64
  %arrayidx43 = getelementptr inbounds [0 x i32], [0 x i32]* @used, i32 0, i64 %idxprom42
  %32 = load i32, i32* %arrayidx43, align 4
  %or44 = or i32 %32, %call41
  store i32 %or44, i32* %arrayidx43, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.36, %if.then.21
  %33 = load i32, i32* %c, align 4
  %idxprom46 = sext i32 %33 to i64
  %34 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %34 to i64
  %arrayidx48 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom47
  %35 = load %struct.colstr*, %struct.colstr** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds %struct.colstr, %struct.colstr* %35, i64 %idxprom46
  %rcol50 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx49, i32 0, i32 1
  %36 = load i8*, i8** %rcol50, align 8
  %tobool51 = icmp ne i8* %36, null
  br i1 %tobool51, label %if.then.52, label %if.end.62

if.then.52:                                       ; preds = %if.end.45
  %37 = load i32, i32* %c, align 4
  %idxprom53 = sext i32 %37 to i64
  %38 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %38 to i64
  %arrayidx55 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom54
  %39 = load %struct.colstr*, %struct.colstr** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds %struct.colstr, %struct.colstr* %39, i64 %idxprom53
  %col57 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx56, i32 0, i32 0
  %40 = load i8*, i8** %col57, align 8
  %call58 = call i32 @real(i8* %40)
  %41 = load i32, i32* %c, align 4
  %idxprom59 = sext i32 %41 to i64
  %arrayidx60 = getelementptr inbounds [0 x i32], [0 x i32]* @lused, i32 0, i64 %idxprom59
  %42 = load i32, i32* %arrayidx60, align 4
  %or61 = or i32 %42, %call58
  store i32 %or61, i32* %arrayidx60, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.52, %if.end.45
  br label %if.end.72

if.else:                                          ; preds = %lor.lhs.false.19
  %43 = load i32, i32* %c, align 4
  %idxprom63 = sext i32 %43 to i64
  %44 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %44 to i64
  %arrayidx65 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom64
  %45 = load %struct.colstr*, %struct.colstr** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds %struct.colstr, %struct.colstr* %45, i64 %idxprom63
  %col67 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx66, i32 0, i32 0
  %46 = load i8*, i8** %col67, align 8
  %call68 = call i32 @real(i8* %46)
  %47 = load i32, i32* %c, align 4
  %idxprom69 = sext i32 %47 to i64
  %arrayidx70 = getelementptr inbounds [0 x i32], [0 x i32]* @used, i32 0, i64 %idxprom69
  %48 = load i32, i32* %arrayidx70, align 4
  %or71 = or i32 %48, %call68
  store i32 %or71, i32* %arrayidx70, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.else, %if.end.62
  br label %for.inc

for.inc:                                          ; preds = %if.end.72, %if.then.16, %if.then
  %49 = load i32, i32* %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.end
  %50 = load i32, i32* %c, align 4
  %inc74 = add nsw i32 %50, 1
  store i32 %inc74, i32* %c, align 4
  br label %for.cond

for.end.75:                                       ; preds = %for.cond
  ret void
}

declare i32 @ctype(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @real(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %2 = ptrtoint i8* %1 to i32
  %call = call i32 @point(i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.2
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.1, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i32 @point(i32) #1

; Function Attrs: nounwind uwtable
define i8* @chspace() #0 {
entry:
  %retval = alloca i8*, align 8
  %pp = alloca i8*, align 8
  %0 = load i32, i32* @spcount, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [20 x i8*], [20 x i8*]* @spvecs, i32 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @spcount, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @spcount, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [20 x i8*], [20 x i8*]* @spvecs, i32 0, i64 %idxprom1
  %3 = load i8*, i8** %arrayidx2, align 8
  store i8* %3, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* @spcount, align 4
  %cmp = icmp sge i32 %4, 20
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %call = call noalias i8* @calloc(i64 2200, i64 1) #3
  store i8* %call, i8** %pp, align 8
  %5 = load i32, i32* @spcount, align 4
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, i32* @spcount, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [20 x i8*], [20 x i8*]* @spvecs, i32 0, i64 %idxprom6
  store i8* %call, i8** %arrayidx7, align 8
  %6 = load i8*, i8** %pp, align 8
  %7 = ptrtoint i8* %6 to i32
  %cmp8 = icmp eq i32 %7, -1
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %8 = load i8*, i8** %pp, align 8
  %9 = ptrtoint i8* %8 to i32
  %cmp9 = icmp eq i32 %9, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.4
  call void @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %lor.lhs.false
  %10 = load i8*, i8** %pp, align 8
  store i8* %10, i8** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

declare void @error(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define i32* @alocv(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %tp = alloca i32*, align 8
  %q = alloca i32*, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* @tpcount, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** @thisvec, align 8
  %2 = load i32, i32* %n.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %3 = load i32, i32* @tpcount, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [50 x i8*], [50 x i8*]* @tpvecs, i32 0, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %4, i64 2000
  %cmp2 = icmp ugt i8* %add.ptr, %add.ptr1
  br i1 %cmp2, label %if.then, label %if.end.14

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load i32, i32* @tpcount, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @tpcount, align 4
  %6 = load i32, i32* @tpcount, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [50 x i8*], [50 x i8*]* @tpvecs, i32 0, i64 %idxprom3
  %7 = load i8*, i8** %arrayidx4, align 8
  %cmp5 = icmp eq i8* %7, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %call = call noalias i8* @calloc(i64 2000, i64 1) #3
  %8 = load i32, i32* @tpcount, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [50 x i8*], [50 x i8*]* @tpvecs, i32 0, i64 %idxprom7
  store i8* %call, i8** %arrayidx8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %9 = load i32, i32* @tpcount, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [50 x i8*], [50 x i8*]* @tpvecs, i32 0, i64 %idxprom9
  %10 = load i8*, i8** %arrayidx10, align 8
  store i8* %10, i8** @thisvec, align 8
  %11 = load i8*, i8** @thisvec, align 8
  %12 = ptrtoint i8* %11 to i32
  %cmp11 = icmp eq i32 %12, -1
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  call void @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %lor.lhs.false
  %13 = load i8*, i8** @thisvec, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %tp, align 8
  %15 = load i32, i32* %n.addr, align 4
  %16 = load i8*, i8** @thisvec, align 8
  %idx.ext15 = sext i32 %15 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %16, i64 %idx.ext15
  store i8* %add.ptr16, i8** @thisvec, align 8
  %17 = load i32*, i32** %tp, align 8
  store i32* %17, i32** %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %18 = load i32*, i32** %q, align 8
  %19 = load i8*, i8** @thisvec, align 8
  %20 = bitcast i8* %19 to i32*
  %cmp17 = icmp ult i32* %18, %20
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32*, i32** %q, align 8
  store i32 0, i32* %21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32*, i32** %q, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %incdec.ptr, i32** %q, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32*, i32** %tp, align 8
  ret i32* %23
}

; Function Attrs: nounwind uwtable
define void @release() #0 {
entry:
  store i32 0, i32* @spcount, align 4
  store i32 -1, i32* @tpcount, align 4
  store i8* null, i8** @exstore, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
