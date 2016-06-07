; ModuleID = 'lmclass.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmclass_s = type { i8*, %struct.lmclass_word_s*, %struct.lmclass_s* }
%struct.lmclass_word_s = type { i8*, i32, i32, %struct.lmclass_word_s* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lmclass_set_s = type { %struct.lmclass_s* }

@.str = private unnamed_addr constant [12 x i8] c"LMCLASS %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"    %s\09%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"END %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"lmclass.c\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Reading LM Class file '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Line %d: Line too long:\0A\09%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"LMCLASS\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Line %d: Expecting LMCLASS <classname>\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"Line %d: LM class name(%s) not enclosed in []\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"Line %d: lmclass_add(%s) failed (duplicate?)\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Premature EOF(%s)\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Line %d: Syntax error\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%e\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"Line %d: Prob(%s) out of range (0,1)\0A\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"Line %d: lmclass_addword(%s) failed (duplicate?)\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"Sum(prob)(LMClass %s) = %e\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"Loaded LM Class '%s'; %d words\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @lmclass_dump(%struct.lmclass_s* %cl, %struct._IO_FILE* %fp) #0 {
entry:
  %cl.addr = alloca %struct.lmclass_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %w = alloca %struct.lmclass_word_s*, align 8
  store %struct.lmclass_s* %cl, %struct.lmclass_s** %cl.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load %struct.lmclass_s*, %struct.lmclass_s** %cl.addr, align 8
  %name = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* %2)
  %3 = load %struct.lmclass_s*, %struct.lmclass_s** %cl.addr, align 8
  %wordlist = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %3, i32 0, i32 1
  %4 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %wordlist, align 8
  store %struct.lmclass_word_s* %4, %struct.lmclass_word_s** %w, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %w, align 8
  %tobool = icmp ne %struct.lmclass_word_s* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %7 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %w, align 8
  %word = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %word, align 8
  %9 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %w, align 8
  %LOGprob = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %9, i32 0, i32 2
  %10 = load i32, i32* %LOGprob, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* %8, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %w, align 8
  %next = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %11, i32 0, i32 3
  %12 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %next, align 8
  store %struct.lmclass_word_s* %12, %struct.lmclass_word_s** %w, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %14 = load %struct.lmclass_s*, %struct.lmclass_s** %cl.addr, align 8
  %name2 = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %14, i32 0, i32 0
  %15 = load i8*, i8** %name2, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @fflush(%struct._IO_FILE* %16)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @lmclass_set_dump(%struct.lmclass_set_s* %set, %struct._IO_FILE* %fp) #0 {
entry:
  %set.addr = alloca %struct.lmclass_set_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %cl = alloca %struct.lmclass_s*, align 8
  store %struct.lmclass_set_s* %set, %struct.lmclass_set_s** %set.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct.lmclass_set_s*, %struct.lmclass_set_s** %set.addr, align 8
  %lmclass_list = getelementptr inbounds %struct.lmclass_set_s, %struct.lmclass_set_s* %0, i32 0, i32 0
  %1 = load %struct.lmclass_s*, %struct.lmclass_s** %lmclass_list, align 8
  store %struct.lmclass_s* %1, %struct.lmclass_s** %cl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.lmclass_s*, %struct.lmclass_s** %cl, align 8
  %tobool = icmp ne %struct.lmclass_s* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.lmclass_s*, %struct.lmclass_s** %cl, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @lmclass_dump(%struct.lmclass_s* %3, %struct._IO_FILE* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.lmclass_s*, %struct.lmclass_s** %cl, align 8
  %next = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %5, i32 0, i32 2
  %6 = load %struct.lmclass_s*, %struct.lmclass_s** %next, align 8
  store %struct.lmclass_s* %6, %struct.lmclass_s** %cl, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.lmclass_set_s* @lmclass_newset() #0 {
entry:
  %set = alloca %struct.lmclass_set_s*, align 8
  %call = call i8* @__ckd_calloc__(i64 1, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 86)
  %0 = bitcast i8* %call to %struct.lmclass_set_s*
  store %struct.lmclass_set_s* %0, %struct.lmclass_set_s** %set, align 8
  %1 = load %struct.lmclass_set_s*, %struct.lmclass_set_s** %set, align 8
  %lmclass_list = getelementptr inbounds %struct.lmclass_set_s, %struct.lmclass_set_s* %1, i32 0, i32 0
  store %struct.lmclass_s* null, %struct.lmclass_s** %lmclass_list, align 8
  %2 = load %struct.lmclass_set_s*, %struct.lmclass_set_s** %set, align 8
  ret %struct.lmclass_set_s* %2
}

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.lmclass_set_s* @lmclass_loadfile(%struct.lmclass_set_s* %lmclass_set, i8* %file) #0 {
entry:
  %lmclass_set.addr = alloca %struct.lmclass_set_s*, align 8
  %file.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %line = alloca [16384 x i8], align 16
  %word = alloca [4096 x i8*], align 16
  %_eof = alloca i8*, align 8
  %lineno = alloca i32, align 4
  %nwd = alloca i32, align 4
  %lmclass = alloca %struct.lmclass_s*, align 8
  %lmclass_word = alloca %struct.lmclass_word_s*, align 8
  %SUMp = alloca float, align 4
  %p = alloca float, align 4
  %n_implicit_prob = alloca i32, align 4
  %n_word = alloca i32, align 4
  %LOGp = alloca i32, align 4
  %LOGp133 = alloca i32, align 4
  store %struct.lmclass_set_s* %lmclass_set, %struct.lmclass_set_s** %lmclass_set.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  %0 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), i8* %0)
  %1 = load i8*, i8** %file.addr, align 8
  %call = call %struct._IO_FILE* @_myfopen(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 151)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  store i32 0, i32* %lineno, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.170, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1 = call i8* @fgets(i8* %arraydecay, i32 16384, %struct._IO_FILE* %2)
  store i8* %call1, i8** %_eof, align 8
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp2 = icmp eq i32 %conv, 35
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %arraydecay4 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [4096 x i8*], [4096 x i8*]* %word, i32 0, i32 0
  %call6 = call i32 @str2words(i8* %arraydecay4, i8** %arraydecay5, i32 4096)
  store i32 %call6, i32* %nwd, align 4
  %cmp7 = icmp eq i32 %call6, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %4 = phi i1 [ true, %land.rhs ], [ %cmp7, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %4, %lor.end ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i32, i32* %lineno, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %lineno, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i8*, i8** %_eof, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  br label %for.end.172

if.end:                                           ; preds = %while.end
  %8 = load i32, i32* %lineno, align 4
  %inc9 = add nsw i32 %8, 1
  store i32 %inc9, i32* %lineno, align 4
  %9 = load i32, i32* %nwd, align 4
  %cmp10 = icmp slt i32 %9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  %10 = load i32, i32* %lineno, align 4
  %arraydecay13 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0), i32 %10, i8* %arraydecay13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  %11 = load i32, i32* %nwd, align 4
  %cmp15 = icmp ne i32 %11, 2
  br i1 %cmp15, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.14
  %arrayidx17 = getelementptr inbounds [4096 x i8*], [4096 x i8*]* %word, i32 0, i64 0
  %12 = load i8*, i8** %arrayidx17, align 8
  %call18 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false, %if.end.14
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 169, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  %13 = load i32, i32* %lineno, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0), i32 %13)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %lor.lhs.false
  %arrayidx23 = getelementptr inbounds [4096 x i8*], [4096 x i8*]* %word, i32 0, i64 1
  %14 = load i8*, i8** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %15 to i32
  %cmp26 = icmp ne i32 %conv25, 91
  br i1 %cmp26, label %if.then.36, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.end.22
  %arrayidx29 = getelementptr inbounds [4096 x i8*], [4096 x i8*]* %word, i32 0, i64 1
  %16 = load i8*, i8** %arrayidx29, align 8
  %call30 = call i64 @strlen(i8* %16) #4
  %sub = sub i64 %call30, 1
  %arrayidx31 = getelementptr inbounds [4096 x i8*], [4096 x i8*]* %word, i32 0, i64 1
  %17 = load i8*, i8** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %17, i64 %sub
  %18 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %18 to i32
  %cmp34 = icmp ne i32 %conv33, 93
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %lor.lhs.false.28, %if.end.22
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 172, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0))
  %19 = load i32, i32* %lineno, align 4
  %arrayidx37 = getelementptr inbounds [4096 x i8*], [4096 x i8*]* %word, i32 0, i64 1
  %20 = load i8*, i8** %arrayidx37, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i32 0, i32 0), i32 %19, i8* %20)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %lor.lhs.false.28
  %call39 = call i8* @__ckd_calloc__(i64 1, i64 24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 176)
  %21 = bitcast i8* %call39 to %struct.lmclass_s*
  store %struct.lmclass_s* %21, %struct.lmclass_s** %lmclass, align 8
  %arrayidx40 = getelementptr inbounds [4096 x i8*], [4096 x i8*]* %word, i32 0, i64 1
  %22 = load i8*, i8** %arrayidx40, align 8
  %call41 = call i8* @__ckd_salloc__(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 177)
  %23 = load %struct.lmclass_s*, %struct.lmclass_s** %lmclass, align 8
  %name = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %23, i32 0, i32 0
  store i8* %call41, i8** %name, align 8
  %24 = load %struct.lmclass_s*, %struct.lmclass_s** %lmclass, align 8
  %wordlist = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %24, i32 0, i32 1
  store %struct.lmclass_word_s* null, %struct.lmclass_word_s** %wordlist, align 8
  %25 = load %struct.lmclass_set_s*, %struct.lmclass_set_s** %lmclass_set.addr, align 8
  %26 = load %struct.lmclass_s*, %struct.lmclass_s** %lmclass, align 8
  %call42 = call %struct.lmclass_set_s* @lmclass_add(%struct.lmclass_set_s* %25, %struct.lmclass_s* %26)
  store %struct.lmclass_set_s* %call42, %struct.lmclass_set_s** %lmclass_set.addr, align 8
  %cmp43 = icmp eq %struct.lmclass_set_s* %call42, null
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.end.38
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 183, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  %27 = load i32, i32* %lineno, align 4
  %arrayidx46 = getelementptr inbounds [4096 x i8*], [4096 x i8*]* %word, i32 0, i64 1
  %28 = load i8*, i8** %arrayidx46, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i32 0, i32 0), i32 %27, i8* %28)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.end.38
  store float 0.000000e+00, float* %SUMp, align 4
  store i32 0, i32* %n_implicit_prob, align 4
  store i32 0, i32* %n_word, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %if.end.128, %if.end.47
  store i32 0, i32* %LOGp, align 4
  br label %while.cond.49

while.cond.49:                                    ; preds = %while.body.67, %for.cond.48
  %arraydecay50 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call51 = call i8* @fgets(i8* %arraydecay50, i32 16384, %struct._IO_FILE* %29)
  store i8* %call51, i8** %_eof, align 8
  %cmp52 = icmp ne i8* %call51, null
  br i1 %cmp52, label %land.rhs.54, label %land.end.66

land.rhs.54:                                      ; preds = %while.cond.49
  %arrayidx55 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i64 0
  %30 = load i8, i8* %arrayidx55, align 1
  %conv56 = sext i8 %30 to i32
  %cmp57 = icmp eq i32 %conv56, 35
  br i1 %cmp57, label %lor.end.65, label %lor.rhs.59

lor.rhs.59:                                       ; preds = %land.rhs.54
  %arraydecay60 = getelementptr inbounds [16384 x i8], [16384 x i8]* %line, i32 0, i32 0
  %arraydecay61 = getelementptr inbounds [4096 x i8*], [4096 x i8*]* %word, i32 0, i32 0
  %call62 = call i32 @str2words(i8* %arraydecay60, i8** %arraydecay61, i32 4096)
  store i32 %call62, i32* %nwd, align 4
  %cmp63 = icmp eq i32 %call62, 0
  br label %lor.end.65

lor.end.65:                                       ; preds = %lor.rhs.59, %land.rhs.54
  %31 = phi i1 [ true, %land.rhs.54 ], [ %cmp63, %lor.rhs.59 ]
  br label %land.end.66

land.end.66:                                      ; preds = %lor.end.65, %while.cond.49
  %32 = phi i1 [ false, %while.cond.49 ], [ %31, %lor.end.65 ]
  br i1 %32, label %while.body.67, label %while.end.69

while.body.67:                                    ; preds = %land.end.66
  %33 = load i32, i32* %lineno, align 4
  %inc68 = add nsw i32 %33, 1
  store i32 %inc68, i32* %lineno, align 4
  br label %while.cond.49

while.end.69:                                     ; preds = %land.end.66
  %34 = load i8*, i8** %_eof, align 8
  %tobool70 = icmp ne i8* %34, null
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %while.end.69
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 197, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  %35 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* %35)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %while.end.69
  %36 = load i32, i32* %lineno, align 4
  %inc73 = add nsw i32 %36, 1
  store i32 %inc73, i32* %lineno, align 4
  %37 = load i32, i32* %nwd, align 4
  %cmp74 = icmp ne i32 %37, 1
  br i1 %cmp74, label %land.lhs.true, label %if.end.79

land.lhs.true:                                    ; preds = %if.end.72
  %38 = load i32, i32* %nwd, align 4
  %cmp76 = icmp ne i32 %38, 2
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %land.lhs.true
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 201, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  %39 = load i32, i32* %lineno, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i32 %39)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %land.lhs.true, %if.end.72
  %40 = load i32, i32* %nwd, align 4
  %cmp80 = icmp eq i32 %40, 2
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.94

land.lhs.true.82:                                 ; preds = %if.end.79
  %arrayidx83 = getelementptr inbounds [4096 x i8*], [4096 x i8*]* %word, i32 0, i64 0
  %41 = load i8*, i8** %arrayidx83, align 8
  %call84 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)) #4
  %cmp85 = icmp eq i32 %call84, 0
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.94

land.lhs.true.87:                                 ; preds = %land.lhs.true.82
  %arrayidx88 = getelementptr inbounds [4096 x i8*], [4096 x i8*]* %word, i32 0, i64 1
  %42 = load i8*, i8** %arrayidx88, align 8
  %43 = load %struct.lmclass_s*, %struct.lmclass_s** %lmclass, align 8
  %name89 = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %43, i32 0, i32 0
  %44 = load i8*, i8** %name89, align 8
  %call90 = call i32 @strcmp(i8* %42, i8* %44) #4
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %land.lhs.true.87
  br label %for.end

if.end.94:                                        ; preds = %land.lhs.true.87, %land.lhs.true.82, %if.end.79
  %45 = load i32, i32* %nwd, align 4
  %cmp95 = icmp eq i32 %45, 2
  br i1 %cmp95, label %if.then.97, label %if.else.116

if.then.97:                                       ; preds = %if.end.94
  %arrayidx98 = getelementptr inbounds [4096 x i8*], [4096 x i8*]* %word, i32 0, i64 1
  %46 = load i8*, i8** %arrayidx98, align 8
  %call99 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), float* %p) #5
  %cmp100 = icmp eq i32 %call99, 1
  br i1 %cmp100, label %if.then.102, label %if.else

if.then.102:                                      ; preds = %if.then.97
  %47 = load float, float* %p, align 4
  %conv103 = fpext float %47 to double
  %cmp104 = fcmp ole double %conv103, 0.000000e+00
  br i1 %cmp104, label %if.then.110, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %if.then.102
  %48 = load float, float* %p, align 4
  %conv107 = fpext float %48 to double
  %cmp108 = fcmp oge double %conv107, 1.000000e+00
  br i1 %cmp108, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %lor.lhs.false.106, %if.then.102
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 211, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  %49 = load i32, i32* %lineno, align 4
  %arrayidx111 = getelementptr inbounds [4096 x i8*], [4096 x i8*]* %word, i32 0, i64 1
  %50 = load i8*, i8** %arrayidx111, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0), i32 %49, i8* %50)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %lor.lhs.false.106
  %51 = load float, float* %p, align 4
  %conv113 = fpext float %51 to double
  %call114 = call i32 @logs3(double %conv113)
  store i32 %call114, i32* %LOGp, align 4
  %52 = load float, float* %p, align 4
  %53 = load float, float* %SUMp, align 4
  %add = fadd float %53, %52
  store float %add, float* %SUMp, align 4
  br label %if.end.115

if.else:                                          ; preds = %if.then.97
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 216, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  %54 = load i32, i32* %lineno, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i32 %54)
  br label %if.end.115

if.end.115:                                       ; preds = %if.else, %if.end.112
  br label %if.end.118

if.else.116:                                      ; preds = %if.end.94
  store i32 32001, i32* %LOGp, align 4
  %55 = load i32, i32* %n_implicit_prob, align 4
  %inc117 = add nsw i32 %55, 1
  store i32 %inc117, i32* %n_implicit_prob, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.116, %if.end.115
  %call119 = call i8* @__ckd_calloc__(i64 1, i64 24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 223)
  %56 = bitcast i8* %call119 to %struct.lmclass_word_s*
  store %struct.lmclass_word_s* %56, %struct.lmclass_word_s** %lmclass_word, align 8
  %arrayidx120 = getelementptr inbounds [4096 x i8*], [4096 x i8*]* %word, i32 0, i64 0
  %57 = load i8*, i8** %arrayidx120, align 8
  %call121 = call i8* @__ckd_salloc__(i8* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 224)
  %58 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %lmclass_word, align 8
  %word122 = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %58, i32 0, i32 0
  store i8* %call121, i8** %word122, align 8
  %59 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %lmclass_word, align 8
  %dictwid = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %59, i32 0, i32 1
  store i32 -1, i32* %dictwid, align 4
  %60 = load i32, i32* %LOGp, align 4
  %61 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %lmclass_word, align 8
  %LOGprob = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %61, i32 0, i32 2
  store i32 %60, i32* %LOGprob, align 4
  %62 = load %struct.lmclass_s*, %struct.lmclass_s** %lmclass, align 8
  %63 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %lmclass_word, align 8
  %call123 = call %struct.lmclass_s* @lmclass_addword(%struct.lmclass_s* %62, %struct.lmclass_word_s* %63)
  store %struct.lmclass_s* %call123, %struct.lmclass_s** %lmclass, align 8
  %cmp124 = icmp eq %struct.lmclass_s* %call123, null
  br i1 %cmp124, label %if.then.126, label %if.end.128

if.then.126:                                      ; preds = %if.end.118
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 230, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  %64 = load i32, i32* %lineno, align 4
  %arrayidx127 = getelementptr inbounds [4096 x i8*], [4096 x i8*]* %word, i32 0, i64 0
  %65 = load i8*, i8** %arrayidx127, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i32 0, i32 0), i32 %64, i8* %65)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.126, %if.end.118
  %66 = load i32, i32* %n_word, align 4
  %inc129 = add nsw i32 %66, 1
  store i32 %inc129, i32* %n_word, align 4
  br label %for.cond.48

for.end:                                          ; preds = %if.then.93
  %67 = load i32, i32* %n_implicit_prob, align 4
  %cmp130 = icmp sgt i32 %67, 0
  br i1 %cmp130, label %if.then.132, label %if.else.158

if.then.132:                                      ; preds = %for.end
  %68 = load float, float* %SUMp, align 4
  %conv134 = fpext float %68 to double
  %cmp135 = fcmp oge double %conv134, 1.000000e+00
  br i1 %cmp135, label %if.then.137, label %if.end.140

if.then.137:                                      ; preds = %if.then.132
  call void @_E__pr_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 239, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  %69 = load %struct.lmclass_s*, %struct.lmclass_s** %lmclass, align 8
  %name138 = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %69, i32 0, i32 0
  %70 = load i8*, i8** %name138, align 8
  %71 = load float, float* %SUMp, align 4
  %conv139 = fpext float %71 to double
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i8* %70, double %conv139)
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.137, %if.then.132
  %72 = load float, float* %SUMp, align 4
  %conv141 = fpext float %72 to double
  %sub142 = fsub double 1.000000e+00, %conv141
  %73 = load i32, i32* %n_implicit_prob, align 4
  %conv143 = sitofp i32 %73 to float
  %conv144 = fpext float %conv143 to double
  %div = fdiv double %sub142, %conv144
  %conv145 = fptrunc double %div to float
  store float %conv145, float* %p, align 4
  %74 = load float, float* %p, align 4
  %conv146 = fpext float %74 to double
  %call147 = call i32 @logs3(double %conv146)
  store i32 %call147, i32* %LOGp133, align 4
  %75 = load %struct.lmclass_s*, %struct.lmclass_s** %lmclass, align 8
  %wordlist148 = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %75, i32 0, i32 1
  %76 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %wordlist148, align 8
  store %struct.lmclass_word_s* %76, %struct.lmclass_word_s** %lmclass_word, align 8
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc, %if.end.140
  %77 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %lmclass_word, align 8
  %tobool150 = icmp ne %struct.lmclass_word_s* %77, null
  br i1 %tobool150, label %for.body, label %for.end.157

for.body:                                         ; preds = %for.cond.149
  %78 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %lmclass_word, align 8
  %LOGprob151 = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %78, i32 0, i32 2
  %79 = load i32, i32* %LOGprob151, align 4
  %cmp152 = icmp eq i32 %79, 32001
  br i1 %cmp152, label %if.then.154, label %if.end.156

if.then.154:                                      ; preds = %for.body
  %80 = load i32, i32* %LOGp133, align 4
  %81 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %lmclass_word, align 8
  %LOGprob155 = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %81, i32 0, i32 2
  store i32 %80, i32* %LOGprob155, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.154, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.156
  %82 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %lmclass_word, align 8
  %next = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %82, i32 0, i32 3
  %83 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %next, align 8
  store %struct.lmclass_word_s* %83, %struct.lmclass_word_s** %lmclass_word, align 8
  br label %for.cond.149

for.end.157:                                      ; preds = %for.cond.149
  br label %if.end.170

if.else.158:                                      ; preds = %for.end
  %84 = load float, float* %SUMp, align 4
  %conv159 = fpext float %84 to double
  %cmp160 = fcmp oge double %conv159, 1.100000e+00
  br i1 %cmp160, label %if.then.166, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %if.else.158
  %85 = load float, float* %SUMp, align 4
  %conv163 = fpext float %85 to double
  %cmp164 = fcmp ole double %conv163, 9.000000e-01
  br i1 %cmp164, label %if.then.166, label %if.end.169

if.then.166:                                      ; preds = %lor.lhs.false.162, %if.else.158
  call void @_E__pr_info_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 253, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  %86 = load %struct.lmclass_s*, %struct.lmclass_s** %lmclass, align 8
  %name167 = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %86, i32 0, i32 0
  %87 = load i8*, i8** %name167, align 8
  %88 = load float, float* %SUMp, align 4
  %conv168 = fpext float %88 to double
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i8* %87, double %conv168)
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.166, %lor.lhs.false.162
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %for.end.157
  call void @_E__pr_info_header(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  %89 = load %struct.lmclass_s*, %struct.lmclass_s** %lmclass, align 8
  %name171 = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %89, i32 0, i32 0
  %90 = load i8*, i8** %name171, align 8
  %91 = load i32, i32* %n_word, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i32 0, i32 0), i8* %90, i32 %91)
  br label %for.cond

for.end.172:                                      ; preds = %if.then
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call173 = call i32 @fclose(%struct._IO_FILE* %92)
  %93 = load %struct.lmclass_set_s*, %struct.lmclass_set_s** %lmclass_set.addr, align 8
  ret %struct.lmclass_set_s* %93
}

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

declare %struct._IO_FILE* @_myfopen(i8*, i8*, i8*, i32) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @str2words(i8*, i8**, i32) #1

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__die_error(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @_E__pr_warn(i8*, ...) #1

declare i8* @__ckd_salloc__(i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.lmclass_set_s* @lmclass_add(%struct.lmclass_set_s* %set, %struct.lmclass_s* %new) #0 {
entry:
  %retval = alloca %struct.lmclass_set_s*, align 8
  %set.addr = alloca %struct.lmclass_set_s*, align 8
  %new.addr = alloca %struct.lmclass_s*, align 8
  %cl = alloca %struct.lmclass_s*, align 8
  %prev = alloca %struct.lmclass_s*, align 8
  store %struct.lmclass_set_s* %set, %struct.lmclass_set_s** %set.addr, align 8
  store %struct.lmclass_s* %new, %struct.lmclass_s** %new.addr, align 8
  store %struct.lmclass_s* null, %struct.lmclass_s** %prev, align 8
  %0 = load %struct.lmclass_set_s*, %struct.lmclass_set_s** %set.addr, align 8
  %lmclass_list = getelementptr inbounds %struct.lmclass_set_s, %struct.lmclass_set_s* %0, i32 0, i32 0
  %1 = load %struct.lmclass_s*, %struct.lmclass_s** %lmclass_list, align 8
  store %struct.lmclass_s* %1, %struct.lmclass_s** %cl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.lmclass_s*, %struct.lmclass_s** %cl, align 8
  %tobool = icmp ne %struct.lmclass_s* %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.lmclass_s*, %struct.lmclass_s** %cl, align 8
  %name = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct.lmclass_s*, %struct.lmclass_s** %new.addr, align 8
  %name1 = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %5, i32 0, i32 0
  %6 = load i8*, i8** %name1, align 8
  %call = call i32 @strcmp(i8* %4, i8* %6) #4
  %cmp = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load %struct.lmclass_s*, %struct.lmclass_s** %cl, align 8
  store %struct.lmclass_s* %8, %struct.lmclass_s** %prev, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.lmclass_s*, %struct.lmclass_s** %cl, align 8
  %next = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %9, i32 0, i32 2
  %10 = load %struct.lmclass_s*, %struct.lmclass_s** %next, align 8
  store %struct.lmclass_s* %10, %struct.lmclass_s** %cl, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load %struct.lmclass_s*, %struct.lmclass_s** %cl, align 8
  %tobool2 = icmp ne %struct.lmclass_s* %11, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store %struct.lmclass_set_s* null, %struct.lmclass_set_s** %retval
  br label %return

if.end:                                           ; preds = %for.end
  %12 = load %struct.lmclass_s*, %struct.lmclass_s** %prev, align 8
  %tobool3 = icmp ne %struct.lmclass_s* %12, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %13 = load %struct.lmclass_s*, %struct.lmclass_s** %new.addr, align 8
  %14 = load %struct.lmclass_s*, %struct.lmclass_s** %prev, align 8
  %next5 = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %14, i32 0, i32 2
  store %struct.lmclass_s* %13, %struct.lmclass_s** %next5, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %15 = load %struct.lmclass_s*, %struct.lmclass_s** %new.addr, align 8
  %16 = load %struct.lmclass_set_s*, %struct.lmclass_set_s** %set.addr, align 8
  %lmclass_list6 = getelementptr inbounds %struct.lmclass_set_s, %struct.lmclass_set_s* %16, i32 0, i32 0
  store %struct.lmclass_s* %15, %struct.lmclass_s** %lmclass_list6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  %17 = load %struct.lmclass_s*, %struct.lmclass_s** %new.addr, align 8
  %next8 = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %17, i32 0, i32 2
  store %struct.lmclass_s* null, %struct.lmclass_s** %next8, align 8
  %18 = load %struct.lmclass_set_s*, %struct.lmclass_set_s** %set.addr, align 8
  store %struct.lmclass_set_s* %18, %struct.lmclass_set_s** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  %19 = load %struct.lmclass_set_s*, %struct.lmclass_set_s** %retval
  ret %struct.lmclass_set_s* %19
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare i32 @logs3(double) #1

; Function Attrs: nounwind uwtable
define internal %struct.lmclass_s* @lmclass_addword(%struct.lmclass_s* %class, %struct.lmclass_word_s* %new) #0 {
entry:
  %retval = alloca %struct.lmclass_s*, align 8
  %class.addr = alloca %struct.lmclass_s*, align 8
  %new.addr = alloca %struct.lmclass_word_s*, align 8
  %w = alloca %struct.lmclass_word_s*, align 8
  %prev = alloca %struct.lmclass_word_s*, align 8
  store %struct.lmclass_s* %class, %struct.lmclass_s** %class.addr, align 8
  store %struct.lmclass_word_s* %new, %struct.lmclass_word_s** %new.addr, align 8
  store %struct.lmclass_word_s* null, %struct.lmclass_word_s** %prev, align 8
  %0 = load %struct.lmclass_s*, %struct.lmclass_s** %class.addr, align 8
  %wordlist = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %0, i32 0, i32 1
  %1 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %wordlist, align 8
  store %struct.lmclass_word_s* %1, %struct.lmclass_word_s** %w, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %w, align 8
  %tobool = icmp ne %struct.lmclass_word_s* %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %w, align 8
  %word = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %word, align 8
  %5 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %new.addr, align 8
  %word1 = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %5, i32 0, i32 0
  %6 = load i8*, i8** %word1, align 8
  %call = call i32 @strcmp(i8* %4, i8* %6) #4
  %cmp = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %w, align 8
  store %struct.lmclass_word_s* %8, %struct.lmclass_word_s** %prev, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %w, align 8
  %next = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %9, i32 0, i32 3
  %10 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %next, align 8
  store %struct.lmclass_word_s* %10, %struct.lmclass_word_s** %w, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %w, align 8
  %tobool2 = icmp ne %struct.lmclass_word_s* %11, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store %struct.lmclass_s* null, %struct.lmclass_s** %retval
  br label %return

if.end:                                           ; preds = %for.end
  %12 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %prev, align 8
  %tobool3 = icmp ne %struct.lmclass_word_s* %12, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %13 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %new.addr, align 8
  %14 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %prev, align 8
  %next5 = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %14, i32 0, i32 3
  store %struct.lmclass_word_s* %13, %struct.lmclass_word_s** %next5, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %15 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %new.addr, align 8
  %16 = load %struct.lmclass_s*, %struct.lmclass_s** %class.addr, align 8
  %wordlist6 = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %16, i32 0, i32 1
  store %struct.lmclass_word_s* %15, %struct.lmclass_word_s** %wordlist6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  %17 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %new.addr, align 8
  %next8 = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %17, i32 0, i32 3
  store %struct.lmclass_word_s* null, %struct.lmclass_word_s** %next8, align 8
  %18 = load %struct.lmclass_s*, %struct.lmclass_s** %class.addr, align 8
  store %struct.lmclass_s* %18, %struct.lmclass_s** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  %19 = load %struct.lmclass_s*, %struct.lmclass_s** %retval
  ret %struct.lmclass_s* %19
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @lmclass_set_dictwid(%struct.lmclass_word_s* %w, i32 %dictwid) #0 {
entry:
  %w.addr = alloca %struct.lmclass_word_s*, align 8
  %dictwid.addr = alloca i32, align 4
  store %struct.lmclass_word_s* %w, %struct.lmclass_word_s** %w.addr, align 8
  store i32 %dictwid, i32* %dictwid.addr, align 4
  %0 = load i32, i32* %dictwid.addr, align 4
  %1 = load %struct.lmclass_word_s*, %struct.lmclass_word_s** %w.addr, align 8
  %dictwid1 = getelementptr inbounds %struct.lmclass_word_s, %struct.lmclass_word_s* %1, i32 0, i32 1
  store i32 %0, i32* %dictwid1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.lmclass_s* @lmclass_get_lmclass(%struct.lmclass_set_s* %set, i8* %name) #0 {
entry:
  %set.addr = alloca %struct.lmclass_set_s*, align 8
  %name.addr = alloca i8*, align 8
  %cl = alloca %struct.lmclass_s*, align 8
  store %struct.lmclass_set_s* %set, %struct.lmclass_set_s** %set.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.lmclass_set_s*, %struct.lmclass_set_s** %set.addr, align 8
  %lmclass_list = getelementptr inbounds %struct.lmclass_set_s, %struct.lmclass_set_s* %0, i32 0, i32 0
  %1 = load %struct.lmclass_s*, %struct.lmclass_s** %lmclass_list, align 8
  store %struct.lmclass_s* %1, %struct.lmclass_s** %cl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.lmclass_s*, %struct.lmclass_s** %cl, align 8
  %tobool = icmp ne %struct.lmclass_s* %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.lmclass_s*, %struct.lmclass_s** %cl, align 8
  %name1 = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %name1, align 8
  %5 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %4, i8* %5) #4
  %cmp = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.lmclass_s*, %struct.lmclass_s** %cl, align 8
  %next = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %7, i32 0, i32 2
  %8 = load %struct.lmclass_s*, %struct.lmclass_s** %next, align 8
  store %struct.lmclass_s* %8, %struct.lmclass_s** %cl, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %9 = load %struct.lmclass_s*, %struct.lmclass_s** %cl, align 8
  ret %struct.lmclass_s* %9
}

; Function Attrs: nounwind uwtable
define i32 @lmclass_get_nclass(%struct.lmclass_set_s* %set) #0 {
entry:
  %set.addr = alloca %struct.lmclass_set_s*, align 8
  %cl = alloca %struct.lmclass_s*, align 8
  %n = alloca i32, align 4
  store %struct.lmclass_set_s* %set, %struct.lmclass_set_s** %set.addr, align 8
  store i32 0, i32* %n, align 4
  %0 = load %struct.lmclass_set_s*, %struct.lmclass_set_s** %set.addr, align 8
  %lmclass_list = getelementptr inbounds %struct.lmclass_set_s, %struct.lmclass_set_s* %0, i32 0, i32 0
  %1 = load %struct.lmclass_s*, %struct.lmclass_s** %lmclass_list, align 8
  store %struct.lmclass_s* %1, %struct.lmclass_s** %cl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.lmclass_s*, %struct.lmclass_s** %cl, align 8
  %tobool = icmp ne %struct.lmclass_s* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %struct.lmclass_s*, %struct.lmclass_s** %cl, align 8
  %next = getelementptr inbounds %struct.lmclass_s, %struct.lmclass_s* %3, i32 0, i32 2
  %4 = load %struct.lmclass_s*, %struct.lmclass_s** %next, align 8
  store %struct.lmclass_s* %4, %struct.lmclass_s** %cl, align 8
  %5 = load i32, i32* %n, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %n, align 4
  ret i32 %6
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
