; ModuleID = './MultiSource.Benchmarks.Prolangs-C/127.unix-tbl.t5.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colstr = type { i8*, i8* }

@cspace = external global i8*, align 8
@cstore = external global i8*, align 8
@textflg = external global i32, align 4
@nslin = external global i32, align 4
@nlin = external global i32, align 4
@stynum = external global [0 x i32], align 4
@.str = private unnamed_addr constant [4 x i8] c".TE\00", align 1
@leftover = external global i32, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c".TC\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".T&\00", align 1
@fullbot = external global [0 x i32], align 4
@instead = external global [0 x i8*], align 8
@ncol = external global i32, align 4
@table = external global [0 x %struct.colstr*], align 8
@nclin = external global i32, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"T{\00", align 1
@font = external global [100 x [20 x [2 x i8]]], align 16
@csize = external global [100 x [20 x [4 x i8]]], align 16
@tab = external global i32, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@last = external global i8*, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"Vertical spanning in first row not allowed\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\5C^\00", align 1

; Function Attrs: nounwind uwtable
define void @gettbl() #0 {
entry:
  %icol = alloca i32, align 4
  %ch = alloca i32, align 4
  %call = call i8* (...) @chspace()
  store i8* %call, i8** @cspace, align 8
  store i8* %call, i8** @cstore, align 8
  store i32 0, i32* @textflg, align 4
  store i32 0, i32* @nslin, align 4
  store i32 0, i32* @nlin, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.195, %entry
  %0 = load i8*, i8** @cstore, align 8
  %call1 = call i8* @gets1(i8* %0)
  %tobool = icmp ne i8* %call1, null
  br i1 %tobool, label %for.body, label %for.end.197

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* @nslin, align 4
  %2 = load i32, i32* @nlin, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom
  store i32 %1, i32* %arrayidx, align 4
  %3 = load i8*, i8** @cstore, align 8
  %call2 = call i32 @prefix(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* @leftover, align 4
  br label %for.end.197

if.end:                                           ; preds = %for.body
  %4 = load i8*, i8** @cstore, align 8
  %call4 = call i32 @prefix(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* %4)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i8*, i8** @cstore, align 8
  %call6 = call i32 @prefix(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* %5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  call void @readspec()
  %6 = load i32, i32* @nslin, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @nslin, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %lor.lhs.false
  %7 = load i32, i32* @nlin, align 4
  %cmp = icmp sge i32 %7, 200
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.9
  %8 = load i8*, i8** @cstore, align 8
  %9 = ptrtoint i8* %8 to i32
  store i32 %9, i32* @leftover, align 4
  br label %for.end.197

if.end.11:                                        ; preds = %if.end.9
  %10 = load i32, i32* @nlin, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom12
  store i32 0, i32* %arrayidx13, align 4
  %11 = load i8*, i8** @cstore, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx14, align 1
  %conv = sext i8 %12 to i32
  %cmp15 = icmp eq i32 %conv, 46
  br i1 %cmp15, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.11
  %13 = load i8*, i8** @cstore, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %14 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %call20 = call i16** @__ctype_b_loc() #3
  %15 = load i16*, i16** %call20, align 8
  %arrayidx21 = getelementptr inbounds i16, i16* %15, i64 %idxprom19
  %16 = load i16, i16* %arrayidx21, align 2
  %conv22 = zext i16 %16 to i32
  %and = and i32 %conv22, 2048
  %tobool23 = icmp ne i32 %and, 0
  br i1 %tobool23, label %if.else, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true
  %17 = load i8*, i8** @cstore, align 8
  %18 = load i32, i32* @nlin, align 4
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom25
  store i8* %17, i8** %arrayidx26, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.24
  %19 = load i8*, i8** @cstore, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** @cstore, align 8
  %20 = load i8, i8* %19, align 1
  %tobool27 = icmp ne i8 %20, 0
  br i1 %tobool27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.195

if.else:                                          ; preds = %land.lhs.true, %if.end.11
  %21 = load i32, i32* @nlin, align 4
  %idxprom28 = sext i32 %21 to i64
  %arrayidx29 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom28
  store i8* null, i8** %arrayidx29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else
  %22 = load i32, i32* @nlin, align 4
  %call31 = call i32 @nodata(i32 %22)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.46

if.then.33:                                       ; preds = %if.end.30
  %23 = load i32, i32* @nlin, align 4
  %call34 = call i32 @oneh(i32 %23)
  store i32 %call34, i32* %ch, align 4
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.then.33
  %24 = load i32, i32* %ch, align 4
  %25 = load i32, i32* @nlin, align 4
  %idxprom37 = sext i32 %25 to i64
  %arrayidx38 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom37
  store i32 %24, i32* %arrayidx38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.then.33
  %26 = load i32, i32* @nlin, align 4
  %inc40 = add nsw i32 %26, 1
  store i32 %inc40, i32* @nlin, align 4
  %27 = load i32, i32* @nslin, align 4
  %inc41 = add nsw i32 %27, 1
  store i32 %inc41, i32* @nslin, align 4
  %28 = load i32, i32* @nlin, align 4
  %idxprom42 = sext i32 %28 to i64
  %arrayidx43 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom42
  store i8* null, i8** %arrayidx43, align 8
  %29 = load i32, i32* @nlin, align 4
  %idxprom44 = sext i32 %29 to i64
  %arrayidx45 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom44
  store i32 0, i32* %arrayidx45, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.39, %if.end.30
  %30 = load i32, i32* @ncol, align 4
  %add = add nsw i32 %30, 2
  %conv47 = sext i32 %add to i64
  %mul = mul i64 %conv47, 16
  %conv48 = trunc i64 %mul to i32
  %call49 = call i32* @alocv(i32 %conv48)
  %31 = bitcast i32* %call49 to %struct.colstr*
  %32 = load i32, i32* @nlin, align 4
  %idxprom50 = sext i32 %32 to i64
  %arrayidx51 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom50
  store %struct.colstr* %31, %struct.colstr** %arrayidx51, align 8
  %33 = load i8*, i8** @cstore, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %33, i64 1
  %34 = load i8, i8* %arrayidx52, align 1
  %conv53 = sext i8 %34 to i32
  %cmp54 = icmp eq i32 %conv53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.64

if.then.56:                                       ; preds = %if.end.46
  %35 = load i8*, i8** @cstore, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %36 to i32
  switch i32 %conv58, label %sw.epilog [
    i32 95, label %sw.bb
    i32 61, label %sw.bb.61
  ]

sw.bb:                                            ; preds = %if.then.56
  %37 = load i32, i32* @nlin, align 4
  %idxprom59 = sext i32 %37 to i64
  %arrayidx60 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom59
  store i32 45, i32* %arrayidx60, align 4
  br label %for.inc.195

sw.bb.61:                                         ; preds = %if.then.56
  %38 = load i32, i32* @nlin, align 4
  %idxprom62 = sext i32 %38 to i64
  %arrayidx63 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom62
  store i32 61, i32* %arrayidx63, align 4
  br label %for.inc.195

sw.epilog:                                        ; preds = %if.then.56
  br label %if.end.64

if.end.64:                                        ; preds = %sw.epilog, %if.end.46
  %39 = load i32, i32* @nslin, align 4
  %40 = load i32, i32* @nlin, align 4
  %idxprom65 = sext i32 %40 to i64
  %arrayidx66 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom65
  store i32 %39, i32* %arrayidx66, align 4
  %41 = load i32, i32* @nslin, align 4
  %add67 = add nsw i32 %41, 1
  %42 = load i32, i32* @nclin, align 4
  %sub = sub nsw i32 %42, 1
  %call68 = call i32 @min(i32 %add67, i32 %sub)
  store i32 %call68, i32* @nslin, align 4
  store i32 0, i32* %icol, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.163, %if.end.64
  %43 = load i32, i32* %icol, align 4
  %44 = load i32, i32* @ncol, align 4
  %cmp70 = icmp slt i32 %43, %44
  br i1 %cmp70, label %for.body.72, label %for.end.165

for.body.72:                                      ; preds = %for.cond.69
  %45 = load i8*, i8** @cstore, align 8
  %46 = load i32, i32* %icol, align 4
  %idxprom73 = sext i32 %46 to i64
  %47 = load i32, i32* @nlin, align 4
  %idxprom74 = sext i32 %47 to i64
  %arrayidx75 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom74
  %48 = load %struct.colstr*, %struct.colstr** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds %struct.colstr, %struct.colstr* %48, i64 %idxprom73
  %col = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx76, i32 0, i32 0
  store i8* %45, i8** %col, align 8
  %49 = load i32, i32* %icol, align 4
  %idxprom77 = sext i32 %49 to i64
  %50 = load i32, i32* @nlin, align 4
  %idxprom78 = sext i32 %50 to i64
  %arrayidx79 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom78
  %51 = load %struct.colstr*, %struct.colstr** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds %struct.colstr, %struct.colstr* %51, i64 %idxprom77
  %rcol = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx80, i32 0, i32 1
  store i8* null, i8** %rcol, align 8
  store i32 1, i32* %ch, align 4
  %52 = load i8*, i8** @cstore, align 8
  %call81 = call i32 @match(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.else.104

if.then.83:                                       ; preds = %for.body.72
  %53 = load i8*, i8** @cstore, align 8
  %54 = load i32, i32* @nlin, align 4
  %55 = load i32, i32* %icol, align 4
  %56 = load i32, i32* %icol, align 4
  %idxprom84 = sext i32 %56 to i64
  %57 = load i32, i32* @nlin, align 4
  %idxprom85 = sext i32 %57 to i64
  %arrayidx86 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom85
  %58 = load i32, i32* %arrayidx86, align 4
  %idxprom87 = sext i32 %58 to i64
  %arrayidx88 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i32 0, i64 %idxprom87
  %arrayidx89 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %arrayidx88, i32 0, i64 %idxprom84
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx89, i32 0, i32 0
  %59 = load i32, i32* %icol, align 4
  %idxprom90 = sext i32 %59 to i64
  %60 = load i32, i32* @nlin, align 4
  %idxprom91 = sext i32 %60 to i64
  %arrayidx92 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i32 0, i64 %idxprom91
  %61 = load i32, i32* %arrayidx92, align 4
  %idxprom93 = sext i32 %61 to i64
  %arrayidx94 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i32 0, i64 %idxprom93
  %arrayidx95 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %arrayidx94, i32 0, i64 %idxprom90
  %arraydecay96 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx95, i32 0, i32 0
  %call97 = call i32 @gettext(i8* %53, i32 %54, i32 %55, i8* %arraydecay, i8* %arraydecay96)
  %conv98 = sext i32 %call97 to i64
  %62 = inttoptr i64 %conv98 to i8*
  %63 = load i32, i32* %icol, align 4
  %idxprom99 = sext i32 %63 to i64
  %64 = load i32, i32* @nlin, align 4
  %idxprom100 = sext i32 %64 to i64
  %arrayidx101 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom100
  %65 = load %struct.colstr*, %struct.colstr** %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds %struct.colstr, %struct.colstr* %65, i64 %idxprom99
  %col103 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx102, i32 0, i32 0
  store i8* %62, i8** %col103, align 8
  br label %if.end.145

if.else.104:                                      ; preds = %for.body.72
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc, %if.else.104
  %66 = load i8*, i8** @cstore, align 8
  %67 = load i8, i8* %66, align 1
  %conv106 = sext i8 %67 to i32
  store i32 %conv106, i32* %ch, align 4
  %cmp107 = icmp ne i32 %conv106, 0
  br i1 %cmp107, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.105
  %68 = load i32, i32* %ch, align 4
  %69 = load i32, i32* @tab, align 4
  %cmp109 = icmp ne i32 %68, %69
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.105
  %70 = phi i1 [ false, %for.cond.105 ], [ %cmp109, %land.rhs ]
  br i1 %70, label %for.body.111, label %for.end

for.body.111:                                     ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body.111
  %71 = load i8*, i8** @cstore, align 8
  %incdec.ptr112 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr112, i8** @cstore, align 8
  br label %for.cond.105

for.end:                                          ; preds = %land.end
  %72 = load i8*, i8** @cstore, align 8
  %incdec.ptr113 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr113, i8** @cstore, align 8
  store i8 0, i8* %72, align 1
  %73 = load i32, i32* @nlin, align 4
  %74 = load i32, i32* %icol, align 4
  %call114 = call i32 @ctype(i32 %73, i32 %74)
  switch i32 %call114, label %sw.epilog.144 [
    i32 110, label %sw.bb.115
    i32 97, label %sw.bb.128
  ]

sw.bb.115:                                        ; preds = %for.end
  %75 = load i32, i32* %icol, align 4
  %idxprom116 = sext i32 %75 to i64
  %76 = load i32, i32* @nlin, align 4
  %idxprom117 = sext i32 %76 to i64
  %arrayidx118 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom117
  %77 = load %struct.colstr*, %struct.colstr** %arrayidx118, align 8
  %arrayidx119 = getelementptr inbounds %struct.colstr, %struct.colstr* %77, i64 %idxprom116
  %col120 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx119, i32 0, i32 0
  %78 = load i8*, i8** %col120, align 8
  %call121 = call i32 @maknew(i8* %78)
  %conv122 = sext i32 %call121 to i64
  %79 = inttoptr i64 %conv122 to i8*
  %80 = load i32, i32* %icol, align 4
  %idxprom123 = sext i32 %80 to i64
  %81 = load i32, i32* @nlin, align 4
  %idxprom124 = sext i32 %81 to i64
  %arrayidx125 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom124
  %82 = load %struct.colstr*, %struct.colstr** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds %struct.colstr, %struct.colstr* %82, i64 %idxprom123
  %rcol127 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx126, i32 0, i32 1
  store i8* %79, i8** %rcol127, align 8
  br label %sw.epilog.144

sw.bb.128:                                        ; preds = %for.end
  %83 = load i32, i32* %icol, align 4
  %idxprom129 = sext i32 %83 to i64
  %84 = load i32, i32* @nlin, align 4
  %idxprom130 = sext i32 %84 to i64
  %arrayidx131 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom130
  %85 = load %struct.colstr*, %struct.colstr** %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds %struct.colstr, %struct.colstr* %85, i64 %idxprom129
  %col133 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx132, i32 0, i32 0
  %86 = load i8*, i8** %col133, align 8
  %87 = load i32, i32* %icol, align 4
  %idxprom134 = sext i32 %87 to i64
  %88 = load i32, i32* @nlin, align 4
  %idxprom135 = sext i32 %88 to i64
  %arrayidx136 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom135
  %89 = load %struct.colstr*, %struct.colstr** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds %struct.colstr, %struct.colstr* %89, i64 %idxprom134
  %rcol138 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx137, i32 0, i32 1
  store i8* %86, i8** %rcol138, align 8
  %90 = load i32, i32* %icol, align 4
  %idxprom139 = sext i32 %90 to i64
  %91 = load i32, i32* @nlin, align 4
  %idxprom140 = sext i32 %91 to i64
  %arrayidx141 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom140
  %92 = load %struct.colstr*, %struct.colstr** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds %struct.colstr, %struct.colstr* %92, i64 %idxprom139
  %col143 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx142, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8** %col143, align 8
  br label %sw.epilog.144

sw.epilog.144:                                    ; preds = %for.end, %sw.bb.128, %sw.bb.115
  br label %if.end.145

if.end.145:                                       ; preds = %sw.epilog.144, %if.then.83
  br label %while.cond.146

while.cond.146:                                   ; preds = %while.body.151, %if.end.145
  %93 = load i32, i32* @nlin, align 4
  %94 = load i32, i32* %icol, align 4
  %add147 = add nsw i32 %94, 1
  %call148 = call i32 @ctype(i32 %93, i32 %add147)
  %cmp149 = icmp eq i32 %call148, 115
  br i1 %cmp149, label %while.body.151, label %while.end.158

while.body.151:                                   ; preds = %while.cond.146
  %95 = load i32, i32* %icol, align 4
  %inc152 = add nsw i32 %95, 1
  store i32 %inc152, i32* %icol, align 4
  %idxprom153 = sext i32 %inc152 to i64
  %96 = load i32, i32* @nlin, align 4
  %idxprom154 = sext i32 %96 to i64
  %arrayidx155 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom154
  %97 = load %struct.colstr*, %struct.colstr** %arrayidx155, align 8
  %arrayidx156 = getelementptr inbounds %struct.colstr, %struct.colstr* %97, i64 %idxprom153
  %col157 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx156, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8** %col157, align 8
  br label %while.cond.146

while.end.158:                                    ; preds = %while.cond.146
  %98 = load i32, i32* %ch, align 4
  %cmp159 = icmp eq i32 %98, 0
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %while.end.158
  br label %for.end.165

if.end.162:                                       ; preds = %while.end.158
  br label %for.inc.163

for.inc.163:                                      ; preds = %if.end.162
  %99 = load i32, i32* %icol, align 4
  %inc164 = add nsw i32 %99, 1
  store i32 %inc164, i32* %icol, align 4
  br label %for.cond.69

for.end.165:                                      ; preds = %if.then.161, %for.cond.69
  br label %while.cond.166

while.cond.166:                                   ; preds = %while.body.171, %for.end.165
  %100 = load i32, i32* %icol, align 4
  %inc167 = add nsw i32 %100, 1
  store i32 %inc167, i32* %icol, align 4
  %101 = load i32, i32* @ncol, align 4
  %add168 = add nsw i32 %101, 2
  %cmp169 = icmp slt i32 %inc167, %add168
  br i1 %cmp169, label %while.body.171, label %while.end.182

while.body.171:                                   ; preds = %while.cond.166
  %102 = load i32, i32* %icol, align 4
  %idxprom172 = sext i32 %102 to i64
  %103 = load i32, i32* @nlin, align 4
  %idxprom173 = sext i32 %103 to i64
  %arrayidx174 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom173
  %104 = load %struct.colstr*, %struct.colstr** %arrayidx174, align 8
  %arrayidx175 = getelementptr inbounds %struct.colstr, %struct.colstr* %104, i64 %idxprom172
  %col176 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx175, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8** %col176, align 8
  %105 = load i32, i32* %icol, align 4
  %idxprom177 = sext i32 %105 to i64
  %106 = load i32, i32* @nlin, align 4
  %idxprom178 = sext i32 %106 to i64
  %arrayidx179 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom178
  %107 = load %struct.colstr*, %struct.colstr** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds %struct.colstr, %struct.colstr* %107, i64 %idxprom177
  %rcol181 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx180, i32 0, i32 1
  store i8* null, i8** %rcol181, align 8
  br label %while.cond.166

while.end.182:                                    ; preds = %while.cond.166
  br label %while.cond.183

while.cond.183:                                   ; preds = %while.body.187, %while.end.182
  %108 = load i8*, i8** @cstore, align 8
  %109 = load i8, i8* %108, align 1
  %conv184 = sext i8 %109 to i32
  %cmp185 = icmp ne i32 %conv184, 0
  br i1 %cmp185, label %while.body.187, label %while.end.189

while.body.187:                                   ; preds = %while.cond.183
  %110 = load i8*, i8** @cstore, align 8
  %incdec.ptr188 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %incdec.ptr188, i8** @cstore, align 8
  br label %while.cond.183

while.end.189:                                    ; preds = %while.cond.183
  %111 = load i8*, i8** @cstore, align 8
  %112 = load i8*, i8** @cspace, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %111 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %112 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp190 = icmp sgt i64 %sub.ptr.sub, 2000
  br i1 %cmp190, label %if.then.192, label %if.end.194

if.then.192:                                      ; preds = %while.end.189
  %call193 = call i8* (...) @chspace()
  store i8* %call193, i8** @cspace, align 8
  store i8* %call193, i8** @cstore, align 8
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.192, %while.end.189
  br label %for.inc.195

for.inc.195:                                      ; preds = %if.end.194, %sw.bb.61, %sw.bb, %while.end
  %113 = load i32, i32* @nlin, align 4
  %inc196 = add nsw i32 %113, 1
  store i32 %inc196, i32* @nlin, align 4
  br label %for.cond

for.end.197:                                      ; preds = %if.then.10, %if.then, %for.cond
  %114 = load i8*, i8** @cstore, align 8
  store i8* %114, i8** @last, align 8
  %call198 = call i32 @permute()
  %115 = load i32, i32* @textflg, align 4
  %tobool199 = icmp ne i32 %115, 0
  br i1 %tobool199, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %for.end.197
  call void @untext()
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.200, %for.end.197
  ret void
}

declare i8* @chspace(...) #1

declare i8* @gets1(i8*) #1

declare i32 @prefix(i8*, i8*) #1

declare void @readspec() #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind uwtable
define i32 @nodata(i32 %il) #0 {
entry:
  %retval = alloca i32, align 4
  %il.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 %il, i32* %il.addr, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %c, align 4
  %1 = load i32, i32* @ncol, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %il.addr, align 4
  %3 = load i32, i32* %c, align 4
  %call = call i32 @ctype(i32 %2, i32 %3)
  switch i32 %call, label %sw.epilog [
    i32 99, label %sw.bb
    i32 110, label %sw.bb
    i32 114, label %sw.bb
    i32 108, label %sw.bb
    i32 115, label %sw.bb
    i32 97, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %4 = load i32, i32* %c, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %sw.bb
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @oneh(i32 %lin) #0 {
entry:
  %retval = alloca i32, align 4
  %lin.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %icol = alloca i32, align 4
  store i32 %lin, i32* %lin.addr, align 4
  %0 = load i32, i32* %lin.addr, align 4
  %call = call i32 @ctype(i32 %0, i32 0)
  store i32 %call, i32* %k, align 4
  store i32 1, i32* %icol, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %icol, align 4
  %2 = load i32, i32* @ncol, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %4 = load i32, i32* %lin.addr, align 4
  %5 = load i32, i32* %icol, align 4
  %call1 = call i32 @ctype(i32 %4, i32 %5)
  %cmp2 = icmp ne i32 %3, %call1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %icol, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %icol, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %k, align 4
  store i32 %7, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32* @alocv(i32) #1

declare i32 @min(i32, i32) #1

declare i32 @match(i8*, i8*) #1

declare i32 @gettext(i8*, i32, i32, i8*, i8*) #1

declare i32 @ctype(i32, i32) #1

declare i32 @maknew(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @permute() #0 {
entry:
  %retval = alloca i32, align 4
  %irow = alloca i32, align 4
  %jcol = alloca i32, align 4
  %is = alloca i32, align 4
  %start = alloca i8*, align 8
  %strig = alloca i8*, align 8
  store i32 0, i32* %jcol, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.43, %entry
  %0 = load i32, i32* %jcol, align 4
  %1 = load i32, i32* @ncol, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %irow, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %irow, align 4
  %3 = load i32, i32* @nlin, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %irow, align 4
  %5 = load i32, i32* %jcol, align 4
  %call = call i32 @vspand(i32 %4, i32 %5, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.41

if.then:                                          ; preds = %for.body.3
  %6 = load i32, i32* %irow, align 4
  %call4 = call i32 @prev(i32 %6)
  store i32 %call4, i32* %is, align 4
  %7 = load i32, i32* %is, align 4
  %cmp5 = icmp slt i32 %7, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %8 = load i32, i32* %jcol, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %is, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom7
  %10 = load %struct.colstr*, %struct.colstr** %arrayidx, align 8
  %arrayidx8 = getelementptr inbounds %struct.colstr, %struct.colstr* %10, i64 %idxprom
  %col = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx8, i32 0, i32 0
  %11 = load i8*, i8** %col, align 8
  store i8* %11, i8** %start, align 8
  %12 = load i32, i32* %jcol, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load i32, i32* %is, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom10
  %14 = load %struct.colstr*, %struct.colstr** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds %struct.colstr, %struct.colstr* %14, i64 %idxprom9
  %rcol = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx12, i32 0, i32 1
  %15 = load i8*, i8** %rcol, align 8
  store i8* %15, i8** %strig, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %16 = load i32, i32* %irow, align 4
  %17 = load i32, i32* @nlin, align 4
  %cmp13 = icmp slt i32 %16, %17
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load i32, i32* %irow, align 4
  %19 = load i32, i32* %jcol, align 4
  %call14 = call i32 @vspand(i32 %18, i32 %19, i32 0)
  %tobool15 = icmp ne i32 %call14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %tobool15, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load i32, i32* %irow, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %irow, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %22 = load i8*, i8** %start, align 8
  %23 = load i32, i32* %jcol, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load i32, i32* %irow, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %irow, align 4
  %idxprom17 = sext i32 %dec to i64
  %arrayidx18 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom17
  %25 = load %struct.colstr*, %struct.colstr** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds %struct.colstr, %struct.colstr* %25, i64 %idxprom16
  %col20 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx19, i32 0, i32 0
  store i8* %22, i8** %col20, align 8
  %26 = load i8*, i8** %strig, align 8
  %27 = load i32, i32* %jcol, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = load i32, i32* %irow, align 4
  %idxprom22 = sext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom22
  %29 = load %struct.colstr*, %struct.colstr** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds %struct.colstr, %struct.colstr* %29, i64 %idxprom21
  %rcol25 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx24, i32 0, i32 1
  store i8* %26, i8** %rcol25, align 8
  br label %while.cond.26

while.cond.26:                                    ; preds = %while.body.28, %while.end
  %30 = load i32, i32* %is, align 4
  %31 = load i32, i32* %irow, align 4
  %cmp27 = icmp slt i32 %30, %31
  br i1 %cmp27, label %while.body.28, label %while.end.40

while.body.28:                                    ; preds = %while.cond.26
  %32 = load i32, i32* %jcol, align 4
  %idxprom29 = sext i32 %32 to i64
  %33 = load i32, i32* %is, align 4
  %idxprom30 = sext i32 %33 to i64
  %arrayidx31 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom30
  %34 = load %struct.colstr*, %struct.colstr** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds %struct.colstr, %struct.colstr* %34, i64 %idxprom29
  %rcol33 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx32, i32 0, i32 1
  store i8* null, i8** %rcol33, align 8
  %35 = load i32, i32* %jcol, align 4
  %idxprom34 = sext i32 %35 to i64
  %36 = load i32, i32* %is, align 4
  %idxprom35 = sext i32 %36 to i64
  %arrayidx36 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom35
  %37 = load %struct.colstr*, %struct.colstr** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds %struct.colstr, %struct.colstr* %37, i64 %idxprom34
  %col38 = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx37, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8** %col38, align 8
  %38 = load i32, i32* %is, align 4
  %call39 = call i32 @next(i32 %38)
  store i32 %call39, i32* %is, align 4
  br label %while.cond.26

while.end.40:                                     ; preds = %while.cond.26
  br label %if.end.41

if.end.41:                                        ; preds = %while.end.40, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %39 = load i32, i32* %irow, align 4
  %inc42 = add nsw i32 %39, 1
  store i32 %inc42, i32* %irow, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end
  %40 = load i32, i32* %jcol, align 4
  %inc44 = add nsw i32 %40, 1
  store i32 %inc44, i32* %jcol, align 4
  br label %for.cond

for.end.45:                                       ; preds = %for.cond
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare void @untext() #1

; Function Attrs: nounwind uwtable
define i32 @vspand(i32 %ir, i32 %ij, i32 %ifform) #0 {
entry:
  %retval = alloca i32, align 4
  %ir.addr = alloca i32, align 4
  %ij.addr = alloca i32, align 4
  %ifform.addr = alloca i32, align 4
  store i32 %ir, i32* %ir.addr, align 4
  store i32 %ij, i32* %ij.addr, align 4
  store i32 %ifform, i32* %ifform.addr, align 4
  %0 = load i32, i32* %ir.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ir.addr, align 4
  %2 = load i32, i32* @nlin, align 4
  %cmp1 = icmp sge i32 %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i32, i32* %ir.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end.3
  %5 = load i32, i32* %ifform.addr, align 4
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end.5
  %6 = load i32, i32* %ir.addr, align 4
  %7 = load i32, i32* %ij.addr, align 4
  %call = call i32 @ctype(i32 %6, i32 %7)
  %cmp7 = icmp eq i32 %call, 94
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true, %if.end.5
  %8 = load i32, i32* %ij.addr, align 4
  %idxprom10 = sext i32 %8 to i64
  %9 = load i32, i32* %ir.addr, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom11
  %10 = load %struct.colstr*, %struct.colstr** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds %struct.colstr, %struct.colstr* %10, i64 %idxprom10
  %rcol = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx13, i32 0, i32 1
  %11 = load i8*, i8** %rcol, align 8
  %cmp14 = icmp ne i8* %11, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.9
  %12 = load i32, i32* %ir.addr, align 4
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom17
  %13 = load i32, i32* %arrayidx18, align 4
  %tobool19 = icmp ne i32 %13, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.16
  %14 = load i32, i32* %ij.addr, align 4
  %idxprom22 = sext i32 %14 to i64
  %15 = load i32, i32* %ir.addr, align 4
  %idxprom23 = sext i32 %15 to i64
  %arrayidx24 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i32 0, i64 %idxprom23
  %16 = load %struct.colstr*, %struct.colstr** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds %struct.colstr, %struct.colstr* %16, i64 %idxprom22
  %col = getelementptr inbounds %struct.colstr, %struct.colstr* %arrayidx25, i32 0, i32 0
  %17 = load i8*, i8** %col, align 8
  %call26 = call i32 @vspen(i8* %17)
  store i32 %call26, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.then.15, %if.then.8, %if.then.4, %if.then.2, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @prev(i32) #1

declare void @error(i8*) #1

declare i32 @next(i32) #1

; Function Attrs: nounwind uwtable
define i32 @vspen(i8* %s) #0 {
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
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i8*, i8** %s.addr, align 8
  %call3 = call i32 @match(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  store i32 %call3, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare i32 @point(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
