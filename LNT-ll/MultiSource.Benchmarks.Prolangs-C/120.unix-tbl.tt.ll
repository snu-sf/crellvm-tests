; ModuleID = './MultiSource.Benchmarks.Prolangs-C/120.unix-tbl.tt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.colstr = type { i8*, i8* }

@instead = external global [0 x i8*], align 8
@fullbot = external global [0 x i32], align 4
@stynum = external global [0 x i32], align 4
@style = external global [100 x [20 x i32]], align 16
@ncol = external global i32, align 4
@tabout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [7 x i8] c"\5Ch'|0'\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"\5Ch'(|\5Cn(%du+|\5Cn(%du)/2u'\00", align 1
@table = external global [0 x %struct.colstr*], align 8

; Function Attrs: nounwind uwtable
define i32 @ctype(i32 %il, i32 %ic) #0 {
entry:
  %retval = alloca i32, align 4
  %il.addr = alloca i32, align 4
  %ic.addr = alloca i32, align 4
  store i32 %il, i32* %il.addr, align 4
  store i32 %ic, i32* %ic.addr, align 4
  %0 = load i32, i32* %il.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %il.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load i32, i32* %il.addr, align 4
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom6
  %5 = load i32, i32* %arrayidx7, align 4
  store i32 %5, i32* %il.addr, align 4
  %6 = load i32, i32* %ic.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %7 = load i32, i32* %il.addr, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx10, i32 0, i64 %idxprom8
  %8 = load i32, i32* %arrayidx11, align 4
  store i32 %8, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @min(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @fspan(i32 %i, i32 %c) #0 {
entry:
  %i.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %c.addr, align 4
  %1 = load i32, i32* %c.addr, align 4
  %2 = load i32, i32* @ncol, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* %i.addr, align 4
  %4 = load i32, i32* %c.addr, align 4
  %call = call i32 @ctype(i32 %3, i32 %4)
  %cmp1 = icmp eq i32 %call, 115
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @lspan(i32 %i, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %1 = load i32, i32* %c.addr, align 4
  %call = call i32 @ctype(i32 %0, i32 %1)
  %cmp = icmp ne i32 %call, 115
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %c.addr, align 4
  %3 = load i32, i32* %c.addr, align 4
  %4 = load i32, i32* @ncol, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %i.addr, align 4
  %6 = load i32, i32* %c.addr, align 4
  %call2 = call i32 @ctype(i32 %5, i32 %6)
  %cmp3 = icmp eq i32 %call2, 115
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %7 = load i32, i32* %i.addr, align 4
  %8 = load i32, i32* %c.addr, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %c.addr, align 4
  %call6 = call i32 @ctype(i32 %7, i32 %dec)
  %cmp7 = icmp eq i32 %call6, 115
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %k, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %k, align 4
  store i32 %10, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.4, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @ctspan(i32 %i, i32 %c) #0 {
entry:
  %i.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %c.addr, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %c.addr, align 4
  %2 = load i32, i32* @ncol, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %i.addr, align 4
  %4 = load i32, i32* %c.addr, align 4
  %call = call i32 @ctype(i32 %3, i32 %4)
  %cmp1 = icmp eq i32 %call, 115
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load i32, i32* %c.addr, align 4
  %inc2 = add nsw i32 %6, 1
  store i32 %inc2, i32* %c.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %k, align 4
  %inc3 = add nsw i32 %7, 1
  store i32 %inc3, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %8 = load i32, i32* %k, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @tohcol(i32 %ic) #0 {
entry:
  %ic.addr = alloca i32, align 4
  store i32 %ic, i32* %ic.addr, align 4
  %0 = load i32, i32* %ic.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %3 = load i32, i32* %ic.addr, align 4
  %add = add nsw i32 %3, 40
  %4 = load i32, i32* %ic.addr, align 4
  %add1 = add nsw i32 %4, 80
  %sub = sub nsw i32 %add1, 1
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 %add, i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @allh(i32 %i) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %one = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %c, align 4
  store i32 0, i32* %one, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %c, align 4
  %3 = load i32, i32* @ncol, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i.addr, align 4
  %5 = load i32, i32* %c, align 4
  %call = call i32 @thish(i32 %4, i32 %5)
  store i32 %call, i32* %k, align 4
  %6 = load i32, i32* %k, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %for.body
  %7 = load i32, i32* %k, align 4
  %cmp4 = icmp eq i32 %7, 1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  br label %for.inc

if.end.6:                                         ; preds = %if.end.3
  store i32 1, i32* %one, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.6, %if.then.5
  %8 = load i32, i32* %c, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %one, align 4
  store i32 %9, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.2, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @thish(i32 %i, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %t = alloca i32, align 4
  %s = alloca i8*, align 8
  %pc = alloca %struct.colstr*, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load i32, i32* %i.addr, align 4
  %3 = load i32, i32* %c.addr, align 4
  %call = call i32 @ctype(i32 %2, i32 %3)
  store i32 %call, i32* %t, align 4
  %4 = load i32, i32* %t, align 4
  %cmp4 = icmp eq i32 %4, 95
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %5 = load i32, i32* %t, align 4
  %cmp5 = icmp eq i32 %5, 45
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end.3
  store i32 45, i32* %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %6 = load i32, i32* %t, align 4
  %cmp8 = icmp eq i32 %6, 61
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store i32 61, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %7 = load i32, i32* %t, align 4
  %cmp11 = icmp eq i32 %7, 94
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.10
  %8 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.13
  %10 = load i32, i32* %i.addr, align 4
  %idxprom15 = sext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom15
  %11 = load i32, i32* %arrayidx16, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.13
  %12 = load i32, i32* %t, align 4
  %cmp18 = icmp eq i32 %12, 115
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.17
  %13 = load i32, i32* %i.addr, align 4
  %14 = load i32, i32* %c.addr, align 4
  %sub = sub nsw i32 %14, 1
  %call20 = call i32 @thish(i32 %13, i32 %sub)
  store i32 %call20, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.17
  %15 = load i32, i32* %t, align 4
  %cmp22 = icmp eq i32 %15, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  store i32 1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.21
  %16 = load i32, i32* %c.addr, align 4
  %idxprom25 = sext i32 %16 to i64
  %17 = load i32, i32* %i.addr, align 4
  %idxprom26 = sext i32 %17 to i64
  %arrayidx27 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom26
  %18 = load %struct.colstr*, %struct.colstr** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds %struct.colstr, %struct.colstr* %18, i64 %idxprom25
  store %struct.colstr* %arrayidx28, %struct.colstr** %pc, align 8
  %19 = load i32, i32* %t, align 4
  %cmp29 = icmp eq i32 %19, 97
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  %20 = load %struct.colstr*, %struct.colstr** %pc, align 8
  %rcol = getelementptr inbounds %struct.colstr, %struct.colstr* %20, i32 0, i32 1
  %21 = load i8*, i8** %rcol, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  %22 = load %struct.colstr*, %struct.colstr** %pc, align 8
  %col = getelementptr inbounds %struct.colstr, %struct.colstr* %22, i32 0, i32 0
  %23 = load i8*, i8** %col, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %21, %cond.true ], [ %23, %cond.false ]
  store i8* %cond, i8** %s, align 8
  %24 = load i8*, i8** %s, align 8
  %cmp30 = icmp eq i8* %24, null
  br i1 %cmp30, label %if.then.36, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %cond.end
  %25 = load i8*, i8** %s, align 8
  %26 = ptrtoint i8* %25 to i32
  %call32 = call i32 @point(i32 %26)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %lor.lhs.false.31
  %27 = load i8*, i8** %s, align 8
  %28 = load i8, i8* %27, align 1
  %conv = sext i8 %28 to i32
  %cmp34 = icmp eq i32 %conv, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %land.lhs.true, %cond.end
  store i32 1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %land.lhs.true, %lor.lhs.false.31
  %29 = load i8*, i8** %s, align 8
  %call38 = call i32 @vspen(i8* %29)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.37
  store i32 1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.end.37
  %30 = load i8*, i8** %s, align 8
  %call42 = call i32 @barent(i8* %30)
  store i32 %call42, i32* %t, align 4
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  %31 = load i32, i32* %t, align 4
  store i32 %31, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.41
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then.44, %if.then.40, %if.then.36, %if.then.23, %if.then.19, %if.then.14, %if.then.12, %if.then.9, %if.then.6, %if.then.2, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @point(i32) #1

declare i32 @vspen(i8*) #1

declare i32 @barent(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
