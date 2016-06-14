; ModuleID = 'hsregex.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sqd_regexp = type { [10 x i8*], [10 x i8*], i8, i8, i8*, i32, [1 x i8] }
%struct.comp = type { i8*, i32, i8*, [3 x i8], i64 }
%struct.exec = type { i8*, i8*, i8**, i8** }

@.str = private unnamed_addr constant [31 x i8] c"Strparse(): ntok must be <= %d\00", align 1
@sqd_parse = common global [10 x i8*] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [27 x i8] c"regexp compilation failed.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"hsregex.c\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"NULL argument to sqd_regcomp\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"regexp too big\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"out of space\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"NULL argument to sqd_regexec\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"corrupted regexp\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"NULL parameter to sqd_regsub\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"damaged regexp\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"damaged match string\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"regexp(3): %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"too many ()\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"unterminated ()\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"unmatched ()\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"internal error: junk on end\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"*+ operand could be empty\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"nested *?+\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"invalid [] range\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"unmatched []\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"internal error: \5C0|) unexpected\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"?+* follows nothing\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"trailing \5C\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"^$.[()|?+*\5C\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"internal error: strcspn 0\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"regexp corruption\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"corrupted pointers\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"internal error: bad call of regrepeat\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Strparse(i8* %rexp, i8* %s, i32 %ntok) #0 {
entry:
  %rexp.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %ntok.addr = alloca i32, align 4
  %pat = alloca %struct.sqd_regexp*, align 8
  %code = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %rexp, i8** %rexp.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %ntok, i32* %ntok.addr, align 4
  %0 = load i32, i32* %ntok.addr, align 4
  %cmp = icmp sge i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i32 9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %ntok.addr, align 4
  %cmp1 = icmp sle i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* @sqd_parse, i32 0, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %cmp2 = icmp ne i8* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [10 x i8*], [10 x i8*]* @sqd_parse, i32 0, i64 %idxprom4
  %6 = load i8*, i8** %arrayidx5, align 8
  call void @free(i8* %6) #6
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [10 x i8*], [10 x i8*]* @sqd_parse, i32 0, i64 %idxprom6
  store i8* null, i8** %arrayidx7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i8*, i8** %rexp.addr, align 8
  %call = call %struct.sqd_regexp* @sqd_regcomp(i8* %9)
  store %struct.sqd_regexp* %call, %struct.sqd_regexp** %pat, align 8
  %cmp9 = icmp eq %struct.sqd_regexp* %call, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.end
  %10 = load %struct.sqd_regexp*, %struct.sqd_regexp** %pat, align 8
  %11 = load i8*, i8** %s.addr, align 8
  %call12 = call i32 @sqd_regexec(%struct.sqd_regexp* %10, i8* %11)
  store i32 %call12, i32* %code, align 4
  %12 = load i32, i32* %code, align 4
  %cmp13 = icmp eq i32 %12, 1
  br i1 %cmp13, label %if.then.14, label %if.end.50

if.then.14:                                       ; preds = %if.end.11
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.47, %if.then.14
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %ntok.addr, align 4
  %cmp16 = icmp sle i32 %13, %14
  br i1 %cmp16, label %for.body.17, label %for.end.49

for.body.17:                                      ; preds = %for.cond.15
  %15 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %15 to i64
  %16 = load %struct.sqd_regexp*, %struct.sqd_regexp** %pat, align 8
  %startp = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %16, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [10 x i8*], [10 x i8*]* %startp, i32 0, i64 %idxprom18
  %17 = load i8*, i8** %arrayidx19, align 8
  %cmp20 = icmp ne i8* %17, null
  br i1 %cmp20, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %for.body.17
  %18 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %18 to i64
  %19 = load %struct.sqd_regexp*, %struct.sqd_regexp** %pat, align 8
  %endp = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %19, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [10 x i8*], [10 x i8*]* %endp, i32 0, i64 %idxprom21
  %20 = load i8*, i8** %arrayidx22, align 8
  %cmp23 = icmp ne i8* %20, null
  br i1 %cmp23, label %if.then.24, label %if.end.46

if.then.24:                                       ; preds = %land.lhs.true
  %21 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %21 to i64
  %22 = load %struct.sqd_regexp*, %struct.sqd_regexp** %pat, align 8
  %endp26 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %22, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [10 x i8*], [10 x i8*]* %endp26, i32 0, i64 %idxprom25
  %23 = load i8*, i8** %arrayidx27, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %24 to i64
  %25 = load %struct.sqd_regexp*, %struct.sqd_regexp** %pat, align 8
  %startp29 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %25, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [10 x i8*], [10 x i8*]* %startp29, i32 0, i64 %idxprom28
  %26 = load i8*, i8** %arrayidx30, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %len, align 4
  %27 = load i32, i32* %len, align 4
  %add = add nsw i32 %27, 1
  %conv31 = sext i32 %add to i64
  %mul = mul i64 1, %conv31
  %call32 = call i8* @sre_malloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 124, i64 %mul)
  %28 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %28 to i64
  %arrayidx34 = getelementptr inbounds [10 x i8*], [10 x i8*]* @sqd_parse, i32 0, i64 %idxprom33
  store i8* %call32, i8** %arrayidx34, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %29 to i64
  %arrayidx36 = getelementptr inbounds [10 x i8*], [10 x i8*]* @sqd_parse, i32 0, i64 %idxprom35
  %30 = load i8*, i8** %arrayidx36, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %31 to i64
  %32 = load %struct.sqd_regexp*, %struct.sqd_regexp** %pat, align 8
  %startp38 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %32, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [10 x i8*], [10 x i8*]* %startp38, i32 0, i64 %idxprom37
  %33 = load i8*, i8** %arrayidx39, align 8
  %34 = load i32, i32* %len, align 4
  %conv40 = sext i32 %34 to i64
  %call41 = call i8* @strncpy(i8* %30, i8* %33, i64 %conv40) #6
  %35 = load i32, i32* %len, align 4
  %idxprom42 = sext i32 %35 to i64
  %36 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %36 to i64
  %arrayidx44 = getelementptr inbounds [10 x i8*], [10 x i8*]* @sqd_parse, i32 0, i64 %idxprom43
  %37 = load i8*, i8** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %37, i64 %idxprom42
  store i8 0, i8* %arrayidx45, align 1
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.24, %land.lhs.true, %for.body.17
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %38 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %38, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.15

for.end.49:                                       ; preds = %for.cond.15
  br label %if.end.50

if.end.50:                                        ; preds = %for.end.49, %if.end.11
  %39 = load %struct.sqd_regexp*, %struct.sqd_regexp** %pat, align 8
  %40 = bitcast %struct.sqd_regexp* %39 to i8*
  call void @free(i8* %40) #6
  %41 = load i32, i32* %code, align 4
  ret i32 %41
}

declare void @Die(i8*, ...) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.sqd_regexp* @sqd_regcomp(i8* %exp) #0 {
entry:
  %retval = alloca %struct.sqd_regexp*, align 8
  %exp.addr = alloca i8*, align 8
  %r = alloca %struct.sqd_regexp*, align 8
  %scan = alloca i8*, align 8
  %flags = alloca i32, align 4
  %co = alloca %struct.comp, align 8
  %longest = alloca i8*, align 8
  %len = alloca i64, align 8
  store i8* %exp, i8** %exp.addr, align 8
  %0 = load i8*, i8** %exp.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @sqd_regerror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0))
  store %struct.sqd_regexp* null, %struct.sqd_regexp** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %exp.addr, align 8
  %regparse = getelementptr inbounds %struct.comp, %struct.comp* %co, i32 0, i32 0
  store i8* %1, i8** %regparse, align 8
  %regnpar = getelementptr inbounds %struct.comp, %struct.comp* %co, i32 0, i32 1
  store i32 1, i32* %regnpar, align 4
  %regsize = getelementptr inbounds %struct.comp, %struct.comp* %co, i32 0, i32 4
  store i64 0, i64* %regsize, align 8
  %regdummy = getelementptr inbounds %struct.comp, %struct.comp* %co, i32 0, i32 3
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %regdummy, i32 0, i64 0
  store i8 9, i8* %arrayidx, align 1
  %regdummy1 = getelementptr inbounds %struct.comp, %struct.comp* %co, i32 0, i32 3
  %arrayidx2 = getelementptr inbounds [3 x i8], [3 x i8]* %regdummy1, i32 0, i64 2
  store i8 0, i8* %arrayidx2, align 1
  %regdummy3 = getelementptr inbounds %struct.comp, %struct.comp* %co, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [3 x i8], [3 x i8]* %regdummy3, i32 0, i64 1
  store i8 0, i8* %arrayidx4, align 1
  %regdummy5 = getelementptr inbounds %struct.comp, %struct.comp* %co, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %regdummy5, i32 0, i32 0
  %regcode = getelementptr inbounds %struct.comp, %struct.comp* %co, i32 0, i32 2
  store i8* %arraydecay, i8** %regcode, align 8
  call void @regc(%struct.comp* %co, i32 156)
  %call = call i8* @reg(%struct.comp* %co, i32 0, i32* %flags)
  %cmp6 = icmp eq i8* %call, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store %struct.sqd_regexp* null, %struct.sqd_regexp** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %regsize9 = getelementptr inbounds %struct.comp, %struct.comp* %co, i32 0, i32 4
  %2 = load i64, i64* %regsize9, align 8
  %cmp10 = icmp sge i64 %2, 32767
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  call void @sqd_regerror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0))
  store %struct.sqd_regexp* null, %struct.sqd_regexp** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %regsize13 = getelementptr inbounds %struct.comp, %struct.comp* %co, i32 0, i32 4
  %3 = load i64, i64* %regsize13, align 8
  %add = add i64 184, %3
  %call14 = call noalias i8* @malloc(i64 %add) #6
  %4 = bitcast i8* %call14 to %struct.sqd_regexp*
  store %struct.sqd_regexp* %4, %struct.sqd_regexp** %r, align 8
  %5 = load %struct.sqd_regexp*, %struct.sqd_regexp** %r, align 8
  %cmp15 = icmp eq %struct.sqd_regexp* %5, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  call void @sqd_regerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  store %struct.sqd_regexp* null, %struct.sqd_regexp** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  %6 = load i8*, i8** %exp.addr, align 8
  %regparse18 = getelementptr inbounds %struct.comp, %struct.comp* %co, i32 0, i32 0
  store i8* %6, i8** %regparse18, align 8
  %regnpar19 = getelementptr inbounds %struct.comp, %struct.comp* %co, i32 0, i32 1
  store i32 1, i32* %regnpar19, align 4
  %7 = load %struct.sqd_regexp*, %struct.sqd_regexp** %r, align 8
  %program = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %7, i32 0, i32 6
  %arraydecay20 = getelementptr inbounds [1 x i8], [1 x i8]* %program, i32 0, i32 0
  %regcode21 = getelementptr inbounds %struct.comp, %struct.comp* %co, i32 0, i32 2
  store i8* %arraydecay20, i8** %regcode21, align 8
  call void @regc(%struct.comp* %co, i32 156)
  %call22 = call i8* @reg(%struct.comp* %co, i32 0, i32* %flags)
  %cmp23 = icmp eq i8* %call22, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.17
  store %struct.sqd_regexp* null, %struct.sqd_regexp** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.17
  %8 = load %struct.sqd_regexp*, %struct.sqd_regexp** %r, align 8
  %regstart = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %8, i32 0, i32 2
  store i8 0, i8* %regstart, align 1
  %9 = load %struct.sqd_regexp*, %struct.sqd_regexp** %r, align 8
  %reganch = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %9, i32 0, i32 3
  store i8 0, i8* %reganch, align 1
  %10 = load %struct.sqd_regexp*, %struct.sqd_regexp** %r, align 8
  %regmust = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %10, i32 0, i32 4
  store i8* null, i8** %regmust, align 8
  %11 = load %struct.sqd_regexp*, %struct.sqd_regexp** %r, align 8
  %regmlen = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %11, i32 0, i32 5
  store i32 0, i32* %regmlen, align 4
  %12 = load %struct.sqd_regexp*, %struct.sqd_regexp** %r, align 8
  %program26 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %12, i32 0, i32 6
  %arraydecay27 = getelementptr inbounds [1 x i8], [1 x i8]* %program26, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay27, i64 1
  store i8* %add.ptr, i8** %scan, align 8
  %13 = load i8*, i8** %scan, align 8
  %call28 = call i8* @regnext(i8* %13)
  %14 = load i8, i8* %call28, align 1
  %conv = sext i8 %14 to i32
  %cmp29 = icmp eq i32 %conv, 0
  br i1 %cmp29, label %if.then.31, label %if.end.66

if.then.31:                                       ; preds = %if.end.25
  %15 = load i8*, i8** %scan, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %15, i64 3
  store i8* %add.ptr32, i8** %scan, align 8
  %16 = load i8*, i8** %scan, align 8
  %17 = load i8, i8* %16, align 1
  %conv33 = sext i8 %17 to i32
  %cmp34 = icmp eq i32 %conv33, 8
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.then.31
  %18 = load i8*, i8** %scan, align 8
  %add.ptr37 = getelementptr inbounds i8, i8* %18, i64 3
  %19 = load i8, i8* %add.ptr37, align 1
  %20 = load %struct.sqd_regexp*, %struct.sqd_regexp** %r, align 8
  %regstart38 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %20, i32 0, i32 2
  store i8 %19, i8* %regstart38, align 1
  br label %if.end.45

if.else:                                          ; preds = %if.then.31
  %21 = load i8*, i8** %scan, align 8
  %22 = load i8, i8* %21, align 1
  %conv39 = sext i8 %22 to i32
  %cmp40 = icmp eq i32 %conv39, 1
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.else
  %23 = load %struct.sqd_regexp*, %struct.sqd_regexp** %r, align 8
  %reganch43 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %23, i32 0, i32 3
  store i8 1, i8* %reganch43, align 1
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.else
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.36
  %24 = load i32, i32* %flags, align 4
  %and = and i32 %24, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.46, label %if.end.65

if.then.46:                                       ; preds = %if.end.45
  store i8* null, i8** %longest, align 8
  store i64 0, i64* %len, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.46
  %25 = load i8*, i8** %scan, align 8
  %cmp47 = icmp ne i8* %25, null
  br i1 %cmp47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i8*, i8** %scan, align 8
  %27 = load i8, i8* %26, align 1
  %conv49 = sext i8 %27 to i32
  %cmp50 = icmp eq i32 %conv49, 8
  br i1 %cmp50, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %for.body
  %28 = load i8*, i8** %scan, align 8
  %add.ptr52 = getelementptr inbounds i8, i8* %28, i64 3
  %call53 = call i64 @strlen(i8* %add.ptr52) #7
  %29 = load i64, i64* %len, align 8
  %cmp54 = icmp uge i64 %call53, %29
  br i1 %cmp54, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %land.lhs.true
  %30 = load i8*, i8** %scan, align 8
  %add.ptr57 = getelementptr inbounds i8, i8* %30, i64 3
  store i8* %add.ptr57, i8** %longest, align 8
  %31 = load i8*, i8** %scan, align 8
  %add.ptr58 = getelementptr inbounds i8, i8* %31, i64 3
  %call59 = call i64 @strlen(i8* %add.ptr58) #7
  store i64 %call59, i64* %len, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.56, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %32 = load i8*, i8** %scan, align 8
  %call61 = call i8* @regnext(i8* %32)
  store i8* %call61, i8** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i8*, i8** %longest, align 8
  %34 = load %struct.sqd_regexp*, %struct.sqd_regexp** %r, align 8
  %regmust62 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %34, i32 0, i32 4
  store i8* %33, i8** %regmust62, align 8
  %35 = load i64, i64* %len, align 8
  %conv63 = trunc i64 %35 to i32
  %36 = load %struct.sqd_regexp*, %struct.sqd_regexp** %r, align 8
  %regmlen64 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %36, i32 0, i32 5
  store i32 %conv63, i32* %regmlen64, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %for.end, %if.end.45
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.25
  %37 = load %struct.sqd_regexp*, %struct.sqd_regexp** %r, align 8
  store %struct.sqd_regexp* %37, %struct.sqd_regexp** %retval
  br label %return

return:                                           ; preds = %if.end.66, %if.then.24, %if.then.16, %if.then.11, %if.then.7, %if.then
  %38 = load %struct.sqd_regexp*, %struct.sqd_regexp** %retval
  ret %struct.sqd_regexp* %38
}

; Function Attrs: nounwind uwtable
define i32 @sqd_regexec(%struct.sqd_regexp* %prog, i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %prog.addr = alloca %struct.sqd_regexp*, align 8
  %str.addr = alloca i8*, align 8
  %string = alloca i8*, align 8
  %s = alloca i8*, align 8
  %ex = alloca %struct.exec, align 8
  store %struct.sqd_regexp* %prog, %struct.sqd_regexp** %prog.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %string, align 8
  %1 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog.addr, align 8
  %cmp = icmp eq %struct.sqd_regexp* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %string, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @sqd_regerror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog.addr, align 8
  %program = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %3, i32 0, i32 6
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %program, i32 0, i32 0
  %4 = load i8, i8* %arraydecay, align 1
  %conv = zext i8 %4 to i32
  %cmp2 = icmp ne i32 %conv, 156
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @sqd_regerror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog.addr, align 8
  %regmust = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %5, i32 0, i32 4
  %6 = load i8*, i8** %regmust, align 8
  %cmp6 = icmp ne i8* %6, null
  br i1 %cmp6, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end.5
  %7 = load i8*, i8** %string, align 8
  %8 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog.addr, align 8
  %regmust8 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %8, i32 0, i32 4
  %9 = load i8*, i8** %regmust8, align 8
  %call = call i8* @strstr(i8* %7, i8* %9) #7
  %cmp9 = icmp eq i8* %call, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %if.end.5
  %10 = load i8*, i8** %string, align 8
  %regbol = getelementptr inbounds %struct.exec, %struct.exec* %ex, i32 0, i32 1
  store i8* %10, i8** %regbol, align 8
  %11 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog.addr, align 8
  %startp = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %11, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [10 x i8*], [10 x i8*]* %startp, i32 0, i32 0
  %regstartp = getelementptr inbounds %struct.exec, %struct.exec* %ex, i32 0, i32 2
  store i8** %arraydecay13, i8*** %regstartp, align 8
  %12 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog.addr, align 8
  %endp = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %12, i32 0, i32 1
  %arraydecay14 = getelementptr inbounds [10 x i8*], [10 x i8*]* %endp, i32 0, i32 0
  %regendp = getelementptr inbounds %struct.exec, %struct.exec* %ex, i32 0, i32 3
  store i8** %arraydecay14, i8*** %regendp, align 8
  %13 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog.addr, align 8
  %reganch = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %13, i32 0, i32 3
  %14 = load i8, i8* %reganch, align 1
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  %15 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog.addr, align 8
  %16 = load i8*, i8** %string, align 8
  %call16 = call i32 @regtry(%struct.exec* %ex, %struct.sqd_regexp* %15, i8* %16)
  store i32 %call16, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  %17 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog.addr, align 8
  %regstart = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %17, i32 0, i32 2
  %18 = load i8, i8* %regstart, align 1
  %conv18 = sext i8 %18 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.17
  %19 = load i8*, i8** %string, align 8
  store i8* %19, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.21
  %20 = load i8*, i8** %s, align 8
  %cmp22 = icmp ne i8* %20, null
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog.addr, align 8
  %22 = load i8*, i8** %s, align 8
  %call24 = call i32 @regtry(%struct.exec* %ex, %struct.sqd_regexp* %21, i8* %22)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %23 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog.addr, align 8
  %regstart28 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %24, i32 0, i32 2
  %25 = load i8, i8* %regstart28, align 1
  %conv29 = sext i8 %25 to i32
  %call30 = call i8* @strchr(i8* %add.ptr, i32 %conv29) #7
  store i8* %call30, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.17
  %26 = load i8*, i8** %string, align 8
  store i8* %26, i8** %s, align 8
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.40, %if.else
  %27 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog.addr, align 8
  %28 = load i8*, i8** %s, align 8
  %call32 = call i32 @regtry(%struct.exec* %ex, %struct.sqd_regexp* %27, i8* %28)
  %tobool33 = icmp ne i32 %call32, 0
  %lnot = xor i1 %tobool33, true
  br i1 %lnot, label %for.body.34, label %for.end.41

for.body.34:                                      ; preds = %for.cond.31
  %29 = load i8*, i8** %s, align 8
  %30 = load i8, i8* %29, align 1
  %conv35 = sext i8 %30 to i32
  %cmp36 = icmp eq i32 %conv35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.body.34
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %for.body.34
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %31 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond.31

for.end.41:                                       ; preds = %for.cond.31
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.41, %if.then.38, %for.end, %if.then.26, %if.then.15, %if.then.11, %if.then.4, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @SqdClean() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* @sqd_parse, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [10 x i8*], [10 x i8*]* @sqd_parse, i32 0, i64 %idxprom2
  %4 = load i8*, i8** %arrayidx3, align 8
  call void @free(i8* %4) #6
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [10 x i8*], [10 x i8*]* @sqd_parse, i32 0, i64 %idxprom4
  store i8* null, i8** %arrayidx5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @sqd_regerror(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* %1)
  call void @exit(i32 1) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @regc(%struct.comp* %cp, i32) #0 {
entry:
  %cp.addr = alloca %struct.comp*, align 8
  %b.addr = alloca i8, align 1
  %b = trunc i32 %0 to i8
  store %struct.comp* %cp, %struct.comp** %cp.addr, align 8
  store i8 %b, i8* %b.addr, align 1
  %1 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regcode = getelementptr inbounds %struct.comp, %struct.comp* %1, i32 0, i32 2
  %2 = load i8*, i8** %regcode, align 8
  %3 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regdummy = getelementptr inbounds %struct.comp, %struct.comp* %3, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %regdummy, i32 0, i32 0
  %cmp = icmp ne i8* %2, %arraydecay
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %b.addr, align 1
  %5 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regcode1 = getelementptr inbounds %struct.comp, %struct.comp* %5, i32 0, i32 2
  %6 = load i8*, i8** %regcode1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %regcode1, align 8
  store i8 %4, i8* %6, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regsize = getelementptr inbounds %struct.comp, %struct.comp* %7, i32 0, i32 4
  %8 = load i64, i64* %regsize, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %regsize, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @reg(%struct.comp* %cp, i32 %paren, i32* %flagp) #0 {
entry:
  %retval = alloca i8*, align 8
  %cp.addr = alloca %struct.comp*, align 8
  %paren.addr = alloca i32, align 4
  %flagp.addr = alloca i32*, align 8
  %ret = alloca i8*, align 8
  %br = alloca i8*, align 8
  %ender = alloca i8*, align 8
  %parno = alloca i32, align 4
  %flags = alloca i32, align 4
  store %struct.comp* %cp, %struct.comp** %cp.addr, align 8
  store i32 %paren, i32* %paren.addr, align 4
  store i32* %flagp, i32** %flagp.addr, align 8
  store i8* null, i8** %ret, align 8
  store i32 0, i32* %parno, align 4
  %0 = load i32*, i32** %flagp.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load i32, i32* %paren.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regnpar = getelementptr inbounds %struct.comp, %struct.comp* %2, i32 0, i32 1
  %3 = load i32, i32* %regnpar, align 4
  %cmp = icmp sge i32 %3, 10
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  call void @sqd_regerror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regnpar2 = getelementptr inbounds %struct.comp, %struct.comp* %4, i32 0, i32 1
  %5 = load i32, i32* %regnpar2, align 4
  store i32 %5, i32* %parno, align 4
  %6 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regnpar3 = getelementptr inbounds %struct.comp, %struct.comp* %6, i32 0, i32 1
  %7 = load i32, i32* %regnpar3, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %regnpar3, align 4
  %8 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %9 = load i32, i32* %parno, align 4
  %add = add nsw i32 20, %9
  %call = call i8* @regnode(%struct.comp* %8, i32 %add)
  store i8* %call, i8** %ret, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %10 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call5 = call i8* @regbranch(%struct.comp* %10, i32* %flags)
  store i8* %call5, i8** %br, align 8
  %11 = load i8*, i8** %br, align 8
  %cmp6 = icmp eq i8* %11, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i8* null, i8** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %12 = load i32, i32* %paren.addr, align 4
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.8
  %13 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %14 = load i8*, i8** %ret, align 8
  %15 = load i8*, i8** %br, align 8
  call void @regtail(%struct.comp* %13, i8* %14, i8* %15)
  br label %if.end.11

if.else:                                          ; preds = %if.end.8
  %16 = load i8*, i8** %br, align 8
  store i8* %16, i8** %ret, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %17 = load i32, i32* %flags, align 4
  %neg = xor i32 %17, -1
  %and = and i32 %neg, 1
  %neg12 = xor i32 %and, -1
  %18 = load i32*, i32** %flagp.addr, align 8
  %19 = load i32, i32* %18, align 4
  %and13 = and i32 %19, %neg12
  store i32 %and13, i32* %18, align 4
  %20 = load i32, i32* %flags, align 4
  %and14 = and i32 %20, 4
  %21 = load i32*, i32** %flagp.addr, align 8
  %22 = load i32, i32* %21, align 4
  %or = or i32 %22, %and14
  store i32 %or, i32* %21, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %if.end.11
  %23 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse = getelementptr inbounds %struct.comp, %struct.comp* %23, i32 0, i32 0
  %24 = load i8*, i8** %regparse, align 8
  %25 = load i8, i8* %24, align 1
  %conv = sext i8 %25 to i32
  %cmp15 = icmp eq i32 %conv, 124
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse17 = getelementptr inbounds %struct.comp, %struct.comp* %26, i32 0, i32 0
  %27 = load i8*, i8** %regparse17, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %regparse17, align 8
  %28 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call18 = call i8* @regbranch(%struct.comp* %28, i32* %flags)
  store i8* %call18, i8** %br, align 8
  %29 = load i8*, i8** %br, align 8
  %cmp19 = icmp eq i8* %29, null
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %while.body
  store i8* null, i8** %retval
  br label %return

if.end.22:                                        ; preds = %while.body
  %30 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %31 = load i8*, i8** %ret, align 8
  %32 = load i8*, i8** %br, align 8
  call void @regtail(%struct.comp* %30, i8* %31, i8* %32)
  %33 = load i32, i32* %flags, align 4
  %neg23 = xor i32 %33, -1
  %and24 = and i32 %neg23, 1
  %neg25 = xor i32 %and24, -1
  %34 = load i32*, i32** %flagp.addr, align 8
  %35 = load i32, i32* %34, align 4
  %and26 = and i32 %35, %neg25
  store i32 %and26, i32* %34, align 4
  %36 = load i32, i32* %flags, align 4
  %and27 = and i32 %36, 4
  %37 = load i32*, i32** %flagp.addr, align 8
  %38 = load i32, i32* %37, align 4
  %or28 = or i32 %38, %and27
  store i32 %or28, i32* %37, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %40 = load i32, i32* %paren.addr, align 4
  %tobool29 = icmp ne i32 %40, 0
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %41 = load i32, i32* %parno, align 4
  %add30 = add nsw i32 30, %41
  br label %cond.end

cond.false:                                       ; preds = %while.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add30, %cond.true ], [ 0, %cond.false ]
  %call31 = call i8* @regnode(%struct.comp* %39, i32 %cond)
  store i8* %call31, i8** %ender, align 8
  %42 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %43 = load i8*, i8** %ret, align 8
  %44 = load i8*, i8** %ender, align 8
  call void @regtail(%struct.comp* %42, i8* %43, i8* %44)
  %45 = load i8*, i8** %ret, align 8
  store i8* %45, i8** %br, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %46 = load i8*, i8** %br, align 8
  %cmp32 = icmp ne i8* %46, null
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %48 = load i8*, i8** %br, align 8
  %49 = load i8*, i8** %ender, align 8
  call void @regoptail(%struct.comp* %47, i8* %48, i8* %49)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i8*, i8** %br, align 8
  %call34 = call i8* @regnext(i8* %50)
  store i8* %call34, i8** %br, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i32, i32* %paren.addr, align 4
  %tobool35 = icmp ne i32 %51, 0
  br i1 %tobool35, label %land.lhs.true, label %if.else.42

land.lhs.true:                                    ; preds = %for.end
  %52 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse36 = getelementptr inbounds %struct.comp, %struct.comp* %52, i32 0, i32 0
  %53 = load i8*, i8** %regparse36, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr37, i8** %regparse36, align 8
  %54 = load i8, i8* %53, align 1
  %conv38 = sext i8 %54 to i32
  %cmp39 = icmp ne i32 %conv38, 41
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %land.lhs.true
  call void @sqd_regerror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.else.42:                                       ; preds = %land.lhs.true, %for.end
  %55 = load i32, i32* %paren.addr, align 4
  %tobool43 = icmp ne i32 %55, 0
  br i1 %tobool43, label %if.end.56, label %land.lhs.true.44

land.lhs.true.44:                                 ; preds = %if.else.42
  %56 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse45 = getelementptr inbounds %struct.comp, %struct.comp* %56, i32 0, i32 0
  %57 = load i8*, i8** %regparse45, align 8
  %58 = load i8, i8* %57, align 1
  %conv46 = sext i8 %58 to i32
  %cmp47 = icmp ne i32 %conv46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.56

if.then.49:                                       ; preds = %land.lhs.true.44
  %59 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse50 = getelementptr inbounds %struct.comp, %struct.comp* %59, i32 0, i32 0
  %60 = load i8*, i8** %regparse50, align 8
  %61 = load i8, i8* %60, align 1
  %conv51 = sext i8 %61 to i32
  %cmp52 = icmp eq i32 %conv51, 41
  br i1 %cmp52, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.then.49
  call void @sqd_regerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.else.55:                                       ; preds = %if.then.49
  call void @sqd_regerror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.56:                                        ; preds = %land.lhs.true.44, %if.else.42
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56
  %62 = load i8*, i8** %ret, align 8
  store i8* %62, i8** %retval
  br label %return

return:                                           ; preds = %if.end.57, %if.else.55, %if.then.54, %if.then.41, %if.then.21, %if.then.7, %if.then.1
  %63 = load i8*, i8** %retval
  ret i8* %63
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define internal i8* @regnext(i8* %p) #0 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %offset = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %1 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %1 to i32
  %and = and i32 %conv, 127
  %shl = shl i32 %and, 8
  %2 = load i8*, i8** %p.addr, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %2, i64 2
  %3 = load i8, i8* %add.ptr1, align 1
  %conv2 = sext i8 %3 to i32
  %and3 = and i32 %conv2, 255
  %add = add nsw i32 %shl, %and3
  store i32 %add, i32* %offset, align 4
  %4 = load i32, i32* %offset, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %p.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv5, 7
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load i8*, i8** %p.addr, align 8
  %8 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %8 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr8 = getelementptr inbounds i8, i8* %7, i64 %idx.neg
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load i8*, i8** %p.addr, align 8
  %10 = load i32, i32* %offset, align 4
  %idx.ext9 = sext i32 %10 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %9, i64 %idx.ext9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr8, %cond.true ], [ %add.ptr10, %cond.false ]
  store i8* %cond, i8** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @regtry(%struct.exec* %ep, %struct.sqd_regexp* %prog, i8* %string) #0 {
entry:
  %retval = alloca i32, align 4
  %ep.addr = alloca %struct.exec*, align 8
  %prog.addr = alloca %struct.sqd_regexp*, align 8
  %string.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %stp = alloca i8**, align 8
  %enp = alloca i8**, align 8
  store %struct.exec* %ep, %struct.exec** %ep.addr, align 8
  store %struct.sqd_regexp* %prog, %struct.sqd_regexp** %prog.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %1 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput = getelementptr inbounds %struct.exec, %struct.exec* %1, i32 0, i32 0
  store i8* %0, i8** %reginput, align 8
  %2 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog.addr, align 8
  %startp = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [10 x i8*], [10 x i8*]* %startp, i32 0, i32 0
  store i8** %arraydecay, i8*** %stp, align 8
  %3 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog.addr, align 8
  %endp = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %3, i32 0, i32 1
  %arraydecay1 = getelementptr inbounds [10 x i8*], [10 x i8*]* %endp, i32 0, i32 0
  store i8** %arraydecay1, i8*** %enp, align 8
  store i32 10, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8**, i8*** %stp, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %5, i32 1
  store i8** %incdec.ptr, i8*** %stp, align 8
  store i8* null, i8** %5, align 8
  %6 = load i8**, i8*** %enp, align 8
  %incdec.ptr2 = getelementptr inbounds i8*, i8** %6, i32 1
  store i8** %incdec.ptr2, i8*** %enp, align 8
  store i8* null, i8** %6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %9 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog.addr, align 8
  %program = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %9, i32 0, i32 6
  %arraydecay3 = getelementptr inbounds [1 x i8], [1 x i8]* %program, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay3, i64 1
  %call = call i32 @regmatch(%struct.exec* %8, i8* %add.ptr)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %10 = load i8*, i8** %string.addr, align 8
  %11 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog.addr, align 8
  %startp4 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %11, i32 0, i32 0
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* %startp4, i32 0, i64 0
  store i8* %10, i8** %arrayidx, align 8
  %12 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput5 = getelementptr inbounds %struct.exec, %struct.exec* %12, i32 0, i32 0
  %13 = load i8*, i8** %reginput5, align 8
  %14 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog.addr, align 8
  %endp6 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %14, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [10 x i8*], [10 x i8*]* %endp6, i32 0, i64 0
  store i8* %13, i8** %arrayidx7, align 8
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define void @sqd_regsub(%struct.sqd_regexp* %rp, i8* %source, i8* %dest) #0 {
entry:
  %rp.addr = alloca %struct.sqd_regexp*, align 8
  %source.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %prog = alloca %struct.sqd_regexp*, align 8
  %src = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %c = alloca i8, align 1
  %no = alloca i32, align 4
  %len = alloca i64, align 8
  store %struct.sqd_regexp* %rp, %struct.sqd_regexp** %rp.addr, align 8
  store i8* %source, i8** %source.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  %0 = load %struct.sqd_regexp*, %struct.sqd_regexp** %rp.addr, align 8
  store %struct.sqd_regexp* %0, %struct.sqd_regexp** %prog, align 8
  %1 = load i8*, i8** %source.addr, align 8
  store i8* %1, i8** %src, align 8
  %2 = load i8*, i8** %dest.addr, align 8
  store i8* %2, i8** %dst, align 8
  %3 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog, align 8
  %cmp = icmp eq %struct.sqd_regexp* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %source.addr, align 8
  %cmp1 = icmp eq i8* %4, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %5 = load i8*, i8** %dest.addr, align 8
  %cmp3 = icmp eq i8* %5, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  call void @sqd_regerror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %6 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog, align 8
  %program = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %6, i32 0, i32 6
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %program, i32 0, i32 0
  %7 = load i8, i8* %arraydecay, align 1
  %conv = zext i8 %7 to i32
  %cmp4 = icmp ne i32 %conv, 156
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @sqd_regerror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.7:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.81, %if.end.7
  %8 = load i8*, i8** %src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %src, align 8
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %c, align 1
  %conv8 = sext i8 %9 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8, i8* %c, align 1
  %conv11 = sext i8 %10 to i32
  %cmp12 = icmp eq i32 %conv11, 38
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %while.body
  store i32 0, i32* %no, align 4
  br label %if.end.25

if.else:                                          ; preds = %while.body
  %11 = load i8, i8* %c, align 1
  %conv15 = sext i8 %11 to i32
  %cmp16 = icmp eq i32 %conv15, 92
  br i1 %cmp16, label %land.lhs.true, label %if.else.23

land.lhs.true:                                    ; preds = %if.else
  %12 = load i8*, i8** %src, align 8
  %13 = load i8, i8* %12, align 1
  %conv18 = sext i8 %13 to i32
  %idxprom = sext i32 %conv18 to i64
  %call = call i16** @__ctype_b_loc() #9
  %14 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %14, i64 %idxprom
  %15 = load i16, i16* %arrayidx, align 2
  %conv19 = zext i16 %15 to i32
  %and = and i32 %conv19, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.20, label %if.else.23

if.then.20:                                       ; preds = %land.lhs.true
  %16 = load i8*, i8** %src, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr21, i8** %src, align 8
  %17 = load i8, i8* %16, align 1
  %conv22 = sext i8 %17 to i32
  %sub = sub nsw i32 %conv22, 48
  store i32 %sub, i32* %no, align 4
  br label %if.end.24

if.else.23:                                       ; preds = %land.lhs.true, %if.else
  store i32 -1, i32* %no, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.14
  %18 = load i32, i32* %no, align 4
  %cmp26 = icmp slt i32 %18, 0
  br i1 %cmp26, label %if.then.28, label %if.else.44

if.then.28:                                       ; preds = %if.end.25
  %19 = load i8, i8* %c, align 1
  %conv29 = sext i8 %19 to i32
  %cmp30 = icmp eq i32 %conv29, 92
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.42

land.lhs.true.32:                                 ; preds = %if.then.28
  %20 = load i8*, i8** %src, align 8
  %21 = load i8, i8* %20, align 1
  %conv33 = sext i8 %21 to i32
  %cmp34 = icmp eq i32 %conv33, 92
  br i1 %cmp34, label %if.then.40, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %land.lhs.true.32
  %22 = load i8*, i8** %src, align 8
  %23 = load i8, i8* %22, align 1
  %conv37 = sext i8 %23 to i32
  %cmp38 = icmp eq i32 %conv37, 38
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %lor.lhs.false.36, %land.lhs.true.32
  %24 = load i8*, i8** %src, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr41, i8** %src, align 8
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %c, align 1
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %lor.lhs.false.36, %if.then.28
  %26 = load i8, i8* %c, align 1
  %27 = load i8*, i8** %dst, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr43, i8** %dst, align 8
  store i8 %26, i8* %27, align 1
  br label %if.end.81

if.else.44:                                       ; preds = %if.end.25
  %28 = load i32, i32* %no, align 4
  %idxprom45 = sext i32 %28 to i64
  %29 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog, align 8
  %startp = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %29, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [10 x i8*], [10 x i8*]* %startp, i32 0, i64 %idxprom45
  %30 = load i8*, i8** %arrayidx46, align 8
  %cmp47 = icmp ne i8* %30, null
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.80

land.lhs.true.49:                                 ; preds = %if.else.44
  %31 = load i32, i32* %no, align 4
  %idxprom50 = sext i32 %31 to i64
  %32 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog, align 8
  %endp = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %32, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [10 x i8*], [10 x i8*]* %endp, i32 0, i64 %idxprom50
  %33 = load i8*, i8** %arrayidx51, align 8
  %cmp52 = icmp ne i8* %33, null
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.80

land.lhs.true.54:                                 ; preds = %land.lhs.true.49
  %34 = load i32, i32* %no, align 4
  %idxprom55 = sext i32 %34 to i64
  %35 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog, align 8
  %endp56 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %35, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [10 x i8*], [10 x i8*]* %endp56, i32 0, i64 %idxprom55
  %36 = load i8*, i8** %arrayidx57, align 8
  %37 = load i32, i32* %no, align 4
  %idxprom58 = sext i32 %37 to i64
  %38 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog, align 8
  %startp59 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %38, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [10 x i8*], [10 x i8*]* %startp59, i32 0, i64 %idxprom58
  %39 = load i8*, i8** %arrayidx60, align 8
  %cmp61 = icmp ugt i8* %36, %39
  br i1 %cmp61, label %if.then.63, label %if.end.80

if.then.63:                                       ; preds = %land.lhs.true.54
  %40 = load i32, i32* %no, align 4
  %idxprom64 = sext i32 %40 to i64
  %41 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog, align 8
  %endp65 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %41, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [10 x i8*], [10 x i8*]* %endp65, i32 0, i64 %idxprom64
  %42 = load i8*, i8** %arrayidx66, align 8
  %43 = load i32, i32* %no, align 4
  %idxprom67 = sext i32 %43 to i64
  %44 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog, align 8
  %startp68 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %44, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %startp68, i32 0, i64 %idxprom67
  %45 = load i8*, i8** %arrayidx69, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %45 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len, align 8
  %46 = load i8*, i8** %dst, align 8
  %47 = load i32, i32* %no, align 4
  %idxprom70 = sext i32 %47 to i64
  %48 = load %struct.sqd_regexp*, %struct.sqd_regexp** %prog, align 8
  %startp71 = getelementptr inbounds %struct.sqd_regexp, %struct.sqd_regexp* %48, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [10 x i8*], [10 x i8*]* %startp71, i32 0, i64 %idxprom70
  %49 = load i8*, i8** %arrayidx72, align 8
  %50 = load i64, i64* %len, align 8
  %call73 = call i8* @strncpy(i8* %46, i8* %49, i64 %50) #6
  %51 = load i64, i64* %len, align 8
  %52 = load i8*, i8** %dst, align 8
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 %51
  store i8* %add.ptr, i8** %dst, align 8
  %53 = load i8*, i8** %dst, align 8
  %add.ptr74 = getelementptr inbounds i8, i8* %53, i64 -1
  %54 = load i8, i8* %add.ptr74, align 1
  %conv75 = sext i8 %54 to i32
  %cmp76 = icmp eq i32 %conv75, 0
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.63
  call void @sqd_regerror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.79:                                        ; preds = %if.then.63
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %land.lhs.true.54, %land.lhs.true.49, %if.else.44
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.42
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %55 = load i8*, i8** %dst, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr82, i8** %dst, align 8
  store i8 0, i8* %55, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then.78, %if.then.6, %if.then
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define internal i8* @regnode(%struct.comp* %cp, i32) #0 {
entry:
  %retval = alloca i8*, align 8
  %cp.addr = alloca %struct.comp*, align 8
  %op.addr = alloca i8, align 1
  %ret = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %op = trunc i32 %0 to i8
  store %struct.comp* %cp, %struct.comp** %cp.addr, align 8
  store i8 %op, i8* %op.addr, align 1
  %1 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regcode = getelementptr inbounds %struct.comp, %struct.comp* %1, i32 0, i32 2
  %2 = load i8*, i8** %regcode, align 8
  store i8* %2, i8** %ret, align 8
  %3 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regcode1 = getelementptr inbounds %struct.comp, %struct.comp* %3, i32 0, i32 2
  %4 = load i8*, i8** %regcode1, align 8
  %5 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regdummy = getelementptr inbounds %struct.comp, %struct.comp* %5, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %regdummy, i32 0, i32 0
  %cmp = icmp ne i8* %4, %arraydecay
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regsize = getelementptr inbounds %struct.comp, %struct.comp* %6, i32 0, i32 4
  %7 = load i64, i64* %regsize, align 8
  %add = add nsw i64 %7, 3
  store i64 %add, i64* %regsize, align 8
  %8 = load i8*, i8** %ret, align 8
  store i8* %8, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i8*, i8** %ret, align 8
  store i8* %9, i8** %ptr, align 8
  %10 = load i8, i8* %op.addr, align 1
  %11 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  store i8 %10, i8* %11, align 1
  %12 = load i8*, i8** %ptr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr2, i8** %ptr, align 8
  store i8 0, i8* %12, align 1
  %13 = load i8*, i8** %ptr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr3, i8** %ptr, align 8
  store i8 0, i8* %13, align 1
  %14 = load i8*, i8** %ptr, align 8
  %15 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regcode4 = getelementptr inbounds %struct.comp, %struct.comp* %15, i32 0, i32 2
  store i8* %14, i8** %regcode4, align 8
  %16 = load i8*, i8** %ret, align 8
  store i8* %16, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i8*, i8** %retval
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define internal i8* @regbranch(%struct.comp* %cp, i32* %flagp) #0 {
entry:
  %retval = alloca i8*, align 8
  %cp.addr = alloca %struct.comp*, align 8
  %flagp.addr = alloca i32*, align 8
  %ret = alloca i8*, align 8
  %chain = alloca i8*, align 8
  %latest = alloca i8*, align 8
  %flags = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.comp* %cp, %struct.comp** %cp.addr, align 8
  store i32* %flagp, i32** %flagp.addr, align 8
  %0 = load i32*, i32** %flagp.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call = call i8* @regnode(%struct.comp* %1, i32 6)
  store i8* %call, i8** %ret, align 8
  store i8* null, i8** %chain, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %entry
  %2 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse = getelementptr inbounds %struct.comp, %struct.comp* %2, i32 0, i32 0
  %3 = load i8*, i8** %regparse, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  store i32 %conv, i32* %c, align 4
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %5 = load i32, i32* %c, align 4
  %cmp2 = icmp ne i32 %5, 124
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load i32, i32* %c, align 4
  %cmp4 = icmp ne i32 %6, 41
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call6 = call i8* @regpiece(%struct.comp* %8, i32* %flags)
  store i8* %call6, i8** %latest, align 8
  %9 = load i8*, i8** %latest, align 8
  %cmp7 = icmp eq i8* %9, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %10 = load i32, i32* %flags, align 4
  %and = and i32 %10, 1
  %11 = load i32*, i32** %flagp.addr, align 8
  %12 = load i32, i32* %11, align 4
  %or = or i32 %12, %and
  store i32 %or, i32* %11, align 4
  %13 = load i8*, i8** %chain, align 8
  %cmp9 = icmp eq i8* %13, null
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %14 = load i32, i32* %flags, align 4
  %and12 = and i32 %14, 4
  %15 = load i32*, i32** %flagp.addr, align 8
  %16 = load i32, i32* %15, align 4
  %or13 = or i32 %16, %and12
  store i32 %or13, i32* %15, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %17 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %18 = load i8*, i8** %chain, align 8
  %19 = load i8*, i8** %latest, align 8
  call void @regtail(%struct.comp* %17, i8* %18, i8* %19)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.11
  %20 = load i8*, i8** %latest, align 8
  store i8* %20, i8** %chain, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %21 = load i8*, i8** %chain, align 8
  %cmp15 = icmp eq i8* %21, null
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %while.end
  %22 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call18 = call i8* @regnode(%struct.comp* %22, i32 9)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %while.end
  %23 = load i8*, i8** %ret, align 8
  store i8* %23, i8** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then
  %24 = load i8*, i8** %retval
  ret i8* %24
}

; Function Attrs: nounwind uwtable
define internal void @regtail(%struct.comp* %cp, i8* %p, i8* %val) #0 {
entry:
  %cp.addr = alloca %struct.comp*, align 8
  %p.addr = alloca i8*, align 8
  %val.addr = alloca i8*, align 8
  %scan = alloca i8*, align 8
  %temp = alloca i8*, align 8
  %offset = alloca i32, align 4
  store %struct.comp* %cp, %struct.comp** %cp.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %val, i8** %val.addr, align 8
  %0 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regcode = getelementptr inbounds %struct.comp, %struct.comp* %0, i32 0, i32 2
  %1 = load i8*, i8** %regcode, align 8
  %2 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regdummy = getelementptr inbounds %struct.comp, %struct.comp* %2, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %regdummy, i32 0, i32 0
  %cmp = icmp ne i8* %1, %arraydecay
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %p.addr, align 8
  store i8* %3, i8** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i8*, i8** %scan, align 8
  %call = call i8* @regnext(i8* %4)
  store i8* %call, i8** %temp, align 8
  %cmp1 = icmp ne i8* %call, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8*, i8** %temp, align 8
  store i8* %5, i8** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i8*, i8** %scan, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp2 = icmp eq i32 %conv, 7
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %8 = load i8*, i8** %scan, align 8
  %9 = load i8*, i8** %val.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %10 = load i8*, i8** %val.addr, align 8
  %11 = load i8*, i8** %scan, align 8
  %sub.ptr.lhs.cast4 = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast5 = ptrtoint i8* %11 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub, %cond.true ], [ %sub.ptr.sub6, %cond.false ]
  %conv7 = trunc i64 %cond to i32
  store i32 %conv7, i32* %offset, align 4
  %12 = load i32, i32* %offset, align 4
  %shr = ashr i32 %12, 8
  %and = and i32 %shr, 127
  %conv8 = trunc i32 %and to i8
  %13 = load i8*, i8** %scan, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 1
  store i8 %conv8, i8* %add.ptr, align 1
  %14 = load i32, i32* %offset, align 4
  %and9 = and i32 %14, 255
  %conv10 = trunc i32 %and9 to i8
  %15 = load i8*, i8** %scan, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %15, i64 2
  store i8 %conv10, i8* %add.ptr11, align 1
  br label %return

return:                                           ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @regoptail(%struct.comp* %cp, i8* %p, i8* %val) #0 {
entry:
  %cp.addr = alloca %struct.comp*, align 8
  %p.addr = alloca i8*, align 8
  %val.addr = alloca i8*, align 8
  store %struct.comp* %cp, %struct.comp** %cp.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %val, i8** %val.addr, align 8
  %0 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regcode = getelementptr inbounds %struct.comp, %struct.comp* %0, i32 0, i32 2
  %1 = load i8*, i8** %regcode, align 8
  %2 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regdummy = getelementptr inbounds %struct.comp, %struct.comp* %2, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %regdummy, i32 0, i32 0
  %cmp = icmp ne i8* %1, %arraydecay
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %p.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp ne i32 %conv, 6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %6 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8*, i8** %val.addr, align 8
  call void @regtail(%struct.comp* %5, i8* %add.ptr, i8* %7)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @regpiece(%struct.comp* %cp, i32* %flagp) #0 {
entry:
  %retval = alloca i8*, align 8
  %cp.addr = alloca %struct.comp*, align 8
  %flagp.addr = alloca i32*, align 8
  %ret = alloca i8*, align 8
  %op = alloca i8, align 1
  %next = alloca i8*, align 8
  %flags = alloca i32, align 4
  store %struct.comp* %cp, %struct.comp** %cp.addr, align 8
  store i32* %flagp, i32** %flagp.addr, align 8
  %0 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call = call i8* @regatom(%struct.comp* %0, i32* %flags)
  store i8* %call, i8** %ret, align 8
  %1 = load i8*, i8** %ret, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse = getelementptr inbounds %struct.comp, %struct.comp* %2, i32 0, i32 0
  %3 = load i8*, i8** %regparse, align 8
  %4 = load i8, i8* %3, align 1
  store i8 %4, i8* %op, align 1
  %5 = load i8, i8* %op, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 42
  br i1 %cmp1, label %if.end.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i8, i8* %op, align 1
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 43
  br i1 %cmp4, label %if.end.11, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %7 = load i8, i8* %op, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 63
  br i1 %cmp8, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %lor.lhs.false.6
  %8 = load i32, i32* %flags, align 4
  %9 = load i32*, i32** %flagp.addr, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i8*, i8** %ret, align 8
  store i8* %10, i8** %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false, %if.end
  %11 = load i32, i32* %flags, align 4
  %and = and i32 %11, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.11
  %12 = load i8, i8* %op, align 1
  %conv12 = sext i8 %12 to i32
  %cmp13 = icmp ne i32 %conv12, 63
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  call void @sqd_regerror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %if.end.11
  %13 = load i8, i8* %op, align 1
  %conv17 = sext i8 %13 to i32
  switch i32 %conv17, label %sw.epilog [
    i32 42, label %sw.bb
    i32 43, label %sw.bb.18
    i32 63, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %if.end.16
  %14 = load i32*, i32** %flagp.addr, align 8
  store i32 4, i32* %14, align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end.16
  %15 = load i32*, i32** %flagp.addr, align 8
  store i32 5, i32* %15, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.end.16
  %16 = load i32*, i32** %flagp.addr, align 8
  store i32 0, i32* %16, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.16, %sw.bb.19, %sw.bb.18, %sw.bb
  %17 = load i8, i8* %op, align 1
  %conv20 = sext i8 %17 to i32
  %cmp21 = icmp eq i32 %conv20, 42
  br i1 %cmp21, label %land.lhs.true.23, label %if.else

land.lhs.true.23:                                 ; preds = %sw.epilog
  %18 = load i32, i32* %flags, align 4
  %and24 = and i32 %18, 2
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %land.lhs.true.23
  %19 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %20 = load i8*, i8** %ret, align 8
  call void @reginsert(%struct.comp* %19, i32 10, i8* %20)
  br label %if.end.62

if.else:                                          ; preds = %land.lhs.true.23, %sw.epilog
  %21 = load i8, i8* %op, align 1
  %conv27 = sext i8 %21 to i32
  %cmp28 = icmp eq i32 %conv27, 42
  br i1 %cmp28, label %if.then.30, label %if.else.34

if.then.30:                                       ; preds = %if.else
  %22 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %23 = load i8*, i8** %ret, align 8
  call void @reginsert(%struct.comp* %22, i32 6, i8* %23)
  %24 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %25 = load i8*, i8** %ret, align 8
  %26 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call31 = call i8* @regnode(%struct.comp* %26, i32 7)
  call void @regoptail(%struct.comp* %24, i8* %25, i8* %call31)
  %27 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %28 = load i8*, i8** %ret, align 8
  %29 = load i8*, i8** %ret, align 8
  call void @regoptail(%struct.comp* %27, i8* %28, i8* %29)
  %30 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %31 = load i8*, i8** %ret, align 8
  %32 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call32 = call i8* @regnode(%struct.comp* %32, i32 6)
  call void @regtail(%struct.comp* %30, i8* %31, i8* %call32)
  %33 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %34 = load i8*, i8** %ret, align 8
  %35 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call33 = call i8* @regnode(%struct.comp* %35, i32 9)
  call void @regtail(%struct.comp* %33, i8* %34, i8* %call33)
  br label %if.end.61

if.else.34:                                       ; preds = %if.else
  %36 = load i8, i8* %op, align 1
  %conv35 = sext i8 %36 to i32
  %cmp36 = icmp eq i32 %conv35, 43
  br i1 %cmp36, label %land.lhs.true.38, label %if.else.42

land.lhs.true.38:                                 ; preds = %if.else.34
  %37 = load i32, i32* %flags, align 4
  %and39 = and i32 %37, 2
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %land.lhs.true.38
  %38 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %39 = load i8*, i8** %ret, align 8
  call void @reginsert(%struct.comp* %38, i32 11, i8* %39)
  br label %if.end.60

if.else.42:                                       ; preds = %land.lhs.true.38, %if.else.34
  %40 = load i8, i8* %op, align 1
  %conv43 = sext i8 %40 to i32
  %cmp44 = icmp eq i32 %conv43, 43
  br i1 %cmp44, label %if.then.46, label %if.else.51

if.then.46:                                       ; preds = %if.else.42
  %41 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call47 = call i8* @regnode(%struct.comp* %41, i32 6)
  store i8* %call47, i8** %next, align 8
  %42 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %43 = load i8*, i8** %ret, align 8
  %44 = load i8*, i8** %next, align 8
  call void @regtail(%struct.comp* %42, i8* %43, i8* %44)
  %45 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %46 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call48 = call i8* @regnode(%struct.comp* %46, i32 7)
  %47 = load i8*, i8** %ret, align 8
  call void @regtail(%struct.comp* %45, i8* %call48, i8* %47)
  %48 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %49 = load i8*, i8** %next, align 8
  %50 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call49 = call i8* @regnode(%struct.comp* %50, i32 6)
  call void @regtail(%struct.comp* %48, i8* %49, i8* %call49)
  %51 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %52 = load i8*, i8** %ret, align 8
  %53 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call50 = call i8* @regnode(%struct.comp* %53, i32 9)
  call void @regtail(%struct.comp* %51, i8* %52, i8* %call50)
  br label %if.end.59

if.else.51:                                       ; preds = %if.else.42
  %54 = load i8, i8* %op, align 1
  %conv52 = sext i8 %54 to i32
  %cmp53 = icmp eq i32 %conv52, 63
  br i1 %cmp53, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %if.else.51
  %55 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %56 = load i8*, i8** %ret, align 8
  call void @reginsert(%struct.comp* %55, i32 6, i8* %56)
  %57 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %58 = load i8*, i8** %ret, align 8
  %59 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call56 = call i8* @regnode(%struct.comp* %59, i32 6)
  call void @regtail(%struct.comp* %57, i8* %58, i8* %call56)
  %60 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call57 = call i8* @regnode(%struct.comp* %60, i32 9)
  store i8* %call57, i8** %next, align 8
  %61 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %62 = load i8*, i8** %ret, align 8
  %63 = load i8*, i8** %next, align 8
  call void @regtail(%struct.comp* %61, i8* %62, i8* %63)
  %64 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %65 = load i8*, i8** %ret, align 8
  %66 = load i8*, i8** %next, align 8
  call void @regoptail(%struct.comp* %64, i8* %65, i8* %66)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %if.else.51
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.46
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.41
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.30
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.26
  %67 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse63 = getelementptr inbounds %struct.comp, %struct.comp* %67, i32 0, i32 0
  %68 = load i8*, i8** %regparse63, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr, i8** %regparse63, align 8
  %69 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse64 = getelementptr inbounds %struct.comp, %struct.comp* %69, i32 0, i32 0
  %70 = load i8*, i8** %regparse64, align 8
  %71 = load i8, i8* %70, align 1
  %conv65 = sext i8 %71 to i32
  %cmp66 = icmp eq i32 %conv65, 42
  br i1 %cmp66, label %if.then.78, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %if.end.62
  %72 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse69 = getelementptr inbounds %struct.comp, %struct.comp* %72, i32 0, i32 0
  %73 = load i8*, i8** %regparse69, align 8
  %74 = load i8, i8* %73, align 1
  %conv70 = sext i8 %74 to i32
  %cmp71 = icmp eq i32 %conv70, 43
  br i1 %cmp71, label %if.then.78, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %lor.lhs.false.68
  %75 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse74 = getelementptr inbounds %struct.comp, %struct.comp* %75, i32 0, i32 0
  %76 = load i8*, i8** %regparse74, align 8
  %77 = load i8, i8* %76, align 1
  %conv75 = sext i8 %77 to i32
  %cmp76 = icmp eq i32 %conv75, 63
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %lor.lhs.false.73, %lor.lhs.false.68, %if.end.62
  call void @sqd_regerror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.79:                                        ; preds = %lor.lhs.false.73
  %78 = load i8*, i8** %ret, align 8
  store i8* %78, i8** %retval
  br label %return

return:                                           ; preds = %if.end.79, %if.then.78, %if.then.15, %if.then.10, %if.then
  %79 = load i8*, i8** %retval
  ret i8* %79
}

; Function Attrs: nounwind uwtable
define internal i8* @regatom(%struct.comp* %cp, i32* %flagp) #0 {
entry:
  %retval = alloca i8*, align 8
  %cp.addr = alloca %struct.comp*, align 8
  %flagp.addr = alloca i32*, align 8
  %ret = alloca i8*, align 8
  %flags = alloca i32, align 4
  %range = alloca i32, align 4
  %rangeend = alloca i32, align 4
  %c = alloca i32, align 4
  %len = alloca i64, align 8
  %ender = alloca i8, align 1
  store %struct.comp* %cp, %struct.comp** %cp.addr, align 8
  store i32* %flagp, i32** %flagp.addr, align 8
  %0 = load i32*, i32** %flagp.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse = getelementptr inbounds %struct.comp, %struct.comp* %1, i32 0, i32 0
  %2 = load i8*, i8** %regparse, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %regparse, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 94, label %sw.bb
    i32 36, label %sw.bb.1
    i32 46, label %sw.bb.3
    i32 91, label %sw.bb.5
    i32 40, label %sw.bb.63
    i32 0, label %sw.bb.70
    i32 124, label %sw.bb.70
    i32 41, label %sw.bb.70
    i32 63, label %sw.bb.71
    i32 43, label %sw.bb.71
    i32 42, label %sw.bb.71
    i32 92, label %sw.bb.72
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call = call i8* @regnode(%struct.comp* %4, i32 1)
  store i8* %call, i8** %ret, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %5 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call2 = call i8* @regnode(%struct.comp* %5, i32 2)
  store i8* %call2, i8** %ret, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call4 = call i8* @regnode(%struct.comp* %6, i32 3)
  store i8* %call4, i8** %ret, align 8
  %7 = load i32*, i32** %flagp.addr, align 8
  %8 = load i32, i32* %7, align 4
  %or = or i32 %8, 3
  store i32 %or, i32* %7, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse6 = getelementptr inbounds %struct.comp, %struct.comp* %9, i32 0, i32 0
  %10 = load i8*, i8** %regparse6, align 8
  %11 = load i8, i8* %10, align 1
  %conv7 = sext i8 %11 to i32
  %cmp = icmp eq i32 %conv7, 94
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.5
  %12 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call9 = call i8* @regnode(%struct.comp* %12, i32 5)
  store i8* %call9, i8** %ret, align 8
  %13 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse10 = getelementptr inbounds %struct.comp, %struct.comp* %13, i32 0, i32 0
  %14 = load i8*, i8** %regparse10, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr11, i8** %regparse10, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb.5
  %15 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call12 = call i8* @regnode(%struct.comp* %15, i32 4)
  store i8* %call12, i8** %ret, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse13 = getelementptr inbounds %struct.comp, %struct.comp* %16, i32 0, i32 0
  %17 = load i8*, i8** %regparse13, align 8
  %18 = load i8, i8* %17, align 1
  %conv14 = sext i8 %18 to i32
  store i32 %conv14, i32* %c, align 4
  %cmp15 = icmp eq i32 %conv14, 93
  br i1 %cmp15, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %19 = load i32, i32* %c, align 4
  %cmp17 = icmp eq i32 %19, 45
  br i1 %cmp17, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %lor.lhs.false, %if.end
  %20 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %21 = load i32, i32* %c, align 4
  call void @regc(%struct.comp* %20, i32 %21)
  %22 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse20 = getelementptr inbounds %struct.comp, %struct.comp* %22, i32 0, i32 0
  %23 = load i8*, i8** %regparse20, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr21, i8** %regparse20, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end.57, %if.end.22
  %24 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse23 = getelementptr inbounds %struct.comp, %struct.comp* %24, i32 0, i32 0
  %25 = load i8*, i8** %regparse23, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr24, i8** %regparse23, align 8
  %26 = load i8, i8* %25, align 1
  %conv25 = sext i8 %26 to i32
  store i32 %conv25, i32* %c, align 4
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %27 = load i32, i32* %c, align 4
  %cmp28 = icmp ne i32 %27, 93
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %28 = phi i1 [ false, %while.cond ], [ %cmp28, %land.rhs ]
  br i1 %28, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %29 = load i32, i32* %c, align 4
  %cmp30 = icmp ne i32 %29, 45
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %while.body
  %30 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %31 = load i32, i32* %c, align 4
  call void @regc(%struct.comp* %30, i32 %31)
  br label %if.end.57

if.else.33:                                       ; preds = %while.body
  %32 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse34 = getelementptr inbounds %struct.comp, %struct.comp* %32, i32 0, i32 0
  %33 = load i8*, i8** %regparse34, align 8
  %34 = load i8, i8* %33, align 1
  %conv35 = sext i8 %34 to i32
  store i32 %conv35, i32* %c, align 4
  %cmp36 = icmp eq i32 %conv35, 93
  br i1 %cmp36, label %if.then.41, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %if.else.33
  %35 = load i32, i32* %c, align 4
  %cmp39 = icmp eq i32 %35, 0
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %lor.lhs.false.38, %if.else.33
  %36 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  call void @regc(%struct.comp* %36, i32 45)
  br label %if.end.56

if.else.42:                                       ; preds = %lor.lhs.false.38
  %37 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse43 = getelementptr inbounds %struct.comp, %struct.comp* %37, i32 0, i32 0
  %38 = load i8*, i8** %regparse43, align 8
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 -2
  %39 = load i8, i8* %add.ptr, align 1
  %conv44 = zext i8 %39 to i32
  store i32 %conv44, i32* %range, align 4
  %40 = load i32, i32* %c, align 4
  %conv45 = trunc i32 %40 to i8
  %conv46 = zext i8 %conv45 to i32
  store i32 %conv46, i32* %rangeend, align 4
  %41 = load i32, i32* %range, align 4
  %42 = load i32, i32* %rangeend, align 4
  %cmp47 = icmp sgt i32 %41, %42
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.else.42
  call void @sqd_regerror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.50:                                        ; preds = %if.else.42
  %43 = load i32, i32* %range, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %range, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.50
  %44 = load i32, i32* %range, align 4
  %45 = load i32, i32* %rangeend, align 4
  %cmp51 = icmp sle i32 %44, %45
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %47 = load i32, i32* %range, align 4
  call void @regc(%struct.comp* %46, i32 %47)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %range, align 4
  %inc53 = add nsw i32 %48, 1
  store i32 %inc53, i32* %range, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse54 = getelementptr inbounds %struct.comp, %struct.comp* %49, i32 0, i32 0
  %50 = load i8*, i8** %regparse54, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr55, i8** %regparse54, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %for.end, %if.then.41
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.32
  br label %while.cond

while.end:                                        ; preds = %land.end
  %51 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  call void @regc(%struct.comp* %51, i32 0)
  %52 = load i32, i32* %c, align 4
  %cmp58 = icmp ne i32 %52, 93
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %while.end
  call void @sqd_regerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.61:                                        ; preds = %while.end
  %53 = load i32*, i32** %flagp.addr, align 8
  %54 = load i32, i32* %53, align 4
  %or62 = or i32 %54, 3
  store i32 %or62, i32* %53, align 4
  br label %sw.epilog

sw.bb.63:                                         ; preds = %entry
  %55 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call64 = call i8* @reg(%struct.comp* %55, i32 1, i32* %flags)
  store i8* %call64, i8** %ret, align 8
  %56 = load i8*, i8** %ret, align 8
  %cmp65 = icmp eq i8* %56, null
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %sw.bb.63
  store i8* null, i8** %retval
  br label %return

if.end.68:                                        ; preds = %sw.bb.63
  %57 = load i32, i32* %flags, align 4
  %and = and i32 %57, 5
  %58 = load i32*, i32** %flagp.addr, align 8
  %59 = load i32, i32* %58, align 4
  %or69 = or i32 %59, %and
  store i32 %or69, i32* %58, align 4
  br label %sw.epilog

sw.bb.70:                                         ; preds = %entry, %entry, %entry
  call void @sqd_regerror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

sw.bb.71:                                         ; preds = %entry, %entry, %entry
  call void @sqd_regerror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

sw.bb.72:                                         ; preds = %entry
  %60 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse73 = getelementptr inbounds %struct.comp, %struct.comp* %60, i32 0, i32 0
  %61 = load i8*, i8** %regparse73, align 8
  %62 = load i8, i8* %61, align 1
  %conv74 = sext i8 %62 to i32
  %cmp75 = icmp eq i32 %conv74, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %sw.bb.72
  call void @sqd_regerror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.78:                                        ; preds = %sw.bb.72
  %63 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call79 = call i8* @regnode(%struct.comp* %63, i32 8)
  store i8* %call79, i8** %ret, align 8
  %64 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %65 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse80 = getelementptr inbounds %struct.comp, %struct.comp* %65, i32 0, i32 0
  %66 = load i8*, i8** %regparse80, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr81, i8** %regparse80, align 8
  %67 = load i8, i8* %66, align 1
  %conv82 = sext i8 %67 to i32
  call void @regc(%struct.comp* %64, i32 %conv82)
  %68 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  call void @regc(%struct.comp* %68, i32 0)
  %69 = load i32*, i32** %flagp.addr, align 8
  %70 = load i32, i32* %69, align 4
  %or83 = or i32 %70, 3
  store i32 %or83, i32* %69, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %71 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse84 = getelementptr inbounds %struct.comp, %struct.comp* %71, i32 0, i32 0
  %72 = load i8*, i8** %regparse84, align 8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %72, i32 -1
  store i8* %incdec.ptr85, i8** %regparse84, align 8
  %73 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse86 = getelementptr inbounds %struct.comp, %struct.comp* %73, i32 0, i32 0
  %74 = load i8*, i8** %regparse86, align 8
  %call87 = call i64 @strcspn(i8* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0)) #7
  store i64 %call87, i64* %len, align 8
  %75 = load i64, i64* %len, align 8
  %cmp88 = icmp eq i64 %75, 0
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %sw.default
  call void @sqd_regerror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.91:                                        ; preds = %sw.default
  %76 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse92 = getelementptr inbounds %struct.comp, %struct.comp* %76, i32 0, i32 0
  %77 = load i8*, i8** %regparse92, align 8
  %78 = load i64, i64* %len, align 8
  %add.ptr93 = getelementptr inbounds i8, i8* %77, i64 %78
  %79 = load i8, i8* %add.ptr93, align 1
  store i8 %79, i8* %ender, align 1
  %80 = load i64, i64* %len, align 8
  %cmp94 = icmp ugt i64 %80, 1
  br i1 %cmp94, label %land.lhs.true, label %if.end.108

land.lhs.true:                                    ; preds = %if.end.91
  %81 = load i8, i8* %ender, align 1
  %conv96 = sext i8 %81 to i32
  %cmp97 = icmp eq i32 %conv96, 42
  br i1 %cmp97, label %if.then.107, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %land.lhs.true
  %82 = load i8, i8* %ender, align 1
  %conv100 = sext i8 %82 to i32
  %cmp101 = icmp eq i32 %conv100, 43
  br i1 %cmp101, label %if.then.107, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %lor.lhs.false.99
  %83 = load i8, i8* %ender, align 1
  %conv104 = sext i8 %83 to i32
  %cmp105 = icmp eq i32 %conv104, 63
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %lor.lhs.false.103, %lor.lhs.false.99, %land.lhs.true
  %84 = load i64, i64* %len, align 8
  %dec = add i64 %84, -1
  store i64 %dec, i64* %len, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %lor.lhs.false.103, %if.end.91
  %85 = load i32*, i32** %flagp.addr, align 8
  %86 = load i32, i32* %85, align 4
  %or109 = or i32 %86, 1
  store i32 %or109, i32* %85, align 4
  %87 = load i64, i64* %len, align 8
  %cmp110 = icmp eq i64 %87, 1
  br i1 %cmp110, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.end.108
  %88 = load i32*, i32** %flagp.addr, align 8
  %89 = load i32, i32* %88, align 4
  %or113 = or i32 %89, 2
  store i32 %or113, i32* %88, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.end.108
  %90 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %call115 = call i8* @regnode(%struct.comp* %90, i32 8)
  store i8* %call115, i8** %ret, align 8
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.123, %if.end.114
  %91 = load i64, i64* %len, align 8
  %cmp117 = icmp ugt i64 %91, 0
  br i1 %cmp117, label %for.body.119, label %for.end.125

for.body.119:                                     ; preds = %for.cond.116
  %92 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %93 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regparse120 = getelementptr inbounds %struct.comp, %struct.comp* %93, i32 0, i32 0
  %94 = load i8*, i8** %regparse120, align 8
  %incdec.ptr121 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr121, i8** %regparse120, align 8
  %95 = load i8, i8* %94, align 1
  %conv122 = sext i8 %95 to i32
  call void @regc(%struct.comp* %92, i32 %conv122)
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.body.119
  %96 = load i64, i64* %len, align 8
  %dec124 = add i64 %96, -1
  store i64 %dec124, i64* %len, align 8
  br label %for.cond.116

for.end.125:                                      ; preds = %for.cond.116
  %97 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  call void @regc(%struct.comp* %97, i32 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.125, %if.end.78, %if.end.68, %if.end.61, %sw.bb.3, %sw.bb.1, %sw.bb
  %98 = load i8*, i8** %ret, align 8
  store i8* %98, i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.90, %if.then.77, %sw.bb.71, %sw.bb.70, %if.then.67, %if.then.60, %if.then.49
  %99 = load i8*, i8** %retval
  ret i8* %99
}

; Function Attrs: nounwind uwtable
define internal void @reginsert(%struct.comp* %cp, i32, i8* %opnd) #0 {
entry:
  %cp.addr = alloca %struct.comp*, align 8
  %op.addr = alloca i8, align 1
  %opnd.addr = alloca i8*, align 8
  %place = alloca i8*, align 8
  %op = trunc i32 %0 to i8
  store %struct.comp* %cp, %struct.comp** %cp.addr, align 8
  store i8 %op, i8* %op.addr, align 1
  store i8* %opnd, i8** %opnd.addr, align 8
  %1 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regcode = getelementptr inbounds %struct.comp, %struct.comp* %1, i32 0, i32 2
  %2 = load i8*, i8** %regcode, align 8
  %3 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regdummy = getelementptr inbounds %struct.comp, %struct.comp* %3, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %regdummy, i32 0, i32 0
  %cmp = icmp ne i8* %2, %arraydecay
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regsize = getelementptr inbounds %struct.comp, %struct.comp* %4, i32 0, i32 4
  %5 = load i64, i64* %regsize, align 8
  %add = add nsw i64 %5, 3
  store i64 %add, i64* %regsize, align 8
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %opnd.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8*, i8** %opnd.addr, align 8
  %8 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regcode1 = getelementptr inbounds %struct.comp, %struct.comp* %8, i32 0, i32 2
  %9 = load i8*, i8** %regcode1, align 8
  %10 = load i8*, i8** %opnd.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr, i8* %7, i64 %sub.ptr.sub, i32 1, i1 false)
  %11 = load %struct.comp*, %struct.comp** %cp.addr, align 8
  %regcode2 = getelementptr inbounds %struct.comp, %struct.comp* %11, i32 0, i32 2
  %12 = load i8*, i8** %regcode2, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %12, i64 3
  store i8* %add.ptr3, i8** %regcode2, align 8
  %13 = load i8*, i8** %opnd.addr, align 8
  store i8* %13, i8** %place, align 8
  %14 = load i8, i8* %op.addr, align 1
  %15 = load i8*, i8** %place, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %place, align 8
  store i8 %14, i8* %15, align 1
  %16 = load i8*, i8** %place, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr4, i8** %place, align 8
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** %place, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr5, i8** %place, align 8
  store i8 0, i8* %17, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define internal i32 @regmatch(%struct.exec* %ep, i8* %prog) #0 {
entry:
  %retval = alloca i32, align 4
  %ep.addr = alloca %struct.exec*, align 8
  %prog.addr = alloca i8*, align 8
  %scan = alloca i8*, align 8
  %next = alloca i8*, align 8
  %len = alloca i64, align 8
  %opnd = alloca i8*, align 8
  %no = alloca i32, align 4
  %input = alloca i8*, align 8
  %no83 = alloca i32, align 4
  %input86 = alloca i8*, align 8
  %save = alloca i8*, align 8
  %nextch = alloca i8, align 1
  %no127 = alloca i64, align 8
  %save128 = alloca i8*, align 8
  %min = alloca i64, align 8
  store %struct.exec* %ep, %struct.exec** %ep.addr, align 8
  store i8* %prog, i8** %prog.addr, align 8
  %0 = load i8*, i8** %prog.addr, align 8
  store i8* %0, i8** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.160, %entry
  %1 = load i8*, i8** %scan, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %for.body, label %for.end.161

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %scan, align 8
  %call = call i8* @regnext(i8* %2)
  store i8* %call, i8** %next, align 8
  %3 = load i8*, i8** %scan, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.10
    i32 8, label %sw.bb.18
    i32 4, label %sw.bb.37
    i32 5, label %sw.bb.52
    i32 9, label %sw.bb.68
    i32 7, label %sw.bb.69
    i32 21, label %sw.bb.70
    i32 22, label %sw.bb.70
    i32 23, label %sw.bb.70
    i32 24, label %sw.bb.70
    i32 25, label %sw.bb.70
    i32 26, label %sw.bb.70
    i32 27, label %sw.bb.70
    i32 28, label %sw.bb.70
    i32 29, label %sw.bb.70
    i32 31, label %sw.bb.82
    i32 32, label %sw.bb.82
    i32 33, label %sw.bb.82
    i32 34, label %sw.bb.82
    i32 35, label %sw.bb.82
    i32 36, label %sw.bb.82
    i32 37, label %sw.bb.82
    i32 38, label %sw.bb.82
    i32 39, label %sw.bb.82
    i32 6, label %sw.bb.101
    i32 10, label %sw.bb.120
    i32 11, label %sw.bb.120
    i32 0, label %sw.bb.159
  ]

sw.bb:                                            ; preds = %for.body
  %5 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput = getelementptr inbounds %struct.exec, %struct.exec* %5, i32 0, i32 0
  %6 = load i8*, i8** %reginput, align 8
  %7 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %regbol = getelementptr inbounds %struct.exec, %struct.exec* %7, i32 0, i32 1
  %8 = load i8*, i8** %regbol, align 8
  %cmp1 = icmp ne i8* %6, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.3:                                          ; preds = %for.body
  %9 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput4 = getelementptr inbounds %struct.exec, %struct.exec* %9, i32 0, i32 0
  %10 = load i8*, i8** %reginput4, align 8
  %11 = load i8, i8* %10, align 1
  %conv5 = sext i8 %11 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %sw.bb.3
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %sw.bb.3
  br label %sw.epilog

sw.bb.10:                                         ; preds = %for.body
  %12 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput11 = getelementptr inbounds %struct.exec, %struct.exec* %12, i32 0, i32 0
  %13 = load i8*, i8** %reginput11, align 8
  %14 = load i8, i8* %13, align 1
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.bb.10
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %sw.bb.10
  %15 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput17 = getelementptr inbounds %struct.exec, %struct.exec* %15, i32 0, i32 0
  %16 = load i8*, i8** %reginput17, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %reginput17, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %for.body
  %17 = load i8*, i8** %scan, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 3
  store i8* %add.ptr, i8** %opnd, align 8
  %18 = load i8*, i8** %opnd, align 8
  %19 = load i8, i8* %18, align 1
  %conv19 = sext i8 %19 to i32
  %20 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput20 = getelementptr inbounds %struct.exec, %struct.exec* %20, i32 0, i32 0
  %21 = load i8*, i8** %reginput20, align 8
  %22 = load i8, i8* %21, align 1
  %conv21 = sext i8 %22 to i32
  %cmp22 = icmp ne i32 %conv19, %conv21
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %sw.bb.18
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %sw.bb.18
  %23 = load i8*, i8** %opnd, align 8
  %call26 = call i64 @strlen(i8* %23) #7
  store i64 %call26, i64* %len, align 8
  %24 = load i64, i64* %len, align 8
  %cmp27 = icmp ugt i64 %24, 1
  br i1 %cmp27, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end.25
  %25 = load i8*, i8** %opnd, align 8
  %26 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput29 = getelementptr inbounds %struct.exec, %struct.exec* %26, i32 0, i32 0
  %27 = load i8*, i8** %reginput29, align 8
  %28 = load i64, i64* %len, align 8
  %call30 = call i32 @strncmp(i8* %25, i8* %27, i64 %28) #7
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %land.lhs.true, %if.end.25
  %29 = load i64, i64* %len, align 8
  %30 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput35 = getelementptr inbounds %struct.exec, %struct.exec* %30, i32 0, i32 0
  %31 = load i8*, i8** %reginput35, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %31, i64 %29
  store i8* %add.ptr36, i8** %reginput35, align 8
  br label %sw.epilog

sw.bb.37:                                         ; preds = %for.body
  %32 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput38 = getelementptr inbounds %struct.exec, %struct.exec* %32, i32 0, i32 0
  %33 = load i8*, i8** %reginput38, align 8
  %34 = load i8, i8* %33, align 1
  %conv39 = sext i8 %34 to i32
  %cmp40 = icmp eq i32 %conv39, 0
  br i1 %cmp40, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.37
  %35 = load i8*, i8** %scan, align 8
  %add.ptr42 = getelementptr inbounds i8, i8* %35, i64 3
  %36 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput43 = getelementptr inbounds %struct.exec, %struct.exec* %36, i32 0, i32 0
  %37 = load i8*, i8** %reginput43, align 8
  %38 = load i8, i8* %37, align 1
  %conv44 = sext i8 %38 to i32
  %call45 = call i8* @strchr(i8* %add.ptr42, i32 %conv44) #7
  %cmp46 = icmp eq i8* %call45, null
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %lor.lhs.false, %sw.bb.37
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %lor.lhs.false
  %39 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput50 = getelementptr inbounds %struct.exec, %struct.exec* %39, i32 0, i32 0
  %40 = load i8*, i8** %reginput50, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr51, i8** %reginput50, align 8
  br label %sw.epilog

sw.bb.52:                                         ; preds = %for.body
  %41 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput53 = getelementptr inbounds %struct.exec, %struct.exec* %41, i32 0, i32 0
  %42 = load i8*, i8** %reginput53, align 8
  %43 = load i8, i8* %42, align 1
  %conv54 = sext i8 %43 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  br i1 %cmp55, label %if.then.64, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %sw.bb.52
  %44 = load i8*, i8** %scan, align 8
  %add.ptr58 = getelementptr inbounds i8, i8* %44, i64 3
  %45 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput59 = getelementptr inbounds %struct.exec, %struct.exec* %45, i32 0, i32 0
  %46 = load i8*, i8** %reginput59, align 8
  %47 = load i8, i8* %46, align 1
  %conv60 = sext i8 %47 to i32
  %call61 = call i8* @strchr(i8* %add.ptr58, i32 %conv60) #7
  %cmp62 = icmp ne i8* %call61, null
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %lor.lhs.false.57, %sw.bb.52
  store i32 0, i32* %retval
  br label %return

if.end.65:                                        ; preds = %lor.lhs.false.57
  %48 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput66 = getelementptr inbounds %struct.exec, %struct.exec* %48, i32 0, i32 0
  %49 = load i8*, i8** %reginput66, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr67, i8** %reginput66, align 8
  br label %sw.epilog

sw.bb.68:                                         ; preds = %for.body
  br label %sw.epilog

sw.bb.69:                                         ; preds = %for.body
  br label %sw.epilog

sw.bb.70:                                         ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %50 = load i8*, i8** %scan, align 8
  %51 = load i8, i8* %50, align 1
  %conv71 = sext i8 %51 to i32
  %sub = sub nsw i32 %conv71, 20
  store i32 %sub, i32* %no, align 4
  %52 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput72 = getelementptr inbounds %struct.exec, %struct.exec* %52, i32 0, i32 0
  %53 = load i8*, i8** %reginput72, align 8
  store i8* %53, i8** %input, align 8
  %54 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %55 = load i8*, i8** %next, align 8
  %call73 = call i32 @regmatch(%struct.exec* %54, i8* %55)
  %tobool = icmp ne i32 %call73, 0
  br i1 %tobool, label %if.then.74, label %if.else

if.then.74:                                       ; preds = %sw.bb.70
  %56 = load i32, i32* %no, align 4
  %idxprom = sext i32 %56 to i64
  %57 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %regstartp = getelementptr inbounds %struct.exec, %struct.exec* %57, i32 0, i32 2
  %58 = load i8**, i8*** %regstartp, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %58, i64 %idxprom
  %59 = load i8*, i8** %arrayidx, align 8
  %cmp75 = icmp eq i8* %59, null
  br i1 %cmp75, label %if.then.77, label %if.end.81

if.then.77:                                       ; preds = %if.then.74
  %60 = load i8*, i8** %input, align 8
  %61 = load i32, i32* %no, align 4
  %idxprom78 = sext i32 %61 to i64
  %62 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %regstartp79 = getelementptr inbounds %struct.exec, %struct.exec* %62, i32 0, i32 2
  %63 = load i8**, i8*** %regstartp79, align 8
  %arrayidx80 = getelementptr inbounds i8*, i8** %63, i64 %idxprom78
  store i8* %60, i8** %arrayidx80, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.77, %if.then.74
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.bb.70
  store i32 0, i32* %retval
  br label %return

sw.bb.82:                                         ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %64 = load i8*, i8** %scan, align 8
  %65 = load i8, i8* %64, align 1
  %conv84 = sext i8 %65 to i32
  %sub85 = sub nsw i32 %conv84, 30
  store i32 %sub85, i32* %no83, align 4
  %66 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput87 = getelementptr inbounds %struct.exec, %struct.exec* %66, i32 0, i32 0
  %67 = load i8*, i8** %reginput87, align 8
  store i8* %67, i8** %input86, align 8
  %68 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %69 = load i8*, i8** %next, align 8
  %call88 = call i32 @regmatch(%struct.exec* %68, i8* %69)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then.90, label %if.else.100

if.then.90:                                       ; preds = %sw.bb.82
  %70 = load i32, i32* %no83, align 4
  %idxprom91 = sext i32 %70 to i64
  %71 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %regendp = getelementptr inbounds %struct.exec, %struct.exec* %71, i32 0, i32 3
  %72 = load i8**, i8*** %regendp, align 8
  %arrayidx92 = getelementptr inbounds i8*, i8** %72, i64 %idxprom91
  %73 = load i8*, i8** %arrayidx92, align 8
  %cmp93 = icmp eq i8* %73, null
  br i1 %cmp93, label %if.then.95, label %if.end.99

if.then.95:                                       ; preds = %if.then.90
  %74 = load i8*, i8** %input86, align 8
  %75 = load i32, i32* %no83, align 4
  %idxprom96 = sext i32 %75 to i64
  %76 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %regendp97 = getelementptr inbounds %struct.exec, %struct.exec* %76, i32 0, i32 3
  %77 = load i8**, i8*** %regendp97, align 8
  %arrayidx98 = getelementptr inbounds i8*, i8** %77, i64 %idxprom96
  store i8* %74, i8** %arrayidx98, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.95, %if.then.90
  store i32 1, i32* %retval
  br label %return

if.else.100:                                      ; preds = %sw.bb.82
  store i32 0, i32* %retval
  br label %return

sw.bb.101:                                        ; preds = %for.body
  %78 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput102 = getelementptr inbounds %struct.exec, %struct.exec* %78, i32 0, i32 0
  %79 = load i8*, i8** %reginput102, align 8
  store i8* %79, i8** %save, align 8
  %80 = load i8*, i8** %next, align 8
  %81 = load i8, i8* %80, align 1
  %conv103 = sext i8 %81 to i32
  %cmp104 = icmp ne i32 %conv103, 6
  br i1 %cmp104, label %if.then.106, label %if.else.108

if.then.106:                                      ; preds = %sw.bb.101
  %82 = load i8*, i8** %scan, align 8
  %add.ptr107 = getelementptr inbounds i8, i8* %82, i64 3
  store i8* %add.ptr107, i8** %next, align 8
  br label %if.end.119

if.else.108:                                      ; preds = %sw.bb.101
  br label %while.cond

while.cond:                                       ; preds = %if.end.116, %if.else.108
  %83 = load i8*, i8** %scan, align 8
  %84 = load i8, i8* %83, align 1
  %conv109 = sext i8 %84 to i32
  %cmp110 = icmp eq i32 %conv109, 6
  br i1 %cmp110, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %85 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %86 = load i8*, i8** %scan, align 8
  %add.ptr112 = getelementptr inbounds i8, i8* %86, i64 3
  %call113 = call i32 @regmatch(%struct.exec* %85, i8* %add.ptr112)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end.116:                                       ; preds = %while.body
  %87 = load i8*, i8** %save, align 8
  %88 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput117 = getelementptr inbounds %struct.exec, %struct.exec* %88, i32 0, i32 0
  store i8* %87, i8** %reginput117, align 8
  %89 = load i8*, i8** %scan, align 8
  %call118 = call i8* @regnext(i8* %89)
  store i8* %call118, i8** %scan, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

if.end.119:                                       ; preds = %if.then.106
  br label %sw.epilog

sw.bb.120:                                        ; preds = %for.body, %for.body
  %90 = load i8*, i8** %next, align 8
  %91 = load i8, i8* %90, align 1
  %conv121 = sext i8 %91 to i32
  %cmp122 = icmp eq i32 %conv121, 8
  br i1 %cmp122, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.120
  %92 = load i8*, i8** %next, align 8
  %add.ptr124 = getelementptr inbounds i8, i8* %92, i64 3
  %93 = load i8, i8* %add.ptr124, align 1
  %conv125 = sext i8 %93 to i32
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.120
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv125, %cond.true ], [ 0, %cond.false ]
  %conv126 = trunc i32 %cond to i8
  store i8 %conv126, i8* %nextch, align 1
  %94 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput129 = getelementptr inbounds %struct.exec, %struct.exec* %94, i32 0, i32 0
  %95 = load i8*, i8** %reginput129, align 8
  store i8* %95, i8** %save128, align 8
  %96 = load i8*, i8** %scan, align 8
  %97 = load i8, i8* %96, align 1
  %conv130 = sext i8 %97 to i32
  %cmp131 = icmp eq i32 %conv130, 10
  %cond133 = select i1 %cmp131, i32 0, i32 1
  %conv134 = sext i32 %cond133 to i64
  store i64 %conv134, i64* %min, align 8
  %98 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %99 = load i8*, i8** %scan, align 8
  %add.ptr135 = getelementptr inbounds i8, i8* %99, i64 3
  %call136 = call i64 @regrepeat(%struct.exec* %98, i8* %add.ptr135)
  %add = add i64 %call136, 1
  store i64 %add, i64* %no127, align 8
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc, %cond.end
  %100 = load i64, i64* %no127, align 8
  %101 = load i64, i64* %min, align 8
  %cmp138 = icmp ugt i64 %100, %101
  br i1 %cmp138, label %for.body.140, label %for.end

for.body.140:                                     ; preds = %for.cond.137
  %102 = load i8*, i8** %save128, align 8
  %103 = load i64, i64* %no127, align 8
  %add.ptr141 = getelementptr inbounds i8, i8* %102, i64 %103
  %add.ptr142 = getelementptr inbounds i8, i8* %add.ptr141, i64 -1
  %104 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput143 = getelementptr inbounds %struct.exec, %struct.exec* %104, i32 0, i32 0
  store i8* %add.ptr142, i8** %reginput143, align 8
  %105 = load i8, i8* %nextch, align 1
  %conv144 = sext i8 %105 to i32
  %cmp145 = icmp eq i32 %conv144, 0
  br i1 %cmp145, label %if.then.153, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %for.body.140
  %106 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput148 = getelementptr inbounds %struct.exec, %struct.exec* %106, i32 0, i32 0
  %107 = load i8*, i8** %reginput148, align 8
  %108 = load i8, i8* %107, align 1
  %conv149 = sext i8 %108 to i32
  %109 = load i8, i8* %nextch, align 1
  %conv150 = sext i8 %109 to i32
  %cmp151 = icmp eq i32 %conv149, %conv150
  br i1 %cmp151, label %if.then.153, label %if.end.158

if.then.153:                                      ; preds = %lor.lhs.false.147, %for.body.140
  %110 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %111 = load i8*, i8** %next, align 8
  %call154 = call i32 @regmatch(%struct.exec* %110, i8* %111)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.then.153
  store i32 1, i32* %retval
  br label %return

if.end.157:                                       ; preds = %if.then.153
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %lor.lhs.false.147
  br label %for.inc

for.inc:                                          ; preds = %if.end.158
  %112 = load i64, i64* %no127, align 8
  %dec = add i64 %112, -1
  store i64 %dec, i64* %no127, align 8
  br label %for.cond.137

for.end:                                          ; preds = %for.cond.137
  store i32 0, i32* %retval
  br label %return

sw.bb.159:                                        ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %for.body
  call void @sqd_regerror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.119, %sw.bb.69, %sw.bb.68, %if.end.65, %if.end.49, %if.end.34, %if.end.16, %if.end.9, %if.end
  br label %for.inc.160

for.inc.160:                                      ; preds = %sw.epilog
  %113 = load i8*, i8** %next, align 8
  store i8* %113, i8** %scan, align 8
  br label %for.cond

for.end.161:                                      ; preds = %for.cond
  call void @sqd_regerror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.161, %sw.default, %sw.bb.159, %for.end, %if.then.156, %while.end, %if.then.115, %if.else.100, %if.end.99, %if.else, %if.end.81, %if.then.64, %if.then.48, %if.then.33, %if.then.24, %if.then.15, %if.then.8, %if.then
  %114 = load i32, i32* %retval
  ret i32 %114
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i64 @regrepeat(%struct.exec* %ep, i8* %node) #0 {
entry:
  %retval = alloca i64, align 8
  %ep.addr = alloca %struct.exec*, align 8
  %node.addr = alloca i8*, align 8
  %count = alloca i64, align 8
  %scan = alloca i8*, align 8
  %ch = alloca i8, align 1
  store %struct.exec* %ep, %struct.exec** %ep.addr, align 8
  store i8* %node, i8** %node.addr, align 8
  %0 = load i8*, i8** %node.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 3, label %sw.bb
    i32 8, label %sw.bb.1
    i32 4, label %sw.bb.6
    i32 5, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput = getelementptr inbounds %struct.exec, %struct.exec* %2, i32 0, i32 0
  %3 = load i8*, i8** %reginput, align 8
  %call = call i64 @strlen(i8* %3) #7
  store i64 %call, i64* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %4 = load i8*, i8** %node.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 3
  %5 = load i8, i8* %add.ptr, align 1
  store i8 %5, i8* %ch, align 1
  store i64 0, i64* %count, align 8
  %6 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput2 = getelementptr inbounds %struct.exec, %struct.exec* %6, i32 0, i32 0
  %7 = load i8*, i8** %reginput2, align 8
  store i8* %7, i8** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.1
  %8 = load i8*, i8** %scan, align 8
  %9 = load i8, i8* %8, align 1
  %conv3 = sext i8 %9 to i32
  %10 = load i8, i8* %ch, align 1
  %conv4 = sext i8 %10 to i32
  %cmp = icmp eq i32 %conv3, %conv4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* %count, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %count, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i8*, i8** %scan, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i64, i64* %count, align 8
  store i64 %13, i64* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  %14 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput7 = getelementptr inbounds %struct.exec, %struct.exec* %14, i32 0, i32 0
  %15 = load i8*, i8** %reginput7, align 8
  %16 = load i8*, i8** %node.addr, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %16, i64 3
  %call9 = call i64 @strspn(i8* %15, i8* %add.ptr8) #7
  store i64 %call9, i64* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  %17 = load %struct.exec*, %struct.exec** %ep.addr, align 8
  %reginput11 = getelementptr inbounds %struct.exec, %struct.exec* %17, i32 0, i32 0
  %18 = load i8*, i8** %reginput11, align 8
  %19 = load i8*, i8** %node.addr, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %19, i64 3
  %call13 = call i64 @strcspn(i8* %18, i8* %add.ptr12) #7
  store i64 %call13, i64* %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @sqd_regerror(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i32 0, i32 0))
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.10, %sw.bb.6, %for.end, %sw.bb
  %20 = load i64, i64* %retval
  ret i64 %20
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
