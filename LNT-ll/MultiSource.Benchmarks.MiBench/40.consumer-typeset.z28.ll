; ModuleID = './MultiSource.Benchmarks.MiBench/40.consumer-typeset.z28.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@fp = internal global %struct._IO_FILE* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"-e argument appears twice in command line\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot open error file %s\00", align 1
@error_seen = internal global i32 0, align 4
@block_top = internal global i32 0, align 4
@print_block = internal global [20 x i32] zeroinitializer, align 16
@mess_top = internal global i32 0, align 4
@start_block = internal global [20 x i32] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [34 x i8] c"too many levels of error messages\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"LeaveErrorBlock: no matching EnterErrorBlock!\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"LeaveErrorBlock: commit!\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@AltErrorFormat = external global i32, align 4
@message = internal global [20 x [512 x i8]] zeroinitializer, align 16
@message_fnum = internal global [20 x i32] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [34 x i8] c"CheckErrorBlocks: block_top != 0!\00", align 1
@MsgCat = external global i8*, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"%s internal error: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"  %6s internal error: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"%s: fatal error: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"  %6s: fatal error: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"  %6s: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"too many error messages\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Error: invalid error type\00", align 1
@PrintFileBanner.CurrentFileNum = internal global i32 -1, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"lout%s:\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @ErrorInit(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %cmp = icmp ne %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 28, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %str.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** @fp, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5 = load i8*, i8** %str.addr, align 8
  %call4 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 28, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 1, %struct.FILE_POS* %4, i8* %5)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @Error(i32 %set_num, i32 %msg_num, i8* %str, i32 %etype, %struct.FILE_POS* %pos, ...) #0 {
entry:
  %set_num.addr = alloca i32, align 4
  %msg_num.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %etype.addr = alloca i32, align 4
  %pos.addr = alloca %struct.FILE_POS*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %val = alloca [512 x i8], align 16
  store i32 %set_num, i32* %set_num.addr, align 4
  store i32 %msg_num, i32* %msg_num.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %etype, i32* %etype.addr, align 4
  store %struct.FILE_POS* %pos, %struct.FILE_POS** %pos.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [512 x i8], [512 x i8]* %val, i32 0, i32 0
  %0 = load i8*, i8** @MsgCat, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** @MsgCat, align 8
  %2 = load i32, i32* %set_num.addr, align 4
  %3 = load i32, i32* %msg_num.addr, align 4
  %4 = load i8*, i8** %str.addr, align 8
  %call = call i8* @catgets(i8* %1, i32 %2, i32 %3, i8* %4) #2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i8*, i8** %str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %5, %cond.false ]
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call4 = call i32 @vsprintf(i8* %arraydecay2, i8* %cond, %struct.__va_list_tag* %arraydecay3) #2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %7, %struct._IO_FILE** @fp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %8 = load i32, i32* %etype.addr, align 4
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.27
    i32 2, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb
  %9 = load i32, i32* @block_top, align 4
  %cmp5 = icmp sgt i32 %9, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @LeaveErrorBlock(i32 1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i32, i32* @AltErrorFormat, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %while.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %12 = load i8*, i8** @MsgCat, align 8
  %tobool8 = icmp ne i8* %12, null
  br i1 %tobool8, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %if.then.7
  %13 = load i8*, i8** @MsgCat, align 8
  %call10 = call i8* @catgets(i8* %13, i32 28, i32 7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #2
  br label %cond.end.12

cond.false.11:                                    ; preds = %if.then.7
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.9
  %cond13 = phi i8* [ %call10, %cond.true.9 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), %cond.false.11 ]
  %14 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call14 = call i8* @EchoAltFilePos(%struct.FILE_POS* %14)
  %arraydecay15 = getelementptr inbounds [512 x i8], [512 x i8]* %val, i32 0, i32 0
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* %cond13, i8* %call14, i8* %arraydecay15)
  br label %if.end.26

if.else:                                          ; preds = %while.end
  %15 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %15, i32 0, i32 2
  %16 = load i16, i16* %ofile_num, align 2
  %conv = zext i16 %16 to i32
  call void @PrintFileBanner(i32 %conv)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %18 = load i8*, i8** @MsgCat, align 8
  %tobool17 = icmp ne i8* %18, null
  br i1 %tobool17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %if.else
  %19 = load i8*, i8** @MsgCat, align 8
  %call19 = call i8* @catgets(i8* %19, i32 28, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #2
  br label %cond.end.21

cond.false.20:                                    ; preds = %if.else
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.18
  %cond22 = phi i8* [ %call19, %cond.true.18 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), %cond.false.20 ]
  %20 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call23 = call i8* @EchoFileLine(%struct.FILE_POS* %20)
  %arraydecay24 = getelementptr inbounds [512 x i8], [512 x i8]* %val, i32 0, i32 0
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* %cond22, i8* %call23, i8* %arraydecay24)
  br label %if.end.26

if.end.26:                                        ; preds = %cond.end.21, %cond.end.12
  call void @exit(i32 1) #5
  unreachable

sw.bb.27:                                         ; preds = %if.end
  br label %while.cond.28

while.cond.28:                                    ; preds = %while.body.31, %sw.bb.27
  %21 = load i32, i32* @block_top, align 4
  %cmp29 = icmp sgt i32 %21, 0
  br i1 %cmp29, label %while.body.31, label %while.end.32

while.body.31:                                    ; preds = %while.cond.28
  call void @LeaveErrorBlock(i32 1)
  br label %while.cond.28

while.end.32:                                     ; preds = %while.cond.28
  %22 = load i32, i32* @AltErrorFormat, align 4
  %tobool33 = icmp ne i32 %22, 0
  br i1 %tobool33, label %if.then.34, label %if.else.44

if.then.34:                                       ; preds = %while.end.32
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %24 = load i8*, i8** @MsgCat, align 8
  %tobool35 = icmp ne i8* %24, null
  br i1 %tobool35, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %if.then.34
  %25 = load i8*, i8** @MsgCat, align 8
  %call37 = call i8* @catgets(i8* %25, i32 28, i32 8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0)) #2
  br label %cond.end.39

cond.false.38:                                    ; preds = %if.then.34
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.36
  %cond40 = phi i8* [ %call37, %cond.true.36 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), %cond.false.38 ]
  %26 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call41 = call i8* @EchoAltFilePos(%struct.FILE_POS* %26)
  %arraydecay42 = getelementptr inbounds [512 x i8], [512 x i8]* %val, i32 0, i32 0
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* %cond40, i8* %call41, i8* %arraydecay42)
  br label %if.end.56

if.else.44:                                       ; preds = %while.end.32
  %27 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %ofile_num45 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %27, i32 0, i32 2
  %28 = load i16, i16* %ofile_num45, align 2
  %conv46 = zext i16 %28 to i32
  call void @PrintFileBanner(i32 %conv46)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %30 = load i8*, i8** @MsgCat, align 8
  %tobool47 = icmp ne i8* %30, null
  br i1 %tobool47, label %cond.true.48, label %cond.false.50

cond.true.48:                                     ; preds = %if.else.44
  %31 = load i8*, i8** @MsgCat, align 8
  %call49 = call i8* @catgets(i8* %31, i32 28, i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0)) #2
  br label %cond.end.51

cond.false.50:                                    ; preds = %if.else.44
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.50, %cond.true.48
  %cond52 = phi i8* [ %call49, %cond.true.48 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), %cond.false.50 ]
  %32 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call53 = call i8* @EchoFileLine(%struct.FILE_POS* %32)
  %arraydecay54 = getelementptr inbounds [512 x i8], [512 x i8]* %val, i32 0, i32 0
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* %cond52, i8* %call53, i8* %arraydecay54)
  br label %if.end.56

if.end.56:                                        ; preds = %cond.end.51, %cond.end.39
  call void @exit(i32 1) #5
  unreachable

sw.bb.57:                                         ; preds = %if.end
  %33 = load i32, i32* @block_top, align 4
  %cmp58 = icmp eq i32 %33, 0
  br i1 %cmp58, label %if.then.61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.57
  %34 = load i32, i32* @block_top, align 4
  %sub = sub nsw i32 %34, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @print_block, i32 0, i64 %idxprom
  %35 = load i32, i32* %arrayidx, align 4
  %tobool60 = icmp ne i32 %35, 0
  br i1 %tobool60, label %if.then.61, label %if.else.74

if.then.61:                                       ; preds = %lor.lhs.false, %sw.bb.57
  %36 = load i32, i32* @AltErrorFormat, align 4
  %tobool62 = icmp ne i32 %36, 0
  br i1 %tobool62, label %if.then.63, label %if.else.67

if.then.63:                                       ; preds = %if.then.61
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %38 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call64 = call i8* @EchoAltFilePos(%struct.FILE_POS* %38)
  %arraydecay65 = getelementptr inbounds [512 x i8], [512 x i8]* %val, i32 0, i32 0
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* %call64, i8* %arraydecay65)
  br label %if.end.73

if.else.67:                                       ; preds = %if.then.61
  %39 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %ofile_num68 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %39, i32 0, i32 2
  %40 = load i16, i16* %ofile_num68, align 2
  %conv69 = zext i16 %40 to i32
  call void @PrintFileBanner(i32 %conv69)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %42 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call70 = call i8* @EchoFileLine(%struct.FILE_POS* %42)
  %arraydecay71 = getelementptr inbounds [512 x i8], [512 x i8]* %val, i32 0, i32 0
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* %call70, i8* %arraydecay71)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.67, %if.then.63
  br label %if.end.102

if.else.74:                                       ; preds = %lor.lhs.false
  %43 = load i32, i32* @mess_top, align 4
  %cmp75 = icmp slt i32 %43, 20
  br i1 %cmp75, label %if.then.77, label %if.else.99

if.then.77:                                       ; preds = %if.else.74
  %44 = load i32, i32* @AltErrorFormat, align 4
  %tobool78 = icmp ne i32 %44, 0
  br i1 %tobool78, label %if.then.79, label %if.else.86

if.then.79:                                       ; preds = %if.then.77
  %45 = load i32, i32* @mess_top, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* @mess_top, align 4
  %idxprom80 = sext i32 %45 to i64
  %arrayidx81 = getelementptr inbounds [20 x [512 x i8]], [20 x [512 x i8]]* @message, i32 0, i64 %idxprom80
  %arraydecay82 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx81, i32 0, i32 0
  %46 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call83 = call i8* @EchoAltFilePos(%struct.FILE_POS* %46)
  %arraydecay84 = getelementptr inbounds [512 x i8], [512 x i8]* %val, i32 0, i32 0
  %call85 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* %call83, i8* %arraydecay84) #2
  br label %if.end.98

if.else.86:                                       ; preds = %if.then.77
  %47 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %ofile_num87 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %47, i32 0, i32 2
  %48 = load i16, i16* %ofile_num87, align 2
  %conv88 = zext i16 %48 to i32
  %49 = load i32, i32* @mess_top, align 4
  %idxprom89 = sext i32 %49 to i64
  %arrayidx90 = getelementptr inbounds [20 x i32], [20 x i32]* @message_fnum, i32 0, i64 %idxprom89
  store i32 %conv88, i32* %arrayidx90, align 4
  %50 = load i32, i32* @mess_top, align 4
  %inc91 = add nsw i32 %50, 1
  store i32 %inc91, i32* @mess_top, align 4
  %idxprom92 = sext i32 %50 to i64
  %arrayidx93 = getelementptr inbounds [20 x [512 x i8]], [20 x [512 x i8]]* @message, i32 0, i64 %idxprom92
  %arraydecay94 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx93, i32 0, i32 0
  %51 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call95 = call i8* @EchoFileLine(%struct.FILE_POS* %51)
  %arraydecay96 = getelementptr inbounds [512 x i8], [512 x i8]* %val, i32 0, i32 0
  %call97 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* %call95, i8* %arraydecay96) #2
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.86, %if.then.79
  br label %if.end.101

if.else.99:                                       ; preds = %if.else.74
  %52 = load %struct.FILE_POS*, %struct.FILE_POS** %pos.addr, align 8
  %call100 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 28, i32 6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %52)
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.99, %if.end.98
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.end.73
  store i32 1, i32* @error_seen, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %53 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call103 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.102
  %arraydecay104 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay104105 = bitcast %struct.__va_list_tag* %arraydecay104 to i8*
  call void @llvm.va_end(i8* %arraydecay104105)
  ret i8* null
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @ErrorSeen() #0 {
entry:
  %0 = load i32, i32* @error_seen, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define void @EnterErrorBlock(i32 %ok_to_print) #0 {
entry:
  %ok_to_print.addr = alloca i32, align 4
  store i32 %ok_to_print, i32* %ok_to_print.addr, align 4
  %0 = load i32, i32* @block_top, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ok_to_print.addr, align 4
  %2 = load i32, i32* @block_top, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @print_block, i32 0, i64 %idxprom
  store i32 %1, i32* %arrayidx, align 4
  %3 = load i32, i32* @mess_top, align 4
  %4 = load i32, i32* @block_top, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [20 x i32], [20 x i32]* @start_block, i32 0, i64 %idxprom1
  store i32 %3, i32* %arrayidx2, align 4
  %5 = load i32, i32* @block_top, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @block_top, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 28, i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @LeaveErrorBlock(i32 %commit) #0 {
entry:
  %commit.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %commit, i32* %commit.addr, align 4
  %0 = load i32, i32* @block_top, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %commit.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* @block_top, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @print_block, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %lor.lhs.false
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %lor.lhs.false, %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %cmp5 = icmp eq %struct._IO_FILE* %6, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %7, %struct._IO_FILE** @fp, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %8 = load i32, i32* %commit.addr, align 4
  %tobool8 = icmp ne i32 %8, 0
  br i1 %tobool8, label %if.then.9, label %if.end.26

if.then.9:                                        ; preds = %if.end.7
  %9 = load i32, i32* @block_top, align 4
  %sub10 = sub nsw i32 %9, 1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds [20 x i32], [20 x i32]* @start_block, i32 0, i64 %idxprom11
  %10 = load i32, i32* %arrayidx12, align 4
  store i32 %10, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* @mess_top, align 4
  %cmp13 = icmp slt i32 %11, %12
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* @AltErrorFormat, align 4
  %tobool14 = icmp ne i32 %13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [20 x [512 x i8]], [20 x [512 x i8]]* @message, i32 0, i64 %idxprom16
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx17, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %call18 = call i32 @fputs(i8* %arraydecay, %struct._IO_FILE* %15)
  br label %if.end.25

if.else:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [20 x i32], [20 x i32]* @message_fnum, i32 0, i64 %idxprom19
  %17 = load i32, i32* %arrayidx20, align 4
  call void @PrintFileBanner(i32 %17)
  %18 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %18 to i64
  %arrayidx22 = getelementptr inbounds [20 x [512 x i8]], [20 x [512 x i8]]* @message, i32 0, i64 %idxprom21
  %arraydecay23 = getelementptr inbounds [512 x i8], [512 x i8]* %arrayidx22, i32 0, i32 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %call24 = call i32 @fputs(i8* %arraydecay23, %struct._IO_FILE* %19)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.26

if.end.26:                                        ; preds = %for.end, %if.end.7
  %21 = load i32, i32* @block_top, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* @block_top, align 4
  %22 = load i32, i32* @block_top, align 4
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [20 x i32], [20 x i32]* @start_block, i32 0, i64 %idxprom27
  %23 = load i32, i32* %arrayidx28, align 4
  store i32 %23, i32* @mess_top, align 4
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @PrintFileBanner(i32 %fnum) #0 {
entry:
  %fnum.addr = alloca i32, align 4
  store i32 %fnum, i32* %fnum.addr, align 4
  %0 = load i32, i32* %fnum.addr, align 4
  %1 = load i32, i32* @PrintFileBanner.CurrentFileNum, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %3 = load i32, i32* %fnum.addr, align 4
  %conv = trunc i32 %3 to i16
  %call = call i8* @EchoFileSource(i16 zeroext %conv)
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* %call)
  %4 = load i32, i32* %fnum.addr, align 4
  store i32 %4, i32* @PrintFileBanner.CurrentFileNum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @CheckErrorBlocks() #0 {
entry:
  %0 = load i32, i32* @block_top, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare i32 @vsprintf(i8*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare i8* @catgets(i8*, i32, i32, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @EchoAltFilePos(%struct.FILE_POS*) #1

declare i8* @EchoFileLine(%struct.FILE_POS*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare i8* @EchoFileSource(i16 zeroext) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
