; ModuleID = './MultiSource.Applications.ClamAV/47.shared_options.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optstruct = type { %struct.optnode*, i8* }
%struct.optnode = type { i8, i8*, i8*, %struct.optnode* }
%struct.option = type { i8*, i32, i32*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"!opt_parse: calloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"!Unknown option passed.\0A\00", align 1
@optind = external global i32, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"!opt_check: opt == NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"!opt_arg: opt == NULL\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"!opt_firstarg: opt == NULL\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"!opt_nextarg: *optnode == NULL\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"!register_option: No long option for -%c\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"WARNING: Ignoring option --%s (-%c)\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"WARNING: Ignoring option --%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"!register_long_option: malloc failed\0A\00", align 1
@optarg = external global i8*, align 8
@.str.11 = private unnamed_addr constant [44 x i8] c"ERROR: register_long_option: malloc failed\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @opt_free(%struct.optstruct* %opt) #0 {
entry:
  %opt.addr = alloca %struct.optstruct*, align 8
  %handler = alloca %struct.optnode*, align 8
  %prev = alloca %struct.optnode*, align 8
  store %struct.optstruct* %opt, %struct.optstruct** %opt.addr, align 8
  %0 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %tobool = icmp ne %struct.optstruct* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %optlist = getelementptr inbounds %struct.optstruct, %struct.optstruct* %1, i32 0, i32 0
  %2 = load %struct.optnode*, %struct.optnode** %optlist, align 8
  store %struct.optnode* %2, %struct.optnode** %handler, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %if.end
  %3 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %tobool1 = icmp ne %struct.optnode* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %optarg = getelementptr inbounds %struct.optnode, %struct.optnode* %4, i32 0, i32 2
  %5 = load i8*, i8** %optarg, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %while.body
  %6 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %optarg4 = getelementptr inbounds %struct.optnode, %struct.optnode* %6, i32 0, i32 2
  %7 = load i8*, i8** %optarg4, align 8
  call void @free(i8* %7) #4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %while.body
  %8 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %optlong = getelementptr inbounds %struct.optnode, %struct.optnode* %8, i32 0, i32 1
  %9 = load i8*, i8** %optlong, align 8
  %tobool6 = icmp ne i8* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %10 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %optlong8 = getelementptr inbounds %struct.optnode, %struct.optnode* %10, i32 0, i32 1
  %11 = load i8*, i8** %optlong8, align 8
  call void @free(i8* %11) #4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %12 = load %struct.optnode*, %struct.optnode** %handler, align 8
  store %struct.optnode* %12, %struct.optnode** %prev, align 8
  %13 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %next = getelementptr inbounds %struct.optnode, %struct.optnode* %13, i32 0, i32 3
  %14 = load %struct.optnode*, %struct.optnode** %next, align 8
  store %struct.optnode* %14, %struct.optnode** %handler, align 8
  %15 = load %struct.optnode*, %struct.optnode** %prev, align 8
  %16 = bitcast %struct.optnode* %15 to i8*
  call void @free(i8* %16) #4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %filename = getelementptr inbounds %struct.optstruct, %struct.optstruct* %17, i32 0, i32 1
  %18 = load i8*, i8** %filename, align 8
  %tobool10 = icmp ne i8* %18, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %while.end
  %19 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %filename12 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %19, i32 0, i32 1
  %20 = load i8*, i8** %filename12, align 8
  call void @free(i8* %20) #4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %while.end
  %21 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %22 = bitcast %struct.optstruct* %21 to i8*
  call void @free(i8* %22) #4
  br label %return

return:                                           ; preds = %if.end.13, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.optstruct* @opt_parse(i32 %argc, i8** %argv, i8* %getopt_short, %struct.option* %options_long, i8** %accepted_long) #0 {
entry:
  %retval = alloca %struct.optstruct*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %getopt_short.addr = alloca i8*, align 8
  %options_long.addr = alloca %struct.option*, align 8
  %accepted_long.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %opt_index = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %opt = alloca %struct.optstruct*, align 8
  %longname = alloca i8*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* %getopt_short, i8** %getopt_short.addr, align 8
  store %struct.option* %options_long, %struct.option** %options_long.addr, align 8
  store i8** %accepted_long, i8*** %accepted_long.addr, align 8
  %call = call noalias i8* @calloc(i64 1, i64 16) #4
  %0 = bitcast i8* %call to %struct.optstruct*
  store %struct.optstruct* %0, %struct.optstruct** %opt, align 8
  %1 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %tobool = icmp ne %struct.optstruct* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  store %struct.optstruct* null, %struct.optstruct** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end, %sw.epilog
  store i32 0, i32* %opt_index, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %3 = load i8**, i8*** %argv.addr, align 8
  %4 = load i8*, i8** %getopt_short.addr, align 8
  %5 = load %struct.option*, %struct.option** %options_long.addr, align 8
  %call1 = call i32 @getopt_long(i32 %2, i8** %3, i8* %4, %struct.option* %5, i32* %opt_index)
  store i32 %call1, i32* %ret, align 4
  %6 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %6, -1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %while.body
  br label %while.end

if.end.3:                                         ; preds = %while.body
  %7 = load i32, i32* %ret, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.3
  %8 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %9 = load i32, i32* %opt_index, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.option*, %struct.option** %options_long.addr, align 8
  %arrayidx = getelementptr inbounds %struct.option, %struct.option* %10, i64 %idxprom
  %name = getelementptr inbounds %struct.option, %struct.option* %arrayidx, i32 0, i32 0
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct.option*, %struct.option** %options_long.addr, align 8
  %13 = load i8**, i8*** %accepted_long.addr, align 8
  %call4 = call i32 @register_option(%struct.optstruct* %8, i8* %11, i8 signext 0, %struct.option* %12, i8** %13)
  %cmp5 = icmp eq i32 %call4, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %sw.bb
  %14 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  call void @opt_free(%struct.optstruct* %14)
  store %struct.optstruct* null, %struct.optstruct** %retval
  br label %return

if.end.7:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.3
  %15 = load i8*, i8** %getopt_short.addr, align 8
  %16 = load i32, i32* %ret, align 4
  %call8 = call i8* @strchr(i8* %15, i32 %16) #5
  %tobool9 = icmp ne i8* %call8, null
  br i1 %tobool9, label %if.then.10, label %if.else.22

if.then.10:                                       ; preds = %sw.default
  %17 = load i32, i32* %opt_index, align 4
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.10
  %18 = load i32, i32* %opt_index, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load %struct.option*, %struct.option** %options_long.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.option, %struct.option* %19, i64 %idxprom13
  %name15 = getelementptr inbounds %struct.option, %struct.option* %arrayidx14, i32 0, i32 0
  %20 = load i8*, i8** %name15, align 8
  store i8* %20, i8** %longname, align 8
  br label %if.end.16

if.else:                                          ; preds = %if.then.10
  store i8* null, i8** %longname, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.12
  %21 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %22 = load i8*, i8** %longname, align 8
  %23 = load i32, i32* %ret, align 4
  %conv = trunc i32 %23 to i8
  %24 = load %struct.option*, %struct.option** %options_long.addr, align 8
  %25 = load i8**, i8*** %accepted_long.addr, align 8
  %call17 = call i32 @register_option(%struct.optstruct* %21, i8* %22, i8 signext %conv, %struct.option* %24, i8** %25)
  %cmp18 = icmp eq i32 %call17, -1
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  %26 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  call void @opt_free(%struct.optstruct* %26)
  store %struct.optstruct* null, %struct.optstruct** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.16
  br label %if.end.23

if.else.22:                                       ; preds = %sw.default
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  %27 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  call void @opt_free(%struct.optstruct* %27)
  store %struct.optstruct* null, %struct.optstruct** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.21
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.23, %if.end.7
  br label %while.body

while.end:                                        ; preds = %if.then.2
  %28 = load i32, i32* @optind, align 4
  %29 = load i32, i32* %argc.addr, align 4
  %cmp24 = icmp slt i32 %28, %29
  br i1 %cmp24, label %if.then.26, label %if.end.64

if.then.26:                                       ; preds = %while.end
  store i32 0, i32* %len, align 4
  %30 = load i32, i32* @optind, align 4
  store i32 %30, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.26
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %argc.addr, align 4
  %cmp27 = icmp slt i32 %31, %32
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %33 to i64
  %34 = load i8**, i8*** %argv.addr, align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %34, i64 %idxprom29
  %35 = load i8*, i8** %arrayidx30, align 8
  %call31 = call i64 @strlen(i8* %35) #5
  %36 = load i32, i32* %len, align 4
  %conv32 = sext i32 %36 to i64
  %add = add i64 %conv32, %call31
  %conv33 = trunc i64 %add to i32
  store i32 %conv33, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32, i32* %argc.addr, align 4
  %39 = load i32, i32* @optind, align 4
  %sub = sub nsw i32 %38, %39
  %sub34 = sub nsw i32 %sub, 1
  %40 = load i32, i32* %len, align 4
  %add35 = add nsw i32 %40, %sub34
  store i32 %add35, i32* %len, align 4
  %41 = load i32, i32* %len, align 4
  %add36 = add nsw i32 %41, 64
  %conv37 = sext i32 %add36 to i64
  %call38 = call noalias i8* @calloc(i64 %conv37, i64 1) #4
  %42 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %filename = getelementptr inbounds %struct.optstruct, %struct.optstruct* %42, i32 0, i32 1
  store i8* %call38, i8** %filename, align 8
  %43 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %filename39 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %43, i32 0, i32 1
  %44 = load i8*, i8** %filename39, align 8
  %tobool40 = icmp ne i8* %44, null
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %for.end
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  %45 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  call void @opt_free(%struct.optstruct* %45)
  store %struct.optstruct* null, %struct.optstruct** %retval
  br label %return

if.end.42:                                        ; preds = %for.end
  %46 = load i32, i32* @optind, align 4
  store i32 %46, i32* %i, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.61, %if.end.42
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %argc.addr, align 4
  %cmp44 = icmp slt i32 %47, %48
  br i1 %cmp44, label %for.body.46, label %for.end.63

for.body.46:                                      ; preds = %for.cond.43
  %49 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %filename47 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %49, i32 0, i32 1
  %50 = load i8*, i8** %filename47, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %51 to i64
  %52 = load i8**, i8*** %argv.addr, align 8
  %arrayidx49 = getelementptr inbounds i8*, i8** %52, i64 %idxprom48
  %53 = load i8*, i8** %arrayidx49, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %54 to i64
  %55 = load i8**, i8*** %argv.addr, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %55, i64 %idxprom50
  %56 = load i8*, i8** %arrayidx51, align 8
  %call52 = call i64 @strlen(i8* %56) #5
  %call53 = call i8* @strncat(i8* %50, i8* %53, i64 %call52) #4
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %argc.addr, align 4
  %sub54 = sub nsw i32 %58, 1
  %cmp55 = icmp ne i32 %57, %sub54
  br i1 %cmp55, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %for.body.46
  %59 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  %filename58 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %59, i32 0, i32 1
  %60 = load i8*, i8** %filename58, align 8
  %call59 = call i8* @strncat(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i64 1) #4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %for.body.46
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %61 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %61, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond.43

for.end.63:                                       ; preds = %for.cond.43
  br label %if.end.64

if.end.64:                                        ; preds = %for.end.63, %while.end
  %62 = load %struct.optstruct*, %struct.optstruct** %opt, align 8
  store %struct.optstruct* %62, %struct.optstruct** %retval
  br label %return

return:                                           ; preds = %if.end.64, %if.then.41, %if.else.22, %if.then.20, %if.then.6, %if.then
  %63 = load %struct.optstruct*, %struct.optstruct** %retval
  ret %struct.optstruct* %63
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @mprintf(i8*, ...) #2

declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @register_option(%struct.optstruct* %opt, i8* %optlong, i8 signext %optshort, %struct.option* %options_long, i8** %accepted_long) #0 {
entry:
  %retval = alloca i32, align 4
  %opt.addr = alloca %struct.optstruct*, align 8
  %optlong.addr = alloca i8*, align 8
  %optshort.addr = alloca i8, align 1
  %options_long.addr = alloca %struct.option*, align 8
  %accepted_long.addr = alloca i8**, align 8
  %newnode = alloca %struct.optnode*, align 8
  %i = alloca i32, align 4
  %found = alloca i32, align 4
  %longname = alloca i8*, align 8
  store %struct.optstruct* %opt, %struct.optstruct** %opt.addr, align 8
  store i8* %optlong, i8** %optlong.addr, align 8
  store i8 %optshort, i8* %optshort.addr, align 1
  store %struct.option* %options_long, %struct.option** %options_long.addr, align 8
  store i8** %accepted_long, i8*** %accepted_long.addr, align 8
  store i32 0, i32* %found, align 4
  store i8* null, i8** %longname, align 8
  %0 = load i8, i8* %optshort.addr, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.option*, %struct.option** %options_long.addr, align 8
  %arrayidx = getelementptr inbounds %struct.option, %struct.option* %2, i64 %idxprom
  %name = getelementptr inbounds %struct.option, %struct.option* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load %struct.option*, %struct.option** %options_long.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.option, %struct.option* %5, i64 %idxprom2
  %val = getelementptr inbounds %struct.option, %struct.option* %arrayidx3, i32 0, i32 3
  %6 = load i32, i32* %val, align 4
  %7 = load i8, i8* %optshort.addr, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %6, %conv
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load %struct.option*, %struct.option** %options_long.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.option, %struct.option* %9, i64 %idxprom6
  %name8 = getelementptr inbounds %struct.option, %struct.option* %arrayidx7, i32 0, i32 0
  %10 = load i8*, i8** %name8, align 8
  store i8* %10, i8** %longname, align 8
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.5, %for.cond
  br label %if.end.9

if.else:                                          ; preds = %entry
  %12 = load i8*, i8** %optlong.addr, align 8
  store i8* %12, i8** %longname, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %for.end
  %13 = load i8*, i8** %longname, align 8
  %tobool10 = icmp ne i8* %13, null
  br i1 %tobool10, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %if.end.9
  %14 = load i8, i8* %optshort.addr, align 1
  %conv12 = sext i8 %14 to i32
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0), i32 %conv12)
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %15 = load i8**, i8*** %accepted_long.addr, align 8
  %tobool14 = icmp ne i8** %15, null
  br i1 %tobool14, label %if.then.15, label %if.end.37

if.then.15:                                       ; preds = %if.end.13
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.26, %if.then.15
  %16 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %17 = load i8**, i8*** %accepted_long.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %17, i64 %idxprom17
  %18 = load i8*, i8** %arrayidx18, align 8
  %tobool19 = icmp ne i8* %18, null
  br i1 %tobool19, label %for.body.20, label %for.end.28

for.body.20:                                      ; preds = %for.cond.16
  %19 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %19 to i64
  %20 = load i8**, i8*** %accepted_long.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %20, i64 %idxprom21
  %21 = load i8*, i8** %arrayidx22, align 8
  %22 = load i8*, i8** %longname, align 8
  %call = call i32 @strcmp(i8* %21, i8* %22) #5
  %tobool23 = icmp ne i32 %call, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %for.body.20
  store i32 1, i32* %found, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %for.body.20
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end.25
  %23 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %23, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.16

for.end.28:                                       ; preds = %for.cond.16
  %24 = load i32, i32* %found, align 4
  %tobool29 = icmp ne i32 %24, 0
  br i1 %tobool29, label %if.end.36, label %if.then.30

if.then.30:                                       ; preds = %for.end.28
  %25 = load i8, i8* %optshort.addr, align 1
  %tobool31 = icmp ne i8 %25, 0
  br i1 %tobool31, label %if.then.32, label %if.else.34

if.then.32:                                       ; preds = %if.then.30
  %26 = load i8*, i8** %longname, align 8
  %27 = load i8, i8* %optshort.addr, align 1
  %conv33 = sext i8 %27 to i32
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0), i8* %26, i32 %conv33)
  br label %if.end.35

if.else.34:                                       ; preds = %if.then.30
  %28 = load i8*, i8** %longname, align 8
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0), i8* %28)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.then.32
  store i32 0, i32* %retval
  br label %return

if.end.36:                                        ; preds = %for.end.28
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.13
  %call38 = call noalias i8* @malloc(i64 32) #4
  %29 = bitcast i8* %call38 to %struct.optnode*
  store %struct.optnode* %29, %struct.optnode** %newnode, align 8
  %30 = load %struct.optnode*, %struct.optnode** %newnode, align 8
  %tobool39 = icmp ne %struct.optnode* %30, null
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %if.end.37
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.end.37
  %31 = load i8, i8* %optshort.addr, align 1
  %32 = load %struct.optnode*, %struct.optnode** %newnode, align 8
  %optshort42 = getelementptr inbounds %struct.optnode, %struct.optnode* %32, i32 0, i32 0
  store i8 %31, i8* %optshort42, align 1
  %33 = load i8*, i8** @optarg, align 8
  %tobool43 = icmp ne i8* %33, null
  br i1 %tobool43, label %if.then.44, label %if.else.53

if.then.44:                                       ; preds = %if.end.41
  %34 = load i8*, i8** @optarg, align 8
  %call45 = call i64 @strlen(i8* %34) #5
  %add = add i64 %call45, 1
  %call46 = call noalias i8* @malloc(i64 %add) #4
  %35 = load %struct.optnode*, %struct.optnode** %newnode, align 8
  %optarg = getelementptr inbounds %struct.optnode, %struct.optnode* %35, i32 0, i32 2
  store i8* %call46, i8** %optarg, align 8
  %36 = load %struct.optnode*, %struct.optnode** %newnode, align 8
  %optarg47 = getelementptr inbounds %struct.optnode, %struct.optnode* %36, i32 0, i32 2
  %37 = load i8*, i8** %optarg47, align 8
  %tobool48 = icmp ne i8* %37, null
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.then.44
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0))
  %38 = load %struct.optnode*, %struct.optnode** %newnode, align 8
  %39 = bitcast %struct.optnode* %38 to i8*
  call void @free(i8* %39) #4
  store i32 -1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.then.44
  %40 = load %struct.optnode*, %struct.optnode** %newnode, align 8
  %optarg51 = getelementptr inbounds %struct.optnode, %struct.optnode* %40, i32 0, i32 2
  %41 = load i8*, i8** %optarg51, align 8
  %42 = load i8*, i8** @optarg, align 8
  %call52 = call i8* @strcpy(i8* %41, i8* %42) #4
  br label %if.end.55

if.else.53:                                       ; preds = %if.end.41
  %43 = load %struct.optnode*, %struct.optnode** %newnode, align 8
  %optarg54 = getelementptr inbounds %struct.optnode, %struct.optnode* %43, i32 0, i32 2
  store i8* null, i8** %optarg54, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.53, %if.end.50
  %44 = load i8*, i8** %longname, align 8
  %call56 = call i64 @strlen(i8* %44) #5
  %add57 = add i64 %call56, 1
  %call58 = call noalias i8* @malloc(i64 %add57) #4
  %45 = load %struct.optnode*, %struct.optnode** %newnode, align 8
  %optlong59 = getelementptr inbounds %struct.optnode, %struct.optnode* %45, i32 0, i32 1
  store i8* %call58, i8** %optlong59, align 8
  %46 = load %struct.optnode*, %struct.optnode** %newnode, align 8
  %optlong60 = getelementptr inbounds %struct.optnode, %struct.optnode* %46, i32 0, i32 1
  %47 = load i8*, i8** %optlong60, align 8
  %tobool61 = icmp ne i8* %47, null
  br i1 %tobool61, label %if.end.64, label %if.then.62

if.then.62:                                       ; preds = %if.end.55
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0))
  %48 = load %struct.optnode*, %struct.optnode** %newnode, align 8
  %optarg63 = getelementptr inbounds %struct.optnode, %struct.optnode* %48, i32 0, i32 2
  %49 = load i8*, i8** %optarg63, align 8
  call void @free(i8* %49) #4
  %50 = load %struct.optnode*, %struct.optnode** %newnode, align 8
  %51 = bitcast %struct.optnode* %50 to i8*
  call void @free(i8* %51) #4
  store i32 -1, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.55
  %52 = load %struct.optnode*, %struct.optnode** %newnode, align 8
  %optlong65 = getelementptr inbounds %struct.optnode, %struct.optnode* %52, i32 0, i32 1
  %53 = load i8*, i8** %optlong65, align 8
  %54 = load i8*, i8** %longname, align 8
  %call66 = call i8* @strcpy(i8* %53, i8* %54) #4
  %55 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %optlist = getelementptr inbounds %struct.optstruct, %struct.optstruct* %55, i32 0, i32 0
  %56 = load %struct.optnode*, %struct.optnode** %optlist, align 8
  %57 = load %struct.optnode*, %struct.optnode** %newnode, align 8
  %next = getelementptr inbounds %struct.optnode, %struct.optnode* %57, i32 0, i32 3
  store %struct.optnode* %56, %struct.optnode** %next, align 8
  %58 = load %struct.optnode*, %struct.optnode** %newnode, align 8
  %59 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %optlist67 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %59, i32 0, i32 0
  store %struct.optnode* %58, %struct.optnode** %optlist67, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.64, %if.then.62, %if.then.49, %if.then.40, %if.end.35, %if.then.11
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @opt_check(%struct.optstruct* %opt, i8* %optlong) #0 {
entry:
  %retval = alloca i32, align 4
  %opt.addr = alloca %struct.optstruct*, align 8
  %optlong.addr = alloca i8*, align 8
  %handler = alloca %struct.optnode*, align 8
  store %struct.optstruct* %opt, %struct.optstruct** %opt.addr, align 8
  store i8* %optlong, i8** %optlong.addr, align 8
  %0 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %tobool = icmp ne %struct.optstruct* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %optlist = getelementptr inbounds %struct.optstruct, %struct.optstruct* %1, i32 0, i32 0
  %2 = load %struct.optnode*, %struct.optnode** %optlist, align 8
  store %struct.optnode* %2, %struct.optnode** %handler, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %if.end
  %3 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %tobool1 = icmp ne %struct.optnode* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %optlong2 = getelementptr inbounds %struct.optnode, %struct.optnode* %4, i32 0, i32 1
  %5 = load i8*, i8** %optlong2, align 8
  %tobool3 = icmp ne i8* %5, null
  br i1 %tobool3, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %while.body
  %6 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %optlong4 = getelementptr inbounds %struct.optnode, %struct.optnode* %6, i32 0, i32 1
  %7 = load i8*, i8** %optlong4, align 8
  %8 = load i8*, i8** %optlong.addr, align 8
  %call = call i32 @strcmp(i8* %7, i8* %8) #5
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %while.body
  %9 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %next = getelementptr inbounds %struct.optnode, %struct.optnode* %9, i32 0, i32 3
  %10 = load %struct.optnode*, %struct.optnode** %next, align 8
  store %struct.optnode* %10, %struct.optnode** %handler, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.6, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i8* @opt_arg(%struct.optstruct* %opt, i8* %optlong) #0 {
entry:
  %retval = alloca i8*, align 8
  %opt.addr = alloca %struct.optstruct*, align 8
  %optlong.addr = alloca i8*, align 8
  %handler = alloca %struct.optnode*, align 8
  store %struct.optstruct* %opt, %struct.optstruct** %opt.addr, align 8
  store i8* %optlong, i8** %optlong.addr, align 8
  %0 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %tobool = icmp ne %struct.optstruct* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %optlist = getelementptr inbounds %struct.optstruct, %struct.optstruct* %1, i32 0, i32 0
  %2 = load %struct.optnode*, %struct.optnode** %optlist, align 8
  store %struct.optnode* %2, %struct.optnode** %handler, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %if.end
  %3 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %tobool1 = icmp ne %struct.optnode* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %optlong2 = getelementptr inbounds %struct.optnode, %struct.optnode* %4, i32 0, i32 1
  %5 = load i8*, i8** %optlong2, align 8
  %tobool3 = icmp ne i8* %5, null
  br i1 %tobool3, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %while.body
  %6 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %optlong4 = getelementptr inbounds %struct.optnode, %struct.optnode* %6, i32 0, i32 1
  %7 = load i8*, i8** %optlong4, align 8
  %8 = load i8*, i8** %optlong.addr, align 8
  %call = call i32 @strcmp(i8* %7, i8* %8) #5
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  %9 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %optarg = getelementptr inbounds %struct.optnode, %struct.optnode* %9, i32 0, i32 2
  %10 = load i8*, i8** %optarg, align 8
  store i8* %10, i8** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %while.body
  %11 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %next = getelementptr inbounds %struct.optnode, %struct.optnode* %11, i32 0, i32 3
  %12 = load %struct.optnode*, %struct.optnode** %next, align 8
  store %struct.optnode* %12, %struct.optnode** %handler, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.6, %if.then
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define i8* @opt_firstarg(%struct.optstruct* %opt, i8* %optlong, %struct.optnode** %optnode) #0 {
entry:
  %retval = alloca i8*, align 8
  %opt.addr = alloca %struct.optstruct*, align 8
  %optlong.addr = alloca i8*, align 8
  %optnode.addr = alloca %struct.optnode**, align 8
  %handler = alloca %struct.optnode*, align 8
  store %struct.optstruct* %opt, %struct.optstruct** %opt.addr, align 8
  store i8* %optlong, i8** %optlong.addr, align 8
  store %struct.optnode** %optnode, %struct.optnode*** %optnode.addr, align 8
  %0 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %tobool = icmp ne %struct.optstruct* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.optstruct*, %struct.optstruct** %opt.addr, align 8
  %optlist = getelementptr inbounds %struct.optstruct, %struct.optstruct* %1, i32 0, i32 0
  %2 = load %struct.optnode*, %struct.optnode** %optlist, align 8
  store %struct.optnode* %2, %struct.optnode** %handler, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %if.end
  %3 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %tobool1 = icmp ne %struct.optnode* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %optlong2 = getelementptr inbounds %struct.optnode, %struct.optnode* %4, i32 0, i32 1
  %5 = load i8*, i8** %optlong2, align 8
  %tobool3 = icmp ne i8* %5, null
  br i1 %tobool3, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %while.body
  %6 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %optlong4 = getelementptr inbounds %struct.optnode, %struct.optnode* %6, i32 0, i32 1
  %7 = load i8*, i8** %optlong4, align 8
  %8 = load i8*, i8** %optlong.addr, align 8
  %call = call i32 @strcmp(i8* %7, i8* %8) #5
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  %9 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %10 = load %struct.optnode**, %struct.optnode*** %optnode.addr, align 8
  store %struct.optnode* %9, %struct.optnode** %10, align 8
  %11 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %optarg = getelementptr inbounds %struct.optnode, %struct.optnode* %11, i32 0, i32 2
  %12 = load i8*, i8** %optarg, align 8
  store i8* %12, i8** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %while.body
  %13 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %next = getelementptr inbounds %struct.optnode, %struct.optnode* %13, i32 0, i32 3
  %14 = load %struct.optnode*, %struct.optnode** %next, align 8
  store %struct.optnode* %14, %struct.optnode** %handler, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct.optnode**, %struct.optnode*** %optnode.addr, align 8
  store %struct.optnode* null, %struct.optnode** %15, align 8
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.6, %if.then
  %16 = load i8*, i8** %retval
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define i8* @opt_nextarg(%struct.optnode** %optnode, i8* %optlong) #0 {
entry:
  %retval = alloca i8*, align 8
  %optnode.addr = alloca %struct.optnode**, align 8
  %optlong.addr = alloca i8*, align 8
  %handler = alloca %struct.optnode*, align 8
  store %struct.optnode** %optnode, %struct.optnode*** %optnode.addr, align 8
  store i8* %optlong, i8** %optlong.addr, align 8
  %0 = load %struct.optnode**, %struct.optnode*** %optnode.addr, align 8
  %tobool = icmp ne %struct.optnode** %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.optnode**, %struct.optnode*** %optnode.addr, align 8
  %2 = load %struct.optnode*, %struct.optnode** %1, align 8
  %tobool1 = icmp ne %struct.optnode* %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.optnode**, %struct.optnode*** %optnode.addr, align 8
  %4 = load %struct.optnode*, %struct.optnode** %3, align 8
  %next = getelementptr inbounds %struct.optnode, %struct.optnode* %4, i32 0, i32 3
  %5 = load %struct.optnode*, %struct.optnode** %next, align 8
  store %struct.optnode* %5, %struct.optnode** %handler, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %if.end
  %6 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %tobool2 = icmp ne %struct.optnode* %6, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %optlong3 = getelementptr inbounds %struct.optnode, %struct.optnode* %7, i32 0, i32 1
  %8 = load i8*, i8** %optlong3, align 8
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %while.body
  %9 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %optlong5 = getelementptr inbounds %struct.optnode, %struct.optnode* %9, i32 0, i32 1
  %10 = load i8*, i8** %optlong5, align 8
  %11 = load i8*, i8** %optlong.addr, align 8
  %call = call i32 @strcmp(i8* %10, i8* %11) #5
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true
  %12 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %13 = load %struct.optnode**, %struct.optnode*** %optnode.addr, align 8
  store %struct.optnode* %12, %struct.optnode** %13, align 8
  %14 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %optarg = getelementptr inbounds %struct.optnode, %struct.optnode* %14, i32 0, i32 2
  %15 = load i8*, i8** %optarg, align 8
  store i8* %15, i8** %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %while.body
  %16 = load %struct.optnode*, %struct.optnode** %handler, align 8
  %next9 = getelementptr inbounds %struct.optnode, %struct.optnode* %16, i32 0, i32 3
  %17 = load %struct.optnode*, %struct.optnode** %next9, align 8
  store %struct.optnode* %17, %struct.optnode** %handler, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load %struct.optnode**, %struct.optnode*** %optnode.addr, align 8
  store %struct.optnode* null, %struct.optnode** %18, align 8
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.7, %if.then
  %19 = load i8*, i8** %retval
  ret i8* %19
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
