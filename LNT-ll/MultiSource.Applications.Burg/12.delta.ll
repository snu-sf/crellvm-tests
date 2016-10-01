; ModuleID = './MultiSource.Applications.Burg/12.delta.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
%struct.list = type { i8*, %struct.list* }
%struct.dimension = type { i16*, %struct.index_map, %struct.mapping*, i32, %struct.plankMap* }
%struct.index_map = type { i32, %struct.item_set** }
%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
%struct.plank = type { i8*, %struct.list*, i32 }
%struct.item = type { [4 x i16], %struct.rule* }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }

@rcsid_delta = global [47 x i8] c"$Id: delta.c 4171 2002-10-14 16:39:24Z vadve $\00", align 16
@principleCost = global i32 0, align 4
@lexical = global i32 0, align 4
@prevent_divergence = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [40 x i8] c"ERROR:  The grammar appears to diverge\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\09Relative Costs: %s(0), %s(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"\09Offending Operator: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\09Offending Tree: \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @ASSIGNCOST(i16* %l, i16* %r) #0 {
entry:
  %l.addr = alloca i16*, align 8
  %r.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16* %l, i16** %l.addr, align 8
  store i16* %r, i16** %r.addr, align 8
  %0 = load i32, i32* @lexical, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i16*, i16** %r.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i16*, i16** %l.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %6, i64 %idxprom1
  store i16 %4, i16* %arrayidx2, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i16*, i16** %r.addr, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %8, i64 0
  %9 = load i16, i16* %arrayidx3, align 2
  %10 = load i16*, i16** %l.addr, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %10, i64 0
  store i16 %9, i16* %arrayidx4, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @ADDCOST(i16* %l, i16* %r) #0 {
entry:
  %l.addr = alloca i16*, align 8
  %r.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16* %l, i16** %l.addr, align 8
  store i16* %r, i16** %r.addr, align 8
  %0 = load i32, i32* @lexical, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i16*, i16** %r.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i16*, i16** %l.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %6, i64 %idxprom1
  %7 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %7 to i32
  %add = add nsw i32 %conv3, %conv
  %conv4 = trunc i32 %add to i16
  store i16 %conv4, i16* %arrayidx2, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load i16*, i16** %r.addr, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %9, i64 0
  %10 = load i16, i16* %arrayidx5, align 2
  %conv6 = sext i16 %10 to i32
  %11 = load i16*, i16** %l.addr, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %11, i64 0
  %12 = load i16, i16* %arrayidx7, align 2
  %conv8 = sext i16 %12 to i32
  %add9 = add nsw i32 %conv8, %conv6
  %conv10 = trunc i32 %add9 to i16
  store i16 %conv10, i16* %arrayidx7, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @MINUSCOST(i16* %l, i16* %r) #0 {
entry:
  %l.addr = alloca i16*, align 8
  %r.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16* %l, i16** %l.addr, align 8
  store i16* %r, i16** %r.addr, align 8
  %0 = load i32, i32* @lexical, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i16*, i16** %r.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i16*, i16** %l.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %6, i64 %idxprom1
  %7 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %7 to i32
  %sub = sub nsw i32 %conv3, %conv
  %conv4 = trunc i32 %sub to i16
  store i16 %conv4, i16* %arrayidx2, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load i16*, i16** %r.addr, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %9, i64 0
  %10 = load i16, i16* %arrayidx5, align 2
  %conv6 = sext i16 %10 to i32
  %11 = load i16*, i16** %l.addr, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %11, i64 0
  %12 = load i16, i16* %arrayidx7, align 2
  %conv8 = sext i16 %12 to i32
  %sub9 = sub nsw i32 %conv8, %conv6
  %conv10 = trunc i32 %sub9 to i16
  store i16 %conv10, i16* %arrayidx7, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @ZEROCOST(i16* %x) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16* %x, i16** %x.addr, align 8
  %0 = load i32, i32* @lexical, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i16*, i16** %x.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i16*, i16** %x.addr, align 8
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 0
  store i16 0, i16* %arrayidx1, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @LESSCOST(i16* %l, i16* %r) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca i16*, align 8
  %r.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16* %l, i16** %l.addr, align 8
  store i16* %r, i16** %r.addr, align 8
  %0 = load i32, i32* @lexical, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else.17

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i16*, i16** %l.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i16*, i16** %r.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %6, i64 %idxprom1
  %7 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %7 to i32
  %cmp4 = icmp slt i32 %conv, %conv3
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load i16*, i16** %l.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %9, i64 %idxprom7
  %10 = load i16, i16* %arrayidx8, align 2
  %conv9 = sext i16 %10 to i32
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load i16*, i16** %r.addr, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %12, i64 %idxprom10
  %13 = load i16, i16* %arrayidx11, align 2
  %conv12 = sext i16 %13 to i32
  %cmp13 = icmp sgt i32 %conv9, %conv12
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

if.else.17:                                       ; preds = %entry
  %15 = load i16*, i16** %l.addr, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %15, i64 0
  %16 = load i16, i16* %arrayidx18, align 2
  %conv19 = sext i16 %16 to i32
  %17 = load i16*, i16** %r.addr, align 8
  %arrayidx20 = getelementptr inbounds i16, i16* %17, i64 0
  %18 = load i16, i16* %arrayidx20, align 2
  %conv21 = sext i16 %18 to i32
  %cmp22 = icmp slt i32 %conv19, %conv21
  %conv23 = zext i1 %cmp22 to i32
  store i32 %conv23, i32* %retval
  br label %return

return:                                           ; preds = %if.else.17, %for.end, %if.then.15, %if.then.6
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @EQUALCOST(i16* %l, i16* %r) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca i16*, align 8
  %r.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16* %l, i16** %l.addr, align 8
  store i16* %r, i16** %r.addr, align 8
  %0 = load i32, i32* @lexical, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i16*, i16** %l.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i16*, i16** %r.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %6, i64 %idxprom1
  %7 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %7 to i32
  %cmp4 = icmp ne i32 %conv, %conv3
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %9 = load i16*, i16** %l.addr, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %9, i64 0
  %10 = load i16, i16* %arrayidx7, align 2
  %conv8 = sext i16 %10 to i32
  %11 = load i16*, i16** %r.addr, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %11, i64 0
  %12 = load i16, i16* %arrayidx9, align 2
  %conv10 = sext i16 %12 to i32
  %cmp11 = icmp eq i32 %conv8, %conv10
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %for.end, %if.then.6
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define void @CHECKDIVERGE(i16* %c, %struct.item_set* %its, i32 %nt, i32 %base) #0 {
entry:
  %c.addr = alloca i16*, align 8
  %its.addr = alloca %struct.item_set*, align 8
  %nt.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ntname = alloca [100 x i8], align 16
  %basename = alloca [100 x i8], align 16
  %ntname24 = alloca [100 x i8], align 16
  %basename25 = alloca [100 x i8], align 16
  store i16* %c, i16** %c.addr, align 8
  store %struct.item_set* %its, %struct.item_set** %its.addr, align 8
  store i32 %nt, i32* %nt.addr, align 4
  store i32 %base, i32* %base.addr, align 4
  %0 = load i32, i32* @prevent_divergence, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.42

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @lexical, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.1
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i16*, i16** %c.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %5 to i32
  %6 = load i32, i32* @prevent_divergence, align 4
  %cmp3 = icmp sgt i32 %conv, %6
  br i1 %cmp3, label %if.then.5, label %if.end.18

if.then.5:                                        ; preds = %for.body
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %ntname, i32 0, i32 0
  %7 = load i32, i32* %nt.addr, align 4
  %call = call i32 @nonTerminalName(i8* %arraydecay, i32 %7)
  %arraydecay6 = getelementptr inbounds [100 x i8], [100 x i8]* %basename, i32 0, i32 0
  %8 = load i32, i32* %base.addr, align 4
  %call7 = call i32 @nonTerminalName(i8* %arraydecay6, i32 %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay9 = getelementptr inbounds [100 x i8], [100 x i8]* %basename, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [100 x i8], [100 x i8]* %ntname, i32 0, i32 0
  %11 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %11 to i64
  %12 = load i16*, i16** %c.addr, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %12, i64 %idxprom11
  %13 = load i16, i16* %arrayidx12, align 2
  %conv13 = sext i16 %13 to i32
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay9, i8* %arraydecay10, i32 %conv13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load %struct.item_set*, %struct.item_set** %its.addr, align 8
  %op = getelementptr inbounds %struct.item_set, %struct.item_set* %15, i32 0, i32 2
  %16 = load %struct.operator*, %struct.operator** %op, align 8
  %name = getelementptr inbounds %struct.operator, %struct.operator* %16, i32 0, i32 0
  %17 = load i8*, i8** %name, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load %struct.item_set*, %struct.item_set** %its.addr, align 8
  call void @printRepresentative(%struct._IO_FILE* %19, %struct.item_set* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

if.end.18:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.42

if.else:                                          ; preds = %if.end
  %23 = load i16*, i16** %c.addr, align 8
  %arrayidx19 = getelementptr inbounds i16, i16* %23, i64 0
  %24 = load i16, i16* %arrayidx19, align 2
  %conv20 = sext i16 %24 to i32
  %25 = load i32, i32* @prevent_divergence, align 4
  %cmp21 = icmp sgt i32 %conv20, %25
  br i1 %cmp21, label %if.then.23, label %if.end.41

if.then.23:                                       ; preds = %if.else
  %arraydecay26 = getelementptr inbounds [100 x i8], [100 x i8]* %ntname24, i32 0, i32 0
  %26 = load i32, i32* %nt.addr, align 4
  %call27 = call i32 @nonTerminalName(i8* %arraydecay26, i32 %26)
  %arraydecay28 = getelementptr inbounds [100 x i8], [100 x i8]* %basename25, i32 0, i32 0
  %27 = load i32, i32* %base.addr, align 4
  %call29 = call i32 @nonTerminalName(i8* %arraydecay28, i32 %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay31 = getelementptr inbounds [100 x i8], [100 x i8]* %basename25, i32 0, i32 0
  %arraydecay32 = getelementptr inbounds [100 x i8], [100 x i8]* %ntname24, i32 0, i32 0
  %30 = load i16*, i16** %c.addr, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %30, i64 0
  %31 = load i16, i16* %arrayidx33, align 2
  %conv34 = sext i16 %31 to i32
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay31, i8* %arraydecay32, i32 %conv34)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load %struct.item_set*, %struct.item_set** %its.addr, align 8
  %op36 = getelementptr inbounds %struct.item_set, %struct.item_set* %33, i32 0, i32 2
  %34 = load %struct.operator*, %struct.operator** %op36, align 8
  %name37 = getelementptr inbounds %struct.operator, %struct.operator* %34, i32 0, i32 0
  %35 = load i8*, i8** %name37, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* %35)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = load %struct.item_set*, %struct.item_set** %its.addr, align 8
  call void @printRepresentative(%struct._IO_FILE* %37, %struct.item_set* %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

if.end.41:                                        ; preds = %if.else
  br label %if.end.42

if.end.42:                                        ; preds = %if.then, %if.end.41, %for.end
  ret void
}

declare i32 @nonTerminalName(i8*, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @printRepresentative(%struct._IO_FILE*, %struct.item_set*) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
