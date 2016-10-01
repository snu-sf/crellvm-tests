; ModuleID = './MultiSource.Benchmarks.Prolangs-C/76.agrep.follow.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i16, %union.anon.0 }
%union.anon.0 = type { %struct.ch_set* }
%struct.ch_set = type { %struct.anon.1*, %struct.ch_set* }
%struct.anon.1 = type { i8, i8 }
%struct.rnode = type { i16, %union.anon, i16, %struct.pnode*, %struct.pnode* }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.rnode*, %struct.rnode* }
%struct.pnode = type { i32, %struct.pnode* }

@.str = private unnamed_addr constant [4 x i8] c".*(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"mk_followpos: unknown node type %d\0A\00", align 1
@pos_cnt = external global i32, align 4
@lpos = common global [0 x %struct.anon*]* null, align 8

; Function Attrs: nounwind uwtable
define i8* @extend_re(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %s1 = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  %add = add i32 %conv, 4
  %add1 = add i32 %add, 1
  %conv2 = zext i32 %add1 to i64
  %call3 = call noalias i8* @malloc(i64 %conv2) #5
  store i8* %call3, i8** %s1, align 8
  %1 = load i8*, i8** %s1, align 8
  %call4 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #5
  %2 = load i8*, i8** %s.addr, align 8
  %call5 = call i8* @strcat(i8* %call4, i8* %2) #5
  %call6 = call i8* @strcat(i8* %call5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #5
  ret i8* %call6
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @mk_followpos_1(%struct.rnode* %e, [0 x %struct.pnode*]* %fpos) #0 {
entry:
  %e.addr = alloca %struct.rnode*, align 8
  %fpos.addr = alloca [0 x %struct.pnode*]*, align 8
  %pos = alloca %struct.pnode*, align 8
  %i = alloca i32, align 4
  store %struct.rnode* %e, %struct.rnode** %e.addr, align 8
  store [0 x %struct.pnode*]* %fpos, [0 x %struct.pnode*]** %fpos.addr, align 8
  %0 = load %struct.rnode*, %struct.rnode** %e.addr, align 8
  %op = getelementptr inbounds %struct.rnode, %struct.rnode* %0, i32 0, i32 0
  %1 = load i16, i16* %op, align 2
  %conv = sext i16 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.1
    i32 5, label %sw.bb.5
    i32 4, label %sw.bb.29
    i32 3, label %sw.bb.32
    i32 1, label %sw.bb.39
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct.rnode*, %struct.rnode** %e.addr, align 8
  %lastposn = getelementptr inbounds %struct.rnode, %struct.rnode* %2, i32 0, i32 4
  %3 = load %struct.pnode*, %struct.pnode** %lastposn, align 8
  store %struct.pnode* %3, %struct.pnode** %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.1
  %4 = load %struct.pnode*, %struct.pnode** %pos, align 8
  %cmp = icmp ne %struct.pnode* %4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.pnode*, %struct.pnode** %pos, align 8
  %posnum = getelementptr inbounds %struct.pnode, %struct.pnode* %5, i32 0, i32 0
  %6 = load i32, i32* %posnum, align 4
  store i32 %6, i32* %i, align 4
  %7 = load %struct.rnode*, %struct.rnode** %e.addr, align 8
  %firstposn = getelementptr inbounds %struct.rnode, %struct.rnode* %7, i32 0, i32 3
  %8 = load %struct.pnode*, %struct.pnode** %firstposn, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %fpos.addr, align 8
  %arrayidx = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %10, i32 0, i64 %idxprom
  %11 = load %struct.pnode*, %struct.pnode** %arrayidx, align 8
  %call = call %struct.pnode* @pset_union(%struct.pnode* %8, %struct.pnode* %11)
  %12 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %fpos.addr, align 8
  %arrayidx4 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %13, i32 0, i64 %idxprom3
  store %struct.pnode* %call, %struct.pnode** %arrayidx4, align 8
  %14 = load %struct.pnode*, %struct.pnode** %pos, align 8
  %nextpos = getelementptr inbounds %struct.pnode, %struct.pnode* %14, i32 0, i32 1
  %15 = load %struct.pnode*, %struct.pnode** %nextpos, align 8
  store %struct.pnode* %15, %struct.pnode** %pos, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load %struct.rnode*, %struct.rnode** %e.addr, align 8
  %refs = getelementptr inbounds %struct.rnode, %struct.rnode* %16, i32 0, i32 1
  %child = bitcast %union.anon* %refs to %struct.rnode**
  %17 = load %struct.rnode*, %struct.rnode** %child, align 8
  %18 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %fpos.addr, align 8
  call void @mk_followpos_1(%struct.rnode* %17, [0 x %struct.pnode*]* %18)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %19 = load %struct.rnode*, %struct.rnode** %e.addr, align 8
  %refs6 = getelementptr inbounds %struct.rnode, %struct.rnode* %19, i32 0, i32 1
  %children = bitcast %union.anon* %refs6 to %struct.anon.2*
  %l_child = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children, i32 0, i32 0
  %20 = load %struct.rnode*, %struct.rnode** %l_child, align 8
  %lastposn7 = getelementptr inbounds %struct.rnode, %struct.rnode* %20, i32 0, i32 4
  %21 = load %struct.pnode*, %struct.pnode** %lastposn7, align 8
  store %struct.pnode* %21, %struct.pnode** %pos, align 8
  br label %while.cond.8

while.cond.8:                                     ; preds = %while.body.11, %sw.bb.5
  %22 = load %struct.pnode*, %struct.pnode** %pos, align 8
  %cmp9 = icmp ne %struct.pnode* %22, null
  br i1 %cmp9, label %while.body.11, label %while.end.22

while.body.11:                                    ; preds = %while.cond.8
  %23 = load %struct.pnode*, %struct.pnode** %pos, align 8
  %posnum12 = getelementptr inbounds %struct.pnode, %struct.pnode* %23, i32 0, i32 0
  %24 = load i32, i32* %posnum12, align 4
  store i32 %24, i32* %i, align 4
  %25 = load %struct.rnode*, %struct.rnode** %e.addr, align 8
  %refs13 = getelementptr inbounds %struct.rnode, %struct.rnode* %25, i32 0, i32 1
  %children14 = bitcast %union.anon* %refs13 to %struct.anon.2*
  %r_child = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children14, i32 0, i32 1
  %26 = load %struct.rnode*, %struct.rnode** %r_child, align 8
  %firstposn15 = getelementptr inbounds %struct.rnode, %struct.rnode* %26, i32 0, i32 3
  %27 = load %struct.pnode*, %struct.pnode** %firstposn15, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %28 to i64
  %29 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %fpos.addr, align 8
  %arrayidx17 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %29, i32 0, i64 %idxprom16
  %30 = load %struct.pnode*, %struct.pnode** %arrayidx17, align 8
  %call18 = call %struct.pnode* @pset_union(%struct.pnode* %27, %struct.pnode* %30)
  %31 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %31 to i64
  %32 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %fpos.addr, align 8
  %arrayidx20 = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %32, i32 0, i64 %idxprom19
  store %struct.pnode* %call18, %struct.pnode** %arrayidx20, align 8
  %33 = load %struct.pnode*, %struct.pnode** %pos, align 8
  %nextpos21 = getelementptr inbounds %struct.pnode, %struct.pnode* %33, i32 0, i32 1
  %34 = load %struct.pnode*, %struct.pnode** %nextpos21, align 8
  store %struct.pnode* %34, %struct.pnode** %pos, align 8
  br label %while.cond.8

while.end.22:                                     ; preds = %while.cond.8
  %35 = load %struct.rnode*, %struct.rnode** %e.addr, align 8
  %refs23 = getelementptr inbounds %struct.rnode, %struct.rnode* %35, i32 0, i32 1
  %children24 = bitcast %union.anon* %refs23 to %struct.anon.2*
  %l_child25 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children24, i32 0, i32 0
  %36 = load %struct.rnode*, %struct.rnode** %l_child25, align 8
  %37 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %fpos.addr, align 8
  call void @mk_followpos_1(%struct.rnode* %36, [0 x %struct.pnode*]* %37)
  %38 = load %struct.rnode*, %struct.rnode** %e.addr, align 8
  %refs26 = getelementptr inbounds %struct.rnode, %struct.rnode* %38, i32 0, i32 1
  %children27 = bitcast %union.anon* %refs26 to %struct.anon.2*
  %r_child28 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children27, i32 0, i32 1
  %39 = load %struct.rnode*, %struct.rnode** %r_child28, align 8
  %40 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %fpos.addr, align 8
  call void @mk_followpos_1(%struct.rnode* %39, [0 x %struct.pnode*]* %40)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %41 = load %struct.rnode*, %struct.rnode** %e.addr, align 8
  %refs30 = getelementptr inbounds %struct.rnode, %struct.rnode* %41, i32 0, i32 1
  %child31 = bitcast %union.anon* %refs30 to %struct.rnode**
  %42 = load %struct.rnode*, %struct.rnode** %child31, align 8
  %43 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %fpos.addr, align 8
  call void @mk_followpos_1(%struct.rnode* %42, [0 x %struct.pnode*]* %43)
  br label %sw.epilog

sw.bb.32:                                         ; preds = %entry
  %44 = load %struct.rnode*, %struct.rnode** %e.addr, align 8
  %refs33 = getelementptr inbounds %struct.rnode, %struct.rnode* %44, i32 0, i32 1
  %children34 = bitcast %union.anon* %refs33 to %struct.anon.2*
  %l_child35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children34, i32 0, i32 0
  %45 = load %struct.rnode*, %struct.rnode** %l_child35, align 8
  %46 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %fpos.addr, align 8
  call void @mk_followpos_1(%struct.rnode* %45, [0 x %struct.pnode*]* %46)
  %47 = load %struct.rnode*, %struct.rnode** %e.addr, align 8
  %refs36 = getelementptr inbounds %struct.rnode, %struct.rnode* %47, i32 0, i32 1
  %children37 = bitcast %union.anon* %refs36 to %struct.anon.2*
  %r_child38 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %children37, i32 0, i32 1
  %48 = load %struct.rnode*, %struct.rnode** %r_child38, align 8
  %49 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %fpos.addr, align 8
  call void @mk_followpos_1(%struct.rnode* %48, [0 x %struct.pnode*]* %49)
  br label %sw.epilog

sw.bb.39:                                         ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %50 = load %struct.rnode*, %struct.rnode** %e.addr, align 8
  %op40 = getelementptr inbounds %struct.rnode, %struct.rnode* %50, i32 0, i32 0
  %51 = load i16, i16* %op40, align 2
  %conv41 = sext i16 %51 to i32
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i32 %conv41)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.39, %sw.bb.32, %sw.bb.29, %while.end.22, %while.end, %sw.bb
  ret void
}

declare %struct.pnode* @pset_union(%struct.pnode*, %struct.pnode*) #3

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define [0 x %struct.pnode*]* @mk_followpos(%struct.rnode* %tree, i32 %npos) #0 {
entry:
  %retval = alloca [0 x %struct.pnode*]*, align 8
  %tree.addr = alloca %struct.rnode*, align 8
  %npos.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %fpos = alloca [0 x %struct.pnode*]*, align 8
  store %struct.rnode* %tree, %struct.rnode** %tree.addr, align 8
  store i32 %npos, i32* %npos.addr, align 4
  %0 = load %struct.rnode*, %struct.rnode** %tree.addr, align 8
  %cmp = icmp eq %struct.rnode* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %npos.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store [0 x %struct.pnode*]* null, [0 x %struct.pnode*]** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %npos.addr, align 4
  %add = add nsw i32 %2, 1
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul) #5
  %3 = bitcast i8* %call to [0 x %struct.pnode*]*
  store [0 x %struct.pnode*]* %3, [0 x %struct.pnode*]** %fpos, align 8
  %4 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %fpos, align 8
  %cmp2 = icmp eq [0 x %struct.pnode*]* %4, null
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store [0 x %struct.pnode*]* null, [0 x %struct.pnode*]** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %npos.addr, align 4
  %cmp6 = icmp sle i32 %5, %6
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %fpos, align 8
  %arrayidx = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %8, i32 0, i64 %idxprom
  store %struct.pnode* null, %struct.pnode** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.rnode*, %struct.rnode** %tree.addr, align 8
  %11 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %fpos, align 8
  call void @mk_followpos_1(%struct.rnode* %10, [0 x %struct.pnode*]* %11)
  %12 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %fpos, align 8
  store [0 x %struct.pnode*]* %12, [0 x %struct.pnode*]** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.4, %if.then
  %13 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %retval
  ret [0 x %struct.pnode*]* %13
}

; Function Attrs: nounwind uwtable
define i32 @init(i8* %s, [32 x i32]* %table) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %table.addr = alloca [32 x i32]*, align 8
  %fpos = alloca [0 x %struct.pnode*]*, align 8
  %e = alloca %struct.rnode*, align 8
  %l = alloca %struct.pnode*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store [32 x i32]* %table, [32 x i32]** %table.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i8* @extend_re(i8* %0)
  %call1 = call %struct.rnode* @parse(i8* %call)
  store %struct.rnode* %call1, %struct.rnode** %e, align 8
  %cmp = icmp eq %struct.rnode* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rnode*, %struct.rnode** %e, align 8
  %2 = load i32, i32* @pos_cnt, align 4
  %call2 = call [0 x %struct.pnode*]* @mk_followpos(%struct.rnode* %1, i32 %2)
  store [0 x %struct.pnode*]* %call2, [0 x %struct.pnode*]** %fpos, align 8
  %cmp3 = icmp eq [0 x %struct.pnode*]* %call2, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %if.end.5
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @pos_cnt, align 4
  %cmp6 = icmp sle i32 %3, %4
  br i1 %cmp6, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load [0 x %struct.pnode*]*, [0 x %struct.pnode*]** %fpos, align 8
  %arrayidx = getelementptr inbounds [0 x %struct.pnode*], [0 x %struct.pnode*]* %6, i32 0, i64 %idxprom
  %7 = load %struct.pnode*, %struct.pnode** %arrayidx, align 8
  store %struct.pnode* %7, %struct.pnode** %l, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %8 = load %struct.pnode*, %struct.pnode** %l, align 8
  %cmp8 = icmp ne %struct.pnode* %8, null
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %9 = load %struct.pnode*, %struct.pnode** %l, align 8
  %posnum = getelementptr inbounds %struct.pnode, %struct.pnode* %9, i32 0, i32 0
  %10 = load i32, i32* %posnum, align 4
  %11 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load [32 x i32]*, [32 x i32]** %table.addr, align 8
  %arrayidx12 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx12, i32 0, i64 %idxprom10
  store i32 %10, i32* %arrayidx13, align 4
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %15 = load %struct.pnode*, %struct.pnode** %l, align 8
  %nextpos = getelementptr inbounds %struct.pnode, %struct.pnode* %15, i32 0, i32 1
  %16 = load %struct.pnode*, %struct.pnode** %nextpos, align 8
  store %struct.pnode* %16, %struct.pnode** %l, align 8
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %add = add nsw i32 %17, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  %18 = load i32, i32* @pos_cnt, align 4
  store i32 %18, i32* %retval
  br label %return

return:                                           ; preds = %for.end.15, %if.then.4, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare %struct.rnode* @parse(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
