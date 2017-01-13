; ModuleID = './MultiSource.Benchmarks.Prolangs-C/116.unix-tbl.t9.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colstr = type { i8*, i8* }

@useln = internal global i32 0, align 4
@table = external global [0 x %struct.colstr*], align 8
@.str = private unnamed_addr constant [26 x i8] c"Wierd.  No data in table.\00", align 1
@nlin = external global i32, align 4
@fullbot = external global [0 x i32], align 4
@instead = external global [0 x i8*], align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Wierd.  No real lines in table.\00", align 1
@leftover = external global i32, align 4
@cspace = external global i8*, align 8
@cstore = external global i8*, align 8
@last = external global i8*, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c".TE\00", align 1
@ncol = external global i32, align 4
@tab = external global i32, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @yetmore() #0 {
entry:
  store i32 0, i32* @useln, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* @useln, align 4
  %cmp = icmp slt i32 %0, 200
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, i32* @useln, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom
  %2 = load %struct.colstr*, %struct.colstr** %arrayidx, align 8
  %cmp1 = icmp eq %struct.colstr* %2, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* @useln, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @useln, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %5 = load i32, i32* @useln, align 4
  %cmp2 = icmp sge i32 %5, 200
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %6 = load i32, i32* @useln, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom3
  %7 = load %struct.colstr*, %struct.colstr** %arrayidx4, align 8
  store %struct.colstr* %7, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 0), align 8
  %8 = load i32, i32* @nlin, align 4
  %sub = sub nsw i32 %8, 1
  store i32 %sub, i32* @useln, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.15, %if.end
  %9 = load i32, i32* @useln, align 4
  %cmp6 = icmp sge i32 %9, 0
  br i1 %cmp6, label %land.rhs.7, label %land.end.13

land.rhs.7:                                       ; preds = %for.cond.5
  %10 = load i32, i32* @useln, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom8
  %11 = load i32, i32* %arrayidx9, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.7
  %12 = load i32, i32* @useln, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom10
  %13 = load i8*, i8** %arrayidx11, align 8
  %tobool12 = icmp ne i8* %13, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.7
  %14 = phi i1 [ true, %land.rhs.7 ], [ %tobool12, %lor.rhs ]
  br label %land.end.13

land.end.13:                                      ; preds = %lor.end, %for.cond.5
  %15 = phi i1 [ false, %for.cond.5 ], [ %14, %lor.end ]
  br i1 %15, label %for.body.14, label %for.end.16

for.body.14:                                      ; preds = %land.end.13
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.14
  %16 = load i32, i32* @useln, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* @useln, align 4
  br label %for.cond.5

for.end.16:                                       ; preds = %land.end.13
  %17 = load i32, i32* @useln, align 4
  %cmp17 = icmp slt i32 %17, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.end.16
  call void @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %for.end.16
  %18 = load i32, i32* @leftover, align 4
  %conv = sext i32 %18 to i64
  %19 = inttoptr i64 %conv to i8*
  %call = call i32 @domore(i8* %19)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.19
  %20 = load i8*, i8** @cspace, align 8
  store i8* %20, i8** @cstore, align 8
  %call20 = call i8* @gets1(i8* %20)
  %tobool21 = icmp ne i8* %call20, null
  br i1 %tobool21, label %land.rhs.22, label %land.end.25

land.rhs.22:                                      ; preds = %while.cond
  %21 = load i8*, i8** @cstore, align 8
  %call23 = call i32 @domore(i8* %21)
  %tobool24 = icmp ne i32 %call23, 0
  br label %land.end.25

land.end.25:                                      ; preds = %land.rhs.22, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %tobool24, %land.rhs.22 ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.25
  br label %while.cond

while.end:                                        ; preds = %land.end.25
  %23 = load i8*, i8** @cstore, align 8
  store i8* %23, i8** @last, align 8
  ret void
}

declare void @error(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @domore(i8* %dataln) #0 {
entry:
  %retval = alloca i32, align 4
  %dataln.addr = alloca i8*, align 8
  %icol = alloca i32, align 4
  %ch = alloca i32, align 4
  store i8* %dataln, i8** %dataln.addr, align 8
  %0 = load i8*, i8** %dataln.addr, align 8
  %call = call i32 @prefix(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %dataln.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 46
  br i1 %cmp, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end
  %3 = load i8*, i8** %dataln.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %idxprom = sext i32 %conv3 to i64
  %call4 = call i16** @__ctype_b_loc() #3
  %5 = load i16*, i16** %call4, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx5, align 2
  %conv6 = zext i16 %6 to i32
  %and = and i32 %conv6, 2048
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  %7 = load i8*, i8** %dataln.addr, align 8
  %call9 = call i32 @puts(i8* %7)
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true, %if.end
  store i8* null, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @instead, i32 0, i64 0), align 8
  store i32 0, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @fullbot, i32 0, i64 0), align 4
  %8 = load i8*, i8** %dataln.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %9 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.10
  %10 = load i8*, i8** %dataln.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %11 to i32
  switch i32 %conv17, label %sw.epilog [
    i32 95, label %sw.bb
    i32 61, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.then.15
  store i32 45, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @fullbot, i32 0, i64 0), align 4
  %12 = load i32, i32* @useln, align 4
  call void @putline(i32 %12, i32 0)
  store i32 1, i32* %retval
  br label %return

sw.bb.18:                                         ; preds = %if.then.15
  store i32 61, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @fullbot, i32 0, i64 0), align 4
  %13 = load i32, i32* @useln, align 4
  call void @putline(i32 %13, i32 0)
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.then.15
  br label %if.end.19

if.end.19:                                        ; preds = %sw.epilog, %if.end.10
  store i32 0, i32* %icol, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.65, %if.end.19
  %14 = load i32, i32* %icol, align 4
  %15 = load i32, i32* @ncol, align 4
  %cmp20 = icmp slt i32 %14, %15
  br i1 %cmp20, label %for.body, label %for.end.67

for.body:                                         ; preds = %for.cond
  %16 = load i8*, i8** %dataln.addr, align 8
  %17 = load i32, i32* %icol, align 4
  %idxprom22 = sext i32 %17 to i64
  %18 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 0), align 8
  %arrayidx23 = getelementptr inbounds %struct.colstr, %struct.colstr* %18, i64 %idxprom22
  %col = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx23, i32 0, i32 0
  store i8* %16, i8** %col, align 8
  %19 = load i32, i32* %icol, align 4
  %idxprom24 = sext i32 %19 to i64
  %20 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 0), align 8
  %arrayidx25 = getelementptr inbounds %struct.colstr, %struct.colstr* %20, i64 %idxprom24
  %rcol = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx25, i32 0, i32 1
  store i8* null, i8** %rcol, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %for.body
  %21 = load i8*, i8** %dataln.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv27 = sext i8 %22 to i32
  store i32 %conv27, i32* %ch, align 4
  %cmp28 = icmp ne i32 %conv27, 0
  br i1 %cmp28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.26
  %23 = load i32, i32* %ch, align 4
  %24 = load i32, i32* @tab, align 4
  %cmp30 = icmp ne i32 %23, %24
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.26
  %25 = phi i1 [ false, %for.cond.26 ], [ %cmp30, %land.rhs ]
  br i1 %25, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body.32
  %26 = load i8*, i8** %dataln.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %dataln.addr, align 8
  br label %for.cond.26

for.end:                                          ; preds = %land.end
  %27 = load i8*, i8** %dataln.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr33, i8** %dataln.addr, align 8
  store i8 0, i8* %27, align 1
  %28 = load i32, i32* @useln, align 4
  %29 = load i32, i32* %icol, align 4
  %call34 = call i32 @ctype(i32 %28, i32 %29)
  switch i32 %call34, label %sw.epilog.54 [
    i32 110, label %sw.bb.35
    i32 97, label %sw.bb.44
  ]

sw.bb.35:                                         ; preds = %for.end
  %30 = load i32, i32* %icol, align 4
  %idxprom36 = sext i32 %30 to i64
  %31 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 0), align 8
  %arrayidx37 = getelementptr inbounds %struct.colstr, %struct.colstr* %31, i64 %idxprom36
  %col38 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx37, i32 0, i32 0
  %32 = load i8*, i8** %col38, align 8
  %call39 = call i32 @maknew(i8* %32)
  %conv40 = sext i32 %call39 to i64
  %33 = inttoptr i64 %conv40 to i8*
  %34 = load i32, i32* %icol, align 4
  %idxprom41 = sext i32 %34 to i64
  %35 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 0), align 8
  %arrayidx42 = getelementptr inbounds %struct.colstr, %struct.colstr* %35, i64 %idxprom41
  %rcol43 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx42, i32 0, i32 1
  store i8* %33, i8** %rcol43, align 8
  br label %sw.epilog.54

sw.bb.44:                                         ; preds = %for.end
  %36 = load i32, i32* %icol, align 4
  %idxprom45 = sext i32 %36 to i64
  %37 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 0), align 8
  %arrayidx46 = getelementptr inbounds %struct.colstr, %struct.colstr* %37, i64 %idxprom45
  %col47 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx46, i32 0, i32 0
  %38 = load i8*, i8** %col47, align 8
  %39 = load i32, i32* %icol, align 4
  %idxprom48 = sext i32 %39 to i64
  %40 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 0), align 8
  %arrayidx49 = getelementptr inbounds %struct.colstr, %struct.colstr* %40, i64 %idxprom48
  %rcol50 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx49, i32 0, i32 1
  store i8* %38, i8** %rcol50, align 8
  %41 = load i32, i32* %icol, align 4
  %idxprom51 = sext i32 %41 to i64
  %42 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 0), align 8
  %arrayidx52 = getelementptr inbounds %struct.colstr, %struct.colstr* %42, i64 %idxprom51
  %col53 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx52, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %col53, align 8
  br label %sw.epilog.54

sw.epilog.54:                                     ; preds = %for.end, %sw.bb.44, %sw.bb.35
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.epilog.54
  %43 = load i32, i32* @useln, align 4
  %44 = load i32, i32* %icol, align 4
  %add = add nsw i32 %44, 1
  %call55 = call i32 @ctype(i32 %43, i32 %add)
  %cmp56 = icmp eq i32 %call55, 115
  br i1 %cmp56, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %45 = load i32, i32* %icol, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %icol, align 4
  %idxprom58 = sext i32 %inc to i64
  %46 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 0), align 8
  %arrayidx59 = getelementptr inbounds %struct.colstr, %struct.colstr* %46, i64 %idxprom58
  %col60 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx59, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %col60, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %47 = load i32, i32* %ch, align 4
  %cmp61 = icmp eq i32 %47, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %while.end
  br label %for.end.67

if.end.64:                                        ; preds = %while.end
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %48 = load i32, i32* %icol, align 4
  %inc66 = add nsw i32 %48, 1
  store i32 %inc66, i32* %icol, align 4
  br label %for.cond

for.end.67:                                       ; preds = %if.then.63, %for.cond
  br label %while.cond.68

while.cond.68:                                    ; preds = %while.body.72, %for.end.67
  %49 = load i32, i32* %icol, align 4
  %inc69 = add nsw i32 %49, 1
  store i32 %inc69, i32* %icol, align 4
  %50 = load i32, i32* @ncol, align 4
  %cmp70 = icmp slt i32 %inc69, %50
  br i1 %cmp70, label %while.body.72, label %while.end.76

while.body.72:                                    ; preds = %while.cond.68
  %51 = load i32, i32* %icol, align 4
  %idxprom73 = sext i32 %51 to i64
  %52 = load %struct.colstr*, %struct.colstr** getelementptr inbounds ([0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 0), align 8
  %arrayidx74 = getelementptr inbounds %struct.colstr, %struct.colstr* %52, i64 %idxprom73
  %col75 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx74, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %col75, align 8
  br label %while.cond.68

while.end.76:                                     ; preds = %while.cond.68
  %53 = load i32, i32* @useln, align 4
  call void @putline(i32 %53, i32 0)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end.76, %sw.bb.18, %sw.bb, %if.then.8, %if.then
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare i8* @gets1(i8*) #1

declare i32 @prefix(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

declare i32 @puts(i8*) #1

declare void @putline(i32, i32) #1

declare i32 @ctype(i32, i32) #1

declare i32 @maknew(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
