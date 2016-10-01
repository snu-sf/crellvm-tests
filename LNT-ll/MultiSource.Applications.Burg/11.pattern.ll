; ModuleID = './MultiSource.Applications.Burg/11.pattern.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }
%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
%struct.list = type { i8*, %struct.list* }
%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
%struct.plank = type { i8*, %struct.list*, i32 }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
%struct.dimension = type { i16*, %struct.index_map, %struct.mapping*, i32, %struct.plankMap* }
%struct.index_map = type { i32, %struct.item_set** }
%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.item = type { [4 x i16], %struct.rule* }

@rcsid_pattern = global [49 x i8] c"$Id: pattern.c 4171 2002-10-14 16:39:24Z vadve $\00", align 16
@.str = private unnamed_addr constant [13 x i8] c"[no-pattern]\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: nounwind uwtable
define %struct.pattern* @newPattern(%struct.operator* %op) #0 {
entry:
  %op.addr = alloca %struct.operator*, align 8
  %p = alloca %struct.pattern*, align 8
  store %struct.operator* %op, %struct.operator** %op.addr, align 8
  %call = call i8* @zalloc(i32 32)
  %0 = bitcast i8* %call to %struct.pattern*
  store %struct.pattern* %0, %struct.pattern** %p, align 8
  %1 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %2 = load %struct.pattern*, %struct.pattern** %p, align 8
  %op1 = getelementptr inbounds %struct.pattern, %struct.pattern* %2, i32 0, i32 1
  store %struct.operator* %1, %struct.operator** %op1, align 8
  %3 = load %struct.pattern*, %struct.pattern** %p, align 8
  ret %struct.pattern* %3
}

declare i8* @zalloc(i32) #1

; Function Attrs: nounwind uwtable
define void @dumpPattern(%struct.pattern* %p) #0 {
entry:
  %p.addr = alloca %struct.pattern*, align 8
  %i = alloca i32, align 4
  store %struct.pattern* %p, %struct.pattern** %p.addr, align 8
  %0 = load %struct.pattern*, %struct.pattern** %p.addr, align 8
  %tobool = icmp ne %struct.pattern* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  br label %if.end.19

if.end:                                           ; preds = %entry
  %1 = load %struct.pattern*, %struct.pattern** %p.addr, align 8
  %op = getelementptr inbounds %struct.pattern, %struct.pattern* %1, i32 0, i32 1
  %2 = load %struct.operator*, %struct.operator** %op, align 8
  %tobool1 = icmp ne %struct.operator* %2, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.pattern*, %struct.pattern** %p.addr, align 8
  %op3 = getelementptr inbounds %struct.pattern, %struct.pattern* %3, i32 0, i32 1
  %4 = load %struct.operator*, %struct.operator** %op3, align 8
  %name = getelementptr inbounds %struct.operator, %struct.operator* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %5)
  %6 = load %struct.pattern*, %struct.pattern** %p.addr, align 8
  %op5 = getelementptr inbounds %struct.pattern, %struct.pattern* %6, i32 0, i32 1
  %7 = load %struct.operator*, %struct.operator** %op5, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %7, i32 0, i32 5
  %8 = load i32, i32* %arity, align 4
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %if.then.2
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.pattern*, %struct.pattern** %p.addr, align 8
  %op8 = getelementptr inbounds %struct.pattern, %struct.pattern* %10, i32 0, i32 1
  %11 = load %struct.operator*, %struct.operator** %op8, align 8
  %arity9 = getelementptr inbounds %struct.operator, %struct.operator* %11, i32 0, i32 5
  %12 = load i32, i32* %arity9, align 4
  %cmp10 = icmp slt i32 %9, %12
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.pattern*, %struct.pattern** %p.addr, align 8
  %children = getelementptr inbounds %struct.pattern, %struct.pattern* %14, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children, i32 0, i64 %idxprom
  %15 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx, align 8
  %name11 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %15, i32 0, i32 0
  %16 = load i8*, i8** %name11, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* %16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %for.end, %if.then.2
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %18 = load %struct.pattern*, %struct.pattern** %p.addr, align 8
  %children15 = getelementptr inbounds %struct.pattern, %struct.pattern* %18, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children15, i32 0, i64 0
  %19 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx16, align 8
  %name17 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %19, i32 0, i32 0
  %20 = load i8*, i8** %name17, align 8
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %20)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then, %if.else, %if.end.14
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
