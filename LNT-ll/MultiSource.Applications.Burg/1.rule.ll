; ModuleID = './MultiSource.Applications.Burg/1.rule.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i8*, %struct.list* }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
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

@rcsid_rule = global [46 x i8] c"$Id: rule.c 4171 2002-10-14 16:39:24Z vadve $\00", align 16
@max_erule_num = common global i32 0, align 4
@max_rule = common global i32 0, align 4
@rules = common global %struct.list* null, align 8
@.str = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stub_rule = common global %struct.rule zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define %struct.rule* @newRule(i16* %delta, i32 %erulenum, %struct.nonterminal* %lhs, %struct.pattern* %pat) #0 {
entry:
  %delta.addr = alloca i16*, align 8
  %erulenum.addr = alloca i32, align 4
  %lhs.addr = alloca %struct.nonterminal*, align 8
  %pat.addr = alloca %struct.pattern*, align 8
  %p = alloca %struct.rule*, align 8
  store i16* %delta, i16** %delta.addr, align 8
  store i32 %erulenum, i32* %erulenum.addr, align 4
  store %struct.nonterminal* %lhs, %struct.nonterminal** %lhs.addr, align 8
  store %struct.pattern* %pat, %struct.pattern** %pat.addr, align 8
  %call = call i8* @zalloc(i32 48)
  %0 = bitcast i8* %call to %struct.rule*
  store %struct.rule* %0, %struct.rule** %p, align 8
  %1 = load %struct.rule*, %struct.rule** %p, align 8
  %delta1 = getelementptr inbounds %struct.rule, %struct.rule* %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %delta1, i32 0, i32 0
  %2 = load i16*, i16** %delta.addr, align 8
  call void @ASSIGNCOST(i16* %arraydecay, i16* %2)
  %3 = load i32, i32* %erulenum.addr, align 4
  %4 = load %struct.rule*, %struct.rule** %p, align 8
  %erulenum2 = getelementptr inbounds %struct.rule, %struct.rule* %4, i32 0, i32 1
  store i32 %3, i32* %erulenum2, align 4
  %5 = load i32, i32* %erulenum.addr, align 4
  %6 = load i32, i32* @max_erule_num, align 4
  %cmp = icmp sgt i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %erulenum.addr, align 4
  store i32 %7, i32* @max_erule_num, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* @max_rule, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @max_rule, align 4
  %9 = load %struct.rule*, %struct.rule** %p, align 8
  %num = getelementptr inbounds %struct.rule, %struct.rule* %9, i32 0, i32 2
  store i32 %8, i32* %num, align 4
  %10 = load %struct.nonterminal*, %struct.nonterminal** %lhs.addr, align 8
  %11 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs3 = getelementptr inbounds %struct.rule, %struct.rule* %11, i32 0, i32 4
  store %struct.nonterminal* %10, %struct.nonterminal** %lhs3, align 8
  %12 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %13 = load %struct.rule*, %struct.rule** %p, align 8
  %pat4 = getelementptr inbounds %struct.rule, %struct.rule* %13, i32 0, i32 5
  store %struct.pattern* %12, %struct.pattern** %pat4, align 8
  %14 = load %struct.rule*, %struct.rule** %p, align 8
  %15 = bitcast %struct.rule* %14 to i8*
  %16 = load %struct.list*, %struct.list** @rules, align 8
  %call5 = call %struct.list* @newList(i8* %15, %struct.list* %16)
  store %struct.list* %call5, %struct.list** @rules, align 8
  %17 = load %struct.rule*, %struct.rule** %p, align 8
  ret %struct.rule* %17
}

declare i8* @zalloc(i32) #1

declare void @ASSIGNCOST(i16*, i16*) #1

declare %struct.list* @newList(i8*, %struct.list*) #1

; Function Attrs: nounwind uwtable
define void @dumpRule(%struct.rule* %p) #0 {
entry:
  %p.addr = alloca %struct.rule*, align 8
  store %struct.rule* %p, %struct.rule** %p.addr, align 8
  %0 = load %struct.rule*, %struct.rule** %p.addr, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %0, i32 0, i32 4
  %1 = load %struct.nonterminal*, %struct.nonterminal** %lhs, align 8
  call void @dumpNonTerminal(%struct.nonterminal* %1)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  %2 = load %struct.rule*, %struct.rule** %p.addr, align 8
  %pat = getelementptr inbounds %struct.rule, %struct.rule* %2, i32 0, i32 5
  %3 = load %struct.pattern*, %struct.pattern** %pat, align 8
  call void @dumpPattern(%struct.pattern* %3)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %4 = load %struct.rule*, %struct.rule** %p.addr, align 8
  %delta = getelementptr inbounds %struct.rule, %struct.rule* %4, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i32 0
  call void @dumpCost(i16* %arraydecay)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

declare void @dumpNonTerminal(%struct.nonterminal*) #1

declare i32 @printf(i8*, ...) #1

declare void @dumpPattern(%struct.pattern*) #1

declare void @dumpCost(i16*) #1

; Function Attrs: nounwind uwtable
define void @dumpRuleList(%struct.list* %l) #0 {
entry:
  %l.addr = alloca %struct.list*, align 8
  store %struct.list* %l, %struct.list** %l.addr, align 8
  %0 = load %struct.list*, %struct.list** %l.addr, align 8
  call void @foreachList(i8* (i8*)* bitcast (void (%struct.rule*)* @dumpRule to i8* (i8*)*), %struct.list* %0)
  ret void
}

declare void @foreachList(i8* (i8*)*, %struct.list*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
