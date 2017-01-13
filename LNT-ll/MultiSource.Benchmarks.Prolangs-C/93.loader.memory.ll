; ModuleID = './MultiSource.Benchmarks.Prolangs-C/93.loader.memory.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BUFFER = type { %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT* }
%struct.BUFFER_ELEMENT = type { i32, i32, %struct.BUFFER_ELEMENT* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@LOCATIONS_USED = global %struct.BUFFER zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"CREATE_MEMORY called illegally.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ERROR: Illegal store VALUE = %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"ERROR: Illegal store[1] ADDRESS = %d, BYTES = %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"ERROR: Illegal store[2] ADDRESS = %d, BYTES = %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c" %s    xxxxxxxx  xxxxxxxx  xxxxxxxx  xxxxxxxx\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"   .          .         .         .         .\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"MEMORY\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"ADDRESS                  Contents\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"-------   --------------------------------------\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"=========> NOTHING LOADED INTO MEMORY <=========\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" %s    \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"T%s%s\00", align 1
@START_ADDRESS = common global i32 0, align 4
@MAIN_ROUTINE = common global [9 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @ADD_TO_BUFFER(i32 %LOCATION, i32 %LEN) #0 {
entry:
  %LOCATION.addr = alloca i32, align 4
  %LEN.addr = alloca i32, align 4
  store i32 %LOCATION, i32* %LOCATION.addr, align 4
  store i32 %LEN, i32* %LEN.addr, align 4
  %0 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** getelementptr inbounds (%struct.BUFFER, %struct.BUFFER* @LOCATIONS_USED, i32 0, i32 0), align 8
  %cmp = icmp eq %struct.BUFFER_ELEMENT* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 16) #3
  %1 = bitcast i8* %call to %struct.BUFFER_ELEMENT*
  store %struct.BUFFER_ELEMENT* %1, %struct.BUFFER_ELEMENT** getelementptr inbounds (%struct.BUFFER, %struct.BUFFER* @LOCATIONS_USED, i32 0, i32 0), align 8
  %2 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** getelementptr inbounds (%struct.BUFFER, %struct.BUFFER* @LOCATIONS_USED, i32 0, i32 0), align 8
  store %struct.BUFFER_ELEMENT* %2, %struct.BUFFER_ELEMENT** getelementptr inbounds (%struct.BUFFER, %struct.BUFFER* @LOCATIONS_USED, i32 0, i32 1), align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call noalias i8* @malloc(i64 16) #3
  %3 = bitcast i8* %call1 to %struct.BUFFER_ELEMENT*
  %4 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** getelementptr inbounds (%struct.BUFFER, %struct.BUFFER* @LOCATIONS_USED, i32 0, i32 1), align 8
  %NEXT = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %4, i32 0, i32 2
  store %struct.BUFFER_ELEMENT* %3, %struct.BUFFER_ELEMENT** %NEXT, align 8
  %5 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** getelementptr inbounds (%struct.BUFFER, %struct.BUFFER* @LOCATIONS_USED, i32 0, i32 1), align 8
  %NEXT2 = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %5, i32 0, i32 2
  %6 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %NEXT2, align 8
  store %struct.BUFFER_ELEMENT* %6, %struct.BUFFER_ELEMENT** getelementptr inbounds (%struct.BUFFER, %struct.BUFFER* @LOCATIONS_USED, i32 0, i32 1), align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %LOCATION.addr, align 4
  %8 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** getelementptr inbounds (%struct.BUFFER, %struct.BUFFER* @LOCATIONS_USED, i32 0, i32 1), align 8
  %START = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %8, i32 0, i32 0
  store i32 %7, i32* %START, align 4
  %9 = load i32, i32* %LEN.addr, align 4
  %10 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** getelementptr inbounds (%struct.BUFFER, %struct.BUFFER* @LOCATIONS_USED, i32 0, i32 1), align 8
  %LENGTH = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %10, i32 0, i32 1
  store i32 %9, i32* %LENGTH, align 4
  %11 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** getelementptr inbounds (%struct.BUFFER, %struct.BUFFER* @LOCATIONS_USED, i32 0, i32 1), align 8
  %NEXT3 = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %11, i32 0, i32 2
  store %struct.BUFFER_ELEMENT* null, %struct.BUFFER_ELEMENT** %NEXT3, align 8
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define i32 @INT(i8 signext %CH) #0 {
entry:
  %retval = alloca i32, align 4
  %CH.addr = alloca i8, align 1
  %I = alloca i32, align 4
  store i8 %CH, i8* %CH.addr, align 1
  %0 = load i8, i8* %CH.addr, align 1
  %conv = sext i8 %0 to i32
  store i32 %conv, i32* %I, align 4
  %1 = load i32, i32* %I, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %I, align 4
  %add = add nsw i32 256, %2
  store i32 %add, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %I, align 4
  store i32 %3, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @CREATE_MEMORY(i8** %MEMORY) #0 {
entry:
  %MEMORY.addr = alloca i8**, align 8
  store i8** %MEMORY, i8*** %MEMORY.addr, align 8
  %0 = load i8**, i8*** %MEMORY.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call noalias i8* @malloc(i64 1048576) #3
  %2 = load i8**, i8*** %MEMORY.addr, align 8
  store i8* %call1, i8** %2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @DO_STORE(i8* %VALUE, i32 %BYTES, i32 %ADDRESS, i8* %MEMORY, i32* %ERROR, i32 %BUFFER_Q) #0 {
entry:
  %VALUE.addr = alloca i8*, align 8
  %BYTES.addr = alloca i32, align 4
  %ADDRESS.addr = alloca i32, align 4
  %MEMORY.addr = alloca i8*, align 8
  %ERROR.addr = alloca i32*, align 8
  %BUFFER_Q.addr = alloca i32, align 4
  %LOCAL_ERROR = alloca i32, align 4
  %TEMP = alloca i32, align 4
  %INT_VAL = alloca i32, align 4
  store i8* %VALUE, i8** %VALUE.addr, align 8
  store i32 %BYTES, i32* %BYTES.addr, align 4
  store i32 %ADDRESS, i32* %ADDRESS.addr, align 4
  store i8* %MEMORY, i8** %MEMORY.addr, align 8
  store i32* %ERROR, i32** %ERROR.addr, align 8
  store i32 %BUFFER_Q, i32* %BUFFER_Q.addr, align 4
  store i32 0, i32* %LOCAL_ERROR, align 4
  %0 = load i32, i32* %ADDRESS.addr, align 4
  %1 = load i32, i32* %BYTES.addr, align 4
  %add = add nsw i32 %0, %1
  %cmp = icmp sle i32 %add, 1048576
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %ADDRESS.addr, align 4
  %3 = load i32, i32* %BYTES.addr, align 4
  %add1 = add nsw i32 %2, %3
  %cmp2 = icmp sge i32 %add1, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %BUFFER_Q.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load i32, i32* %ADDRESS.addr, align 4
  %6 = load i32, i32* %BYTES.addr, align 4
  call void @ADD_TO_BUFFER(i32 %5, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  store i32 0, i32* %TEMP, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %TEMP, align 4
  %8 = load i32, i32* %BYTES.addr, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %for.cond
  %9 = load i32, i32* %TEMP, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8*, i8** %VALUE.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %call = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 %conv)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.5
  %12 = load i32, i32* %LOCAL_ERROR, align 4
  %tobool7 = icmp ne i32 %12, 0
  %lnot = xor i1 %tobool7, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.5, %for.cond
  %13 = phi i1 [ false, %land.lhs.true.5 ], [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %14 = load i32, i32* %TEMP, align 4
  %mul = mul nsw i32 %14, 2
  %idxprom8 = sext i32 %mul to i64
  %15 = load i8*, i8** %VALUE.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %15, i64 %idxprom8
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* %arrayidx9, i32 2, i32 16, i32* %INT_VAL, i32* %LOCAL_ERROR)
  %16 = load i32, i32* %INT_VAL, align 4
  %conv10 = trunc i32 %16 to i8
  %17 = load i32, i32* %ADDRESS.addr, align 4
  %18 = load i32, i32* %TEMP, align 4
  %add11 = add nsw i32 %17, %18
  %idxprom12 = sext i32 %add11 to i64
  %19 = load i8*, i8** %MEMORY.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %19, i64 %idxprom12
  store i8 %conv10, i8* %arrayidx13, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %TEMP, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %TEMP, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %21 = load i32, i32* %LOCAL_ERROR, align 4
  %tobool14 = icmp ne i32 %21, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %for.end
  %22 = load i8*, i8** %VALUE.addr, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i8* %22)
  %23 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %23, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %for.end
  br label %if.end.19

if.else:                                          ; preds = %land.lhs.true, %entry
  %24 = load i32, i32* %ADDRESS.addr, align 4
  %25 = load i32, i32* %BYTES.addr, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0), i32 %24, i32 %25)
  %26 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %26, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.end.17
  ret void
}

declare i32 @eoln(...) #2

declare void @STR_TO_NUM(...) #2

; Function Attrs: nounwind uwtable
define void @STORE_AT(i8* %VALUE, i32 %BYTES, i32 %ADDRESS, i8* %MEMORY, i32* %ERROR) #0 {
entry:
  %VALUE.addr = alloca i8*, align 8
  %BYTES.addr = alloca i32, align 4
  %ADDRESS.addr = alloca i32, align 4
  %MEMORY.addr = alloca i8*, align 8
  %ERROR.addr = alloca i32*, align 8
  store i8* %VALUE, i8** %VALUE.addr, align 8
  store i32 %BYTES, i32* %BYTES.addr, align 4
  store i32 %ADDRESS, i32* %ADDRESS.addr, align 4
  store i8* %MEMORY, i8** %MEMORY.addr, align 8
  store i32* %ERROR, i32** %ERROR.addr, align 8
  %0 = load i8*, i8** %VALUE.addr, align 8
  %1 = load i32, i32* %BYTES.addr, align 4
  %2 = load i32, i32* %ADDRESS.addr, align 4
  %3 = load i8*, i8** %MEMORY.addr, align 8
  %4 = load i32*, i32** %ERROR.addr, align 8
  call void @DO_STORE(i8* %0, i32 %1, i32 %2, i8* %3, i32* %4, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ADD_INT_TO_LOC(i32 %NUM, i32 %LOCATION, i32 %HALF_BYTES, i8* %MEMORY, i32* %ERROR) #0 {
entry:
  %NUM.addr = alloca i32, align 4
  %LOCATION.addr = alloca i32, align 4
  %HALF_BYTES.addr = alloca i32, align 4
  %MEMORY.addr = alloca i8*, align 8
  %ERROR.addr = alloca i32*, align 8
  %INT_MEM_VAL = alloca i32, align 4
  %CHAR_MEM_VAL = alloca [8 x i8], align 1
  %I = alloca i32, align 4
  store i32 %NUM, i32* %NUM.addr, align 4
  store i32 %LOCATION, i32* %LOCATION.addr, align 4
  store i32 %HALF_BYTES, i32* %HALF_BYTES.addr, align 4
  store i8* %MEMORY, i8** %MEMORY.addr, align 8
  store i32* %ERROR, i32** %ERROR.addr, align 8
  store i32 0, i32* %INT_MEM_VAL, align 4
  %0 = load i32, i32* %HALF_BYTES.addr, align 4
  %div = sdiv i32 %0, 2
  %mul = mul nsw i32 %div, 2
  %1 = load i32, i32* %HALF_BYTES.addr, align 4
  %cmp = icmp ne i32 %mul, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %HALF_BYTES.addr, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %HALF_BYTES.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %LOCATION.addr, align 4
  %4 = load i32, i32* %HALF_BYTES.addr, align 4
  %div1 = sdiv i32 %4, 2
  %add = add nsw i32 %3, %div1
  %cmp2 = icmp sle i32 %add, 1048576
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %LOCATION.addr, align 4
  %6 = load i32, i32* %HALF_BYTES.addr, align 4
  %div3 = sdiv i32 %6, 2
  %add4 = add nsw i32 %5, %div3
  %cmp5 = icmp sge i32 %add4, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true
  store i32 0, i32* %I, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %7 = load i32, i32* %I, align 4
  %8 = load i32, i32* %HALF_BYTES.addr, align 4
  %div7 = sdiv i32 %8, 2
  %cmp8 = icmp slt i32 %7, %div7
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %INT_MEM_VAL, align 4
  %mul9 = mul nsw i32 %9, 256
  %10 = load i32, i32* %LOCATION.addr, align 4
  %11 = load i32, i32* %I, align 4
  %add10 = add nsw i32 %10, %11
  %idxprom = sext i32 %add10 to i64
  %12 = load i8*, i8** %MEMORY.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %call = call i32 @INT(i8 signext %13)
  %add11 = add nsw i32 %mul9, %call
  store i32 %add11, i32* %INT_MEM_VAL, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %I, align 4
  %inc12 = add nsw i32 %14, 1
  store i32 %inc12, i32* %I, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %NUM.addr, align 4
  %16 = load i32, i32* %INT_MEM_VAL, align 4
  %add13 = add nsw i32 %16, %15
  store i32 %add13, i32* %INT_MEM_VAL, align 4
  %17 = load i32, i32* %INT_MEM_VAL, align 4
  %18 = load i32, i32* %HALF_BYTES.addr, align 4
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %CHAR_MEM_VAL, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %17, i32 16, i32 %18, i8* %arraydecay)
  %arraydecay14 = getelementptr inbounds [8 x i8], [8 x i8]* %CHAR_MEM_VAL, i32 0, i32 0
  %19 = load i32, i32* %HALF_BYTES.addr, align 4
  %div15 = sdiv i32 %19, 2
  %20 = load i32, i32* %LOCATION.addr, align 4
  %21 = load i8*, i8** %MEMORY.addr, align 8
  %22 = load i32*, i32** %ERROR.addr, align 8
  call void @DO_STORE(i8* %arraydecay14, i32 %div15, i32 %20, i8* %21, i32* %22, i32 0)
  br label %if.end.18

if.else:                                          ; preds = %land.lhs.true, %if.end
  %23 = load i32, i32* %LOCATION.addr, align 4
  %24 = load i32, i32* %HALF_BYTES.addr, align 4
  %div16 = sdiv i32 %24, 2
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i32 0, i32 0), i32 %23, i32 %div16)
  %25 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %25, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %for.end
  ret void
}

declare void @NUM_TO_STR(...) #2

; Function Attrs: nounwind uwtable
define i32 @START_OF_LINE_ADDR(i32 %ADDRESS) #0 {
entry:
  %ADDRESS.addr = alloca i32, align 4
  store i32 %ADDRESS, i32* %ADDRESS.addr, align 4
  %0 = load i32, i32* %ADDRESS.addr, align 4
  %div = sdiv i32 %0, 16
  %mul = mul nsw i32 %div, 4
  %mul1 = mul nsw i32 %mul, 4
  ret i32 %mul1
}

; Function Attrs: nounwind uwtable
define i32 @END_OF_LINE_ADDR(i32 %ADDRESS) #0 {
entry:
  %ADDRESS.addr = alloca i32, align 4
  store i32 %ADDRESS, i32* %ADDRESS.addr, align 4
  %0 = load i32, i32* %ADDRESS.addr, align 4
  %call = call i32 @START_OF_LINE_ADDR(i32 %0)
  %add = add nsw i32 %call, 16
  %sub = sub nsw i32 %add, 1
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define i32 @LINES_OF_GAP(%struct.BUFFER_ELEMENT* %REC1, %struct.BUFFER_ELEMENT* %REC2) #0 {
entry:
  %REC1.addr = alloca %struct.BUFFER_ELEMENT*, align 8
  %REC2.addr = alloca %struct.BUFFER_ELEMENT*, align 8
  %REC1_END = alloca i32, align 4
  %REC2_START = alloca i32, align 4
  store %struct.BUFFER_ELEMENT* %REC1, %struct.BUFFER_ELEMENT** %REC1.addr, align 8
  store %struct.BUFFER_ELEMENT* %REC2, %struct.BUFFER_ELEMENT** %REC2.addr, align 8
  %0 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %REC1.addr, align 8
  %cmp = icmp eq %struct.BUFFER_ELEMENT* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %REC1_END, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %REC1.addr, align 8
  %START = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %1, i32 0, i32 0
  %2 = load i32, i32* %START, align 4
  %3 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %REC1.addr, align 8
  %LENGTH = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %3, i32 0, i32 1
  %4 = load i32, i32* %LENGTH, align 4
  %add = add nsw i32 %2, %4
  %sub = sub nsw i32 %add, 1
  %call = call i32 @START_OF_LINE_ADDR(i32 %sub)
  store i32 %call, i32* %REC1_END, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %REC2.addr, align 8
  %cmp1 = icmp eq %struct.BUFFER_ELEMENT* %5, null
  br i1 %cmp1, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %if.end
  %call3 = call i32 @START_OF_LINE_ADDR(i32 1048575)
  store i32 %call3, i32* %REC2_START, align 4
  br label %if.end.7

if.else.4:                                        ; preds = %if.end
  %6 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %REC2.addr, align 8
  %START5 = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %6, i32 0, i32 0
  %7 = load i32, i32* %START5, align 4
  %call6 = call i32 @START_OF_LINE_ADDR(i32 %7)
  store i32 %call6, i32* %REC2_START, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.4, %if.then.2
  %8 = load i32, i32* %REC2_START, align 4
  %9 = load i32, i32* %REC1_END, align 4
  %sub8 = sub nsw i32 %8, %9
  %div = sdiv i32 %sub8, 16
  ret i32 %div
}

; Function Attrs: nounwind uwtable
define void @PRINT_ELIPSE(%struct.BUFFER_ELEMENT* %PREV, %struct.BUFFER_ELEMENT* %CURR, i32 %PREV_ADDR, %struct._IO_FILE* %OUTPUT) #0 {
entry:
  %PREV.addr = alloca %struct.BUFFER_ELEMENT*, align 8
  %CURR.addr = alloca %struct.BUFFER_ELEMENT*, align 8
  %PREV_ADDR.addr = alloca i32, align 4
  %OUTPUT.addr = alloca %struct._IO_FILE*, align 8
  %LOOP_COUNTER = alloca i32, align 4
  %STR_ADDR = alloca [6 x i8], align 1
  store %struct.BUFFER_ELEMENT* %PREV, %struct.BUFFER_ELEMENT** %PREV.addr, align 8
  store %struct.BUFFER_ELEMENT* %CURR, %struct.BUFFER_ELEMENT** %CURR.addr, align 8
  store i32 %PREV_ADDR, i32* %PREV_ADDR.addr, align 4
  store %struct._IO_FILE* %OUTPUT, %struct._IO_FILE** %OUTPUT.addr, align 8
  %0 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %PREV.addr, align 8
  %1 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %CURR.addr, align 8
  %call = call i32 @LINES_OF_GAP(%struct.BUFFER_ELEMENT* %0, %struct.BUFFER_ELEMENT* %1)
  %cmp = icmp sge i32 %call, 3
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %PREV_ADDR.addr, align 4
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %STR_ADDR, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %2, i32 16, i32 5, i8* %arraydecay)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %arraydecay1 = getelementptr inbounds [6 x i8], [6 x i8]* %STR_ADDR, i32 0, i32 0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i32 0, i32 0), i8* %arraydecay1)
  store i32 1, i32* %LOOP_COUNTER, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %LOOP_COUNTER, align 4
  %cmp3 = icmp sle i32 %4, 3
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %LOOP_COUNTER, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %LOOP_COUNTER, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %CURR.addr, align 8
  %cmp5 = icmp ne %struct.BUFFER_ELEMENT* %7, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %for.end
  %8 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %CURR.addr, align 8
  %START = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %8, i32 0, i32 0
  %9 = load i32, i32* %START, align 4
  %call7 = call i32 @START_OF_LINE_ADDR(i32 %9)
  %sub = sub nsw i32 %call7, 16
  %arraydecay8 = getelementptr inbounds [6 x i8], [6 x i8]* %STR_ADDR, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %sub, i32 16, i32 5, i8* %arraydecay8)
  br label %if.end

if.else:                                          ; preds = %for.end
  %call9 = call i32 @START_OF_LINE_ADDR(i32 1048576)
  %sub10 = sub nsw i32 %call9, 16
  %arraydecay11 = getelementptr inbounds [6 x i8], [6 x i8]* %STR_ADDR, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %sub10, i32 16, i32 5, i8* %arraydecay11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %arraydecay12 = getelementptr inbounds [6 x i8], [6 x i8]* %STR_ADDR, i32 0, i32 0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i32 0, i32 0), i8* %arraydecay12)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %entry
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @PRINT_MEM(i8* %MEMORY, %struct._IO_FILE* %OUTPUT) #0 {
entry:
  %MEMORY.addr = alloca i8*, align 8
  %OUTPUT.addr = alloca %struct._IO_FILE*, align 8
  %STEP = alloca %struct.BUFFER_ELEMENT*, align 8
  %PREVIOUS = alloca %struct.BUFFER_ELEMENT*, align 8
  %PREVIOUS_ADDR = alloca i32, align 4
  %ADDRESS = alloca i32, align 4
  %STR_ADDR = alloca [6 x i8], align 1
  %REST_EMPTY = alloca i32, align 4
  %I = alloca i32, align 4
  %J = alloca i32, align 4
  %STR_BYTE = alloca [3 x i8], align 1
  %LOC = alloca i32, align 4
  store i8* %MEMORY, i8** %MEMORY.addr, align 8
  store %struct._IO_FILE* %OUTPUT, %struct._IO_FILE** %OUTPUT.addr, align 8
  store %struct.BUFFER_ELEMENT* null, %struct.BUFFER_ELEMENT** %PREVIOUS, align 8
  store i32 0, i32* %PREVIOUS_ADDR, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i32 0, i32 0))
  %3 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** getelementptr inbounds (%struct.BUFFER, %struct.BUFFER* @LOCATIONS_USED, i32 0, i32 0), align 8
  %cmp = icmp eq %struct.BUFFER_ELEMENT* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.54

if.else:                                          ; preds = %entry
  %5 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** getelementptr inbounds (%struct.BUFFER, %struct.BUFFER* @LOCATIONS_USED, i32 0, i32 0), align 8
  store %struct.BUFFER_ELEMENT* %5, %struct.BUFFER_ELEMENT** %STEP, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %if.else
  %6 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %STEP, align 8
  %cmp4 = icmp ne %struct.BUFFER_ELEMENT* %6, null
  br i1 %cmp4, label %for.body, label %for.end.53

for.body:                                         ; preds = %for.cond
  %7 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %PREVIOUS, align 8
  %8 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %STEP, align 8
  %9 = load i32, i32* %PREVIOUS_ADDR, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  call void @PRINT_ELIPSE(%struct.BUFFER_ELEMENT* %7, %struct.BUFFER_ELEMENT* %8, i32 %9, %struct._IO_FILE* %10)
  %11 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %STEP, align 8
  %START = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %11, i32 0, i32 0
  %12 = load i32, i32* %START, align 4
  %call5 = call i32 @START_OF_LINE_ADDR(i32 %12)
  store i32 %call5, i32* %ADDRESS, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  store i32 0, i32* %REST_EMPTY, align 4
  %13 = load i32, i32* %ADDRESS, align 4
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %STR_ADDR, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %13, i32 16, i32 5, i8* %arraydecay)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %arraydecay6 = getelementptr inbounds [6 x i8], [6 x i8]* %STR_ADDR, i32 0, i32 0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay6)
  store i32 0, i32* %I, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.40, %do.body
  %15 = load i32, i32* %I, align 4
  %cmp9 = icmp slt i32 %15, 4
  br i1 %cmp9, label %for.body.10, label %for.end.42

for.body.10:                                      ; preds = %for.cond.8
  store i32 0, i32* %J, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body.10
  %16 = load i32, i32* %J, align 4
  %cmp12 = icmp slt i32 %16, 4
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %17 = load i32, i32* %ADDRESS, align 4
  %18 = load i32, i32* %I, align 4
  %mul = mul nsw i32 %18, 4
  %add = add nsw i32 %17, %mul
  %19 = load i32, i32* %J, align 4
  %add14 = add nsw i32 %add, %19
  store i32 %add14, i32* %LOC, align 4
  %20 = load i32, i32* %REST_EMPTY, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.end.26, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.13
  %21 = load i32, i32* %LOC, align 4
  %22 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %STEP, align 8
  %START15 = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %22, i32 0, i32 0
  %23 = load i32, i32* %START15, align 4
  %24 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %STEP, align 8
  %LENGTH = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %24, i32 0, i32 1
  %25 = load i32, i32* %LENGTH, align 4
  %add16 = add nsw i32 %23, %25
  %cmp17 = icmp sge i32 %21, %add16
  br i1 %cmp17, label %if.then.18, label %if.end.26

if.then.18:                                       ; preds = %land.lhs.true
  %26 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %STEP, align 8
  %NEXT = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %26, i32 0, i32 2
  %27 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %NEXT, align 8
  %cmp19 = icmp eq %struct.BUFFER_ELEMENT* %27, null
  br i1 %cmp19, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.18
  %28 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %STEP, align 8
  %29 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %STEP, align 8
  %NEXT20 = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %29, i32 0, i32 2
  %30 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %NEXT20, align 8
  %call21 = call i32 @LINES_OF_GAP(%struct.BUFFER_ELEMENT* %28, %struct.BUFFER_ELEMENT* %30)
  %cmp22 = icmp sgt i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.then.18
  store i32 1, i32* %REST_EMPTY, align 4
  br label %if.end

if.else.24:                                       ; preds = %lor.lhs.false
  %31 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %STEP, align 8
  %NEXT25 = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %31, i32 0, i32 2
  %32 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %NEXT25, align 8
  store %struct.BUFFER_ELEMENT* %32, %struct.BUFFER_ELEMENT** %STEP, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.24, %if.then.23
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %land.lhs.true, %for.body.13
  %33 = load i32, i32* %REST_EMPTY, align 4
  %tobool27 = icmp ne i32 %33, 0
  br i1 %tobool27, label %if.then.31, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.end.26
  %34 = load i32, i32* %LOC, align 4
  %35 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %STEP, align 8
  %START29 = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %35, i32 0, i32 0
  %36 = load i32, i32* %START29, align 4
  %cmp30 = icmp slt i32 %34, %36
  br i1 %cmp30, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %lor.lhs.false.28, %if.end.26
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.38

if.else.33:                                       ; preds = %lor.lhs.false.28
  %38 = load i32, i32* %LOC, align 4
  %idxprom = sext i32 %38 to i64
  %39 = load i8*, i8** %MEMORY.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %39, i64 %idxprom
  %40 = load i8, i8* %arrayidx, align 1
  %call34 = call i32 @INT(i8 signext %40)
  %arraydecay35 = getelementptr inbounds [3 x i8], [3 x i8]* %STR_BYTE, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %call34, i32 16, i32 2, i8* %arraydecay35)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %arraydecay36 = getelementptr inbounds [3 x i8], [3 x i8]* %STR_BYTE, i32 0, i32 0
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay36)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.33, %if.then.31
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %42 = load i32, i32* %J, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %J, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0))
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end
  %44 = load i32, i32* %I, align 4
  %inc41 = add nsw i32 %44, 1
  store i32 %inc41, i32* %I, align 4
  br label %for.cond.8

for.end.42:                                       ; preds = %for.cond.8
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  %46 = load i32, i32* %ADDRESS, align 4
  %call44 = call i32 @END_OF_LINE_ADDR(i32 %46)
  %add45 = add nsw i32 %call44, 1
  store i32 %add45, i32* %ADDRESS, align 4
  br label %do.cond

do.cond:                                          ; preds = %for.end.42
  %47 = load i32, i32* %ADDRESS, align 4
  %48 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %STEP, align 8
  %START46 = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %48, i32 0, i32 0
  %49 = load i32, i32* %START46, align 4
  %50 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %STEP, align 8
  %LENGTH47 = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %50, i32 0, i32 1
  %51 = load i32, i32* %LENGTH47, align 4
  %add48 = add nsw i32 %49, %51
  %sub = sub nsw i32 %add48, 1
  %call49 = call i32 @END_OF_LINE_ADDR(i32 %sub)
  %cmp50 = icmp sle i32 %47, %call49
  br i1 %cmp50, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %52 = load i32, i32* %ADDRESS, align 4
  store i32 %52, i32* %PREVIOUS_ADDR, align 4
  %53 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %STEP, align 8
  store %struct.BUFFER_ELEMENT* %53, %struct.BUFFER_ELEMENT** %PREVIOUS, align 8
  br label %for.inc.51

for.inc.51:                                       ; preds = %do.end
  %54 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %STEP, align 8
  %NEXT52 = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %54, i32 0, i32 2
  %55 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %NEXT52, align 8
  store %struct.BUFFER_ELEMENT* %55, %struct.BUFFER_ELEMENT** %STEP, align 8
  br label %for.cond

for.end.53:                                       ; preds = %for.cond
  %56 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %PREVIOUS, align 8
  %57 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %STEP, align 8
  %58 = load i32, i32* %PREVIOUS_ADDR, align 4
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  call void @PRINT_ELIPSE(%struct.BUFFER_ELEMENT* %56, %struct.BUFFER_ELEMENT* %57, i32 %58, %struct._IO_FILE* %59)
  br label %if.end.54

if.end.54:                                        ; preds = %for.end.53, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @OUTPUT_MEM(i8* %MEMORY, %struct._IO_FILE* %OUTPUT) #0 {
entry:
  %MEMORY.addr = alloca i8*, align 8
  %OUTPUT.addr = alloca %struct._IO_FILE*, align 8
  %CURRENT = alloca %struct.BUFFER_ELEMENT*, align 8
  %COUNT = alloca i32, align 4
  %ADDRESS = alloca [7 x i8], align 1
  %STR_BYTE = alloca [3 x i8], align 1
  store i8* %MEMORY, i8** %MEMORY.addr, align 8
  store %struct._IO_FILE* %OUTPUT, %struct._IO_FILE** %OUTPUT.addr, align 8
  %0 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** getelementptr inbounds (%struct.BUFFER, %struct.BUFFER* @LOCATIONS_USED, i32 0, i32 0), align 8
  store %struct.BUFFER_ELEMENT* %0, %struct.BUFFER_ELEMENT** %CURRENT, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %1 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %CURRENT, align 8
  %cmp = icmp ne %struct.BUFFER_ELEMENT* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %CURRENT, align 8
  %START = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %2, i32 0, i32 0
  %3 = load i32, i32* %START, align 4
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %ADDRESS, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %3, i32 16, i32 6, i8* %arraydecay)
  %4 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %CURRENT, align 8
  %LENGTH = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %4, i32 0, i32 1
  %5 = load i32, i32* %LENGTH, align 4
  %arraydecay1 = getelementptr inbounds [3 x i8], [3 x i8]* %STR_BYTE, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %5, i32 16, i32 2, i8* %arraydecay1)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %arraydecay2 = getelementptr inbounds [7 x i8], [7 x i8]* %ADDRESS, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [3 x i8], [3 x i8]* %STR_BYTE, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* %arraydecay2, i8* %arraydecay3)
  %7 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %CURRENT, align 8
  %START4 = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %7, i32 0, i32 0
  %8 = load i32, i32* %START4, align 4
  store i32 %8, i32* %COUNT, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %9 = load i32, i32* %COUNT, align 4
  %10 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %CURRENT, align 8
  %START5 = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %10, i32 0, i32 0
  %11 = load i32, i32* %START5, align 4
  %12 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %CURRENT, align 8
  %LENGTH6 = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %12, i32 0, i32 1
  %13 = load i32, i32* %LENGTH6, align 4
  %add = add nsw i32 %11, %13
  %cmp7 = icmp slt i32 %9, %add
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %COUNT, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i8*, i8** %MEMORY.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1
  %call8 = call i32 @INT(i8 signext %16)
  %arraydecay9 = getelementptr inbounds [3 x i8], [3 x i8]* %STR_BYTE, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %call8, i32 16, i32 2, i8* %arraydecay9)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %arraydecay10 = getelementptr inbounds [3 x i8], [3 x i8]* %STR_BYTE, i32 0, i32 0
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %COUNT, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %COUNT, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  %20 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %CURRENT, align 8
  %NEXT = getelementptr inbounds %struct.BUFFER_ELEMENT, %struct.BUFFER_ELEMENT* %20, i32 0, i32 2
  %21 = load %struct.BUFFER_ELEMENT*, %struct.BUFFER_ELEMENT** %NEXT, align 8
  store %struct.BUFFER_ELEMENT* %21, %struct.BUFFER_ELEMENT** %CURRENT, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
