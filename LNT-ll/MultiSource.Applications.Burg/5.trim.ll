; ModuleID = './MultiSource.Applications.Burg/5.trim.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.relation = type { %struct.rule*, [4 x i16], i32, [4 x i16], i32, i32 }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
%struct.list = type { i8*, %struct.list* }
%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
%struct.plank = type { i8*, %struct.list*, i32 }
%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
%struct.dimension = type { i16*, %struct.index_map, %struct.mapping*, i32, %struct.plankMap* }
%struct.index_map = type { i32, %struct.item_set** }
%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.item = type { [4 x i16], %struct.rule* }

@rcsid_trim = global [46 x i8] c"$Id: trim.c 4171 2002-10-14 16:39:24Z vadve $\00", align 16
@trimflag = global i32 0, align 4
@debugTrim = global i32 0, align 4
@allpairs = common global %struct.relation** null, align 8
@chainrules = external global %struct.list*, align 8
@max_nonterminal = external global i32, align 4
@stub_rule = external global %struct.rule, align 8
@trim.vec = internal global i16* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"Begin Trim\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Trimmed Chain (%d,%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"End Trim\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"{ %d %ld %d %ld }\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Dumping AllPairs\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@rules = external global %struct.list*, align 8

; Function Attrs: nounwind uwtable
define void @findAllPairs() #0 {
entry:
  %pl = alloca %struct.list*, align 8
  %changes = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca %struct.rule*, align 8
  %rhs = alloca i32, align 4
  %lhs = alloca i32, align 4
  %r = alloca %struct.relation*, align 8
  %r15 = alloca %struct.relation*, align 8
  %p29 = alloca %struct.rule*, align 8
  %rhs31 = alloca i32, align 4
  %lhs36 = alloca i32, align 4
  %i = alloca i32, align 4
  %r42 = alloca %struct.relation*, align 8
  %s = alloca %struct.relation*, align 8
  %dc = alloca [4 x i16], align 2
  %call = call %struct.relation** @newAllPairs()
  store %struct.relation** %call, %struct.relation*** @allpairs, align 8
  %0 = load %struct.list*, %struct.list** @chainrules, align 8
  store %struct.list* %0, %struct.list** %pl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.list*, %struct.list** %pl, align 8
  %tobool = icmp ne %struct.list* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.list*, %struct.list** %pl, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  %3 = load i8*, i8** %x, align 8
  %4 = bitcast i8* %3 to %struct.rule*
  store %struct.rule* %4, %struct.rule** %p, align 8
  %5 = load %struct.rule*, %struct.rule** %p, align 8
  %pat = getelementptr inbounds %struct.rule, %struct.rule* %5, i32 0, i32 5
  %6 = load %struct.pattern*, %struct.pattern** %pat, align 8
  %children = getelementptr inbounds %struct.pattern, %struct.pattern* %6, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children, i32 0, i64 0
  %7 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %7, i32 0, i32 1
  %8 = load i32, i32* %num, align 4
  store i32 %8, i32* %rhs, align 4
  %9 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs1 = getelementptr inbounds %struct.rule, %struct.rule* %9, i32 0, i32 4
  %10 = load %struct.nonterminal*, %struct.nonterminal** %lhs1, align 8
  %num2 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %10, i32 0, i32 1
  %11 = load i32, i32* %num2, align 4
  store i32 %11, i32* %lhs, align 4
  %12 = load i32, i32* %rhs, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32, i32* %lhs, align 4
  %idxprom3 = sext i32 %13 to i64
  %14 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx4 = getelementptr inbounds %struct.relation*, %struct.relation** %14, i64 %idxprom3
  %15 = load %struct.relation*, %struct.relation** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds %struct.relation, %struct.relation* %15, i64 %idxprom
  store %struct.relation* %arrayidx5, %struct.relation** %r, align 8
  %16 = load %struct.rule*, %struct.rule** %p, align 8
  %delta = getelementptr inbounds %struct.rule, %struct.rule* %16, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i32 0
  %17 = load %struct.relation*, %struct.relation** %r, align 8
  %chain = getelementptr inbounds %struct.relation, %struct.relation* %17, i32 0, i32 1
  %arraydecay6 = getelementptr inbounds [4 x i16], [4 x i16]* %chain, i32 0, i32 0
  %call7 = call i32 @LESSCOST(i16* %arraydecay, i16* %arraydecay6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %18 = load %struct.relation*, %struct.relation** %r, align 8
  %chain9 = getelementptr inbounds %struct.relation, %struct.relation* %18, i32 0, i32 1
  %arraydecay10 = getelementptr inbounds [4 x i16], [4 x i16]* %chain9, i32 0, i32 0
  %19 = load %struct.rule*, %struct.rule** %p, align 8
  %delta11 = getelementptr inbounds %struct.rule, %struct.rule* %19, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [4 x i16], [4 x i16]* %delta11, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay10, i16* %arraydecay12)
  %20 = load %struct.rule*, %struct.rule** %p, align 8
  %21 = load %struct.relation*, %struct.relation** %r, align 8
  %rule = getelementptr inbounds %struct.relation, %struct.relation* %21, i32 0, i32 0
  store %struct.rule* %20, %struct.rule** %rule, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load %struct.list*, %struct.list** %pl, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %22, i32 0, i32 1
  %23 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %23, %struct.list** %pl, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.23, %for.end
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* @max_nonterminal, align 4
  %cmp = icmp slt i32 %24, %25
  br i1 %cmp, label %for.body.14, label %for.end.24

for.body.14:                                      ; preds = %for.cond.13
  %26 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %26 to i64
  %27 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %27 to i64
  %28 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx18 = getelementptr inbounds %struct.relation*, %struct.relation** %28, i64 %idxprom17
  %29 = load %struct.relation*, %struct.relation** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds %struct.relation, %struct.relation* %29, i64 %idxprom16
  store %struct.relation* %arrayidx19, %struct.relation** %r15, align 8
  %30 = load %struct.relation*, %struct.relation** %r15, align 8
  %chain20 = getelementptr inbounds %struct.relation, %struct.relation* %30, i32 0, i32 1
  %arraydecay21 = getelementptr inbounds [4 x i16], [4 x i16]* %chain20, i32 0, i32 0
  call void @ZEROCOST(i16* %arraydecay21)
  %31 = load %struct.relation*, %struct.relation** %r15, align 8
  %rule22 = getelementptr inbounds %struct.relation, %struct.relation* %31, i32 0, i32 0
  store %struct.rule* @stub_rule, %struct.rule** %rule22, align 8
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.14
  %32 = load i32, i32* %j, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.13

for.end.24:                                       ; preds = %for.cond.13
  store i32 1, i32* %changes, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.79, %for.end.24
  %33 = load i32, i32* %changes, align 4
  %tobool25 = icmp ne i32 %33, 0
  br i1 %tobool25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %changes, align 4
  %34 = load %struct.list*, %struct.list** @chainrules, align 8
  store %struct.list* %34, %struct.list** %pl, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.77, %while.body
  %35 = load %struct.list*, %struct.list** %pl, align 8
  %tobool27 = icmp ne %struct.list* %35, null
  br i1 %tobool27, label %for.body.28, label %for.end.79

for.body.28:                                      ; preds = %for.cond.26
  %36 = load %struct.list*, %struct.list** %pl, align 8
  %x30 = getelementptr inbounds %struct.list, %struct.list* %36, i32 0, i32 0
  %37 = load i8*, i8** %x30, align 8
  %38 = bitcast i8* %37 to %struct.rule*
  store %struct.rule* %38, %struct.rule** %p29, align 8
  %39 = load %struct.rule*, %struct.rule** %p29, align 8
  %pat32 = getelementptr inbounds %struct.rule, %struct.rule* %39, i32 0, i32 5
  %40 = load %struct.pattern*, %struct.pattern** %pat32, align 8
  %children33 = getelementptr inbounds %struct.pattern, %struct.pattern* %40, i32 0, i32 2
  %arrayidx34 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children33, i32 0, i64 0
  %41 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx34, align 8
  %num35 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %41, i32 0, i32 1
  %42 = load i32, i32* %num35, align 4
  store i32 %42, i32* %rhs31, align 4
  %43 = load %struct.rule*, %struct.rule** %p29, align 8
  %lhs37 = getelementptr inbounds %struct.rule, %struct.rule* %43, i32 0, i32 4
  %44 = load %struct.nonterminal*, %struct.nonterminal** %lhs37, align 8
  %num38 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %44, i32 0, i32 1
  %45 = load i32, i32* %num38, align 4
  store i32 %45, i32* %lhs36, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.74, %for.body.28
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* @max_nonterminal, align 4
  %cmp40 = icmp slt i32 %46, %47
  br i1 %cmp40, label %for.body.41, label %for.end.76

for.body.41:                                      ; preds = %for.cond.39
  %48 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %48 to i64
  %49 = load i32, i32* %rhs31, align 4
  %idxprom44 = sext i32 %49 to i64
  %50 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx45 = getelementptr inbounds %struct.relation*, %struct.relation** %50, i64 %idxprom44
  %51 = load %struct.relation*, %struct.relation** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds %struct.relation, %struct.relation* %51, i64 %idxprom43
  store %struct.relation* %arrayidx46, %struct.relation** %r42, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %52 to i64
  %53 = load i32, i32* %lhs36, align 4
  %idxprom48 = sext i32 %53 to i64
  %54 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx49 = getelementptr inbounds %struct.relation*, %struct.relation** %54, i64 %idxprom48
  %55 = load %struct.relation*, %struct.relation** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds %struct.relation, %struct.relation* %55, i64 %idxprom47
  store %struct.relation* %arrayidx50, %struct.relation** %s, align 8
  %56 = load %struct.relation*, %struct.relation** %r42, align 8
  %rule51 = getelementptr inbounds %struct.relation, %struct.relation* %56, i32 0, i32 0
  %57 = load %struct.rule*, %struct.rule** %rule51, align 8
  %tobool52 = icmp ne %struct.rule* %57, null
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %for.body.41
  br label %for.inc.74

if.end.54:                                        ; preds = %for.body.41
  %arraydecay55 = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  %58 = load %struct.rule*, %struct.rule** %p29, align 8
  %delta56 = getelementptr inbounds %struct.rule, %struct.rule* %58, i32 0, i32 0
  %arraydecay57 = getelementptr inbounds [4 x i16], [4 x i16]* %delta56, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay55, i16* %arraydecay57)
  %arraydecay58 = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  %59 = load %struct.relation*, %struct.relation** %r42, align 8
  %chain59 = getelementptr inbounds %struct.relation, %struct.relation* %59, i32 0, i32 1
  %arraydecay60 = getelementptr inbounds [4 x i16], [4 x i16]* %chain59, i32 0, i32 0
  call void @ADDCOST(i16* %arraydecay58, i16* %arraydecay60)
  %60 = load %struct.relation*, %struct.relation** %s, align 8
  %rule61 = getelementptr inbounds %struct.relation, %struct.relation* %60, i32 0, i32 0
  %61 = load %struct.rule*, %struct.rule** %rule61, align 8
  %tobool62 = icmp ne %struct.rule* %61, null
  br i1 %tobool62, label %lor.lhs.false, label %if.then.68

lor.lhs.false:                                    ; preds = %if.end.54
  %arraydecay63 = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  %62 = load %struct.relation*, %struct.relation** %s, align 8
  %chain64 = getelementptr inbounds %struct.relation, %struct.relation* %62, i32 0, i32 1
  %arraydecay65 = getelementptr inbounds [4 x i16], [4 x i16]* %chain64, i32 0, i32 0
  %call66 = call i32 @LESSCOST(i16* %arraydecay63, i16* %arraydecay65)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.73

if.then.68:                                       ; preds = %lor.lhs.false, %if.end.54
  %63 = load %struct.rule*, %struct.rule** %p29, align 8
  %64 = load %struct.relation*, %struct.relation** %s, align 8
  %rule69 = getelementptr inbounds %struct.relation, %struct.relation* %64, i32 0, i32 0
  store %struct.rule* %63, %struct.rule** %rule69, align 8
  %65 = load %struct.relation*, %struct.relation** %s, align 8
  %chain70 = getelementptr inbounds %struct.relation, %struct.relation* %65, i32 0, i32 1
  %arraydecay71 = getelementptr inbounds [4 x i16], [4 x i16]* %chain70, i32 0, i32 0
  %arraydecay72 = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay71, i16* %arraydecay72)
  store i32 1, i32* %changes, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.68, %lor.lhs.false
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73, %if.then.53
  %66 = load i32, i32* %i, align 4
  %inc75 = add nsw i32 %66, 1
  store i32 %inc75, i32* %i, align 4
  br label %for.cond.39

for.end.76:                                       ; preds = %for.cond.39
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end.76
  %67 = load %struct.list*, %struct.list** %pl, align 8
  %next78 = getelementptr inbounds %struct.list, %struct.list* %67, i32 0, i32 1
  %68 = load %struct.list*, %struct.list** %next78, align 8
  store %struct.list* %68, %struct.list** %pl, align 8
  br label %for.cond.26

for.end.79:                                       ; preds = %for.cond.26
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @findAllNexts()
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.relation** @newAllPairs() #0 {
entry:
  %i = alloca i32, align 4
  %rv = alloca %struct.relation**, align 8
  %0 = load i32, i32* @max_nonterminal, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  %call = call i8* @zalloc(i32 %conv1)
  %1 = bitcast i8* %call to %struct.relation**
  store %struct.relation** %1, %struct.relation*** %rv, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @max_nonterminal, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* @max_nonterminal, align 4
  %conv3 = sext i32 %4 to i64
  %mul4 = mul i64 %conv3, 40
  %conv5 = trunc i64 %mul4 to i32
  %call6 = call i8* @zalloc(i32 %conv5)
  %5 = bitcast i8* %call6 to %struct.relation*
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.relation**, %struct.relation*** %rv, align 8
  %arrayidx = getelementptr inbounds %struct.relation*, %struct.relation** %7, i64 %idxprom
  store %struct.relation* %5, %struct.relation** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.relation**, %struct.relation*** %rv, align 8
  ret %struct.relation** %9
}

declare i32 @LESSCOST(i16*, i16*) #1

declare void @ASSIGNCOST(i16*, i16*) #1

declare void @ZEROCOST(i16*) #1

declare void @ADDCOST(i16*, i16*) #1

; Function Attrs: nounwind uwtable
define internal void @findAllNexts() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %last = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @max_nonterminal, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %last, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* @max_nonterminal, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx = getelementptr inbounds %struct.relation*, %struct.relation** %6, i64 %idxprom4
  %7 = load %struct.relation*, %struct.relation** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds %struct.relation, %struct.relation* %7, i64 %idxprom
  %rule = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx5, i32 0, i32 0
  %8 = load %struct.rule*, %struct.rule** %rule, align 8
  %tobool = icmp ne %struct.rule* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %last, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx8 = getelementptr inbounds %struct.relation*, %struct.relation** %12, i64 %idxprom7
  %13 = load %struct.relation*, %struct.relation** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds %struct.relation, %struct.relation* %13, i64 %idxprom6
  %nextchain = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx9, i32 0, i32 2
  store i32 %9, i32* %nextchain, align 4
  %14 = load i32, i32* %j, align 4
  store i32 %14, i32* %last, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %16, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @trim(%struct.item_set* %t) #0 {
entry:
  %t.addr = alloca %struct.item_set*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %last = alloca i32, align 4
  %tmp = alloca [4 x i16], align 2
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.item_set* %t, %struct.item_set** %t.addr, align 8
  %0 = load i32, i32* @debugTrim, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @debugTrim, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  call void @dumpItem_Set(%struct.item_set* %2)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  store i32 0, i32* %last, align 4
  %3 = load i16*, i16** @trim.vec, align 8
  %tobool4 = icmp ne i16* %3, null
  br i1 %tobool4, label %if.end.8, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  %4 = load i32, i32* @max_nonterminal, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 2
  %conv6 = trunc i64 %mul to i32
  %call7 = call i8* @zalloc(i32 %conv6)
  %5 = bitcast i8* %call7 to i16*
  store i16* %5, i16** @trim.vec, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end.3
  store i32 1, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %6 = load i32, i32* %m, align 4
  %7 = load i32, i32* @max_nonterminal, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %m, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %virgin = getelementptr inbounds %struct.item_set, %struct.item_set* %9, i32 0, i32 6
  %10 = load %struct.item*, %struct.item** %virgin, align 8
  %arrayidx = getelementptr inbounds %struct.item, %struct.item* %10, i64 %idxprom
  %rule = getelementptr inbounds %struct.item, %struct.item* %arrayidx, i32 0, i32 1
  %11 = load %struct.rule*, %struct.rule** %rule, align 8
  %tobool10 = icmp ne %struct.rule* %11, null
  br i1 %tobool10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %for.body
  %12 = load i32, i32* %m, align 4
  %conv12 = trunc i32 %12 to i16
  %13 = load i32, i32* %last, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %last, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load i16*, i16** @trim.vec, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %14, i64 %idxprom13
  store i16 %conv12, i16* %arrayidx14, align 2
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %15 = load i32, i32* %m, align 4
  %inc16 = add nsw i32 %15, 1
  store i32 %inc16, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %m, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.152, %for.end
  %16 = load i32, i32* %m, align 4
  %17 = load i32, i32* %last, align 4
  %cmp18 = icmp slt i32 %16, %17
  br i1 %cmp18, label %for.body.20, label %for.end.154

for.body.20:                                      ; preds = %for.cond.17
  %18 = load i32, i32* %m, align 4
  %idxprom23 = sext i32 %18 to i64
  %19 = load i16*, i16** @trim.vec, align 8
  %arrayidx24 = getelementptr inbounds i16, i16* %19, i64 %idxprom23
  %20 = load i16, i16* %arrayidx24, align 2
  %conv25 = sext i16 %20 to i32
  store i32 %conv25, i32* %i, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %21 to i64
  %22 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx27 = getelementptr inbounds %struct.relation*, %struct.relation** %22, i64 %idxprom26
  %23 = load %struct.relation*, %struct.relation** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds %struct.relation, %struct.relation* %23, i64 0
  %nextchain = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx28, i32 0, i32 2
  %24 = load i32, i32* %nextchain, align 4
  store i32 %24, i32* %j, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.76, %for.body.20
  %25 = load i32, i32* %j, align 4
  %tobool30 = icmp ne i32 %25, 0
  br i1 %tobool30, label %for.body.31, label %for.end.82

for.body.31:                                      ; preds = %for.cond.29
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %j, align 4
  %cmp32 = icmp eq i32 %26, %27
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.body.31
  br label %for.inc.76

if.end.35:                                        ; preds = %for.body.31
  %28 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %28 to i64
  %29 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %virgin37 = getelementptr inbounds %struct.item_set, %struct.item_set* %29, i32 0, i32 6
  %30 = load %struct.item*, %struct.item** %virgin37, align 8
  %arrayidx38 = getelementptr inbounds %struct.item, %struct.item* %30, i64 %idxprom36
  %rule39 = getelementptr inbounds %struct.item, %struct.item* %arrayidx38, i32 0, i32 1
  %31 = load %struct.rule*, %struct.rule** %rule39, align 8
  %tobool40 = icmp ne %struct.rule* %31, null
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.end.35
  br label %for.inc.76

if.end.42:                                        ; preds = %if.end.35
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %tmp, i32 0, i32 0
  %32 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %32 to i64
  %33 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %virgin44 = getelementptr inbounds %struct.item_set, %struct.item_set* %33, i32 0, i32 6
  %34 = load %struct.item*, %struct.item** %virgin44, align 8
  %arrayidx45 = getelementptr inbounds %struct.item, %struct.item* %34, i64 %idxprom43
  %delta = getelementptr inbounds %struct.item, %struct.item* %arrayidx45, i32 0, i32 0
  %arraydecay46 = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay, i16* %arraydecay46)
  %arraydecay47 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp, i32 0, i32 0
  %35 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %35 to i64
  %36 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %36 to i64
  %37 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx50 = getelementptr inbounds %struct.relation*, %struct.relation** %37, i64 %idxprom49
  %38 = load %struct.relation*, %struct.relation** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds %struct.relation, %struct.relation* %38, i64 %idxprom48
  %chain = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx51, i32 0, i32 1
  %arraydecay52 = getelementptr inbounds [4 x i16], [4 x i16]* %chain, i32 0, i32 0
  call void @ADDCOST(i16* %arraydecay47, i16* %arraydecay52)
  %39 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %39 to i64
  %40 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %virgin54 = getelementptr inbounds %struct.item_set, %struct.item_set* %40, i32 0, i32 6
  %41 = load %struct.item*, %struct.item** %virgin54, align 8
  %arrayidx55 = getelementptr inbounds %struct.item, %struct.item* %41, i64 %idxprom53
  %delta56 = getelementptr inbounds %struct.item, %struct.item* %arrayidx55, i32 0, i32 0
  %arraydecay57 = getelementptr inbounds [4 x i16], [4 x i16]* %delta56, i32 0, i32 0
  %arraydecay58 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp, i32 0, i32 0
  %call59 = call i32 @LESSCOST(i16* %arraydecay57, i16* %arraydecay58)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.end.75, label %if.then.61

if.then.61:                                       ; preds = %if.end.42
  %42 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %42 to i64
  %43 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %virgin63 = getelementptr inbounds %struct.item_set, %struct.item_set* %43, i32 0, i32 6
  %44 = load %struct.item*, %struct.item** %virgin63, align 8
  %arrayidx64 = getelementptr inbounds %struct.item, %struct.item* %44, i64 %idxprom62
  %rule65 = getelementptr inbounds %struct.item, %struct.item* %arrayidx64, i32 0, i32 1
  store %struct.rule* null, %struct.rule** %rule65, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %45 to i64
  %46 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %virgin67 = getelementptr inbounds %struct.item_set, %struct.item_set* %46, i32 0, i32 6
  %47 = load %struct.item*, %struct.item** %virgin67, align 8
  %arrayidx68 = getelementptr inbounds %struct.item, %struct.item* %47, i64 %idxprom66
  %delta69 = getelementptr inbounds %struct.item, %struct.item* %arrayidx68, i32 0, i32 0
  %arraydecay70 = getelementptr inbounds [4 x i16], [4 x i16]* %delta69, i32 0, i32 0
  call void @ZEROCOST(i16* %arraydecay70)
  %48 = load i32, i32* @debugTrim, align 4
  %tobool71 = icmp ne i32 %48, 0
  br i1 %tobool71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.then.61
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %j, align 4
  %call73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 %49, i32 %50)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.then.61
  br label %outer

if.end.75:                                        ; preds = %if.end.42
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75, %if.then.41, %if.then.34
  %51 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %51 to i64
  %52 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %52 to i64
  %53 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx79 = getelementptr inbounds %struct.relation*, %struct.relation** %53, i64 %idxprom78
  %54 = load %struct.relation*, %struct.relation** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds %struct.relation, %struct.relation* %54, i64 %idxprom77
  %nextchain81 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx80, i32 0, i32 2
  %55 = load i32, i32* %nextchain81, align 4
  store i32 %55, i32* %j, align 4
  br label %for.cond.29

for.end.82:                                       ; preds = %for.cond.29
  %56 = load i32, i32* @trimflag, align 4
  %tobool83 = icmp ne i32 %56, 0
  br i1 %tobool83, label %if.end.85, label %if.then.84

if.then.84:                                       ; preds = %for.end.82
  br label %for.inc.152

if.end.85:                                        ; preds = %for.end.82
  store i32 0, i32* %n, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.149, %if.end.85
  %57 = load i32, i32* %n, align 4
  %58 = load i32, i32* %last, align 4
  %cmp87 = icmp slt i32 %57, %58
  br i1 %cmp87, label %for.body.89, label %for.end.151

for.body.89:                                      ; preds = %for.cond.86
  %59 = load i32, i32* %n, align 4
  %idxprom90 = sext i32 %59 to i64
  %60 = load i16*, i16** @trim.vec, align 8
  %arrayidx91 = getelementptr inbounds i16, i16* %60, i64 %idxprom90
  %61 = load i16, i16* %arrayidx91, align 2
  %conv92 = sext i16 %61 to i32
  store i32 %conv92, i32* %j, align 4
  %62 = load i32, i32* %i, align 4
  %63 = load i32, i32* %j, align 4
  %cmp93 = icmp eq i32 %62, %63
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %for.body.89
  br label %for.inc.149

if.end.96:                                        ; preds = %for.body.89
  %64 = load i32, i32* %j, align 4
  %idxprom97 = sext i32 %64 to i64
  %65 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %virgin98 = getelementptr inbounds %struct.item_set, %struct.item_set* %65, i32 0, i32 6
  %66 = load %struct.item*, %struct.item** %virgin98, align 8
  %arrayidx99 = getelementptr inbounds %struct.item, %struct.item* %66, i64 %idxprom97
  %rule100 = getelementptr inbounds %struct.item, %struct.item* %arrayidx99, i32 0, i32 1
  %67 = load %struct.rule*, %struct.rule** %rule100, align 8
  %tobool101 = icmp ne %struct.rule* %67, null
  br i1 %tobool101, label %if.end.103, label %if.then.102

if.then.102:                                      ; preds = %if.end.96
  br label %for.inc.149

if.end.103:                                       ; preds = %if.end.96
  %68 = load i32, i32* %j, align 4
  %idxprom104 = sext i32 %68 to i64
  %69 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %69 to i64
  %70 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx106 = getelementptr inbounds %struct.relation*, %struct.relation** %70, i64 %idxprom105
  %71 = load %struct.relation*, %struct.relation** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds %struct.relation, %struct.relation* %71, i64 %idxprom104
  %sibComputed = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx107, i32 0, i32 5
  %72 = load i32, i32* %sibComputed, align 4
  %tobool108 = icmp ne i32 %72, 0
  br i1 %tobool108, label %if.end.110, label %if.then.109

if.then.109:                                      ; preds = %if.end.103
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %j, align 4
  call void @siblings(i32 %73, i32 %74)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %if.end.103
  %75 = load i32, i32* %j, align 4
  %idxprom111 = sext i32 %75 to i64
  %76 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %76 to i64
  %77 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx113 = getelementptr inbounds %struct.relation*, %struct.relation** %77, i64 %idxprom112
  %78 = load %struct.relation*, %struct.relation** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds %struct.relation, %struct.relation* %78, i64 %idxprom111
  %sibFlag = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx114, i32 0, i32 4
  %79 = load i32, i32* %sibFlag, align 4
  %tobool115 = icmp ne i32 %79, 0
  br i1 %tobool115, label %if.end.117, label %if.then.116

if.then.116:                                      ; preds = %if.end.110
  br label %for.inc.149

if.end.117:                                       ; preds = %if.end.110
  %arraydecay118 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp, i32 0, i32 0
  %80 = load i32, i32* %j, align 4
  %idxprom119 = sext i32 %80 to i64
  %81 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %virgin120 = getelementptr inbounds %struct.item_set, %struct.item_set* %81, i32 0, i32 6
  %82 = load %struct.item*, %struct.item** %virgin120, align 8
  %arrayidx121 = getelementptr inbounds %struct.item, %struct.item* %82, i64 %idxprom119
  %delta122 = getelementptr inbounds %struct.item, %struct.item* %arrayidx121, i32 0, i32 0
  %arraydecay123 = getelementptr inbounds [4 x i16], [4 x i16]* %delta122, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay118, i16* %arraydecay123)
  %arraydecay124 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp, i32 0, i32 0
  %83 = load i32, i32* %j, align 4
  %idxprom125 = sext i32 %83 to i64
  %84 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %84 to i64
  %85 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx127 = getelementptr inbounds %struct.relation*, %struct.relation** %85, i64 %idxprom126
  %86 = load %struct.relation*, %struct.relation** %arrayidx127, align 8
  %arrayidx128 = getelementptr inbounds %struct.relation, %struct.relation* %86, i64 %idxprom125
  %sibling = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx128, i32 0, i32 3
  %arraydecay129 = getelementptr inbounds [4 x i16], [4 x i16]* %sibling, i32 0, i32 0
  call void @ADDCOST(i16* %arraydecay124, i16* %arraydecay129)
  %87 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %87 to i64
  %88 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %virgin131 = getelementptr inbounds %struct.item_set, %struct.item_set* %88, i32 0, i32 6
  %89 = load %struct.item*, %struct.item** %virgin131, align 8
  %arrayidx132 = getelementptr inbounds %struct.item, %struct.item* %89, i64 %idxprom130
  %delta133 = getelementptr inbounds %struct.item, %struct.item* %arrayidx132, i32 0, i32 0
  %arraydecay134 = getelementptr inbounds [4 x i16], [4 x i16]* %delta133, i32 0, i32 0
  %arraydecay135 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp, i32 0, i32 0
  %call136 = call i32 @LESSCOST(i16* %arraydecay134, i16* %arraydecay135)
  %tobool137 = icmp ne i32 %call136, 0
  br i1 %tobool137, label %if.end.148, label %if.then.138

if.then.138:                                      ; preds = %if.end.117
  %90 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %90 to i64
  %91 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %virgin140 = getelementptr inbounds %struct.item_set, %struct.item_set* %91, i32 0, i32 6
  %92 = load %struct.item*, %struct.item** %virgin140, align 8
  %arrayidx141 = getelementptr inbounds %struct.item, %struct.item* %92, i64 %idxprom139
  %rule142 = getelementptr inbounds %struct.item, %struct.item* %arrayidx141, i32 0, i32 1
  store %struct.rule* null, %struct.rule** %rule142, align 8
  %93 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %93 to i64
  %94 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %virgin144 = getelementptr inbounds %struct.item_set, %struct.item_set* %94, i32 0, i32 6
  %95 = load %struct.item*, %struct.item** %virgin144, align 8
  %arrayidx145 = getelementptr inbounds %struct.item, %struct.item* %95, i64 %idxprom143
  %delta146 = getelementptr inbounds %struct.item, %struct.item* %arrayidx145, i32 0, i32 0
  %arraydecay147 = getelementptr inbounds [4 x i16], [4 x i16]* %delta146, i32 0, i32 0
  call void @ZEROCOST(i16* %arraydecay147)
  br label %outer

if.end.148:                                       ; preds = %if.end.117
  br label %for.inc.149

for.inc.149:                                      ; preds = %if.end.148, %if.then.116, %if.then.102, %if.then.95
  %96 = load i32, i32* %n, align 4
  %inc150 = add nsw i32 %96, 1
  store i32 %inc150, i32* %n, align 4
  br label %for.cond.86

for.end.151:                                      ; preds = %for.cond.86
  br label %outer

outer:                                            ; preds = %for.end.151, %if.then.138, %if.end.74
  br label %for.inc.152

for.inc.152:                                      ; preds = %outer, %if.then.84
  %97 = load i32, i32* %m, align 4
  %inc153 = add nsw i32 %97, 1
  store i32 %inc153, i32* %m, align 4
  br label %for.cond.17

for.end.154:                                      ; preds = %for.cond.17
  %98 = load i32, i32* @debugTrim, align 4
  %tobool155 = icmp ne i32 %98, 0
  br i1 %tobool155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %for.end.154
  %99 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  call void @dumpItem_Set(%struct.item_set* %99)
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.156, %for.end.154
  %100 = load i32, i32* @debugTrim, align 4
  %tobool158 = icmp ne i32 %100, 0
  br i1 %tobool158, label %if.then.159, label %if.end.161

if.then.159:                                      ; preds = %if.end.157
  %call160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.159, %if.end.157
  ret void
}

declare i32 @printf(i8*, ...) #1

declare void @dumpItem_Set(%struct.item_set*) #1

declare i8* @zalloc(i32) #1

; Function Attrs: nounwind uwtable
define internal void @siblings(i32 %i, i32 %j) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %pl = alloca %struct.list*, align 8
  %Max = alloca [4 x i16], align 2
  %foundmax = alloca i32, align 4
  %tmp = alloca [4 x i16], align 2
  %p = alloca %struct.rule*, align 8
  %op = alloca %struct.operator*, align 8
  %oprule = alloca %struct.list*, align 8
  %Min = alloca [4 x i16], align 2
  %foundmin = alloca i32, align 4
  %s = alloca %struct.rule*, align 8
  %Cx = alloca i16*, align 8
  %Csj = alloca i16*, align 8
  %Cpi = alloca i16*, align 8
  %tmp82 = alloca [4 x i16], align 2
  %s194 = alloca %struct.rule*, align 8
  %Cx197 = alloca i16*, align 8
  %Cb = alloca i16*, align 8
  %Csj200 = alloca i16*, align 8
  %Cpi202 = alloca i16*, align 8
  %tmp204 = alloca [4 x i16], align 2
  %s348 = alloca %struct.rule*, align 8
  %Cx351 = alloca i16*, align 8
  %Cb353 = alloca i16*, align 8
  %Csj355 = alloca i16*, align 8
  %Cpi357 = alloca i16*, align 8
  %tmp359 = alloca [4 x i16], align 2
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load i32, i32* %j.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %2 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx = getelementptr inbounds %struct.relation*, %struct.relation** %2, i64 %idxprom1
  %3 = load %struct.relation*, %struct.relation** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds %struct.relation, %struct.relation* %3, i64 %idxprom
  %sibComputed = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx2, i32 0, i32 5
  store i32 1, i32* %sibComputed, align 4
  %4 = load i32, i32* %i.addr, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %i.addr, align 4
  %6 = load i32, i32* %j.addr, align 4
  %cmp3 = icmp eq i32 %5, %6
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %return

if.end.5:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %Max, i32 0, i32 0
  call void @ZEROCOST(i16* %arraydecay)
  store i32 0, i32* %foundmax, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* @max_nonterminal, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %i.addr, align 4
  %cmp7 = icmp eq i32 %9, %10
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %11 = load i32, i32* %k, align 4
  %12 = load i32, i32* %j.addr, align 4
  %cmp8 = icmp eq i32 %11, %12
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end.10:                                        ; preds = %lor.lhs.false
  %13 = load i32, i32* %i.addr, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx13 = getelementptr inbounds %struct.relation*, %struct.relation** %15, i64 %idxprom12
  %16 = load %struct.relation*, %struct.relation** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds %struct.relation, %struct.relation* %16, i64 %idxprom11
  %rule = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx14, i32 0, i32 0
  %17 = load %struct.rule*, %struct.rule** %rule, align 8
  %tobool = icmp ne %struct.rule* %17, null
  br i1 %tobool, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.10
  br label %for.inc

if.end.16:                                        ; preds = %if.end.10
  %18 = load i32, i32* %j.addr, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %19 to i64
  %20 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx19 = getelementptr inbounds %struct.relation*, %struct.relation** %20, i64 %idxprom18
  %21 = load %struct.relation*, %struct.relation** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds %struct.relation, %struct.relation* %21, i64 %idxprom17
  %rule21 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx20, i32 0, i32 0
  %22 = load %struct.rule*, %struct.rule** %rule21, align 8
  %tobool22 = icmp ne %struct.rule* %22, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.16
  br label %return

if.end.24:                                        ; preds = %if.end.16
  %arraydecay25 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp, i32 0, i32 0
  %23 = load i32, i32* %j.addr, align 4
  %idxprom26 = sext i32 %23 to i64
  %24 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %24 to i64
  %25 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx28 = getelementptr inbounds %struct.relation*, %struct.relation** %25, i64 %idxprom27
  %26 = load %struct.relation*, %struct.relation** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds %struct.relation, %struct.relation* %26, i64 %idxprom26
  %chain = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx29, i32 0, i32 1
  %arraydecay30 = getelementptr inbounds [4 x i16], [4 x i16]* %chain, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay25, i16* %arraydecay30)
  %arraydecay31 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp, i32 0, i32 0
  %27 = load i32, i32* %i.addr, align 4
  %idxprom32 = sext i32 %27 to i64
  %28 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %28 to i64
  %29 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx34 = getelementptr inbounds %struct.relation*, %struct.relation** %29, i64 %idxprom33
  %30 = load %struct.relation*, %struct.relation** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds %struct.relation, %struct.relation* %30, i64 %idxprom32
  %chain36 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx35, i32 0, i32 1
  %arraydecay37 = getelementptr inbounds [4 x i16], [4 x i16]* %chain36, i32 0, i32 0
  call void @MINUSCOST(i16* %arraydecay31, i16* %arraydecay37)
  %31 = load i32, i32* %foundmax, align 4
  %tobool38 = icmp ne i32 %31, 0
  br i1 %tobool38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %if.end.24
  %arraydecay40 = getelementptr inbounds [4 x i16], [4 x i16]* %Max, i32 0, i32 0
  %arraydecay41 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp, i32 0, i32 0
  %call = call i32 @LESSCOST(i16* %arraydecay40, i16* %arraydecay41)
  %tobool42 = icmp ne i32 %call, 0
  br i1 %tobool42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.then.39
  %arraydecay44 = getelementptr inbounds [4 x i16], [4 x i16]* %Max, i32 0, i32 0
  %arraydecay45 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay44, i16* %arraydecay45)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.then.39
  br label %if.end.49

if.else:                                          ; preds = %if.end.24
  store i32 1, i32* %foundmax, align 4
  %arraydecay47 = getelementptr inbounds [4 x i16], [4 x i16]* %Max, i32 0, i32 0
  %arraydecay48 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay47, i16* %arraydecay48)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %if.end.46
  br label %for.inc

for.inc:                                          ; preds = %if.end.49, %if.then.15, %if.then.9
  %32 = load i32, i32* %k, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.list*, %struct.list** @rules, align 8
  store %struct.list* %33, %struct.list** %pl, align 8
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.487, %for.end
  %34 = load %struct.list*, %struct.list** %pl, align 8
  %tobool51 = icmp ne %struct.list* %34, null
  br i1 %tobool51, label %for.body.52, label %for.end.489

for.body.52:                                      ; preds = %for.cond.50
  %35 = load %struct.list*, %struct.list** %pl, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %35, i32 0, i32 0
  %36 = load i8*, i8** %x, align 8
  %37 = bitcast i8* %36 to %struct.rule*
  store %struct.rule* %37, %struct.rule** %p, align 8
  %38 = load %struct.rule*, %struct.rule** %p, align 8
  %pat = getelementptr inbounds %struct.rule, %struct.rule* %38, i32 0, i32 5
  %39 = load %struct.pattern*, %struct.pattern** %pat, align 8
  %op55 = getelementptr inbounds %struct.pattern, %struct.pattern* %39, i32 0, i32 1
  %40 = load %struct.operator*, %struct.operator** %op55, align 8
  store %struct.operator* %40, %struct.operator** %op, align 8
  %41 = load %struct.operator*, %struct.operator** %op, align 8
  %tobool59 = icmp ne %struct.operator* %41, null
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %for.body.52
  br label %for.inc.487

if.end.61:                                        ; preds = %for.body.52
  %42 = load %struct.operator*, %struct.operator** %op, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %42, i32 0, i32 5
  %43 = load i32, i32* %arity, align 4
  switch i32 %43, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.62
    i32 2, label %sw.bb.176
  ]

sw.bb:                                            ; preds = %if.end.61
  br label %for.inc.487

sw.bb.62:                                         ; preds = %if.end.61
  %44 = load i32, i32* %i.addr, align 4
  %idxprom63 = sext i32 %44 to i64
  %45 = load %struct.rule*, %struct.rule** %p, align 8
  %pat64 = getelementptr inbounds %struct.rule, %struct.rule* %45, i32 0, i32 5
  %46 = load %struct.pattern*, %struct.pattern** %pat64, align 8
  %children = getelementptr inbounds %struct.pattern, %struct.pattern* %46, i32 0, i32 2
  %arrayidx65 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children, i32 0, i64 0
  %47 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx65, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %47, i32 0, i32 1
  %48 = load i32, i32* %num, align 4
  %idxprom66 = sext i32 %48 to i64
  %49 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx67 = getelementptr inbounds %struct.relation*, %struct.relation** %49, i64 %idxprom66
  %50 = load %struct.relation*, %struct.relation** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds %struct.relation, %struct.relation* %50, i64 %idxprom63
  %rule69 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx68, i32 0, i32 0
  %51 = load %struct.rule*, %struct.rule** %rule69, align 8
  %tobool70 = icmp ne %struct.rule* %51, null
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %sw.bb.62
  br label %for.inc.487

if.end.72:                                        ; preds = %sw.bb.62
  store i32 0, i32* %foundmin, align 4
  %52 = load %struct.operator*, %struct.operator** %op, align 8
  %table = getelementptr inbounds %struct.operator, %struct.operator* %52, i32 0, i32 6
  %53 = load %struct.table*, %struct.table** %table, align 8
  %rules = getelementptr inbounds %struct.table, %struct.table* %53, i32 0, i32 1
  %54 = load %struct.list*, %struct.list** %rules, align 8
  store %struct.list* %54, %struct.list** %oprule, align 8
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.157, %if.end.72
  %55 = load %struct.list*, %struct.list** %oprule, align 8
  %tobool74 = icmp ne %struct.list* %55, null
  br i1 %tobool74, label %for.body.75, label %for.end.158

for.body.75:                                      ; preds = %for.cond.73
  %56 = load %struct.list*, %struct.list** %oprule, align 8
  %x77 = getelementptr inbounds %struct.list, %struct.list* %56, i32 0, i32 0
  %57 = load i8*, i8** %x77, align 8
  %58 = bitcast i8* %57 to %struct.rule*
  store %struct.rule* %58, %struct.rule** %s, align 8
  %59 = load %struct.rule*, %struct.rule** %s, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %59, i32 0, i32 4
  %60 = load %struct.nonterminal*, %struct.nonterminal** %lhs, align 8
  %num83 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %60, i32 0, i32 1
  %61 = load i32, i32* %num83, align 4
  %idxprom84 = sext i32 %61 to i64
  %62 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs85 = getelementptr inbounds %struct.rule, %struct.rule* %62, i32 0, i32 4
  %63 = load %struct.nonterminal*, %struct.nonterminal** %lhs85, align 8
  %num86 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %63, i32 0, i32 1
  %64 = load i32, i32* %num86, align 4
  %idxprom87 = sext i32 %64 to i64
  %65 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx88 = getelementptr inbounds %struct.relation*, %struct.relation** %65, i64 %idxprom87
  %66 = load %struct.relation*, %struct.relation** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds %struct.relation, %struct.relation* %66, i64 %idxprom84
  %rule90 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx89, i32 0, i32 0
  %67 = load %struct.rule*, %struct.rule** %rule90, align 8
  %tobool91 = icmp ne %struct.rule* %67, null
  br i1 %tobool91, label %lor.lhs.false.92, label %if.then.103

lor.lhs.false.92:                                 ; preds = %for.body.75
  %68 = load i32, i32* %j.addr, align 4
  %idxprom93 = sext i32 %68 to i64
  %69 = load %struct.rule*, %struct.rule** %s, align 8
  %pat94 = getelementptr inbounds %struct.rule, %struct.rule* %69, i32 0, i32 5
  %70 = load %struct.pattern*, %struct.pattern** %pat94, align 8
  %children95 = getelementptr inbounds %struct.pattern, %struct.pattern* %70, i32 0, i32 2
  %arrayidx96 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children95, i32 0, i64 0
  %71 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx96, align 8
  %num97 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %71, i32 0, i32 1
  %72 = load i32, i32* %num97, align 4
  %idxprom98 = sext i32 %72 to i64
  %73 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx99 = getelementptr inbounds %struct.relation*, %struct.relation** %73, i64 %idxprom98
  %74 = load %struct.relation*, %struct.relation** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds %struct.relation, %struct.relation* %74, i64 %idxprom93
  %rule101 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx100, i32 0, i32 0
  %75 = load %struct.rule*, %struct.rule** %rule101, align 8
  %tobool102 = icmp ne %struct.rule* %75, null
  br i1 %tobool102, label %if.end.104, label %if.then.103

if.then.103:                                      ; preds = %lor.lhs.false.92, %for.body.75
  br label %for.inc.157

if.end.104:                                       ; preds = %lor.lhs.false.92
  %76 = load %struct.rule*, %struct.rule** %s, align 8
  %lhs105 = getelementptr inbounds %struct.rule, %struct.rule* %76, i32 0, i32 4
  %77 = load %struct.nonterminal*, %struct.nonterminal** %lhs105, align 8
  %num106 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %77, i32 0, i32 1
  %78 = load i32, i32* %num106, align 4
  %idxprom107 = sext i32 %78 to i64
  %79 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs108 = getelementptr inbounds %struct.rule, %struct.rule* %79, i32 0, i32 4
  %80 = load %struct.nonterminal*, %struct.nonterminal** %lhs108, align 8
  %num109 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %80, i32 0, i32 1
  %81 = load i32, i32* %num109, align 4
  %idxprom110 = sext i32 %81 to i64
  %82 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx111 = getelementptr inbounds %struct.relation*, %struct.relation** %82, i64 %idxprom110
  %83 = load %struct.relation*, %struct.relation** %arrayidx111, align 8
  %arrayidx112 = getelementptr inbounds %struct.relation, %struct.relation* %83, i64 %idxprom107
  %chain113 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx112, i32 0, i32 1
  %arraydecay114 = getelementptr inbounds [4 x i16], [4 x i16]* %chain113, i32 0, i32 0
  store i16* %arraydecay114, i16** %Cx, align 8
  %84 = load i32, i32* %j.addr, align 4
  %idxprom115 = sext i32 %84 to i64
  %85 = load %struct.rule*, %struct.rule** %s, align 8
  %pat116 = getelementptr inbounds %struct.rule, %struct.rule* %85, i32 0, i32 5
  %86 = load %struct.pattern*, %struct.pattern** %pat116, align 8
  %children117 = getelementptr inbounds %struct.pattern, %struct.pattern* %86, i32 0, i32 2
  %arrayidx118 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children117, i32 0, i64 0
  %87 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx118, align 8
  %num119 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %87, i32 0, i32 1
  %88 = load i32, i32* %num119, align 4
  %idxprom120 = sext i32 %88 to i64
  %89 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx121 = getelementptr inbounds %struct.relation*, %struct.relation** %89, i64 %idxprom120
  %90 = load %struct.relation*, %struct.relation** %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds %struct.relation, %struct.relation* %90, i64 %idxprom115
  %chain123 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx122, i32 0, i32 1
  %arraydecay124 = getelementptr inbounds [4 x i16], [4 x i16]* %chain123, i32 0, i32 0
  store i16* %arraydecay124, i16** %Csj, align 8
  %91 = load i32, i32* %i.addr, align 4
  %idxprom125 = sext i32 %91 to i64
  %92 = load %struct.rule*, %struct.rule** %p, align 8
  %pat126 = getelementptr inbounds %struct.rule, %struct.rule* %92, i32 0, i32 5
  %93 = load %struct.pattern*, %struct.pattern** %pat126, align 8
  %children127 = getelementptr inbounds %struct.pattern, %struct.pattern* %93, i32 0, i32 2
  %arrayidx128 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children127, i32 0, i64 0
  %94 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx128, align 8
  %num129 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %94, i32 0, i32 1
  %95 = load i32, i32* %num129, align 4
  %idxprom130 = sext i32 %95 to i64
  %96 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx131 = getelementptr inbounds %struct.relation*, %struct.relation** %96, i64 %idxprom130
  %97 = load %struct.relation*, %struct.relation** %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds %struct.relation, %struct.relation* %97, i64 %idxprom125
  %chain133 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx132, i32 0, i32 1
  %arraydecay134 = getelementptr inbounds [4 x i16], [4 x i16]* %chain133, i32 0, i32 0
  store i16* %arraydecay134, i16** %Cpi, align 8
  %arraydecay135 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp82, i32 0, i32 0
  %98 = load i16*, i16** %Cx, align 8
  call void @ASSIGNCOST(i16* %arraydecay135, i16* %98)
  %arraydecay136 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp82, i32 0, i32 0
  %99 = load %struct.rule*, %struct.rule** %s, align 8
  %delta = getelementptr inbounds %struct.rule, %struct.rule* %99, i32 0, i32 0
  %arraydecay137 = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i32 0
  call void @ADDCOST(i16* %arraydecay136, i16* %arraydecay137)
  %arraydecay138 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp82, i32 0, i32 0
  %100 = load i16*, i16** %Csj, align 8
  call void @ADDCOST(i16* %arraydecay138, i16* %100)
  %arraydecay139 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp82, i32 0, i32 0
  %101 = load i16*, i16** %Cpi, align 8
  call void @MINUSCOST(i16* %arraydecay139, i16* %101)
  %arraydecay140 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp82, i32 0, i32 0
  %102 = load %struct.rule*, %struct.rule** %p, align 8
  %delta141 = getelementptr inbounds %struct.rule, %struct.rule* %102, i32 0, i32 0
  %arraydecay142 = getelementptr inbounds [4 x i16], [4 x i16]* %delta141, i32 0, i32 0
  call void @MINUSCOST(i16* %arraydecay140, i16* %arraydecay142)
  %103 = load i32, i32* %foundmin, align 4
  %tobool143 = icmp ne i32 %103, 0
  br i1 %tobool143, label %if.then.144, label %if.else.153

if.then.144:                                      ; preds = %if.end.104
  %arraydecay145 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp82, i32 0, i32 0
  %arraydecay146 = getelementptr inbounds [4 x i16], [4 x i16]* %Min, i32 0, i32 0
  %call147 = call i32 @LESSCOST(i16* %arraydecay145, i16* %arraydecay146)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.then.149, label %if.end.152

if.then.149:                                      ; preds = %if.then.144
  %arraydecay150 = getelementptr inbounds [4 x i16], [4 x i16]* %Min, i32 0, i32 0
  %arraydecay151 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp82, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay150, i16* %arraydecay151)
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.149, %if.then.144
  br label %if.end.156

if.else.153:                                      ; preds = %if.end.104
  store i32 1, i32* %foundmin, align 4
  %arraydecay154 = getelementptr inbounds [4 x i16], [4 x i16]* %Min, i32 0, i32 0
  %arraydecay155 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp82, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay154, i16* %arraydecay155)
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.153, %if.end.152
  br label %for.inc.157

for.inc.157:                                      ; preds = %if.end.156, %if.then.103
  %104 = load %struct.list*, %struct.list** %oprule, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %104, i32 0, i32 1
  %105 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %105, %struct.list** %oprule, align 8
  br label %for.cond.73

for.end.158:                                      ; preds = %for.cond.73
  %106 = load i32, i32* %foundmin, align 4
  %tobool159 = icmp ne i32 %106, 0
  br i1 %tobool159, label %if.end.161, label %if.then.160

if.then.160:                                      ; preds = %for.end.158
  br label %return

if.end.161:                                       ; preds = %for.end.158
  %107 = load i32, i32* %foundmax, align 4
  %tobool162 = icmp ne i32 %107, 0
  br i1 %tobool162, label %if.then.163, label %if.else.172

if.then.163:                                      ; preds = %if.end.161
  %arraydecay164 = getelementptr inbounds [4 x i16], [4 x i16]* %Max, i32 0, i32 0
  %arraydecay165 = getelementptr inbounds [4 x i16], [4 x i16]* %Min, i32 0, i32 0
  %call166 = call i32 @LESSCOST(i16* %arraydecay164, i16* %arraydecay165)
  %tobool167 = icmp ne i32 %call166, 0
  br i1 %tobool167, label %if.then.168, label %if.end.171

if.then.168:                                      ; preds = %if.then.163
  %arraydecay169 = getelementptr inbounds [4 x i16], [4 x i16]* %Max, i32 0, i32 0
  %arraydecay170 = getelementptr inbounds [4 x i16], [4 x i16]* %Min, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay169, i16* %arraydecay170)
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.168, %if.then.163
  br label %if.end.175

if.else.172:                                      ; preds = %if.end.161
  store i32 1, i32* %foundmax, align 4
  %arraydecay173 = getelementptr inbounds [4 x i16], [4 x i16]* %Max, i32 0, i32 0
  %arraydecay174 = getelementptr inbounds [4 x i16], [4 x i16]* %Min, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay173, i16* %arraydecay174)
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.172, %if.end.171
  br label %sw.epilog

sw.bb.176:                                        ; preds = %if.end.61
  %108 = load i32, i32* %i.addr, align 4
  %idxprom177 = sext i32 %108 to i64
  %109 = load %struct.rule*, %struct.rule** %p, align 8
  %pat178 = getelementptr inbounds %struct.rule, %struct.rule* %109, i32 0, i32 5
  %110 = load %struct.pattern*, %struct.pattern** %pat178, align 8
  %children179 = getelementptr inbounds %struct.pattern, %struct.pattern* %110, i32 0, i32 2
  %arrayidx180 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children179, i32 0, i64 0
  %111 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx180, align 8
  %num181 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %111, i32 0, i32 1
  %112 = load i32, i32* %num181, align 4
  %idxprom182 = sext i32 %112 to i64
  %113 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx183 = getelementptr inbounds %struct.relation*, %struct.relation** %113, i64 %idxprom182
  %114 = load %struct.relation*, %struct.relation** %arrayidx183, align 8
  %arrayidx184 = getelementptr inbounds %struct.relation, %struct.relation* %114, i64 %idxprom177
  %rule185 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx184, i32 0, i32 0
  %115 = load %struct.rule*, %struct.rule** %rule185, align 8
  %tobool186 = icmp ne %struct.rule* %115, null
  br i1 %tobool186, label %if.then.187, label %if.end.330

if.then.187:                                      ; preds = %sw.bb.176
  store i32 0, i32* %foundmin, align 4
  %116 = load %struct.operator*, %struct.operator** %op, align 8
  %table188 = getelementptr inbounds %struct.operator, %struct.operator* %116, i32 0, i32 6
  %117 = load %struct.table*, %struct.table** %table188, align 8
  %rules189 = getelementptr inbounds %struct.table, %struct.table* %117, i32 0, i32 1
  %118 = load %struct.list*, %struct.list** %rules189, align 8
  store %struct.list* %118, %struct.list** %oprule, align 8
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.310, %if.then.187
  %119 = load %struct.list*, %struct.list** %oprule, align 8
  %tobool191 = icmp ne %struct.list* %119, null
  br i1 %tobool191, label %for.body.192, label %for.end.312

for.body.192:                                     ; preds = %for.cond.190
  %120 = load %struct.list*, %struct.list** %oprule, align 8
  %x195 = getelementptr inbounds %struct.list, %struct.list* %120, i32 0, i32 0
  %121 = load i8*, i8** %x195, align 8
  %122 = bitcast i8* %121 to %struct.rule*
  store %struct.rule* %122, %struct.rule** %s194, align 8
  %123 = load %struct.rule*, %struct.rule** %s194, align 8
  %lhs205 = getelementptr inbounds %struct.rule, %struct.rule* %123, i32 0, i32 4
  %124 = load %struct.nonterminal*, %struct.nonterminal** %lhs205, align 8
  %num206 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %124, i32 0, i32 1
  %125 = load i32, i32* %num206, align 4
  %idxprom207 = sext i32 %125 to i64
  %126 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs208 = getelementptr inbounds %struct.rule, %struct.rule* %126, i32 0, i32 4
  %127 = load %struct.nonterminal*, %struct.nonterminal** %lhs208, align 8
  %num209 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %127, i32 0, i32 1
  %128 = load i32, i32* %num209, align 4
  %idxprom210 = sext i32 %128 to i64
  %129 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx211 = getelementptr inbounds %struct.relation*, %struct.relation** %129, i64 %idxprom210
  %130 = load %struct.relation*, %struct.relation** %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds %struct.relation, %struct.relation* %130, i64 %idxprom207
  %rule213 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx212, i32 0, i32 0
  %131 = load %struct.rule*, %struct.rule** %rule213, align 8
  %tobool214 = icmp ne %struct.rule* %131, null
  br i1 %tobool214, label %land.lhs.true, label %if.end.309

land.lhs.true:                                    ; preds = %for.body.192
  %132 = load i32, i32* %j.addr, align 4
  %idxprom215 = sext i32 %132 to i64
  %133 = load %struct.rule*, %struct.rule** %s194, align 8
  %pat216 = getelementptr inbounds %struct.rule, %struct.rule* %133, i32 0, i32 5
  %134 = load %struct.pattern*, %struct.pattern** %pat216, align 8
  %children217 = getelementptr inbounds %struct.pattern, %struct.pattern* %134, i32 0, i32 2
  %arrayidx218 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children217, i32 0, i64 0
  %135 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx218, align 8
  %num219 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %135, i32 0, i32 1
  %136 = load i32, i32* %num219, align 4
  %idxprom220 = sext i32 %136 to i64
  %137 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx221 = getelementptr inbounds %struct.relation*, %struct.relation** %137, i64 %idxprom220
  %138 = load %struct.relation*, %struct.relation** %arrayidx221, align 8
  %arrayidx222 = getelementptr inbounds %struct.relation, %struct.relation* %138, i64 %idxprom215
  %rule223 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx222, i32 0, i32 0
  %139 = load %struct.rule*, %struct.rule** %rule223, align 8
  %tobool224 = icmp ne %struct.rule* %139, null
  br i1 %tobool224, label %land.lhs.true.225, label %if.end.309

land.lhs.true.225:                                ; preds = %land.lhs.true
  %140 = load %struct.rule*, %struct.rule** %p, align 8
  %pat226 = getelementptr inbounds %struct.rule, %struct.rule* %140, i32 0, i32 5
  %141 = load %struct.pattern*, %struct.pattern** %pat226, align 8
  %children227 = getelementptr inbounds %struct.pattern, %struct.pattern* %141, i32 0, i32 2
  %arrayidx228 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children227, i32 0, i64 1
  %142 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx228, align 8
  %num229 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %142, i32 0, i32 1
  %143 = load i32, i32* %num229, align 4
  %idxprom230 = sext i32 %143 to i64
  %144 = load %struct.rule*, %struct.rule** %s194, align 8
  %pat231 = getelementptr inbounds %struct.rule, %struct.rule* %144, i32 0, i32 5
  %145 = load %struct.pattern*, %struct.pattern** %pat231, align 8
  %children232 = getelementptr inbounds %struct.pattern, %struct.pattern* %145, i32 0, i32 2
  %arrayidx233 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children232, i32 0, i64 1
  %146 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx233, align 8
  %num234 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %146, i32 0, i32 1
  %147 = load i32, i32* %num234, align 4
  %idxprom235 = sext i32 %147 to i64
  %148 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx236 = getelementptr inbounds %struct.relation*, %struct.relation** %148, i64 %idxprom235
  %149 = load %struct.relation*, %struct.relation** %arrayidx236, align 8
  %arrayidx237 = getelementptr inbounds %struct.relation, %struct.relation* %149, i64 %idxprom230
  %rule238 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx237, i32 0, i32 0
  %150 = load %struct.rule*, %struct.rule** %rule238, align 8
  %tobool239 = icmp ne %struct.rule* %150, null
  br i1 %tobool239, label %if.then.240, label %if.end.309

if.then.240:                                      ; preds = %land.lhs.true.225
  %151 = load %struct.rule*, %struct.rule** %s194, align 8
  %lhs241 = getelementptr inbounds %struct.rule, %struct.rule* %151, i32 0, i32 4
  %152 = load %struct.nonterminal*, %struct.nonterminal** %lhs241, align 8
  %num242 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %152, i32 0, i32 1
  %153 = load i32, i32* %num242, align 4
  %idxprom243 = sext i32 %153 to i64
  %154 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs244 = getelementptr inbounds %struct.rule, %struct.rule* %154, i32 0, i32 4
  %155 = load %struct.nonterminal*, %struct.nonterminal** %lhs244, align 8
  %num245 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %155, i32 0, i32 1
  %156 = load i32, i32* %num245, align 4
  %idxprom246 = sext i32 %156 to i64
  %157 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx247 = getelementptr inbounds %struct.relation*, %struct.relation** %157, i64 %idxprom246
  %158 = load %struct.relation*, %struct.relation** %arrayidx247, align 8
  %arrayidx248 = getelementptr inbounds %struct.relation, %struct.relation* %158, i64 %idxprom243
  %chain249 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx248, i32 0, i32 1
  %arraydecay250 = getelementptr inbounds [4 x i16], [4 x i16]* %chain249, i32 0, i32 0
  store i16* %arraydecay250, i16** %Cx197, align 8
  %159 = load i32, i32* %j.addr, align 4
  %idxprom251 = sext i32 %159 to i64
  %160 = load %struct.rule*, %struct.rule** %s194, align 8
  %pat252 = getelementptr inbounds %struct.rule, %struct.rule* %160, i32 0, i32 5
  %161 = load %struct.pattern*, %struct.pattern** %pat252, align 8
  %children253 = getelementptr inbounds %struct.pattern, %struct.pattern* %161, i32 0, i32 2
  %arrayidx254 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children253, i32 0, i64 0
  %162 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx254, align 8
  %num255 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %162, i32 0, i32 1
  %163 = load i32, i32* %num255, align 4
  %idxprom256 = sext i32 %163 to i64
  %164 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx257 = getelementptr inbounds %struct.relation*, %struct.relation** %164, i64 %idxprom256
  %165 = load %struct.relation*, %struct.relation** %arrayidx257, align 8
  %arrayidx258 = getelementptr inbounds %struct.relation, %struct.relation* %165, i64 %idxprom251
  %chain259 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx258, i32 0, i32 1
  %arraydecay260 = getelementptr inbounds [4 x i16], [4 x i16]* %chain259, i32 0, i32 0
  store i16* %arraydecay260, i16** %Csj200, align 8
  %166 = load i32, i32* %i.addr, align 4
  %idxprom261 = sext i32 %166 to i64
  %167 = load %struct.rule*, %struct.rule** %p, align 8
  %pat262 = getelementptr inbounds %struct.rule, %struct.rule* %167, i32 0, i32 5
  %168 = load %struct.pattern*, %struct.pattern** %pat262, align 8
  %children263 = getelementptr inbounds %struct.pattern, %struct.pattern* %168, i32 0, i32 2
  %arrayidx264 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children263, i32 0, i64 0
  %169 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx264, align 8
  %num265 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %169, i32 0, i32 1
  %170 = load i32, i32* %num265, align 4
  %idxprom266 = sext i32 %170 to i64
  %171 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx267 = getelementptr inbounds %struct.relation*, %struct.relation** %171, i64 %idxprom266
  %172 = load %struct.relation*, %struct.relation** %arrayidx267, align 8
  %arrayidx268 = getelementptr inbounds %struct.relation, %struct.relation* %172, i64 %idxprom261
  %chain269 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx268, i32 0, i32 1
  %arraydecay270 = getelementptr inbounds [4 x i16], [4 x i16]* %chain269, i32 0, i32 0
  store i16* %arraydecay270, i16** %Cpi202, align 8
  %173 = load %struct.rule*, %struct.rule** %p, align 8
  %pat271 = getelementptr inbounds %struct.rule, %struct.rule* %173, i32 0, i32 5
  %174 = load %struct.pattern*, %struct.pattern** %pat271, align 8
  %children272 = getelementptr inbounds %struct.pattern, %struct.pattern* %174, i32 0, i32 2
  %arrayidx273 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children272, i32 0, i64 1
  %175 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx273, align 8
  %num274 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %175, i32 0, i32 1
  %176 = load i32, i32* %num274, align 4
  %idxprom275 = sext i32 %176 to i64
  %177 = load %struct.rule*, %struct.rule** %s194, align 8
  %pat276 = getelementptr inbounds %struct.rule, %struct.rule* %177, i32 0, i32 5
  %178 = load %struct.pattern*, %struct.pattern** %pat276, align 8
  %children277 = getelementptr inbounds %struct.pattern, %struct.pattern* %178, i32 0, i32 2
  %arrayidx278 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children277, i32 0, i64 1
  %179 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx278, align 8
  %num279 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %179, i32 0, i32 1
  %180 = load i32, i32* %num279, align 4
  %idxprom280 = sext i32 %180 to i64
  %181 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx281 = getelementptr inbounds %struct.relation*, %struct.relation** %181, i64 %idxprom280
  %182 = load %struct.relation*, %struct.relation** %arrayidx281, align 8
  %arrayidx282 = getelementptr inbounds %struct.relation, %struct.relation* %182, i64 %idxprom275
  %chain283 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx282, i32 0, i32 1
  %arraydecay284 = getelementptr inbounds [4 x i16], [4 x i16]* %chain283, i32 0, i32 0
  store i16* %arraydecay284, i16** %Cb, align 8
  %arraydecay285 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp204, i32 0, i32 0
  %183 = load i16*, i16** %Cx197, align 8
  call void @ASSIGNCOST(i16* %arraydecay285, i16* %183)
  %arraydecay286 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp204, i32 0, i32 0
  %184 = load %struct.rule*, %struct.rule** %s194, align 8
  %delta287 = getelementptr inbounds %struct.rule, %struct.rule* %184, i32 0, i32 0
  %arraydecay288 = getelementptr inbounds [4 x i16], [4 x i16]* %delta287, i32 0, i32 0
  call void @ADDCOST(i16* %arraydecay286, i16* %arraydecay288)
  %arraydecay289 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp204, i32 0, i32 0
  %185 = load i16*, i16** %Csj200, align 8
  call void @ADDCOST(i16* %arraydecay289, i16* %185)
  %arraydecay290 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp204, i32 0, i32 0
  %186 = load i16*, i16** %Cb, align 8
  call void @ADDCOST(i16* %arraydecay290, i16* %186)
  %arraydecay291 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp204, i32 0, i32 0
  %187 = load i16*, i16** %Cpi202, align 8
  call void @MINUSCOST(i16* %arraydecay291, i16* %187)
  %arraydecay292 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp204, i32 0, i32 0
  %188 = load %struct.rule*, %struct.rule** %p, align 8
  %delta293 = getelementptr inbounds %struct.rule, %struct.rule* %188, i32 0, i32 0
  %arraydecay294 = getelementptr inbounds [4 x i16], [4 x i16]* %delta293, i32 0, i32 0
  call void @MINUSCOST(i16* %arraydecay292, i16* %arraydecay294)
  %189 = load i32, i32* %foundmin, align 4
  %tobool295 = icmp ne i32 %189, 0
  br i1 %tobool295, label %if.then.296, label %if.else.305

if.then.296:                                      ; preds = %if.then.240
  %arraydecay297 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp204, i32 0, i32 0
  %arraydecay298 = getelementptr inbounds [4 x i16], [4 x i16]* %Min, i32 0, i32 0
  %call299 = call i32 @LESSCOST(i16* %arraydecay297, i16* %arraydecay298)
  %tobool300 = icmp ne i32 %call299, 0
  br i1 %tobool300, label %if.then.301, label %if.end.304

if.then.301:                                      ; preds = %if.then.296
  %arraydecay302 = getelementptr inbounds [4 x i16], [4 x i16]* %Min, i32 0, i32 0
  %arraydecay303 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp204, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay302, i16* %arraydecay303)
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.301, %if.then.296
  br label %if.end.308

if.else.305:                                      ; preds = %if.then.240
  store i32 1, i32* %foundmin, align 4
  %arraydecay306 = getelementptr inbounds [4 x i16], [4 x i16]* %Min, i32 0, i32 0
  %arraydecay307 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp204, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay306, i16* %arraydecay307)
  br label %if.end.308

if.end.308:                                       ; preds = %if.else.305, %if.end.304
  br label %if.end.309

if.end.309:                                       ; preds = %if.end.308, %land.lhs.true.225, %land.lhs.true, %for.body.192
  br label %for.inc.310

for.inc.310:                                      ; preds = %if.end.309
  %190 = load %struct.list*, %struct.list** %oprule, align 8
  %next311 = getelementptr inbounds %struct.list, %struct.list* %190, i32 0, i32 1
  %191 = load %struct.list*, %struct.list** %next311, align 8
  store %struct.list* %191, %struct.list** %oprule, align 8
  br label %for.cond.190

for.end.312:                                      ; preds = %for.cond.190
  %192 = load i32, i32* %foundmin, align 4
  %tobool313 = icmp ne i32 %192, 0
  br i1 %tobool313, label %if.end.315, label %if.then.314

if.then.314:                                      ; preds = %for.end.312
  br label %return

if.end.315:                                       ; preds = %for.end.312
  %193 = load i32, i32* %foundmax, align 4
  %tobool316 = icmp ne i32 %193, 0
  br i1 %tobool316, label %if.then.317, label %if.else.326

if.then.317:                                      ; preds = %if.end.315
  %arraydecay318 = getelementptr inbounds [4 x i16], [4 x i16]* %Max, i32 0, i32 0
  %arraydecay319 = getelementptr inbounds [4 x i16], [4 x i16]* %Min, i32 0, i32 0
  %call320 = call i32 @LESSCOST(i16* %arraydecay318, i16* %arraydecay319)
  %tobool321 = icmp ne i32 %call320, 0
  br i1 %tobool321, label %if.then.322, label %if.end.325

if.then.322:                                      ; preds = %if.then.317
  %arraydecay323 = getelementptr inbounds [4 x i16], [4 x i16]* %Max, i32 0, i32 0
  %arraydecay324 = getelementptr inbounds [4 x i16], [4 x i16]* %Min, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay323, i16* %arraydecay324)
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.322, %if.then.317
  br label %if.end.329

if.else.326:                                      ; preds = %if.end.315
  store i32 1, i32* %foundmax, align 4
  %arraydecay327 = getelementptr inbounds [4 x i16], [4 x i16]* %Max, i32 0, i32 0
  %arraydecay328 = getelementptr inbounds [4 x i16], [4 x i16]* %Min, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay327, i16* %arraydecay328)
  br label %if.end.329

if.end.329:                                       ; preds = %if.else.326, %if.end.325
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %sw.bb.176
  %194 = load i32, i32* %i.addr, align 4
  %idxprom331 = sext i32 %194 to i64
  %195 = load %struct.rule*, %struct.rule** %p, align 8
  %pat332 = getelementptr inbounds %struct.rule, %struct.rule* %195, i32 0, i32 5
  %196 = load %struct.pattern*, %struct.pattern** %pat332, align 8
  %children333 = getelementptr inbounds %struct.pattern, %struct.pattern* %196, i32 0, i32 2
  %arrayidx334 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children333, i32 0, i64 1
  %197 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx334, align 8
  %num335 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %197, i32 0, i32 1
  %198 = load i32, i32* %num335, align 4
  %idxprom336 = sext i32 %198 to i64
  %199 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx337 = getelementptr inbounds %struct.relation*, %struct.relation** %199, i64 %idxprom336
  %200 = load %struct.relation*, %struct.relation** %arrayidx337, align 8
  %arrayidx338 = getelementptr inbounds %struct.relation, %struct.relation* %200, i64 %idxprom331
  %rule339 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx338, i32 0, i32 0
  %201 = load %struct.rule*, %struct.rule** %rule339, align 8
  %tobool340 = icmp ne %struct.rule* %201, null
  br i1 %tobool340, label %if.then.341, label %if.end.486

if.then.341:                                      ; preds = %if.end.330
  store i32 0, i32* %foundmin, align 4
  %202 = load %struct.operator*, %struct.operator** %op, align 8
  %table342 = getelementptr inbounds %struct.operator, %struct.operator* %202, i32 0, i32 6
  %203 = load %struct.table*, %struct.table** %table342, align 8
  %rules343 = getelementptr inbounds %struct.table, %struct.table* %203, i32 0, i32 1
  %204 = load %struct.list*, %struct.list** %rules343, align 8
  store %struct.list* %204, %struct.list** %oprule, align 8
  br label %for.cond.344

for.cond.344:                                     ; preds = %for.inc.466, %if.then.341
  %205 = load %struct.list*, %struct.list** %oprule, align 8
  %tobool345 = icmp ne %struct.list* %205, null
  br i1 %tobool345, label %for.body.346, label %for.end.468

for.body.346:                                     ; preds = %for.cond.344
  %206 = load %struct.list*, %struct.list** %oprule, align 8
  %x349 = getelementptr inbounds %struct.list, %struct.list* %206, i32 0, i32 0
  %207 = load i8*, i8** %x349, align 8
  %208 = bitcast i8* %207 to %struct.rule*
  store %struct.rule* %208, %struct.rule** %s348, align 8
  %209 = load %struct.rule*, %struct.rule** %s348, align 8
  %lhs360 = getelementptr inbounds %struct.rule, %struct.rule* %209, i32 0, i32 4
  %210 = load %struct.nonterminal*, %struct.nonterminal** %lhs360, align 8
  %num361 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %210, i32 0, i32 1
  %211 = load i32, i32* %num361, align 4
  %idxprom362 = sext i32 %211 to i64
  %212 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs363 = getelementptr inbounds %struct.rule, %struct.rule* %212, i32 0, i32 4
  %213 = load %struct.nonterminal*, %struct.nonterminal** %lhs363, align 8
  %num364 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %213, i32 0, i32 1
  %214 = load i32, i32* %num364, align 4
  %idxprom365 = sext i32 %214 to i64
  %215 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx366 = getelementptr inbounds %struct.relation*, %struct.relation** %215, i64 %idxprom365
  %216 = load %struct.relation*, %struct.relation** %arrayidx366, align 8
  %arrayidx367 = getelementptr inbounds %struct.relation, %struct.relation* %216, i64 %idxprom362
  %rule368 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx367, i32 0, i32 0
  %217 = load %struct.rule*, %struct.rule** %rule368, align 8
  %tobool369 = icmp ne %struct.rule* %217, null
  br i1 %tobool369, label %land.lhs.true.370, label %if.end.465

land.lhs.true.370:                                ; preds = %for.body.346
  %218 = load i32, i32* %j.addr, align 4
  %idxprom371 = sext i32 %218 to i64
  %219 = load %struct.rule*, %struct.rule** %s348, align 8
  %pat372 = getelementptr inbounds %struct.rule, %struct.rule* %219, i32 0, i32 5
  %220 = load %struct.pattern*, %struct.pattern** %pat372, align 8
  %children373 = getelementptr inbounds %struct.pattern, %struct.pattern* %220, i32 0, i32 2
  %arrayidx374 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children373, i32 0, i64 1
  %221 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx374, align 8
  %num375 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %221, i32 0, i32 1
  %222 = load i32, i32* %num375, align 4
  %idxprom376 = sext i32 %222 to i64
  %223 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx377 = getelementptr inbounds %struct.relation*, %struct.relation** %223, i64 %idxprom376
  %224 = load %struct.relation*, %struct.relation** %arrayidx377, align 8
  %arrayidx378 = getelementptr inbounds %struct.relation, %struct.relation* %224, i64 %idxprom371
  %rule379 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx378, i32 0, i32 0
  %225 = load %struct.rule*, %struct.rule** %rule379, align 8
  %tobool380 = icmp ne %struct.rule* %225, null
  br i1 %tobool380, label %land.lhs.true.381, label %if.end.465

land.lhs.true.381:                                ; preds = %land.lhs.true.370
  %226 = load %struct.rule*, %struct.rule** %p, align 8
  %pat382 = getelementptr inbounds %struct.rule, %struct.rule* %226, i32 0, i32 5
  %227 = load %struct.pattern*, %struct.pattern** %pat382, align 8
  %children383 = getelementptr inbounds %struct.pattern, %struct.pattern* %227, i32 0, i32 2
  %arrayidx384 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children383, i32 0, i64 0
  %228 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx384, align 8
  %num385 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %228, i32 0, i32 1
  %229 = load i32, i32* %num385, align 4
  %idxprom386 = sext i32 %229 to i64
  %230 = load %struct.rule*, %struct.rule** %s348, align 8
  %pat387 = getelementptr inbounds %struct.rule, %struct.rule* %230, i32 0, i32 5
  %231 = load %struct.pattern*, %struct.pattern** %pat387, align 8
  %children388 = getelementptr inbounds %struct.pattern, %struct.pattern* %231, i32 0, i32 2
  %arrayidx389 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children388, i32 0, i64 0
  %232 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx389, align 8
  %num390 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %232, i32 0, i32 1
  %233 = load i32, i32* %num390, align 4
  %idxprom391 = sext i32 %233 to i64
  %234 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx392 = getelementptr inbounds %struct.relation*, %struct.relation** %234, i64 %idxprom391
  %235 = load %struct.relation*, %struct.relation** %arrayidx392, align 8
  %arrayidx393 = getelementptr inbounds %struct.relation, %struct.relation* %235, i64 %idxprom386
  %rule394 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx393, i32 0, i32 0
  %236 = load %struct.rule*, %struct.rule** %rule394, align 8
  %tobool395 = icmp ne %struct.rule* %236, null
  br i1 %tobool395, label %if.then.396, label %if.end.465

if.then.396:                                      ; preds = %land.lhs.true.381
  %237 = load %struct.rule*, %struct.rule** %s348, align 8
  %lhs397 = getelementptr inbounds %struct.rule, %struct.rule* %237, i32 0, i32 4
  %238 = load %struct.nonterminal*, %struct.nonterminal** %lhs397, align 8
  %num398 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %238, i32 0, i32 1
  %239 = load i32, i32* %num398, align 4
  %idxprom399 = sext i32 %239 to i64
  %240 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs400 = getelementptr inbounds %struct.rule, %struct.rule* %240, i32 0, i32 4
  %241 = load %struct.nonterminal*, %struct.nonterminal** %lhs400, align 8
  %num401 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %241, i32 0, i32 1
  %242 = load i32, i32* %num401, align 4
  %idxprom402 = sext i32 %242 to i64
  %243 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx403 = getelementptr inbounds %struct.relation*, %struct.relation** %243, i64 %idxprom402
  %244 = load %struct.relation*, %struct.relation** %arrayidx403, align 8
  %arrayidx404 = getelementptr inbounds %struct.relation, %struct.relation* %244, i64 %idxprom399
  %chain405 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx404, i32 0, i32 1
  %arraydecay406 = getelementptr inbounds [4 x i16], [4 x i16]* %chain405, i32 0, i32 0
  store i16* %arraydecay406, i16** %Cx351, align 8
  %245 = load i32, i32* %j.addr, align 4
  %idxprom407 = sext i32 %245 to i64
  %246 = load %struct.rule*, %struct.rule** %s348, align 8
  %pat408 = getelementptr inbounds %struct.rule, %struct.rule* %246, i32 0, i32 5
  %247 = load %struct.pattern*, %struct.pattern** %pat408, align 8
  %children409 = getelementptr inbounds %struct.pattern, %struct.pattern* %247, i32 0, i32 2
  %arrayidx410 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children409, i32 0, i64 1
  %248 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx410, align 8
  %num411 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %248, i32 0, i32 1
  %249 = load i32, i32* %num411, align 4
  %idxprom412 = sext i32 %249 to i64
  %250 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx413 = getelementptr inbounds %struct.relation*, %struct.relation** %250, i64 %idxprom412
  %251 = load %struct.relation*, %struct.relation** %arrayidx413, align 8
  %arrayidx414 = getelementptr inbounds %struct.relation, %struct.relation* %251, i64 %idxprom407
  %chain415 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx414, i32 0, i32 1
  %arraydecay416 = getelementptr inbounds [4 x i16], [4 x i16]* %chain415, i32 0, i32 0
  store i16* %arraydecay416, i16** %Csj355, align 8
  %252 = load i32, i32* %i.addr, align 4
  %idxprom417 = sext i32 %252 to i64
  %253 = load %struct.rule*, %struct.rule** %p, align 8
  %pat418 = getelementptr inbounds %struct.rule, %struct.rule* %253, i32 0, i32 5
  %254 = load %struct.pattern*, %struct.pattern** %pat418, align 8
  %children419 = getelementptr inbounds %struct.pattern, %struct.pattern* %254, i32 0, i32 2
  %arrayidx420 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children419, i32 0, i64 1
  %255 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx420, align 8
  %num421 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %255, i32 0, i32 1
  %256 = load i32, i32* %num421, align 4
  %idxprom422 = sext i32 %256 to i64
  %257 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx423 = getelementptr inbounds %struct.relation*, %struct.relation** %257, i64 %idxprom422
  %258 = load %struct.relation*, %struct.relation** %arrayidx423, align 8
  %arrayidx424 = getelementptr inbounds %struct.relation, %struct.relation* %258, i64 %idxprom417
  %chain425 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx424, i32 0, i32 1
  %arraydecay426 = getelementptr inbounds [4 x i16], [4 x i16]* %chain425, i32 0, i32 0
  store i16* %arraydecay426, i16** %Cpi357, align 8
  %259 = load %struct.rule*, %struct.rule** %p, align 8
  %pat427 = getelementptr inbounds %struct.rule, %struct.rule* %259, i32 0, i32 5
  %260 = load %struct.pattern*, %struct.pattern** %pat427, align 8
  %children428 = getelementptr inbounds %struct.pattern, %struct.pattern* %260, i32 0, i32 2
  %arrayidx429 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children428, i32 0, i64 0
  %261 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx429, align 8
  %num430 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %261, i32 0, i32 1
  %262 = load i32, i32* %num430, align 4
  %idxprom431 = sext i32 %262 to i64
  %263 = load %struct.rule*, %struct.rule** %s348, align 8
  %pat432 = getelementptr inbounds %struct.rule, %struct.rule* %263, i32 0, i32 5
  %264 = load %struct.pattern*, %struct.pattern** %pat432, align 8
  %children433 = getelementptr inbounds %struct.pattern, %struct.pattern* %264, i32 0, i32 2
  %arrayidx434 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children433, i32 0, i64 0
  %265 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx434, align 8
  %num435 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %265, i32 0, i32 1
  %266 = load i32, i32* %num435, align 4
  %idxprom436 = sext i32 %266 to i64
  %267 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx437 = getelementptr inbounds %struct.relation*, %struct.relation** %267, i64 %idxprom436
  %268 = load %struct.relation*, %struct.relation** %arrayidx437, align 8
  %arrayidx438 = getelementptr inbounds %struct.relation, %struct.relation* %268, i64 %idxprom431
  %chain439 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx438, i32 0, i32 1
  %arraydecay440 = getelementptr inbounds [4 x i16], [4 x i16]* %chain439, i32 0, i32 0
  store i16* %arraydecay440, i16** %Cb353, align 8
  %arraydecay441 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp359, i32 0, i32 0
  %269 = load i16*, i16** %Cx351, align 8
  call void @ASSIGNCOST(i16* %arraydecay441, i16* %269)
  %arraydecay442 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp359, i32 0, i32 0
  %270 = load %struct.rule*, %struct.rule** %s348, align 8
  %delta443 = getelementptr inbounds %struct.rule, %struct.rule* %270, i32 0, i32 0
  %arraydecay444 = getelementptr inbounds [4 x i16], [4 x i16]* %delta443, i32 0, i32 0
  call void @ADDCOST(i16* %arraydecay442, i16* %arraydecay444)
  %arraydecay445 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp359, i32 0, i32 0
  %271 = load i16*, i16** %Csj355, align 8
  call void @ADDCOST(i16* %arraydecay445, i16* %271)
  %arraydecay446 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp359, i32 0, i32 0
  %272 = load i16*, i16** %Cb353, align 8
  call void @ADDCOST(i16* %arraydecay446, i16* %272)
  %arraydecay447 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp359, i32 0, i32 0
  %273 = load i16*, i16** %Cpi357, align 8
  call void @MINUSCOST(i16* %arraydecay447, i16* %273)
  %arraydecay448 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp359, i32 0, i32 0
  %274 = load %struct.rule*, %struct.rule** %p, align 8
  %delta449 = getelementptr inbounds %struct.rule, %struct.rule* %274, i32 0, i32 0
  %arraydecay450 = getelementptr inbounds [4 x i16], [4 x i16]* %delta449, i32 0, i32 0
  call void @MINUSCOST(i16* %arraydecay448, i16* %arraydecay450)
  %275 = load i32, i32* %foundmin, align 4
  %tobool451 = icmp ne i32 %275, 0
  br i1 %tobool451, label %if.then.452, label %if.else.461

if.then.452:                                      ; preds = %if.then.396
  %arraydecay453 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp359, i32 0, i32 0
  %arraydecay454 = getelementptr inbounds [4 x i16], [4 x i16]* %Min, i32 0, i32 0
  %call455 = call i32 @LESSCOST(i16* %arraydecay453, i16* %arraydecay454)
  %tobool456 = icmp ne i32 %call455, 0
  br i1 %tobool456, label %if.then.457, label %if.end.460

if.then.457:                                      ; preds = %if.then.452
  %arraydecay458 = getelementptr inbounds [4 x i16], [4 x i16]* %Min, i32 0, i32 0
  %arraydecay459 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp359, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay458, i16* %arraydecay459)
  br label %if.end.460

if.end.460:                                       ; preds = %if.then.457, %if.then.452
  br label %if.end.464

if.else.461:                                      ; preds = %if.then.396
  store i32 1, i32* %foundmin, align 4
  %arraydecay462 = getelementptr inbounds [4 x i16], [4 x i16]* %Min, i32 0, i32 0
  %arraydecay463 = getelementptr inbounds [4 x i16], [4 x i16]* %tmp359, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay462, i16* %arraydecay463)
  br label %if.end.464

if.end.464:                                       ; preds = %if.else.461, %if.end.460
  br label %if.end.465

if.end.465:                                       ; preds = %if.end.464, %land.lhs.true.381, %land.lhs.true.370, %for.body.346
  br label %for.inc.466

for.inc.466:                                      ; preds = %if.end.465
  %276 = load %struct.list*, %struct.list** %oprule, align 8
  %next467 = getelementptr inbounds %struct.list, %struct.list* %276, i32 0, i32 1
  %277 = load %struct.list*, %struct.list** %next467, align 8
  store %struct.list* %277, %struct.list** %oprule, align 8
  br label %for.cond.344

for.end.468:                                      ; preds = %for.cond.344
  %278 = load i32, i32* %foundmin, align 4
  %tobool469 = icmp ne i32 %278, 0
  br i1 %tobool469, label %if.end.471, label %if.then.470

if.then.470:                                      ; preds = %for.end.468
  br label %return

if.end.471:                                       ; preds = %for.end.468
  %279 = load i32, i32* %foundmax, align 4
  %tobool472 = icmp ne i32 %279, 0
  br i1 %tobool472, label %if.then.473, label %if.else.482

if.then.473:                                      ; preds = %if.end.471
  %arraydecay474 = getelementptr inbounds [4 x i16], [4 x i16]* %Max, i32 0, i32 0
  %arraydecay475 = getelementptr inbounds [4 x i16], [4 x i16]* %Min, i32 0, i32 0
  %call476 = call i32 @LESSCOST(i16* %arraydecay474, i16* %arraydecay475)
  %tobool477 = icmp ne i32 %call476, 0
  br i1 %tobool477, label %if.then.478, label %if.end.481

if.then.478:                                      ; preds = %if.then.473
  %arraydecay479 = getelementptr inbounds [4 x i16], [4 x i16]* %Max, i32 0, i32 0
  %arraydecay480 = getelementptr inbounds [4 x i16], [4 x i16]* %Min, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay479, i16* %arraydecay480)
  br label %if.end.481

if.end.481:                                       ; preds = %if.then.478, %if.then.473
  br label %if.end.485

if.else.482:                                      ; preds = %if.end.471
  store i32 1, i32* %foundmax, align 4
  %arraydecay483 = getelementptr inbounds [4 x i16], [4 x i16]* %Max, i32 0, i32 0
  %arraydecay484 = getelementptr inbounds [4 x i16], [4 x i16]* %Min, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay483, i16* %arraydecay484)
  br label %if.end.485

if.end.485:                                       ; preds = %if.else.482, %if.end.481
  br label %if.end.486

if.end.486:                                       ; preds = %if.end.485, %if.end.330
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.61
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.486, %if.end.175
  br label %for.inc.487

for.inc.487:                                      ; preds = %sw.epilog, %if.then.71, %sw.bb, %if.then.60
  %280 = load %struct.list*, %struct.list** %pl, align 8
  %next488 = getelementptr inbounds %struct.list, %struct.list* %280, i32 0, i32 1
  %281 = load %struct.list*, %struct.list** %next488, align 8
  store %struct.list* %281, %struct.list** %pl, align 8
  br label %for.cond.50

for.end.489:                                      ; preds = %for.cond.50
  %282 = load i32, i32* %foundmax, align 4
  %283 = load i32, i32* %j.addr, align 4
  %idxprom490 = sext i32 %283 to i64
  %284 = load i32, i32* %i.addr, align 4
  %idxprom491 = sext i32 %284 to i64
  %285 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx492 = getelementptr inbounds %struct.relation*, %struct.relation** %285, i64 %idxprom491
  %286 = load %struct.relation*, %struct.relation** %arrayidx492, align 8
  %arrayidx493 = getelementptr inbounds %struct.relation, %struct.relation* %286, i64 %idxprom490
  %sibFlag = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx493, i32 0, i32 4
  store i32 %282, i32* %sibFlag, align 4
  %287 = load i32, i32* %j.addr, align 4
  %idxprom494 = sext i32 %287 to i64
  %288 = load i32, i32* %i.addr, align 4
  %idxprom495 = sext i32 %288 to i64
  %289 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx496 = getelementptr inbounds %struct.relation*, %struct.relation** %289, i64 %idxprom495
  %290 = load %struct.relation*, %struct.relation** %arrayidx496, align 8
  %arrayidx497 = getelementptr inbounds %struct.relation, %struct.relation* %290, i64 %idxprom494
  %sibling = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx497, i32 0, i32 3
  %arraydecay498 = getelementptr inbounds [4 x i16], [4 x i16]* %sibling, i32 0, i32 0
  %arraydecay499 = getelementptr inbounds [4 x i16], [4 x i16]* %Max, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay498, i16* %arraydecay499)
  br label %return

return:                                           ; preds = %for.end.489, %if.then.470, %if.then.314, %if.then.160, %if.then.23, %if.then.4, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @dumpRelation(%struct.relation* %r) #0 {
entry:
  %r.addr = alloca %struct.relation*, align 8
  store %struct.relation* %r, %struct.relation** %r.addr, align 8
  %0 = load %struct.relation*, %struct.relation** %r.addr, align 8
  %rule = getelementptr inbounds %struct.relation, %struct.relation* %0, i32 0, i32 0
  %1 = load %struct.rule*, %struct.rule** %rule, align 8
  %erulenum = getelementptr inbounds %struct.rule, %struct.rule* %1, i32 0, i32 1
  %2 = load i32, i32* %erulenum, align 4
  %3 = load %struct.relation*, %struct.relation** %r.addr, align 8
  %chain = getelementptr inbounds %struct.relation, %struct.relation* %3, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %chain, i32 0, i32 0
  %4 = ptrtoint i16* %arraydecay to i64
  %5 = load %struct.relation*, %struct.relation** %r.addr, align 8
  %sibFlag = getelementptr inbounds %struct.relation, %struct.relation* %5, i32 0, i32 4
  %6 = load i32, i32* %sibFlag, align 4
  %7 = load %struct.relation*, %struct.relation** %r.addr, align 8
  %sibling = getelementptr inbounds %struct.relation, %struct.relation* %7, i32 0, i32 3
  %arraydecay1 = getelementptr inbounds [4 x i16], [4 x i16]* %sibling, i32 0, i32 0
  %8 = ptrtoint i16* %arraydecay1 to i64
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 %2, i64 %4, i32 %6, i64 %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @dumpAllPairs() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @max_nonterminal, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* @max_nonterminal, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx = getelementptr inbounds %struct.relation*, %struct.relation** %6, i64 %idxprom4
  %7 = load %struct.relation*, %struct.relation** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds %struct.relation, %struct.relation* %7, i64 %idxprom
  call void @dumpRelation(%struct.relation* %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %8 = load i32, i32* %j, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %9 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  ret void
}

declare void @MINUSCOST(i16*, i16*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
