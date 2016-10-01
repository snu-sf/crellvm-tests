; ModuleID = './MultiSource.Applications.treecc/10.options.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32 (%struct._tagTreeCCContext*, i8*, i32)*, i32 }
%struct._tagTreeCCContext = type { [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCOperation*], %struct.TreeCCInput*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, i16, i8*, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct._tagTreeCCNode = type { %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, i8*, i32, i32, i32, i8*, i64, %struct._tagTreeCCField*, %struct._tagTreeCCVirtual*, %struct._tagTreeCCNode*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCField = type { i8*, i8*, i8*, i32, i8*, i64, %struct._tagTreeCCField* }
%struct._tagTreeCCVirtual = type { i8*, i8*, %struct._tagTreeCCParam*, %struct._tagTreeCCOperation*, %struct._tagTreeCCVirtual* }
%struct._tagTreeCCParam = type { i8*, i8*, i32, i32, %struct._tagTreeCCParam* }
%struct._tagTreeCCOperation = type { i8*, i8*, i8*, i8*, %struct._tagTreeCCParam*, i32, i32, i8*, i64, %struct._tagTreeCCOperation*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase**, i32, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCOperationCase = type { %struct._tagTreeCCTrigger*, i8*, %struct._tagTreeCCOperation*, i32, i8*, i64, i8*, i64, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase* }
%struct._tagTreeCCTrigger = type { %struct._tagTreeCCNode*, %struct._tagTreeCCTrigger* }
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._tagTreeCCStream = type { %struct._tagTreeCCContext*, i8*, i8*, i64, %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf*, i32, i8, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStream* }
%struct._tagTreeCCStreamBuf = type { [2048 x i8], %struct._tagTreeCCStreamBuf* }
%struct._tagTreeCCStreamDefn = type { i8*, i8*, i64, i32, i32, %struct._tagTreeCCStreamDefn* }

@OptionHandlers = internal constant [33 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @TrackLinesOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @TrackLinesOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @NoSingletonsOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @NoSingletonsOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @ReentrantOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @ReentrantOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @ForceOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @ForceOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @VirtualFactoryOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @VirtualFactoryOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @AbstractFactoryOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @AbstractFactoryOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @KindInVtableOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @KindInVtableOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @PrefixOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @StateTypeOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @NamespaceOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @NamespaceOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @BaseOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @LangOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @BlockSizeOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @StripFilenamesOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @PrintLineNumberOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @PrintLineNumberOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @StripFilenamesOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @InternalAccessOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @InternalAccessOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @AllocatorOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @AllocatorOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @GCAllocatorOption, i32 1 }, %struct.anon { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @GCAllocatorOption, i32 0 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 (%struct._tagTreeCCContext*, i8*, i32)* @BaseTypeOption, i32 0 }, %struct.anon zeroinitializer], align 16
@.str = private unnamed_addr constant [12 x i8] c"track_lines\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"no_track_lines\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"no_singletons\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"singletons\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"reentrant\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"no_reentrant\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"no_force\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"virtual_factory\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"no_virtual_factory\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"abstract_factory\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"no_abstract_factory\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"kind_in_vtable\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"kind_in_node\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"state_type\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"lang\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"block_size\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"strip_filenames\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"print_lines\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"no_print_lines\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"no_strip_filenames\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"internal_access\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"public_access\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"allocator\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"no_allocator\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"gc_allocator\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"no_gc_allocator\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"base_type\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"c++\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"C++\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"java\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"Java\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"c#\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"C#\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"csharp\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"ruby\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"Ruby\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"php\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"PHP\00", align 1

; Function Attrs: nounwind uwtable
define i32 @TreeCCOptionProcess(%struct._tagTreeCCContext* %context, i8* %name, i8* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %opt = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 0, i32* %opt, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %opt, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* @OptionHandlers, i32 0, i64 %idxprom
  %name1 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %1 = load i8*, i8** %name1, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i32, i32* %opt, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* @OptionHandlers, i32 0, i64 %idxprom2
  %name4 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx3, i32 0, i32 0
  %4 = load i8*, i8** %name4, align 8
  %call = call i32 @strcmp(i8* %2, i8* %4) #2
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %opt, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* @OptionHandlers, i32 0, i64 %idxprom5
  %func = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx6, i32 0, i32 1
  %6 = load i32 (%struct._tagTreeCCContext*, i8*, i32)*, i32 (%struct._tagTreeCCContext*, i8*, i32)** %func, align 8
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %8 = load i8*, i8** %value.addr, align 8
  %9 = load i32, i32* %opt, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* @OptionHandlers, i32 0, i64 %idxprom7
  %flag = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx8, i32 0, i32 2
  %10 = load i32, i32* %flag, align 4
  %call9 = call i32 %6(%struct._tagTreeCCContext* %7, i8* %8, i32 %10)
  store i32 %call9, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %11 = load i32, i32* %opt, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %opt, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @TrackLinesOption(%struct._tagTreeCCContext* %context, i8* %value, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %value.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %flag.addr, align 4
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %track_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 8
  %3 = trunc i32 %1 to i16
  %bf.load = load i16, i16* %track_lines, align 8
  %bf.value = and i16 %3, 1
  %bf.shl = shl i16 %bf.value, 1
  %bf.clear = and i16 %bf.load, -3
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, i16* %track_lines, align 8
  %bf.result.shl = shl i16 %bf.value, 15
  %bf.result.ashr = ashr i16 %bf.result.shl, 15
  %bf.result.cast = sext i16 %bf.result.ashr to i32
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @NoSingletonsOption(%struct._tagTreeCCContext* %context, i8* %value, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %value.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %flag.addr, align 4
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %no_singletons = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 8
  %3 = trunc i32 %1 to i16
  %bf.load = load i16, i16* %no_singletons, align 8
  %bf.value = and i16 %3, 1
  %bf.shl = shl i16 %bf.value, 2
  %bf.clear = and i16 %bf.load, -5
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, i16* %no_singletons, align 8
  %bf.result.shl = shl i16 %bf.value, 15
  %bf.result.ashr = ashr i16 %bf.result.shl, 15
  %bf.result.cast = sext i16 %bf.result.ashr to i32
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @ReentrantOption(%struct._tagTreeCCContext* %context, i8* %value, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %value.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %flag.addr, align 4
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %reentrant = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 8
  %3 = trunc i32 %1 to i16
  %bf.load = load i16, i16* %reentrant, align 8
  %bf.value = and i16 %3, 1
  %bf.shl = shl i16 %bf.value, 3
  %bf.clear = and i16 %bf.load, -9
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, i16* %reentrant, align 8
  %bf.result.shl = shl i16 %bf.value, 15
  %bf.result.ashr = ashr i16 %bf.result.shl, 15
  %bf.result.cast = sext i16 %bf.result.ashr to i32
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @ForceOption(%struct._tagTreeCCContext* %context, i8* %value, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %value.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %flag.addr, align 4
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %force = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 8
  %3 = trunc i32 %1 to i16
  %bf.load = load i16, i16* %force, align 8
  %bf.value = and i16 %3, 1
  %bf.shl = shl i16 %bf.value, 4
  %bf.clear = and i16 %bf.load, -17
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, i16* %force, align 8
  %bf.result.shl = shl i16 %bf.value, 15
  %bf.result.ashr = ashr i16 %bf.result.shl, 15
  %bf.result.cast = sext i16 %bf.result.ashr to i32
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @VirtualFactoryOption(%struct._tagTreeCCContext* %context, i8* %value, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %value.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %flag.addr, align 4
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %virtual_factory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 8
  %3 = trunc i32 %1 to i16
  %bf.load = load i16, i16* %virtual_factory, align 8
  %bf.value = and i16 %3, 1
  %bf.shl = shl i16 %bf.value, 5
  %bf.clear = and i16 %bf.load, -33
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, i16* %virtual_factory, align 8
  %bf.result.shl = shl i16 %bf.value, 15
  %bf.result.ashr = ashr i16 %bf.result.shl, 15
  %bf.result.cast = sext i16 %bf.result.ashr to i32
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @AbstractFactoryOption(%struct._tagTreeCCContext* %context, i8* %value, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %value.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %flag.addr, align 4
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %abstract_factory = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 8
  %3 = trunc i32 %1 to i16
  %bf.load = load i16, i16* %abstract_factory, align 8
  %bf.value = and i16 %3, 1
  %bf.shl = shl i16 %bf.value, 6
  %bf.clear = and i16 %bf.load, -65
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, i16* %abstract_factory, align 8
  %bf.result.shl = shl i16 %bf.value, 15
  %bf.result.ashr = ashr i16 %bf.result.shl, 15
  %bf.result.cast = sext i16 %bf.result.ashr to i32
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @KindInVtableOption(%struct._tagTreeCCContext* %context, i8* %value, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %value.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %flag.addr, align 4
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %kind_in_vtable = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 8
  %3 = trunc i32 %1 to i16
  %bf.load = load i16, i16* %kind_in_vtable, align 8
  %bf.value = and i16 %3, 1
  %bf.shl = shl i16 %bf.value, 7
  %bf.clear = and i16 %bf.load, -129
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, i16* %kind_in_vtable, align 8
  %bf.result.shl = shl i16 %bf.value, 15
  %bf.result.ashr = ashr i16 %bf.result.shl, 15
  %bf.result.cast = sext i16 %bf.result.ashr to i32
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @PrefixOption(%struct._tagTreeCCContext* %context, i8* %value, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %value.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %value.addr, align 8
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %yy_replacement = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 9
  store i8* %1, i8** %yy_replacement, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @StateTypeOption(%struct._tagTreeCCContext* %context, i8* %value, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %value.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %value.addr, align 8
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %state_type = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 10
  store i8* %1, i8** %state_type, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @NamespaceOption(%struct._tagTreeCCContext* %context, i8* %value, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %value.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %value.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %3 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %namespace = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %3, i32 0, i32 11
  store i8* null, i8** %namespace, align 8
  store i32 0, i32* %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %4 = load i8*, i8** %value.addr, align 8
  %5 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %namespace4 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %5, i32 0, i32 11
  store i8* %4, i8** %namespace4, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.3, %if.then.2, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @BaseOption(%struct._tagTreeCCContext* %context, i8* %value, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %value.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  %num = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %value.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i32 3, i32* %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  store i32 0, i32* %num, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.3
  %3 = load i8*, i8** %value.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv4 = sext i8 %4 to i32
  %cmp5 = icmp sge i32 %conv4, 48
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i8*, i8** %value.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv7 = sext i8 %6 to i32
  %cmp8 = icmp sle i32 %conv7, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32, i32* %num, align 4
  %mul = mul nsw i32 %8, 10
  %9 = load i8*, i8** %value.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv10 = sext i8 %10 to i32
  %sub = sub nsw i32 %conv10, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, i32* %num, align 4
  %11 = load i8*, i8** %value.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %value.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i8*, i8** %value.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv11 = sext i8 %13 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %while.end
  store i32 3, i32* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %14 = load i32, i32* %num, align 4
  %15 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %nodeNumber = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %15, i32 0, i32 12
  store i32 %14, i32* %nodeNumber, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then.14, %if.then.2, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @LangOption(%struct._tagTreeCCContext* %context, i8* %value, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %value.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %value.addr, align 8
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0)) #2
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then.4

lor.lhs.false:                                    ; preds = %if.else
  %2 = load i8*, i8** %value.addr, align 8
  %call2 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0)) #2
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else.5, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false, %if.else
  %3 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %3, i32 0, i32 13
  store i32 0, i32* %language, align 4
  br label %if.end.53

if.else.5:                                        ; preds = %lor.lhs.false
  %4 = load i8*, i8** %value.addr, align 8
  %call6 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0)) #2
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %lor.lhs.false.8, label %if.then.11

lor.lhs.false.8:                                  ; preds = %if.else.5
  %5 = load i8*, i8** %value.addr, align 8
  %call9 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0)) #2
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.else.13, label %if.then.11

if.then.11:                                       ; preds = %lor.lhs.false.8, %if.else.5
  %6 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language12 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %6, i32 0, i32 13
  store i32 1, i32* %language12, align 4
  br label %if.end.52

if.else.13:                                       ; preds = %lor.lhs.false.8
  %7 = load i8*, i8** %value.addr, align 8
  %call14 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0)) #2
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %lor.lhs.false.16, label %if.then.19

lor.lhs.false.16:                                 ; preds = %if.else.13
  %8 = load i8*, i8** %value.addr, align 8
  %call17 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0)) #2
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else.21, label %if.then.19

if.then.19:                                       ; preds = %lor.lhs.false.16, %if.else.13
  %9 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language20 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %9, i32 0, i32 13
  store i32 2, i32* %language20, align 4
  br label %if.end.51

if.else.21:                                       ; preds = %lor.lhs.false.16
  %10 = load i8*, i8** %value.addr, align 8
  %call22 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0)) #2
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %lor.lhs.false.24, label %if.then.30

lor.lhs.false.24:                                 ; preds = %if.else.21
  %11 = load i8*, i8** %value.addr, align 8
  %call25 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0)) #2
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %lor.lhs.false.27, label %if.then.30

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.24
  %12 = load i8*, i8** %value.addr, align 8
  %call28 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0)) #2
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.else.32, label %if.then.30

if.then.30:                                       ; preds = %lor.lhs.false.27, %lor.lhs.false.24, %if.else.21
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language31 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 13
  store i32 3, i32* %language31, align 4
  br label %if.end.50

if.else.32:                                       ; preds = %lor.lhs.false.27
  %14 = load i8*, i8** %value.addr, align 8
  %call33 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0)) #2
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %lor.lhs.false.35, label %if.then.38

lor.lhs.false.35:                                 ; preds = %if.else.32
  %15 = load i8*, i8** %value.addr, align 8
  %call36 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0)) #2
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.else.40, label %if.then.38

if.then.38:                                       ; preds = %lor.lhs.false.35, %if.else.32
  %16 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language39 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %16, i32 0, i32 13
  store i32 4, i32* %language39, align 4
  br label %if.end.49

if.else.40:                                       ; preds = %lor.lhs.false.35
  %17 = load i8*, i8** %value.addr, align 8
  %call41 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0)) #2
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %lor.lhs.false.43, label %if.then.46

lor.lhs.false.43:                                 ; preds = %if.else.40
  %18 = load i8*, i8** %value.addr, align 8
  %call44 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0)) #2
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.else.48, label %if.then.46

if.then.46:                                       ; preds = %lor.lhs.false.43, %if.else.40
  %19 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %language47 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %19, i32 0, i32 13
  store i32 5, i32* %language47, align 4
  br label %if.end

if.else.48:                                       ; preds = %lor.lhs.false.43
  store i32 3, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.46
  br label %if.end.49

if.end.49:                                        ; preds = %if.end, %if.then.38
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.30
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.19
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.11
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.else.48, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @BlockSizeOption(%struct._tagTreeCCContext* %context, i8* %value, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %value.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  %num = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %value.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i32 3, i32* %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  store i32 0, i32* %num, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.3
  %3 = load i8*, i8** %value.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv4 = sext i8 %4 to i32
  %cmp5 = icmp sge i32 %conv4, 48
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i8*, i8** %value.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv7 = sext i8 %6 to i32
  %cmp8 = icmp sle i32 %conv7, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32, i32* %num, align 4
  %mul = mul nsw i32 %8, 10
  %9 = load i8*, i8** %value.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv10 = sext i8 %10 to i32
  %sub = sub nsw i32 %conv10, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, i32* %num, align 4
  %11 = load i8*, i8** %value.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %value.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i8*, i8** %value.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv11 = sext i8 %13 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %while.end
  store i32 3, i32* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %14 = load i32, i32* %num, align 4
  %15 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %block_size = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %15, i32 0, i32 14
  store i32 %14, i32* %block_size, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then.14, %if.then.2, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @StripFilenamesOption(%struct._tagTreeCCContext* %context, i8* %value, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %value.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %flag.addr, align 4
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %strip_filenames = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 8
  %3 = trunc i32 %1 to i16
  %bf.load = load i16, i16* %strip_filenames, align 8
  %bf.value = and i16 %3, 1
  %bf.shl = shl i16 %bf.value, 8
  %bf.clear = and i16 %bf.load, -257
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, i16* %strip_filenames, align 8
  %bf.result.shl = shl i16 %bf.value, 15
  %bf.result.ashr = ashr i16 %bf.result.shl, 15
  %bf.result.cast = sext i16 %bf.result.ashr to i32
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @PrintLineNumberOption(%struct._tagTreeCCContext* %context, i8* %value, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %value.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %flag.addr, align 4
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %print_lines = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 8
  %3 = trunc i32 %1 to i16
  %bf.load = load i16, i16* %print_lines, align 8
  %bf.value = and i16 %3, 1
  %bf.shl = shl i16 %bf.value, 9
  %bf.clear = and i16 %bf.load, -513
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, i16* %print_lines, align 8
  %bf.result.shl = shl i16 %bf.value, 15
  %bf.result.ashr = ashr i16 %bf.result.shl, 15
  %bf.result.cast = sext i16 %bf.result.ashr to i32
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @InternalAccessOption(%struct._tagTreeCCContext* %context, i8* %value, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %value.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %flag.addr, align 4
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %internal_access = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 8
  %3 = trunc i32 %1 to i16
  %bf.load = load i16, i16* %internal_access, align 8
  %bf.value = and i16 %3, 1
  %bf.shl = shl i16 %bf.value, 10
  %bf.clear = and i16 %bf.load, -1025
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, i16* %internal_access, align 8
  %bf.result.shl = shl i16 %bf.value, 15
  %bf.result.ashr = ashr i16 %bf.result.shl, 15
  %bf.result.cast = sext i16 %bf.result.ashr to i32
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @AllocatorOption(%struct._tagTreeCCContext* %context, i8* %value, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %value.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %flag.addr, align 4
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %use_allocator = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 8
  %3 = trunc i32 %1 to i16
  %bf.load = load i16, i16* %use_allocator, align 8
  %bf.value = and i16 %3, 1
  %bf.shl = shl i16 %bf.value, 11
  %bf.clear = and i16 %bf.load, -2049
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, i16* %use_allocator, align 8
  %bf.result.shl = shl i16 %bf.value, 15
  %bf.result.ashr = ashr i16 %bf.result.shl, 15
  %bf.result.cast = sext i16 %bf.result.ashr to i32
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @GCAllocatorOption(%struct._tagTreeCCContext* %context, i8* %value, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %value.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %flag.addr, align 4
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %use_gc_allocator = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 8
  %3 = trunc i32 %1 to i16
  %bf.load = load i16, i16* %use_gc_allocator, align 8
  %bf.value = and i16 %3, 1
  %bf.shl = shl i16 %bf.value, 12
  %bf.clear = and i16 %bf.load, -4097
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, i16* %use_gc_allocator, align 8
  %bf.result.shl = shl i16 %bf.value, 15
  %bf.result.ashr = ashr i16 %bf.result.shl, 15
  %bf.result.cast = sext i16 %bf.result.ashr to i32
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @BaseTypeOption(%struct._tagTreeCCContext* %context, i8* %value, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._tagTreeCCContext*, align 8
  %value.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  store %struct._tagTreeCCContext* %context, %struct._tagTreeCCContext** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %value.addr, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  %2 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %baseType = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %2, i32 0, i32 16
  store i8* null, i8** %baseType, align 8
  store i32 0, i32* %retval
  br label %return

if.else.2:                                        ; preds = %if.else
  %3 = load i8*, i8** %value.addr, align 8
  %4 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %context.addr, align 8
  %baseType3 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %4, i32 0, i32 16
  store i8* %3, i8** %baseType3, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.2, %if.then.1, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
