; ModuleID = './MultiSource.Applications.Burg/20.item.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@rcsid_item = global [46 x i8] c"$Id: item.c 4171 2002-10-14 16:39:24Z vadve $\00", align 16
@max_nonterminal = external global i32, align 4
@fptr = internal global %struct.item_set* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"[%s #%d]\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Item_Set #%d: [\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" ]\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"(%ld)\00", align 1

; Function Attrs: nounwind uwtable
define %struct.item* @newItemArray() #0 {
entry:
  %ia = alloca %struct.item*, align 8
  %0 = load i32, i32* @max_nonterminal, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 16
  %conv1 = trunc i64 %mul to i32
  %call = call i8* @zalloc(i32 %conv1)
  %1 = bitcast i8* %call to %struct.item*
  store %struct.item* %1, %struct.item** %ia, align 8
  %2 = load %struct.item*, %struct.item** %ia, align 8
  ret %struct.item* %2
}

declare i8* @zalloc(i32) #1

; Function Attrs: nounwind uwtable
define %struct.item* @itemArrayCopy(%struct.item* %src) #0 {
entry:
  %src.addr = alloca %struct.item*, align 8
  %dst = alloca %struct.item*, align 8
  store %struct.item* %src, %struct.item** %src.addr, align 8
  %call = call %struct.item* @newItemArray()
  store %struct.item* %call, %struct.item** %dst, align 8
  %0 = load %struct.item*, %struct.item** %dst, align 8
  %1 = bitcast %struct.item* %0 to i8*
  %2 = load %struct.item*, %struct.item** %src.addr, align 8
  %3 = bitcast %struct.item* %2 to i8*
  %4 = load i32, i32* @max_nonterminal, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %3, i64 %mul, i32 8, i1 false)
  %5 = load %struct.item*, %struct.item** %dst, align 8
  ret %struct.item* %5
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define %struct.item_set* @newItem_Set(i16* %relevant) #0 {
entry:
  %relevant.addr = alloca i16*, align 8
  %ts = alloca %struct.item_set*, align 8
  store i16* %relevant, i16** %relevant.addr, align 8
  %0 = load %struct.item_set*, %struct.item_set** @fptr, align 8
  %tobool = icmp ne %struct.item_set* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.item_set*, %struct.item_set** @fptr, align 8
  store %struct.item_set* %1, %struct.item_set** %ts, align 8
  store %struct.item_set* null, %struct.item_set** @fptr, align 8
  %2 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %virgin = getelementptr inbounds %struct.item_set, %struct.item_set* %2, i32 0, i32 6
  %3 = load %struct.item*, %struct.item** %virgin, align 8
  %4 = bitcast %struct.item* %3 to i8*
  %5 = load i32, i32* @max_nonterminal, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 16
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %mul, i32 8, i1 false)
  %6 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %closed = getelementptr inbounds %struct.item_set, %struct.item_set* %6, i32 0, i32 7
  %7 = load %struct.item*, %struct.item** %closed, align 8
  %tobool1 = icmp ne %struct.item* %7, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %8 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %closed3 = getelementptr inbounds %struct.item_set, %struct.item_set* %8, i32 0, i32 7
  %9 = load %struct.item*, %struct.item** %closed3, align 8
  %10 = bitcast %struct.item* %9 to i8*
  call void @zfree(i8* %10)
  %11 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %closed4 = getelementptr inbounds %struct.item_set, %struct.item_set* %11, i32 0, i32 7
  store %struct.item* null, %struct.item** %closed4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %12 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %num = getelementptr inbounds %struct.item_set, %struct.item_set* %12, i32 0, i32 0
  store i32 0, i32* %num, align 4
  %13 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %op = getelementptr inbounds %struct.item_set, %struct.item_set* %13, i32 0, i32 2
  store %struct.operator* null, %struct.operator** %op, align 8
  br label %if.end.7

if.else:                                          ; preds = %entry
  %call = call i8* @zalloc(i32 64)
  %14 = bitcast i8* %call to %struct.item_set*
  store %struct.item_set* %14, %struct.item_set** %ts, align 8
  %call5 = call %struct.item* @newItemArray()
  %15 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %virgin6 = getelementptr inbounds %struct.item_set, %struct.item_set* %15, i32 0, i32 6
  store %struct.item* %call5, %struct.item** %virgin6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.end
  %16 = load i16*, i16** %relevant.addr, align 8
  %17 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %relevant8 = getelementptr inbounds %struct.item_set, %struct.item_set* %17, i32 0, i32 5
  store i16* %16, i16** %relevant8, align 8
  %18 = load %struct.item_set*, %struct.item_set** %ts, align 8
  ret %struct.item_set* %18
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare void @zfree(i8*) #1

; Function Attrs: nounwind uwtable
define void @freeItem_Set(%struct.item_set* %ts) #0 {
entry:
  %ts.addr = alloca %struct.item_set*, align 8
  store %struct.item_set* %ts, %struct.item_set** %ts.addr, align 8
  %0 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  store %struct.item_set* %0, %struct.item_set** @fptr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @equivSet(%struct.item_set* %a, %struct.item_set* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.item_set*, align 8
  %b.addr = alloca %struct.item_set*, align 8
  %r = alloca i16*, align 8
  %nt = alloca i32, align 4
  %aa = alloca %struct.item*, align 8
  %ba = alloca %struct.item*, align 8
  store %struct.item_set* %a, %struct.item_set** %a.addr, align 8
  store %struct.item_set* %b, %struct.item_set** %b.addr, align 8
  %0 = load %struct.item_set*, %struct.item_set** %a.addr, align 8
  %virgin = getelementptr inbounds %struct.item_set, %struct.item_set* %0, i32 0, i32 6
  %1 = load %struct.item*, %struct.item** %virgin, align 8
  store %struct.item* %1, %struct.item** %aa, align 8
  %2 = load %struct.item_set*, %struct.item_set** %b.addr, align 8
  %virgin1 = getelementptr inbounds %struct.item_set, %struct.item_set* %2, i32 0, i32 6
  %3 = load %struct.item*, %struct.item** %virgin1, align 8
  store %struct.item* %3, %struct.item** %ba, align 8
  %4 = load %struct.item_set*, %struct.item_set** %a.addr, align 8
  %relevant = getelementptr inbounds %struct.item_set, %struct.item_set* %4, i32 0, i32 5
  %5 = load i16*, i16** %relevant, align 8
  %tobool = icmp ne i16* %5, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.item_set*, %struct.item_set** %a.addr, align 8
  %relevant2 = getelementptr inbounds %struct.item_set, %struct.item_set* %6, i32 0, i32 5
  %7 = load i16*, i16** %relevant2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.item_set*, %struct.item_set** %b.addr, align 8
  %relevant3 = getelementptr inbounds %struct.item_set, %struct.item_set* %8, i32 0, i32 5
  %9 = load i16*, i16** %relevant3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16* [ %7, %cond.true ], [ %9, %cond.false ]
  store i16* %cond, i16** %r, align 8
  %10 = load %struct.item_set*, %struct.item_set** %a.addr, align 8
  %op = getelementptr inbounds %struct.item_set, %struct.item_set* %10, i32 0, i32 2
  %11 = load %struct.operator*, %struct.operator** %op, align 8
  %tobool4 = icmp ne %struct.operator* %11, null
  br i1 %tobool4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %12 = load %struct.item_set*, %struct.item_set** %b.addr, align 8
  %op5 = getelementptr inbounds %struct.item_set, %struct.item_set* %12, i32 0, i32 2
  %13 = load %struct.operator*, %struct.operator** %op5, align 8
  %tobool6 = icmp ne %struct.operator* %13, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %14 = load %struct.item_set*, %struct.item_set** %a.addr, align 8
  %op8 = getelementptr inbounds %struct.item_set, %struct.item_set* %14, i32 0, i32 2
  %15 = load %struct.operator*, %struct.operator** %op8, align 8
  %16 = load %struct.item_set*, %struct.item_set** %b.addr, align 8
  %op9 = getelementptr inbounds %struct.item_set, %struct.item_set* %16, i32 0, i32 2
  %17 = load %struct.operator*, %struct.operator** %op9, align 8
  %cmp = icmp ne %struct.operator* %15, %17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.7
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.7, %land.lhs.true, %cond.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i16*, i16** %r, align 8
  %19 = load i16, i16* %18, align 2
  %conv = sext i16 %19 to i32
  store i32 %conv, i32* %nt, align 4
  %cmp10 = icmp ne i32 %conv, 0
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %nt, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.item*, %struct.item** %aa, align 8
  %arrayidx = getelementptr inbounds %struct.item, %struct.item* %21, i64 %idxprom
  %rule = getelementptr inbounds %struct.item, %struct.item* %arrayidx, i32 0, i32 1
  %22 = load %struct.rule*, %struct.rule** %rule, align 8
  %23 = load i32, i32* %nt, align 4
  %idxprom12 = sext i32 %23 to i64
  %24 = load %struct.item*, %struct.item** %ba, align 8
  %arrayidx13 = getelementptr inbounds %struct.item, %struct.item* %24, i64 %idxprom12
  %rule14 = getelementptr inbounds %struct.item, %struct.item* %arrayidx13, i32 0, i32 1
  %25 = load %struct.rule*, %struct.rule** %rule14, align 8
  %cmp15 = icmp ne %struct.rule* %22, %25
  br i1 %cmp15, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %26 = load i32, i32* %nt, align 4
  %idxprom17 = sext i32 %26 to i64
  %27 = load %struct.item*, %struct.item** %aa, align 8
  %arrayidx18 = getelementptr inbounds %struct.item, %struct.item* %27, i64 %idxprom17
  %delta = getelementptr inbounds %struct.item, %struct.item* %arrayidx18, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i32 0
  %28 = load i32, i32* %nt, align 4
  %idxprom19 = sext i32 %28 to i64
  %29 = load %struct.item*, %struct.item** %ba, align 8
  %arrayidx20 = getelementptr inbounds %struct.item, %struct.item* %29, i64 %idxprom19
  %delta21 = getelementptr inbounds %struct.item, %struct.item* %arrayidx20, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [4 x i16], [4 x i16]* %delta21, i32 0, i32 0
  %call = call i32 @EQUALCOST(i16* %arraydecay, i16* %arraydecay22)
  %tobool23 = icmp ne i32 %call, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %30 = load i16*, i16** %r, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %30, i32 1
  store i16* %incdec.ptr, i16** %r, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.24, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @EQUALCOST(i16*, i16*) #1

; Function Attrs: nounwind uwtable
define void @printRepresentative(%struct._IO_FILE* %f, %struct.item_set* %s) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %s.addr = alloca %struct.item_set*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct.item_set* %s, %struct.item_set** %s.addr, align 8
  %0 = load %struct.item_set*, %struct.item_set** %s.addr, align 8
  %tobool = icmp ne %struct.item_set* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %2 = load %struct.item_set*, %struct.item_set** %s.addr, align 8
  %op = getelementptr inbounds %struct.item_set, %struct.item_set* %2, i32 0, i32 2
  %3 = load %struct.operator*, %struct.operator** %op, align 8
  %name = getelementptr inbounds %struct.operator, %struct.operator* %3, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %4)
  %5 = load %struct.item_set*, %struct.item_set** %s.addr, align 8
  %op1 = getelementptr inbounds %struct.item_set, %struct.item_set* %5, i32 0, i32 2
  %6 = load %struct.operator*, %struct.operator** %op1, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %6, i32 0, i32 5
  %7 = load i32, i32* %arity, align 4
  switch i32 %7, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %10 = load %struct.item_set*, %struct.item_set** %s.addr, align 8
  %kids = getelementptr inbounds %struct.item_set, %struct.item_set* %10, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x %struct.item_set*], [2 x %struct.item_set*]* %kids, i32 0, i64 0
  %11 = load %struct.item_set*, %struct.item_set** %arrayidx, align 8
  call void @printRepresentative(%struct._IO_FILE* %9, %struct.item_set* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %15 = load %struct.item_set*, %struct.item_set** %s.addr, align 8
  %kids6 = getelementptr inbounds %struct.item_set, %struct.item_set* %15, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [2 x %struct.item_set*], [2 x %struct.item_set*]* %kids6, i32 0, i64 0
  %16 = load %struct.item_set*, %struct.item_set** %arrayidx7, align 8
  call void @printRepresentative(%struct._IO_FILE* %14, %struct.item_set* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %19 = load %struct.item_set*, %struct.item_set** %s.addr, align 8
  %kids9 = getelementptr inbounds %struct.item_set, %struct.item_set* %19, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [2 x %struct.item_set*], [2 x %struct.item_set*]* %kids9, i32 0, i64 1
  %20 = load %struct.item_set*, %struct.item_set** %arrayidx10, align 8
  call void @printRepresentative(%struct._IO_FILE* %18, %struct.item_set* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.end, %sw.bb.4, %sw.bb
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @dumpItem(%struct.item* %t) #0 {
entry:
  %t.addr = alloca %struct.item*, align 8
  store %struct.item* %t, %struct.item** %t.addr, align 8
  %0 = load %struct.item*, %struct.item** %t.addr, align 8
  %rule = getelementptr inbounds %struct.item, %struct.item* %0, i32 0, i32 1
  %1 = load %struct.rule*, %struct.rule** %rule, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %1, i32 0, i32 4
  %2 = load %struct.nonterminal*, %struct.nonterminal** %lhs, align 8
  %name = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %4 = load %struct.item*, %struct.item** %t.addr, align 8
  %rule1 = getelementptr inbounds %struct.item, %struct.item* %4, i32 0, i32 1
  %5 = load %struct.rule*, %struct.rule** %rule1, align 8
  %num = getelementptr inbounds %struct.rule, %struct.rule* %5, i32 0, i32 2
  %6 = load i32, i32* %num, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %3, i32 %6)
  %7 = load %struct.item*, %struct.item** %t.addr, align 8
  %delta = getelementptr inbounds %struct.item, %struct.item* %7, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i32 0
  call void @dumpCost(i16* %arraydecay)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @dumpCost(i16* %dc) #0 {
entry:
  %dc.addr = alloca i16*, align 8
  store i16* %dc, i16** %dc.addr, align 8
  %0 = load i16*, i16** %dc.addr, align 8
  %1 = ptrtoint i16* %0 to i64
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i64 %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @dumpItem_Set(%struct.item_set* %ts) #0 {
entry:
  %ts.addr = alloca %struct.item_set*, align 8
  %i = alloca i32, align 4
  store %struct.item_set* %ts, %struct.item_set** %ts.addr, align 8
  %0 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %num = getelementptr inbounds %struct.item_set, %struct.item_set* %0, i32 0, i32 0
  %1 = load i32, i32* %num, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 %1)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @max_nonterminal, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %virgin = getelementptr inbounds %struct.item_set, %struct.item_set* %5, i32 0, i32 6
  %6 = load %struct.item*, %struct.item** %virgin, align 8
  %arrayidx = getelementptr inbounds %struct.item, %struct.item* %6, i64 %idxprom
  %rule = getelementptr inbounds %struct.item, %struct.item* %arrayidx, i32 0, i32 1
  %7 = load %struct.rule*, %struct.rule** %rule, align 8
  %tobool = icmp ne %struct.rule* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %8)
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %virgin3 = getelementptr inbounds %struct.item_set, %struct.item_set* %10, i32 0, i32 6
  %11 = load %struct.item*, %struct.item** %virgin3, align 8
  %arrayidx4 = getelementptr inbounds %struct.item, %struct.item* %11, i64 %idxprom2
  %delta = getelementptr inbounds %struct.item, %struct.item* %arrayidx4, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i32 0
  call void @dumpCost(i16* %arraydecay)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
