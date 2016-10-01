; ModuleID = './MultiSource.Benchmarks.mediabench/99.mpeg2.mpeg2dec.systems.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@ld = external global %struct.layer_data*, align 8
@.str = private unnamed_addr constant [19 x i8] c"MPEG-2 PES packet\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Error in packet header\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Unexpected startcode %08x in system layer\0A\00", align 1
@System_Stream_Flag = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @Next_Packet() #0 {
entry:
  %code = alloca i32, align 4
  %l = alloca i32, align 4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %call = call i32 @Get_Long()
  store i32 %call, i32* %code, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %0 = load i32, i32* %code, align 4
  %and = and i32 %0, -256
  %cmp = icmp ne i32 %and, 256
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %code, align 4
  %shl = shl i32 %1, 8
  %call1 = call i32 @Get_Byte()
  %or = or i32 %shl, %call1
  store i32 %or, i32* %code, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 442, label %sw.bb
    i32 480, label %sw.bb.2
    i32 441, label %sw.bb.52
  ]

sw.bb:                                            ; preds = %while.end
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 2
  %4 = load i8*, i8** %Rdptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 8
  store i8* %add.ptr, i8** %Rdptr, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.end
  %call3 = call i32 @Get_Word()
  store i32 %call3, i32* %code, align 4
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 2
  %6 = load i8*, i8** %Rdptr4, align 8
  %7 = load i32, i32* %code, align 4
  %idx.ext = zext i32 %7 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %8 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdmax = getelementptr inbounds %struct.layer_data, %struct.layer_data* %8, i32 0, i32 5
  store i8* %add.ptr5, i8** %Rdmax, align 8
  %call6 = call i32 @Get_Byte()
  store i32 %call6, i32* %code, align 4
  %9 = load i32, i32* %code, align 4
  %shr = lshr i32 %9, 6
  %cmp7 = icmp eq i32 %shr, 2
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.2
  %10 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr8 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i32 0, i32 2
  %11 = load i8*, i8** %Rdptr8, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %Rdptr8, align 8
  %call9 = call i32 @Get_Byte()
  store i32 %call9, i32* %code, align 4
  %12 = load i32, i32* %code, align 4
  %13 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr10 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %13, i32 0, i32 2
  %14 = load i8*, i8** %Rdptr10, align 8
  %idx.ext11 = zext i32 %12 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %14, i64 %idx.ext11
  store i8* %add.ptr12, i8** %Rdptr10, align 8
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  br label %return

if.else:                                          ; preds = %sw.bb.2
  %15 = load i32, i32* %code, align 4
  %cmp14 = icmp eq i32 %15, 255
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.else
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.19, %if.then.15
  %call17 = call i32 @Get_Byte()
  store i32 %call17, i32* %code, align 4
  %cmp18 = icmp eq i32 %call17, 255
  br i1 %cmp18, label %while.body.19, label %while.end.20

while.body.19:                                    ; preds = %while.cond.16
  br label %while.cond.16

while.end.20:                                     ; preds = %while.cond.16
  br label %if.end

if.end:                                           ; preds = %while.end.20, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end
  %16 = load i32, i32* %code, align 4
  %cmp22 = icmp uge i32 %16, 64
  br i1 %cmp22, label %if.then.23, label %if.end.31

if.then.23:                                       ; preds = %if.end.21
  %17 = load i32, i32* %code, align 4
  %cmp24 = icmp uge i32 %17, 128
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.23
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

if.end.27:                                        ; preds = %if.then.23
  %19 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr28 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %19, i32 0, i32 2
  %20 = load i8*, i8** %Rdptr28, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr29, i8** %Rdptr28, align 8
  %call30 = call i32 @Get_Byte()
  store i32 %call30, i32* %code, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.27, %if.end.21
  %21 = load i32, i32* %code, align 4
  %cmp32 = icmp uge i32 %21, 48
  br i1 %cmp32, label %if.then.33, label %if.else.40

if.then.33:                                       ; preds = %if.end.31
  %22 = load i32, i32* %code, align 4
  %cmp34 = icmp uge i32 %22, 64
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.then.33
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

if.end.37:                                        ; preds = %if.then.33
  %24 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr38 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %24, i32 0, i32 2
  %25 = load i8*, i8** %Rdptr38, align 8
  %add.ptr39 = getelementptr inbounds i8, i8* %25, i64 9
  store i8* %add.ptr39, i8** %Rdptr38, align 8
  br label %if.end.51

if.else.40:                                       ; preds = %if.end.31
  %26 = load i32, i32* %code, align 4
  %cmp41 = icmp uge i32 %26, 32
  br i1 %cmp41, label %if.then.42, label %if.else.45

if.then.42:                                       ; preds = %if.else.40
  %27 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr43 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %27, i32 0, i32 2
  %28 = load i8*, i8** %Rdptr43, align 8
  %add.ptr44 = getelementptr inbounds i8, i8* %28, i64 4
  store i8* %add.ptr44, i8** %Rdptr43, align 8
  br label %if.end.50

if.else.45:                                       ; preds = %if.else.40
  %29 = load i32, i32* %code, align 4
  %cmp46 = icmp ne i32 %29, 15
  br i1 %cmp46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.else.45
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

if.end.49:                                        ; preds = %if.else.45
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.42
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.37
  br label %return

sw.bb.52:                                         ; preds = %while.end
  store i32 0, i32* %l, align 4
  br label %while.cond.53

while.cond.53:                                    ; preds = %while.body.55, %sw.bb.52
  %31 = load i32, i32* %l, align 4
  %cmp54 = icmp slt i32 %31, 2048
  br i1 %cmp54, label %while.body.55, label %while.end.68

while.body.55:                                    ; preds = %while.cond.53
  %32 = load i32, i32* %l, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %l, align 4
  %idxprom = sext i32 %32 to i64
  %33 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdbfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %33, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %34 = load i32, i32* %l, align 4
  %inc56 = add nsw i32 %34, 1
  store i32 %inc56, i32* %l, align 4
  %idxprom57 = sext i32 %34 to i64
  %35 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdbfr58 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %35, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr58, i32 0, i64 %idxprom57
  store i8 0, i8* %arrayidx59, align 1
  %36 = load i32, i32* %l, align 4
  %inc60 = add nsw i32 %36, 1
  store i32 %inc60, i32* %l, align 4
  %idxprom61 = sext i32 %36 to i64
  %37 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdbfr62 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %37, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr62, i32 0, i64 %idxprom61
  store i8 1, i8* %arrayidx63, align 1
  %38 = load i32, i32* %l, align 4
  %inc64 = add nsw i32 %38, 1
  store i32 %inc64, i32* %l, align 4
  %idxprom65 = sext i32 %38 to i64
  %39 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdbfr66 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %39, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr66, i32 0, i64 %idxprom65
  store i8 -73, i8* %arrayidx67, align 1
  br label %while.cond.53

while.end.68:                                     ; preds = %while.cond.53
  %40 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdbfr69 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %40, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr69, i32 0, i32 0
  %41 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr70 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %41, i32 0, i32 2
  store i8* %arraydecay, i8** %Rdptr70, align 8
  %42 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdbfr71 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %42, i32 0, i32 1
  %arraydecay72 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr71, i32 0, i32 0
  %add.ptr73 = getelementptr inbounds i8, i8* %arraydecay72, i64 2048
  %43 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdmax74 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %43, i32 0, i32 5
  store i8* %add.ptr73, i8** %Rdmax74, align 8
  br label %return

sw.default:                                       ; preds = %while.end
  %44 = load i32, i32* %code, align 4
  %cmp75 = icmp uge i32 %44, 443
  br i1 %cmp75, label %if.then.76, label %if.else.81

if.then.76:                                       ; preds = %sw.default
  %call77 = call i32 @Get_Word()
  store i32 %call77, i32* %code, align 4
  %45 = load i32, i32* %code, align 4
  %46 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr78 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %46, i32 0, i32 2
  %47 = load i8*, i8** %Rdptr78, align 8
  %idx.ext79 = zext i32 %45 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %47, i64 %idx.ext79
  store i8* %add.ptr80, i8** %Rdptr78, align 8
  br label %if.end.83

if.else.81:                                       ; preds = %sw.default
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = load i32, i32* %code, align 4
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), i32 %49)
  call void @exit(i32 1) #3
  unreachable

if.end.83:                                        ; preds = %if.then.76
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.83, %sw.bb
  br label %for.cond

return:                                           ; preds = %while.end.68, %if.end.51, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Get_Long() #0 {
entry:
  %i = alloca i32, align 4
  %call = call i32 @Get_Word()
  store i32 %call, i32* %i, align 4
  %0 = load i32, i32* %i, align 4
  %shl = shl i32 %0, 16
  %call1 = call i32 @Get_Word()
  %or = or i32 %shl, %call1
  ret i32 %or
}

declare i32 @Get_Byte() #1

declare i32 @Get_Word() #1

declare i32 @printf(i8*, ...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define void @Flush_Buffer32() #0 {
entry:
  %Incnt = alloca i32, align 4
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 4
  store i32 0, i32* %Bfr, align 4
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Incnt1 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i32 0, i32 6
  %2 = load i32, i32* %Incnt1, align 4
  store i32 %2, i32* %Incnt, align 4
  %3 = load i32, i32* %Incnt, align 4
  %sub = sub nsw i32 %3, 32
  store i32 %sub, i32* %Incnt, align 4
  %4 = load i32, i32* @System_Stream_Flag, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 2
  %6 = load i8*, i8** %Rdptr, align 8
  %7 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdmax = getelementptr inbounds %struct.layer_data, %struct.layer_data* %7, i32 0, i32 5
  %8 = load i8*, i8** %Rdmax, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 -4
  %cmp = icmp uge i8* %6, %add.ptr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %9 = load i32, i32* %Incnt, align 4
  %cmp2 = icmp sle i32 %9, 24
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i32 0, i32 2
  %11 = load i8*, i8** %Rdptr3, align 8
  %12 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdmax4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %12, i32 0, i32 5
  %13 = load i8*, i8** %Rdmax4, align 8
  %cmp5 = icmp uge i8* %11, %13
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %while.body
  call void @Next_Packet()
  br label %if.end

if.end:                                           ; preds = %if.then.6, %while.body
  %call = call i32 @Get_Byte()
  %14 = load i32, i32* %Incnt, align 4
  %sub7 = sub nsw i32 24, %14
  %shl = shl i32 %call, %sub7
  %15 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bfr8 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %15, i32 0, i32 4
  %16 = load i32, i32* %Bfr8, align 4
  %or = or i32 %16, %shl
  store i32 %or, i32* %Bfr8, align 4
  %17 = load i32, i32* %Incnt, align 4
  %add = add nsw i32 %17, 8
  store i32 %add, i32* %Incnt, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.24

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %while.cond.9

while.cond.9:                                     ; preds = %if.end.16, %if.else
  %18 = load i32, i32* %Incnt, align 4
  %cmp10 = icmp sle i32 %18, 24
  br i1 %cmp10, label %while.body.11, label %while.end.23

while.body.11:                                    ; preds = %while.cond.9
  %19 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr12 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %19, i32 0, i32 2
  %20 = load i8*, i8** %Rdptr12, align 8
  %21 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdbfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %21, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr, i32 0, i32 0
  %add.ptr13 = getelementptr inbounds i8, i8* %arraydecay, i64 2048
  %cmp14 = icmp uge i8* %20, %add.ptr13
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %while.body.11
  call void @Fill_Buffer()
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %while.body.11
  %22 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Rdptr17 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %22, i32 0, i32 2
  %23 = load i8*, i8** %Rdptr17, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %Rdptr17, align 8
  %24 = load i8, i8* %23, align 1
  %conv = zext i8 %24 to i32
  %25 = load i32, i32* %Incnt, align 4
  %sub18 = sub nsw i32 24, %25
  %shl19 = shl i32 %conv, %sub18
  %26 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bfr20 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %26, i32 0, i32 4
  %27 = load i32, i32* %Bfr20, align 4
  %or21 = or i32 %27, %shl19
  store i32 %or21, i32* %Bfr20, align 4
  %28 = load i32, i32* %Incnt, align 4
  %add22 = add nsw i32 %28, 8
  store i32 %add22, i32* %Incnt, align 4
  br label %while.cond.9

while.end.23:                                     ; preds = %while.cond.9
  br label %if.end.24

if.end.24:                                        ; preds = %while.end.23, %while.end
  %29 = load i32, i32* %Incnt, align 4
  %30 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Incnt25 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %30, i32 0, i32 6
  store i32 %29, i32* %Incnt25, align 4
  ret void
}

declare void @Fill_Buffer() #1

; Function Attrs: nounwind uwtable
define i32 @Get_Bits32() #0 {
entry:
  %l = alloca i32, align 4
  %call = call i32 @Show_Bits(i32 32)
  store i32 %call, i32* %l, align 4
  call void @Flush_Buffer32()
  %0 = load i32, i32* %l, align 4
  ret i32 %0
}

declare i32 @Show_Bits(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
