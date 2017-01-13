; ModuleID = './MultiSource.Applications.Burg/9.queue.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { %struct.list*, %struct.list* }
%struct.list = type { i8*, %struct.list* }
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
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

@rcsid_queue = global [47 x i8] c"$Id: queue.c 4171 2002-10-14 16:39:24Z vadve $\00", align 16
@.str = private unnamed_addr constant [13 x i8] c"Begin Queue\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"End Queue\0A\00", align 1
@globalQ = common global %struct.queue* null, align 8

; Function Attrs: nounwind uwtable
define %struct.queue* @newQ() #0 {
entry:
  %q = alloca %struct.queue*, align 8
  %call = call i8* @zalloc(i32 16)
  %0 = bitcast i8* %call to %struct.queue*
  store %struct.queue* %0, %struct.queue** %q, align 8
  %1 = load %struct.queue*, %struct.queue** %q, align 8
  %head = getelementptr inbounds %struct.queue, %struct.queue* %1, i32 0, i32 0
  store %struct.list* null, %struct.list** %head, align 8
  %2 = load %struct.queue*, %struct.queue** %q, align 8
  %tail = getelementptr inbounds %struct.queue, %struct.queue* %2, i32 0, i32 1
  store %struct.list* null, %struct.list** %tail, align 8
  %3 = load %struct.queue*, %struct.queue** %q, align 8
  ret %struct.queue* %3
}

declare i8* @zalloc(i32) #1

; Function Attrs: nounwind uwtable
define void @addQ(%struct.queue* %q, %struct.item_set* %ts) #0 {
entry:
  %q.addr = alloca %struct.queue*, align 8
  %ts.addr = alloca %struct.item_set*, align 8
  %qe = alloca %struct.list*, align 8
  store %struct.queue* %q, %struct.queue** %q.addr, align 8
  store %struct.item_set* %ts, %struct.item_set** %ts.addr, align 8
  %0 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %1 = bitcast %struct.item_set* %0 to i8*
  %call = call %struct.list* @newList(i8* %1, %struct.list* null)
  store %struct.list* %call, %struct.list** %qe, align 8
  %2 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %head = getelementptr inbounds %struct.queue, %struct.queue* %2, i32 0, i32 0
  %3 = load %struct.list*, %struct.list** %head, align 8
  %tobool = icmp ne %struct.list* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.list*, %struct.list** %qe, align 8
  %5 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %tail = getelementptr inbounds %struct.queue, %struct.queue* %5, i32 0, i32 1
  %6 = load %struct.list*, %struct.list** %tail, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %6, i32 0, i32 1
  store %struct.list* %4, %struct.list** %next, align 8
  %7 = load %struct.list*, %struct.list** %qe, align 8
  %8 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %tail1 = getelementptr inbounds %struct.queue, %struct.queue* %8, i32 0, i32 1
  store %struct.list* %7, %struct.list** %tail1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.list*, %struct.list** %qe, align 8
  %10 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %tail2 = getelementptr inbounds %struct.queue, %struct.queue* %10, i32 0, i32 1
  store %struct.list* %9, %struct.list** %tail2, align 8
  %11 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %head3 = getelementptr inbounds %struct.queue, %struct.queue* %11, i32 0, i32 0
  store %struct.list* %9, %struct.list** %head3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct.list* @newList(i8*, %struct.list*) #1

; Function Attrs: nounwind uwtable
define %struct.item_set* @popQ(%struct.queue* %q) #0 {
entry:
  %retval = alloca %struct.item_set*, align 8
  %q.addr = alloca %struct.queue*, align 8
  %qe = alloca %struct.list*, align 8
  %ts = alloca %struct.item_set*, align 8
  store %struct.queue* %q, %struct.queue** %q.addr, align 8
  %0 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %head = getelementptr inbounds %struct.queue, %struct.queue* %0, i32 0, i32 0
  %1 = load %struct.list*, %struct.list** %head, align 8
  %tobool = icmp ne %struct.list* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %head1 = getelementptr inbounds %struct.queue, %struct.queue* %2, i32 0, i32 0
  %3 = load %struct.list*, %struct.list** %head1, align 8
  store %struct.list* %3, %struct.list** %qe, align 8
  %4 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %head2 = getelementptr inbounds %struct.queue, %struct.queue* %4, i32 0, i32 0
  %5 = load %struct.list*, %struct.list** %head2, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %5, i32 0, i32 1
  %6 = load %struct.list*, %struct.list** %next, align 8
  %7 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %head3 = getelementptr inbounds %struct.queue, %struct.queue* %7, i32 0, i32 0
  store %struct.list* %6, %struct.list** %head3, align 8
  %8 = load %struct.list*, %struct.list** %qe, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %8, i32 0, i32 0
  %9 = load i8*, i8** %x, align 8
  %10 = bitcast i8* %9 to %struct.item_set*
  store %struct.item_set* %10, %struct.item_set** %ts, align 8
  %11 = load %struct.list*, %struct.list** %qe, align 8
  %12 = bitcast %struct.list* %11 to i8*
  call void @zfree(i8* %12)
  %13 = load %struct.item_set*, %struct.item_set** %ts, align 8
  store %struct.item_set* %13, %struct.item_set** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.item_set* null, %struct.item_set** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %14 = load %struct.item_set*, %struct.item_set** %retval
  ret %struct.item_set* %14
}

declare void @zfree(i8*) #1

; Function Attrs: nounwind uwtable
define void @dumpQ(%struct.queue* %q) #0 {
entry:
  %q.addr = alloca %struct.queue*, align 8
  store %struct.queue* %q, %struct.queue** %q.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %0 = load %struct.queue*, %struct.queue** %q.addr, align 8
  %head = getelementptr inbounds %struct.queue, %struct.queue* %0, i32 0, i32 0
  %1 = load %struct.list*, %struct.list** %head, align 8
  call void @foreachList(i8* (i8*)* bitcast (void (%struct.item_set*)* @dumpItem_Set to i8* (i8*)*), %struct.list* %1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

declare void @foreachList(i8* (i8*)*, %struct.list*) #1

declare void @dumpItem_Set(%struct.item_set*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
