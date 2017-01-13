; ModuleID = './MultiSource.Applications.spiff/8.comment.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._W_bolstruct = type { [16 x i8], [16 x i8], [16 x i8] }
%struct._W_comstruct = type { [16 x i8], [16 x i8], [16 x i8], i32 }
%struct._W_litstruct = type { [16 x i8], [16 x i8], [16 x i8] }

@_W_bolchar = global i8 94, align 1
@_W_eolchar = global i8 36, align 1
@_W_nextbol = internal global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"too many beginning of line comment delimiter sets\00", align 1
@_W_bols = common global [20 x %struct._W_bolstruct] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"begining of line comment won't nest\00", align 1
@_W_nextcom = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"too many comment delimiter sets\00", align 1
@_W_coms = common global [20 x %struct._W_comstruct] zeroinitializer, align 16
@_W_nextlit = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"too many literal delimiter sets\00", align 1
@_W_lits = common global [20 x %struct._W_litstruct] zeroinitializer, align 16
@bol_scratch = internal global %struct._W_bolstruct zeroinitializer, align 1
@lit_scratch = internal global %struct._W_litstruct zeroinitializer, align 1
@com_scratch = internal global %struct._W_comstruct zeroinitializer, align 4

; Function Attrs: nounwind uwtable
define void @W_addcom(i8* %str, i32 %nestflag) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %nestflag.addr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %nestflag, i32* %nestflag.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8, i8* @_W_bolchar, align 1
  %conv1 = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.else.24

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @_W_nextbol, align 4
  %cmp3 = icmp sge i32 %3, 20
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %4 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %5 = load i32, i32* @_W_nextbol, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_bols, i32 0, i64 %idxprom
  %begin = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %begin, i32 0, i32 0
  %6 = load i8*, i8** %str.addr, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %arraydecay, i8* %6)
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** %str.addr)
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv6 = sext i8 %8 to i32
  %9 = load i8, i8* @_W_eolchar, align 1
  %conv7 = sext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv6, %conv7
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %10 = load i32, i32* @_W_nextbol, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_bols, i32 0, i64 %idxprom11
  %end = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %arrayidx12, i32 0, i32 1
  %arraydecay13 = getelementptr inbounds [16 x i8], [16 x i8]* %end, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #3
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %11 = load i32, i32* @_W_nextbol, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_bols, i32 0, i64 %idxprom14
  %end16 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %arrayidx15, i32 0, i32 1
  %arraydecay17 = getelementptr inbounds [16 x i8], [16 x i8]* %end16, i32 0, i32 0
  %12 = load i8*, i8** %str.addr, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %arraydecay17, i8* %12)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.10
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** %str.addr)
  %13 = load i32, i32* @_W_nextbol, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_bols, i32 0, i64 %idxprom19
  %escape = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %arrayidx20, i32 0, i32 2
  %arraydecay21 = getelementptr inbounds [16 x i8], [16 x i8]* %escape, i32 0, i32 0
  %14 = load i8*, i8** %str.addr, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %arraydecay21, i8* %14)
  %15 = load i32, i32* %nestflag.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  call void (i8*, ...) bitcast (void (...)* @Z_complain to void (i8*, ...)*)(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.18
  %16 = load i32, i32* @_W_nextbol, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* @_W_nextbol, align 4
  br label %if.end.56

if.else.24:                                       ; preds = %entry
  %17 = load i32, i32* @_W_nextcom, align 4
  %cmp25 = icmp sge i32 %17, 20
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else.24
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.else.24
  %18 = load i32, i32* @_W_nextcom, align 4
  %idxprom29 = sext i32 %18 to i64
  %arrayidx30 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i32 0, i64 %idxprom29
  %begin31 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %arrayidx30, i32 0, i32 0
  %arraydecay32 = getelementptr inbounds [16 x i8], [16 x i8]* %begin31, i32 0, i32 0
  %19 = load i8*, i8** %str.addr, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %arraydecay32, i8* %19)
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** %str.addr)
  %20 = load i8*, i8** %str.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv33 = sext i8 %21 to i32
  %22 = load i8, i8* @_W_eolchar, align 1
  %conv34 = sext i8 %22 to i32
  %cmp35 = icmp eq i32 %conv33, %conv34
  br i1 %cmp35, label %if.then.37, label %if.else.43

if.then.37:                                       ; preds = %if.end.28
  %23 = load i32, i32* @_W_nextbol, align 4
  %idxprom38 = sext i32 %23 to i64
  %arrayidx39 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i32 0, i64 %idxprom38
  %end40 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %arrayidx39, i32 0, i32 1
  %arraydecay41 = getelementptr inbounds [16 x i8], [16 x i8]* %end40, i32 0, i32 0
  %call42 = call i8* @strcpy(i8* %arraydecay41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #3
  br label %if.end.48

if.else.43:                                       ; preds = %if.end.28
  %24 = load i32, i32* @_W_nextbol, align 4
  %idxprom44 = sext i32 %24 to i64
  %arrayidx45 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i32 0, i64 %idxprom44
  %end46 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %arrayidx45, i32 0, i32 1
  %arraydecay47 = getelementptr inbounds [16 x i8], [16 x i8]* %end46, i32 0, i32 0
  %25 = load i8*, i8** %str.addr, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %arraydecay47, i8* %25)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.43, %if.then.37
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** %str.addr)
  %26 = load i32, i32* @_W_nextcom, align 4
  %idxprom49 = sext i32 %26 to i64
  %arrayidx50 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i32 0, i64 %idxprom49
  %escape51 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %arrayidx50, i32 0, i32 2
  %arraydecay52 = getelementptr inbounds [16 x i8], [16 x i8]* %escape51, i32 0, i32 0
  %27 = load i8*, i8** %str.addr, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %arraydecay52, i8* %27)
  %28 = load i32, i32* %nestflag.addr, align 4
  %29 = load i32, i32* @_W_nextcom, align 4
  %idxprom53 = sext i32 %29 to i64
  %arrayidx54 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i32 0, i64 %idxprom53
  %nestbit = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %arrayidx54, i32 0, i32 3
  store i32 %28, i32* %nestbit, align 4
  %30 = load i32, i32* @_W_nextcom, align 4
  %inc55 = add nsw i32 %30, 1
  store i32 %inc55, i32* @_W_nextcom, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.48, %if.end.23
  ret void
}

declare void @Z_fatal(...) #1

declare void @S_wordcpy(...) #1

declare void @S_nextword(...) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare void @Z_complain(...) #1

; Function Attrs: nounwind uwtable
define void @W_clearcoms() #0 {
entry:
  store i32 0, i32* @_W_nextcom, align 4
  store i32 0, i32* @_W_nextbol, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @W_addlit(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i32, i32* @_W_nextlit, align 4
  %cmp = icmp sge i32 %0, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @_W_nextlit, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [20 x %struct._W_litstruct], [20 x %struct._W_litstruct]* @_W_lits, i32 0, i64 %idxprom
  %begin = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %begin, i32 0, i32 0
  %2 = load i8*, i8** %str.addr, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %arraydecay, i8* %2)
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** %str.addr)
  %3 = load i32, i32* @_W_nextlit, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [20 x %struct._W_litstruct], [20 x %struct._W_litstruct]* @_W_lits, i32 0, i64 %idxprom1
  %end = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %arrayidx2, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %end, i32 0, i32 0
  %4 = load i8*, i8** %str.addr, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %arraydecay3, i8* %4)
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** %str.addr)
  %5 = load i32, i32* @_W_nextlit, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [20 x %struct._W_litstruct], [20 x %struct._W_litstruct]* @_W_lits, i32 0, i64 %idxprom4
  %escape = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %arrayidx5, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [16 x i8], [16 x i8]* %escape, i32 0, i32 0
  %6 = load i8*, i8** %str.addr, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* %arraydecay6, i8* %6)
  %7 = load i32, i32* @_W_nextlit, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @_W_nextlit, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @W_clearlits() #0 {
entry:
  store i32 0, i32* @_W_nextlit, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._W_bolstruct* @W_isbol(i8* %str) #0 {
entry:
  %retval = alloca %struct._W_bolstruct*, align 8
  %str.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @_W_nextbol, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_bols, i32 0, i64 %idxprom
  %begin = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %begin, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %2, i8* %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_bols, i32 0, i64 %idxprom1
  call void @_W_copybol(%struct._W_bolstruct* @bol_scratch, %struct._W_bolstruct* %arrayidx2)
  store %struct._W_bolstruct* @bol_scratch, %struct._W_bolstruct** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._W_bolstruct* null, %struct._W_bolstruct** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load %struct._W_bolstruct*, %struct._W_bolstruct** %retval
  ret %struct._W_bolstruct* %6
}

declare i32 @S_wordcmp(...) #1

; Function Attrs: nounwind uwtable
define internal void @_W_copybol(%struct._W_bolstruct* %to, %struct._W_bolstruct* %from) #0 {
entry:
  %to.addr = alloca %struct._W_bolstruct*, align 8
  %from.addr = alloca %struct._W_bolstruct*, align 8
  store %struct._W_bolstruct* %to, %struct._W_bolstruct** %to.addr, align 8
  store %struct._W_bolstruct* %from, %struct._W_bolstruct** %from.addr, align 8
  %0 = load %struct._W_bolstruct*, %struct._W_bolstruct** %to.addr, align 8
  %begin = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %begin, i32 0, i32 0
  %1 = load %struct._W_bolstruct*, %struct._W_bolstruct** %from.addr, align 8
  %begin1 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %1, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %begin1, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* %arraydecay2) #3
  %2 = load %struct._W_bolstruct*, %struct._W_bolstruct** %to.addr, align 8
  %end = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %2, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %end, i32 0, i32 0
  %3 = load %struct._W_bolstruct*, %struct._W_bolstruct** %from.addr, align 8
  %end4 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %3, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [16 x i8], [16 x i8]* %end4, i32 0, i32 0
  %call6 = call i8* @strcpy(i8* %arraydecay3, i8* %arraydecay5) #3
  %4 = load %struct._W_bolstruct*, %struct._W_bolstruct** %to.addr, align 8
  %escape = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %4, i32 0, i32 2
  %arraydecay7 = getelementptr inbounds [16 x i8], [16 x i8]* %escape, i32 0, i32 0
  %5 = load %struct._W_bolstruct*, %struct._W_bolstruct** %from.addr, align 8
  %escape8 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %5, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [16 x i8], [16 x i8]* %escape8, i32 0, i32 0
  %call10 = call i8* @strcpy(i8* %arraydecay7, i8* %arraydecay9) #3
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @W_is_bol(%struct._W_bolstruct* %ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca %struct._W_bolstruct*, align 8
  %i = alloca i32, align 4
  store %struct._W_bolstruct* %ptr, %struct._W_bolstruct** %ptr.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @_W_nextbol, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._W_bolstruct*, %struct._W_bolstruct** %ptr.addr, align 8
  %begin = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %begin, i32 0, i32 0
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_bols, i32 0, i64 %idxprom
  %begin1 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %arrayidx, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %begin1, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %arraydecay, i8* %arraydecay2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %4 = load %struct._W_bolstruct*, %struct._W_bolstruct** %ptr.addr, align 8
  %end = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %4, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %end, i32 0, i32 0
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_bols, i32 0, i64 %idxprom4
  %end6 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %arrayidx5, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [16 x i8], [16 x i8]* %end6, i32 0, i32 0
  %call8 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %arraydecay3, i8* %arraydecay7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %land.lhs.true.10

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %6 = load %struct._W_bolstruct*, %struct._W_bolstruct** %ptr.addr, align 8
  %escape = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %6, i32 0, i32 2
  %arraydecay11 = getelementptr inbounds [16 x i8], [16 x i8]* %escape, i32 0, i32 0
  %7 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds [20 x %struct._W_bolstruct], [20 x %struct._W_bolstruct]* @_W_bols, i32 0, i64 %idxprom12
  %escape14 = getelementptr inbounds %struct._W_bolstruct, %struct._W_bolstruct* %arrayidx13, i32 0, i32 2
  %arraydecay15 = getelementptr inbounds [16 x i8], [16 x i8]* %escape14, i32 0, i32 0
  %call16 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %arraydecay11, i8* %arraydecay15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.10
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.10, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define %struct._W_litstruct* @W_islit(i8* %str) #0 {
entry:
  %retval = alloca %struct._W_litstruct*, align 8
  %str.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @_W_nextlit, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [20 x %struct._W_litstruct], [20 x %struct._W_litstruct]* @_W_lits, i32 0, i64 %idxprom
  %begin = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %begin, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %2, i8* %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [20 x %struct._W_litstruct], [20 x %struct._W_litstruct]* @_W_lits, i32 0, i64 %idxprom1
  call void @_W_copylit(%struct._W_litstruct* @lit_scratch, %struct._W_litstruct* %arrayidx2)
  store %struct._W_litstruct* @lit_scratch, %struct._W_litstruct** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._W_litstruct* null, %struct._W_litstruct** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load %struct._W_litstruct*, %struct._W_litstruct** %retval
  ret %struct._W_litstruct* %6
}

; Function Attrs: nounwind uwtable
define internal void @_W_copylit(%struct._W_litstruct* %to, %struct._W_litstruct* %from) #0 {
entry:
  %to.addr = alloca %struct._W_litstruct*, align 8
  %from.addr = alloca %struct._W_litstruct*, align 8
  store %struct._W_litstruct* %to, %struct._W_litstruct** %to.addr, align 8
  store %struct._W_litstruct* %from, %struct._W_litstruct** %from.addr, align 8
  %0 = load %struct._W_litstruct*, %struct._W_litstruct** %to.addr, align 8
  %begin = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %begin, i32 0, i32 0
  %1 = load %struct._W_litstruct*, %struct._W_litstruct** %from.addr, align 8
  %begin1 = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %1, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %begin1, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* %arraydecay2) #3
  %2 = load %struct._W_litstruct*, %struct._W_litstruct** %to.addr, align 8
  %end = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %2, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %end, i32 0, i32 0
  %3 = load %struct._W_litstruct*, %struct._W_litstruct** %from.addr, align 8
  %end4 = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %3, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [16 x i8], [16 x i8]* %end4, i32 0, i32 0
  %call6 = call i8* @strcpy(i8* %arraydecay3, i8* %arraydecay5) #3
  %4 = load %struct._W_litstruct*, %struct._W_litstruct** %to.addr, align 8
  %escape = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %4, i32 0, i32 2
  %arraydecay7 = getelementptr inbounds [16 x i8], [16 x i8]* %escape, i32 0, i32 0
  %5 = load %struct._W_litstruct*, %struct._W_litstruct** %from.addr, align 8
  %escape8 = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %5, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [16 x i8], [16 x i8]* %escape8, i32 0, i32 0
  %call10 = call i8* @strcpy(i8* %arraydecay7, i8* %arraydecay9) #3
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @W_is_lit(%struct._W_litstruct* %ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca %struct._W_litstruct*, align 8
  %i = alloca i32, align 4
  store %struct._W_litstruct* %ptr, %struct._W_litstruct** %ptr.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @_W_nextlit, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._W_litstruct*, %struct._W_litstruct** %ptr.addr, align 8
  %begin = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %begin, i32 0, i32 0
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [20 x %struct._W_litstruct], [20 x %struct._W_litstruct]* @_W_lits, i32 0, i64 %idxprom
  %begin1 = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %arrayidx, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %begin1, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %arraydecay, i8* %arraydecay2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %4 = load %struct._W_litstruct*, %struct._W_litstruct** %ptr.addr, align 8
  %end = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %4, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %end, i32 0, i32 0
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [20 x %struct._W_litstruct], [20 x %struct._W_litstruct]* @_W_lits, i32 0, i64 %idxprom4
  %end6 = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %arrayidx5, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [16 x i8], [16 x i8]* %end6, i32 0, i32 0
  %call8 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %arraydecay3, i8* %arraydecay7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %land.lhs.true.10

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %6 = load %struct._W_litstruct*, %struct._W_litstruct** %ptr.addr, align 8
  %escape = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %6, i32 0, i32 2
  %arraydecay11 = getelementptr inbounds [16 x i8], [16 x i8]* %escape, i32 0, i32 0
  %7 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds [20 x %struct._W_litstruct], [20 x %struct._W_litstruct]* @_W_lits, i32 0, i64 %idxprom12
  %escape14 = getelementptr inbounds %struct._W_litstruct, %struct._W_litstruct* %arrayidx13, i32 0, i32 2
  %arraydecay15 = getelementptr inbounds [16 x i8], [16 x i8]* %escape14, i32 0, i32 0
  %call16 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %arraydecay11, i8* %arraydecay15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.10
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.10, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define %struct._W_comstruct* @W_iscom(i8* %str) #0 {
entry:
  %retval = alloca %struct._W_comstruct*, align 8
  %str.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @_W_nextcom, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i32 0, i64 %idxprom
  %begin = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %begin, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %2, i8* %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i32 0, i64 %idxprom1
  call void @_W_copycom(%struct._W_comstruct* @com_scratch, %struct._W_comstruct* %arrayidx2)
  store %struct._W_comstruct* @com_scratch, %struct._W_comstruct** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._W_comstruct* null, %struct._W_comstruct** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load %struct._W_comstruct*, %struct._W_comstruct** %retval
  ret %struct._W_comstruct* %6
}

; Function Attrs: nounwind uwtable
define internal void @_W_copycom(%struct._W_comstruct* %to, %struct._W_comstruct* %from) #0 {
entry:
  %to.addr = alloca %struct._W_comstruct*, align 8
  %from.addr = alloca %struct._W_comstruct*, align 8
  store %struct._W_comstruct* %to, %struct._W_comstruct** %to.addr, align 8
  store %struct._W_comstruct* %from, %struct._W_comstruct** %from.addr, align 8
  %0 = load %struct._W_comstruct*, %struct._W_comstruct** %to.addr, align 8
  %begin = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %begin, i32 0, i32 0
  %1 = load %struct._W_comstruct*, %struct._W_comstruct** %from.addr, align 8
  %begin1 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %1, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %begin1, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* %arraydecay2) #3
  %2 = load %struct._W_comstruct*, %struct._W_comstruct** %to.addr, align 8
  %end = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %2, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %end, i32 0, i32 0
  %3 = load %struct._W_comstruct*, %struct._W_comstruct** %from.addr, align 8
  %end4 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %3, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [16 x i8], [16 x i8]* %end4, i32 0, i32 0
  %call6 = call i8* @strcpy(i8* %arraydecay3, i8* %arraydecay5) #3
  %4 = load %struct._W_comstruct*, %struct._W_comstruct** %to.addr, align 8
  %escape = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %4, i32 0, i32 2
  %arraydecay7 = getelementptr inbounds [16 x i8], [16 x i8]* %escape, i32 0, i32 0
  %5 = load %struct._W_comstruct*, %struct._W_comstruct** %from.addr, align 8
  %escape8 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %5, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [16 x i8], [16 x i8]* %escape8, i32 0, i32 0
  %call10 = call i8* @strcpy(i8* %arraydecay7, i8* %arraydecay9) #3
  %6 = load %struct._W_comstruct*, %struct._W_comstruct** %from.addr, align 8
  %nestbit = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %6, i32 0, i32 3
  %7 = load i32, i32* %nestbit, align 4
  %8 = load %struct._W_comstruct*, %struct._W_comstruct** %to.addr, align 8
  %nestbit11 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %8, i32 0, i32 3
  store i32 %7, i32* %nestbit11, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @W_is_com(%struct._W_comstruct* %ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca %struct._W_comstruct*, align 8
  %i = alloca i32, align 4
  store %struct._W_comstruct* %ptr, %struct._W_comstruct** %ptr.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @_W_nextcom, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._W_comstruct*, %struct._W_comstruct** %ptr.addr, align 8
  %begin = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %begin, i32 0, i32 0
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i32 0, i64 %idxprom
  %begin1 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %arrayidx, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %begin1, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %arraydecay, i8* %arraydecay2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %4 = load %struct._W_comstruct*, %struct._W_comstruct** %ptr.addr, align 8
  %end = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %4, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %end, i32 0, i32 0
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i32 0, i64 %idxprom4
  %end6 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %arrayidx5, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [16 x i8], [16 x i8]* %end6, i32 0, i32 0
  %call8 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %arraydecay3, i8* %arraydecay7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %land.lhs.true.10

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %6 = load %struct._W_comstruct*, %struct._W_comstruct** %ptr.addr, align 8
  %escape = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %6, i32 0, i32 2
  %arraydecay11 = getelementptr inbounds [16 x i8], [16 x i8]* %escape, i32 0, i32 0
  %7 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i32 0, i64 %idxprom12
  %escape14 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %arrayidx13, i32 0, i32 2
  %arraydecay15 = getelementptr inbounds [16 x i8], [16 x i8]* %escape14, i32 0, i32 0
  %call16 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* %arraydecay11, i8* %arraydecay15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end, label %land.lhs.true.18

land.lhs.true.18:                                 ; preds = %land.lhs.true.10
  %8 = load %struct._W_comstruct*, %struct._W_comstruct** %ptr.addr, align 8
  %nestbit = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %8, i32 0, i32 3
  %9 = load i32, i32* %nestbit, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds [20 x %struct._W_comstruct], [20 x %struct._W_comstruct]* @_W_coms, i32 0, i64 %idxprom19
  %nestbit21 = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %arrayidx20, i32 0, i32 3
  %11 = load i32, i32* %nestbit21, align 4
  %cmp22 = icmp eq i32 %9, %11
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.18
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.18, %land.lhs.true.10, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @W_is_nesting(%struct._W_comstruct* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct._W_comstruct*, align 8
  store %struct._W_comstruct* %ptr, %struct._W_comstruct** %ptr.addr, align 8
  %0 = load %struct._W_comstruct*, %struct._W_comstruct** %ptr.addr, align 8
  %nestbit = getelementptr inbounds %struct._W_comstruct, %struct._W_comstruct* %0, i32 0, i32 3
  %1 = load i32, i32* %nestbit, align 4
  ret i32 %1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
