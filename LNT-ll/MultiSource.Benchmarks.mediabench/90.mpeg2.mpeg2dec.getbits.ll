; ModuleID = './MultiSource.Benchmarks.mediabench/90.mpeg2.mpeg2dec.getbits.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }

@ld = external global %struct.layer_data*, align 8
@System_Stream_Flag = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @Initialize_Buffer() #0 {
entry:
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Incnt = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 6
  store i32 0, i32* %Incnt, align 4
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdbfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 2048
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 2
  store i8* %add.ptr, i8** %Rdptr, align 8
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr1 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 2
  %4 = load i8*, i8** %Rdptr1, align 8
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdmax = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 5
  store i8* %4, i8** %Rdmax, align 8
  %6 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %6, i32 0, i32 4
  store i32 0, i32* %Bfr, align 4
  call void @Flush_Buffer(i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Flush_Buffer(i32 %N) #0 {
entry:
  %N.addr = alloca i32, align 4
  %Incnt = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i32 0, i32 4
  %2 = load i32, i32* %Bfr, align 4
  %shl = shl i32 %2, %0
  store i32 %shl, i32* %Bfr, align 4
  %3 = load i32, i32* %N.addr, align 4
  %4 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Incnt1 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %4, i32 0, i32 6
  %5 = load i32, i32* %Incnt1, align 4
  %sub = sub nsw i32 %5, %3
  store i32 %sub, i32* %Incnt1, align 4
  store i32 %sub, i32* %Incnt, align 4
  %6 = load i32, i32* %Incnt, align 4
  %cmp = icmp sle i32 %6, 24
  br i1 %cmp, label %if.then, label %if.end.52

if.then:                                          ; preds = %entry
  %7 = load i32, i32* @System_Stream_Flag, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %8 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %8, i32 0, i32 2
  %9 = load i8*, i8** %Rdptr, align 8
  %10 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdmax = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i32 0, i32 5
  %11 = load i8*, i8** %Rdmax, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 -4
  %cmp2 = icmp uge i8* %9, %add.ptr
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.3
  %12 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %12, i32 0, i32 2
  %13 = load i8*, i8** %Rdptr4, align 8
  %14 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdmax5 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %14, i32 0, i32 5
  %15 = load i8*, i8** %Rdmax5, align 8
  %cmp6 = icmp uge i8* %13, %15
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %do.body
  call void @Next_Packet()
  br label %if.end

if.end:                                           ; preds = %if.then.7, %do.body
  %call = call i32 @Get_Byte()
  %16 = load i32, i32* %Incnt, align 4
  %sub8 = sub nsw i32 24, %16
  %shl9 = shl i32 %call, %sub8
  %17 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bfr10 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %17, i32 0, i32 4
  %18 = load i32, i32* %Bfr10, align 4
  %or = or i32 %18, %shl9
  store i32 %or, i32* %Bfr10, align 4
  %19 = load i32, i32* %Incnt, align 4
  %add = add nsw i32 %19, 8
  store i32 %add, i32* %Incnt, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %20 = load i32, i32* %Incnt, align 4
  %cmp11 = icmp sle i32 %20, 24
  br i1 %cmp11, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.50

if.else:                                          ; preds = %land.lhs.true, %if.then
  %21 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr12 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %21, i32 0, i32 2
  %22 = load i8*, i8** %Rdptr12, align 8
  %23 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdbfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %23, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr, i32 0, i32 0
  %add.ptr13 = getelementptr inbounds i8, i8* %arraydecay, i64 2044
  %cmp14 = icmp ult i8* %22, %add.ptr13
  br i1 %cmp14, label %if.then.15, label %if.else.27

if.then.15:                                       ; preds = %if.else
  br label %do.body.16

do.body.16:                                       ; preds = %do.cond.23, %if.then.15
  %24 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr17 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %24, i32 0, i32 2
  %25 = load i8*, i8** %Rdptr17, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %Rdptr17, align 8
  %26 = load i8, i8* %25, align 1
  %conv = zext i8 %26 to i32
  %27 = load i32, i32* %Incnt, align 4
  %sub18 = sub nsw i32 24, %27
  %shl19 = shl i32 %conv, %sub18
  %28 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bfr20 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %28, i32 0, i32 4
  %29 = load i32, i32* %Bfr20, align 4
  %or21 = or i32 %29, %shl19
  store i32 %or21, i32* %Bfr20, align 4
  %30 = load i32, i32* %Incnt, align 4
  %add22 = add nsw i32 %30, 8
  store i32 %add22, i32* %Incnt, align 4
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.body.16
  %31 = load i32, i32* %Incnt, align 4
  %cmp24 = icmp sle i32 %31, 24
  br i1 %cmp24, label %do.body.16, label %do.end.26

do.end.26:                                        ; preds = %do.cond.23
  br label %if.end.49

if.else.27:                                       ; preds = %if.else
  br label %do.body.28

do.body.28:                                       ; preds = %do.cond.45, %if.else.27
  %32 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr29 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %32, i32 0, i32 2
  %33 = load i8*, i8** %Rdptr29, align 8
  %34 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdbfr30 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %34, i32 0, i32 1
  %arraydecay31 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr30, i32 0, i32 0
  %add.ptr32 = getelementptr inbounds i8, i8* %arraydecay31, i64 2048
  %cmp33 = icmp uge i8* %33, %add.ptr32
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %do.body.28
  call void @Fill_Buffer()
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %do.body.28
  %35 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr37 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %35, i32 0, i32 2
  %36 = load i8*, i8** %Rdptr37, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr38, i8** %Rdptr37, align 8
  %37 = load i8, i8* %36, align 1
  %conv39 = zext i8 %37 to i32
  %38 = load i32, i32* %Incnt, align 4
  %sub40 = sub nsw i32 24, %38
  %shl41 = shl i32 %conv39, %sub40
  %39 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bfr42 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %39, i32 0, i32 4
  %40 = load i32, i32* %Bfr42, align 4
  %or43 = or i32 %40, %shl41
  store i32 %or43, i32* %Bfr42, align 4
  %41 = load i32, i32* %Incnt, align 4
  %add44 = add nsw i32 %41, 8
  store i32 %add44, i32* %Incnt, align 4
  br label %do.cond.45

do.cond.45:                                       ; preds = %if.end.36
  %42 = load i32, i32* %Incnt, align 4
  %cmp46 = icmp sle i32 %42, 24
  br i1 %cmp46, label %do.body.28, label %do.end.48

do.end.48:                                        ; preds = %do.cond.45
  br label %if.end.49

if.end.49:                                        ; preds = %do.end.48, %do.end.26
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %do.end
  %43 = load i32, i32* %Incnt, align 4
  %44 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Incnt51 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %44, i32 0, i32 6
  store i32 %43, i32* %Incnt51, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.50, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @Fill_Buffer() #0 {
entry:
  %Buffer_Level = alloca i32, align 4
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Infile = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 0
  %1 = load i32, i32* %Infile, align 4
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdbfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr, i32 0, i32 0
  %call = call i64 @read(i32 %1, i8* %arraydecay, i64 2048)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %Buffer_Level, align 4
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdbfr1 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 1
  %arraydecay2 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr1, i32 0, i32 0
  %4 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %4, i32 0, i32 2
  store i8* %arraydecay2, i8** %Rdptr, align 8
  %5 = load i32, i32* @System_Stream_Flag, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdmax = getelementptr inbounds %struct.layer_data, %struct.layer_data* %6, i32 0, i32 5
  %7 = load i8*, i8** %Rdmax, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 -2048
  store i8* %add.ptr, i8** %Rdmax, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %Buffer_Level, align 4
  %cmp = icmp slt i32 %8, 2048
  br i1 %cmp, label %if.then.4, label %if.end.32

if.then.4:                                        ; preds = %if.end
  %9 = load i32, i32* %Buffer_Level, align 4
  %cmp5 = icmp slt i32 %9, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  store i32 0, i32* %Buffer_Level, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.8
  %10 = load i32, i32* %Buffer_Level, align 4
  %and = and i32 %10, 3
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %Buffer_Level, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %Buffer_Level, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdbfr10 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %12, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr10, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.11

while.cond.11:                                    ; preds = %while.body.14, %while.end
  %13 = load i32, i32* %Buffer_Level, align 4
  %cmp12 = icmp slt i32 %13, 2048
  br i1 %cmp12, label %while.body.14, label %while.end.31

while.body.14:                                    ; preds = %while.cond.11
  %14 = load i32, i32* %Buffer_Level, align 4
  %inc15 = add nsw i32 %14, 1
  store i32 %inc15, i32* %Buffer_Level, align 4
  %idxprom16 = sext i32 %14 to i64
  %15 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdbfr17 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %15, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr17, i32 0, i64 %idxprom16
  store i8 0, i8* %arrayidx18, align 1
  %16 = load i32, i32* %Buffer_Level, align 4
  %inc19 = add nsw i32 %16, 1
  store i32 %inc19, i32* %Buffer_Level, align 4
  %idxprom20 = sext i32 %16 to i64
  %17 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdbfr21 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %17, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr21, i32 0, i64 %idxprom20
  store i8 0, i8* %arrayidx22, align 1
  %18 = load i32, i32* %Buffer_Level, align 4
  %inc23 = add nsw i32 %18, 1
  store i32 %inc23, i32* %Buffer_Level, align 4
  %idxprom24 = sext i32 %18 to i64
  %19 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdbfr25 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %19, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr25, i32 0, i64 %idxprom24
  store i8 1, i8* %arrayidx26, align 1
  %20 = load i32, i32* %Buffer_Level, align 4
  %inc27 = add nsw i32 %20, 1
  store i32 %inc27, i32* %Buffer_Level, align 4
  %idxprom28 = sext i32 %20 to i64
  %21 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdbfr29 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %21, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr29, i32 0, i64 %idxprom28
  store i8 -73, i8* %arrayidx30, align 1
  br label %while.cond.11

while.end.31:                                     ; preds = %while.cond.11
  br label %if.end.32

if.end.32:                                        ; preds = %while.end.31, %if.end
  ret void
}

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @Get_Byte() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 2
  %1 = load i8*, i8** %Rdptr, align 8
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdbfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 2048
  %cmp = icmp uge i8* %1, %add.ptr
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Infile = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 0
  %4 = load i32, i32* %Infile, align 4
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdbfr1 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 1
  %arraydecay2 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr1, i32 0, i32 0
  %call = call i64 @read(i32 %4, i8* %arraydecay2, i64 2048)
  %6 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %6, i32 0, i32 2
  %7 = load i8*, i8** %Rdptr3, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %7, i64 -2048
  store i8* %add.ptr4, i8** %Rdptr3, align 8
  %8 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdmax = getelementptr inbounds %struct.layer_data, %struct.layer_data* %8, i32 0, i32 5
  %9 = load i8*, i8** %Rdmax, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %9, i64 -2048
  store i8* %add.ptr5, i8** %Rdmax, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr6 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i32 0, i32 2
  %11 = load i8*, i8** %Rdptr6, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %Rdptr6, align 8
  %12 = load i8, i8* %11, align 1
  %conv = zext i8 %12 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @Get_Word() #0 {
entry:
  %Val = alloca i32, align 4
  %call = call i32 @Get_Byte()
  store i32 %call, i32* %Val, align 4
  %0 = load i32, i32* %Val, align 4
  %shl = shl i32 %0, 8
  %call1 = call i32 @Get_Byte()
  %or = or i32 %shl, %call1
  ret i32 %or
}

; Function Attrs: nounwind uwtable
define i32 @Show_Bits(i32 %N) #0 {
entry:
  %N.addr = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 4
  %1 = load i32, i32* %Bfr, align 4
  %2 = load i32, i32* %N.addr, align 4
  %sub = sub nsw i32 32, %2
  %shr = lshr i32 %1, %sub
  ret i32 %shr
}

; Function Attrs: nounwind uwtable
define i32 @Get_Bits1() #0 {
entry:
  %call = call i32 @Get_Bits(i32 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @Get_Bits(i32 %N) #0 {
entry:
  %N.addr = alloca i32, align 4
  %Val = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  %call = call i32 @Show_Bits(i32 %0)
  store i32 %call, i32* %Val, align 4
  %1 = load i32, i32* %N.addr, align 4
  call void @Flush_Buffer(i32 %1)
  %2 = load i32, i32* %Val, align 4
  ret i32 %2
}

declare void @Next_Packet() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
