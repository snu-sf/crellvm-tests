; ModuleID = './MultiSource.Applications.Burg/18.operator.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i8*, %struct.list* }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
%struct.dimension = type { i16*, %struct.index_map, %struct.mapping*, i32, %struct.plankMap* }
%struct.index_map = type { i32, %struct.item_set** }
%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
%struct.plank = type { i8*, %struct.list*, i32 }
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.item = type { [4 x i16], %struct.rule* }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }

@rcsid_operator = global [50 x i8] c"$Id: operator.c 4171 2002-10-14 16:39:24Z vadve $\00", align 16
@max_arity = global i32 -1, align 4
@operators = common global %struct.list* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"Op: %s(%d)=%d\0A\00", align 1
@leaves = common global %struct.list* null, align 8

; Function Attrs: nounwind uwtable
define %struct.operator* @newOperator(i8* %name, i32 %num, i32 %arity) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %num.addr = alloca i32, align 4
  %arity.addr = alloca i32, align 4
  %op = alloca %struct.operator*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32 %arity, i32* %arity.addr, align 4
  %call = call i8* @zalloc(i32 40)
  %0 = bitcast i8* %call to %struct.operator*
  store %struct.operator* %0, %struct.operator** %op, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load %struct.operator*, %struct.operator** %op, align 8
  %name1 = getelementptr inbounds %struct.operator, %struct.operator* %2, i32 0, i32 0
  store i8* %1, i8** %name1, align 8
  %3 = load i32, i32* %num.addr, align 4
  %4 = load %struct.operator*, %struct.operator** %op, align 8
  %num2 = getelementptr inbounds %struct.operator, %struct.operator* %4, i32 0, i32 2
  store i32 %3, i32* %num2, align 4
  %5 = load i32, i32* %arity.addr, align 4
  %6 = load %struct.operator*, %struct.operator** %op, align 8
  %arity3 = getelementptr inbounds %struct.operator, %struct.operator* %6, i32 0, i32 5
  store i32 %5, i32* %arity3, align 4
  %7 = load %struct.operator*, %struct.operator** %op, align 8
  %8 = bitcast %struct.operator* %7 to i8*
  %9 = load %struct.list*, %struct.list** @operators, align 8
  %call4 = call %struct.list* @newList(i8* %8, %struct.list* %9)
  store %struct.list* %call4, %struct.list** @operators, align 8
  %10 = load %struct.operator*, %struct.operator** %op, align 8
  ret %struct.operator* %10
}

declare i8* @zalloc(i32) #1

declare %struct.list* @newList(i8*, %struct.list*) #1

; Function Attrs: nounwind uwtable
define void @dumpOperator_s(%struct.operator* %op) #0 {
entry:
  %op.addr = alloca %struct.operator*, align 8
  store %struct.operator* %op, %struct.operator** %op.addr, align 8
  %0 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %name = getelementptr inbounds %struct.operator, %struct.operator* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %2 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %2, i32 0, i32 5
  %3 = load i32, i32* %arity, align 4
  %4 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %num = getelementptr inbounds %struct.operator, %struct.operator* %4, i32 0, i32 2
  %5 = load i32, i32* %num, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %1, i32 %3, i32 %5)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @dumpOperator(%struct.operator* %op, i32 %full) #0 {
entry:
  %op.addr = alloca %struct.operator*, align 8
  %full.addr = alloca i32, align 4
  store %struct.operator* %op, %struct.operator** %op.addr, align 8
  store i32 %full, i32* %full.addr, align 4
  %0 = load %struct.operator*, %struct.operator** %op.addr, align 8
  call void @dumpOperator_s(%struct.operator* %0)
  %1 = load i32, i32* %full.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table = getelementptr inbounds %struct.operator, %struct.operator* %2, i32 0, i32 6
  %3 = load %struct.table*, %struct.table** %table, align 8
  call void @dumpTable(%struct.table* %3, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @dumpTable(%struct.table*, i32) #1

; Function Attrs: nounwind uwtable
define void @dumpOperator_l(%struct.operator* %op) #0 {
entry:
  %op.addr = alloca %struct.operator*, align 8
  store %struct.operator* %op, %struct.operator** %op.addr, align 8
  %0 = load %struct.operator*, %struct.operator** %op.addr, align 8
  call void @dumpOperator(%struct.operator* %0, i32 1)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
