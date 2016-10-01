; ModuleID = './MultiSource.Benchmarks.Prolangs-C/82.compiler.symbol.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i8*, i32, i32, i32, i32, i32 }

@Glastchar = global i32 -1, align 4
@Llastchar = global i32 -1, align 4
@Glastentry = global i32 0, align 4
@Llastentry = global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"\0A\0ALOCAL SYMBOL TABLE\0A------------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s\09%d\09%d\09%d\09%d\09%d\0A\00", align 1
@LocalTable = common global [100 x %struct.entry] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\0A\0AGLOBAL SYMBOL TABLE\0A-------------------\0A\00", align 1
@GlobalTable = common global [100 x %struct.entry] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [18 x i8] c"symbol table full\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"lexemes array full\00", align 1
@Glexemes = common global [999 x i8] zeroinitializer, align 16
@Llexemes = common global [999 x i8] zeroinitializer, align 16
@ErrorFlag = common global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Main never declared\00", align 1
@lookahead = common global i32 0, align 4
@tokenval = common global i32 0, align 4
@ftokenval = common global float 0.000000e+00, align 4
@FloatFlag = common global i32 0, align 4
@DecCount = common global i32 0, align 4
@offset = common global i32 0, align 4
@lineno = common global i32 0, align 4
@LabelCounter = common global i32 0, align 4
@NumberC = common global i32 0, align 4
@lexbuf = common global [128 x i8] zeroinitializer, align 16
@LocalIndex = common global i32 0, align 4
@GlobalIndex = common global i32 0, align 4
@NextLookahead = common global i32 0, align 4
@NextTokenval = common global i32 0, align 4
@NextFtokenval = common global float 0.000000e+00, align 4
@PreviousLookahead = common global i32 0, align 4
@PreviousTokenval = common global i32 0, align 4
@PreviousFtokenval = common global float 0.000000e+00, align 4
@Scope = common global i32 0, align 4
@ReturnLabel = common global i32 0, align 4
@CallReturnAddr = common global i32 0, align 4
@FuncNameIndex = common global i32 0, align 4
@ArrayParsed = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @OutputLocal() #0 {
entry:
  %i = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @Llastentry, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom
  %lexptr = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %lexptr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom1
  %token = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %token, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom3
  %type = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx4, i32 0, i32 2
  %7 = load i32, i32* %type, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom5
  %size = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx6, i32 0, i32 3
  %9 = load i32, i32* %size, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom7
  %function = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx8, i32 0, i32 4
  %11 = load i32, i32* %function, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom9
  %functionlabel = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx10, i32 0, i32 5
  %13 = load i32, i32* %functionlabel, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* %3, i32 %5, i32 %7, i32 %9, i32 %11, i32 %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @OutputGlobal() #0 {
entry:
  %i = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @Glastentry, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom
  %lexptr = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %lexptr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom1
  %token = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %token, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom3
  %type = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx4, i32 0, i32 2
  %7 = load i32, i32* %type, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom5
  %size = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx6, i32 0, i32 3
  %9 = load i32, i32* %size, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom7
  %function = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx8, i32 0, i32 4
  %11 = load i32, i32* %function, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom9
  %functionlabel = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx10, i32 0, i32 5
  %13 = load i32, i32* %functionlabel, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* %3, i32 %5, i32 %7, i32 %9, i32 %11, i32 %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @GlobalLookup(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %p = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i32, i32* @Glastentry, align 4
  store i32 %0, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %p, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %p, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom
  %lexptr = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %lexptr, align 8
  %4 = load i8*, i8** %s.addr, align 8
  %call = call i32 @strcmp(i8* %3, i8* %4) #4
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %p, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %p, align 4
  %sub = sub nsw i32 %6, 1
  store i32 %sub, i32* %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @LocalLookup(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %p = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i32, i32* @Llastentry, align 4
  store i32 %0, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %p, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %p, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom
  %lexptr = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %lexptr, align 8
  %4 = load i8*, i8** %s.addr, align 8
  %call = call i32 @strcmp(i8* %3, i8* %4) #4
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %p, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %p, align 4
  %sub = sub nsw i32 %6, 1
  store i32 %sub, i32* %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @GlobalInsert(i8* %s, i32 %tok, i32 %type, i32 %size, i32 %function, i32 %functionlabel) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %tok.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %function.addr = alloca i32, align 4
  %functionlabel.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %function, i32* %function.addr, align 4
  store i32 %functionlabel, i32* %functionlabel.addr, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load i32, i32* @Glastentry, align 4
  %add = add nsw i32 %1, 1
  %cmp = icmp sge i32 %add, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @Glastchar, align 4
  %3 = load i32, i32* %len, align 4
  %add2 = add nsw i32 %2, %3
  %add3 = add nsw i32 %add2, 1
  %cmp4 = icmp sge i32 %add3, 999
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %4 = load i32, i32* @Glastentry, align 4
  %add8 = add nsw i32 %4, 1
  store i32 %add8, i32* @Glastentry, align 4
  %5 = load i32, i32* %tok.addr, align 4
  %6 = load i32, i32* @Glastentry, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom
  %token = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx, i32 0, i32 1
  store i32 %5, i32* %token, align 4
  %7 = load i32, i32* @Glastchar, align 4
  %add9 = add nsw i32 %7, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [999 x i8], [999 x i8]* @Glexemes, i32 0, i64 %idxprom10
  %8 = load i32, i32* @Glastentry, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom12
  %lexptr = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx13, i32 0, i32 0
  store i8* %arrayidx11, i8** %lexptr, align 8
  %9 = load i32, i32* @Glastchar, align 4
  %10 = load i32, i32* %len, align 4
  %add14 = add nsw i32 %9, %10
  %add15 = add nsw i32 %add14, 1
  store i32 %add15, i32* @Glastchar, align 4
  %11 = load i32, i32* @Glastentry, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom16
  %lexptr18 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx17, i32 0, i32 0
  %12 = load i8*, i8** %lexptr18, align 8
  %13 = load i8*, i8** %s.addr, align 8
  %call19 = call i8* @strcpy(i8* %12, i8* %13) #5
  %14 = load i32, i32* %type.addr, align 4
  %15 = load i32, i32* @Glastentry, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom20
  %type22 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx21, i32 0, i32 2
  store i32 %14, i32* %type22, align 4
  %16 = load i32, i32* %size.addr, align 4
  %17 = load i32, i32* @Glastentry, align 4
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom23
  %size25 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx24, i32 0, i32 3
  store i32 %16, i32* %size25, align 4
  %18 = load i32, i32* %function.addr, align 4
  %19 = load i32, i32* @Glastentry, align 4
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom26
  %function28 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx27, i32 0, i32 4
  store i32 %18, i32* %function28, align 4
  %20 = load i32, i32* %functionlabel.addr, align 4
  %21 = load i32, i32* @Glastentry, align 4
  %idxprom29 = sext i32 %21 to i64
  %arrayidx30 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom29
  %functionlabel31 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx30, i32 0, i32 5
  store i32 %20, i32* %functionlabel31, align 4
  %22 = load i32, i32* @Glastentry, align 4
  store i32 %22, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @error(i8*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @LocalInsert(i8* %s, i32 %tok, i32 %type, i32 %size, i32 %function, i32 %functionlabel) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %tok.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %function.addr = alloca i32, align 4
  %functionlabel.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %tok, i32* %tok.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %function, i32* %function.addr, align 4
  store i32 %functionlabel, i32* %functionlabel.addr, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load i32, i32* @Llastentry, align 4
  %add = add nsw i32 %1, 1
  %cmp = icmp sge i32 %add, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @Llastchar, align 4
  %3 = load i32, i32* %len, align 4
  %add2 = add nsw i32 %2, %3
  %add3 = add nsw i32 %add2, 1
  %cmp4 = icmp sge i32 %add3, 999
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %4 = load i32, i32* @Llastentry, align 4
  %add8 = add nsw i32 %4, 1
  store i32 %add8, i32* @Llastentry, align 4
  %5 = load i32, i32* %tok.addr, align 4
  %6 = load i32, i32* @Llastentry, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom
  %token = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx, i32 0, i32 1
  store i32 %5, i32* %token, align 4
  %7 = load i32, i32* @Llastchar, align 4
  %add9 = add nsw i32 %7, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [999 x i8], [999 x i8]* @Llexemes, i32 0, i64 %idxprom10
  %8 = load i32, i32* @Llastentry, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom12
  %lexptr = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx13, i32 0, i32 0
  store i8* %arrayidx11, i8** %lexptr, align 8
  %9 = load i32, i32* @Llastchar, align 4
  %10 = load i32, i32* %len, align 4
  %add14 = add nsw i32 %9, %10
  %add15 = add nsw i32 %add14, 1
  store i32 %add15, i32* @Llastchar, align 4
  %11 = load i32, i32* @Llastentry, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom16
  %lexptr18 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx17, i32 0, i32 0
  %12 = load i8*, i8** %lexptr18, align 8
  %13 = load i8*, i8** %s.addr, align 8
  %call19 = call i8* @strcpy(i8* %12, i8* %13) #5
  %14 = load i32, i32* %type.addr, align 4
  %15 = load i32, i32* @Llastentry, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom20
  %type22 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx21, i32 0, i32 2
  store i32 %14, i32* %type22, align 4
  %16 = load i32, i32* %size.addr, align 4
  %17 = load i32, i32* @Llastentry, align 4
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom23
  %size25 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx24, i32 0, i32 3
  store i32 %16, i32* %size25, align 4
  %18 = load i32, i32* %function.addr, align 4
  %19 = load i32, i32* @Llastentry, align 4
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom26
  %function28 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx27, i32 0, i32 4
  store i32 %18, i32* %function28, align 4
  %20 = load i32, i32* %functionlabel.addr, align 4
  %21 = load i32, i32* @Llastentry, align 4
  %idxprom29 = sext i32 %21 to i64
  %arrayidx30 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom29
  %functionlabel31 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx30, i32 0, i32 5
  store i32 %20, i32* %functionlabel31, align 4
  %22 = load i32, i32* @Llastentry, align 4
  store i32 %22, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define void @ParamInt() #0 {
entry:
  %p = alloca i32, align 4
  %0 = load i32, i32* @Llastentry, align 4
  store i32 %0, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %p, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %p, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx, i32 0, i32 2
  %3 = load i32, i32* %type, align 4
  %cmp1 = icmp eq i32 %3, 2041
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %p, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom2
  %type4 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx3, i32 0, i32 2
  store i32 2002, i32* %type4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %p, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @LocalReset() #0 {
entry:
  store i32 -1, i32* @Llastchar, align 4
  store i32 0, i32* @Llastentry, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @AllBodsParsed() #0 {
entry:
  %p = alloca i32, align 4
  %tmpflag = alloca i32, align 4
  store i32 0, i32* %tmpflag, align 4
  %0 = load i32, i32* @Glastentry, align 4
  store i32 %0, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %p, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %p, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom
  %function = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx, i32 0, i32 4
  %3 = load i32, i32* %function, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %p, align 4
  call void @emit(i32 2062, i32 %4, float 0.000000e+00)
  store i32 1, i32* %tmpflag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %p, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %tmpflag, align 4
  store i32 %6, i32* @ErrorFlag, align 4
  ret void
}

declare void @emit(i32, i32, float) #1

; Function Attrs: nounwind uwtable
define void @CheckMain() #0 {
entry:
  %temp = alloca i32, align 4
  %call = call i32 @GlobalLookup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0))
  store i32 %call, i32* %temp, align 4
  %0 = load i32, i32* %temp, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom
  %function = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx, i32 0, i32 4
  %1 = load i32, i32* %function, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  %2 = load i32, i32* %temp, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom1
  %function3 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx2, i32 0, i32 4
  store i32 -1, i32* %function3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @ErrorFlag, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
