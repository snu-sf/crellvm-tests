; ModuleID = './MultiSource.Applications.treecc/14.context.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tagTreeCCContext = type { [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCOperation*], %struct.TreeCCInput*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, i16, i8*, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct._tagTreeCCNode = type { %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, i8*, i32, i32, i32, i8*, i64, %struct._tagTreeCCField*, %struct._tagTreeCCVirtual*, %struct._tagTreeCCNode*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCField = type { i8*, i8*, i8*, i32, i8*, i64, %struct._tagTreeCCField* }
%struct._tagTreeCCVirtual = type { i8*, i8*, %struct._tagTreeCCParam*, %struct._tagTreeCCOperation*, %struct._tagTreeCCVirtual* }
%struct._tagTreeCCParam = type { i8*, i8*, i32, i32, %struct._tagTreeCCParam* }
%struct._tagTreeCCOperation = type { i8*, i8*, i8*, i8*, %struct._tagTreeCCParam*, i32, i32, i8*, i64, %struct._tagTreeCCOperation*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase**, i32, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCOperationCase = type { %struct._tagTreeCCTrigger*, i8*, %struct._tagTreeCCOperation*, i32, i8*, i64, i8*, i64, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase* }
%struct._tagTreeCCTrigger = type { %struct._tagTreeCCNode*, %struct._tagTreeCCTrigger* }
%struct._tagTreeCCStream = type { %struct._tagTreeCCContext*, i8*, i8*, i64, %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf*, i32, i8, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStream* }
%struct._tagTreeCCStreamBuf = type { [2048 x i8], %struct._tagTreeCCStreamBuf* }
%struct._tagTreeCCStreamDefn = type { i8*, i8*, i64, i32, i32, %struct._tagTreeCCStreamDefn* }
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"yy\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"YYNODESTATE\00", align 1

; Function Attrs: nounwind uwtable
define %struct._tagTreeCCContext* @TreeCCContextCreate(%struct.TreeCCInput* %input) #0 {
entry:
  %input.addr = alloca %struct.TreeCCInput*, align 8
  %context = alloca %struct._tagTreeCCContext*, align 8
  store %struct.TreeCCInput* %input, %struct.TreeCCInput** %input.addr, align 8
  %call = call noalias i8* @calloc(i64 1, i64 8304) #3
  %0 = bitcast i8* %call to %struct._tagTreeCCContext*
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %context, align 8
  %cmp = icmp eq %struct._tagTreeCCContext* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %3 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %input1 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %3, i32 0, i32 2
  store %struct.TreeCCInput* %2, %struct.TreeCCInput** %input1, align 8
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %debugMode = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %4, i32 0, i32 8
  %bf.load = load i16, i16* %debugMode, align 8
  %bf.clear = and i16 %bf.load, -2
  store i16 %bf.clear, i16* %debugMode, align 8
  %5 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %track_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %5, i32 0, i32 8
  %bf.load2 = load i16, i16* %track_lines, align 8
  %bf.clear3 = and i16 %bf.load2, -3
  %bf.set = or i16 %bf.clear3, 2
  store i16 %bf.set, i16* %track_lines, align 8
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %no_singletons = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %6, i32 0, i32 8
  %bf.load4 = load i16, i16* %no_singletons, align 8
  %bf.clear5 = and i16 %bf.load4, -5
  store i16 %bf.clear5, i16* %no_singletons, align 8
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %reentrant = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %7, i32 0, i32 8
  %bf.load6 = load i16, i16* %reentrant, align 8
  %bf.clear7 = and i16 %bf.load6, -9
  store i16 %bf.clear7, i16* %reentrant, align 8
  %8 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %force = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %8, i32 0, i32 8
  %bf.load8 = load i16, i16* %force, align 8
  %bf.clear9 = and i16 %bf.load8, -17
  store i16 %bf.clear9, i16* %force, align 8
  %9 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %virtual_factory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %9, i32 0, i32 8
  %bf.load10 = load i16, i16* %virtual_factory, align 8
  %bf.clear11 = and i16 %bf.load10, -33
  store i16 %bf.clear11, i16* %virtual_factory, align 8
  %10 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %abstract_factory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %10, i32 0, i32 8
  %bf.load12 = load i16, i16* %abstract_factory, align 8
  %bf.clear13 = and i16 %bf.load12, -65
  store i16 %bf.clear13, i16* %abstract_factory, align 8
  %11 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %kind_in_vtable = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %11, i32 0, i32 8
  %bf.load14 = load i16, i16* %kind_in_vtable, align 8
  %bf.clear15 = and i16 %bf.load14, -129
  store i16 %bf.clear15, i16* %kind_in_vtable, align 8
  %12 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %strip_filenames = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %12, i32 0, i32 8
  %bf.load16 = load i16, i16* %strip_filenames, align 8
  %bf.clear17 = and i16 %bf.load16, -257
  store i16 %bf.clear17, i16* %strip_filenames, align 8
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %print_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 8
  %bf.load18 = load i16, i16* %print_lines, align 8
  %bf.clear19 = and i16 %bf.load18, -513
  %bf.set20 = or i16 %bf.clear19, 512
  store i16 %bf.set20, i16* %print_lines, align 8
  %14 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %internal_access = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %14, i32 0, i32 8
  %bf.load21 = load i16, i16* %internal_access, align 8
  %bf.clear22 = and i16 %bf.load21, -1025
  store i16 %bf.clear22, i16* %internal_access, align 8
  %15 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %use_allocator = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %15, i32 0, i32 8
  %bf.load23 = load i16, i16* %use_allocator, align 8
  %bf.clear24 = and i16 %bf.load23, -2049
  %bf.set25 = or i16 %bf.clear24, 2048
  store i16 %bf.set25, i16* %use_allocator, align 8
  %16 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %use_gc_allocator = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %16, i32 0, i32 8
  %bf.load26 = load i16, i16* %use_gc_allocator, align 8
  %bf.clear27 = and i16 %bf.load26, -4097
  store i16 %bf.clear27, i16* %use_gc_allocator, align 8
  %17 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %yy_replacement = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %17, i32 0, i32 9
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %yy_replacement, align 8
  %18 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %18, i32 0, i32 10
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8** %state_type, align 8
  %19 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %namespace = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %19, i32 0, i32 11
  store i8* null, i8** %namespace, align 8
  %20 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %language = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %20, i32 0, i32 13
  store i32 0, i32* %language, align 4
  %21 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %block_size = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %21, i32 0, i32 14
  store i32 0, i32* %block_size, align 4
  %22 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %nodeNumber = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %22, i32 0, i32 12
  store i32 1, i32* %nodeNumber, align 4
  %23 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  %baseType = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %23, i32 0, i32 16
  store i8* null, i8** %baseType, align 8
  %24 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context, align 8
  ret %struct._tagTreeCCContext* %24
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @TreeCCOutOfMemory(%struct.TreeCCInput*) #2

; Function Attrs: nounwind uwtable
define void @TreeCCContextDestroy(%struct._tagTreeCCContext* %context) #0 {
entry:
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %hash = alloca i32, align 4
  %node = alloca %struct._tagTreeCCNode*, align 8
  %nextNode = alloca %struct._tagTreeCCNode*, align 8
  %oper = alloca %struct._tagTreeCCOperation*, align 8
  %nextOper = alloca %struct._tagTreeCCOperation*, align 8
  %stream = alloca %struct._tagTreeCCStream*, align 8
  %nextStream = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  %0 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %streamList = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i32 0, i32 3
  %1 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %streamList, align 8
  store %struct._tagTreeCCStream* %1, %struct._tagTreeCCStream** %stream, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %cmp = icmp ne %struct._tagTreeCCStream* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  %nextStream1 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %3, i32 0, i32 10
  %4 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %nextStream1, align 8
  store %struct._tagTreeCCStream* %4, %struct._tagTreeCCStream** %nextStream, align 8
  %5 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %stream, align 8
  call void @TreeCCStreamDestroy(%struct._tagTreeCCStream* %5)
  %6 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %nextStream, align 8
  store %struct._tagTreeCCStream* %6, %struct._tagTreeCCStream** %stream, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %hash, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %7 = load i32, i32* %hash, align 4
  %cmp2 = icmp ult i32 %7, 512
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %hash, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %nodeHash = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %9, i32 0, i32 0
  %arrayidx = getelementptr inbounds [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCNode*]* %nodeHash, i32 0, i64 %idxprom
  %10 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %arrayidx, align 8
  store %struct._tagTreeCCNode* %10, %struct._tagTreeCCNode** %node, align 8
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.5, %for.body
  %11 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %cmp4 = icmp ne %struct._tagTreeCCNode* %11, null
  br i1 %cmp4, label %while.body.5, label %while.end.6

while.body.5:                                     ; preds = %while.cond.3
  %12 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  %nextHash = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %12, i32 0, i32 12
  %13 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextHash, align 8
  store %struct._tagTreeCCNode* %13, %struct._tagTreeCCNode** %nextNode, align 8
  %14 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %node, align 8
  call void @TreeCCNodeFree(%struct._tagTreeCCNode* %14)
  %15 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %nextNode, align 8
  store %struct._tagTreeCCNode* %15, %struct._tagTreeCCNode** %node, align 8
  br label %while.cond.3

while.end.6:                                      ; preds = %while.cond.3
  br label %for.inc

for.inc:                                          ; preds = %while.end.6
  %16 = load i32, i32* %hash, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %hash, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %hash, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.17, %for.end
  %17 = load i32, i32* %hash, align 4
  %cmp8 = icmp ult i32 %17, 512
  br i1 %cmp8, label %for.body.9, label %for.end.19

for.body.9:                                       ; preds = %for.cond.7
  %18 = load i32, i32* %hash, align 4
  %idxprom10 = zext i32 %18 to i64
  %19 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %operHash = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %19, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [512 x %struct._tagTreeCCOperation*], [512 x %struct._tagTreeCCOperation*]* %operHash, i32 0, i64 %idxprom10
  %20 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %arrayidx11, align 8
  store %struct._tagTreeCCOperation* %20, %struct._tagTreeCCOperation** %oper, align 8
  br label %while.cond.12

while.cond.12:                                    ; preds = %while.body.14, %for.body.9
  %21 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %cmp13 = icmp ne %struct._tagTreeCCOperation* %21, null
  br i1 %cmp13, label %while.body.14, label %while.end.16

while.body.14:                                    ; preds = %while.cond.12
  %22 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  %nextHash15 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %22, i32 0, i32 9
  %23 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %nextHash15, align 8
  store %struct._tagTreeCCOperation* %23, %struct._tagTreeCCOperation** %nextOper, align 8
  %24 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %oper, align 8
  call void @TreeCCOperationFree(%struct._tagTreeCCOperation* %24)
  %25 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %nextOper, align 8
  store %struct._tagTreeCCOperation* %25, %struct._tagTreeCCOperation** %oper, align 8
  br label %while.cond.12

while.end.16:                                     ; preds = %while.cond.12
  br label %for.inc.17

for.inc.17:                                       ; preds = %while.end.16
  %26 = load i32, i32* %hash, align 4
  %inc18 = add i32 %26, 1
  store i32 %inc18, i32* %hash, align 4
  br label %for.cond.7

for.end.19:                                       ; preds = %for.cond.7
  %27 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %28 = bitcast %struct._tagTreeCCContext* %27 to i8*
  call void @free(i8* %28) #3
  ret void
}

declare void @TreeCCStreamDestroy(%struct._tagTreeCCStream*) #2

declare void @TreeCCNodeFree(%struct._tagTreeCCNode*) #2

declare void @TreeCCOperationFree(%struct._tagTreeCCOperation*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
