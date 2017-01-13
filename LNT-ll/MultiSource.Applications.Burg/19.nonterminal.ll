; ModuleID = './MultiSource.Applications.Burg/19.nonterminal.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
%struct.list = type { i8*, %struct.list* }
%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
%struct.plank = type { i8*, %struct.list*, i32 }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
%struct.dimension = type { i16*, %struct.index_map, %struct.mapping*, i32, %struct.plankMap* }
%struct.index_map = type { i32, %struct.item_set** }
%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.item = type { [4 x i16], %struct.rule* }

@rcsid_nonterminal = global [53 x i8] c"$Id: nonterminal.c 4171 2002-10-14 16:39:24Z vadve $\00", align 16
@max_nonterminal = global i32 1, align 4
@start = common global %struct.nonterminal* null, align 8
@nonterminals = common global %struct.list* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"(Unknown NonTerminal)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s(%d)\00", align 1
@last_user_nonterminal = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define %struct.nonterminal* @newNonTerminal(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nt = alloca %struct.nonterminal*, align 8
  store i8* %name, i8** %name.addr, align 8
  %call = call i8* @zalloc(i32 40)
  %0 = bitcast i8* %call to %struct.nonterminal*
  store %struct.nonterminal* %0, %struct.nonterminal** %nt, align 8
  %1 = load i32, i32* @max_nonterminal, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.nonterminal*, %struct.nonterminal** %nt, align 8
  store %struct.nonterminal* %2, %struct.nonterminal** @start, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load %struct.nonterminal*, %struct.nonterminal** %nt, align 8
  %name1 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %4, i32 0, i32 0
  store i8* %3, i8** %name1, align 8
  %5 = load i32, i32* @max_nonterminal, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @max_nonterminal, align 4
  %6 = load %struct.nonterminal*, %struct.nonterminal** %nt, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %6, i32 0, i32 1
  store i32 %5, i32* %num, align 4
  %7 = load %struct.nonterminal*, %struct.nonterminal** %nt, align 8
  %8 = bitcast %struct.nonterminal* %7 to i8*
  %9 = load %struct.list*, %struct.list** @nonterminals, align 8
  %call2 = call %struct.list* @newList(i8* %8, %struct.list* %9)
  store %struct.list* %call2, %struct.list** @nonterminals, align 8
  %10 = load %struct.nonterminal*, %struct.nonterminal** %nt, align 8
  ret %struct.nonterminal* %10
}

declare i8* @zalloc(i32) #1

declare %struct.list* @newList(i8*, %struct.list*) #1

; Function Attrs: nounwind uwtable
define i32 @nonTerminalName(i8* %buf, i32 %i) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  %l = alloca %struct.list*, align 8
  %nt = alloca %struct.nonterminal*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load %struct.list*, %struct.list** @nonterminals, align 8
  store %struct.list* %0, %struct.list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.list*, %struct.list** %l, align 8
  %tobool = icmp ne %struct.list* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.list*, %struct.list** %l, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  %3 = load i8*, i8** %x, align 8
  %4 = bitcast i8* %3 to %struct.nonterminal*
  store %struct.nonterminal* %4, %struct.nonterminal** %nt, align 8
  %5 = load %struct.nonterminal*, %struct.nonterminal** %nt, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %5, i32 0, i32 1
  %6 = load i32, i32* %num, align 4
  %7 = load i32, i32* %i.addr, align 4
  %cmp = icmp eq i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i8*, i8** %buf.addr, align 8
  %9 = load %struct.nonterminal*, %struct.nonterminal** %nt, align 8
  %name = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %9, i32 0, i32 0
  %10 = load i8*, i8** %name, align 8
  %call = call i8* @strcpy(i8* %8, i8* %10)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.list*, %struct.list** %l, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %11, i32 0, i32 1
  %12 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %12, %struct.list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i8*, i8** %buf.addr, align 8
  %call1 = call i8* @strcpy(i8* %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @dumpNonTerminal(%struct.nonterminal* %n) #0 {
entry:
  %n.addr = alloca %struct.nonterminal*, align 8
  store %struct.nonterminal* %n, %struct.nonterminal** %n.addr, align 8
  %0 = load %struct.nonterminal*, %struct.nonterminal** %n.addr, align 8
  %name = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %2 = load %struct.nonterminal*, %struct.nonterminal** %n.addr, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %2, i32 0, i32 1
  %3 = load i32, i32* %num, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* %1, i32 %3)
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
