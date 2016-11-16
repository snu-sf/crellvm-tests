; ModuleID = './lib/tterm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tterm = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@tterm_default = internal global %struct.tterm { i64 8, i64 80 }, align 8
@.str = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"ignoring invalid width in environment variable COLUMNS: %s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"TABSIZE\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"ignoring invalid tab size in environment variable TABSIZE: %s\00", align 1

; Function Attrs: nounwind uwtable
define i64 @tterm_width_set(%struct.tterm* %tterm, i64 %width) #0 {
entry:
  %tterm.addr = alloca %struct.tterm*, align 8
  %width.addr = alloca i64, align 8
  %t = alloca %struct.tterm*, align 8
  %old = alloca i64, align 8
  store %struct.tterm* %tterm, %struct.tterm** %tterm.addr, align 8
  store i64 %width, i64* %width.addr, align 8
  %0 = load %struct.tterm*, %struct.tterm** %tterm.addr, align 8
  %tobool = icmp ne %struct.tterm* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.tterm*, %struct.tterm** %tterm.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.tterm* [ %1, %cond.true ], [ @tterm_default, %cond.false ]
  store %struct.tterm* %cond, %struct.tterm** %t, align 8
  %2 = load %struct.tterm*, %struct.tterm** %t, align 8
  %width1 = getelementptr inbounds %struct.tterm, %struct.tterm* %2, i32 0, i32 1
  %3 = load i64, i64* %width1, align 8
  store i64 %3, i64* %old, align 8
  %4 = load i64, i64* %width.addr, align 8
  %5 = load %struct.tterm*, %struct.tterm** %t, align 8
  %width2 = getelementptr inbounds %struct.tterm, %struct.tterm* %5, i32 0, i32 1
  store i64 %4, i64* %width2, align 8
  %6 = load i64, i64* %old, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define i64 @tterm_width(%struct.tterm* %tterm) #0 {
entry:
  %tterm.addr = alloca %struct.tterm*, align 8
  %t = alloca %struct.tterm*, align 8
  store %struct.tterm* %tterm, %struct.tterm** %tterm.addr, align 8
  %0 = load %struct.tterm*, %struct.tterm** %tterm.addr, align 8
  %tobool = icmp ne %struct.tterm* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.tterm*, %struct.tterm** %tterm.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.tterm* [ %1, %cond.true ], [ @tterm_default, %cond.false ]
  store %struct.tterm* %cond, %struct.tterm** %t, align 8
  %2 = load %struct.tterm*, %struct.tterm** %t, align 8
  %width = getelementptr inbounds %struct.tterm, %struct.tterm* %2, i32 0, i32 1
  %3 = load i64, i64* %width, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @tterm_tabsize_set(%struct.tterm* %tterm, i64 %size) #0 {
entry:
  %tterm.addr = alloca %struct.tterm*, align 8
  %size.addr = alloca i64, align 8
  %t = alloca %struct.tterm*, align 8
  %old = alloca i64, align 8
  store %struct.tterm* %tterm, %struct.tterm** %tterm.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.tterm*, %struct.tterm** %tterm.addr, align 8
  %tobool = icmp ne %struct.tterm* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.tterm*, %struct.tterm** %tterm.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.tterm* [ %1, %cond.true ], [ @tterm_default, %cond.false ]
  store %struct.tterm* %cond, %struct.tterm** %t, align 8
  %2 = load %struct.tterm*, %struct.tterm** %t, align 8
  %tabsize = getelementptr inbounds %struct.tterm, %struct.tterm* %2, i32 0, i32 0
  %3 = load i64, i64* %tabsize, align 8
  store i64 %3, i64* %old, align 8
  %4 = load i64, i64* %size.addr, align 8
  %5 = load %struct.tterm*, %struct.tterm** %t, align 8
  %tabsize1 = getelementptr inbounds %struct.tterm, %struct.tterm* %5, i32 0, i32 0
  store i64 %4, i64* %tabsize1, align 8
  %6 = load i64, i64* %old, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define i64 @tterm_tabsize(%struct.tterm* %tterm) #0 {
entry:
  %tterm.addr = alloca %struct.tterm*, align 8
  %t = alloca %struct.tterm*, align 8
  store %struct.tterm* %tterm, %struct.tterm** %tterm.addr, align 8
  %0 = load %struct.tterm*, %struct.tterm** %tterm.addr, align 8
  %tobool = icmp ne %struct.tterm* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.tterm*, %struct.tterm** %tterm.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.tterm* [ %1, %cond.true ], [ @tterm_default, %cond.false ]
  store %struct.tterm* %cond, %struct.tterm** %t, align 8
  %2 = load %struct.tterm*, %struct.tterm** %t, align 8
  %tabsize = getelementptr inbounds %struct.tterm, %struct.tterm* %2, i32 0, i32 0
  %3 = load i64, i64* %tabsize, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define void @tterm_initialize(%struct.tterm* %tterm, %struct._IO_FILE* %stream) #0 {
entry:
  %tterm.addr = alloca %struct.tterm*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  %t = alloca %struct.tterm*, align 8
  %tmp_long = alloca i64, align 8
  store %struct.tterm* %tterm, %struct.tterm** %tterm.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.tterm*, %struct.tterm** %tterm.addr, align 8
  %tobool = icmp ne %struct.tterm* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.tterm*, %struct.tterm** %tterm.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.tterm* [ %1, %cond.true ], [ @tterm_default, %cond.false ]
  store %struct.tterm* %cond, %struct.tterm** %t, align 8
  %call = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #3
  store i8* %call, i8** %cp, align 8
  %tobool1 = icmp ne i8* %call, null
  br i1 %tobool1, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %cond.end
  %2 = load i8*, i8** %cp, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then, label %if.end.15

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8*, i8** %cp, align 8
  %call3 = call i32 @xstrtol(i8* %4, i8** null, i32 0, i64* %tmp_long, i8* null)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %land.lhs.true.5, label %if.else

land.lhs.true.5:                                  ; preds = %if.then
  %5 = load i64, i64* %tmp_long, align 8
  %cmp6 = icmp slt i64 0, %5
  br i1 %cmp6, label %land.lhs.true.8, label %if.else

land.lhs.true.8:                                  ; preds = %land.lhs.true.5
  %6 = load i64, i64* %tmp_long, align 8
  %cmp9 = icmp sle i64 %6, 2147483647
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %land.lhs.true.8
  %7 = load i64, i64* %tmp_long, align 8
  %conv12 = trunc i64 %7 to i32
  %conv13 = sext i32 %conv12 to i64
  %8 = load %struct.tterm*, %struct.tterm** %t, align 8
  %width = getelementptr inbounds %struct.tterm, %struct.tterm* %8, i32 0, i32 1
  store i64 %conv13, i64* %width, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.8, %land.lhs.true.5, %if.then
  %9 = load i8*, i8** %cp, align 8
  %call14 = call i8* @quotearg(i8* %9)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i32 0), i8* %call14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %land.lhs.true, %cond.end
  %call16 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)) #3
  %tobool17 = icmp ne i8* %call16, null
  br i1 %tobool17, label %if.end.40, label %land.lhs.true.18

land.lhs.true.18:                                 ; preds = %if.end.15
  %call19 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)) #3
  store i8* %call19, i8** %cp, align 8
  %tobool20 = icmp ne i8* %call19, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.40

land.lhs.true.21:                                 ; preds = %land.lhs.true.18
  %10 = load i8*, i8** %cp, align 8
  %11 = load i8, i8* %10, align 1
  %conv22 = sext i8 %11 to i32
  %tobool23 = icmp ne i32 %conv22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.40

if.then.24:                                       ; preds = %land.lhs.true.21
  %12 = load i8*, i8** %cp, align 8
  %call25 = call i32 @xstrtol(i8* %12, i8** null, i32 0, i64* %tmp_long, i8* null)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %land.lhs.true.28, label %if.else.37

land.lhs.true.28:                                 ; preds = %if.then.24
  %13 = load i64, i64* %tmp_long, align 8
  %cmp29 = icmp sle i64 0, %13
  br i1 %cmp29, label %land.lhs.true.31, label %if.else.37

land.lhs.true.31:                                 ; preds = %land.lhs.true.28
  %14 = load i64, i64* %tmp_long, align 8
  %cmp32 = icmp sle i64 %14, 2147483647
  br i1 %cmp32, label %if.then.34, label %if.else.37

if.then.34:                                       ; preds = %land.lhs.true.31
  %15 = load i64, i64* %tmp_long, align 8
  %conv35 = trunc i64 %15 to i32
  %conv36 = sext i32 %conv35 to i64
  %16 = load %struct.tterm*, %struct.tterm** %t, align 8
  %tabsize = getelementptr inbounds %struct.tterm, %struct.tterm* %16, i32 0, i32 0
  store i64 %conv36, i64* %tabsize, align 8
  br label %if.end.39

if.else.37:                                       ; preds = %land.lhs.true.31, %land.lhs.true.28, %if.then.24
  %17 = load i8*, i8** %cp, align 8
  %call38 = call i8* @quotearg(i8* %17)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i32 0, i32 0), i8* %call38)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.34
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true.21, %land.lhs.true.18, %if.end.15
  ret void
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

declare i32 @xstrtol(i8*, i8**, i32, i64*, i8*) #2

declare void @error(i32, i32, i8*, ...) #2

declare i8* @quotearg(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
