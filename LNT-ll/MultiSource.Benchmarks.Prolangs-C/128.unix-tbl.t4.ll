; ModuleID = './MultiSource.Benchmarks.Prolangs-C/128.unix-tbl.t4.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@sep = external global [0 x i32], align 4
@evenup = external global [0 x i32], align 4
@cll = external global [20 x [10 x i8]], align 16
@csize = external global [100 x [20 x [4 x i8]]], align 16
@vsize = external global [100 x [20 x [4 x i8]]], align 16
@lefline = external global [100 x [20 x i32]], align 16
@font = external global [100 x [20 x [2 x i8]]], align 16
@ctop = external global [100 x [20 x i32]], align 16
@style = external global [100 x [20 x i32]], align 16
@ncol = external global i32, align 4
@nclin = external global i32, align 4
@oncol = common global i32 0, align 4
@rightl = external global i32, align 4
@left1flg = external global i32, align 4
@tabout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c".rm\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@tab = external global i32, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"bad table specification character\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"too many lines in specification\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"no specification\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"dot not last character on format line\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"tried to widen table in T&, not allowed\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"first column can not be S-type\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c".tm warning: can't span a-type cols, changed to l\0A\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c".tm warning: can't span n-type cols, changed to c\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"first row can not contain vertical span\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"too many columns in table\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Nonterminated font name\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"point size too large\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"point size unreasonable\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"vertical spacing value too large\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"column width too long\00", align 1
@evenflg = external global i32, align 4
@.str.18 = private unnamed_addr constant [32 x i8] c"EOF reading table specification\00", align 1

; Function Attrs: nounwind uwtable
define void @getspec() #0 {
entry:
  %icol = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %icol, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %entry
  %0 = load i32, i32* %icol, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %icol, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  %2 = load i32, i32* %icol, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [0 x i32], [0 x i32]* @evenup, i32 0, i64 %idxprom1
  store i32 0, i32* %arrayidx2, align 4
  %3 = load i32, i32* %icol, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i32 0, i64 %idxprom3
  %arrayidx5 = getelementptr inbounds [10 x i8], [10 x i8]* %arrayidx4, i32 0, i64 0
  store i8 0, i8* %arrayidx5, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %4, 100
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %5 = load i32, i32* %icol, align 4
  %idxprom9 = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %6 to i64
  %arrayidx11 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i32 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %arrayidx11, i32 0, i64 %idxprom9
  %arrayidx13 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx12, i32 0, i64 0
  store i8 0, i8* %arrayidx13, align 1
  %7 = load i32, i32* %icol, align 4
  %idxprom14 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %8 to i64
  %arrayidx16 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @vsize, i32 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %arrayidx16, i32 0, i64 %idxprom14
  %arrayidx18 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx17, i32 0, i64 0
  store i8 0, i8* %arrayidx18, align 1
  %9 = load i32, i32* %icol, align 4
  %idxprom19 = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %10 to i64
  %arrayidx21 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @lefline, i32 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx21, i32 0, i64 %idxprom19
  store i32 0, i32* %arrayidx22, align 4
  %11 = load i32, i32* %icol, align 4
  %idxprom23 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %12 to i64
  %arrayidx25 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i32 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %arrayidx25, i32 0, i64 %idxprom23
  %arrayidx27 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx26, i32 0, i64 0
  store i8 0, i8* %arrayidx27, align 1
  %13 = load i32, i32* %icol, align 4
  %idxprom28 = sext i32 %13 to i64
  %14 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %14 to i64
  %arrayidx30 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @ctop, i32 0, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx30, i32 0, i64 %idxprom28
  store i32 0, i32* %arrayidx31, align 4
  %15 = load i32, i32* %icol, align 4
  %idxprom32 = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %16 to i64
  %arrayidx34 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i32 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx34, i32 0, i64 %idxprom32
  store i32 108, i32* %arrayidx35, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end
  %18 = load i32, i32* %icol, align 4
  %inc37 = add nsw i32 %18, 1
  store i32 %inc37, i32* %icol, align 4
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  store i32 0, i32* @ncol, align 4
  store i32 0, i32* @nclin, align 4
  store i32 0, i32* @oncol, align 4
  store i32 0, i32* @rightl, align 4
  store i32 0, i32* @left1flg, align 4
  call void @readspec()
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.43, %for.end.38
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* @ncol, align 4
  %cmp40 = icmp slt i32 %20, %21
  br i1 %cmp40, label %for.body.41, label %for.end.45

for.body.41:                                      ; preds = %for.cond.39
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %23 = load i32, i32* %i, align 4
  %add = add nsw i32 80, %23
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %add)
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.41
  %24 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %24, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.39

for.end.45:                                       ; preds = %for.cond.39
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @readspec() #0 {
entry:
  %icol = alloca i32, align 4
  %c = alloca i32, align 4
  %sawchar = alloca i32, align 4
  %stopc = alloca i32, align 4
  %i = alloca i32, align 4
  %sn = alloca [10 x i8], align 1
  %snp = alloca i8*, align 8
  %temp = alloca i8*, align 8
  store i32 0, i32* %icol, align 4
  store i32 0, i32* %sawchar, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.416, %while.end.397, %if.end.381, %if.then.380, %if.end.376, %while.end.324, %if.then.273, %if.end.269, %if.then.217, %if.end.213, %if.then.147, %if.end.143, %if.end.133, %if.end.114, %if.then.113, %if.end.108, %if.end.52, %if.then.3, %sw.bb, %entry
  %call = call i32 @get1char()
  store i32 %call, i32* %c, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end.417

while.body:                                       ; preds = %while.cond
  %0 = load i32, i32* %c, align 4
  switch i32 %0, label %sw.default [
    i32 32, label %sw.bb
    i32 10, label %sw.bb.1
    i32 44, label %sw.bb.5
    i32 46, label %sw.bb.5
    i32 67, label %sw.bb.53
    i32 83, label %sw.bb.53
    i32 82, label %sw.bb.53
    i32 78, label %sw.bb.53
    i32 76, label %sw.bb.53
    i32 65, label %sw.bb.53
    i32 95, label %sw.bb.55
    i32 61, label %sw.bb.59
    i32 45, label %sw.bb.59
    i32 94, label %sw.bb.59
    i32 99, label %sw.bb.59
    i32 115, label %sw.bb.59
    i32 110, label %sw.bb.59
    i32 114, label %sw.bb.59
    i32 108, label %sw.bb.59
    i32 97, label %sw.bb.59
    i32 98, label %sw.bb.109
    i32 105, label %sw.bb.109
    i32 66, label %sw.bb.111
    i32 73, label %sw.bb.111
    i32 116, label %sw.bb.124
    i32 84, label %sw.bb.124
    i32 100, label %sw.bb.134
    i32 68, label %sw.bb.134
    i32 102, label %sw.bb.144
    i32 70, label %sw.bb.144
    i32 80, label %sw.bb.214
    i32 112, label %sw.bb.214
    i32 86, label %sw.bb.270
    i32 118, label %sw.bb.270
    i32 119, label %sw.bb.325
    i32 87, label %sw.bb.325
    i32 101, label %sw.bb.377
    i32 69, label %sw.bb.377
    i32 48, label %sw.bb.385
    i32 49, label %sw.bb.385
    i32 50, label %sw.bb.385
    i32 51, label %sw.bb.385
    i32 52, label %sw.bb.385
    i32 53, label %sw.bb.385
    i32 54, label %sw.bb.385
    i32 55, label %sw.bb.385
    i32 56, label %sw.bb.385
    i32 57, label %sw.bb.385
    i32 124, label %sw.bb.407
  ]

sw.default:                                       ; preds = %while.body
  %1 = load i32, i32* %c, align 4
  %2 = load i32, i32* @tab, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  call void @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default
  br label %sw.bb

sw.bb:                                            ; preds = %while.body, %if.end
  br label %while.cond

sw.bb.1:                                          ; preds = %while.body
  %3 = load i32, i32* %sawchar, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %sw.bb.1
  br label %while.cond

if.end.4:                                         ; preds = %sw.bb.1
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %while.body, %while.body, %if.end.4
  %4 = load i32, i32* @ncol, align 4
  %5 = load i32, i32* %icol, align 4
  %call6 = call i32 @max(i32 %4, i32 %5)
  store i32 %call6, i32* @ncol, align 4
  %6 = load i32, i32* @ncol, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* @nclin, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @lefline, i32 0, i64 %idxprom7
  %arrayidx8 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp sgt i32 %8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %sw.bb.5
  %9 = load i32, i32* @ncol, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @ncol, align 4
  %10 = load i32, i32* @rightl, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, i32* @rightl, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %sw.bb.5
  %11 = load i32, i32* %sawchar, align 4
  %tobool13 = icmp ne i32 %11, 0
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %12 = load i32, i32* @nclin, align 4
  %inc15 = add nsw i32 %12, 1
  store i32 %inc15, i32* @nclin, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  %13 = load i32, i32* @nclin, align 4
  %cmp17 = icmp sge i32 %13, 100
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  call void @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.16
  store i32 0, i32* %icol, align 4
  %14 = load i32, i32* @ncol, align 4
  %cmp20 = icmp eq i32 %14, 0
  br i1 %cmp20, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %15 = load i32, i32* @nclin, align 4
  %cmp21 = icmp eq i32 %15, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false, %if.end.19
  call void @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %lor.lhs.false
  %16 = load i32, i32* %c, align 4
  %cmp24 = icmp eq i32 %16, 46
  br i1 %cmp24, label %if.then.25, label %if.end.52

if.then.25:                                       ; preds = %if.end.23
  br label %while.cond.26

while.cond.26:                                    ; preds = %if.end.34, %if.then.25
  %call27 = call i32 @get1char()
  store i32 %call27, i32* %c, align 4
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.26
  %17 = load i32, i32* %c, align 4
  %cmp29 = icmp ne i32 %17, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.26
  %18 = phi i1 [ false, %while.cond.26 ], [ %cmp29, %land.rhs ]
  br i1 %18, label %while.body.30, label %while.end

while.body.30:                                    ; preds = %land.end
  %19 = load i32, i32* %c, align 4
  %cmp31 = icmp ne i32 %19, 32
  br i1 %cmp31, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %while.body.30
  %20 = load i32, i32* %c, align 4
  %cmp32 = icmp ne i32 %20, 9
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true
  call void @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %land.lhs.true, %while.body.30
  br label %while.cond.26

while.end:                                        ; preds = %land.end
  store i32 0, i32* %icol, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %21 = load i32, i32* %icol, align 4
  %22 = load i32, i32* @ncol, align 4
  %cmp35 = icmp slt i32 %21, %22
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %icol, align 4
  %idxprom36 = sext i32 %23 to i64
  %arrayidx37 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i32 0, i64 %idxprom36
  %24 = load i32, i32* %arrayidx37, align 4
  %cmp38 = icmp slt i32 %24, 0
  br i1 %cmp38, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %for.body
  %25 = load i32, i32* %icol, align 4
  %add = add nsw i32 %25, 1
  %26 = load i32, i32* @ncol, align 4
  %cmp40 = icmp slt i32 %add, %26
  %cond = select i1 %cmp40, i32 3, i32 1
  %27 = load i32, i32* %icol, align 4
  %idxprom41 = sext i32 %27 to i64
  %arrayidx42 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i32 0, i64 %idxprom41
  store i32 %cond, i32* %arrayidx42, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %28 = load i32, i32* %icol, align 4
  %inc44 = add nsw i32 %28, 1
  store i32 %inc44, i32* %icol, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* @oncol, align 4
  %cmp45 = icmp eq i32 %29, 0
  br i1 %cmp45, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %for.end
  %30 = load i32, i32* @ncol, align 4
  store i32 %30, i32* @oncol, align 4
  br label %if.end.51

if.else:                                          ; preds = %for.end
  %31 = load i32, i32* @oncol, align 4
  %add47 = add nsw i32 %31, 2
  %32 = load i32, i32* @ncol, align 4
  %cmp48 = icmp slt i32 %add47, %32
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.else
  call void @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.else
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.46
  br label %return

if.end.52:                                        ; preds = %if.end.23
  store i32 0, i32* %sawchar, align 4
  br label %while.cond

sw.bb.53:                                         ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %33 = load i32, i32* %c, align 4
  %add54 = add nsw i32 %33, 32
  store i32 %add54, i32* %c, align 4
  br label %sw.bb.55

sw.bb.55:                                         ; preds = %while.body, %sw.bb.53
  %34 = load i32, i32* %c, align 4
  %cmp56 = icmp eq i32 %34, 95
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %sw.bb.55
  store i32 45, i32* %c, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %sw.bb.55
  br label %sw.bb.59

sw.bb.59:                                         ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %if.end.58
  %35 = load i32, i32* %c, align 4
  %36 = load i32, i32* %icol, align 4
  %idxprom60 = sext i32 %36 to i64
  %37 = load i32, i32* @nclin, align 4
  %idxprom61 = sext i32 %37 to i64
  %arrayidx62 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i32 0, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx62, i32 0, i64 %idxprom60
  store i32 %35, i32* %arrayidx63, align 4
  %38 = load i32, i32* %c, align 4
  %cmp64 = icmp eq i32 %38, 115
  br i1 %cmp64, label %land.lhs.true.65, label %if.end.68

land.lhs.true.65:                                 ; preds = %sw.bb.59
  %39 = load i32, i32* %icol, align 4
  %cmp66 = icmp sle i32 %39, 0
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %land.lhs.true.65
  call void @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %land.lhs.true.65, %sw.bb.59
  %40 = load i32, i32* %c, align 4
  %cmp69 = icmp eq i32 %40, 115
  br i1 %cmp69, label %land.lhs.true.70, label %if.end.83

land.lhs.true.70:                                 ; preds = %if.end.68
  %41 = load i32, i32* %icol, align 4
  %sub = sub nsw i32 %41, 1
  %idxprom71 = sext i32 %sub to i64
  %42 = load i32, i32* @nclin, align 4
  %idxprom72 = sext i32 %42 to i64
  %arrayidx73 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i32 0, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx73, i32 0, i64 %idxprom71
  %43 = load i32, i32* %arrayidx74, align 4
  %cmp75 = icmp eq i32 %43, 97
  br i1 %cmp75, label %if.then.76, label %if.end.83

if.then.76:                                       ; preds = %land.lhs.true.70
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i32 0, i32 0))
  %45 = load i32, i32* %icol, align 4
  %sub78 = sub nsw i32 %45, 1
  %idxprom79 = sext i32 %sub78 to i64
  %46 = load i32, i32* @nclin, align 4
  %idxprom80 = sext i32 %46 to i64
  %arrayidx81 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i32 0, i64 %idxprom80
  %arrayidx82 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx81, i32 0, i64 %idxprom79
  store i32 108, i32* %arrayidx82, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.76, %land.lhs.true.70, %if.end.68
  %47 = load i32, i32* %c, align 4
  %cmp84 = icmp eq i32 %47, 115
  br i1 %cmp84, label %land.lhs.true.85, label %if.end.99

land.lhs.true.85:                                 ; preds = %if.end.83
  %48 = load i32, i32* %icol, align 4
  %sub86 = sub nsw i32 %48, 1
  %idxprom87 = sext i32 %sub86 to i64
  %49 = load i32, i32* @nclin, align 4
  %idxprom88 = sext i32 %49 to i64
  %arrayidx89 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i32 0, i64 %idxprom88
  %arrayidx90 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx89, i32 0, i64 %idxprom87
  %50 = load i32, i32* %arrayidx90, align 4
  %cmp91 = icmp eq i32 %50, 110
  br i1 %cmp91, label %if.then.92, label %if.end.99

if.then.92:                                       ; preds = %land.lhs.true.85
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i32 0, i32 0))
  %52 = load i32, i32* %icol, align 4
  %sub94 = sub nsw i32 %52, 1
  %idxprom95 = sext i32 %sub94 to i64
  %53 = load i32, i32* @nclin, align 4
  %idxprom96 = sext i32 %53 to i64
  %arrayidx97 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i32 0, i64 %idxprom96
  %arrayidx98 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx97, i32 0, i64 %idxprom95
  store i32 99, i32* %arrayidx98, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.92, %land.lhs.true.85, %if.end.83
  %54 = load i32, i32* %icol, align 4
  %inc100 = add nsw i32 %54, 1
  store i32 %inc100, i32* %icol, align 4
  %55 = load i32, i32* %c, align 4
  %cmp101 = icmp eq i32 %55, 94
  br i1 %cmp101, label %land.lhs.true.102, label %if.end.105

land.lhs.true.102:                                ; preds = %if.end.99
  %56 = load i32, i32* @nclin, align 4
  %cmp103 = icmp sle i32 %56, 0
  br i1 %cmp103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %land.lhs.true.102
  call void @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %land.lhs.true.102, %if.end.99
  %57 = load i32, i32* %icol, align 4
  %cmp106 = icmp sge i32 %57, 20
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.105
  call void @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %if.end.105
  store i32 1, i32* %sawchar, align 4
  br label %while.cond

sw.bb.109:                                        ; preds = %while.body, %while.body
  %58 = load i32, i32* %c, align 4
  %add110 = add nsw i32 %58, -32
  store i32 %add110, i32* %c, align 4
  br label %sw.bb.111

sw.bb.111:                                        ; preds = %while.body, %while.body, %sw.bb.109
  %59 = load i32, i32* %icol, align 4
  %cmp112 = icmp eq i32 %59, 0
  br i1 %cmp112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %sw.bb.111
  br label %while.cond

if.end.114:                                       ; preds = %sw.bb.111
  %60 = load i32, i32* %icol, align 4
  %sub115 = sub nsw i32 %60, 1
  %idxprom116 = sext i32 %sub115 to i64
  %61 = load i32, i32* @nclin, align 4
  %idxprom117 = sext i32 %61 to i64
  %arrayidx118 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i32 0, i64 %idxprom117
  %arrayidx119 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %arrayidx118, i32 0, i64 %idxprom116
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx119, i32 0, i32 0
  store i8* %arraydecay, i8** %snp, align 8
  %62 = load i32, i32* %c, align 4
  %cmp120 = icmp eq i32 %62, 73
  %cond121 = select i1 %cmp120, i32 50, i32 51
  %conv = trunc i32 %cond121 to i8
  %63 = load i8*, i8** %snp, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 %conv, i8* %arrayidx122, align 1
  %64 = load i8*, i8** %snp, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %64, i64 1
  store i8 0, i8* %arrayidx123, align 1
  br label %while.cond

sw.bb.124:                                        ; preds = %while.body, %while.body
  %65 = load i32, i32* %icol, align 4
  %cmp125 = icmp sgt i32 %65, 0
  br i1 %cmp125, label %if.then.127, label %if.end.133

if.then.127:                                      ; preds = %sw.bb.124
  %66 = load i32, i32* %icol, align 4
  %sub128 = sub nsw i32 %66, 1
  %idxprom129 = sext i32 %sub128 to i64
  %67 = load i32, i32* @nclin, align 4
  %idxprom130 = sext i32 %67 to i64
  %arrayidx131 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @ctop, i32 0, i64 %idxprom130
  %arrayidx132 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx131, i32 0, i64 %idxprom129
  store i32 1, i32* %arrayidx132, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.127, %sw.bb.124
  br label %while.cond

sw.bb.134:                                        ; preds = %while.body, %while.body
  %68 = load i32, i32* %icol, align 4
  %cmp135 = icmp sgt i32 %68, 0
  br i1 %cmp135, label %if.then.137, label %if.end.143

if.then.137:                                      ; preds = %sw.bb.134
  %69 = load i32, i32* %icol, align 4
  %sub138 = sub nsw i32 %69, 1
  %idxprom139 = sext i32 %sub138 to i64
  %70 = load i32, i32* @nclin, align 4
  %idxprom140 = sext i32 %70 to i64
  %arrayidx141 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @ctop, i32 0, i64 %idxprom140
  %arrayidx142 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx141, i32 0, i64 %idxprom139
  store i32 -1, i32* %arrayidx142, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.137, %sw.bb.134
  br label %while.cond

sw.bb.144:                                        ; preds = %while.body, %while.body
  %71 = load i32, i32* %icol, align 4
  %cmp145 = icmp eq i32 %71, 0
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %sw.bb.144
  br label %while.cond

if.end.148:                                       ; preds = %sw.bb.144
  %72 = load i32, i32* %icol, align 4
  %sub149 = sub nsw i32 %72, 1
  %idxprom150 = sext i32 %sub149 to i64
  %73 = load i32, i32* @nclin, align 4
  %idxprom151 = sext i32 %73 to i64
  %arrayidx152 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i32 0, i64 %idxprom151
  %arrayidx153 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %arrayidx152, i32 0, i64 %idxprom150
  %arraydecay154 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx153, i32 0, i32 0
  store i8* %arraydecay154, i8** %snp, align 8
  store i32 0, i32* %stopc, align 4
  %74 = load i8*, i8** %snp, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %74, i64 1
  store i8 0, i8* %arrayidx155, align 1
  %75 = load i8*, i8** %snp, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %75, i64 0
  store i8 0, i8* %arrayidx156, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.203, %if.end.148
  %76 = load i32, i32* %i, align 4
  %cmp158 = icmp slt i32 %76, 2
  br i1 %cmp158, label %for.body.160, label %for.end.205

for.body.160:                                     ; preds = %for.cond.157
  %call161 = call i32 @get1char()
  store i32 %call161, i32* %c, align 4
  %77 = load i32, i32* %i, align 4
  %cmp162 = icmp eq i32 %77, 0
  br i1 %cmp162, label %land.lhs.true.164, label %if.end.169

land.lhs.true.164:                                ; preds = %for.body.160
  %78 = load i32, i32* %c, align 4
  %cmp165 = icmp eq i32 %78, 40
  br i1 %cmp165, label %if.then.167, label %if.end.169

if.then.167:                                      ; preds = %land.lhs.true.164
  store i32 41, i32* %stopc, align 4
  %call168 = call i32 @get1char()
  store i32 %call168, i32* %c, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.167, %land.lhs.true.164, %for.body.160
  %79 = load i32, i32* %c, align 4
  %cmp170 = icmp eq i32 %79, 0
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.end.169
  br label %for.end.205

if.end.173:                                       ; preds = %if.end.169
  %80 = load i32, i32* %c, align 4
  %81 = load i32, i32* %stopc, align 4
  %cmp174 = icmp eq i32 %80, %81
  br i1 %cmp174, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %if.end.173
  store i32 0, i32* %stopc, align 4
  br label %for.end.205

if.end.177:                                       ; preds = %if.end.173
  %82 = load i32, i32* %stopc, align 4
  %cmp178 = icmp eq i32 %82, 0
  br i1 %cmp178, label %if.then.180, label %if.end.188

if.then.180:                                      ; preds = %if.end.177
  %83 = load i32, i32* %c, align 4
  %cmp181 = icmp eq i32 %83, 32
  br i1 %cmp181, label %if.then.186, label %lor.lhs.false.183

lor.lhs.false.183:                                ; preds = %if.then.180
  %84 = load i32, i32* %c, align 4
  %85 = load i32, i32* @tab, align 4
  %cmp184 = icmp eq i32 %84, %85
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %lor.lhs.false.183, %if.then.180
  br label %for.end.205

if.end.187:                                       ; preds = %lor.lhs.false.183
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.end.177
  %86 = load i32, i32* %c, align 4
  %cmp189 = icmp eq i32 %86, 10
  br i1 %cmp189, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %if.end.188
  %87 = load i32, i32* %c, align 4
  call void @un1getc(i32 %87)
  br label %for.end.205

if.end.192:                                       ; preds = %if.end.188
  %88 = load i32, i32* %c, align 4
  %conv193 = trunc i32 %88 to i8
  %89 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %89 to i64
  %90 = load i8*, i8** %snp, align 8
  %arrayidx195 = getelementptr inbounds i8, i8* %90, i64 %idxprom194
  store i8 %conv193, i8* %arrayidx195, align 1
  %91 = load i32, i32* %c, align 4
  %cmp196 = icmp sge i32 %91, 48
  br i1 %cmp196, label %land.lhs.true.198, label %if.end.202

land.lhs.true.198:                                ; preds = %if.end.192
  %92 = load i32, i32* %c, align 4
  %cmp199 = icmp sle i32 %92, 57
  br i1 %cmp199, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %land.lhs.true.198
  br label %for.end.205

if.end.202:                                       ; preds = %land.lhs.true.198, %if.end.192
  br label %for.inc.203

for.inc.203:                                      ; preds = %if.end.202
  %93 = load i32, i32* %i, align 4
  %inc204 = add nsw i32 %93, 1
  store i32 %inc204, i32* %i, align 4
  br label %for.cond.157

for.end.205:                                      ; preds = %if.then.201, %if.then.191, %if.then.186, %if.then.176, %if.then.172, %for.cond.157
  %94 = load i32, i32* %stopc, align 4
  %tobool206 = icmp ne i32 %94, 0
  br i1 %tobool206, label %if.then.207, label %if.end.213

if.then.207:                                      ; preds = %for.end.205
  %call208 = call i32 @get1char()
  %95 = load i32, i32* %stopc, align 4
  %cmp209 = icmp ne i32 %call208, %95
  br i1 %cmp209, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %if.then.207
  call void @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.211, %if.then.207
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %for.end.205
  br label %while.cond

sw.bb.214:                                        ; preds = %while.body, %while.body
  %96 = load i32, i32* %icol, align 4
  %cmp215 = icmp sle i32 %96, 0
  br i1 %cmp215, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %sw.bb.214
  br label %while.cond

if.end.218:                                       ; preds = %sw.bb.214
  %97 = load i32, i32* %icol, align 4
  %sub219 = sub nsw i32 %97, 1
  %idxprom220 = sext i32 %sub219 to i64
  %98 = load i32, i32* @nclin, align 4
  %idxprom221 = sext i32 %98 to i64
  %arrayidx222 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i32 0, i64 %idxprom221
  %arrayidx223 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %arrayidx222, i32 0, i64 %idxprom220
  %arraydecay224 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx223, i32 0, i32 0
  store i8* %arraydecay224, i8** %snp, align 8
  store i8* %arraydecay224, i8** %temp, align 8
  br label %while.cond.225

while.cond.225:                                   ; preds = %if.end.263, %if.end.218
  %call226 = call i32 @get1char()
  store i32 %call226, i32* %c, align 4
  %tobool227 = icmp ne i32 %call226, 0
  br i1 %tobool227, label %while.body.228, label %while.end.264

while.body.228:                                   ; preds = %while.cond.225
  %99 = load i32, i32* %c, align 4
  %cmp229 = icmp eq i32 %99, 32
  br i1 %cmp229, label %if.then.237, label %lor.lhs.false.231

lor.lhs.false.231:                                ; preds = %while.body.228
  %100 = load i32, i32* %c, align 4
  %101 = load i32, i32* @tab, align 4
  %cmp232 = icmp eq i32 %100, %101
  br i1 %cmp232, label %if.then.237, label %lor.lhs.false.234

lor.lhs.false.234:                                ; preds = %lor.lhs.false.231
  %102 = load i32, i32* %c, align 4
  %cmp235 = icmp eq i32 %102, 10
  br i1 %cmp235, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %lor.lhs.false.234, %lor.lhs.false.231, %while.body.228
  br label %while.end.264

if.end.238:                                       ; preds = %lor.lhs.false.234
  %103 = load i32, i32* %c, align 4
  %cmp239 = icmp eq i32 %103, 45
  br i1 %cmp239, label %if.then.244, label %lor.lhs.false.241

lor.lhs.false.241:                                ; preds = %if.end.238
  %104 = load i32, i32* %c, align 4
  %cmp242 = icmp eq i32 %104, 43
  br i1 %cmp242, label %if.then.244, label %if.else.251

if.then.244:                                      ; preds = %lor.lhs.false.241, %if.end.238
  %105 = load i8*, i8** %snp, align 8
  %106 = load i8*, i8** %temp, align 8
  %cmp245 = icmp ugt i8* %105, %106
  br i1 %cmp245, label %if.then.247, label %if.else.248

if.then.247:                                      ; preds = %if.then.244
  br label %while.end.264

if.else.248:                                      ; preds = %if.then.244
  %107 = load i32, i32* %c, align 4
  %conv249 = trunc i32 %107 to i8
  %108 = load i8*, i8** %snp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr, i8** %snp, align 8
  store i8 %conv249, i8* %108, align 1
  br label %if.end.250

if.end.250:                                       ; preds = %if.else.248
  br label %if.end.259

if.else.251:                                      ; preds = %lor.lhs.false.241
  %109 = load i32, i32* %c, align 4
  %call252 = call i32 @digit(i32 %109)
  %tobool253 = icmp ne i32 %call252, 0
  br i1 %tobool253, label %if.then.254, label %if.else.257

if.then.254:                                      ; preds = %if.else.251
  %110 = load i32, i32* %c, align 4
  %conv255 = trunc i32 %110 to i8
  %111 = load i8*, i8** %snp, align 8
  %incdec.ptr256 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr256, i8** %snp, align 8
  store i8 %conv255, i8* %111, align 1
  br label %if.end.258

if.else.257:                                      ; preds = %if.else.251
  br label %while.end.264

if.end.258:                                       ; preds = %if.then.254
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %if.end.250
  %112 = load i8*, i8** %snp, align 8
  %113 = load i8*, i8** %temp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %112 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %113 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp260 = icmp sgt i64 %sub.ptr.sub, 4
  br i1 %cmp260, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %if.end.259
  call void @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.262, %if.end.259
  br label %while.cond.225

while.end.264:                                    ; preds = %if.else.257, %if.then.247, %if.then.237, %while.cond.225
  %114 = load i8*, i8** %snp, align 8
  store i8 0, i8* %114, align 1
  %115 = load i8*, i8** %temp, align 8
  %call265 = call i32 @atoi(i8* %115) #3
  %cmp266 = icmp sgt i32 %call265, 36
  br i1 %cmp266, label %if.then.268, label %if.end.269

if.then.268:                                      ; preds = %while.end.264
  call void @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.268, %while.end.264
  %116 = load i32, i32* %c, align 4
  call void @un1getc(i32 %116)
  br label %while.cond

sw.bb.270:                                        ; preds = %while.body, %while.body
  %117 = load i32, i32* %icol, align 4
  %cmp271 = icmp sle i32 %117, 0
  br i1 %cmp271, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %sw.bb.270
  br label %while.cond

if.end.274:                                       ; preds = %sw.bb.270
  %118 = load i32, i32* %icol, align 4
  %sub275 = sub nsw i32 %118, 1
  %idxprom276 = sext i32 %sub275 to i64
  %119 = load i32, i32* @nclin, align 4
  %idxprom277 = sext i32 %119 to i64
  %arrayidx278 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @vsize, i32 0, i64 %idxprom277
  %arrayidx279 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %arrayidx278, i32 0, i64 %idxprom276
  %arraydecay280 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx279, i32 0, i32 0
  store i8* %arraydecay280, i8** %snp, align 8
  store i8* %arraydecay280, i8** %temp, align 8
  br label %while.cond.281

while.cond.281:                                   ; preds = %if.end.323, %if.end.274
  %call282 = call i32 @get1char()
  store i32 %call282, i32* %c, align 4
  %tobool283 = icmp ne i32 %call282, 0
  br i1 %tobool283, label %while.body.284, label %while.end.324

while.body.284:                                   ; preds = %while.cond.281
  %120 = load i32, i32* %c, align 4
  %cmp285 = icmp eq i32 %120, 32
  br i1 %cmp285, label %if.then.293, label %lor.lhs.false.287

lor.lhs.false.287:                                ; preds = %while.body.284
  %121 = load i32, i32* %c, align 4
  %122 = load i32, i32* @tab, align 4
  %cmp288 = icmp eq i32 %121, %122
  br i1 %cmp288, label %if.then.293, label %lor.lhs.false.290

lor.lhs.false.290:                                ; preds = %lor.lhs.false.287
  %123 = load i32, i32* %c, align 4
  %cmp291 = icmp eq i32 %123, 10
  br i1 %cmp291, label %if.then.293, label %if.end.294

if.then.293:                                      ; preds = %lor.lhs.false.290, %lor.lhs.false.287, %while.body.284
  br label %while.end.324

if.end.294:                                       ; preds = %lor.lhs.false.290
  %124 = load i32, i32* %c, align 4
  %cmp295 = icmp eq i32 %124, 45
  br i1 %cmp295, label %if.then.300, label %lor.lhs.false.297

lor.lhs.false.297:                                ; preds = %if.end.294
  %125 = load i32, i32* %c, align 4
  %cmp298 = icmp eq i32 %125, 43
  br i1 %cmp298, label %if.then.300, label %if.else.308

if.then.300:                                      ; preds = %lor.lhs.false.297, %if.end.294
  %126 = load i8*, i8** %snp, align 8
  %127 = load i8*, i8** %temp, align 8
  %cmp301 = icmp ugt i8* %126, %127
  br i1 %cmp301, label %if.then.303, label %if.else.304

if.then.303:                                      ; preds = %if.then.300
  br label %while.end.324

if.else.304:                                      ; preds = %if.then.300
  %128 = load i32, i32* %c, align 4
  %conv305 = trunc i32 %128 to i8
  %129 = load i8*, i8** %snp, align 8
  %incdec.ptr306 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr306, i8** %snp, align 8
  store i8 %conv305, i8* %129, align 1
  br label %if.end.307

if.end.307:                                       ; preds = %if.else.304
  br label %if.end.316

if.else.308:                                      ; preds = %lor.lhs.false.297
  %130 = load i32, i32* %c, align 4
  %call309 = call i32 @digit(i32 %130)
  %tobool310 = icmp ne i32 %call309, 0
  br i1 %tobool310, label %if.then.311, label %if.else.314

if.then.311:                                      ; preds = %if.else.308
  %131 = load i32, i32* %c, align 4
  %conv312 = trunc i32 %131 to i8
  %132 = load i8*, i8** %snp, align 8
  %incdec.ptr313 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr313, i8** %snp, align 8
  store i8 %conv312, i8* %132, align 1
  br label %if.end.315

if.else.314:                                      ; preds = %if.else.308
  br label %while.end.324

if.end.315:                                       ; preds = %if.then.311
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.315, %if.end.307
  %133 = load i8*, i8** %snp, align 8
  %134 = load i8*, i8** %temp, align 8
  %sub.ptr.lhs.cast317 = ptrtoint i8* %133 to i64
  %sub.ptr.rhs.cast318 = ptrtoint i8* %134 to i64
  %sub.ptr.sub319 = sub i64 %sub.ptr.lhs.cast317, %sub.ptr.rhs.cast318
  %cmp320 = icmp sgt i64 %sub.ptr.sub319, 4
  br i1 %cmp320, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %if.end.316
  call void @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.322, %if.end.316
  br label %while.cond.281

while.end.324:                                    ; preds = %if.else.314, %if.then.303, %if.then.293, %while.cond.281
  %135 = load i8*, i8** %snp, align 8
  store i8 0, i8* %135, align 1
  %136 = load i32, i32* %c, align 4
  call void @un1getc(i32 %136)
  br label %while.cond

sw.bb.325:                                        ; preds = %while.body, %while.body
  %137 = load i32, i32* %icol, align 4
  %sub326 = sub nsw i32 %137, 1
  %idxprom327 = sext i32 %sub326 to i64
  %arrayidx328 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i32 0, i64 %idxprom327
  %arraydecay329 = getelementptr inbounds [10 x i8], [10 x i8]* %arrayidx328, i32 0, i32 0
  store i8* %arraydecay329, i8** %snp, align 8
  store i32 0, i32* %stopc, align 4
  br label %while.cond.330

while.cond.330:                                   ; preds = %if.end.359, %if.then.343, %sw.bb.325
  %call331 = call i32 @get1char()
  store i32 %call331, i32* %c, align 4
  %tobool332 = icmp ne i32 %call331, 0
  br i1 %tobool332, label %while.body.333, label %while.end.362

while.body.333:                                   ; preds = %while.cond.330
  %138 = load i8*, i8** %snp, align 8
  %139 = load i32, i32* %icol, align 4
  %sub334 = sub nsw i32 %139, 1
  %idxprom335 = sext i32 %sub334 to i64
  %arrayidx336 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i32 0, i64 %idxprom335
  %arraydecay337 = getelementptr inbounds [10 x i8], [10 x i8]* %arrayidx336, i32 0, i32 0
  %cmp338 = icmp eq i8* %138, %arraydecay337
  br i1 %cmp338, label %land.lhs.true.340, label %if.end.344

land.lhs.true.340:                                ; preds = %while.body.333
  %140 = load i32, i32* %c, align 4
  %cmp341 = icmp eq i32 %140, 40
  br i1 %cmp341, label %if.then.343, label %if.end.344

if.then.343:                                      ; preds = %land.lhs.true.340
  store i32 41, i32* %stopc, align 4
  br label %while.cond.330

if.end.344:                                       ; preds = %land.lhs.true.340, %while.body.333
  %141 = load i32, i32* %stopc, align 4
  %tobool345 = icmp ne i32 %141, 0
  br i1 %tobool345, label %if.end.353, label %land.lhs.true.346

land.lhs.true.346:                                ; preds = %if.end.344
  %142 = load i32, i32* %c, align 4
  %cmp347 = icmp sgt i32 %142, 57
  br i1 %cmp347, label %if.then.352, label %lor.lhs.false.349

lor.lhs.false.349:                                ; preds = %land.lhs.true.346
  %143 = load i32, i32* %c, align 4
  %cmp350 = icmp slt i32 %143, 48
  br i1 %cmp350, label %if.then.352, label %if.end.353

if.then.352:                                      ; preds = %lor.lhs.false.349, %land.lhs.true.346
  br label %while.end.362

if.end.353:                                       ; preds = %lor.lhs.false.349, %if.end.344
  %144 = load i32, i32* %stopc, align 4
  %tobool354 = icmp ne i32 %144, 0
  br i1 %tobool354, label %land.lhs.true.355, label %if.end.359

land.lhs.true.355:                                ; preds = %if.end.353
  %145 = load i32, i32* %c, align 4
  %146 = load i32, i32* %stopc, align 4
  %cmp356 = icmp eq i32 %145, %146
  br i1 %cmp356, label %if.then.358, label %if.end.359

if.then.358:                                      ; preds = %land.lhs.true.355
  br label %while.end.362

if.end.359:                                       ; preds = %land.lhs.true.355, %if.end.353
  %147 = load i32, i32* %c, align 4
  %conv360 = trunc i32 %147 to i8
  %148 = load i8*, i8** %snp, align 8
  %incdec.ptr361 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %incdec.ptr361, i8** %snp, align 8
  store i8 %conv360, i8* %148, align 1
  br label %while.cond.330

while.end.362:                                    ; preds = %if.then.358, %if.then.352, %while.cond.330
  %149 = load i8*, i8** %snp, align 8
  store i8 0, i8* %149, align 1
  %150 = load i8*, i8** %snp, align 8
  %151 = load i32, i32* %icol, align 4
  %sub363 = sub nsw i32 %151, 1
  %idxprom364 = sext i32 %sub363 to i64
  %arrayidx365 = getelementptr inbounds [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i32 0, i64 %idxprom364
  %arraydecay366 = getelementptr inbounds [10 x i8], [10 x i8]* %arrayidx365, i32 0, i32 0
  %sub.ptr.lhs.cast367 = ptrtoint i8* %150 to i64
  %sub.ptr.rhs.cast368 = ptrtoint i8* %arraydecay366 to i64
  %sub.ptr.sub369 = sub i64 %sub.ptr.lhs.cast367, %sub.ptr.rhs.cast368
  %cmp370 = icmp sgt i64 %sub.ptr.sub369, 10
  br i1 %cmp370, label %if.then.372, label %if.end.373

if.then.372:                                      ; preds = %while.end.362
  call void @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.373

if.end.373:                                       ; preds = %if.then.372, %while.end.362
  %152 = load i32, i32* %stopc, align 4
  %tobool374 = icmp ne i32 %152, 0
  br i1 %tobool374, label %if.end.376, label %if.then.375

if.then.375:                                      ; preds = %if.end.373
  %153 = load i32, i32* %c, align 4
  call void @un1getc(i32 %153)
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.375, %if.end.373
  br label %while.cond

sw.bb.377:                                        ; preds = %while.body, %while.body
  %154 = load i32, i32* %icol, align 4
  %cmp378 = icmp slt i32 %154, 1
  br i1 %cmp378, label %if.then.380, label %if.end.381

if.then.380:                                      ; preds = %sw.bb.377
  br label %while.cond

if.end.381:                                       ; preds = %sw.bb.377
  %155 = load i32, i32* %icol, align 4
  %sub382 = sub nsw i32 %155, 1
  %idxprom383 = sext i32 %sub382 to i64
  %arrayidx384 = getelementptr inbounds [0 x i32], [0 x i32]* @evenup, i32 0, i64 %idxprom383
  store i32 1, i32* %arrayidx384, align 4
  store i32 1, i32* @evenflg, align 4
  br label %while.cond

sw.bb.385:                                        ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %156 = load i32, i32* %c, align 4
  %conv386 = trunc i32 %156 to i8
  %arrayidx387 = getelementptr inbounds [10 x i8], [10 x i8]* %sn, i32 0, i64 0
  store i8 %conv386, i8* %arrayidx387, align 1
  %arraydecay388 = getelementptr inbounds [10 x i8], [10 x i8]* %sn, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay388, i64 1
  store i8* %add.ptr, i8** %snp, align 8
  br label %while.cond.389

while.cond.389:                                   ; preds = %while.body.396, %sw.bb.385
  %call390 = call i32 @get1char()
  store i32 %call390, i32* %c, align 4
  %conv391 = trunc i32 %call390 to i8
  %157 = load i8*, i8** %snp, align 8
  %incdec.ptr392 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %incdec.ptr392, i8** %snp, align 8
  store i8 %conv391, i8* %157, align 1
  %conv393 = sext i8 %conv391 to i32
  %call394 = call i32 @digit(i32 %conv393)
  %tobool395 = icmp ne i32 %call394, 0
  br i1 %tobool395, label %while.body.396, label %while.end.397

while.body.396:                                   ; preds = %while.cond.389
  br label %while.cond.389

while.end.397:                                    ; preds = %while.cond.389
  %158 = load i32, i32* %c, align 4
  call void @un1getc(i32 %158)
  %159 = load i32, i32* %icol, align 4
  %sub398 = sub nsw i32 %159, 1
  %idxprom399 = sext i32 %sub398 to i64
  %arrayidx400 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i32 0, i64 %idxprom399
  %160 = load i32, i32* %arrayidx400, align 4
  %arraydecay401 = getelementptr inbounds [10 x i8], [10 x i8]* %sn, i32 0, i32 0
  %call402 = call i32 @numb(i8* %arraydecay401)
  %call403 = call i32 @max(i32 %160, i32 %call402)
  %161 = load i32, i32* %icol, align 4
  %sub404 = sub nsw i32 %161, 1
  %idxprom405 = sext i32 %sub404 to i64
  %arrayidx406 = getelementptr inbounds [0 x i32], [0 x i32]* @sep, i32 0, i64 %idxprom405
  store i32 %call403, i32* %arrayidx406, align 4
  br label %while.cond

sw.bb.407:                                        ; preds = %while.body
  %162 = load i32, i32* %icol, align 4
  %idxprom408 = sext i32 %162 to i64
  %163 = load i32, i32* @nclin, align 4
  %idxprom409 = sext i32 %163 to i64
  %arrayidx410 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @lefline, i32 0, i64 %idxprom409
  %arrayidx411 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx410, i32 0, i64 %idxprom408
  %164 = load i32, i32* %arrayidx411, align 4
  %inc412 = add nsw i32 %164, 1
  store i32 %inc412, i32* %arrayidx411, align 4
  %165 = load i32, i32* %icol, align 4
  %cmp413 = icmp eq i32 %165, 0
  br i1 %cmp413, label %if.then.415, label %if.end.416

if.then.415:                                      ; preds = %sw.bb.407
  store i32 1, i32* @left1flg, align 4
  br label %if.end.416

if.end.416:                                       ; preds = %if.then.415, %sw.bb.407
  br label %while.cond

while.end.417:                                    ; preds = %while.cond
  call void @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i32 0, i32 0))
  br label %return

return:                                           ; preds = %while.end.417, %if.end.51
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @get1char() #1

declare void @error(i8*) #1

declare i32 @max(i32, i32) #1

declare void @un1getc(i32) #1

declare i32 @digit(i32) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare i32 @numb(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
