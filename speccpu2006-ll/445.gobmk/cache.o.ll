; ModuleID = 'engine/cache.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashtable = type { i32, %struct.hashnode_t**, i32, %struct.hashnode_t*, i32, i32, %struct.read_result_t*, i32 }
%struct.hashnode_t = type { %struct.Hash_data, %struct.read_result_t*, %struct.hashnode_t* }
%struct.Hash_data = type { [1 x i64] }
%struct.read_result_t = type { i32, i32, %struct.read_result_t* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.stats_data = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"Komaster %u (%d, %d) Routine %u, (%d, %d), depth: %u \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Result: %u %u, (%d, %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Hash value: %lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Dump of hashtable\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Total size: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Size of hash table: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Number of positions in table: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Bucket %5d: \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@movehash = internal global %struct.hashtable* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [49 x i8] c"Warning: failed to allocate hashtable, exiting.\0A\00", align 1
@stackp = external global i32, align 4
@depth = external global i32, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"%s %c%d: \00", align 1
@board_size = external global i32, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@board = external global [421 x i8], align 16
@.str.13 = private unnamed_addr constant [8 x i8] c"%s %c%d\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"%s PASS\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"%s [%d]\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@sgf_dumptree = external global %struct.SGFTree_t*, align 8
@.str.17 = private unnamed_addr constant [15 x i8] c"%s %c%d %c%d: \00", align 1
@debug = external global i32, align 4
@.str.18 = private unnamed_addr constant [40 x i8] c"Hashtable cleared because it was full.\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"find_defense\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"defend1\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"defend2\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"defend3\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"defend4\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"attack\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"attack2\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"attack3\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"owl_attack\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"owl_defend\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@hashtable_partially_clear.routines = private unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0)], align 16
@.str.30 = private unnamed_addr constant [142 x i8] c"routine        total     0     1     2     3     4     5     6     7     8     9    10    11    12    13    14    15    16    17    18    19\0A\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"%-14s%6d\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%6d\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"engine/cache.c\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"routine >= 0 && routine < (6 + 1)\00", align 1
@hashdata = external global %struct.Hash_data, align 8
@stats = external global %struct.stats_data, align 4
@.str.35 = private unnamed_addr constant [43 x i8] c"We found position %H in the hash table...\0A\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"Created position %H in the hash table...\0A\00", align 1
@.str.37 = private unnamed_addr constant [59 x i8] c"...but no previous result for routine %d and (%1m, %1m)...\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"%o...and unfortunately there was no room for one.\0A\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"%o...so we allocate a new one.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @read_result_dump(%struct.read_result_t* %result, %struct._IO_FILE* %outfile) #0 {
entry:
  %result.addr = alloca %struct.read_result_t*, align 8
  %outfile.addr = alloca %struct._IO_FILE*, align 8
  store %struct.read_result_t* %result, %struct.read_result_t** %result.addr, align 8
  store %struct._IO_FILE* %outfile, %struct._IO_FILE** %outfile.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %1 = load %struct.read_result_t*, %struct.read_result_t** %result.addr, align 8
  %data1 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %1, i32 0, i32 0
  %2 = load i32, i32* %data1, align 4
  %shr = lshr i32 %2, 29
  %and = and i32 %shr, 7
  %3 = load %struct.read_result_t*, %struct.read_result_t** %result.addr, align 8
  %data11 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %3, i32 0, i32 0
  %4 = load i32, i32* %data11, align 4
  %shr2 = lshr i32 %4, 19
  %and3 = and i32 %shr2, 1023
  %div = udiv i32 %and3, 20
  %sub = sub i32 %div, 1
  %5 = load %struct.read_result_t*, %struct.read_result_t** %result.addr, align 8
  %data14 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %5, i32 0, i32 0
  %6 = load i32, i32* %data14, align 4
  %shr5 = lshr i32 %6, 19
  %and6 = and i32 %shr5, 1023
  %rem = urem i32 %and6, 20
  %sub7 = sub i32 %rem, 1
  %7 = load %struct.read_result_t*, %struct.read_result_t** %result.addr, align 8
  %data18 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %7, i32 0, i32 0
  %8 = load i32, i32* %data18, align 4
  %shr9 = lshr i32 %8, 15
  %and10 = and i32 %shr9, 15
  %9 = load %struct.read_result_t*, %struct.read_result_t** %result.addr, align 8
  %data111 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %9, i32 0, i32 0
  %10 = load i32, i32* %data111, align 4
  %shr12 = lshr i32 %10, 5
  %and13 = and i32 %shr12, 1023
  %div14 = udiv i32 %and13, 20
  %sub15 = sub i32 %div14, 1
  %11 = load %struct.read_result_t*, %struct.read_result_t** %result.addr, align 8
  %data116 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %11, i32 0, i32 0
  %12 = load i32, i32* %data116, align 4
  %shr17 = lshr i32 %12, 5
  %and18 = and i32 %shr17, 1023
  %rem19 = urem i32 %and18, 20
  %sub20 = sub i32 %rem19, 1
  %13 = load %struct.read_result_t*, %struct.read_result_t** %result.addr, align 8
  %data121 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %13, i32 0, i32 0
  %14 = load i32, i32* %data121, align 4
  %shr22 = lshr i32 %14, 0
  %and23 = and i32 %shr22, 31
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i32 0, i32 0), i32 %and, i32 %sub, i32 %sub7, i32 %and10, i32 %sub15, i32 %sub20, i32 %and23)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %16 = load %struct.read_result_t*, %struct.read_result_t** %result.addr, align 8
  %data2 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %16, i32 0, i32 1
  %17 = load i32, i32* %data2, align 4
  %shr24 = lshr i32 %17, 28
  %and25 = and i32 %shr24, 3
  %18 = load %struct.read_result_t*, %struct.read_result_t** %result.addr, align 8
  %data226 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %18, i32 0, i32 1
  %19 = load i32, i32* %data226, align 4
  %shr27 = lshr i32 %19, 24
  %and28 = and i32 %shr27, 15
  %20 = load %struct.read_result_t*, %struct.read_result_t** %result.addr, align 8
  %data229 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %20, i32 0, i32 1
  %21 = load i32, i32* %data229, align 4
  %shr30 = lshr i32 %21, 10
  %and31 = and i32 %shr30, 1023
  %div32 = udiv i32 %and31, 20
  %sub33 = sub i32 %div32, 1
  %22 = load %struct.read_result_t*, %struct.read_result_t** %result.addr, align 8
  %data234 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %22, i32 0, i32 1
  %23 = load i32, i32* %data234, align 4
  %shr35 = lshr i32 %23, 10
  %and36 = and i32 %shr35, 1023
  %rem37 = urem i32 %and36, 20
  %sub38 = sub i32 %rem37, 1
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 %and25, i32 %and28, i32 %sub33, i32 %sub38)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @hashnode_dump(%struct.hashnode_t* %node, %struct._IO_FILE* %outfile) #0 {
entry:
  %node.addr = alloca %struct.hashnode_t*, align 8
  %outfile.addr = alloca %struct._IO_FILE*, align 8
  %result = alloca %struct.read_result_t*, align 8
  store %struct.hashnode_t* %node, %struct.hashnode_t** %node.addr, align 8
  store %struct._IO_FILE* %outfile, %struct._IO_FILE** %outfile.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %1 = load %struct.hashnode_t*, %struct.hashnode_t** %node.addr, align 8
  %key = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %1, i32 0, i32 0
  %hashval = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %key, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %hashval, i32 0, i32 0
  %2 = ptrtoint i64* %arraydecay to i64
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i64 %2)
  %3 = load %struct.hashnode_t*, %struct.hashnode_t** %node.addr, align 8
  %results = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %3, i32 0, i32 1
  %4 = load %struct.read_result_t*, %struct.read_result_t** %results, align 8
  store %struct.read_result_t* %4, %struct.read_result_t** %result, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.read_result_t*, %struct.read_result_t** %result, align 8
  %cmp = icmp ne %struct.read_result_t* %5, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.read_result_t*, %struct.read_result_t** %result, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  call void @read_result_dump(%struct.read_result_t* %6, %struct._IO_FILE* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.read_result_t*, %struct.read_result_t** %result, align 8
  %next = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %8, i32 0, i32 2
  %9 = load %struct.read_result_t*, %struct.read_result_t** %next, align 8
  store %struct.read_result_t* %9, %struct.read_result_t** %result, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @hashtable_dump(%struct.hashtable* %table, %struct._IO_FILE* %outfile) #0 {
entry:
  %table.addr = alloca %struct.hashtable*, align 8
  %outfile.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %hn = alloca %struct.hashnode_t*, align 8
  store %struct.hashtable* %table, %struct.hashtable** %table.addr, align 8
  store %struct._IO_FILE* %outfile, %struct._IO_FILE** %outfile.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %2 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %num_nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 2
  %3 = load i32, i32* %num_nodes, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %hashtablesize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 0
  %6 = load i32, i32* %hashtablesize, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i32 %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %8 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %free_node = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 4
  %9 = load i32, i32* %free_node, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0), i32 %9)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %hashtablesize4 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 0
  %12 = load i32, i32* %hashtablesize4, align 4
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %14 = load i32, i32* %i, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 %14)
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %hashtable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 1
  %17 = load %struct.hashnode_t**, %struct.hashnode_t*** %hashtable, align 8
  %arrayidx = getelementptr inbounds %struct.hashnode_t*, %struct.hashnode_t** %17, i64 %idxprom
  %18 = load %struct.hashnode_t*, %struct.hashnode_t** %arrayidx, align 8
  store %struct.hashnode_t* %18, %struct.hashnode_t** %hn, align 8
  %19 = load %struct.hashnode_t*, %struct.hashnode_t** %hn, align 8
  %cmp6 = icmp eq %struct.hashnode_t* %19, null
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %21 = load %struct.hashnode_t*, %struct.hashnode_t** %hn, align 8
  %tobool = icmp ne %struct.hashnode_t* %21, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load %struct.hashnode_t*, %struct.hashnode_t** %hn, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  call void @hashnode_dump(%struct.hashnode_t* %22, %struct._IO_FILE* %23)
  %24 = load %struct.hashnode_t*, %struct.hashnode_t** %hn, align 8
  %next = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %24, i32 0, i32 2
  %25 = load %struct.hashnode_t*, %struct.hashnode_t** %next, align 8
  store %struct.hashnode_t* %25, %struct.hashnode_t** %hn, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @reading_cache_init() #0 {
entry:
  %nodes = alloca i32, align 4
  store i32 400000, i32* %nodes, align 4
  %0 = load i32, i32* %nodes, align 4
  %conv = sitofp i32 %0 to double
  %mul = fmul double 1.500000e+00, %conv
  %conv1 = fptosi double %mul to i32
  %1 = load i32, i32* %nodes, align 4
  %2 = load i32, i32* %nodes, align 4
  %conv2 = sitofp i32 %2 to double
  %mul3 = fmul double 1.400000e+00, %conv2
  %conv4 = fptosi double %mul3 to i32
  %call = call %struct.hashtable* @hashtable_new(i32 %conv1, i32 %1, i32 %conv4)
  store %struct.hashtable* %call, %struct.hashtable** @movehash, align 8
  %3 = load %struct.hashtable*, %struct.hashtable** @movehash, align 8
  %tobool = icmp ne %struct.hashtable* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i32 0, i32 0))
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.hashtable* @hashtable_new(i32 %tablesize, i32 %num_nodes, i32 %num_results) #0 {
entry:
  %retval = alloca %struct.hashtable*, align 8
  %tablesize.addr = alloca i32, align 4
  %num_nodes.addr = alloca i32, align 4
  %num_results.addr = alloca i32, align 4
  %table = alloca %struct.hashtable*, align 8
  store i32 %tablesize, i32* %tablesize.addr, align 4
  store i32 %num_nodes, i32* %num_nodes.addr, align 4
  store i32 %num_results, i32* %num_results.addr, align 4
  call void @hash_init()
  %call = call noalias i8* @malloc(i64 56) #5
  %0 = bitcast i8* %call to %struct.hashtable*
  store %struct.hashtable* %0, %struct.hashtable** %table, align 8
  %1 = load %struct.hashtable*, %struct.hashtable** %table, align 8
  %cmp = icmp eq %struct.hashtable* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.hashtable* null, %struct.hashtable** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.hashtable*, %struct.hashtable** %table, align 8
  %3 = load i32, i32* %tablesize.addr, align 4
  %4 = load i32, i32* %num_nodes.addr, align 4
  %5 = load i32, i32* %num_results.addr, align 4
  %call1 = call i32 @hashtable_init(%struct.hashtable* %2, i32 %3, i32 %4, i32 %5)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.hashtable*, %struct.hashtable** %table, align 8
  %7 = bitcast %struct.hashtable* %6 to i8*
  call void @free(i8* %7) #5
  store %struct.hashtable* null, %struct.hashtable** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %8 = load %struct.hashtable*, %struct.hashtable** %table, align 8
  store %struct.hashtable* %8, %struct.hashtable** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %9 = load %struct.hashtable*, %struct.hashtable** %retval
  ret %struct.hashtable* %9
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: nounwind uwtable
define void @reading_cache_clear() #0 {
entry:
  %0 = load %struct.hashtable*, %struct.hashtable** @movehash, align 8
  call void @hashtable_clear(%struct.hashtable* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @hashtable_clear(%struct.hashtable* %table) #0 {
entry:
  %table.addr = alloca %struct.hashtable*, align 8
  %bucket = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.hashtable* %table, %struct.hashtable** %table.addr, align 8
  %0 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %tobool = icmp ne %struct.hashtable* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %bucket, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %bucket, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %hashtablesize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 0
  %3 = load i32, i32* %hashtablesize, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %bucket, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %hashtable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 1
  %6 = load %struct.hashnode_t**, %struct.hashnode_t*** %hashtable, align 8
  %arrayidx = getelementptr inbounds %struct.hashnode_t*, %struct.hashnode_t** %6, i64 %idxprom
  store %struct.hashnode_t* null, %struct.hashnode_t** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %bucket, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %bucket, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.6, %for.end
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %num_results = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 5
  %10 = load i32, i32* %num_results, align 4
  %cmp2 = icmp slt i32 %8, %10
  br i1 %cmp2, label %for.body.3, label %for.end.8

for.body.3:                                       ; preds = %for.cond.1
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %all_results = getelementptr inbounds %struct.hashtable, %struct.hashtable* %12, i32 0, i32 6
  %13 = load %struct.read_result_t*, %struct.read_result_t** %all_results, align 8
  %arrayidx5 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %13, i64 %idxprom4
  %data2 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %arrayidx5, i32 0, i32 1
  store i32 0, i32* %data2, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.3
  %14 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %14, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond.1

for.end.8:                                        ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.14, %for.end.8
  %15 = load i32, i32* %i, align 4
  %16 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %num_nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 2
  %17 = load i32, i32* %num_nodes, align 4
  %cmp10 = icmp slt i32 %15, %17
  br i1 %cmp10, label %for.body.11, label %for.end.16

for.body.11:                                      ; preds = %for.cond.9
  %18 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %all_nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %19, i32 0, i32 3
  %20 = load %struct.hashnode_t*, %struct.hashnode_t** %all_nodes, align 8
  %arrayidx13 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %20, i64 %idxprom12
  %results = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %arrayidx13, i32 0, i32 1
  store %struct.read_result_t* null, %struct.read_result_t** %results, align 8
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.11
  %21 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %21, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond.9

for.end.16:                                       ; preds = %for.cond.9
  %22 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %free_node = getelementptr inbounds %struct.hashtable, %struct.hashtable* %22, i32 0, i32 4
  store i32 0, i32* %free_node, align 4
  %23 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %free_result = getelementptr inbounds %struct.hashtable, %struct.hashtable* %23, i32 0, i32 7
  store i32 0, i32* %free_result, align 4
  br label %return

return:                                           ; preds = %for.end.16, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @get_read_result(i32 %routine, i32 %komaster, i32 %kom_pos, i32* %str, %struct.read_result_t** %read_result) #0 {
entry:
  %retval = alloca i32, align 4
  %routine.addr = alloca i32, align 4
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %str.addr = alloca i32*, align 8
  %read_result.addr = alloca %struct.read_result_t**, align 8
  %result = alloca i32, align 4
  store i32 %routine, i32* %routine.addr, align 4
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  store i32* %str, i32** %str.addr, align 8
  store %struct.read_result_t** %read_result, %struct.read_result_t*** %read_result.addr, align 8
  %0 = load i32, i32* @stackp, align 4
  %1 = load i32, i32* @depth, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.read_result_t**, %struct.read_result_t*** %read_result.addr, align 8
  store %struct.read_result_t* null, %struct.read_result_t** %2, align 8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32*, i32** %str.addr, align 8
  %4 = load i32, i32* %3, align 4
  %call = call i32 @find_origin(i32 %4)
  %5 = load i32*, i32** %str.addr, align 8
  store i32 %call, i32* %5, align 4
  %6 = load i32, i32* %routine.addr, align 4
  %7 = load i32, i32* %komaster.addr, align 4
  %8 = load i32, i32* %kom_pos.addr, align 4
  %9 = load i32*, i32** %str.addr, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.read_result_t**, %struct.read_result_t*** %read_result.addr, align 8
  %call1 = call i32 @do_get_read_result(i32 %6, i32 %7, i32 %8, i32 %10, i32 0, %struct.read_result_t** %11)
  store i32 %call1, i32* %result, align 4
  %12 = load %struct.read_result_t**, %struct.read_result_t*** %read_result.addr, align 8
  %13 = load %struct.read_result_t*, %struct.read_result_t** %12, align 8
  %cmp2 = icmp eq %struct.read_result_t* %13, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %14 = load %struct.hashtable*, %struct.hashtable** @movehash, align 8
  call void @hashtable_partially_clear(%struct.hashtable* %14)
  %15 = load i32, i32* %routine.addr, align 4
  %16 = load i32, i32* %komaster.addr, align 4
  %17 = load i32, i32* %kom_pos.addr, align 4
  %18 = load i32*, i32** %str.addr, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.read_result_t**, %struct.read_result_t*** %read_result.addr, align 8
  %call4 = call i32 @do_get_read_result(i32 %15, i32 %16, i32 %17, i32 %19, i32 0, %struct.read_result_t** %20)
  store i32 %call4, i32* %result, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %21 = load i32, i32* %result, align 4
  store i32 %21, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @find_origin(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @do_get_read_result(i32 %routine, i32 %komaster, i32 %kom_pos, i32 %str1, i32 %str2, %struct.read_result_t** %read_result) #0 {
entry:
  %routine.addr = alloca i32, align 4
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %str1.addr = alloca i32, align 4
  %str2.addr = alloca i32, align 4
  %read_result.addr = alloca %struct.read_result_t**, align 8
  %hashnode = alloca %struct.hashnode_t*, align 8
  %retval1 = alloca i32, align 4
  store i32 %routine, i32* %routine.addr, align 4
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  store i32 %str1, i32* %str1.addr, align 4
  store i32 %str2, i32* %str2.addr, align 4
  store %struct.read_result_t** %read_result, %struct.read_result_t*** %read_result.addr, align 8
  %0 = load %struct.hashtable*, %struct.hashtable** @movehash, align 8
  %call = call %struct.hashnode_t* @hashtable_search(%struct.hashtable* %0, %struct.Hash_data* @hashdata)
  store %struct.hashnode_t* %call, %struct.hashnode_t** %hashnode, align 8
  %1 = load %struct.hashnode_t*, %struct.hashnode_t** %hashnode, align 8
  %cmp = icmp ne %struct.hashnode_t* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 2), align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 2), align 4
  %3 = load i32, i32* @debug, align 4
  %and = and i32 %3, 524288
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call2 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.35, i32 0, i32 0), i64 ptrtoint (%struct.Hash_data* @hashdata to i64))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end.12

if.else:                                          ; preds = %entry
  %4 = load %struct.hashtable*, %struct.hashtable** @movehash, align 8
  %call3 = call %struct.hashnode_t* @hashtable_enter_position(%struct.hashtable* %4, %struct.Hash_data* @hashdata)
  store %struct.hashnode_t* %call3, %struct.hashnode_t** %hashnode, align 8
  %5 = load %struct.hashnode_t*, %struct.hashnode_t** %hashnode, align 8
  %tobool4 = icmp ne %struct.hashnode_t* %5, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %6 = load i32, i32* @debug, align 4
  %and6 = and i32 %6, 524288
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %cond.false.9, label %cond.true.8

cond.true.8:                                      ; preds = %if.then.5
  br label %cond.end.11

cond.false.9:                                     ; preds = %if.then.5
  %call10 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i32 0, i32 0), i64 ptrtoint (%struct.Hash_data* @hashdata to i64))
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.9, %cond.true.8
  br label %if.end

if.end:                                           ; preds = %cond.end.11, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %cond.end
  store i32 0, i32* %retval1, align 4
  %7 = load %struct.hashnode_t*, %struct.hashnode_t** %hashnode, align 8
  %cmp13 = icmp eq %struct.hashnode_t* %7, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.end.12
  %8 = load %struct.read_result_t**, %struct.read_result_t*** %read_result.addr, align 8
  store %struct.read_result_t* null, %struct.read_result_t** %8, align 8
  br label %if.end.45

if.else.15:                                       ; preds = %if.end.12
  %9 = load %struct.hashnode_t*, %struct.hashnode_t** %hashnode, align 8
  %10 = load i32, i32* %routine.addr, align 4
  %11 = load i32, i32* %komaster.addr, align 4
  %12 = load i32, i32* %kom_pos.addr, align 4
  %13 = load i32, i32* %str1.addr, align 4
  %14 = load i32, i32* %str2.addr, align 4
  %call16 = call %struct.read_result_t* @hashnode_search(%struct.hashnode_t* %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14)
  %15 = load %struct.read_result_t**, %struct.read_result_t*** %read_result.addr, align 8
  store %struct.read_result_t* %call16, %struct.read_result_t** %15, align 8
  %16 = load %struct.read_result_t**, %struct.read_result_t*** %read_result.addr, align 8
  %17 = load %struct.read_result_t*, %struct.read_result_t** %16, align 8
  %cmp17 = icmp ne %struct.read_result_t* %17, null
  br i1 %cmp17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else.15
  %18 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 4), align 4
  %inc19 = add nsw i32 %18, 1
  store i32 %inc19, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 4), align 4
  store i32 1, i32* %retval1, align 4
  br label %if.end.44

if.else.20:                                       ; preds = %if.else.15
  %19 = load i32, i32* @debug, align 4
  %and21 = and i32 %19, 524288
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %cond.false.24, label %cond.true.23

cond.true.23:                                     ; preds = %if.else.20
  br label %cond.end.26

cond.false.24:                                    ; preds = %if.else.20
  %20 = load i32, i32* %routine.addr, align 4
  %21 = load i32, i32* %str1.addr, align 4
  %22 = load i32, i32* %str2.addr, align 4
  %call25 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.37, i32 0, i32 0), i32 %20, i32 %21, i32 %22)
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.23
  %23 = load %struct.hashtable*, %struct.hashtable** @movehash, align 8
  %24 = load %struct.hashnode_t*, %struct.hashnode_t** %hashnode, align 8
  %25 = load i32, i32* %routine.addr, align 4
  %26 = load i32, i32* %komaster.addr, align 4
  %27 = load i32, i32* %kom_pos.addr, align 4
  %28 = load i32, i32* %str1.addr, align 4
  %29 = load i32, i32* %str2.addr, align 4
  %call27 = call %struct.read_result_t* @hashnode_new_result(%struct.hashtable* %23, %struct.hashnode_t* %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %30 = load %struct.read_result_t**, %struct.read_result_t*** %read_result.addr, align 8
  store %struct.read_result_t* %call27, %struct.read_result_t** %30, align 8
  %31 = load %struct.read_result_t**, %struct.read_result_t*** %read_result.addr, align 8
  %32 = load %struct.read_result_t*, %struct.read_result_t** %31, align 8
  %cmp28 = icmp eq %struct.read_result_t* %32, null
  br i1 %cmp28, label %if.then.29, label %if.else.36

if.then.29:                                       ; preds = %cond.end.26
  %33 = load i32, i32* @debug, align 4
  %and30 = and i32 %33, 524288
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %cond.false.33, label %cond.true.32

cond.true.32:                                     ; preds = %if.then.29
  br label %cond.end.35

cond.false.33:                                    ; preds = %if.then.29
  %call34 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i32 0, i32 0))
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.33, %cond.true.32
  br label %if.end.43

if.else.36:                                       ; preds = %cond.end.26
  %34 = load i32, i32* @debug, align 4
  %and37 = and i32 %34, 524288
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %cond.false.40, label %cond.true.39

cond.true.39:                                     ; preds = %if.else.36
  br label %cond.end.42

cond.false.40:                                    ; preds = %if.else.36
  %call41 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i32 0, i32 0))
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.40, %cond.true.39
  br label %if.end.43

if.end.43:                                        ; preds = %cond.end.42, %cond.end.35
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.18
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.14
  %35 = load i32, i32* %retval1, align 4
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal void @hashtable_partially_clear(%struct.hashtable* %table) #0 {
entry:
  %table.addr = alloca %struct.hashtable*, align 8
  %node = alloca %struct.hashnode_t*, align 8
  %bucket = alloca i32, align 4
  %previous = alloca %struct.hashnode_t*, align 8
  %current = alloca %struct.hashnode_t*, align 8
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %statistics = alloca [7 x [20 x i32]], align 16
  %routines = alloca [16 x i8*], align 16
  %total = alloca i32, align 4
  store %struct.hashtable* %table, %struct.hashtable** %table.addr, align 8
  %0 = load i32, i32* @debug, align 4
  %and = and i32 %0, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %cond.end
  %1 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %1, 7
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %l, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %l, align 4
  %cmp2 = icmp slt i32 %2, 20
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %l, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [7 x [20 x i32]], [7 x [20 x i32]]* %statistics, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %5 = load i32, i32* %l, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %6 = load i32, i32* %k, align 4
  %inc7 = add nsw i32 %6, 1
  store i32 %inc7, i32* %k, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.41, %for.end.8
  %7 = load i32, i32* %k, align 4
  %8 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %num_nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 2
  %9 = load i32, i32* %num_nodes, align 4
  %cmp10 = icmp slt i32 %7, %9
  br i1 %cmp10, label %for.body.11, label %for.end.43

for.body.11:                                      ; preds = %for.cond.9
  %10 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %10 to i64
  %11 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %all_nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 3
  %12 = load %struct.hashnode_t*, %struct.hashnode_t** %all_nodes, align 8
  %arrayidx13 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %12, i64 %idxprom12
  store %struct.hashnode_t* %arrayidx13, %struct.hashnode_t** %node, align 8
  %13 = load %struct.hashnode_t*, %struct.hashnode_t** %node, align 8
  %results = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %13, i32 0, i32 1
  %14 = load %struct.read_result_t*, %struct.read_result_t** %results, align 8
  %cmp14 = icmp eq %struct.read_result_t* %14, null
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.11
  br label %for.inc.41

if.end:                                           ; preds = %for.body.11
  %15 = load %struct.hashnode_t*, %struct.hashnode_t** %node, align 8
  %key = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %15, i32 0, i32 0
  %hashval = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %key, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [1 x i64], [1 x i64]* %hashval, i32 0, i64 0
  %16 = load i64, i64* %arrayidx15, align 8
  %17 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %hashtablesize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %17, i32 0, i32 0
  %18 = load i32, i32* %hashtablesize, align 4
  %conv = sext i32 %18 to i64
  %rem = urem i64 %16, %conv
  %conv16 = trunc i64 %rem to i32
  store i32 %conv16, i32* %bucket, align 4
  store %struct.hashnode_t* null, %struct.hashnode_t** %previous, align 8
  %19 = load i32, i32* %bucket, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %hashtable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %20, i32 0, i32 1
  %21 = load %struct.hashnode_t**, %struct.hashnode_t*** %hashtable, align 8
  %arrayidx18 = getelementptr inbounds %struct.hashnode_t*, %struct.hashnode_t** %21, i64 %idxprom17
  %22 = load %struct.hashnode_t*, %struct.hashnode_t** %arrayidx18, align 8
  store %struct.hashnode_t* %22, %struct.hashnode_t** %current, align 8
  %23 = load %struct.hashnode_t*, %struct.hashnode_t** %node, align 8
  %arraydecay = getelementptr inbounds [7 x [20 x i32]], [7 x [20 x i32]]* %statistics, i32 0, i32 0
  call void @hashtable_unlink_closed_results(%struct.hashnode_t* %23, i32 7, i32 3, [20 x i32]* %arraydecay)
  %24 = load %struct.hashnode_t*, %struct.hashnode_t** %node, align 8
  %results19 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %24, i32 0, i32 1
  %25 = load %struct.read_result_t*, %struct.read_result_t** %results19, align 8
  %cmp20 = icmp ne %struct.read_result_t* %25, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end
  br label %for.inc.41

if.end.23:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.40, %if.end.23
  %26 = load %struct.hashnode_t*, %struct.hashnode_t** %current, align 8
  %cmp24 = icmp ne %struct.hashnode_t* %26, null
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load %struct.hashnode_t*, %struct.hashnode_t** %current, align 8
  %28 = load %struct.hashnode_t*, %struct.hashnode_t** %node, align 8
  %cmp26 = icmp ne %struct.hashnode_t* %27, %28
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %while.body
  %29 = load %struct.hashnode_t*, %struct.hashnode_t** %current, align 8
  store %struct.hashnode_t* %29, %struct.hashnode_t** %previous, align 8
  %30 = load %struct.hashnode_t*, %struct.hashnode_t** %current, align 8
  %next = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %30, i32 0, i32 2
  %31 = load %struct.hashnode_t*, %struct.hashnode_t** %next, align 8
  store %struct.hashnode_t* %31, %struct.hashnode_t** %current, align 8
  br label %if.end.40

if.else:                                          ; preds = %while.body
  %32 = load %struct.hashnode_t*, %struct.hashnode_t** %previous, align 8
  %cmp29 = icmp eq %struct.hashnode_t* %32, null
  br i1 %cmp29, label %if.then.31, label %if.else.36

if.then.31:                                       ; preds = %if.else
  %33 = load %struct.hashnode_t*, %struct.hashnode_t** %current, align 8
  %next32 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %33, i32 0, i32 2
  %34 = load %struct.hashnode_t*, %struct.hashnode_t** %next32, align 8
  %35 = load i32, i32* %bucket, align 4
  %idxprom33 = sext i32 %35 to i64
  %36 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %hashtable34 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %36, i32 0, i32 1
  %37 = load %struct.hashnode_t**, %struct.hashnode_t*** %hashtable34, align 8
  %arrayidx35 = getelementptr inbounds %struct.hashnode_t*, %struct.hashnode_t** %37, i64 %idxprom33
  store %struct.hashnode_t* %34, %struct.hashnode_t** %arrayidx35, align 8
  br label %if.end.39

if.else.36:                                       ; preds = %if.else
  %38 = load %struct.hashnode_t*, %struct.hashnode_t** %current, align 8
  %next37 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %38, i32 0, i32 2
  %39 = load %struct.hashnode_t*, %struct.hashnode_t** %next37, align 8
  %40 = load %struct.hashnode_t*, %struct.hashnode_t** %previous, align 8
  %next38 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %40, i32 0, i32 2
  store %struct.hashnode_t* %39, %struct.hashnode_t** %next38, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.31
  br label %while.end

if.end.40:                                        ; preds = %if.then.28
  br label %while.cond

while.end:                                        ; preds = %if.end.39, %while.cond
  br label %for.inc.41

for.inc.41:                                       ; preds = %while.end, %if.then.22, %if.then
  %41 = load i32, i32* %k, align 4
  %inc42 = add nsw i32 %41, 1
  store i32 %inc42, i32* %k, align 4
  br label %for.cond.9

for.end.43:                                       ; preds = %for.cond.9
  %42 = load i32, i32* @debug, align 4
  %and44 = and i32 %42, 32768
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.86

if.then.46:                                       ; preds = %for.end.43
  %43 = bitcast [16 x i8*]* %routines to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* bitcast ([16 x i8*]* @hashtable_partially_clear.routines to i8*), i64 128, i32 16, i1 false)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.30, i32 0, i32 0))
  store i32 0, i32* %k, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.83, %if.then.46
  %45 = load i32, i32* %k, align 4
  %cmp49 = icmp slt i32 %45, 7
  br i1 %cmp49, label %for.body.51, label %for.end.85

for.body.51:                                      ; preds = %for.cond.48
  store i32 0, i32* %total, align 4
  store i32 0, i32* %l, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.60, %for.body.51
  %46 = load i32, i32* %l, align 4
  %cmp53 = icmp slt i32 %46, 20
  br i1 %cmp53, label %for.body.55, label %for.end.62

for.body.55:                                      ; preds = %for.cond.52
  %47 = load i32, i32* %l, align 4
  %idxprom56 = sext i32 %47 to i64
  %48 = load i32, i32* %k, align 4
  %idxprom57 = sext i32 %48 to i64
  %arrayidx58 = getelementptr inbounds [7 x [20 x i32]], [7 x [20 x i32]]* %statistics, i32 0, i64 %idxprom57
  %arrayidx59 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx58, i32 0, i64 %idxprom56
  %49 = load i32, i32* %arrayidx59, align 4
  %50 = load i32, i32* %total, align 4
  %add = add nsw i32 %50, %49
  store i32 %add, i32* %total, align 4
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.55
  %51 = load i32, i32* %l, align 4
  %inc61 = add nsw i32 %51, 1
  store i32 %inc61, i32* %l, align 4
  br label %for.cond.52

for.end.62:                                       ; preds = %for.cond.52
  %52 = load i32, i32* %total, align 4
  %cmp63 = icmp eq i32 %52, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %for.end.62
  br label %for.inc.83

if.end.66:                                        ; preds = %for.end.62
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = load i32, i32* %k, align 4
  %idxprom67 = sext i32 %54 to i64
  %arrayidx68 = getelementptr inbounds [16 x i8*], [16 x i8*]* %routines, i32 0, i64 %idxprom67
  %55 = load i8*, i8** %arrayidx68, align 8
  %56 = load i32, i32* %total, align 4
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i8* %55, i32 %56)
  store i32 0, i32* %l, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.79, %if.end.66
  %57 = load i32, i32* %l, align 4
  %cmp71 = icmp slt i32 %57, 20
  br i1 %cmp71, label %for.body.73, label %for.end.81

for.body.73:                                      ; preds = %for.cond.70
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %59 = load i32, i32* %l, align 4
  %idxprom74 = sext i32 %59 to i64
  %60 = load i32, i32* %k, align 4
  %idxprom75 = sext i32 %60 to i64
  %arrayidx76 = getelementptr inbounds [7 x [20 x i32]], [7 x [20 x i32]]* %statistics, i32 0, i64 %idxprom75
  %arrayidx77 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx76, i32 0, i64 %idxprom74
  %61 = load i32, i32* %arrayidx77, align 4
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i32 %61)
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.body.73
  %62 = load i32, i32* %l, align 4
  %inc80 = add nsw i32 %62, 1
  store i32 %inc80, i32* %l, align 4
  br label %for.cond.70

for.end.81:                                       ; preds = %for.cond.70
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.end.81, %if.then.65
  %64 = load i32, i32* %k, align 4
  %inc84 = add nsw i32 %64, 1
  store i32 %inc84, i32* %k, align 4
  br label %for.cond.48

for.end.85:                                       ; preds = %for.cond.48
  br label %if.end.86

if.end.86:                                        ; preds = %for.end.85, %for.end.43
  %65 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %free_result = getelementptr inbounds %struct.hashtable, %struct.hashtable* %65, i32 0, i32 7
  store i32 0, i32* %free_result, align 4
  %66 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %free_node = getelementptr inbounds %struct.hashtable, %struct.hashtable* %66, i32 0, i32 4
  store i32 0, i32* %free_node, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @get_read_result2(i32 %routine, i32 %komaster, i32 %kom_pos, i32* %str1, i32* %str2, %struct.read_result_t** %read_result) #0 {
entry:
  %retval = alloca i32, align 4
  %routine.addr = alloca i32, align 4
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %str1.addr = alloca i32*, align 8
  %str2.addr = alloca i32*, align 8
  %read_result.addr = alloca %struct.read_result_t**, align 8
  %result = alloca i32, align 4
  store i32 %routine, i32* %routine.addr, align 4
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  store i32* %str1, i32** %str1.addr, align 8
  store i32* %str2, i32** %str2.addr, align 8
  store %struct.read_result_t** %read_result, %struct.read_result_t*** %read_result.addr, align 8
  %0 = load i32, i32* @stackp, align 4
  %1 = load i32, i32* @depth, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.read_result_t**, %struct.read_result_t*** %read_result.addr, align 8
  store %struct.read_result_t* null, %struct.read_result_t** %2, align 8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32*, i32** %str1.addr, align 8
  %4 = load i32, i32* %3, align 4
  %call = call i32 @find_origin(i32 %4)
  %5 = load i32*, i32** %str1.addr, align 8
  store i32 %call, i32* %5, align 4
  %6 = load i32*, i32** %str2.addr, align 8
  %7 = load i32, i32* %6, align 4
  %call1 = call i32 @find_origin(i32 %7)
  %8 = load i32*, i32** %str2.addr, align 8
  store i32 %call1, i32* %8, align 4
  %9 = load i32, i32* %routine.addr, align 4
  %10 = load i32, i32* %komaster.addr, align 4
  %11 = load i32, i32* %kom_pos.addr, align 4
  %12 = load i32*, i32** %str1.addr, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %str2.addr, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.read_result_t**, %struct.read_result_t*** %read_result.addr, align 8
  %call2 = call i32 @do_get_read_result(i32 %9, i32 %10, i32 %11, i32 %13, i32 %15, %struct.read_result_t** %16)
  store i32 %call2, i32* %result, align 4
  %17 = load %struct.read_result_t**, %struct.read_result_t*** %read_result.addr, align 8
  %18 = load %struct.read_result_t*, %struct.read_result_t** %17, align 8
  %cmp3 = icmp eq %struct.read_result_t* %18, null
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %19 = load %struct.hashtable*, %struct.hashtable** @movehash, align 8
  call void @hashtable_partially_clear(%struct.hashtable* %19)
  %20 = load i32, i32* %routine.addr, align 4
  %21 = load i32, i32* %komaster.addr, align 4
  %22 = load i32, i32* %kom_pos.addr, align 4
  %23 = load i32*, i32** %str1.addr, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %str2.addr, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.read_result_t**, %struct.read_result_t*** %read_result.addr, align 8
  %call5 = call i32 @do_get_read_result(i32 %20, i32 %21, i32 %22, i32 %24, i32 %26, %struct.read_result_t** %27)
  store i32 %call5, i32* %result, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %28 = load i32, i32* %result, align 4
  store i32 %28, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define void @sgf_trace(i8* %func, i32 %str, i32 %move, i32 %result, i8* %message) #0 {
entry:
  %func.addr = alloca i8*, align 8
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %result.addr = alloca i32, align 4
  %message.addr = alloca i8*, align 8
  %buf = alloca [100 x i8], align 16
  store i8* %func, i8** %func.addr, align 8
  store i32 %str, i32* %str.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %result, i32* %result.addr, align 4
  store i8* %message, i8** %message.addr, align 8
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %func.addr, align 8
  %1 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %1, 20
  %sub = sub nsw i32 %rem, 1
  %add = add nsw i32 %sub, 65
  %2 = load i32, i32* %str.addr, align 4
  %rem1 = srem i32 %2, 20
  %sub2 = sub nsw i32 %rem1, 1
  %cmp = icmp sge i32 %sub2, 8
  %conv = zext i1 %cmp to i32
  %add3 = add nsw i32 %add, %conv
  %3 = load i32, i32* @board_size, align 4
  %4 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %4, 20
  %sub4 = sub nsw i32 %div, 1
  %sub5 = sub nsw i32 %3, %sub4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* %0, i32 %add3, i32 %sub5) #5
  %5 = load i32, i32* %result.addr, align 4
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay8 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %call10 = call i64 @strlen(i8* %arraydecay9) #7
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay8, i64 %call10
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #5
  br label %if.end.50

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %move.addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv12 = zext i8 %7 to i32
  %cmp13 = icmp ne i32 %conv12, 3
  br i1 %cmp13, label %if.then.15, label %if.else.33

if.then.15:                                       ; preds = %if.else
  %arraydecay16 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %arraydecay17 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %call18 = call i64 @strlen(i8* %arraydecay17) #7
  %add.ptr19 = getelementptr inbounds i8, i8* %arraydecay16, i64 %call18
  %8 = load i32, i32* %result.addr, align 4
  %call20 = call i8* @result_to_string(i32 %8)
  %9 = load i32, i32* %move.addr, align 4
  %rem21 = srem i32 %9, 20
  %sub22 = sub nsw i32 %rem21, 1
  %add23 = add nsw i32 %sub22, 65
  %10 = load i32, i32* %move.addr, align 4
  %rem24 = srem i32 %10, 20
  %sub25 = sub nsw i32 %rem24, 1
  %cmp26 = icmp sge i32 %sub25, 8
  %conv27 = zext i1 %cmp26 to i32
  %add28 = add nsw i32 %add23, %conv27
  %11 = load i32, i32* @board_size, align 4
  %12 = load i32, i32* %move.addr, align 4
  %div29 = sdiv i32 %12, 20
  %sub30 = sub nsw i32 %div29, 1
  %sub31 = sub nsw i32 %11, %sub30
  %call32 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* %call20, i32 %add28, i32 %sub31) #5
  br label %if.end.49

if.else.33:                                       ; preds = %if.else
  %13 = load i32, i32* %move.addr, align 4
  %call34 = call i32 @is_pass(i32 %13)
  %tobool = icmp ne i32 %call34, 0
  br i1 %tobool, label %if.then.35, label %if.else.42

if.then.35:                                       ; preds = %if.else.33
  %arraydecay36 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %arraydecay37 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %call38 = call i64 @strlen(i8* %arraydecay37) #7
  %add.ptr39 = getelementptr inbounds i8, i8* %arraydecay36, i64 %call38
  %14 = load i32, i32* %result.addr, align 4
  %call40 = call i8* @result_to_string(i32 %14)
  %call41 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* %call40) #5
  br label %if.end

if.else.42:                                       ; preds = %if.else.33
  %arraydecay43 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %arraydecay44 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %call45 = call i64 @strlen(i8* %arraydecay44) #7
  %add.ptr46 = getelementptr inbounds i8, i8* %arraydecay43, i64 %call45
  %15 = load i32, i32* %result.addr, align 4
  %call47 = call i8* @result_to_string(i32 %15)
  %16 = load i32, i32* %move.addr, align 4
  %call48 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* %call47, i32 %16) #5
  br label %if.end

if.end:                                           ; preds = %if.else.42, %if.then.35
  br label %if.end.49

if.end.49:                                        ; preds = %if.end, %if.then.15
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then
  %17 = load i8*, i8** %message.addr, align 8
  %tobool51 = icmp ne i8* %17, null
  br i1 %tobool51, label %if.then.52, label %if.end.58

if.then.52:                                       ; preds = %if.end.50
  %arraydecay53 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %arraydecay54 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %call55 = call i64 @strlen(i8* %arraydecay54) #7
  %add.ptr56 = getelementptr inbounds i8, i8* %arraydecay53, i64 %call55
  %18 = load i8*, i8** %message.addr, align 8
  %call57 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* %18) #5
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.52, %if.end.50
  %19 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %arraydecay59 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  call void @sgftreeAddComment(%struct.SGFTree_t* %19, i8* %arraydecay59)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i8* @result_to_string(i32) #1

declare i32 @is_pass(i32) #1

declare void @sgftreeAddComment(%struct.SGFTree_t*, i8*) #1

; Function Attrs: nounwind uwtable
define void @sgf_trace2(i8* %func, i32 %str1, i32 %str2, i32 %move, i32 %result, i8* %message) #0 {
entry:
  %func.addr = alloca i8*, align 8
  %str1.addr = alloca i32, align 4
  %str2.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %result.addr = alloca i32, align 4
  %message.addr = alloca i8*, align 8
  %buf = alloca [100 x i8], align 16
  store i8* %func, i8** %func.addr, align 8
  store i32 %str1, i32* %str1.addr, align 4
  store i32 %str2, i32* %str2.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %result, i32* %result.addr, align 4
  store i8* %message, i8** %message.addr, align 8
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %func.addr, align 8
  %1 = load i32, i32* %str1.addr, align 4
  %rem = srem i32 %1, 20
  %sub = sub nsw i32 %rem, 1
  %add = add nsw i32 %sub, 65
  %2 = load i32, i32* %str1.addr, align 4
  %rem1 = srem i32 %2, 20
  %sub2 = sub nsw i32 %rem1, 1
  %cmp = icmp sge i32 %sub2, 8
  %conv = zext i1 %cmp to i32
  %add3 = add nsw i32 %add, %conv
  %3 = load i32, i32* @board_size, align 4
  %4 = load i32, i32* %str1.addr, align 4
  %div = sdiv i32 %4, 20
  %sub4 = sub nsw i32 %div, 1
  %sub5 = sub nsw i32 %3, %sub4
  %5 = load i32, i32* %str2.addr, align 4
  %rem6 = srem i32 %5, 20
  %sub7 = sub nsw i32 %rem6, 1
  %add8 = add nsw i32 %sub7, 65
  %6 = load i32, i32* %str2.addr, align 4
  %rem9 = srem i32 %6, 20
  %sub10 = sub nsw i32 %rem9, 1
  %cmp11 = icmp sge i32 %sub10, 8
  %conv12 = zext i1 %cmp11 to i32
  %add13 = add nsw i32 %add8, %conv12
  %7 = load i32, i32* @board_size, align 4
  %8 = load i32, i32* %str2.addr, align 4
  %div14 = sdiv i32 %8, 20
  %sub15 = sub nsw i32 %div14, 1
  %sub16 = sub nsw i32 %7, %sub15
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* %0, i32 %add3, i32 %sub5, i32 %add13, i32 %sub16) #5
  %9 = load i32, i32* %result.addr, align 4
  %cmp17 = icmp eq i32 %9, 0
  br i1 %cmp17, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay19 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %arraydecay20 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %call21 = call i64 @strlen(i8* %arraydecay20) #7
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay19, i64 %call21
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #5
  br label %if.end.61

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %move.addr, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv23 = zext i8 %11 to i32
  %cmp24 = icmp ne i32 %conv23, 3
  br i1 %cmp24, label %if.then.26, label %if.else.44

if.then.26:                                       ; preds = %if.else
  %arraydecay27 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %call29 = call i64 @strlen(i8* %arraydecay28) #7
  %add.ptr30 = getelementptr inbounds i8, i8* %arraydecay27, i64 %call29
  %12 = load i32, i32* %result.addr, align 4
  %call31 = call i8* @result_to_string(i32 %12)
  %13 = load i32, i32* %move.addr, align 4
  %rem32 = srem i32 %13, 20
  %sub33 = sub nsw i32 %rem32, 1
  %add34 = add nsw i32 %sub33, 65
  %14 = load i32, i32* %move.addr, align 4
  %rem35 = srem i32 %14, 20
  %sub36 = sub nsw i32 %rem35, 1
  %cmp37 = icmp sge i32 %sub36, 8
  %conv38 = zext i1 %cmp37 to i32
  %add39 = add nsw i32 %add34, %conv38
  %15 = load i32, i32* @board_size, align 4
  %16 = load i32, i32* %move.addr, align 4
  %div40 = sdiv i32 %16, 20
  %sub41 = sub nsw i32 %div40, 1
  %sub42 = sub nsw i32 %15, %sub41
  %call43 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* %call31, i32 %add39, i32 %sub42) #5
  br label %if.end.60

if.else.44:                                       ; preds = %if.else
  %17 = load i32, i32* %move.addr, align 4
  %call45 = call i32 @is_pass(i32 %17)
  %tobool = icmp ne i32 %call45, 0
  br i1 %tobool, label %if.then.46, label %if.else.53

if.then.46:                                       ; preds = %if.else.44
  %arraydecay47 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %arraydecay48 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %call49 = call i64 @strlen(i8* %arraydecay48) #7
  %add.ptr50 = getelementptr inbounds i8, i8* %arraydecay47, i64 %call49
  %18 = load i32, i32* %result.addr, align 4
  %call51 = call i8* @result_to_string(i32 %18)
  %call52 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* %call51) #5
  br label %if.end

if.else.53:                                       ; preds = %if.else.44
  %arraydecay54 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %arraydecay55 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %call56 = call i64 @strlen(i8* %arraydecay55) #7
  %add.ptr57 = getelementptr inbounds i8, i8* %arraydecay54, i64 %call56
  %19 = load i32, i32* %result.addr, align 4
  %call58 = call i8* @result_to_string(i32 %19)
  %20 = load i32, i32* %move.addr, align 4
  %call59 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* %call58, i32 %20) #5
  br label %if.end

if.end:                                           ; preds = %if.else.53, %if.then.46
  br label %if.end.60

if.end.60:                                        ; preds = %if.end, %if.then.26
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then
  %21 = load i8*, i8** %message.addr, align 8
  %tobool62 = icmp ne i8* %21, null
  br i1 %tobool62, label %if.then.63, label %if.end.69

if.then.63:                                       ; preds = %if.end.61
  %arraydecay64 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %arraydecay65 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %call66 = call i64 @strlen(i8* %arraydecay65) #7
  %add.ptr67 = getelementptr inbounds i8, i8* %arraydecay64, i64 %call66
  %22 = load i8*, i8** %message.addr, align 8
  %call68 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* %22) #5
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.63, %if.end.61
  %23 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %arraydecay70 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  call void @sgftreeAddComment(%struct.SGFTree_t* %23, i8* %arraydecay70)
  ret void
}

declare void @hash_init() #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @hashtable_init(%struct.hashtable* %table, i32 %tablesize, i32 %num_nodes, i32 %num_results) #0 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca %struct.hashtable*, align 8
  %tablesize.addr = alloca i32, align 4
  %num_nodes.addr = alloca i32, align 4
  %num_results.addr = alloca i32, align 4
  store %struct.hashtable* %table, %struct.hashtable** %table.addr, align 8
  store i32 %tablesize, i32* %tablesize.addr, align 4
  store i32 %num_nodes, i32* %num_nodes.addr, align 4
  store i32 %num_results, i32* %num_results.addr, align 4
  call void @hash_init()
  %0 = load i32, i32* %tablesize.addr, align 4
  %1 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %hashtablesize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %1, i32 0, i32 0
  store i32 %0, i32* %hashtablesize, align 4
  %2 = load i32, i32* %tablesize.addr, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul) #5
  %3 = bitcast i8* %call to %struct.hashnode_t**
  %4 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %hashtable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 1
  store %struct.hashnode_t** %3, %struct.hashnode_t*** %hashtable, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %hashtable1 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 1
  %6 = load %struct.hashnode_t**, %struct.hashnode_t*** %hashtable1, align 8
  %cmp = icmp eq %struct.hashnode_t** %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %8 = bitcast %struct.hashtable* %7 to i8*
  call void @free(i8* %8) #5
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %num_nodes.addr, align 4
  %10 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %num_nodes3 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 2
  store i32 %9, i32* %num_nodes3, align 4
  %11 = load i32, i32* %num_nodes.addr, align 4
  %conv4 = sext i32 %11 to i64
  %mul5 = mul i64 %conv4, 24
  %call6 = call noalias i8* @malloc(i64 %mul5) #5
  %12 = bitcast i8* %call6 to %struct.hashnode_t*
  %13 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %all_nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %13, i32 0, i32 3
  store %struct.hashnode_t* %12, %struct.hashnode_t** %all_nodes, align 8
  %14 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %all_nodes7 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %14, i32 0, i32 3
  %15 = load %struct.hashnode_t*, %struct.hashnode_t** %all_nodes7, align 8
  %cmp8 = icmp eq %struct.hashnode_t* %15, null
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %16 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %hashtable11 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 1
  %17 = load %struct.hashnode_t**, %struct.hashnode_t*** %hashtable11, align 8
  %18 = bitcast %struct.hashnode_t** %17 to i8*
  call void @free(i8* %18) #5
  %19 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %20 = bitcast %struct.hashtable* %19 to i8*
  call void @free(i8* %20) #5
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %21 = load i32, i32* %num_results.addr, align 4
  %22 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %num_results13 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %22, i32 0, i32 5
  store i32 %21, i32* %num_results13, align 4
  %23 = load i32, i32* %num_results.addr, align 4
  %conv14 = sext i32 %23 to i64
  %mul15 = mul i64 %conv14, 16
  %call16 = call noalias i8* @malloc(i64 %mul15) #5
  %24 = bitcast i8* %call16 to %struct.read_result_t*
  %25 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %all_results = getelementptr inbounds %struct.hashtable, %struct.hashtable* %25, i32 0, i32 6
  store %struct.read_result_t* %24, %struct.read_result_t** %all_results, align 8
  %26 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %all_results17 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %26, i32 0, i32 6
  %27 = load %struct.read_result_t*, %struct.read_result_t** %all_results17, align 8
  %cmp18 = icmp eq %struct.read_result_t* %27, null
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.12
  %28 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %hashtable21 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %28, i32 0, i32 1
  %29 = load %struct.hashnode_t**, %struct.hashnode_t*** %hashtable21, align 8
  %30 = bitcast %struct.hashnode_t** %29 to i8*
  call void @free(i8* %30) #5
  %31 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %all_nodes22 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %31, i32 0, i32 3
  %32 = load %struct.hashnode_t*, %struct.hashnode_t** %all_nodes22, align 8
  %33 = bitcast %struct.hashnode_t* %32 to i8*
  call void @free(i8* %33) #5
  %34 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %35 = bitcast %struct.hashtable* %34 to i8*
  call void @free(i8* %35) #5
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.12
  %36 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  call void @hashtable_clear(%struct.hashtable* %36)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.20, %if.then.10, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @gprintf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @hashtable_unlink_closed_results(%struct.hashnode_t* %node, i32 %exclusions, i32 %stackplimit, [20 x i32]* %statistics) #0 {
entry:
  %node.addr = alloca %struct.hashnode_t*, align 8
  %exclusions.addr = alloca i32, align 4
  %stackplimit.addr = alloca i32, align 4
  %statistics.addr = alloca [20 x i32]*, align 8
  %previous_result = alloca %struct.read_result_t*, align 8
  %current_result = alloca %struct.read_result_t*, align 8
  %stackp = alloca i32, align 4
  %routine = alloca i32, align 4
  store %struct.hashnode_t* %node, %struct.hashnode_t** %node.addr, align 8
  store i32 %exclusions, i32* %exclusions.addr, align 4
  store i32 %stackplimit, i32* %stackplimit.addr, align 4
  store [20 x i32]* %statistics, [20 x i32]** %statistics.addr, align 8
  store %struct.read_result_t* null, %struct.read_result_t** %previous_result, align 8
  %0 = load %struct.hashnode_t*, %struct.hashnode_t** %node.addr, align 8
  %results = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %0, i32 0, i32 1
  %1 = load %struct.read_result_t*, %struct.read_result_t** %results, align 8
  store %struct.read_result_t* %1, %struct.read_result_t** %current_result, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %entry
  %2 = load %struct.read_result_t*, %struct.read_result_t** %current_result, align 8
  %cmp = icmp ne %struct.read_result_t* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* @depth, align 4
  %4 = load %struct.read_result_t*, %struct.read_result_t** %current_result, align 8
  %data1 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %4, i32 0, i32 0
  %5 = load i32, i32* %data1, align 4
  %shr = lshr i32 %5, 0
  %and = and i32 %shr, 31
  %sub = sub i32 %3, %and
  store i32 %sub, i32* %stackp, align 4
  %6 = load i32, i32* %stackp, align 4
  %cmp1 = icmp sgt i32 %6, 19
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 19, i32* %stackp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load i32, i32* %stackp, align 4
  %cmp2 = icmp slt i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %stackp, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %8 = load %struct.read_result_t*, %struct.read_result_t** %current_result, align 8
  %data15 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %8, i32 0, i32 0
  %9 = load i32, i32* %data15, align 4
  %shr6 = lshr i32 %9, 15
  %and7 = and i32 %shr6, 15
  store i32 %and7, i32* %routine, align 4
  %10 = load i32, i32* %routine, align 4
  %cmp8 = icmp sge i32 %10, 0
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.4
  %11 = load i32, i32* %routine, align 4
  %cmp9 = icmp slt i32 %11, 7
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %land.lhs.true
  br label %if.end.11

if.else:                                          ; preds = %land.lhs.true, %if.end.4
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i32 273, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %12 = load i32, i32* %stackp, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32, i32* %routine, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load [20 x i32]*, [20 x i32]** %statistics.addr, align 8
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 %idxprom12
  %arrayidx13 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx13, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %arrayidx13, align 4
  %16 = load %struct.read_result_t*, %struct.read_result_t** %current_result, align 8
  %data2 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %16, i32 0, i32 1
  %17 = load i32, i32* %data2, align 4
  %shr14 = lshr i32 %17, 28
  %and15 = and i32 %shr14, 3
  %cmp16 = icmp eq i32 %and15, 2
  br i1 %cmp16, label %land.lhs.true.17, label %if.else.38

land.lhs.true.17:                                 ; preds = %if.end.11
  %18 = load %struct.read_result_t*, %struct.read_result_t** %current_result, align 8
  %data118 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %18, i32 0, i32 0
  %19 = load i32, i32* %data118, align 4
  %shr19 = lshr i32 %19, 15
  %and20 = and i32 %shr19, 15
  %shl = shl i32 1, %and20
  %20 = load i32, i32* %exclusions.addr, align 4
  %and21 = and i32 %shl, %20
  %cmp22 = icmp eq i32 %and21, 0
  br i1 %cmp22, label %land.lhs.true.23, label %if.else.38

land.lhs.true.23:                                 ; preds = %land.lhs.true.17
  %21 = load i32, i32* @depth, align 4
  %22 = load %struct.read_result_t*, %struct.read_result_t** %current_result, align 8
  %data124 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %22, i32 0, i32 0
  %23 = load i32, i32* %data124, align 4
  %shr25 = lshr i32 %23, 0
  %and26 = and i32 %shr25, 31
  %sub27 = sub i32 %21, %and26
  %24 = load i32, i32* %stackplimit.addr, align 4
  %cmp28 = icmp uge i32 %sub27, %24
  br i1 %cmp28, label %if.then.29, label %if.else.38

if.then.29:                                       ; preds = %land.lhs.true.23
  %25 = load %struct.read_result_t*, %struct.read_result_t** %previous_result, align 8
  %cmp30 = icmp eq %struct.read_result_t* %25, null
  br i1 %cmp30, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.then.29
  %26 = load %struct.read_result_t*, %struct.read_result_t** %current_result, align 8
  %next = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %26, i32 0, i32 2
  %27 = load %struct.read_result_t*, %struct.read_result_t** %next, align 8
  %28 = load %struct.hashnode_t*, %struct.hashnode_t** %node.addr, align 8
  %results32 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %28, i32 0, i32 1
  store %struct.read_result_t* %27, %struct.read_result_t** %results32, align 8
  br label %if.end.36

if.else.33:                                       ; preds = %if.then.29
  %29 = load %struct.read_result_t*, %struct.read_result_t** %current_result, align 8
  %next34 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %29, i32 0, i32 2
  %30 = load %struct.read_result_t*, %struct.read_result_t** %next34, align 8
  %31 = load %struct.read_result_t*, %struct.read_result_t** %previous_result, align 8
  %next35 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %31, i32 0, i32 2
  store %struct.read_result_t* %30, %struct.read_result_t** %next35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.31
  %32 = load %struct.read_result_t*, %struct.read_result_t** %current_result, align 8
  %data237 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %32, i32 0, i32 1
  store i32 0, i32* %data237, align 4
  br label %if.end.39

if.else.38:                                       ; preds = %land.lhs.true.23, %land.lhs.true.17, %if.end.11
  %33 = load %struct.read_result_t*, %struct.read_result_t** %current_result, align 8
  store %struct.read_result_t* %33, %struct.read_result_t** %previous_result, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %if.end.36
  %34 = load %struct.read_result_t*, %struct.read_result_t** %current_result, align 8
  %next40 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %34, i32 0, i32 2
  %35 = load %struct.read_result_t*, %struct.read_result_t** %next40, align 8
  store %struct.read_result_t* %35, %struct.read_result_t** %current_result, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.hashnode_t* @hashtable_search(%struct.hashtable* %table, %struct.Hash_data* %hd) #0 {
entry:
  %table.addr = alloca %struct.hashtable*, align 8
  %hd.addr = alloca %struct.Hash_data*, align 8
  %node = alloca %struct.hashnode_t*, align 8
  %bucket = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.hashtable* %table, %struct.hashtable** %table.addr, align 8
  store %struct.Hash_data* %hd, %struct.Hash_data** %hd.addr, align 8
  %0 = load %struct.Hash_data*, %struct.Hash_data** %hd.addr, align 8
  %hashval = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %hashval, i32 0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  %2 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %hashtablesize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 0
  %3 = load i32, i32* %hashtablesize, align 4
  %conv = sext i32 %3 to i64
  %rem = urem i64 %1, %conv
  %conv1 = trunc i64 %rem to i32
  store i32 %conv1, i32* %bucket, align 4
  %4 = load i32, i32* %bucket, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %hashtable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 1
  %6 = load %struct.hashnode_t**, %struct.hashnode_t*** %hashtable, align 8
  %arrayidx2 = getelementptr inbounds %struct.hashnode_t*, %struct.hashnode_t** %6, i64 %idxprom
  %7 = load %struct.hashnode_t*, %struct.hashnode_t** %arrayidx2, align 8
  store %struct.hashnode_t* %7, %struct.hashnode_t** %node, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %entry
  %8 = load %struct.hashnode_t*, %struct.hashnode_t** %node, align 8
  %cmp = icmp ne %struct.hashnode_t* %8, null
  br i1 %cmp, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  %9 = load %struct.hashnode_t*, %struct.hashnode_t** %node, align 8
  %key = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %9, i32 0, i32 0
  %hashval4 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %key, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [1 x i64], [1 x i64]* %hashval4, i32 0, i64 0
  %10 = load i64, i64* %arrayidx5, align 8
  %11 = load %struct.Hash_data*, %struct.Hash_data** %hd.addr, align 8
  %hashval6 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %11, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [1 x i64], [1 x i64]* %hashval6, i32 0, i64 0
  %12 = load i64, i64* %arrayidx7, align 8
  %cmp8 = icmp ne i64 %10, %12
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.32

if.end:                                           ; preds = %for.body
  store i32 1, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end
  %13 = load i32, i32* %i, align 4
  %conv11 = sext i32 %13 to i64
  %cmp12 = icmp ult i64 %conv11, 1
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.10
  %14 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %14 to i64
  %15 = load %struct.hashnode_t*, %struct.hashnode_t** %node, align 8
  %key16 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %15, i32 0, i32 0
  %hashval17 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %key16, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [1 x i64], [1 x i64]* %hashval17, i32 0, i64 %idxprom15
  %16 = load i64, i64* %arrayidx18, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %17 to i64
  %18 = load %struct.Hash_data*, %struct.Hash_data** %hd.addr, align 8
  %hashval20 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %18, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [1 x i64], [1 x i64]* %hashval20, i32 0, i64 %idxprom19
  %19 = load i64, i64* %arrayidx21, align 8
  %cmp22 = icmp ne i64 %16, %19
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body.14
  %20 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 5), align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 5), align 4
  br label %for.end

if.end.25:                                        ; preds = %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %21 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %21, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.10

for.end:                                          ; preds = %if.then.24, %for.cond.10
  %22 = load i32, i32* %i, align 4
  %conv27 = sext i32 %22 to i64
  %cmp28 = icmp uge i64 %conv27, 1
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.end
  br label %for.end.33

if.end.31:                                        ; preds = %for.end
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31, %if.then
  %23 = load %struct.hashnode_t*, %struct.hashnode_t** %node, align 8
  %next = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %23, i32 0, i32 2
  %24 = load %struct.hashnode_t*, %struct.hashnode_t** %next, align 8
  store %struct.hashnode_t* %24, %struct.hashnode_t** %node, align 8
  br label %for.cond

for.end.33:                                       ; preds = %if.then.30, %for.cond
  %25 = load %struct.hashnode_t*, %struct.hashnode_t** %node, align 8
  ret %struct.hashnode_t* %25
}

; Function Attrs: nounwind uwtable
define internal %struct.hashnode_t* @hashtable_enter_position(%struct.hashtable* %table, %struct.Hash_data* %hd) #0 {
entry:
  %retval = alloca %struct.hashnode_t*, align 8
  %table.addr = alloca %struct.hashtable*, align 8
  %hd.addr = alloca %struct.Hash_data*, align 8
  %node = alloca %struct.hashnode_t*, align 8
  %bucket = alloca i32, align 4
  store %struct.hashtable* %table, %struct.hashtable** %table.addr, align 8
  store %struct.Hash_data* %hd, %struct.Hash_data** %hd.addr, align 8
  %0 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %1 = load %struct.Hash_data*, %struct.Hash_data** %hd.addr, align 8
  %call = call %struct.hashnode_t* @hashtable_search(%struct.hashtable* %0, %struct.Hash_data* %1)
  store %struct.hashnode_t* %call, %struct.hashnode_t** %node, align 8
  %2 = load %struct.hashnode_t*, %struct.hashnode_t** %node, align 8
  %cmp = icmp ne %struct.hashnode_t* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.hashnode_t*, %struct.hashnode_t** %node, align 8
  store %struct.hashnode_t* %3, %struct.hashnode_t** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %free_node = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 4
  %5 = load i32, i32* %free_node, align 4
  %6 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %num_nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 2
  %7 = load i32, i32* %num_nodes, align 4
  %cmp1 = icmp slt i32 %5, %7
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %free_node2 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 4
  %9 = load i32, i32* %free_node2, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %all_nodes = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 3
  %11 = load %struct.hashnode_t*, %struct.hashnode_t** %all_nodes, align 8
  %arrayidx = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %11, i64 %idxprom
  %results = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %arrayidx, i32 0, i32 1
  %12 = load %struct.read_result_t*, %struct.read_result_t** %results, align 8
  %cmp3 = icmp ne %struct.read_result_t* %12, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %free_node4 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %14, i32 0, i32 4
  %15 = load i32, i32* %free_node4, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %free_node4, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %free_node5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 4
  %17 = load i32, i32* %free_node5, align 4
  %18 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %num_nodes6 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %18, i32 0, i32 2
  %19 = load i32, i32* %num_nodes6, align 4
  %cmp7 = icmp eq i32 %17, %19
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.end
  store %struct.hashnode_t* null, %struct.hashnode_t** %retval
  br label %return

if.end.9:                                         ; preds = %while.end
  %20 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %free_node10 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %20, i32 0, i32 4
  %21 = load i32, i32* %free_node10, align 4
  %inc11 = add nsw i32 %21, 1
  store i32 %inc11, i32* %free_node10, align 4
  %idxprom12 = sext i32 %21 to i64
  %22 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %all_nodes13 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %22, i32 0, i32 3
  %23 = load %struct.hashnode_t*, %struct.hashnode_t** %all_nodes13, align 8
  %arrayidx14 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %23, i64 %idxprom12
  store %struct.hashnode_t* %arrayidx14, %struct.hashnode_t** %node, align 8
  %24 = load %struct.hashnode_t*, %struct.hashnode_t** %node, align 8
  %key = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %24, i32 0, i32 0
  %25 = load %struct.Hash_data*, %struct.Hash_data** %hd.addr, align 8
  %26 = bitcast %struct.Hash_data* %key to i8*
  %27 = bitcast %struct.Hash_data* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 8, i32 8, i1 false)
  %28 = load %struct.hashnode_t*, %struct.hashnode_t** %node, align 8
  %results15 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %28, i32 0, i32 1
  store %struct.read_result_t* null, %struct.read_result_t** %results15, align 8
  %29 = load %struct.Hash_data*, %struct.Hash_data** %hd.addr, align 8
  %hashval = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %29, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [1 x i64], [1 x i64]* %hashval, i32 0, i64 0
  %30 = load i64, i64* %arrayidx16, align 8
  %31 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %hashtablesize = getelementptr inbounds %struct.hashtable, %struct.hashtable* %31, i32 0, i32 0
  %32 = load i32, i32* %hashtablesize, align 4
  %conv = sext i32 %32 to i64
  %rem = urem i64 %30, %conv
  %conv17 = trunc i64 %rem to i32
  store i32 %conv17, i32* %bucket, align 4
  %33 = load i32, i32* %bucket, align 4
  %idxprom18 = sext i32 %33 to i64
  %34 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %hashtable = getelementptr inbounds %struct.hashtable, %struct.hashtable* %34, i32 0, i32 1
  %35 = load %struct.hashnode_t**, %struct.hashnode_t*** %hashtable, align 8
  %arrayidx19 = getelementptr inbounds %struct.hashnode_t*, %struct.hashnode_t** %35, i64 %idxprom18
  %36 = load %struct.hashnode_t*, %struct.hashnode_t** %arrayidx19, align 8
  %37 = load %struct.hashnode_t*, %struct.hashnode_t** %node, align 8
  %next = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %37, i32 0, i32 2
  store %struct.hashnode_t* %36, %struct.hashnode_t** %next, align 8
  %38 = load %struct.hashnode_t*, %struct.hashnode_t** %node, align 8
  %39 = load i32, i32* %bucket, align 4
  %idxprom20 = sext i32 %39 to i64
  %40 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %hashtable21 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %40, i32 0, i32 1
  %41 = load %struct.hashnode_t**, %struct.hashnode_t*** %hashtable21, align 8
  %arrayidx22 = getelementptr inbounds %struct.hashnode_t*, %struct.hashnode_t** %41, i64 %idxprom20
  store %struct.hashnode_t* %38, %struct.hashnode_t** %arrayidx22, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 1), align 4
  %inc23 = add nsw i32 %42, 1
  store i32 %inc23, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 1), align 4
  %43 = load %struct.hashnode_t*, %struct.hashnode_t** %node, align 8
  store %struct.hashnode_t* %43, %struct.hashnode_t** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then
  %44 = load %struct.hashnode_t*, %struct.hashnode_t** %retval
  ret %struct.hashnode_t* %44
}

; Function Attrs: nounwind uwtable
define internal %struct.read_result_t* @hashnode_search(%struct.hashnode_t* %node, i32 %routine, i32 %komaster, i32 %kom_pos, i32 %str1, i32 %str2) #0 {
entry:
  %node.addr = alloca %struct.hashnode_t*, align 8
  %routine.addr = alloca i32, align 4
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %str1.addr = alloca i32, align 4
  %str2.addr = alloca i32, align 4
  %result = alloca %struct.read_result_t*, align 8
  %search_for1 = alloca i32, align 4
  %search_for2 = alloca i32, align 4
  store %struct.hashnode_t* %node, %struct.hashnode_t** %node.addr, align 8
  store i32 %routine, i32* %routine.addr, align 4
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  store i32 %str1, i32* %str1.addr, align 4
  store i32 %str2, i32* %str2.addr, align 4
  %0 = load i32, i32* %komaster.addr, align 4
  %shl = shl i32 %0, 10
  %1 = load i32, i32* %kom_pos.addr, align 4
  %or = or i32 %shl, %1
  %shl1 = shl i32 %or, 4
  %2 = load i32, i32* %routine.addr, align 4
  %or2 = or i32 %shl1, %2
  %shl3 = shl i32 %or2, 10
  %3 = load i32, i32* %str1.addr, align 4
  %or4 = or i32 %shl3, %3
  %shl5 = shl i32 %or4, 5
  %4 = load i32, i32* @depth, align 4
  %5 = load i32, i32* @stackp, align 4
  %sub = sub i32 %4, %5
  %or6 = or i32 %shl5, %sub
  store i32 %or6, i32* %search_for1, align 4
  %6 = load i32, i32* %str2.addr, align 4
  store i32 %6, i32* %search_for2, align 4
  %7 = load %struct.hashnode_t*, %struct.hashnode_t** %node.addr, align 8
  %results = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %7, i32 0, i32 1
  %8 = load %struct.read_result_t*, %struct.read_result_t** %results, align 8
  store %struct.read_result_t* %8, %struct.read_result_t** %result, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load %struct.read_result_t*, %struct.read_result_t** %result, align 8
  %cmp = icmp ne %struct.read_result_t* %9, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.read_result_t*, %struct.read_result_t** %result, align 8
  %data1 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %10, i32 0, i32 0
  %11 = load i32, i32* %data1, align 4
  %12 = load i32, i32* %search_for1, align 4
  %cmp7 = icmp eq i32 %11, %12
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %13 = load %struct.read_result_t*, %struct.read_result_t** %result, align 8
  %data2 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %13, i32 0, i32 1
  %14 = load i32, i32* %data2, align 4
  %and = and i32 %14, 1023
  %15 = load i32, i32* %search_for2, align 4
  %cmp8 = icmp eq i32 %and, %15
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct.read_result_t*, %struct.read_result_t** %result, align 8
  %next = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %16, i32 0, i32 2
  %17 = load %struct.read_result_t*, %struct.read_result_t** %next, align 8
  store %struct.read_result_t* %17, %struct.read_result_t** %result, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %18 = load %struct.read_result_t*, %struct.read_result_t** %result, align 8
  ret %struct.read_result_t* %18
}

; Function Attrs: nounwind uwtable
define internal %struct.read_result_t* @hashnode_new_result(%struct.hashtable* %table, %struct.hashnode_t* %node, i32 %routine, i32 %komaster, i32 %kom_pos, i32 %str1, i32 %str2) #0 {
entry:
  %retval = alloca %struct.read_result_t*, align 8
  %table.addr = alloca %struct.hashtable*, align 8
  %node.addr = alloca %struct.hashnode_t*, align 8
  %routine.addr = alloca i32, align 4
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %str1.addr = alloca i32, align 4
  %str2.addr = alloca i32, align 4
  %result = alloca %struct.read_result_t*, align 8
  store %struct.hashtable* %table, %struct.hashtable** %table.addr, align 8
  store %struct.hashnode_t* %node, %struct.hashnode_t** %node.addr, align 8
  store i32 %routine, i32* %routine.addr, align 4
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  store i32 %str1, i32* %str1.addr, align 4
  store i32 %str2, i32* %str2.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %free_result = getelementptr inbounds %struct.hashtable, %struct.hashtable* %0, i32 0, i32 7
  %1 = load i32, i32* %free_result, align 4
  %2 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %num_results = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 5
  %3 = load i32, i32* %num_results, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %free_result1 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 7
  %5 = load i32, i32* %free_result1, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %all_results = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 6
  %7 = load %struct.read_result_t*, %struct.read_result_t** %all_results, align 8
  %arrayidx = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %7, i64 %idxprom
  %data2 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %arrayidx, i32 0, i32 1
  %8 = load i32, i32* %data2, align 4
  %shr = lshr i32 %8, 28
  %and = and i32 %shr, 3
  %cmp2 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %free_result3 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 7
  %11 = load i32, i32* %free_result3, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %free_result3, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %free_result4 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %12, i32 0, i32 7
  %13 = load i32, i32* %free_result4, align 4
  %14 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %num_results5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %14, i32 0, i32 5
  %15 = load i32, i32* %num_results5, align 4
  %cmp6 = icmp eq i32 %13, %15
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store %struct.read_result_t* null, %struct.read_result_t** %retval
  br label %return

if.end:                                           ; preds = %while.end
  %16 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %free_result7 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 7
  %17 = load i32, i32* %free_result7, align 4
  %inc8 = add nsw i32 %17, 1
  store i32 %inc8, i32* %free_result7, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct.hashtable*, %struct.hashtable** %table.addr, align 8
  %all_results10 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %18, i32 0, i32 6
  %19 = load %struct.read_result_t*, %struct.read_result_t** %all_results10, align 8
  %arrayidx11 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %19, i64 %idxprom9
  store %struct.read_result_t* %arrayidx11, %struct.read_result_t** %result, align 8
  %20 = load %struct.hashnode_t*, %struct.hashnode_t** %node.addr, align 8
  %results = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %20, i32 0, i32 1
  %21 = load %struct.read_result_t*, %struct.read_result_t** %results, align 8
  %22 = load %struct.read_result_t*, %struct.read_result_t** %result, align 8
  %next = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %22, i32 0, i32 2
  store %struct.read_result_t* %21, %struct.read_result_t** %next, align 8
  %23 = load %struct.read_result_t*, %struct.read_result_t** %result, align 8
  %24 = load %struct.hashnode_t*, %struct.hashnode_t** %node.addr, align 8
  %results12 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %24, i32 0, i32 1
  store %struct.read_result_t* %23, %struct.read_result_t** %results12, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %25 = load i32, i32* %komaster.addr, align 4
  %shl = shl i32 %25, 10
  %26 = load i32, i32* %kom_pos.addr, align 4
  %or = or i32 %shl, %26
  %shl13 = shl i32 %or, 4
  %27 = load i32, i32* %routine.addr, align 4
  %or14 = or i32 %shl13, %27
  %shl15 = shl i32 %or14, 10
  %28 = load i32, i32* %str1.addr, align 4
  %or16 = or i32 %shl15, %28
  %shl17 = shl i32 %or16, 5
  %29 = load i32, i32* @depth, align 4
  %30 = load i32, i32* @stackp, align 4
  %sub = sub i32 %29, %30
  %or18 = or i32 %shl17, %sub
  %31 = load %struct.read_result_t*, %struct.read_result_t** %result, align 8
  %data1 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %31, i32 0, i32 0
  store i32 %or18, i32* %data1, align 4
  %32 = load %struct.read_result_t*, %struct.read_result_t** %result, align 8
  %data219 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %32, i32 0, i32 1
  %33 = load i32, i32* %data219, align 4
  %and20 = and i32 %33, -1024
  %or21 = or i32 %and20, 268435456
  %34 = load i32, i32* %str2.addr, align 4
  %or22 = or i32 %or21, %34
  %35 = load %struct.read_result_t*, %struct.read_result_t** %result, align 8
  %data223 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %35, i32 0, i32 1
  store i32 %or22, i32* %data223, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %36 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 3), align 4
  %inc24 = add nsw i32 %36, 1
  store i32 %inc24, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 3), align 4
  %37 = load %struct.read_result_t*, %struct.read_result_t** %result, align 8
  store %struct.read_result_t* %37, %struct.read_result_t** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %38 = load %struct.read_result_t*, %struct.read_result_t** %retval
  ret %struct.read_result_t* %38
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
