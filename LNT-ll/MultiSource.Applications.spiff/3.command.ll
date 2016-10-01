; ModuleID = './MultiSource.Applications.spiff/3.command.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_C_nextcmd = internal global i32 0, align 4
@_C_cmds = internal global [100 x i8*] zeroinitializer, align 16
@_C_cmdword = internal global [20 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"command word is too long\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tol\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"nestcom\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"resetcomments\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"resetliterals\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"beginchar\00", align 1
@_W_bolchar = external global i8, align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"endchar\00", align 1
@_W_eolchar = external global i8, align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"addalpha\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"rem\00", align 1
@Z_err_buf = external global [0 x i8], align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"don't understand command %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @C_addcmd(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i32, i32* @_C_nextcmd, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @_C_nextcmd, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x i8*], [100 x i8*]* @_C_cmds, i32 0, i64 %idxprom
  %1 = load i8*, i8** %str.addr, align 8
  call void (i8**, i8*, ...) bitcast (void (...)* @S_savestr to void (i8**, i8*, ...)*)(i8** %arrayidx, i8* %1)
  ret void
}

declare void @S_savestr(...) #1

; Function Attrs: nounwind uwtable
define void @C_docmds() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @_C_nextcmd, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x i8*], [100 x i8*]* @_C_cmds, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  call void @_C_do_a_cmd(i8* %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_C_do_a_cmd(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %beginning = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %beginning, align 8
  call void (i8**, ...) bitcast (void (...)* @S_skipspace to void (i8**, ...)*)(i8** %str.addr)
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** %str.addr)
  %2 = load i8*, i8** %str.addr, align 8
  %call1 = call i64 @strlen(i8* %2) #4
  %cmp = icmp uge i64 %call1, 20
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %3 = load i8*, i8** %str.addr, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_C_cmdword, i32 0, i32 0), i8* %3)
  br label %if.end.71

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %str.addr, align 8
  %call3 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0))
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else.6, label %if.then.5

if.then.5:                                        ; preds = %if.else
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** %str.addr)
  %5 = load i8*, i8** %str.addr, align 8
  call void (i8*, ...) bitcast (void (...)* @T_tolline to void (i8*, ...)*)(i8* %5)
  br label %if.end.70

if.else.6:                                        ; preds = %if.else
  %6 = load i8*, i8** %str.addr, align 8
  %call7 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.else.14, label %if.then.9

if.then.9:                                        ; preds = %if.else.6
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** %str.addr)
  %7 = load i8*, i8** %str.addr, align 8
  %call10 = call i64 @strlen(i8* %7) #4
  %cmp11 = icmp uge i64 %call10, 20
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.9
  %8 = load i8*, i8** %str.addr, align 8
  call void (i8*, i32, ...) bitcast (void (...)* @W_addcom to void (i8*, i32, ...)*)(i8* %8, i32 0)
  br label %if.end.69

if.else.14:                                       ; preds = %if.else.6
  %9 = load i8*, i8** %str.addr, align 8
  %call15 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0))
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.else.22, label %if.then.17

if.then.17:                                       ; preds = %if.else.14
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** %str.addr)
  %10 = load i8*, i8** %str.addr, align 8
  %call18 = call i64 @strlen(i8* %10) #4
  %cmp19 = icmp uge i64 %call18, 20
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.17
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.17
  %11 = load i8*, i8** %str.addr, align 8
  call void (i8*, i32, ...) bitcast (void (...)* @W_addcom to void (i8*, i32, ...)*)(i8* %11, i32 1)
  br label %if.end.68

if.else.22:                                       ; preds = %if.else.14
  %12 = load i8*, i8** %str.addr, align 8
  %call23 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0))
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.else.30, label %if.then.25

if.then.25:                                       ; preds = %if.else.22
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** %str.addr)
  %13 = load i8*, i8** %str.addr, align 8
  %call26 = call i64 @strlen(i8* %13) #4
  %cmp27 = icmp uge i64 %call26, 20
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.25
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.then.25
  %14 = load i8*, i8** %str.addr, align 8
  call void (i8*, ...) bitcast (void (...)* @W_addlit to void (i8*, ...)*)(i8* %14)
  br label %if.end.67

if.else.30:                                       ; preds = %if.else.22
  %15 = load i8*, i8** %str.addr, align 8
  %call31 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.else.34, label %if.then.33

if.then.33:                                       ; preds = %if.else.30
  call void (...) @W_clearcoms()
  br label %if.end.66

if.else.34:                                       ; preds = %if.else.30
  %16 = load i8*, i8** %str.addr, align 8
  %call35 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.else.38, label %if.then.37

if.then.37:                                       ; preds = %if.else.34
  call void (...) @W_clearlits()
  br label %if.end.65

if.else.38:                                       ; preds = %if.else.34
  %17 = load i8*, i8** %str.addr, align 8
  %call39 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.else.42, label %if.then.41

if.then.41:                                       ; preds = %if.else.38
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** %str.addr)
  %18 = load i8*, i8** %str.addr, align 8
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* @_W_bolchar, align 1
  br label %if.end.64

if.else.42:                                       ; preds = %if.else.38
  %20 = load i8*, i8** %str.addr, align 8
  %call43 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0))
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.else.46, label %if.then.45

if.then.45:                                       ; preds = %if.else.42
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** %str.addr)
  %21 = load i8*, i8** %str.addr, align 8
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* @_W_eolchar, align 1
  br label %if.end.63

if.else.46:                                       ; preds = %if.else.42
  %23 = load i8*, i8** %str.addr, align 8
  %call47 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0))
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %if.else.46
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** %str.addr)
  %24 = load i8*, i8** %str.addr, align 8
  call void (i8*, ...) bitcast (void (...)* @P_addalpha to void (i8*, ...)*)(i8* %24)
  br label %if.end.62

if.else.50:                                       ; preds = %if.else.46
  %25 = load i8*, i8** %str.addr, align 8
  %call51 = call i64 @strlen(i8* %25) #4
  %cmp52 = icmp eq i64 0, %call51
  br i1 %cmp52, label %if.then.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.50
  %26 = load i8*, i8** %str.addr, align 8
  %call53 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %lor.lhs.false.55, label %if.then.58

lor.lhs.false.55:                                 ; preds = %lor.lhs.false
  %27 = load i8*, i8** %str.addr, align 8
  %28 = load i8, i8* %27, align 1
  %conv = sext i8 %28 to i32
  %cmp56 = icmp eq i32 35, %conv
  br i1 %cmp56, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %lor.lhs.false.55, %lor.lhs.false, %if.else.50
  br label %if.end.61

if.else.59:                                       ; preds = %lor.lhs.false.55
  %29 = load i8*, i8** %beginning, align 8
  %call60 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0), i8* %29) #5
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0))
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.58
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.49
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.45
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.41
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.37
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.33
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.29
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.21
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.13
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.5
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @C_clear_cmd() #0 {
entry:
  store i8 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_C_cmdword, i32 0, i64 0), align 1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @C_is_cmd(i8* %in_line) #0 {
entry:
  %retval = alloca i32, align 4
  %in_line.addr = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  store i8* %in_line, i8** %in_line.addr, align 8
  %0 = load i8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_C_cmdword, i32 0, i64 0), align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp ne i32 0, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %in_line.addr, align 8
  %call = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_C_cmdword, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8*, i8** %in_line.addr, align 8
  store i8* %2, i8** %ptr, align 8
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** %ptr)
  %3 = load i8*, i8** %ptr, align 8
  call void @_C_do_a_cmd(i8* %3)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare i32 @S_wordcmp(...) #1

declare void @S_nextword(...) #1

declare void @S_skipspace(...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @Z_fatal(...) #1

declare void @S_wordcpy(...) #1

declare void @T_tolline(...) #1

declare void @W_addcom(...) #1

declare void @W_addlit(...) #1

declare void @W_clearcoms(...) #1

declare void @W_clearlits(...) #1

declare void @P_addalpha(...) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
