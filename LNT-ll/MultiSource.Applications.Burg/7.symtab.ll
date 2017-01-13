; ModuleID = './MultiSource.Applications.Burg/7.symtab.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i8*, %struct.list* }
%struct.symbol = type { i8*, i32, %union.anon }
%union.anon = type { %struct.nonterminal* }
%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
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

@rcsid_symtab = global [48 x i8] c"$Id: symtab.c 4171 2002-10-14 16:39:24Z vadve $\00", align 16
@symtab = internal global %struct.list* null, align 8

; Function Attrs: nounwind uwtable
define %struct.symbol* @newSymbol(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %s = alloca %struct.symbol*, align 8
  store i8* %name, i8** %name.addr, align 8
  %call = call i8* @zalloc(i32 24)
  %0 = bitcast i8* %call to %struct.symbol*
  store %struct.symbol* %0, %struct.symbol** %s, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load %struct.symbol*, %struct.symbol** %s, align 8
  %name1 = getelementptr inbounds %struct.symbol, %struct.symbol* %2, i32 0, i32 0
  store i8* %1, i8** %name1, align 8
  %3 = load %struct.symbol*, %struct.symbol** %s, align 8
  ret %struct.symbol* %3
}

declare i8* @zalloc(i32) #1

; Function Attrs: nounwind uwtable
define %struct.symbol* @enter(i8* %name, i32* %new) #0 {
entry:
  %retval = alloca %struct.symbol*, align 8
  %name.addr = alloca i8*, align 8
  %new.addr = alloca i32*, align 8
  %l = alloca %struct.list*, align 8
  %s = alloca %struct.symbol*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32* %new, i32** %new.addr, align 8
  %0 = load i32*, i32** %new.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load %struct.list*, %struct.list** @symtab, align 8
  store %struct.list* %1, %struct.list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.list*, %struct.list** %l, align 8
  %tobool = icmp ne %struct.list* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.list*, %struct.list** %l, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %3, i32 0, i32 0
  %4 = load i8*, i8** %x, align 8
  %5 = bitcast i8* %4 to %struct.symbol*
  store %struct.symbol* %5, %struct.symbol** %s, align 8
  %6 = load i8*, i8** %name.addr, align 8
  %7 = load %struct.symbol*, %struct.symbol** %s, align 8
  %name1 = getelementptr inbounds %struct.symbol, %struct.symbol* %7, i32 0, i32 0
  %8 = load i8*, i8** %name1, align 8
  %call = call i32 @strcmp(i8* %6, i8* %8) #3
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %9 = load %struct.symbol*, %struct.symbol** %s, align 8
  store %struct.symbol* %9, %struct.symbol** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.list*, %struct.list** %l, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %10, i32 0, i32 1
  %11 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %11, %struct.list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32*, i32** %new.addr, align 8
  store i32 1, i32* %12, align 4
  %13 = load i8*, i8** %name.addr, align 8
  %call3 = call %struct.symbol* @newSymbol(i8* %13)
  store %struct.symbol* %call3, %struct.symbol** %s, align 8
  %14 = load %struct.symbol*, %struct.symbol** %s, align 8
  %15 = bitcast %struct.symbol* %14 to i8*
  %16 = load %struct.list*, %struct.list** @symtab, align 8
  %call4 = call %struct.list* @newList(i8* %15, %struct.list* %16)
  store %struct.list* %call4, %struct.list** @symtab, align 8
  %17 = load %struct.symbol*, %struct.symbol** %s, align 8
  store %struct.symbol* %17, %struct.symbol** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %18 = load %struct.symbol*, %struct.symbol** %retval
  ret %struct.symbol* %18
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %struct.list* @newList(i8*, %struct.list*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
