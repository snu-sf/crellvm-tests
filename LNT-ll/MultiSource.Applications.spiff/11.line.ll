; ModuleID = './MultiSource.Applications.spiff/11.line.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@L_init_file.buf = internal global [1026 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@Z_err_buf = external global [0 x i8], align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Cannot open file %s.\0A\00", align 1
@_L_brlm = common global i32 0, align 4
@_L_arlm = common global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"fatal error -- got 0 length line %d in file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"got fatally long line %d in file %s length is %d, must be a bug\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"line %d too long in file %s, newline added after %d characters\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"didn't find a newline at end of line %d in file %s, added one\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"warning -- ran out of space reading %s, truncated to %d lines\0A\00", align 1
@_L_bclm = common global i32 0, align 4
@_L_aclm = common global i32 0, align 4
@_L_btlm = common global i32 0, align 4
@_L_atlm = common global i32 0, align 4
@_L_al = common global [10000 x i8*] zeroinitializer, align 16
@_L_bl = common global [10000 x i8*] zeroinitializer, align 16
@_L_ai = common global [10000 x i32] zeroinitializer, align 16
@_L_bi = common global [10000 x i32] zeroinitializer, align 16
@_L_ac = common global [10000 x i32] zeroinitializer, align 16
@_L_bc = common global [10000 x i32] zeroinitializer, align 16
@_L_aclindex = common global [10000 x i32] zeroinitializer, align 16
@_L_bclindex = common global [10000 x i32] zeroinitializer, align 16
@_L_atlindex = common global [10000 x i32] zeroinitializer, align 16
@_L_btlindex = common global [10000 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @L_init_file(i32 %fnumber, i8* %fname) #0 {
entry:
  %fnumber.addr = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %ret_val = alloca i32, align 4
  %tmplen = alloca i32, align 4
  store i32 %fnumber, i32* %fnumber.addr, align 4
  store i8* %fname, i8** %fname.addr, align 8
  store i32 1, i32* %ret_val, align 4
  %0 = load i8*, i8** %fname.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %fname.addr, align 8
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i8* %1) #4
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %fnumber.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  store i32 0, i32* @_L_brlm, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  store i32 0, i32* @_L_arlm, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ 0, %cond.false ]
  br label %while.cond

while.cond:                                       ; preds = %if.end.76, %cond.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i8* @fgets(i8* getelementptr inbounds ([1026 x i8], [1026 x i8]* @L_init_file.buf, i32 0, i32 0), i32 1025, %struct._IO_FILE* %3)
  %cmp3 = icmp ne i8* %call2, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call i64 @strlen(i8* getelementptr inbounds ([1026 x i8], [1026 x i8]* @L_init_file.buf, i32 0, i32 0)) #5
  %conv = trunc i64 %call4 to i32
  store i32 %conv, i32* %tmplen, align 4
  %4 = load i32, i32* %tmplen, align 4
  %cmp5 = icmp sle i32 %4, 0
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %while.body
  %5 = load i32, i32* %fnumber.addr, align 4
  %tobool8 = icmp ne i32 %5, 0
  br i1 %tobool8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %if.then.7
  %6 = load i32, i32* @_L_brlm, align 4
  br label %cond.end.11

cond.false.10:                                    ; preds = %if.then.7
  %7 = load i32, i32* @_L_arlm, align 4
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.9
  %cond12 = phi i32 [ %6, %cond.true.9 ], [ %7, %cond.false.10 ]
  %add = add nsw i32 %cond12, 1
  %8 = load i8*, i8** %fname.addr, align 8
  %call13 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0), i32 %add, i8* %8) #4
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0))
  br label %if.end.25

if.else:                                          ; preds = %while.body
  %9 = load i32, i32* %tmplen, align 4
  %cmp14 = icmp sgt i32 %9, 1024
  br i1 %cmp14, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %if.else
  %10 = load i32, i32* %fnumber.addr, align 4
  %tobool17 = icmp ne i32 %10, 0
  br i1 %tobool17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %if.then.16
  %11 = load i32, i32* @_L_brlm, align 4
  br label %cond.end.20

cond.false.19:                                    ; preds = %if.then.16
  %12 = load i32, i32* @_L_arlm, align 4
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.18
  %cond21 = phi i32 [ %11, %cond.true.18 ], [ %12, %cond.false.19 ]
  %add22 = add nsw i32 %cond21, 1
  %13 = load i8*, i8** %fname.addr, align 8
  %14 = load i32, i32* %tmplen, align 4
  %call23 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i32 %add22, i8* %13, i32 %14) #4
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %cond.end.20, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %cond.end.11
  %15 = load i32, i32* %tmplen, align 4
  %sub = sub nsw i32 %15, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [1026 x i8], [1026 x i8]* @L_init_file.buf, i32 0, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1
  %conv26 = sext i8 %16 to i32
  %cmp27 = icmp ne i32 10, %conv26
  br i1 %cmp27, label %if.then.29, label %if.end.54

if.then.29:                                       ; preds = %if.end.25
  %17 = load i32, i32* %tmplen, align 4
  %cmp30 = icmp eq i32 %17, 1024
  br i1 %cmp30, label %if.then.32, label %if.else.40

if.then.32:                                       ; preds = %if.then.29
  %18 = load i32, i32* %fnumber.addr, align 4
  %tobool33 = icmp ne i32 %18, 0
  br i1 %tobool33, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %if.then.32
  %19 = load i32, i32* @_L_brlm, align 4
  br label %cond.end.36

cond.false.35:                                    ; preds = %if.then.32
  %20 = load i32, i32* @_L_arlm, align 4
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.34
  %cond37 = phi i32 [ %19, %cond.true.34 ], [ %20, %cond.false.35 ]
  %add38 = add nsw i32 %cond37, 1
  %21 = load i8*, i8** %fname.addr, align 8
  %call39 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i32 0, i32 0), i32 %add38, i8* %21, i32 1024) #4
  call void (i8*, ...) bitcast (void (...)* @Z_complain to void (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0))
  br label %if.end.48

if.else.40:                                       ; preds = %if.then.29
  %22 = load i32, i32* %fnumber.addr, align 4
  %tobool41 = icmp ne i32 %22, 0
  br i1 %tobool41, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %if.else.40
  %23 = load i32, i32* @_L_brlm, align 4
  br label %cond.end.44

cond.false.43:                                    ; preds = %if.else.40
  %24 = load i32, i32* @_L_arlm, align 4
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.42
  %cond45 = phi i32 [ %23, %cond.true.42 ], [ %24, %cond.false.43 ]
  %add46 = add nsw i32 %cond45, 1
  %25 = load i8*, i8** %fname.addr, align 8
  %call47 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i32 0, i32 0), i32 %add46, i8* %25) #4
  call void (i8*, ...) bitcast (void (...)* @Z_complain to void (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0))
  br label %if.end.48

if.end.48:                                        ; preds = %cond.end.44, %cond.end.36
  %26 = load i32, i32* %tmplen, align 4
  %idxprom49 = sext i32 %26 to i64
  %arrayidx50 = getelementptr inbounds [1026 x i8], [1026 x i8]* @L_init_file.buf, i32 0, i64 %idxprom49
  store i8 10, i8* %arrayidx50, align 1
  %27 = load i32, i32* %tmplen, align 4
  %add51 = add nsw i32 %27, 1
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds [1026 x i8], [1026 x i8]* @L_init_file.buf, i32 0, i64 %idxprom52
  store i8 0, i8* %arrayidx53, align 1
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.48, %if.end.25
  %28 = load i32, i32* %fnumber.addr, align 4
  %29 = load i32, i32* %fnumber.addr, align 4
  %tobool55 = icmp ne i32 %29, 0
  br i1 %tobool55, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %if.end.54
  %30 = load i32, i32* @_L_brlm, align 4
  br label %cond.end.58

cond.false.57:                                    ; preds = %if.end.54
  %31 = load i32, i32* @_L_arlm, align 4
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.56
  %cond59 = phi i32 [ %30, %cond.true.56 ], [ %31, %cond.false.57 ]
  call void @_L_setrline(i32 %28, i32 %cond59, i8* getelementptr inbounds ([1026 x i8], [1026 x i8]* @L_init_file.buf, i32 0, i32 0))
  %32 = load i32, i32* %fnumber.addr, align 4
  %tobool60 = icmp ne i32 %32, 0
  br i1 %tobool60, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.end.58
  %33 = load i32, i32* @_L_brlm, align 4
  br label %cond.end.63

cond.false.62:                                    ; preds = %cond.end.58
  %34 = load i32, i32* @_L_arlm, align 4
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.61
  %cond64 = phi i32 [ %33, %cond.true.61 ], [ %34, %cond.false.62 ]
  %cmp65 = icmp sge i32 %cond64, 9999
  br i1 %cmp65, label %if.then.67, label %if.else.69

if.then.67:                                       ; preds = %cond.end.63
  %35 = load i8*, i8** %fname.addr, align 8
  %call68 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i32 0, i32 0), i8* %35, i32 10000) #4
  call void (i8*, ...) bitcast (void (...)* @Z_complain to void (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0))
  store i32 0, i32* %ret_val, align 4
  br label %while.end

if.else.69:                                       ; preds = %cond.end.63
  %36 = load i32, i32* %fnumber.addr, align 4
  %tobool70 = icmp ne i32 %36, 0
  br i1 %tobool70, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %if.else.69
  %37 = load i32, i32* @_L_brlm, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* @_L_brlm, align 4
  br label %cond.end.74

cond.false.72:                                    ; preds = %if.else.69
  %38 = load i32, i32* @_L_arlm, align 4
  %inc73 = add nsw i32 %38, 1
  store i32 %inc73, i32* @_L_arlm, align 4
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.72, %cond.true.71
  %cond75 = phi i32 [ %37, %cond.true.71 ], [ %38, %cond.false.72 ]
  br label %if.end.76

if.end.76:                                        ; preds = %cond.end.74
  br label %while.cond

while.end:                                        ; preds = %if.then.67, %while.cond
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call77 = call i32 @fclose(%struct._IO_FILE* %39)
  %40 = load i32, i32* %fnumber.addr, align 4
  %tobool78 = icmp ne i32 %40, 0
  br i1 %tobool78, label %cond.true.79, label %cond.false.80

cond.true.79:                                     ; preds = %while.end
  store i32 0, i32* @_L_bclm, align 4
  br label %cond.end.81

cond.false.80:                                    ; preds = %while.end
  store i32 0, i32* @_L_aclm, align 4
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.80, %cond.true.79
  %cond82 = phi i32 [ 0, %cond.true.79 ], [ 0, %cond.false.80 ]
  %41 = load i32, i32* %fnumber.addr, align 4
  %tobool83 = icmp ne i32 %41, 0
  br i1 %tobool83, label %cond.true.84, label %cond.false.85

cond.true.84:                                     ; preds = %cond.end.81
  store i32 0, i32* @_L_btlm, align 4
  br label %cond.end.86

cond.false.85:                                    ; preds = %cond.end.81
  store i32 0, i32* @_L_atlm, align 4
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.85, %cond.true.84
  %cond87 = phi i32 [ 0, %cond.true.84 ], [ 0, %cond.false.85 ]
  %42 = load i32, i32* %ret_val, align 4
  ret i32 %42
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare void @Z_fatal(...) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @Z_complain(...) #1

; Function Attrs: nounwind uwtable
define internal void @_L_setrline(i32 %file, i32 %X, i8* %str) #0 {
entry:
  %file.addr = alloca i32, align 4
  %X.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  store i32 %file, i32* %file.addr, align 4
  store i32 %X, i32* %X.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i32, i32* %file.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %X.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @_L_bl, i32 0, i64 %idxprom
  %2 = load i8*, i8** %str.addr, align 8
  call void (i8**, i8*, ...) bitcast (void (...)* @S_savestr to void (i8**, i8*, ...)*)(i8** %arrayidx, i8* %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %X.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @_L_al, i32 0, i64 %idxprom1
  %4 = load i8*, i8** %str.addr, align 8
  call void (i8**, i8*, ...) bitcast (void (...)* @S_savestr to void (i8**, i8*, ...)*)(i8** %arrayidx2, i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @S_savestr(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
