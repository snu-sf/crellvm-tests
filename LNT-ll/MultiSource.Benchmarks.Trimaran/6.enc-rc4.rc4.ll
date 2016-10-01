; ModuleID = './MultiSource.Benchmarks.Trimaran/6.enc-rc4.rc4.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc4_state = type { i32, i32, [256 x i32] }

@.str = private unnamed_addr constant [26 x i8] c"\0A RC4 Validation Tests:\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" Test %d \00", align 1
@data = internal global [7 x [30 x i8]] [[30 x i8] c"\01#Eg\89\AB\CD\EF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [30 x i8] c"\00\00\00\00\00\00\00\00\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [30 x i8] c"\00\00\00\00\00\00\00\00\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [30 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\00\00\00\00\00\00\00\00\00", [30 x i8] c"\124Vx\9A\BC\DE\F0\124Vx\9A\BC\DE\F0\124Vx\9A\BC\DE\F0\124Vx\FF\00", [30 x i8] c"\00\00\00\00\00\00\00\00\00\00\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [30 x i8] zeroinitializer], align 16
@data_len = internal global [7 x i8] c"\08\08\08\14\1C\0A\00", align 1
@keys = internal global [7 x [30 x i8]] [[30 x i8] c"\08\01#Eg\89\AB\CD\EF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [30 x i8] c"\08\01#Eg\89\AB\CD\EF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [30 x i8] c"\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [30 x i8] c"\04\EF\01#E\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [30 x i8] c"\08\01#Eg\89\AB\CD\EF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [30 x i8] c"\04\EF\01#E\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [30 x i8] zeroinitializer], align 16
@output = internal global [7 x [30 x i8]] [[30 x i8] c"u\B7\87\80\99\E0\C5\96\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [30 x i8] c"t\94\C2\E7\10K\08y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [30 x i8] c"\DE\18\89A\A37]:\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [30 x i8] c"\D6\A1A\A7\EC<8\DF\BDaZ\11b\E1\C7\BA6\B6xX\00\00\00\00\00\00\00\00\00\00", [30 x i8] c"f\A0\94\9F\8A\F7\D6\89\1F\7F\83+\A83\C0\0C\89.\BE0\14<\E2\87@\01\1E\CF\00\00", [30 x i8] c"\D6\A1A\A7\EC<8\DF\BDa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [30 x i8] zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"passed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @rc4_setup(%struct.rc4_state* %s, i8* %key, i32 %length) #0 {
entry:
  %s.addr = alloca %struct.rc4_state*, align 8
  %key.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32*, align 8
  %a = alloca i32, align 4
  store %struct.rc4_state* %s, %struct.rc4_state** %s.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load %struct.rc4_state*, %struct.rc4_state** %s.addr, align 8
  %x = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %0, i32 0, i32 0
  store i32 0, i32* %x, align 4
  %1 = load %struct.rc4_state*, %struct.rc4_state** %s.addr, align 8
  %y = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %1, i32 0, i32 1
  store i32 0, i32* %y, align 4
  %2 = load %struct.rc4_state*, %struct.rc4_state** %s.addr, align 8
  %m1 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %2, i32 0, i32 2
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %m1, i32 0, i32 0
  store i32* %arraydecay, i32** %m, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %m, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  store i32 %4, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.21, %for.end
  %8 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %8, 256
  br i1 %cmp3, label %for.body.4, label %for.end.23

for.body.4:                                       ; preds = %for.cond.2
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load i32*, i32** %m, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %10, i64 %idxprom5
  %11 = load i32, i32* %arrayidx6, align 4
  store i32 %11, i32* %a, align 4
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %a, align 4
  %add = add nsw i32 %12, %13
  %14 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load i8*, i8** %key.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %15, i64 %idxprom7
  %16 = load i8, i8* %arrayidx8, align 1
  %conv = zext i8 %16 to i32
  %add9 = add nsw i32 %add, %conv
  %conv10 = trunc i32 %add9 to i8
  %conv11 = zext i8 %conv10 to i32
  store i32 %conv11, i32* %j, align 4
  %17 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load i32*, i32** %m, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %18, i64 %idxprom12
  %19 = load i32, i32* %arrayidx13, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load i32*, i32** %m, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %21, i64 %idxprom14
  store i32 %19, i32* %arrayidx15, align 4
  %22 = load i32, i32* %a, align 4
  %23 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load i32*, i32** %m, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %24, i64 %idxprom16
  store i32 %22, i32* %arrayidx17, align 4
  %25 = load i32, i32* %k, align 4
  %inc18 = add nsw i32 %25, 1
  store i32 %inc18, i32* %k, align 4
  %26 = load i32, i32* %length.addr, align 4
  %cmp19 = icmp sge i32 %inc18, %26
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  store i32 0, i32* %k, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end
  %27 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %27, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond.2

for.end.23:                                       ; preds = %for.cond.2
  ret void
}

; Function Attrs: nounwind uwtable
define void @rc4_crypt(%struct.rc4_state* %s, i8* %data, i32 %length) #0 {
entry:
  %s.addr = alloca %struct.rc4_state*, align 8
  %data.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %m = alloca i32*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.rc4_state* %s, %struct.rc4_state** %s.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load %struct.rc4_state*, %struct.rc4_state** %s.addr, align 8
  %x1 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %0, i32 0, i32 0
  %1 = load i32, i32* %x1, align 4
  store i32 %1, i32* %x, align 4
  %2 = load %struct.rc4_state*, %struct.rc4_state** %s.addr, align 8
  %y2 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %2, i32 0, i32 1
  %3 = load i32, i32* %y2, align 4
  store i32 %3, i32* %y, align 4
  %4 = load %struct.rc4_state*, %struct.rc4_state** %s.addr, align 8
  %m3 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %4, i32 0, i32 2
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %m3, i32 0, i32 0
  store i32* %arraydecay, i32** %m, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %x, align 4
  %add = add nsw i32 %7, 1
  %conv = trunc i32 %add to i8
  %conv4 = zext i8 %conv to i32
  store i32 %conv4, i32* %x, align 4
  %8 = load i32, i32* %x, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32*, i32** %m, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  store i32 %10, i32* %a, align 4
  %11 = load i32, i32* %y, align 4
  %12 = load i32, i32* %a, align 4
  %add5 = add nsw i32 %11, %12
  %conv6 = trunc i32 %add5 to i8
  %conv7 = zext i8 %conv6 to i32
  store i32 %conv7, i32* %y, align 4
  %13 = load i32, i32* %y, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load i32*, i32** %m, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  %15 = load i32, i32* %arrayidx9, align 4
  store i32 %15, i32* %b, align 4
  %16 = load i32, i32* %x, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load i32*, i32** %m, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %17, i64 %idxprom10
  store i32 %15, i32* %arrayidx11, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %y, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load i32*, i32** %m, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %20, i64 %idxprom12
  store i32 %18, i32* %arrayidx13, align 4
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %b, align 4
  %add14 = add nsw i32 %21, %22
  %conv15 = trunc i32 %add14 to i8
  %idxprom16 = zext i8 %conv15 to i64
  %23 = load i32*, i32** %m, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %23, i64 %idxprom16
  %24 = load i32, i32* %arrayidx17, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %25 to i64
  %26 = load i8*, i8** %data.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %26, i64 %idxprom18
  %27 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %27 to i32
  %xor = xor i32 %conv20, %24
  %conv21 = trunc i32 %xor to i8
  store i8 %conv21, i8* %arrayidx19, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %x, align 4
  %30 = load %struct.rc4_state*, %struct.rc4_state** %s.addr, align 8
  %x22 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %30, i32 0, i32 0
  store i32 %29, i32* %x22, align 4
  %31 = load i32, i32* %y, align 4
  %32 = load %struct.rc4_state*, %struct.rc4_state** %s.addr, align 8
  %y23 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %32, i32 0, i32 1
  store i32 %31, i32* %y23, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca %struct.rc4_state, align 4
  %buffer = alloca [30 x i8], align 16
  %count = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 200000, i32* %count, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #4
  store i32 %call, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %if.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 6
  br i1 %cmp2, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %add)
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %count, align 4
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %7 = bitcast [30 x i8]* %buffer to i8*
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [7 x [30 x i8]], [7 x [30 x i8]]* @data, i32 0, i64 %idxprom
  %9 = bitcast [30 x i8]* %arrayidx7 to i8*
  %10 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [7 x i8], [7 x i8]* @data_len, i32 0, i64 %idxprom8
  %11 = load i8, i8* %arrayidx9, align 1
  %conv = zext i8 %11 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %9, i64 %conv, i32 1, i1 false)
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [7 x [30 x i8]], [7 x [30 x i8]]* @keys, i32 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [30 x i8], [30 x i8]* %arrayidx11, i32 0, i64 1
  %13 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [7 x [30 x i8]], [7 x [30 x i8]]* @keys, i32 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [30 x i8], [30 x i8]* %arrayidx14, i32 0, i64 0
  %14 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %14 to i32
  call void @rc4_setup(%struct.rc4_state* %s, i8* %arrayidx12, i32 %conv16)
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %buffer, i32 0, i32 0
  %15 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [7 x i8], [7 x i8]* @data_len, i32 0, i64 %idxprom17
  %16 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %16 to i32
  call void @rc4_crypt(%struct.rc4_state* %s, i8* %arraydecay, i32 %conv19)
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %arraydecay20 = getelementptr inbounds [30 x i8], [30 x i8]* %buffer, i32 0, i32 0
  %18 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %18 to i64
  %arrayidx22 = getelementptr inbounds [7 x [30 x i8]], [7 x [30 x i8]]* @output, i32 0, i64 %idxprom21
  %arraydecay23 = getelementptr inbounds [30 x i8], [30 x i8]* %arrayidx22, i32 0, i32 0
  %19 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %19 to i64
  %arrayidx25 = getelementptr inbounds [7 x i8], [7 x i8]* @data_len, i32 0, i64 %idxprom24
  %20 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %20 to i64
  %call27 = call i32 @memcmp(i8* %arraydecay20, i8* %arraydecay23, i64 %conv26) #4
  %tobool = icmp ne i32 %call27, 0
  br i1 %tobool, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %for.end
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %for.end
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0))
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.30
  %21 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %21, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.34, %if.then.28
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
