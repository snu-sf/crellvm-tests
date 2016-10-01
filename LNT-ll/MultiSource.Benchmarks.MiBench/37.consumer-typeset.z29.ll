; ModuleID = './MultiSource.Benchmarks.MiBench/37.consumer-typeset.z29.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { %union.rec*, %union.rec* }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.14, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.2 }
%struct.anon.2 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.11, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.11 = type { %struct.GAP }
%union.anon.14 = type { %union.rec* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.0 = type { i8, i8, i32 }
%struct.anon.6 = type { i8, [3 x i8] }
%struct.anon.1 = type { i8, i8, i8 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13 }
%union.anon.13 = type { %union.rec* }

@scope_top = internal global i32 0, align 4
@suppress_scope = internal global i32 0, align 4
@suppress_visible = internal global i32 0, align 4
@symtab = internal global [1783 x %struct.anon] zeroinitializer, align 16
@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"PushScope: suppress_scope!\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"scope depth limit exceeded\00", align 1
@scope = internal global [300 x %union.rec*] zeroinitializer, align 16
@npars_only = internal global [300 x i32] zeroinitializer, align 16
@vis_only = internal global [300 x i32] zeroinitializer, align 16
@body_ok = internal global [300 x i32] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [41 x i8] c"PopScope: tried to pop empty scope stack\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"PopScope: suppress_scope!\00", align 1
@StartSym = external global %union.rec*, align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"LoadScopeSnapshot: type(ss)!\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"LoadScopeSnapshot: type(x)!\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"invalid symbol name %s\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"@Target\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"@Tag\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"@Optimize\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"@Key\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"@Merge\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"@Enclose\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"@Filter\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"%s must be a local definition\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"%s must lie within a symbol with a right parameter\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"a body parameter may not be named %s\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"the right parameter of a galley may not be called %s\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"symbol %s previously defined at%s\00", align 1
@AltErrorFormat = external global i32, align 4
@.str.21 = private unnamed_addr constant [34 x i8] c"symbol %s previously defined here\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"symbol name %s previously defined at%s\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"@Include\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"@SysInclude\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"<nilobj>\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"SymName: !is_word(type(p))!\00", align 1
@FullSymName.buff = internal global [512 x i8] zeroinitializer, align 16
@FullSymName.sname = internal global i8* null, align 8
@.str.27 = private unnamed_addr constant [37 x i8] c"FullSymName: enclosing(x) == nilobj!\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"full name of symbol is too long\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"symbol %s has missing %s\00", align 1
@.str.31 = private unnamed_addr constant [56 x i8] c"symbol %s has erroneous code %c (database out of date?)\00", align 1

; Function Attrs: nounwind uwtable
define void @InitSym() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* @scope_top, align 4
  store i32 0, i32* @suppress_scope, align 4
  store i32 0, i32* @suppress_visible, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1783
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1783 x %struct.anon], [1783 x %struct.anon]* @symtab, i32 0, i64 %idxprom
  %2 = bitcast %struct.anon* %arrayidx to %union.rec*
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [1783 x %struct.anon], [1783 x %struct.anon]* @symtab, i32 0, i64 %idxprom1
  %f2 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx2, i32 0, i32 1
  store %union.rec* %2, %union.rec** %f2, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [1783 x %struct.anon], [1783 x %struct.anon]* @symtab, i32 0, i64 %idxprom3
  %f1 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx4, i32 0, i32 0
  store %union.rec* %2, %union.rec** %f1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @PushScope(%union.rec* %x, i32 %npars, i32 %vis) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %npars.addr = alloca i32, align 4
  %vis.addr = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32 %npars, i32* %npars.addr, align 4
  store i32 %vis, i32* %vis.addr, align 4
  %0 = load i32, i32* @suppress_scope, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @scope_top, align 4
  %cmp1 = icmp sge i32 %2, 300
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %3 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %call3 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct.FILE_POS* %ofpos)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %4 = load %union.rec*, %union.rec** %x.addr, align 8
  %5 = load i32, i32* @scope_top, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [300 x %union.rec*], [300 x %union.rec*]* @scope, i32 0, i64 %idxprom
  store %union.rec* %4, %union.rec** %arrayidx, align 8
  %6 = load i32, i32* %npars.addr, align 4
  %7 = load i32, i32* @scope_top, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [300 x i32], [300 x i32]* @npars_only, i32 0, i64 %idxprom5
  store i32 %6, i32* %arrayidx6, align 4
  %8 = load i32, i32* %vis.addr, align 4
  %9 = load i32, i32* @scope_top, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [300 x i32], [300 x i32]* @vis_only, i32 0, i64 %idxprom7
  store i32 %8, i32* %arrayidx8, align 4
  %10 = load i32, i32* @scope_top, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [300 x i32], [300 x i32]* @body_ok, i32 0, i64 %idxprom9
  store i32 0, i32* %arrayidx10, align 4
  %11 = load i32, i32* @scope_top, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* @scope_top, align 4
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define void @PopScope() #0 {
entry:
  %0 = load i32, i32* @scope_top, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @suppress_scope, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %4 = load i32, i32* @scope_top, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* @scope_top, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @SuppressVisible() #0 {
entry:
  store i32 1, i32* @suppress_visible, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @UnSuppressVisible() #0 {
entry:
  store i32 0, i32* @suppress_visible, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @SuppressScope() #0 {
entry:
  store i32 1, i32* @suppress_scope, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @UnSuppressScope() #0 {
entry:
  store i32 0, i32* @suppress_scope, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @SwitchScope(%union.rec* %sym) #0 {
entry:
  %sym.addr = alloca %union.rec*, align 8
  %i = alloca i32, align 4
  %new_scopes = alloca [300 x %union.rec*], align 16
  store %union.rec* %sym, %union.rec** %sym.addr, align 8
  %0 = load %union.rec*, %union.rec** %sym.addr, align 8
  %cmp = icmp eq %union.rec* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %union.rec*, %union.rec** @StartSym, align 8
  call void @PushScope(%union.rec* %1, i32 0, i32 0)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %2 = load %union.rec*, %union.rec** %sym.addr, align 8
  %3 = load %union.rec*, %union.rec** @StartSym, align 8
  %cmp1 = icmp ne %union.rec* %2, %3
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os6 = bitcast %union.rec* %4 to %struct.symbol_type*
  %oenclosing = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 3
  %5 = load %union.rec*, %union.rec** %oenclosing, align 8
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [300 x %union.rec*], [300 x %union.rec*]* %new_scopes, i32 0, i64 %idxprom
  store %union.rec* %5, %union.rec** %arrayidx, align 8
  %7 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os62 = bitcast %union.rec* %7 to %struct.symbol_type*
  %oenclosing3 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os62, i32 0, i32 3
  %8 = load %union.rec*, %union.rec** %oenclosing3, align 8
  store %union.rec* %8, %union.rec** %sym.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.4

while.cond.4:                                     ; preds = %while.body.6, %while.end
  %9 = load i32, i32* %i, align 4
  %cmp5 = icmp sgt i32 %9, 0
  br i1 %cmp5, label %while.body.6, label %while.end.9

while.body.6:                                     ; preds = %while.cond.4
  %10 = load i32, i32* %i, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %i, align 4
  %idxprom7 = sext i32 %dec to i64
  %arrayidx8 = getelementptr inbounds [300 x %union.rec*], [300 x %union.rec*]* %new_scopes, i32 0, i64 %idxprom7
  %11 = load %union.rec*, %union.rec** %arrayidx8, align 8
  call void @PushScope(%union.rec* %11, i32 0, i32 0)
  br label %while.cond.4

while.end.9:                                      ; preds = %while.cond.4
  br label %if.end

if.end:                                           ; preds = %while.end.9, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @UnSwitchScope(%union.rec* %sym) #0 {
entry:
  %sym.addr = alloca %union.rec*, align 8
  store %union.rec* %sym, %union.rec** %sym.addr, align 8
  %0 = load %union.rec*, %union.rec** %sym.addr, align 8
  %cmp = icmp eq %union.rec* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @PopScope()
  br label %if.end

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %1 = load %union.rec*, %union.rec** %sym.addr, align 8
  %2 = load %union.rec*, %union.rec** @StartSym, align 8
  %cmp1 = icmp ne %union.rec* %1, %2
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @PopScope()
  %3 = load %union.rec*, %union.rec** %sym.addr, align 8
  %os6 = bitcast %union.rec* %3 to %struct.symbol_type*
  %oenclosing = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 3
  %4 = load %union.rec*, %union.rec** %oenclosing, align 8
  store %union.rec* %4, %union.rec** %sym.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @BodyParAllowed() #0 {
entry:
  %0 = load i32, i32* @scope_top, align 4
  %sub = sub nsw i32 %0, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [300 x i32], [300 x i32]* @body_ok, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @BodyParNotAllowed() #0 {
entry:
  %0 = load i32, i32* @scope_top, align 4
  %sub = sub nsw i32 %0, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [300 x i32], [300 x i32]* @body_ok, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @DebugScope() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i32, i32* @suppress_scope, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @scope_top, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %union.rec* @GetScopeSnapshot() #0 {
entry:
  %ss = alloca %union.rec*, align 8
  %x = alloca %union.rec*, align 8
  %i = alloca i32, align 4
  %0 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv = zext i8 %0 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv1 = sext i32 %conv to i64
  %cmp = icmp uge i64 %conv1, 265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1)
  br label %if.end.13

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %3 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp3 = icmp eq %union.rec* %3, null
  br i1 %cmp3, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %4 = load i32, i32* @zz_size, align 4
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6 = call %union.rec* @GetMemory(i32 %4, %struct.FILE_POS* %5)
  store %union.rec* %call6, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %6 = load i32, i32* @zz_size, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom8
  %7 = load %union.rec*, %union.rec** %arrayidx9, align 8
  store %union.rec* %7, %union.rec** @zz_hold, align 8
  store %union.rec* %7, %union.rec** @zz_hold, align 8
  %8 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %8 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred, align 8
  %10 = load i32, i32* @zz_size, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom11
  store %union.rec* %9, %union.rec** %arrayidx12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.5
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %11 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os114 = bitcast %union.rec* %11 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.0*
  %otype = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11, i32 0, i32 0
  store i8 17, i8* %otype, align 1
  %12 = load %union.rec*, %union.rec** @zz_hold, align 8
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os115 = bitcast %union.rec* %13 to %struct.word_type*
  %olist16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist16, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx17, i32 0, i32 1
  store %union.rec* %12, %union.rec** %osucc, align 8
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os118 = bitcast %union.rec* %14 to %struct.word_type*
  %olist19 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist19, i32 0, i64 1
  %opred21 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx20, i32 0, i32 0
  store %union.rec* %12, %union.rec** %opred21, align 8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os122 = bitcast %union.rec* %15 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 0
  %osucc25 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 1
  store %union.rec* %12, %union.rec** %osucc25, align 8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os126 = bitcast %union.rec* %16 to %struct.word_type*
  %olist27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist27, i32 0, i64 0
  %opred29 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx28, i32 0, i32 0
  store %union.rec* %12, %union.rec** %opred29, align 8
  store %union.rec* %12, %union.rec** %ss, align 8
  %17 = load i32, i32* @scope_top, align 4
  %sub = sub nsw i32 %17, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %18 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %18 to i64
  %arrayidx31 = getelementptr inbounds [300 x %union.rec*], [300 x %union.rec*]* @scope, i32 0, i64 %idxprom30
  %19 = load %union.rec*, %union.rec** %arrayidx31, align 8
  %20 = load %union.rec*, %union.rec** @StartSym, align 8
  %cmp32 = icmp ne %union.rec* %19, %20
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 149), align 1
  %conv34 = zext i8 %21 to i32
  store i32 %conv34, i32* @zz_size, align 4
  %conv35 = sext i32 %conv34 to i64
  %cmp36 = icmp uge i64 %conv35, 265
  br i1 %cmp36, label %if.then.38, label %if.else.40

if.then.38:                                       ; preds = %for.body
  %22 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call39 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %22)
  br label %if.end.57

if.else.40:                                       ; preds = %for.body
  %23 = load i32, i32* @zz_size, align 4
  %idxprom41 = sext i32 %23 to i64
  %arrayidx42 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom41
  %24 = load %union.rec*, %union.rec** %arrayidx42, align 8
  %cmp43 = icmp eq %union.rec* %24, null
  br i1 %cmp43, label %if.then.45, label %if.else.47

if.then.45:                                       ; preds = %if.else.40
  %25 = load i32, i32* @zz_size, align 4
  %26 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call46 = call %union.rec* @GetMemory(i32 %25, %struct.FILE_POS* %26)
  store %union.rec* %call46, %union.rec** @zz_hold, align 8
  br label %if.end.56

if.else.47:                                       ; preds = %if.else.40
  %27 = load i32, i32* @zz_size, align 4
  %idxprom48 = sext i32 %27 to i64
  %arrayidx49 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom48
  %28 = load %union.rec*, %union.rec** %arrayidx49, align 8
  store %union.rec* %28, %union.rec** @zz_hold, align 8
  store %union.rec* %28, %union.rec** @zz_hold, align 8
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os150 = bitcast %union.rec* %29 to %struct.word_type*
  %olist51 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist51, i32 0, i64 0
  %opred53 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx52, i32 0, i32 0
  %30 = load %union.rec*, %union.rec** %opred53, align 8
  %31 = load i32, i32* @zz_size, align 4
  %idxprom54 = sext i32 %31 to i64
  %arrayidx55 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom54
  store %union.rec* %30, %union.rec** %arrayidx55, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.47, %if.then.45
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.38
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os158 = bitcast %union.rec* %32 to %struct.word_type*
  %ou159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 1
  %os1160 = bitcast %union.FIRST_UNION* %ou159 to %struct.anon.0*
  %otype61 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1160, i32 0, i32 0
  store i8 -107, i8* %otype61, align 1
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os162 = bitcast %union.rec* %34 to %struct.word_type*
  %olist63 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist63, i32 0, i64 1
  %osucc65 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx64, i32 0, i32 1
  store %union.rec* %33, %union.rec** %osucc65, align 8
  %35 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os166 = bitcast %union.rec* %35 to %struct.word_type*
  %olist67 = getelementptr inbounds %struct.word_type, %struct.word_type* %os166, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist67, i32 0, i64 1
  %opred69 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx68, i32 0, i32 0
  store %union.rec* %33, %union.rec** %opred69, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os170 = bitcast %union.rec* %36 to %struct.word_type*
  %olist71 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist71, i32 0, i64 0
  %osucc73 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx72, i32 0, i32 1
  store %union.rec* %33, %union.rec** %osucc73, align 8
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os174 = bitcast %union.rec* %37 to %struct.word_type*
  %olist75 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist75, i32 0, i64 0
  %opred77 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx76, i32 0, i32 0
  store %union.rec* %33, %union.rec** %opred77, align 8
  store %union.rec* %33, %union.rec** %x, align 8
  %38 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv78 = zext i8 %38 to i32
  store i32 %conv78, i32* @zz_size, align 4
  %conv79 = sext i32 %conv78 to i64
  %cmp80 = icmp uge i64 %conv79, 265
  br i1 %cmp80, label %if.then.82, label %if.else.84

if.then.82:                                       ; preds = %if.end.57
  %39 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call83 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %39)
  br label %if.end.101

if.else.84:                                       ; preds = %if.end.57
  %40 = load i32, i32* @zz_size, align 4
  %idxprom85 = sext i32 %40 to i64
  %arrayidx86 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom85
  %41 = load %union.rec*, %union.rec** %arrayidx86, align 8
  %cmp87 = icmp eq %union.rec* %41, null
  br i1 %cmp87, label %if.then.89, label %if.else.91

if.then.89:                                       ; preds = %if.else.84
  %42 = load i32, i32* @zz_size, align 4
  %43 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call90 = call %union.rec* @GetMemory(i32 %42, %struct.FILE_POS* %43)
  store %union.rec* %call90, %union.rec** @zz_hold, align 8
  br label %if.end.100

if.else.91:                                       ; preds = %if.else.84
  %44 = load i32, i32* @zz_size, align 4
  %idxprom92 = sext i32 %44 to i64
  %arrayidx93 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom92
  %45 = load %union.rec*, %union.rec** %arrayidx93, align 8
  store %union.rec* %45, %union.rec** @zz_hold, align 8
  store %union.rec* %45, %union.rec** @zz_hold, align 8
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os194 = bitcast %union.rec* %46 to %struct.word_type*
  %olist95 = getelementptr inbounds %struct.word_type, %struct.word_type* %os194, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist95, i32 0, i64 0
  %opred97 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx96, i32 0, i32 0
  %47 = load %union.rec*, %union.rec** %opred97, align 8
  %48 = load i32, i32* @zz_size, align 4
  %idxprom98 = sext i32 %48 to i64
  %arrayidx99 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom98
  store %union.rec* %47, %union.rec** %arrayidx99, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.91, %if.then.89
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.82
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1102 = bitcast %union.rec* %49 to %struct.word_type*
  %ou1103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1102, i32 0, i32 1
  %os11104 = bitcast %union.FIRST_UNION* %ou1103 to %struct.anon.0*
  %otype105 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11104, i32 0, i32 0
  store i8 0, i8* %otype105, align 1
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1106 = bitcast %union.rec* %51 to %struct.word_type*
  %olist107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1106, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist107, i32 0, i64 1
  %osucc109 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx108, i32 0, i32 1
  store %union.rec* %50, %union.rec** %osucc109, align 8
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1110 = bitcast %union.rec* %52 to %struct.word_type*
  %olist111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1110, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist111, i32 0, i64 1
  %opred113 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx112, i32 0, i32 0
  store %union.rec* %50, %union.rec** %opred113, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1114 = bitcast %union.rec* %53 to %struct.word_type*
  %olist115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1114, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist115, i32 0, i64 0
  %osucc117 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx116, i32 0, i32 1
  store %union.rec* %50, %union.rec** %osucc117, align 8
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1118 = bitcast %union.rec* %54 to %struct.word_type*
  %olist119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist119, i32 0, i64 0
  %opred121 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx120, i32 0, i32 0
  store %union.rec* %50, %union.rec** %opred121, align 8
  store %union.rec* %50, %union.rec** @xx_link, align 8
  %55 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %55, %union.rec** @zz_res, align 8
  %56 = load %union.rec*, %union.rec** %ss, align 8
  store %union.rec* %56, %union.rec** @zz_hold, align 8
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp122 = icmp eq %union.rec* %57, null
  br i1 %cmp122, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.101
  %58 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.156

cond.false:                                       ; preds = %if.end.101
  %59 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp124 = icmp eq %union.rec* %59, null
  br i1 %cmp124, label %cond.true.126, label %cond.false.127

cond.true.126:                                    ; preds = %cond.false
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.127:                                   ; preds = %cond.false
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1128 = bitcast %union.rec* %61 to %struct.word_type*
  %olist129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist129, i32 0, i64 0
  %opred131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx130, i32 0, i32 0
  %62 = load %union.rec*, %union.rec** %opred131, align 8
  store %union.rec* %62, %union.rec** @zz_tmp, align 8
  %63 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1132 = bitcast %union.rec* %63 to %struct.word_type*
  %olist133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist133, i32 0, i64 0
  %opred135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx134, i32 0, i32 0
  %64 = load %union.rec*, %union.rec** %opred135, align 8
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1136 = bitcast %union.rec* %65 to %struct.word_type*
  %olist137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1136, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist137, i32 0, i64 0
  %opred139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx138, i32 0, i32 0
  store %union.rec* %64, %union.rec** %opred139, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %67 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1140 = bitcast %union.rec* %67 to %struct.word_type*
  %olist141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1140, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist141, i32 0, i64 0
  %opred143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx142, i32 0, i32 0
  %68 = load %union.rec*, %union.rec** %opred143, align 8
  %os1144 = bitcast %union.rec* %68 to %struct.word_type*
  %olist145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1144, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist145, i32 0, i64 0
  %osucc147 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx146, i32 0, i32 1
  store %union.rec* %66, %union.rec** %osucc147, align 8
  %69 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %70 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1148 = bitcast %union.rec* %70 to %struct.word_type*
  %olist149 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1148, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist149, i32 0, i64 0
  %opred151 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx150, i32 0, i32 0
  store %union.rec* %69, %union.rec** %opred151, align 8
  %71 = load %union.rec*, %union.rec** @zz_res, align 8
  %72 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1152 = bitcast %union.rec* %72 to %struct.word_type*
  %olist153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1152, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist153, i32 0, i64 0
  %osucc155 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx154, i32 0, i32 1
  store %union.rec* %71, %union.rec** %osucc155, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.127, %cond.true.126
  %cond = phi %union.rec* [ %60, %cond.true.126 ], [ %71, %cond.false.127 ]
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.end, %cond.true
  %cond157 = phi %union.rec* [ %58, %cond.true ], [ %cond, %cond.end ]
  %73 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %73, %union.rec** @zz_res, align 8
  %74 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %74, %union.rec** @zz_hold, align 8
  %75 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp158 = icmp eq %union.rec* %75, null
  br i1 %cmp158, label %cond.true.160, label %cond.false.161

cond.true.160:                                    ; preds = %cond.end.156
  %76 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.196

cond.false.161:                                   ; preds = %cond.end.156
  %77 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp162 = icmp eq %union.rec* %77, null
  br i1 %cmp162, label %cond.true.164, label %cond.false.165

cond.true.164:                                    ; preds = %cond.false.161
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.194

cond.false.165:                                   ; preds = %cond.false.161
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1166 = bitcast %union.rec* %79 to %struct.word_type*
  %olist167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1166, i32 0, i32 0
  %arrayidx168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist167, i32 0, i64 1
  %opred169 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx168, i32 0, i32 0
  %80 = load %union.rec*, %union.rec** %opred169, align 8
  store %union.rec* %80, %union.rec** @zz_tmp, align 8
  %81 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1170 = bitcast %union.rec* %81 to %struct.word_type*
  %olist171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1170, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist171, i32 0, i64 1
  %opred173 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx172, i32 0, i32 0
  %82 = load %union.rec*, %union.rec** %opred173, align 8
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1174 = bitcast %union.rec* %83 to %struct.word_type*
  %olist175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1174, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist175, i32 0, i64 1
  %opred177 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx176, i32 0, i32 0
  store %union.rec* %82, %union.rec** %opred177, align 8
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %85 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1178 = bitcast %union.rec* %85 to %struct.word_type*
  %olist179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1178, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist179, i32 0, i64 1
  %opred181 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx180, i32 0, i32 0
  %86 = load %union.rec*, %union.rec** %opred181, align 8
  %os1182 = bitcast %union.rec* %86 to %struct.word_type*
  %olist183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1182, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist183, i32 0, i64 1
  %osucc185 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx184, i32 0, i32 1
  store %union.rec* %84, %union.rec** %osucc185, align 8
  %87 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %88 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1186 = bitcast %union.rec* %88 to %struct.word_type*
  %olist187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1186, i32 0, i32 0
  %arrayidx188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist187, i32 0, i64 1
  %opred189 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx188, i32 0, i32 0
  store %union.rec* %87, %union.rec** %opred189, align 8
  %89 = load %union.rec*, %union.rec** @zz_res, align 8
  %90 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1190 = bitcast %union.rec* %90 to %struct.word_type*
  %olist191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1190, i32 0, i32 0
  %arrayidx192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist191, i32 0, i64 1
  %osucc193 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx192, i32 0, i32 1
  store %union.rec* %89, %union.rec** %osucc193, align 8
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.165, %cond.true.164
  %cond195 = phi %union.rec* [ %78, %cond.true.164 ], [ %89, %cond.false.165 ]
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.end.194, %cond.true.160
  %cond197 = phi %union.rec* [ %76, %cond.true.160 ], [ %cond195, %cond.end.194 ]
  %91 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv198 = zext i8 %91 to i32
  store i32 %conv198, i32* @zz_size, align 4
  %conv199 = sext i32 %conv198 to i64
  %cmp200 = icmp uge i64 %conv199, 265
  br i1 %cmp200, label %if.then.202, label %if.else.204

if.then.202:                                      ; preds = %cond.end.196
  %92 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call203 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %92)
  br label %if.end.221

if.else.204:                                      ; preds = %cond.end.196
  %93 = load i32, i32* @zz_size, align 4
  %idxprom205 = sext i32 %93 to i64
  %arrayidx206 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom205
  %94 = load %union.rec*, %union.rec** %arrayidx206, align 8
  %cmp207 = icmp eq %union.rec* %94, null
  br i1 %cmp207, label %if.then.209, label %if.else.211

if.then.209:                                      ; preds = %if.else.204
  %95 = load i32, i32* @zz_size, align 4
  %96 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call210 = call %union.rec* @GetMemory(i32 %95, %struct.FILE_POS* %96)
  store %union.rec* %call210, %union.rec** @zz_hold, align 8
  br label %if.end.220

if.else.211:                                      ; preds = %if.else.204
  %97 = load i32, i32* @zz_size, align 4
  %idxprom212 = sext i32 %97 to i64
  %arrayidx213 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom212
  %98 = load %union.rec*, %union.rec** %arrayidx213, align 8
  store %union.rec* %98, %union.rec** @zz_hold, align 8
  store %union.rec* %98, %union.rec** @zz_hold, align 8
  %99 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1214 = bitcast %union.rec* %99 to %struct.word_type*
  %olist215 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1214, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist215, i32 0, i64 0
  %opred217 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx216, i32 0, i32 0
  %100 = load %union.rec*, %union.rec** %opred217, align 8
  %101 = load i32, i32* @zz_size, align 4
  %idxprom218 = sext i32 %101 to i64
  %arrayidx219 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom218
  store %union.rec* %100, %union.rec** %arrayidx219, align 8
  br label %if.end.220

if.end.220:                                       ; preds = %if.else.211, %if.then.209
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %if.then.202
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1222 = bitcast %union.rec* %102 to %struct.word_type*
  %ou1223 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1222, i32 0, i32 1
  %os11224 = bitcast %union.FIRST_UNION* %ou1223 to %struct.anon.0*
  %otype225 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11224, i32 0, i32 0
  store i8 0, i8* %otype225, align 1
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1226 = bitcast %union.rec* %104 to %struct.word_type*
  %olist227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1226, i32 0, i32 0
  %arrayidx228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist227, i32 0, i64 1
  %osucc229 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx228, i32 0, i32 1
  store %union.rec* %103, %union.rec** %osucc229, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1230 = bitcast %union.rec* %105 to %struct.word_type*
  %olist231 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1230, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist231, i32 0, i64 1
  %opred233 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx232, i32 0, i32 0
  store %union.rec* %103, %union.rec** %opred233, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1234 = bitcast %union.rec* %106 to %struct.word_type*
  %olist235 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1234, i32 0, i32 0
  %arrayidx236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist235, i32 0, i64 0
  %osucc237 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx236, i32 0, i32 1
  store %union.rec* %103, %union.rec** %osucc237, align 8
  %107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1238 = bitcast %union.rec* %107 to %struct.word_type*
  %olist239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1238, i32 0, i32 0
  %arrayidx240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist239, i32 0, i64 0
  %opred241 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx240, i32 0, i32 0
  store %union.rec* %103, %union.rec** %opred241, align 8
  store %union.rec* %103, %union.rec** @xx_link, align 8
  %108 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %108, %union.rec** @zz_res, align 8
  %109 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %109, %union.rec** @zz_hold, align 8
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp242 = icmp eq %union.rec* %110, null
  br i1 %cmp242, label %cond.true.244, label %cond.false.245

cond.true.244:                                    ; preds = %if.end.221
  %111 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.280

cond.false.245:                                   ; preds = %if.end.221
  %112 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp246 = icmp eq %union.rec* %112, null
  br i1 %cmp246, label %cond.true.248, label %cond.false.249

cond.true.248:                                    ; preds = %cond.false.245
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.278

cond.false.249:                                   ; preds = %cond.false.245
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1250 = bitcast %union.rec* %114 to %struct.word_type*
  %olist251 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1250, i32 0, i32 0
  %arrayidx252 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist251, i32 0, i64 0
  %opred253 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx252, i32 0, i32 0
  %115 = load %union.rec*, %union.rec** %opred253, align 8
  store %union.rec* %115, %union.rec** @zz_tmp, align 8
  %116 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1254 = bitcast %union.rec* %116 to %struct.word_type*
  %olist255 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1254, i32 0, i32 0
  %arrayidx256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist255, i32 0, i64 0
  %opred257 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx256, i32 0, i32 0
  %117 = load %union.rec*, %union.rec** %opred257, align 8
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1258 = bitcast %union.rec* %118 to %struct.word_type*
  %olist259 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1258, i32 0, i32 0
  %arrayidx260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist259, i32 0, i64 0
  %opred261 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx260, i32 0, i32 0
  store %union.rec* %117, %union.rec** %opred261, align 8
  %119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %120 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1262 = bitcast %union.rec* %120 to %struct.word_type*
  %olist263 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1262, i32 0, i32 0
  %arrayidx264 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist263, i32 0, i64 0
  %opred265 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx264, i32 0, i32 0
  %121 = load %union.rec*, %union.rec** %opred265, align 8
  %os1266 = bitcast %union.rec* %121 to %struct.word_type*
  %olist267 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1266, i32 0, i32 0
  %arrayidx268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist267, i32 0, i64 0
  %osucc269 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx268, i32 0, i32 1
  store %union.rec* %119, %union.rec** %osucc269, align 8
  %122 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %123 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1270 = bitcast %union.rec* %123 to %struct.word_type*
  %olist271 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1270, i32 0, i32 0
  %arrayidx272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist271, i32 0, i64 0
  %opred273 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx272, i32 0, i32 0
  store %union.rec* %122, %union.rec** %opred273, align 8
  %124 = load %union.rec*, %union.rec** @zz_res, align 8
  %125 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1274 = bitcast %union.rec* %125 to %struct.word_type*
  %olist275 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1274, i32 0, i32 0
  %arrayidx276 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist275, i32 0, i64 0
  %osucc277 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx276, i32 0, i32 1
  store %union.rec* %124, %union.rec** %osucc277, align 8
  br label %cond.end.278

cond.end.278:                                     ; preds = %cond.false.249, %cond.true.248
  %cond279 = phi %union.rec* [ %113, %cond.true.248 ], [ %124, %cond.false.249 ]
  br label %cond.end.280

cond.end.280:                                     ; preds = %cond.end.278, %cond.true.244
  %cond281 = phi %union.rec* [ %111, %cond.true.244 ], [ %cond279, %cond.end.278 ]
  %126 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %126, %union.rec** @zz_res, align 8
  %127 = load i32, i32* %i, align 4
  %idxprom282 = sext i32 %127 to i64
  %arrayidx283 = getelementptr inbounds [300 x %union.rec*], [300 x %union.rec*]* @scope, i32 0, i64 %idxprom282
  %128 = load %union.rec*, %union.rec** %arrayidx283, align 8
  store %union.rec* %128, %union.rec** @zz_hold, align 8
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp284 = icmp eq %union.rec* %129, null
  br i1 %cmp284, label %cond.true.286, label %cond.false.287

cond.true.286:                                    ; preds = %cond.end.280
  %130 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.322

cond.false.287:                                   ; preds = %cond.end.280
  %131 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp288 = icmp eq %union.rec* %131, null
  br i1 %cmp288, label %cond.true.290, label %cond.false.291

cond.true.290:                                    ; preds = %cond.false.287
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.320

cond.false.291:                                   ; preds = %cond.false.287
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1292 = bitcast %union.rec* %133 to %struct.word_type*
  %olist293 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1292, i32 0, i32 0
  %arrayidx294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist293, i32 0, i64 1
  %opred295 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx294, i32 0, i32 0
  %134 = load %union.rec*, %union.rec** %opred295, align 8
  store %union.rec* %134, %union.rec** @zz_tmp, align 8
  %135 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1296 = bitcast %union.rec* %135 to %struct.word_type*
  %olist297 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1296, i32 0, i32 0
  %arrayidx298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist297, i32 0, i64 1
  %opred299 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx298, i32 0, i32 0
  %136 = load %union.rec*, %union.rec** %opred299, align 8
  %137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1300 = bitcast %union.rec* %137 to %struct.word_type*
  %olist301 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1300, i32 0, i32 0
  %arrayidx302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist301, i32 0, i64 1
  %opred303 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx302, i32 0, i32 0
  store %union.rec* %136, %union.rec** %opred303, align 8
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %139 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1304 = bitcast %union.rec* %139 to %struct.word_type*
  %olist305 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1304, i32 0, i32 0
  %arrayidx306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist305, i32 0, i64 1
  %opred307 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx306, i32 0, i32 0
  %140 = load %union.rec*, %union.rec** %opred307, align 8
  %os1308 = bitcast %union.rec* %140 to %struct.word_type*
  %olist309 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1308, i32 0, i32 0
  %arrayidx310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist309, i32 0, i64 1
  %osucc311 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx310, i32 0, i32 1
  store %union.rec* %138, %union.rec** %osucc311, align 8
  %141 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %142 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1312 = bitcast %union.rec* %142 to %struct.word_type*
  %olist313 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1312, i32 0, i32 0
  %arrayidx314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist313, i32 0, i64 1
  %opred315 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx314, i32 0, i32 0
  store %union.rec* %141, %union.rec** %opred315, align 8
  %143 = load %union.rec*, %union.rec** @zz_res, align 8
  %144 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1316 = bitcast %union.rec* %144 to %struct.word_type*
  %olist317 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1316, i32 0, i32 0
  %arrayidx318 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist317, i32 0, i64 1
  %osucc319 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx318, i32 0, i32 1
  store %union.rec* %143, %union.rec** %osucc319, align 8
  br label %cond.end.320

cond.end.320:                                     ; preds = %cond.false.291, %cond.true.290
  %cond321 = phi %union.rec* [ %132, %cond.true.290 ], [ %143, %cond.false.291 ]
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.end.320, %cond.true.286
  %cond323 = phi %union.rec* [ %130, %cond.true.286 ], [ %cond321, %cond.end.320 ]
  %145 = load i32, i32* %i, align 4
  %idxprom324 = sext i32 %145 to i64
  %arrayidx325 = getelementptr inbounds [300 x i32], [300 x i32]* @npars_only, i32 0, i64 %idxprom324
  %146 = load i32, i32* %arrayidx325, align 4
  %147 = load %union.rec*, %union.rec** %x, align 8
  %os1326 = bitcast %union.rec* %147 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1326, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %148 = bitcast %struct.anon.2* %os22 to i32*
  %bf.load = load i32, i32* %148, align 4
  %bf.value = and i32 %146, 4095
  %bf.clear = and i32 %bf.load, -4096
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %148, align 4
  %149 = load i32, i32* %i, align 4
  %idxprom327 = sext i32 %149 to i64
  %arrayidx328 = getelementptr inbounds [300 x i32], [300 x i32]* @vis_only, i32 0, i64 %idxprom327
  %150 = load i32, i32* %arrayidx328, align 4
  %151 = load %union.rec*, %union.rec** %x, align 8
  %os1329 = bitcast %union.rec* %151 to %struct.word_type*
  %ou2330 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1329, i32 0, i32 2
  %os22331 = bitcast %union.SECOND_UNION* %ou2330 to %struct.anon.2*
  %152 = bitcast %struct.anon.2* %os22331 to i32*
  %bf.load332 = load i32, i32* %152, align 4
  %bf.value333 = and i32 %150, 1023
  %bf.shl = shl i32 %bf.value333, 12
  %bf.clear334 = and i32 %bf.load332, -4190209
  %bf.set335 = or i32 %bf.clear334, %bf.shl
  store i32 %bf.set335, i32* %152, align 4
  %153 = load i32, i32* %i, align 4
  %idxprom336 = sext i32 %153 to i64
  %arrayidx337 = getelementptr inbounds [300 x i32], [300 x i32]* @body_ok, i32 0, i64 %idxprom336
  %154 = load i32, i32* %arrayidx337, align 4
  %155 = load %union.rec*, %union.rec** %x, align 8
  %os1338 = bitcast %union.rec* %155 to %struct.word_type*
  %ou2339 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1338, i32 0, i32 2
  %os22340 = bitcast %union.SECOND_UNION* %ou2339 to %struct.anon.2*
  %156 = bitcast %struct.anon.2* %os22340 to i32*
  %bf.load341 = load i32, i32* %156, align 4
  %bf.value342 = and i32 %154, 1
  %bf.shl343 = shl i32 %bf.value342, 22
  %bf.clear344 = and i32 %bf.load341, -4194305
  %bf.set345 = or i32 %bf.clear344, %bf.shl343
  store i32 %bf.set345, i32* %156, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.322
  %157 = load i32, i32* %i, align 4
  %dec = add nsw i32 %157, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %158 = load i32, i32* @suppress_visible, align 4
  %159 = load %union.rec*, %union.rec** %ss, align 8
  %os1346 = bitcast %union.rec* %159 to %struct.word_type*
  %ou2347 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1346, i32 0, i32 2
  %os22348 = bitcast %union.SECOND_UNION* %ou2347 to %struct.anon.2*
  %160 = bitcast %struct.anon.2* %os22348 to i32*
  %bf.load349 = load i32, i32* %160, align 4
  %bf.value350 = and i32 %158, 63
  %bf.shl351 = shl i32 %bf.value350, 23
  %bf.clear352 = and i32 %bf.load349, -528482305
  %bf.set353 = or i32 %bf.clear352, %bf.shl351
  store i32 %bf.set353, i32* %160, align 4
  %161 = load %union.rec*, %union.rec** %ss, align 8
  ret %union.rec* %161
}

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define void @LoadScopeSnapshot(%union.rec* %ss) #0 {
entry:
  %ss.addr = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %x = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %tmp = alloca i32, align 4
  store %union.rec* %ss, %union.rec** %ss.addr, align 8
  %0 = load %union.rec*, %union.rec** %ss.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.0*
  %otype = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 17
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** @StartSym, align 8
  call void @PushScope(%union.rec* %3, i32 0, i32 0)
  %4 = load %union.rec*, %union.rec** %ss.addr, align 8
  %os12 = bitcast %union.rec* %4 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 0
  %5 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %5, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.67, %if.end
  %6 = load %union.rec*, %union.rec** %link, align 8
  %7 = load %union.rec*, %union.rec** %ss.addr, align 8
  %cmp3 = icmp ne %union.rec* %6, %7
  br i1 %cmp3, label %for.body, label %for.end.72

for.body:                                         ; preds = %for.cond
  %8 = load %union.rec*, %union.rec** %link, align 8
  %os15 = bitcast %union.rec* %8 to %struct.word_type*
  %olist6 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6, i32 0, i64 1
  %opred8 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred8, align 8
  store %union.rec* %9, %union.rec** %x, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %10 = load %union.rec*, %union.rec** %x, align 8
  %os110 = bitcast %union.rec* %10 to %struct.word_type*
  %ou111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 1
  %os1112 = bitcast %union.FIRST_UNION* %ou111 to %struct.anon.0*
  %otype13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1112, i32 0, i32 0
  %11 = load i8, i8* %otype13, align 1
  %conv14 = zext i8 %11 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.9
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %12 = load %union.rec*, %union.rec** %x, align 8
  %os118 = bitcast %union.rec* %12 to %struct.word_type*
  %olist19 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist19, i32 0, i64 1
  %opred21 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx20, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred21, align 8
  store %union.rec* %13, %union.rec** %x, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %14 = load %union.rec*, %union.rec** %x, align 8
  %os122 = bitcast %union.rec* %14 to %struct.word_type*
  %ou123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 1
  %os1124 = bitcast %union.FIRST_UNION* %ou123 to %struct.anon.0*
  %otype25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1124, i32 0, i32 0
  %15 = load i8, i8* %otype25, align 1
  %conv26 = zext i8 %15 to i32
  %cmp27 = icmp eq i32 %conv26, 149
  br i1 %cmp27, label %if.end.31, label %if.then.29

if.then.29:                                       ; preds = %for.end
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call30 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %for.end
  %17 = load %union.rec*, %union.rec** %x, align 8
  %os132 = bitcast %union.rec* %17 to %struct.word_type*
  %olist33 = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist33, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx34, i32 0, i32 1
  %18 = load %union.rec*, %union.rec** %osucc, align 8
  %os135 = bitcast %union.rec* %18 to %struct.word_type*
  %olist36 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist36, i32 0, i64 1
  %opred38 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx37, i32 0, i32 0
  %19 = load %union.rec*, %union.rec** %opred38, align 8
  store %union.rec* %19, %union.rec** %sym, align 8
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.48, %if.end.31
  %20 = load %union.rec*, %union.rec** %sym, align 8
  %os140 = bitcast %union.rec* %20 to %struct.word_type*
  %ou141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 1
  %os1142 = bitcast %union.FIRST_UNION* %ou141 to %struct.anon.0*
  %otype43 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1142, i32 0, i32 0
  %21 = load i8, i8* %otype43, align 1
  %conv44 = zext i8 %21 to i32
  %cmp45 = icmp eq i32 %conv44, 0
  br i1 %cmp45, label %for.body.47, label %for.end.53

for.body.47:                                      ; preds = %for.cond.39
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.47
  %22 = load %union.rec*, %union.rec** %sym, align 8
  %os149 = bitcast %union.rec* %22 to %struct.word_type*
  %olist50 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist50, i32 0, i64 1
  %opred52 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx51, i32 0, i32 0
  %23 = load %union.rec*, %union.rec** %opred52, align 8
  store %union.rec* %23, %union.rec** %sym, align 8
  br label %for.cond.39

for.end.53:                                       ; preds = %for.cond.39
  %24 = load %union.rec*, %union.rec** %sym, align 8
  %25 = load %union.rec*, %union.rec** %x, align 8
  %os154 = bitcast %union.rec* %25 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %26 = bitcast %struct.anon.2* %os22 to i32*
  %bf.load = load i32, i32* %26, align 4
  %bf.clear = and i32 %bf.load, 4095
  %27 = load %union.rec*, %union.rec** %x, align 8
  %os155 = bitcast %union.rec* %27 to %struct.word_type*
  %ou256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os155, i32 0, i32 2
  %os2257 = bitcast %union.SECOND_UNION* %ou256 to %struct.anon.2*
  %28 = bitcast %struct.anon.2* %os2257 to i32*
  %bf.load58 = load i32, i32* %28, align 4
  %bf.lshr = lshr i32 %bf.load58, 12
  %bf.clear59 = and i32 %bf.lshr, 1023
  call void @PushScope(%union.rec* %24, i32 %bf.clear, i32 %bf.clear59)
  %29 = load %union.rec*, %union.rec** %x, align 8
  %os160 = bitcast %union.rec* %29 to %struct.word_type*
  %ou261 = getelementptr inbounds %struct.word_type, %struct.word_type* %os160, i32 0, i32 2
  %os2262 = bitcast %union.SECOND_UNION* %ou261 to %struct.anon.2*
  %30 = bitcast %struct.anon.2* %os2262 to i32*
  %bf.load63 = load i32, i32* %30, align 4
  %bf.lshr64 = lshr i32 %bf.load63, 22
  %bf.clear65 = and i32 %bf.lshr64, 1
  %31 = load i32, i32* @scope_top, align 4
  %sub = sub nsw i32 %31, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx66 = getelementptr inbounds [300 x i32], [300 x i32]* @body_ok, i32 0, i64 %idxprom
  store i32 %bf.clear65, i32* %arrayidx66, align 4
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.end.53
  %32 = load %union.rec*, %union.rec** %link, align 8
  %os168 = bitcast %union.rec* %32 to %struct.word_type*
  %olist69 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist69, i32 0, i64 0
  %opred71 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx70, i32 0, i32 0
  %33 = load %union.rec*, %union.rec** %opred71, align 8
  store %union.rec* %33, %union.rec** %link, align 8
  br label %for.cond

for.end.72:                                       ; preds = %for.cond
  %34 = load i32, i32* @suppress_visible, align 4
  store i32 %34, i32* %tmp, align 4
  %35 = load %union.rec*, %union.rec** %ss.addr, align 8
  %os173 = bitcast %union.rec* %35 to %struct.word_type*
  %ou274 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 2
  %os2275 = bitcast %union.SECOND_UNION* %ou274 to %struct.anon.2*
  %36 = bitcast %struct.anon.2* %os2275 to i32*
  %bf.load76 = load i32, i32* %36, align 4
  %bf.lshr77 = lshr i32 %bf.load76, 23
  %bf.clear78 = and i32 %bf.lshr77, 63
  store i32 %bf.clear78, i32* @suppress_visible, align 4
  %37 = load i32, i32* %tmp, align 4
  %38 = load %union.rec*, %union.rec** %ss.addr, align 8
  %os179 = bitcast %union.rec* %38 to %struct.word_type*
  %ou280 = getelementptr inbounds %struct.word_type, %struct.word_type* %os179, i32 0, i32 2
  %os2281 = bitcast %union.SECOND_UNION* %ou280 to %struct.anon.2*
  %39 = bitcast %struct.anon.2* %os2281 to i32*
  %bf.load82 = load i32, i32* %39, align 4
  %bf.value = and i32 %37, 63
  %bf.shl = shl i32 %bf.value, 23
  %bf.clear83 = and i32 %bf.load82, -528482305
  %bf.set = or i32 %bf.clear83, %bf.shl
  store i32 %bf.set, i32* %39, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @ClearScopeSnapshot(%union.rec* %ss) #0 {
entry:
  %ss.addr = alloca %union.rec*, align 8
  store %union.rec* %ss, %union.rec** %ss.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @scope_top, align 4
  %sub = sub nsw i32 %0, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [300 x %union.rec*], [300 x %union.rec*]* @scope, i32 0, i64 %idxprom
  %1 = load %union.rec*, %union.rec** %arrayidx, align 8
  %2 = load %union.rec*, %union.rec** @StartSym, align 8
  %cmp = icmp ne %union.rec* %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* @scope_top, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* @scope_top, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* @scope_top, align 4
  %dec1 = add nsw i32 %4, -1
  store i32 %dec1, i32* @scope_top, align 4
  %5 = load %union.rec*, %union.rec** %ss.addr, align 8
  %os1 = bitcast %union.rec* %5 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %6 = bitcast %struct.anon.2* %os22 to i32*
  %bf.load = load i32, i32* %6, align 4
  %bf.lshr = lshr i32 %bf.load, 23
  %bf.clear = and i32 %bf.lshr, 63
  store i32 %bf.clear, i32* @suppress_visible, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %union.rec* @InsertSym(i8* %str, i8 zeroext %xtype, %struct.FILE_POS* %xfpos, i8 zeroext %xprecedence, i32 %xindefinite, i32 %xrecursive, i32 %xpredefined, %union.rec* %xenclosing, %union.rec* %xbody) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %xtype.addr = alloca i8, align 1
  %xfpos.addr = alloca %struct.FILE_POS*, align 8
  %xprecedence.addr = alloca i8, align 1
  %xindefinite.addr = alloca i32, align 4
  %xrecursive.addr = alloca i32, align 4
  %xpredefined.addr = alloca i32, align 4
  %xenclosing.addr = alloca %union.rec*, align 8
  %xbody.addr = alloca %union.rec*, align 8
  %sum = alloca i32, align 4
  %rlen = alloca i32, align 4
  %x = alloca i8*, align 8
  %p = alloca %union.rec*, align 8
  %q = alloca %union.rec*, align 8
  %s = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %entry3 = alloca %union.rec*, align 8
  %plink = alloca %union.rec*, align 8
  %len = alloca i32, align 4
  %sym = alloca %union.rec*, align 8
  %sym648 = alloca %union.rec*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i8 %xtype, i8* %xtype.addr, align 1
  store %struct.FILE_POS* %xfpos, %struct.FILE_POS** %xfpos.addr, align 8
  store i8 %xprecedence, i8* %xprecedence.addr, align 1
  store i32 %xindefinite, i32* %xindefinite.addr, align 4
  store i32 %xrecursive, i32* %xrecursive.addr, align 4
  store i32 %xpredefined, i32* %xpredefined.addr, align 4
  store %union.rec* %xenclosing, %union.rec** %xenclosing.addr, align 8
  store %union.rec* %xbody, %union.rec** %xbody.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i32 @LexLegalName(i8* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %call6 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i32 2, %struct.FILE_POS* %1, i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* %xtype.addr, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv7 = sext i32 %conv to i64
  %cmp = icmp uge i64 %conv7, 265
  br i1 %cmp, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call10 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %5)
  br label %if.end.24

if.else:                                          ; preds = %if.end
  %6 = load i32, i32* @zz_size, align 4
  %idxprom11 = sext i32 %6 to i64
  %arrayidx12 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom11
  %7 = load %union.rec*, %union.rec** %arrayidx12, align 8
  %cmp13 = icmp eq %union.rec* %7, null
  br i1 %cmp13, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.else
  %8 = load i32, i32* @zz_size, align 4
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call16 = call %union.rec* @GetMemory(i32 %8, %struct.FILE_POS* %9)
  store %union.rec* %call16, %union.rec** @zz_hold, align 8
  br label %if.end.23

if.else.17:                                       ; preds = %if.else
  %10 = load i32, i32* @zz_size, align 4
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom18
  %11 = load %union.rec*, %union.rec** %arrayidx19, align 8
  store %union.rec* %11, %union.rec** @zz_hold, align 8
  store %union.rec* %11, %union.rec** @zz_hold, align 8
  %12 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %12 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx20, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred, align 8
  %14 = load i32, i32* @zz_size, align 4
  %idxprom21 = sext i32 %14 to i64
  %arrayidx22 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom21
  store %union.rec* %13, %union.rec** %arrayidx22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.17, %if.then.15
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.9
  %15 = load i8, i8* %xtype.addr, align 1
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os125 = bitcast %union.rec* %16 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.0*
  %otype = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11, i32 0, i32 0
  store i8 %15, i8* %otype, align 1
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os126 = bitcast %union.rec* %18 to %struct.word_type*
  %olist27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist27, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx28, i32 0, i32 1
  store %union.rec* %17, %union.rec** %osucc, align 8
  %19 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os129 = bitcast %union.rec* %19 to %struct.word_type*
  %olist30 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist30, i32 0, i64 1
  %opred32 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx31, i32 0, i32 0
  store %union.rec* %17, %union.rec** %opred32, align 8
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os133 = bitcast %union.rec* %20 to %struct.word_type*
  %olist34 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist34, i32 0, i64 0
  %osucc36 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx35, i32 0, i32 1
  store %union.rec* %17, %union.rec** %osucc36, align 8
  %21 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os137 = bitcast %union.rec* %21 to %struct.word_type*
  %olist38 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist38, i32 0, i64 0
  %opred40 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx39, i32 0, i32 0
  store %union.rec* %17, %union.rec** %opred40, align 8
  store %union.rec* %17, %union.rec** %s, align 8
  %22 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %22, i32 0, i32 2
  %23 = load i16, i16* %ofile_num, align 2
  %24 = load %union.rec*, %union.rec** %s, align 8
  %os141 = bitcast %union.rec* %24 to %struct.word_type*
  %ou142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou142 to %struct.FILE_POS*
  %ofile_num43 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos, i32 0, i32 2
  store i16 %23, i16* %ofile_num43, align 2
  %25 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %25, i32 0, i32 3
  %bf.load = load i32, i32* %oline_num, align 4
  %bf.clear = and i32 %bf.load, 1048575
  %26 = load %union.rec*, %union.rec** %s, align 8
  %os144 = bitcast %union.rec* %26 to %struct.word_type*
  %ou145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 1
  %ofpos46 = bitcast %union.FIRST_UNION* %ou145 to %struct.FILE_POS*
  %oline_num47 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos46, i32 0, i32 3
  %bf.load48 = load i32, i32* %oline_num47, align 4
  %bf.value = and i32 %bf.clear, 1048575
  %bf.clear49 = and i32 %bf.load48, -1048576
  %bf.set = or i32 %bf.clear49, %bf.value
  store i32 %bf.set, i32* %oline_num47, align 4
  %27 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %27, i32 0, i32 3
  %bf.load50 = load i32, i32* %ocol_num, align 4
  %bf.lshr = lshr i32 %bf.load50, 20
  %28 = load %union.rec*, %union.rec** %s, align 8
  %os151 = bitcast %union.rec* %28 to %struct.word_type*
  %ou152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 1
  %ofpos53 = bitcast %union.FIRST_UNION* %ou152 to %struct.FILE_POS*
  %ocol_num54 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos53, i32 0, i32 3
  %bf.load55 = load i32, i32* %ocol_num54, align 4
  %bf.value56 = and i32 %bf.lshr, 4095
  %bf.shl = shl i32 %bf.value56, 20
  %bf.clear57 = and i32 %bf.load55, 1048575
  %bf.set58 = or i32 %bf.clear57, %bf.shl
  store i32 %bf.set58, i32* %ocol_num54, align 4
  %29 = load %union.rec*, %union.rec** %s, align 8
  %os159 = bitcast %union.rec* %29 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os159, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.6*
  %ohas_body = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26, i32 0, i32 1
  %30 = bitcast [3 x i8]* %ohas_body to i24*
  %bf.load60 = load i24, i24* %30, align 1
  %bf.clear61 = and i24 %bf.load60, -257
  store i24 %bf.clear61, i24* %30, align 1
  %31 = load %union.rec*, %union.rec** %s, align 8
  %os6 = bitcast %union.rec* %31 to %struct.symbol_type*
  %ofilter = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 10
  store %union.rec* null, %union.rec** %ofilter, align 8
  %32 = load %union.rec*, %union.rec** %s, align 8
  %os662 = bitcast %union.rec* %32 to %struct.symbol_type*
  %ouse_invocation = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os662, i32 0, i32 11
  store %union.rec* null, %union.rec** %ouse_invocation, align 8
  %33 = load %union.rec*, %union.rec** %s, align 8
  %os663 = bitcast %union.rec* %33 to %struct.symbol_type*
  %oimports = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os663, i32 0, i32 9
  store %union.rec* null, %union.rec** %oimports, align 8
  %34 = load %union.rec*, %union.rec** %s, align 8
  %os164 = bitcast %union.rec* %34 to %struct.word_type*
  %ou265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 2
  %os2666 = bitcast %union.SECOND_UNION* %ou265 to %struct.anon.6*
  %oimports_encl = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os2666, i32 0, i32 1
  %35 = bitcast [3 x i8]* %oimports_encl to i24*
  %bf.load67 = load i24, i24* %35, align 1
  %bf.clear68 = and i24 %bf.load67, -4194305
  store i24 %bf.clear68, i24* %35, align 1
  %36 = load %union.rec*, %union.rec** %s, align 8
  %os169 = bitcast %union.rec* %36 to %struct.word_type*
  %ou270 = getelementptr inbounds %struct.word_type, %struct.word_type* %os169, i32 0, i32 2
  %os2671 = bitcast %union.SECOND_UNION* %ou270 to %struct.anon.6*
  %oright_assoc = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os2671, i32 0, i32 1
  %37 = bitcast [3 x i8]* %oright_assoc to i24*
  %bf.load72 = load i24, i24* %37, align 1
  %bf.clear73 = and i24 %bf.load72, -17
  %bf.set74 = or i24 %bf.clear73, 16
  store i24 %bf.set74, i24* %37, align 1
  %38 = load i8, i8* %xprecedence.addr, align 1
  %39 = load %union.rec*, %union.rec** %s, align 8
  %os175 = bitcast %union.rec* %39 to %struct.word_type*
  %ou276 = getelementptr inbounds %struct.word_type, %struct.word_type* %os175, i32 0, i32 2
  %os21 = bitcast %union.SECOND_UNION* %ou276 to %struct.anon.1*
  %oprecedence = getelementptr inbounds %struct.anon.1, %struct.anon.1* %os21, i32 0, i32 0
  store i8 %38, i8* %oprecedence, align 1
  %40 = load i32, i32* %xindefinite.addr, align 4
  %41 = load %union.rec*, %union.rec** %s, align 8
  %os177 = bitcast %union.rec* %41 to %struct.word_type*
  %ou278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os177, i32 0, i32 2
  %os2679 = bitcast %union.SECOND_UNION* %ou278 to %struct.anon.6*
  %oindefinite = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os2679, i32 0, i32 1
  %42 = bitcast [3 x i8]* %oindefinite to i24*
  %43 = trunc i32 %40 to i24
  %bf.load80 = load i24, i24* %42, align 1
  %bf.value81 = and i24 %43, 1
  %bf.shl82 = shl i24 %bf.value81, 9
  %bf.clear83 = and i24 %bf.load80, -513
  %bf.set84 = or i24 %bf.clear83, %bf.shl82
  store i24 %bf.set84, i24* %42, align 1
  %bf.result.cast = zext i24 %bf.value81 to i32
  %44 = load i32, i32* %xrecursive.addr, align 4
  %45 = load %union.rec*, %union.rec** %s, align 8
  %os185 = bitcast %union.rec* %45 to %struct.word_type*
  %ou286 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 2
  %os2687 = bitcast %union.SECOND_UNION* %ou286 to %struct.anon.6*
  %orecursive = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os2687, i32 0, i32 1
  %46 = bitcast [3 x i8]* %orecursive to i24*
  %47 = trunc i32 %44 to i24
  %bf.load88 = load i24, i24* %46, align 1
  %bf.value89 = and i24 %47, 1
  %bf.shl90 = shl i24 %bf.value89, 10
  %bf.clear91 = and i24 %bf.load88, -1025
  %bf.set92 = or i24 %bf.clear91, %bf.shl90
  store i24 %bf.set92, i24* %46, align 1
  %bf.result.cast93 = zext i24 %bf.value89 to i32
  %48 = load i32, i32* %xpredefined.addr, align 4
  %conv94 = trunc i32 %48 to i16
  %49 = load %union.rec*, %union.rec** %s, align 8
  %os695 = bitcast %union.rec* %49 to %struct.symbol_type*
  %opredefined = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os695, i32 0, i32 12
  store i16 %conv94, i16* %opredefined, align 2
  %50 = load %union.rec*, %union.rec** %xenclosing.addr, align 8
  %51 = load %union.rec*, %union.rec** %s, align 8
  %os696 = bitcast %union.rec* %51 to %struct.symbol_type*
  %oenclosing = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os696, i32 0, i32 3
  store %union.rec* %50, %union.rec** %oenclosing, align 8
  %52 = load %union.rec*, %union.rec** %xbody.addr, align 8
  %53 = load %union.rec*, %union.rec** %s, align 8
  %os697 = bitcast %union.rec* %53 to %struct.symbol_type*
  %osym_body = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os697, i32 0, i32 4
  store %union.rec* %52, %union.rec** %osym_body, align 8
  %54 = load %union.rec*, %union.rec** %s, align 8
  %os698 = bitcast %union.rec* %54 to %struct.symbol_type*
  %obase_uses = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os698, i32 0, i32 5
  store %union.rec* null, %union.rec** %obase_uses, align 8
  %55 = load %union.rec*, %union.rec** %s, align 8
  %os699 = bitcast %union.rec* %55 to %struct.symbol_type*
  %ouses = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os699, i32 0, i32 6
  store %union.rec* null, %union.rec** %ouses, align 8
  %56 = load %union.rec*, %union.rec** %s, align 8
  %os6100 = bitcast %union.rec* %56 to %struct.symbol_type*
  %omarker = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6100, i32 0, i32 7
  store %union.rec* null, %union.rec** %omarker, align 8
  %57 = load %union.rec*, %union.rec** %s, align 8
  %os6101 = bitcast %union.rec* %57 to %struct.symbol_type*
  %ocross_sym = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6101, i32 0, i32 8
  store %union.rec* null, %union.rec** %ocross_sym, align 8
  %58 = load %union.rec*, %union.rec** %s, align 8
  %os1102 = bitcast %union.rec* %58 to %struct.word_type*
  %ou2103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1102, i32 0, i32 2
  %os26104 = bitcast %union.SECOND_UNION* %ou2103 to %struct.anon.6*
  %ois_extern_target = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26104, i32 0, i32 1
  %59 = bitcast [3 x i8]* %ois_extern_target to i24*
  %bf.load105 = load i24, i24* %59, align 1
  %bf.clear106 = and i24 %bf.load105, -4097
  store i24 %bf.clear106, i24* %59, align 1
  %60 = load %union.rec*, %union.rec** %s, align 8
  %os1107 = bitcast %union.rec* %60 to %struct.word_type*
  %ou2108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1107, i32 0, i32 2
  %os26109 = bitcast %union.SECOND_UNION* %ou2108 to %struct.anon.6*
  %ouses_extern_target = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26109, i32 0, i32 1
  %61 = bitcast [3 x i8]* %ouses_extern_target to i24*
  %bf.load110 = load i24, i24* %61, align 1
  %bf.clear111 = and i24 %bf.load110, -2049
  store i24 %bf.clear111, i24* %61, align 1
  %62 = load %union.rec*, %union.rec** %s, align 8
  %os1112 = bitcast %union.rec* %62 to %struct.word_type*
  %ou2113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1112, i32 0, i32 2
  %os26114 = bitcast %union.SECOND_UNION* %ou2113 to %struct.anon.6*
  %ovisible = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26114, i32 0, i32 1
  %63 = bitcast [3 x i8]* %ovisible to i24*
  %bf.load115 = load i24, i24* %63, align 1
  %bf.clear116 = and i24 %bf.load115, -65537
  store i24 %bf.clear116, i24* %63, align 1
  %64 = load %union.rec*, %union.rec** %s, align 8
  %os1117 = bitcast %union.rec* %64 to %struct.word_type*
  %ou2118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 2
  %os26119 = bitcast %union.SECOND_UNION* %ou2118 to %struct.anon.6*
  %ouses_galley = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26119, i32 0, i32 1
  %65 = bitcast [3 x i8]* %ouses_galley to i24*
  %bf.load120 = load i24, i24* %65, align 1
  %bf.clear121 = and i24 %bf.load120, -1048577
  store i24 %bf.clear121, i24* %65, align 1
  %66 = load %union.rec*, %union.rec** %s, align 8
  %os1122 = bitcast %union.rec* %66 to %struct.word_type*
  %ou2123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1122, i32 0, i32 2
  %os26124 = bitcast %union.SECOND_UNION* %ou2123 to %struct.anon.6*
  %ohoriz_galley = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26124, i32 0, i32 1
  %67 = bitcast [3 x i8]* %ohoriz_galley to i24*
  %bf.load125 = load i24, i24* %67, align 1
  %bf.clear126 = and i24 %bf.load125, -2097153
  %bf.set127 = or i24 %bf.clear126, 2097152
  store i24 %bf.set127, i24* %67, align 1
  %68 = load %union.rec*, %union.rec** %s, align 8
  %os6128 = bitcast %union.rec* %68 to %struct.symbol_type*
  %ohas_compulsory = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6128, i32 0, i32 13
  store i16 0, i16* %ohas_compulsory, align 2
  %69 = load %union.rec*, %union.rec** %s, align 8
  %os6129 = bitcast %union.rec* %69 to %struct.symbol_type*
  %ois_compulsory = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6129, i32 0, i32 16
  %bf.load130 = load i8, i8* %ois_compulsory, align 2
  %bf.clear131 = and i8 %bf.load130, -65
  store i8 %bf.clear131, i8* %ois_compulsory, align 2
  %70 = load %union.rec*, %union.rec** %s, align 8
  %os6132 = bitcast %union.rec* %70 to %struct.symbol_type*
  %ouses_count = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6132, i32 0, i32 14
  store i8 0, i8* %ouses_count, align 1
  %71 = load %union.rec*, %union.rec** %s, align 8
  %os1133 = bitcast %union.rec* %71 to %struct.word_type*
  %ou2134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1133, i32 0, i32 2
  %os26135 = bitcast %union.SECOND_UNION* %ou2134 to %struct.anon.6*
  %odirty = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26135, i32 0, i32 1
  %72 = bitcast [3 x i8]* %odirty to i24*
  %bf.load136 = load i24, i24* %72, align 1
  %bf.clear137 = and i24 %bf.load136, -32769
  store i24 %bf.clear137, i24* %72, align 1
  %73 = load %union.rec*, %union.rec** %s, align 8
  %os6138 = bitcast %union.rec* %73 to %struct.symbol_type*
  %oenclosing139 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6138, i32 0, i32 3
  %74 = load %union.rec*, %union.rec** %oenclosing139, align 8
  %cmp140 = icmp ne %union.rec* %74, null
  br i1 %cmp140, label %land.lhs.true, label %if.end.168

land.lhs.true:                                    ; preds = %if.end.24
  %75 = load %union.rec*, %union.rec** %s, align 8
  %os6142 = bitcast %union.rec* %75 to %struct.symbol_type*
  %oenclosing143 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6142, i32 0, i32 3
  %76 = load %union.rec*, %union.rec** %oenclosing143, align 8
  %os1144 = bitcast %union.rec* %76 to %struct.word_type*
  %ou1145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1144, i32 0, i32 1
  %os11146 = bitcast %union.FIRST_UNION* %ou1145 to %struct.anon.0*
  %otype147 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11146, i32 0, i32 0
  %77 = load i8, i8* %otype147, align 1
  %conv148 = zext i8 %77 to i32
  %cmp149 = icmp eq i32 %conv148, 145
  br i1 %cmp149, label %if.then.151, label %if.end.168

if.then.151:                                      ; preds = %land.lhs.true
  %78 = load %union.rec*, %union.rec** %s, align 8
  %os6152 = bitcast %union.rec* %78 to %struct.symbol_type*
  %oenclosing153 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6152, i32 0, i32 3
  %79 = load %union.rec*, %union.rec** %oenclosing153, align 8
  %os1154 = bitcast %union.rec* %79 to %struct.word_type*
  %ou2155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1154, i32 0, i32 2
  %os26156 = bitcast %union.SECOND_UNION* %ou2155 to %struct.anon.6*
  %odirty157 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26156, i32 0, i32 1
  %80 = bitcast [3 x i8]* %odirty157 to i24*
  %bf.load158 = load i24, i24* %80, align 1
  %bf.clear159 = and i24 %bf.load158, -32769
  %bf.set160 = or i24 %bf.clear159, 32768
  store i24 %bf.set160, i24* %80, align 1
  %81 = load %union.rec*, %union.rec** %s, align 8
  %os1161 = bitcast %union.rec* %81 to %struct.word_type*
  %ou2162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1161, i32 0, i32 2
  %os26163 = bitcast %union.SECOND_UNION* %ou2162 to %struct.anon.6*
  %odirty164 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26163, i32 0, i32 1
  %82 = bitcast [3 x i8]* %odirty164 to i24*
  %bf.load165 = load i24, i24* %82, align 1
  %bf.clear166 = and i24 %bf.load165, -32769
  %bf.set167 = or i24 %bf.clear166, 32768
  store i24 %bf.set167, i24* %82, align 1
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.151, %land.lhs.true, %if.end.24
  %83 = load %union.rec*, %union.rec** %s, align 8
  %os1169 = bitcast %union.rec* %83 to %struct.word_type*
  %ou2170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1169, i32 0, i32 2
  %os26171 = bitcast %union.SECOND_UNION* %ou2170 to %struct.anon.6*
  %ohas_par = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26171, i32 0, i32 1
  %84 = bitcast [3 x i8]* %ohas_par to i24*
  %bf.load172 = load i24, i24* %84, align 1
  %bf.clear173 = and i24 %bf.load172, -524289
  store i24 %bf.clear173, i24* %84, align 1
  %85 = load %union.rec*, %union.rec** %s, align 8
  %os1174 = bitcast %union.rec* %85 to %struct.word_type*
  %ou2175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1174, i32 0, i32 2
  %os26176 = bitcast %union.SECOND_UNION* %ou2175 to %struct.anon.6*
  %ohas_lpar = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26176, i32 0, i32 1
  %86 = bitcast [3 x i8]* %ohas_lpar to i24*
  %bf.load177 = load i24, i24* %86, align 1
  %bf.clear178 = and i24 %bf.load177, -5
  store i24 %bf.clear178, i24* %86, align 1
  %87 = load %union.rec*, %union.rec** %s, align 8
  %os1179 = bitcast %union.rec* %87 to %struct.word_type*
  %ou2180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1179, i32 0, i32 2
  %os26181 = bitcast %union.SECOND_UNION* %ou2180 to %struct.anon.6*
  %ohas_rpar = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26181, i32 0, i32 1
  %88 = bitcast [3 x i8]* %ohas_rpar to i24*
  %bf.load182 = load i24, i24* %88, align 1
  %bf.clear183 = and i24 %bf.load182, -9
  store i24 %bf.clear183, i24* %88, align 1
  %89 = load %union.rec*, %union.rec** %s, align 8
  %os1184 = bitcast %union.rec* %89 to %struct.word_type*
  %ou1185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1184, i32 0, i32 1
  %os11186 = bitcast %union.FIRST_UNION* %ou1185 to %struct.anon.0*
  %otype187 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11186, i32 0, i32 0
  %90 = load i8, i8* %otype187, align 1
  %conv188 = zext i8 %90 to i32
  %cmp189 = icmp sge i32 %conv188, 144
  br i1 %cmp189, label %land.lhs.true.191, label %if.end.209

land.lhs.true.191:                                ; preds = %if.end.168
  %91 = load %union.rec*, %union.rec** %s, align 8
  %os1192 = bitcast %union.rec* %91 to %struct.word_type*
  %ou1193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1192, i32 0, i32 1
  %os11194 = bitcast %union.FIRST_UNION* %ou1193 to %struct.anon.0*
  %otype195 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11194, i32 0, i32 0
  %92 = load i8, i8* %otype195, align 1
  %conv196 = zext i8 %92 to i32
  %cmp197 = icmp sle i32 %conv196, 146
  br i1 %cmp197, label %if.then.199, label %if.end.209

if.then.199:                                      ; preds = %land.lhs.true.191
  %93 = load %union.rec*, %union.rec** %s, align 8
  %os6200 = bitcast %union.rec* %93 to %struct.symbol_type*
  %oenclosing201 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6200, i32 0, i32 3
  %94 = load %union.rec*, %union.rec** %oenclosing201, align 8
  %os1202 = bitcast %union.rec* %94 to %struct.word_type*
  %ou2203 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1202, i32 0, i32 2
  %os26204 = bitcast %union.SECOND_UNION* %ou2203 to %struct.anon.6*
  %ohas_par205 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26204, i32 0, i32 1
  %95 = bitcast [3 x i8]* %ohas_par205 to i24*
  %bf.load206 = load i24, i24* %95, align 1
  %bf.clear207 = and i24 %bf.load206, -524289
  %bf.set208 = or i24 %bf.clear207, 524288
  store i24 %bf.set208, i24* %95, align 1
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.199, %land.lhs.true.191, %if.end.168
  %96 = load %union.rec*, %union.rec** %s, align 8
  %os1210 = bitcast %union.rec* %96 to %struct.word_type*
  %ou1211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1210, i32 0, i32 1
  %os11212 = bitcast %union.FIRST_UNION* %ou1211 to %struct.anon.0*
  %otype213 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11212, i32 0, i32 0
  %97 = load i8, i8* %otype213, align 1
  %conv214 = zext i8 %97 to i32
  %cmp215 = icmp eq i32 %conv214, 144
  br i1 %cmp215, label %if.then.217, label %if.end.227

if.then.217:                                      ; preds = %if.end.209
  %98 = load %union.rec*, %union.rec** %s, align 8
  %os6218 = bitcast %union.rec* %98 to %struct.symbol_type*
  %oenclosing219 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6218, i32 0, i32 3
  %99 = load %union.rec*, %union.rec** %oenclosing219, align 8
  %os1220 = bitcast %union.rec* %99 to %struct.word_type*
  %ou2221 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1220, i32 0, i32 2
  %os26222 = bitcast %union.SECOND_UNION* %ou2221 to %struct.anon.6*
  %ohas_lpar223 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26222, i32 0, i32 1
  %100 = bitcast [3 x i8]* %ohas_lpar223 to i24*
  %bf.load224 = load i24, i24* %100, align 1
  %bf.clear225 = and i24 %bf.load224, -5
  %bf.set226 = or i24 %bf.clear225, 4
  store i24 %bf.set226, i24* %100, align 1
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.217, %if.end.209
  %101 = load %union.rec*, %union.rec** %s, align 8
  %os1228 = bitcast %union.rec* %101 to %struct.word_type*
  %ou1229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1228, i32 0, i32 1
  %os11230 = bitcast %union.FIRST_UNION* %ou1229 to %struct.anon.0*
  %otype231 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11230, i32 0, i32 0
  %102 = load i8, i8* %otype231, align 1
  %conv232 = zext i8 %102 to i32
  %cmp233 = icmp eq i32 %conv232, 146
  br i1 %cmp233, label %if.then.235, label %if.end.245

if.then.235:                                      ; preds = %if.end.227
  %103 = load %union.rec*, %union.rec** %s, align 8
  %os6236 = bitcast %union.rec* %103 to %struct.symbol_type*
  %oenclosing237 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6236, i32 0, i32 3
  %104 = load %union.rec*, %union.rec** %oenclosing237, align 8
  %os1238 = bitcast %union.rec* %104 to %struct.word_type*
  %ou2239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1238, i32 0, i32 2
  %os26240 = bitcast %union.SECOND_UNION* %ou2239 to %struct.anon.6*
  %ohas_rpar241 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26240, i32 0, i32 1
  %105 = bitcast [3 x i8]* %ohas_rpar241 to i24*
  %bf.load242 = load i24, i24* %105, align 1
  %bf.clear243 = and i24 %bf.load242, -9
  %bf.set244 = or i24 %bf.clear243, 8
  store i24 %bf.set244, i24* %105, align 1
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.235, %if.end.227
  %106 = load %union.rec*, %union.rec** %s, align 8
  %os1246 = bitcast %union.rec* %106 to %struct.word_type*
  %ou1247 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1246, i32 0, i32 1
  %os11248 = bitcast %union.FIRST_UNION* %ou1247 to %struct.anon.0*
  %otype249 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11248, i32 0, i32 0
  %107 = load i8, i8* %otype249, align 1
  %conv250 = zext i8 %107 to i32
  %cmp251 = icmp eq i32 %conv250, 145
  br i1 %cmp251, label %if.then.253, label %if.end.322

if.then.253:                                      ; preds = %if.end.245
  %108 = load %union.rec*, %union.rec** %s, align 8
  %os6254 = bitcast %union.rec* %108 to %struct.symbol_type*
  %oenclosing255 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6254, i32 0, i32 3
  %109 = load %union.rec*, %union.rec** %oenclosing255, align 8
  %os1256 = bitcast %union.rec* %109 to %struct.word_type*
  %olist257 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1256, i32 0, i32 0
  %arrayidx258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist257, i32 0, i64 0
  %opred259 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx258, i32 0, i32 0
  %110 = load %union.rec*, %union.rec** %opred259, align 8
  %111 = load %union.rec*, %union.rec** %s, align 8
  %os6260 = bitcast %union.rec* %111 to %struct.symbol_type*
  %oenclosing261 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6260, i32 0, i32 3
  %112 = load %union.rec*, %union.rec** %oenclosing261, align 8
  %cmp262 = icmp ne %union.rec* %110, %112
  br i1 %cmp262, label %if.then.264, label %if.else.318

if.then.264:                                      ; preds = %if.then.253
  %113 = load %union.rec*, %union.rec** %s, align 8
  %os6265 = bitcast %union.rec* %113 to %struct.symbol_type*
  %oenclosing266 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6265, i32 0, i32 3
  %114 = load %union.rec*, %union.rec** %oenclosing266, align 8
  %os1267 = bitcast %union.rec* %114 to %struct.word_type*
  %olist268 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1267, i32 0, i32 0
  %arrayidx269 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist268, i32 0, i64 0
  %opred270 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx269, i32 0, i32 0
  %115 = load %union.rec*, %union.rec** %opred270, align 8
  %os1271 = bitcast %union.rec* %115 to %struct.word_type*
  %olist272 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1271, i32 0, i32 0
  %arrayidx273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist272, i32 0, i64 1
  %opred274 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx273, i32 0, i32 0
  %116 = load %union.rec*, %union.rec** %opred274, align 8
  store %union.rec* %116, %union.rec** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.264
  %117 = load %union.rec*, %union.rec** %tmp, align 8
  %os1275 = bitcast %union.rec* %117 to %struct.word_type*
  %ou1276 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1275, i32 0, i32 1
  %os11277 = bitcast %union.FIRST_UNION* %ou1276 to %struct.anon.0*
  %otype278 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11277, i32 0, i32 0
  %118 = load i8, i8* %otype278, align 1
  %conv279 = zext i8 %118 to i32
  %cmp280 = icmp eq i32 %conv279, 0
  br i1 %cmp280, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %119 = load %union.rec*, %union.rec** %tmp, align 8
  %os1282 = bitcast %union.rec* %119 to %struct.word_type*
  %olist283 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1282, i32 0, i32 0
  %arrayidx284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist283, i32 0, i64 1
  %opred285 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx284, i32 0, i32 0
  %120 = load %union.rec*, %union.rec** %opred285, align 8
  store %union.rec* %120, %union.rec** %tmp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %121 = load %union.rec*, %union.rec** %tmp, align 8
  %os1286 = bitcast %union.rec* %121 to %struct.word_type*
  %ou1287 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1286, i32 0, i32 1
  %os11288 = bitcast %union.FIRST_UNION* %ou1287 to %struct.anon.0*
  %otype289 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11288, i32 0, i32 0
  %122 = load i8, i8* %otype289, align 1
  %conv290 = zext i8 %122 to i32
  %cmp291 = icmp eq i32 %conv290, 145
  br i1 %cmp291, label %if.then.293, label %if.else.314

if.then.293:                                      ; preds = %for.end
  %123 = load %union.rec*, %union.rec** %tmp, align 8
  %os6294 = bitcast %union.rec* %123 to %struct.symbol_type*
  %onpar_code = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6294, i32 0, i32 15
  %124 = load i8, i8* %onpar_code, align 1
  %conv295 = zext i8 %124 to i32
  %cmp296 = icmp eq i32 %conv295, 122
  br i1 %cmp296, label %if.then.303, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.293
  %125 = load %union.rec*, %union.rec** %tmp, align 8
  %os6298 = bitcast %union.rec* %125 to %struct.symbol_type*
  %onpar_code299 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6298, i32 0, i32 15
  %126 = load i8, i8* %onpar_code299, align 1
  %conv300 = zext i8 %126 to i32
  %cmp301 = icmp eq i32 %conv300, 32
  br i1 %cmp301, label %if.then.303, label %if.else.306

if.then.303:                                      ; preds = %lor.lhs.false, %if.then.293
  %127 = load %union.rec*, %union.rec** %s, align 8
  %os6304 = bitcast %union.rec* %127 to %struct.symbol_type*
  %onpar_code305 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6304, i32 0, i32 15
  store i8 32, i8* %onpar_code305, align 1
  br label %if.end.313

if.else.306:                                      ; preds = %lor.lhs.false
  %128 = load %union.rec*, %union.rec** %tmp, align 8
  %os6307 = bitcast %union.rec* %128 to %struct.symbol_type*
  %onpar_code308 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6307, i32 0, i32 15
  %129 = load i8, i8* %onpar_code308, align 1
  %conv309 = zext i8 %129 to i32
  %add = add nsw i32 %conv309, 1
  %conv310 = trunc i32 %add to i8
  %130 = load %union.rec*, %union.rec** %s, align 8
  %os6311 = bitcast %union.rec* %130 to %struct.symbol_type*
  %onpar_code312 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6311, i32 0, i32 15
  store i8 %conv310, i8* %onpar_code312, align 1
  br label %if.end.313

if.end.313:                                       ; preds = %if.else.306, %if.then.303
  br label %if.end.317

if.else.314:                                      ; preds = %for.end
  %131 = load %union.rec*, %union.rec** %s, align 8
  %os6315 = bitcast %union.rec* %131 to %struct.symbol_type*
  %onpar_code316 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6315, i32 0, i32 15
  store i8 97, i8* %onpar_code316, align 1
  br label %if.end.317

if.end.317:                                       ; preds = %if.else.314, %if.end.313
  br label %if.end.321

if.else.318:                                      ; preds = %if.then.253
  %132 = load %union.rec*, %union.rec** %s, align 8
  %os6319 = bitcast %union.rec* %132 to %struct.symbol_type*
  %onpar_code320 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6319, i32 0, i32 15
  store i8 97, i8* %onpar_code320, align 1
  br label %if.end.321

if.end.321:                                       ; preds = %if.else.318, %if.end.317
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321, %if.end.245
  %133 = load %union.rec*, %union.rec** %s, align 8
  %os1323 = bitcast %union.rec* %133 to %struct.word_type*
  %ou2324 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1323, i32 0, i32 2
  %os26325 = bitcast %union.SECOND_UNION* %ou2324 to %struct.anon.6*
  %ohas_target = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26325, i32 0, i32 1
  %134 = bitcast [3 x i8]* %ohas_target to i24*
  %bf.load326 = load i24, i24* %134, align 1
  %bf.clear327 = and i24 %bf.load326, -65
  store i24 %bf.clear327, i24* %134, align 1
  %135 = load %union.rec*, %union.rec** %s, align 8
  %os1328 = bitcast %union.rec* %135 to %struct.word_type*
  %ou2329 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1328, i32 0, i32 2
  %os26330 = bitcast %union.SECOND_UNION* %ou2329 to %struct.anon.6*
  %oforce_target = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26330, i32 0, i32 1
  %136 = bitcast [3 x i8]* %oforce_target to i24*
  %bf.load331 = load i24, i24* %136, align 1
  %bf.clear332 = and i24 %bf.load331, -129
  store i24 %bf.clear332, i24* %136, align 1
  %137 = load i8*, i8** %str.addr, align 8
  %call333 = call i32 @strcmp(i8* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #4
  %cmp334 = icmp eq i32 %call333, 0
  br i1 %cmp334, label %if.else.342, label %if.then.336

if.then.336:                                      ; preds = %if.end.322
  %138 = load %union.rec*, %union.rec** %s, align 8
  %os1337 = bitcast %union.rec* %138 to %struct.word_type*
  %ou2338 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1337, i32 0, i32 2
  %os26339 = bitcast %union.SECOND_UNION* %ou2338 to %struct.anon.6*
  %ois_target = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26339, i32 0, i32 1
  %139 = bitcast [3 x i8]* %ois_target to i24*
  %bf.load340 = load i24, i24* %139, align 1
  %bf.clear341 = and i24 %bf.load340, -33
  store i24 %bf.clear341, i24* %139, align 1
  br label %if.end.450

if.else.342:                                      ; preds = %if.end.322
  %140 = load %union.rec*, %union.rec** %s, align 8
  %os6343 = bitcast %union.rec* %140 to %struct.symbol_type*
  %oenclosing344 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6343, i32 0, i32 3
  %141 = load %union.rec*, %union.rec** %oenclosing344, align 8
  %os1345 = bitcast %union.rec* %141 to %struct.word_type*
  %ou2346 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1345, i32 0, i32 2
  %os26347 = bitcast %union.SECOND_UNION* %ou2346 to %struct.anon.6*
  %ohas_target348 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26347, i32 0, i32 1
  %142 = bitcast [3 x i8]* %ohas_target348 to i24*
  %bf.load349 = load i24, i24* %142, align 1
  %bf.clear350 = and i24 %bf.load349, -65
  %bf.set351 = or i24 %bf.clear350, 64
  store i24 %bf.set351, i24* %142, align 1
  %143 = load %union.rec*, %union.rec** %s, align 8
  %os1352 = bitcast %union.rec* %143 to %struct.word_type*
  %ou2353 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1352, i32 0, i32 2
  %os26354 = bitcast %union.SECOND_UNION* %ou2353 to %struct.anon.6*
  %ois_target355 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26354, i32 0, i32 1
  %144 = bitcast [3 x i8]* %ois_target355 to i24*
  %bf.load356 = load i24, i24* %144, align 1
  %bf.clear357 = and i24 %bf.load356, -33
  %bf.set358 = or i24 %bf.clear357, 32
  store i24 %bf.set358, i24* %144, align 1
  %145 = load %union.rec*, %union.rec** %s, align 8
  %os6359 = bitcast %union.rec* %145 to %struct.symbol_type*
  %oenclosing360 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6359, i32 0, i32 3
  %146 = load %union.rec*, %union.rec** %oenclosing360, align 8
  %os1361 = bitcast %union.rec* %146 to %struct.word_type*
  %ou2362 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1361, i32 0, i32 2
  %os26363 = bitcast %union.SECOND_UNION* %ou2362 to %struct.anon.6*
  %ohas_key = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26363, i32 0, i32 1
  %147 = bitcast [3 x i8]* %ohas_key to i24*
  %bf.load364 = load i24, i24* %147, align 1
  %bf.lshr365 = lshr i24 %bf.load364, 14
  %bf.clear366 = and i24 %bf.lshr365, 1
  %bf.cast = zext i24 %bf.clear366 to i32
  %tobool367 = icmp ne i32 %bf.cast, 0
  br i1 %tobool367, label %land.lhs.true.368, label %if.end.449

land.lhs.true.368:                                ; preds = %if.else.342
  %148 = load %union.rec*, %union.rec** %xbody.addr, align 8
  %cmp369 = icmp ne %union.rec* %148, null
  br i1 %cmp369, label %land.lhs.true.371, label %if.end.449

land.lhs.true.371:                                ; preds = %land.lhs.true.368
  %149 = load %union.rec*, %union.rec** %xbody.addr, align 8
  %os1372 = bitcast %union.rec* %149 to %struct.word_type*
  %ou1373 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1372, i32 0, i32 1
  %os11374 = bitcast %union.FIRST_UNION* %ou1373 to %struct.anon.0*
  %otype375 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11374, i32 0, i32 0
  %150 = load i8, i8* %otype375, align 1
  %conv376 = zext i8 %150 to i32
  %cmp377 = icmp eq i32 %conv376, 6
  br i1 %cmp377, label %if.then.387, label %lor.lhs.false.379

lor.lhs.false.379:                                ; preds = %land.lhs.true.371
  %151 = load %union.rec*, %union.rec** %xbody.addr, align 8
  %os1380 = bitcast %union.rec* %151 to %struct.word_type*
  %ou1381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1380, i32 0, i32 1
  %os11382 = bitcast %union.FIRST_UNION* %ou1381 to %struct.anon.0*
  %otype383 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11382, i32 0, i32 0
  %152 = load i8, i8* %otype383, align 1
  %conv384 = zext i8 %152 to i32
  %cmp385 = icmp eq i32 %conv384, 7
  br i1 %cmp385, label %if.then.387, label %if.end.449

if.then.387:                                      ; preds = %lor.lhs.false.379, %land.lhs.true.371
  %153 = load %union.rec*, %union.rec** %xbody.addr, align 8
  %os1388 = bitcast %union.rec* %153 to %struct.word_type*
  %olist389 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1388, i32 0, i32 0
  %arrayidx390 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist389, i32 0, i64 0
  %opred391 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx390, i32 0, i32 0
  %154 = load %union.rec*, %union.rec** %opred391, align 8
  %155 = load %union.rec*, %union.rec** %xbody.addr, align 8
  %os1392 = bitcast %union.rec* %155 to %struct.word_type*
  %olist393 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1392, i32 0, i32 0
  %arrayidx394 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist393, i32 0, i64 0
  %osucc395 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx394, i32 0, i32 1
  %156 = load %union.rec*, %union.rec** %osucc395, align 8
  %cmp396 = icmp ne %union.rec* %154, %156
  br i1 %cmp396, label %if.then.398, label %if.end.448

if.then.398:                                      ; preds = %if.then.387
  %157 = load %union.rec*, %union.rec** %xbody.addr, align 8
  %os1400 = bitcast %union.rec* %157 to %struct.word_type*
  %olist401 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1400, i32 0, i32 0
  %arrayidx402 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist401, i32 0, i64 0
  %osucc403 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx402, i32 0, i32 1
  %158 = load %union.rec*, %union.rec** %osucc403, align 8
  %os1404 = bitcast %union.rec* %158 to %struct.word_type*
  %olist405 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1404, i32 0, i32 0
  %arrayidx406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist405, i32 0, i64 1
  %opred407 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx406, i32 0, i32 0
  %159 = load %union.rec*, %union.rec** %opred407, align 8
  store %union.rec* %159, %union.rec** %sym, align 8
  br label %for.cond.408

for.cond.408:                                     ; preds = %for.inc.417, %if.then.398
  %160 = load %union.rec*, %union.rec** %sym, align 8
  %os1409 = bitcast %union.rec* %160 to %struct.word_type*
  %ou1410 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1409, i32 0, i32 1
  %os11411 = bitcast %union.FIRST_UNION* %ou1410 to %struct.anon.0*
  %otype412 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11411, i32 0, i32 0
  %161 = load i8, i8* %otype412, align 1
  %conv413 = zext i8 %161 to i32
  %cmp414 = icmp eq i32 %conv413, 0
  br i1 %cmp414, label %for.body.416, label %for.end.422

for.body.416:                                     ; preds = %for.cond.408
  br label %for.inc.417

for.inc.417:                                      ; preds = %for.body.416
  %162 = load %union.rec*, %union.rec** %sym, align 8
  %os1418 = bitcast %union.rec* %162 to %struct.word_type*
  %olist419 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1418, i32 0, i32 0
  %arrayidx420 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist419, i32 0, i64 1
  %opred421 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx420, i32 0, i32 0
  %163 = load %union.rec*, %union.rec** %opred421, align 8
  store %union.rec* %163, %union.rec** %sym, align 8
  br label %for.cond.408

for.end.422:                                      ; preds = %for.cond.408
  %164 = load %union.rec*, %union.rec** %sym, align 8
  %os1423 = bitcast %union.rec* %164 to %struct.word_type*
  %ou1424 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1423, i32 0, i32 1
  %os11425 = bitcast %union.FIRST_UNION* %ou1424 to %struct.anon.0*
  %otype426 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11425, i32 0, i32 0
  %165 = load i8, i8* %otype426, align 1
  %conv427 = zext i8 %165 to i32
  %cmp428 = icmp eq i32 %conv427, 2
  br i1 %cmp428, label %if.then.430, label %if.end.447

if.then.430:                                      ; preds = %for.end.422
  %166 = load %union.rec*, %union.rec** %sym, align 8
  %os2 = bitcast %union.rec* %166 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %167 = load %union.rec*, %union.rec** %oactual, align 8
  %os1431 = bitcast %union.rec* %167 to %struct.word_type*
  %ou2432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1431, i32 0, i32 2
  %os26433 = bitcast %union.SECOND_UNION* %ou2432 to %struct.anon.6*
  %ois_extern_target434 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26433, i32 0, i32 1
  %168 = bitcast [3 x i8]* %ois_extern_target434 to i24*
  %bf.load435 = load i24, i24* %168, align 1
  %bf.clear436 = and i24 %bf.load435, -4097
  %bf.set437 = or i24 %bf.clear436, 4096
  store i24 %bf.set437, i24* %168, align 1
  %169 = load %union.rec*, %union.rec** %sym, align 8
  %os2438 = bitcast %union.rec* %169 to %struct.closure_type*
  %oactual439 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2438, i32 0, i32 5
  %170 = load %union.rec*, %union.rec** %oactual439, align 8
  %os1440 = bitcast %union.rec* %170 to %struct.word_type*
  %ou2441 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1440, i32 0, i32 2
  %os26442 = bitcast %union.SECOND_UNION* %ou2441 to %struct.anon.6*
  %ouses_extern_target443 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26442, i32 0, i32 1
  %171 = bitcast [3 x i8]* %ouses_extern_target443 to i24*
  %bf.load444 = load i24, i24* %171, align 1
  %bf.clear445 = and i24 %bf.load444, -2049
  %bf.set446 = or i24 %bf.clear445, 2048
  store i24 %bf.set446, i24* %171, align 1
  br label %if.end.447

if.end.447:                                       ; preds = %if.then.430, %for.end.422
  br label %if.end.448

if.end.448:                                       ; preds = %if.end.447, %if.then.387
  br label %if.end.449

if.end.449:                                       ; preds = %if.end.448, %lor.lhs.false.379, %land.lhs.true.368, %if.else.342
  br label %if.end.450

if.end.450:                                       ; preds = %if.end.449, %if.then.336
  %172 = load %union.rec*, %union.rec** %s, align 8
  %os1451 = bitcast %union.rec* %172 to %struct.word_type*
  %ou2452 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1451, i32 0, i32 2
  %os26453 = bitcast %union.SECOND_UNION* %ou2452 to %struct.anon.6*
  %ois_tag = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26453, i32 0, i32 1
  %173 = bitcast [3 x i8]* %ois_tag to i24*
  %bf.load454 = load i24, i24* %173, align 1
  %bf.clear455 = and i24 %bf.load454, -2
  store i24 %bf.clear455, i24* %173, align 1
  %174 = load %union.rec*, %union.rec** %s, align 8
  %os1456 = bitcast %union.rec* %174 to %struct.word_type*
  %ou2457 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1456, i32 0, i32 2
  %os26458 = bitcast %union.SECOND_UNION* %ou2457 to %struct.anon.6*
  %ohas_tag = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26458, i32 0, i32 1
  %175 = bitcast [3 x i8]* %ohas_tag to i24*
  %bf.load459 = load i24, i24* %175, align 1
  %bf.clear460 = and i24 %bf.load459, -3
  store i24 %bf.clear460, i24* %175, align 1
  %176 = load %union.rec*, %union.rec** %s, align 8
  %os1461 = bitcast %union.rec* %176 to %struct.word_type*
  %ou2462 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1461, i32 0, i32 2
  %os26463 = bitcast %union.SECOND_UNION* %ou2462 to %struct.anon.6*
  %ois_key = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26463, i32 0, i32 1
  %177 = bitcast [3 x i8]* %ois_key to i24*
  %bf.load464 = load i24, i24* %177, align 1
  %bf.clear465 = and i24 %bf.load464, -8193
  store i24 %bf.clear465, i24* %177, align 1
  %178 = load %union.rec*, %union.rec** %s, align 8
  %os1466 = bitcast %union.rec* %178 to %struct.word_type*
  %ou2467 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1466, i32 0, i32 2
  %os26468 = bitcast %union.SECOND_UNION* %ou2467 to %struct.anon.6*
  %ohas_key469 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26468, i32 0, i32 1
  %179 = bitcast [3 x i8]* %ohas_key469 to i24*
  %bf.load470 = load i24, i24* %179, align 1
  %bf.clear471 = and i24 %bf.load470, -16385
  store i24 %bf.clear471, i24* %179, align 1
  %180 = load %union.rec*, %union.rec** %s, align 8
  %os6472 = bitcast %union.rec* %180 to %struct.symbol_type*
  %ois_optimize = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6472, i32 0, i32 16
  %bf.load473 = load i8, i8* %ois_optimize, align 2
  %bf.clear474 = and i8 %bf.load473, -2
  store i8 %bf.clear474, i8* %ois_optimize, align 2
  %181 = load %union.rec*, %union.rec** %s, align 8
  %os6475 = bitcast %union.rec* %181 to %struct.symbol_type*
  %ohas_optimize = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6475, i32 0, i32 16
  %bf.load476 = load i8, i8* %ohas_optimize, align 2
  %bf.clear477 = and i8 %bf.load476, -3
  store i8 %bf.clear477, i8* %ohas_optimize, align 2
  %182 = load %union.rec*, %union.rec** %s, align 8
  %os6478 = bitcast %union.rec* %182 to %struct.symbol_type*
  %ois_merge = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6478, i32 0, i32 16
  %bf.load479 = load i8, i8* %ois_merge, align 2
  %bf.clear480 = and i8 %bf.load479, -5
  store i8 %bf.clear480, i8* %ois_merge, align 2
  %183 = load %union.rec*, %union.rec** %s, align 8
  %os6481 = bitcast %union.rec* %183 to %struct.symbol_type*
  %ohas_merge = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6481, i32 0, i32 16
  %bf.load482 = load i8, i8* %ohas_merge, align 2
  %bf.clear483 = and i8 %bf.load482, -9
  store i8 %bf.clear483, i8* %ohas_merge, align 2
  %184 = load %union.rec*, %union.rec** %s, align 8
  %os6484 = bitcast %union.rec* %184 to %struct.symbol_type*
  %ois_enclose = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6484, i32 0, i32 16
  %bf.load485 = load i8, i8* %ois_enclose, align 2
  %bf.clear486 = and i8 %bf.load485, -17
  store i8 %bf.clear486, i8* %ois_enclose, align 2
  %185 = load %union.rec*, %union.rec** %s, align 8
  %os6487 = bitcast %union.rec* %185 to %struct.symbol_type*
  %ohas_enclose = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6487, i32 0, i32 16
  %bf.load488 = load i8, i8* %ohas_enclose, align 2
  %bf.clear489 = and i8 %bf.load488, -33
  store i8 %bf.clear489, i8* %ohas_enclose, align 2
  %186 = load %union.rec*, %union.rec** %s, align 8
  %os6490 = bitcast %union.rec* %186 to %struct.symbol_type*
  %oenclosing491 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6490, i32 0, i32 3
  %187 = load %union.rec*, %union.rec** %oenclosing491, align 8
  %cmp492 = icmp ne %union.rec* %187, null
  br i1 %cmp492, label %land.lhs.true.494, label %if.end.743

land.lhs.true.494:                                ; preds = %if.end.450
  %188 = load %union.rec*, %union.rec** %s, align 8
  %os6495 = bitcast %union.rec* %188 to %struct.symbol_type*
  %oenclosing496 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6495, i32 0, i32 3
  %189 = load %union.rec*, %union.rec** %oenclosing496, align 8
  %os1497 = bitcast %union.rec* %189 to %struct.word_type*
  %ou1498 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1497, i32 0, i32 1
  %os11499 = bitcast %union.FIRST_UNION* %ou1498 to %struct.anon.0*
  %otype500 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11499, i32 0, i32 0
  %190 = load i8, i8* %otype500, align 1
  %conv501 = zext i8 %190 to i32
  %cmp502 = icmp eq i32 %conv501, 143
  br i1 %cmp502, label %if.then.504, label %if.end.743

if.then.504:                                      ; preds = %land.lhs.true.494
  %191 = load i8*, i8** %str.addr, align 8
  %call505 = call i32 @strcmp(i8* %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #4
  %cmp506 = icmp eq i32 %call505, 0
  br i1 %cmp506, label %if.then.508, label %if.end.534

if.then.508:                                      ; preds = %if.then.504
  %192 = load %union.rec*, %union.rec** %s, align 8
  %os6509 = bitcast %union.rec* %192 to %struct.symbol_type*
  %oenclosing510 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6509, i32 0, i32 3
  %193 = load %union.rec*, %union.rec** %oenclosing510, align 8
  %os1511 = bitcast %union.rec* %193 to %struct.word_type*
  %ou2512 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1511, i32 0, i32 2
  %os26513 = bitcast %union.SECOND_UNION* %ou2512 to %struct.anon.6*
  %odirty514 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26513, i32 0, i32 1
  %194 = bitcast [3 x i8]* %odirty514 to i24*
  %bf.load515 = load i24, i24* %194, align 1
  %bf.clear516 = and i24 %bf.load515, -32769
  %bf.set517 = or i24 %bf.clear516, 32768
  store i24 %bf.set517, i24* %194, align 1
  %195 = load %union.rec*, %union.rec** %s, align 8
  %os6518 = bitcast %union.rec* %195 to %struct.symbol_type*
  %oenclosing519 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6518, i32 0, i32 3
  %196 = load %union.rec*, %union.rec** %oenclosing519, align 8
  %os1520 = bitcast %union.rec* %196 to %struct.word_type*
  %ou2521 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1520, i32 0, i32 2
  %os26522 = bitcast %union.SECOND_UNION* %ou2521 to %struct.anon.6*
  %ohas_tag523 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26522, i32 0, i32 1
  %197 = bitcast [3 x i8]* %ohas_tag523 to i24*
  %bf.load524 = load i24, i24* %197, align 1
  %bf.clear525 = and i24 %bf.load524, -3
  %bf.set526 = or i24 %bf.clear525, 2
  store i24 %bf.set526, i24* %197, align 1
  %198 = load %union.rec*, %union.rec** %s, align 8
  %os1527 = bitcast %union.rec* %198 to %struct.word_type*
  %ou2528 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1527, i32 0, i32 2
  %os26529 = bitcast %union.SECOND_UNION* %ou2528 to %struct.anon.6*
  %ois_tag530 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26529, i32 0, i32 1
  %199 = bitcast [3 x i8]* %ois_tag530 to i24*
  %bf.load531 = load i24, i24* %199, align 1
  %bf.clear532 = and i24 %bf.load531, -2
  %bf.set533 = or i24 %bf.clear532, 1
  store i24 %bf.set533, i24* %199, align 1
  br label %if.end.534

if.end.534:                                       ; preds = %if.then.508, %if.then.504
  %200 = load i8*, i8** %str.addr, align 8
  %call535 = call i32 @strcmp(i8* %200, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0)) #4
  %cmp536 = icmp eq i32 %call535, 0
  br i1 %cmp536, label %if.then.538, label %if.end.551

if.then.538:                                      ; preds = %if.end.534
  %201 = load %union.rec*, %union.rec** %s, align 8
  %os6539 = bitcast %union.rec* %201 to %struct.symbol_type*
  %oenclosing540 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6539, i32 0, i32 3
  %202 = load %union.rec*, %union.rec** %oenclosing540, align 8
  %os6541 = bitcast %union.rec* %202 to %struct.symbol_type*
  %ohas_optimize542 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6541, i32 0, i32 16
  %bf.load543 = load i8, i8* %ohas_optimize542, align 2
  %bf.clear544 = and i8 %bf.load543, -3
  %bf.set545 = or i8 %bf.clear544, 2
  store i8 %bf.set545, i8* %ohas_optimize542, align 2
  %203 = load %union.rec*, %union.rec** %s, align 8
  %os6546 = bitcast %union.rec* %203 to %struct.symbol_type*
  %ois_optimize547 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6546, i32 0, i32 16
  %bf.load548 = load i8, i8* %ois_optimize547, align 2
  %bf.clear549 = and i8 %bf.load548, -2
  %bf.set550 = or i8 %bf.clear549, 1
  store i8 %bf.set550, i8* %ois_optimize547, align 2
  br label %if.end.551

if.end.551:                                       ; preds = %if.then.538, %if.end.534
  %204 = load i8*, i8** %str.addr, align 8
  %call552 = call i32 @strcmp(i8* %204, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)) #4
  %cmp553 = icmp eq i32 %call552, 0
  br i1 %cmp553, label %if.then.555, label %if.end.708

if.then.555:                                      ; preds = %if.end.551
  %205 = load %union.rec*, %union.rec** %s, align 8
  %os6556 = bitcast %union.rec* %205 to %struct.symbol_type*
  %oenclosing557 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6556, i32 0, i32 3
  %206 = load %union.rec*, %union.rec** %oenclosing557, align 8
  %os1558 = bitcast %union.rec* %206 to %struct.word_type*
  %ou2559 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1558, i32 0, i32 2
  %os26560 = bitcast %union.SECOND_UNION* %ou2559 to %struct.anon.6*
  %odirty561 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26560, i32 0, i32 1
  %207 = bitcast [3 x i8]* %odirty561 to i24*
  %bf.load562 = load i24, i24* %207, align 1
  %bf.clear563 = and i24 %bf.load562, -32769
  %bf.set564 = or i24 %bf.clear563, 32768
  store i24 %bf.set564, i24* %207, align 1
  %208 = load %union.rec*, %union.rec** %s, align 8
  %os6565 = bitcast %union.rec* %208 to %struct.symbol_type*
  %oenclosing566 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6565, i32 0, i32 3
  %209 = load %union.rec*, %union.rec** %oenclosing566, align 8
  %os1567 = bitcast %union.rec* %209 to %struct.word_type*
  %ou2568 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1567, i32 0, i32 2
  %os26569 = bitcast %union.SECOND_UNION* %ou2568 to %struct.anon.6*
  %ohas_key570 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26569, i32 0, i32 1
  %210 = bitcast [3 x i8]* %ohas_key570 to i24*
  %bf.load571 = load i24, i24* %210, align 1
  %bf.clear572 = and i24 %bf.load571, -16385
  %bf.set573 = or i24 %bf.clear572, 16384
  store i24 %bf.set573, i24* %210, align 1
  %211 = load %union.rec*, %union.rec** %s, align 8
  %os1574 = bitcast %union.rec* %211 to %struct.word_type*
  %ou2575 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1574, i32 0, i32 2
  %os26576 = bitcast %union.SECOND_UNION* %ou2575 to %struct.anon.6*
  %ois_key577 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26576, i32 0, i32 1
  %212 = bitcast [3 x i8]* %ois_key577 to i24*
  %bf.load578 = load i24, i24* %212, align 1
  %bf.clear579 = and i24 %bf.load578, -8193
  %bf.set580 = or i24 %bf.clear579, 8192
  store i24 %bf.set580, i24* %212, align 1
  %213 = load %union.rec*, %union.rec** %s, align 8
  %os6581 = bitcast %union.rec* %213 to %struct.symbol_type*
  %oenclosing582 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6581, i32 0, i32 3
  %214 = load %union.rec*, %union.rec** %oenclosing582, align 8
  %os1583 = bitcast %union.rec* %214 to %struct.word_type*
  %olist584 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1583, i32 0, i32 0
  %arrayidx585 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist584, i32 0, i64 0
  %osucc586 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx585, i32 0, i32 1
  %215 = load %union.rec*, %union.rec** %osucc586, align 8
  store %union.rec* %215, %union.rec** %link, align 8
  br label %for.cond.587

for.cond.587:                                     ; preds = %for.inc.702, %if.then.555
  %216 = load %union.rec*, %union.rec** %link, align 8
  %217 = load %union.rec*, %union.rec** %s, align 8
  %os6588 = bitcast %union.rec* %217 to %struct.symbol_type*
  %oenclosing589 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6588, i32 0, i32 3
  %218 = load %union.rec*, %union.rec** %oenclosing589, align 8
  %cmp590 = icmp ne %union.rec* %216, %218
  br i1 %cmp590, label %for.body.592, label %for.end.707

for.body.592:                                     ; preds = %for.cond.587
  %219 = load %union.rec*, %union.rec** %link, align 8
  %os1593 = bitcast %union.rec* %219 to %struct.word_type*
  %olist594 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1593, i32 0, i32 0
  %arrayidx595 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist594, i32 0, i64 1
  %opred596 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx595, i32 0, i32 0
  %220 = load %union.rec*, %union.rec** %opred596, align 8
  store %union.rec* %220, %union.rec** %p, align 8
  br label %for.cond.597

for.cond.597:                                     ; preds = %for.inc.606, %for.body.592
  %221 = load %union.rec*, %union.rec** %p, align 8
  %os1598 = bitcast %union.rec* %221 to %struct.word_type*
  %ou1599 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1598, i32 0, i32 1
  %os11600 = bitcast %union.FIRST_UNION* %ou1599 to %struct.anon.0*
  %otype601 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11600, i32 0, i32 0
  %222 = load i8, i8* %otype601, align 1
  %conv602 = zext i8 %222 to i32
  %cmp603 = icmp eq i32 %conv602, 0
  br i1 %cmp603, label %for.body.605, label %for.end.611

for.body.605:                                     ; preds = %for.cond.597
  br label %for.inc.606

for.inc.606:                                      ; preds = %for.body.605
  %223 = load %union.rec*, %union.rec** %p, align 8
  %os1607 = bitcast %union.rec* %223 to %struct.word_type*
  %olist608 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1607, i32 0, i32 0
  %arrayidx609 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist608, i32 0, i64 1
  %opred610 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx609, i32 0, i32 0
  %224 = load %union.rec*, %union.rec** %opred610, align 8
  store %union.rec* %224, %union.rec** %p, align 8
  br label %for.cond.597

for.end.611:                                      ; preds = %for.cond.597
  %225 = load %union.rec*, %union.rec** %p, align 8
  %os1612 = bitcast %union.rec* %225 to %struct.word_type*
  %ou2613 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1612, i32 0, i32 2
  %os26614 = bitcast %union.SECOND_UNION* %ou2613 to %struct.anon.6*
  %ois_target615 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26614, i32 0, i32 1
  %226 = bitcast [3 x i8]* %ois_target615 to i24*
  %bf.load616 = load i24, i24* %226, align 1
  %bf.lshr617 = lshr i24 %bf.load616, 5
  %bf.clear618 = and i24 %bf.lshr617, 1
  %bf.cast619 = zext i24 %bf.clear618 to i32
  %tobool620 = icmp ne i32 %bf.cast619, 0
  br i1 %tobool620, label %land.lhs.true.621, label %if.end.701

land.lhs.true.621:                                ; preds = %for.end.611
  %227 = load %union.rec*, %union.rec** %p, align 8
  %os6622 = bitcast %union.rec* %227 to %struct.symbol_type*
  %osym_body623 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6622, i32 0, i32 4
  %228 = load %union.rec*, %union.rec** %osym_body623, align 8
  %cmp624 = icmp ne %union.rec* %228, null
  br i1 %cmp624, label %land.lhs.true.626, label %if.end.701

land.lhs.true.626:                                ; preds = %land.lhs.true.621
  %229 = load %union.rec*, %union.rec** %p, align 8
  %os6627 = bitcast %union.rec* %229 to %struct.symbol_type*
  %osym_body628 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6627, i32 0, i32 4
  %230 = load %union.rec*, %union.rec** %osym_body628, align 8
  %os1629 = bitcast %union.rec* %230 to %struct.word_type*
  %ou1630 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1629, i32 0, i32 1
  %os11631 = bitcast %union.FIRST_UNION* %ou1630 to %struct.anon.0*
  %otype632 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11631, i32 0, i32 0
  %231 = load i8, i8* %otype632, align 1
  %conv633 = zext i8 %231 to i32
  %cmp634 = icmp eq i32 %conv633, 6
  br i1 %cmp634, label %if.then.646, label %lor.lhs.false.636

lor.lhs.false.636:                                ; preds = %land.lhs.true.626
  %232 = load %union.rec*, %union.rec** %p, align 8
  %os6637 = bitcast %union.rec* %232 to %struct.symbol_type*
  %osym_body638 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6637, i32 0, i32 4
  %233 = load %union.rec*, %union.rec** %osym_body638, align 8
  %os1639 = bitcast %union.rec* %233 to %struct.word_type*
  %ou1640 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1639, i32 0, i32 1
  %os11641 = bitcast %union.FIRST_UNION* %ou1640 to %struct.anon.0*
  %otype642 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11641, i32 0, i32 0
  %234 = load i8, i8* %otype642, align 1
  %conv643 = zext i8 %234 to i32
  %cmp644 = icmp eq i32 %conv643, 7
  br i1 %cmp644, label %if.then.646, label %if.end.701

if.then.646:                                      ; preds = %lor.lhs.false.636, %land.lhs.true.626
  %235 = load %union.rec*, %union.rec** %p, align 8
  %os6649 = bitcast %union.rec* %235 to %struct.symbol_type*
  %osym_body650 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6649, i32 0, i32 4
  %236 = load %union.rec*, %union.rec** %osym_body650, align 8
  %os1651 = bitcast %union.rec* %236 to %struct.word_type*
  %olist652 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1651, i32 0, i32 0
  %arrayidx653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist652, i32 0, i64 0
  %osucc654 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx653, i32 0, i32 1
  %237 = load %union.rec*, %union.rec** %osucc654, align 8
  %os1655 = bitcast %union.rec* %237 to %struct.word_type*
  %olist656 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1655, i32 0, i32 0
  %arrayidx657 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist656, i32 0, i64 1
  %opred658 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx657, i32 0, i32 0
  %238 = load %union.rec*, %union.rec** %opred658, align 8
  store %union.rec* %238, %union.rec** %sym648, align 8
  br label %for.cond.659

for.cond.659:                                     ; preds = %for.inc.668, %if.then.646
  %239 = load %union.rec*, %union.rec** %sym648, align 8
  %os1660 = bitcast %union.rec* %239 to %struct.word_type*
  %ou1661 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1660, i32 0, i32 1
  %os11662 = bitcast %union.FIRST_UNION* %ou1661 to %struct.anon.0*
  %otype663 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11662, i32 0, i32 0
  %240 = load i8, i8* %otype663, align 1
  %conv664 = zext i8 %240 to i32
  %cmp665 = icmp eq i32 %conv664, 0
  br i1 %cmp665, label %for.body.667, label %for.end.673

for.body.667:                                     ; preds = %for.cond.659
  br label %for.inc.668

for.inc.668:                                      ; preds = %for.body.667
  %241 = load %union.rec*, %union.rec** %sym648, align 8
  %os1669 = bitcast %union.rec* %241 to %struct.word_type*
  %olist670 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1669, i32 0, i32 0
  %arrayidx671 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist670, i32 0, i64 1
  %opred672 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx671, i32 0, i32 0
  %242 = load %union.rec*, %union.rec** %opred672, align 8
  store %union.rec* %242, %union.rec** %sym648, align 8
  br label %for.cond.659

for.end.673:                                      ; preds = %for.cond.659
  %243 = load %union.rec*, %union.rec** %sym648, align 8
  %os1674 = bitcast %union.rec* %243 to %struct.word_type*
  %ou1675 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1674, i32 0, i32 1
  %os11676 = bitcast %union.FIRST_UNION* %ou1675 to %struct.anon.0*
  %otype677 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11676, i32 0, i32 0
  %244 = load i8, i8* %otype677, align 1
  %conv678 = zext i8 %244 to i32
  %cmp679 = icmp eq i32 %conv678, 2
  br i1 %cmp679, label %if.then.681, label %if.end.700

if.then.681:                                      ; preds = %for.end.673
  %245 = load %union.rec*, %union.rec** %sym648, align 8
  %os2682 = bitcast %union.rec* %245 to %struct.closure_type*
  %oactual683 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2682, i32 0, i32 5
  %246 = load %union.rec*, %union.rec** %oactual683, align 8
  %os1684 = bitcast %union.rec* %246 to %struct.word_type*
  %ou2685 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1684, i32 0, i32 2
  %os26686 = bitcast %union.SECOND_UNION* %ou2685 to %struct.anon.6*
  %ois_extern_target687 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26686, i32 0, i32 1
  %247 = bitcast [3 x i8]* %ois_extern_target687 to i24*
  %bf.load688 = load i24, i24* %247, align 1
  %bf.clear689 = and i24 %bf.load688, -4097
  %bf.set690 = or i24 %bf.clear689, 4096
  store i24 %bf.set690, i24* %247, align 1
  %248 = load %union.rec*, %union.rec** %sym648, align 8
  %os2691 = bitcast %union.rec* %248 to %struct.closure_type*
  %oactual692 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2691, i32 0, i32 5
  %249 = load %union.rec*, %union.rec** %oactual692, align 8
  %os1693 = bitcast %union.rec* %249 to %struct.word_type*
  %ou2694 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1693, i32 0, i32 2
  %os26695 = bitcast %union.SECOND_UNION* %ou2694 to %struct.anon.6*
  %ouses_extern_target696 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26695, i32 0, i32 1
  %250 = bitcast [3 x i8]* %ouses_extern_target696 to i24*
  %bf.load697 = load i24, i24* %250, align 1
  %bf.clear698 = and i24 %bf.load697, -2049
  %bf.set699 = or i24 %bf.clear698, 2048
  store i24 %bf.set699, i24* %250, align 1
  br label %if.end.700

if.end.700:                                       ; preds = %if.then.681, %for.end.673
  br label %if.end.701

if.end.701:                                       ; preds = %if.end.700, %lor.lhs.false.636, %land.lhs.true.621, %for.end.611
  br label %for.inc.702

for.inc.702:                                      ; preds = %if.end.701
  %251 = load %union.rec*, %union.rec** %link, align 8
  %os1703 = bitcast %union.rec* %251 to %struct.word_type*
  %olist704 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1703, i32 0, i32 0
  %arrayidx705 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist704, i32 0, i64 0
  %osucc706 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx705, i32 0, i32 1
  %252 = load %union.rec*, %union.rec** %osucc706, align 8
  store %union.rec* %252, %union.rec** %link, align 8
  br label %for.cond.587

for.end.707:                                      ; preds = %for.cond.587
  br label %if.end.708

if.end.708:                                       ; preds = %for.end.707, %if.end.551
  %253 = load i8*, i8** %str.addr, align 8
  %call709 = call i32 @strcmp(i8* %253, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #4
  %cmp710 = icmp eq i32 %call709, 0
  br i1 %cmp710, label %if.then.712, label %if.end.725

if.then.712:                                      ; preds = %if.end.708
  %254 = load %union.rec*, %union.rec** %s, align 8
  %os6713 = bitcast %union.rec* %254 to %struct.symbol_type*
  %oenclosing714 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6713, i32 0, i32 3
  %255 = load %union.rec*, %union.rec** %oenclosing714, align 8
  %os6715 = bitcast %union.rec* %255 to %struct.symbol_type*
  %ohas_merge716 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6715, i32 0, i32 16
  %bf.load717 = load i8, i8* %ohas_merge716, align 2
  %bf.clear718 = and i8 %bf.load717, -9
  %bf.set719 = or i8 %bf.clear718, 8
  store i8 %bf.set719, i8* %ohas_merge716, align 2
  %256 = load %union.rec*, %union.rec** %s, align 8
  %os6720 = bitcast %union.rec* %256 to %struct.symbol_type*
  %ois_merge721 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6720, i32 0, i32 16
  %bf.load722 = load i8, i8* %ois_merge721, align 2
  %bf.clear723 = and i8 %bf.load722, -5
  %bf.set724 = or i8 %bf.clear723, 4
  store i8 %bf.set724, i8* %ois_merge721, align 2
  br label %if.end.725

if.end.725:                                       ; preds = %if.then.712, %if.end.708
  %257 = load i8*, i8** %str.addr, align 8
  %call726 = call i32 @strcmp(i8* %257, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0)) #4
  %cmp727 = icmp eq i32 %call726, 0
  br i1 %cmp727, label %if.then.729, label %if.end.742

if.then.729:                                      ; preds = %if.end.725
  %258 = load %union.rec*, %union.rec** %s, align 8
  %os6730 = bitcast %union.rec* %258 to %struct.symbol_type*
  %oenclosing731 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6730, i32 0, i32 3
  %259 = load %union.rec*, %union.rec** %oenclosing731, align 8
  %os6732 = bitcast %union.rec* %259 to %struct.symbol_type*
  %ohas_enclose733 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6732, i32 0, i32 16
  %bf.load734 = load i8, i8* %ohas_enclose733, align 2
  %bf.clear735 = and i8 %bf.load734, -33
  %bf.set736 = or i8 %bf.clear735, 32
  store i8 %bf.set736, i8* %ohas_enclose733, align 2
  %260 = load %union.rec*, %union.rec** %s, align 8
  %os6737 = bitcast %union.rec* %260 to %struct.symbol_type*
  %ois_enclose738 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6737, i32 0, i32 16
  %bf.load739 = load i8, i8* %ois_enclose738, align 2
  %bf.clear740 = and i8 %bf.load739, -17
  %bf.set741 = or i8 %bf.clear740, 16
  store i8 %bf.set741, i8* %ois_enclose738, align 2
  br label %if.end.742

if.end.742:                                       ; preds = %if.then.729, %if.end.725
  br label %if.end.743

if.end.743:                                       ; preds = %if.end.742, %land.lhs.true.494, %if.end.450
  %261 = load i8*, i8** %str.addr, align 8
  %call744 = call i32 @strcmp(i8* %261, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)) #4
  %cmp745 = icmp eq i32 %call744, 0
  br i1 %cmp745, label %if.then.747, label %if.end.795

if.then.747:                                      ; preds = %if.end.743
  %262 = load %union.rec*, %union.rec** %s, align 8
  %os1748 = bitcast %union.rec* %262 to %struct.word_type*
  %ou1749 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1748, i32 0, i32 1
  %os11750 = bitcast %union.FIRST_UNION* %ou1749 to %struct.anon.0*
  %otype751 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11750, i32 0, i32 0
  %263 = load i8, i8* %otype751, align 1
  %conv752 = zext i8 %263 to i32
  %cmp753 = icmp ne i32 %conv752, 143
  br i1 %cmp753, label %if.then.760, label %lor.lhs.false.755

lor.lhs.false.755:                                ; preds = %if.then.747
  %264 = load %union.rec*, %union.rec** %s, align 8
  %os6756 = bitcast %union.rec* %264 to %struct.symbol_type*
  %oenclosing757 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6756, i32 0, i32 3
  %265 = load %union.rec*, %union.rec** %oenclosing757, align 8
  %266 = load %union.rec*, %union.rec** @StartSym, align 8
  %cmp758 = icmp eq %union.rec* %265, %266
  br i1 %cmp758, label %if.then.760, label %if.else.765

if.then.760:                                      ; preds = %lor.lhs.false.755, %if.then.747
  %267 = load %union.rec*, %union.rec** %s, align 8
  %os1761 = bitcast %union.rec* %267 to %struct.word_type*
  %ou1762 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1761, i32 0, i32 1
  %ofpos763 = bitcast %union.FIRST_UNION* %ou1762 to %struct.FILE_POS*
  %268 = load i8*, i8** %str.addr, align 8
  %call764 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos763, i8* %268)
  br label %if.end.794

if.else.765:                                      ; preds = %lor.lhs.false.755
  %269 = load %union.rec*, %union.rec** %s, align 8
  %os6766 = bitcast %union.rec* %269 to %struct.symbol_type*
  %oenclosing767 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6766, i32 0, i32 3
  %270 = load %union.rec*, %union.rec** %oenclosing767, align 8
  %os1768 = bitcast %union.rec* %270 to %struct.word_type*
  %ou2769 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1768, i32 0, i32 2
  %os26770 = bitcast %union.SECOND_UNION* %ou2769 to %struct.anon.6*
  %ohas_rpar771 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26770, i32 0, i32 1
  %271 = bitcast [3 x i8]* %ohas_rpar771 to i24*
  %bf.load772 = load i24, i24* %271, align 1
  %bf.lshr773 = lshr i24 %bf.load772, 3
  %bf.clear774 = and i24 %bf.lshr773, 1
  %bf.cast775 = zext i24 %bf.clear774 to i32
  %tobool776 = icmp ne i32 %bf.cast775, 0
  br i1 %tobool776, label %if.else.782, label %if.then.777

if.then.777:                                      ; preds = %if.else.765
  %272 = load %union.rec*, %union.rec** %s, align 8
  %os1778 = bitcast %union.rec* %272 to %struct.word_type*
  %ou1779 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1778, i32 0, i32 1
  %ofpos780 = bitcast %union.FIRST_UNION* %ou1779 to %struct.FILE_POS*
  %call781 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 14, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos780, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.793

if.else.782:                                      ; preds = %if.else.765
  %273 = load %union.rec*, %union.rec** %s, align 8
  %274 = load %union.rec*, %union.rec** %s, align 8
  %os6783 = bitcast %union.rec* %274 to %struct.symbol_type*
  %oenclosing784 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6783, i32 0, i32 3
  %275 = load %union.rec*, %union.rec** %oenclosing784, align 8
  %os6785 = bitcast %union.rec* %275 to %struct.symbol_type*
  %ofilter786 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6785, i32 0, i32 10
  store %union.rec* %273, %union.rec** %ofilter786, align 8
  %276 = load %union.rec*, %union.rec** %s, align 8
  %os6787 = bitcast %union.rec* %276 to %struct.symbol_type*
  %oenclosing788 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6787, i32 0, i32 3
  %277 = load %union.rec*, %union.rec** %oenclosing788, align 8
  %os1789 = bitcast %union.rec* %277 to %struct.word_type*
  %ou2790 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1789, i32 0, i32 2
  %os21791 = bitcast %union.SECOND_UNION* %ou2790 to %struct.anon.1*
  %oprecedence792 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %os21791, i32 0, i32 0
  store i8 104, i8* %oprecedence792, align 1
  br label %if.end.793

if.end.793:                                       ; preds = %if.else.782, %if.then.777
  br label %if.end.794

if.end.794:                                       ; preds = %if.end.793, %if.then.760
  br label %if.end.795

if.end.795:                                       ; preds = %if.end.794, %if.end.743
  %278 = load %union.rec*, %union.rec** %s, align 8
  %os1796 = bitcast %union.rec* %278 to %struct.word_type*
  %ou1797 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1796, i32 0, i32 1
  %os11798 = bitcast %union.FIRST_UNION* %ou1797 to %struct.anon.0*
  %otype799 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11798, i32 0, i32 0
  %279 = load i8, i8* %otype799, align 1
  %conv800 = zext i8 %279 to i32
  %cmp801 = icmp eq i32 %conv800, 146
  br i1 %cmp801, label %land.lhs.true.803, label %if.end.846

land.lhs.true.803:                                ; preds = %if.end.795
  %280 = load %union.rec*, %union.rec** %s, align 8
  %os6804 = bitcast %union.rec* %280 to %struct.symbol_type*
  %oenclosing805 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6804, i32 0, i32 3
  %281 = load %union.rec*, %union.rec** %oenclosing805, align 8
  %os1806 = bitcast %union.rec* %281 to %struct.word_type*
  %ou2807 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1806, i32 0, i32 2
  %os26808 = bitcast %union.SECOND_UNION* %ou2807 to %struct.anon.6*
  %ohas_body809 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26808, i32 0, i32 1
  %282 = bitcast [3 x i8]* %ohas_body809 to i24*
  %bf.load810 = load i24, i24* %282, align 1
  %bf.lshr811 = lshr i24 %bf.load810, 8
  %bf.clear812 = and i24 %bf.lshr811, 1
  %bf.cast813 = zext i24 %bf.clear812 to i32
  %tobool814 = icmp ne i32 %bf.cast813, 0
  br i1 %tobool814, label %land.lhs.true.815, label %if.end.846

land.lhs.true.815:                                ; preds = %land.lhs.true.803
  %283 = load %union.rec*, %union.rec** %s, align 8
  %os1816 = bitcast %union.rec* %283 to %struct.word_type*
  %ou2817 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1816, i32 0, i32 2
  %os26818 = bitcast %union.SECOND_UNION* %ou2817 to %struct.anon.6*
  %ois_tag819 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26818, i32 0, i32 1
  %284 = bitcast [3 x i8]* %ois_tag819 to i24*
  %bf.load820 = load i24, i24* %284, align 1
  %bf.clear821 = and i24 %bf.load820, 1
  %bf.cast822 = zext i24 %bf.clear821 to i32
  %tobool823 = icmp ne i32 %bf.cast822, 0
  br i1 %tobool823, label %if.then.841, label %lor.lhs.false.824

lor.lhs.false.824:                                ; preds = %land.lhs.true.815
  %285 = load %union.rec*, %union.rec** %s, align 8
  %os1825 = bitcast %union.rec* %285 to %struct.word_type*
  %ou2826 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1825, i32 0, i32 2
  %os26827 = bitcast %union.SECOND_UNION* %ou2826 to %struct.anon.6*
  %ois_key828 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26827, i32 0, i32 1
  %286 = bitcast [3 x i8]* %ois_key828 to i24*
  %bf.load829 = load i24, i24* %286, align 1
  %bf.lshr830 = lshr i24 %bf.load829, 13
  %bf.clear831 = and i24 %bf.lshr830, 1
  %bf.cast832 = zext i24 %bf.clear831 to i32
  %tobool833 = icmp ne i32 %bf.cast832, 0
  br i1 %tobool833, label %if.then.841, label %lor.lhs.false.834

lor.lhs.false.834:                                ; preds = %lor.lhs.false.824
  %287 = load %union.rec*, %union.rec** %s, align 8
  %os6835 = bitcast %union.rec* %287 to %struct.symbol_type*
  %ois_optimize836 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6835, i32 0, i32 16
  %bf.load837 = load i8, i8* %ois_optimize836, align 2
  %bf.clear838 = and i8 %bf.load837, 1
  %bf.cast839 = zext i8 %bf.clear838 to i32
  %tobool840 = icmp ne i32 %bf.cast839, 0
  br i1 %tobool840, label %if.then.841, label %if.end.846

if.then.841:                                      ; preds = %lor.lhs.false.834, %lor.lhs.false.824, %land.lhs.true.815
  %288 = load %union.rec*, %union.rec** %s, align 8
  %os1842 = bitcast %union.rec* %288 to %struct.word_type*
  %ou1843 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1842, i32 0, i32 1
  %ofpos844 = bitcast %union.FIRST_UNION* %ou1843 to %struct.FILE_POS*
  %289 = load i8*, i8** %str.addr, align 8
  %call845 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos844, i8* %289)
  br label %if.end.846

if.end.846:                                       ; preds = %if.then.841, %lor.lhs.false.834, %land.lhs.true.803, %if.end.795
  %290 = load %union.rec*, %union.rec** %s, align 8
  %os1847 = bitcast %union.rec* %290 to %struct.word_type*
  %ou1848 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1847, i32 0, i32 1
  %os11849 = bitcast %union.FIRST_UNION* %ou1848 to %struct.anon.0*
  %otype850 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11849, i32 0, i32 0
  %291 = load i8, i8* %otype850, align 1
  %conv851 = zext i8 %291 to i32
  %cmp852 = icmp eq i32 %conv851, 146
  br i1 %cmp852, label %land.lhs.true.854, label %if.end.897

land.lhs.true.854:                                ; preds = %if.end.846
  %292 = load %union.rec*, %union.rec** %s, align 8
  %os6855 = bitcast %union.rec* %292 to %struct.symbol_type*
  %oenclosing856 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6855, i32 0, i32 3
  %293 = load %union.rec*, %union.rec** %oenclosing856, align 8
  %os1857 = bitcast %union.rec* %293 to %struct.word_type*
  %ou2858 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1857, i32 0, i32 2
  %os26859 = bitcast %union.SECOND_UNION* %ou2858 to %struct.anon.6*
  %ohas_target860 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26859, i32 0, i32 1
  %294 = bitcast [3 x i8]* %ohas_target860 to i24*
  %bf.load861 = load i24, i24* %294, align 1
  %bf.lshr862 = lshr i24 %bf.load861, 6
  %bf.clear863 = and i24 %bf.lshr862, 1
  %bf.cast864 = zext i24 %bf.clear863 to i32
  %tobool865 = icmp ne i32 %bf.cast864, 0
  br i1 %tobool865, label %land.lhs.true.866, label %if.end.897

land.lhs.true.866:                                ; preds = %land.lhs.true.854
  %295 = load %union.rec*, %union.rec** %s, align 8
  %os1867 = bitcast %union.rec* %295 to %struct.word_type*
  %ou2868 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1867, i32 0, i32 2
  %os26869 = bitcast %union.SECOND_UNION* %ou2868 to %struct.anon.6*
  %ois_tag870 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26869, i32 0, i32 1
  %296 = bitcast [3 x i8]* %ois_tag870 to i24*
  %bf.load871 = load i24, i24* %296, align 1
  %bf.clear872 = and i24 %bf.load871, 1
  %bf.cast873 = zext i24 %bf.clear872 to i32
  %tobool874 = icmp ne i32 %bf.cast873, 0
  br i1 %tobool874, label %if.then.892, label %lor.lhs.false.875

lor.lhs.false.875:                                ; preds = %land.lhs.true.866
  %297 = load %union.rec*, %union.rec** %s, align 8
  %os1876 = bitcast %union.rec* %297 to %struct.word_type*
  %ou2877 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1876, i32 0, i32 2
  %os26878 = bitcast %union.SECOND_UNION* %ou2877 to %struct.anon.6*
  %ois_key879 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26878, i32 0, i32 1
  %298 = bitcast [3 x i8]* %ois_key879 to i24*
  %bf.load880 = load i24, i24* %298, align 1
  %bf.lshr881 = lshr i24 %bf.load880, 13
  %bf.clear882 = and i24 %bf.lshr881, 1
  %bf.cast883 = zext i24 %bf.clear882 to i32
  %tobool884 = icmp ne i32 %bf.cast883, 0
  br i1 %tobool884, label %if.then.892, label %lor.lhs.false.885

lor.lhs.false.885:                                ; preds = %lor.lhs.false.875
  %299 = load %union.rec*, %union.rec** %s, align 8
  %os6886 = bitcast %union.rec* %299 to %struct.symbol_type*
  %ois_optimize887 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6886, i32 0, i32 16
  %bf.load888 = load i8, i8* %ois_optimize887, align 2
  %bf.clear889 = and i8 %bf.load888, 1
  %bf.cast890 = zext i8 %bf.clear889 to i32
  %tobool891 = icmp ne i32 %bf.cast890, 0
  br i1 %tobool891, label %if.then.892, label %if.end.897

if.then.892:                                      ; preds = %lor.lhs.false.885, %lor.lhs.false.875, %land.lhs.true.866
  %300 = load %union.rec*, %union.rec** %s, align 8
  %os1893 = bitcast %union.rec* %300 to %struct.word_type*
  %ou1894 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1893, i32 0, i32 1
  %ofpos895 = bitcast %union.FIRST_UNION* %ou1894 to %struct.FILE_POS*
  %301 = load i8*, i8** %str.addr, align 8
  %call896 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 6, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos895, i8* %301)
  br label %if.end.897

if.end.897:                                       ; preds = %if.then.892, %lor.lhs.false.885, %land.lhs.true.854, %if.end.846
  %302 = load i8*, i8** %str.addr, align 8
  %call898 = call i64 @strlen(i8* %302) #4
  %conv899 = trunc i64 %call898 to i32
  store i32 %conv899, i32* %len, align 4
  %303 = load i32, i32* %len, align 4
  store i32 %303, i32* %rlen, align 4
  %304 = load i8*, i8** %str.addr, align 8
  store i8* %304, i8** %x, align 8
  %305 = load i8*, i8** %x, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %305, i32 1
  store i8* %incdec.ptr, i8** %x, align 8
  %306 = load i8, i8* %305, align 1
  %conv900 = zext i8 %306 to i32
  store i32 %conv900, i32* %sum, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.897
  %307 = load i32, i32* %rlen, align 4
  %dec = add nsw i32 %307, -1
  store i32 %dec, i32* %rlen, align 4
  %tobool901 = icmp ne i32 %dec, 0
  br i1 %tobool901, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %308 = load i8*, i8** %x, align 8
  %incdec.ptr902 = getelementptr inbounds i8, i8* %308, i32 1
  store i8* %incdec.ptr902, i8** %x, align 8
  %309 = load i8, i8* %308, align 1
  %conv903 = zext i8 %309 to i32
  %310 = load i32, i32* %sum, align 4
  %add904 = add nsw i32 %310, %conv903
  store i32 %add904, i32* %sum, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %311 = load i32, i32* %sum, align 4
  %rem = srem i32 %311, 1783
  store i32 %rem, i32* %sum, align 4
  %312 = load i32, i32* %sum, align 4
  %idxprom905 = sext i32 %312 to i64
  %arrayidx906 = getelementptr inbounds [1783 x %struct.anon], [1783 x %struct.anon]* @symtab, i32 0, i64 %idxprom905
  %313 = bitcast %struct.anon* %arrayidx906 to %union.rec*
  store %union.rec* %313, %union.rec** %entry3, align 8
  %314 = load %union.rec*, %union.rec** %entry3, align 8
  %os1907 = bitcast %union.rec* %314 to %struct.word_type*
  %olist908 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1907, i32 0, i32 0
  %arrayidx909 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist908, i32 0, i64 0
  %osucc910 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx909, i32 0, i32 1
  %315 = load %union.rec*, %union.rec** %osucc910, align 8
  store %union.rec* %315, %union.rec** %plink, align 8
  br label %for.cond.911

for.cond.911:                                     ; preds = %for.inc.1003, %while.end
  %316 = load %union.rec*, %union.rec** %plink, align 8
  %317 = load %union.rec*, %union.rec** %entry3, align 8
  %cmp912 = icmp ne %union.rec* %316, %317
  br i1 %cmp912, label %for.body.914, label %for.end.1008

for.body.914:                                     ; preds = %for.cond.911
  %318 = load %union.rec*, %union.rec** %plink, align 8
  %os1915 = bitcast %union.rec* %318 to %struct.word_type*
  %olist916 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1915, i32 0, i32 0
  %arrayidx917 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist916, i32 0, i64 1
  %opred918 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx917, i32 0, i32 0
  %319 = load %union.rec*, %union.rec** %opred918, align 8
  store %union.rec* %319, %union.rec** %p, align 8
  br label %for.cond.919

for.cond.919:                                     ; preds = %for.inc.928, %for.body.914
  %320 = load %union.rec*, %union.rec** %p, align 8
  %os1920 = bitcast %union.rec* %320 to %struct.word_type*
  %ou1921 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1920, i32 0, i32 1
  %os11922 = bitcast %union.FIRST_UNION* %ou1921 to %struct.anon.0*
  %otype923 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11922, i32 0, i32 0
  %321 = load i8, i8* %otype923, align 1
  %conv924 = zext i8 %321 to i32
  %cmp925 = icmp eq i32 %conv924, 0
  br i1 %cmp925, label %for.body.927, label %for.end.933

for.body.927:                                     ; preds = %for.cond.919
  br label %for.inc.928

for.inc.928:                                      ; preds = %for.body.927
  %322 = load %union.rec*, %union.rec** %p, align 8
  %os1929 = bitcast %union.rec* %322 to %struct.word_type*
  %olist930 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1929, i32 0, i32 0
  %arrayidx931 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist930, i32 0, i64 1
  %opred932 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx931, i32 0, i32 0
  %323 = load %union.rec*, %union.rec** %opred932, align 8
  store %union.rec* %323, %union.rec** %p, align 8
  br label %for.cond.919

for.end.933:                                      ; preds = %for.cond.919
  %324 = load %union.rec*, %union.rec** %p, align 8
  %os1934 = bitcast %union.rec* %324 to %struct.word_type*
  %ou2935 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1934, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2935 to %struct.anon.2*
  %325 = bitcast %struct.anon.2* %os22 to i32*
  %bf.load936 = load i32, i32* %325, align 4
  %bf.clear937 = and i32 %bf.load936, 4095
  %326 = load i32, i32* %len, align 4
  %cmp938 = icmp eq i32 %bf.clear937, %326
  br i1 %cmp938, label %land.lhs.true.940, label %if.end.1002

land.lhs.true.940:                                ; preds = %for.end.933
  %327 = load i8*, i8** %str.addr, align 8
  %328 = load %union.rec*, %union.rec** %p, align 8
  %os1941 = bitcast %union.rec* %328 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1941, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call942 = call i32 @strcmp(i8* %327, i8* %arraydecay) #4
  %cmp943 = icmp eq i32 %call942, 0
  br i1 %cmp943, label %if.then.945, label %if.end.1002

if.then.945:                                      ; preds = %land.lhs.true.940
  %329 = load %union.rec*, %union.rec** %p, align 8
  %os1946 = bitcast %union.rec* %329 to %struct.word_type*
  %olist947 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1946, i32 0, i32 0
  %arrayidx948 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist947, i32 0, i64 0
  %osucc949 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx948, i32 0, i32 1
  %330 = load %union.rec*, %union.rec** %osucc949, align 8
  store %union.rec* %330, %union.rec** %link, align 8
  br label %for.cond.950

for.cond.950:                                     ; preds = %for.inc.996, %if.then.945
  %331 = load %union.rec*, %union.rec** %link, align 8
  %332 = load %union.rec*, %union.rec** %p, align 8
  %cmp951 = icmp ne %union.rec* %331, %332
  br i1 %cmp951, label %for.body.953, label %for.end.1001

for.body.953:                                     ; preds = %for.cond.950
  %333 = load %union.rec*, %union.rec** %link, align 8
  %os1954 = bitcast %union.rec* %333 to %struct.word_type*
  %olist955 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1954, i32 0, i32 0
  %arrayidx956 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist955, i32 0, i64 1
  %opred957 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx956, i32 0, i32 0
  %334 = load %union.rec*, %union.rec** %opred957, align 8
  store %union.rec* %334, %union.rec** %q, align 8
  br label %for.cond.958

for.cond.958:                                     ; preds = %for.inc.967, %for.body.953
  %335 = load %union.rec*, %union.rec** %q, align 8
  %os1959 = bitcast %union.rec* %335 to %struct.word_type*
  %ou1960 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1959, i32 0, i32 1
  %os11961 = bitcast %union.FIRST_UNION* %ou1960 to %struct.anon.0*
  %otype962 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11961, i32 0, i32 0
  %336 = load i8, i8* %otype962, align 1
  %conv963 = zext i8 %336 to i32
  %cmp964 = icmp eq i32 %conv963, 0
  br i1 %cmp964, label %for.body.966, label %for.end.972

for.body.966:                                     ; preds = %for.cond.958
  br label %for.inc.967

for.inc.967:                                      ; preds = %for.body.966
  %337 = load %union.rec*, %union.rec** %q, align 8
  %os1968 = bitcast %union.rec* %337 to %struct.word_type*
  %olist969 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1968, i32 0, i32 0
  %arrayidx970 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist969, i32 0, i64 1
  %opred971 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx970, i32 0, i32 0
  %338 = load %union.rec*, %union.rec** %opred971, align 8
  store %union.rec* %338, %union.rec** %q, align 8
  br label %for.cond.958

for.end.972:                                      ; preds = %for.cond.958
  %339 = load %union.rec*, %union.rec** %s, align 8
  %os6973 = bitcast %union.rec* %339 to %struct.symbol_type*
  %oenclosing974 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6973, i32 0, i32 3
  %340 = load %union.rec*, %union.rec** %oenclosing974, align 8
  %341 = load %union.rec*, %union.rec** %q, align 8
  %os6975 = bitcast %union.rec* %341 to %struct.symbol_type*
  %oenclosing976 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6975, i32 0, i32 3
  %342 = load %union.rec*, %union.rec** %oenclosing976, align 8
  %cmp977 = icmp eq %union.rec* %340, %342
  br i1 %cmp977, label %if.then.979, label %if.end.995

if.then.979:                                      ; preds = %for.end.972
  %343 = load %union.rec*, %union.rec** %s, align 8
  %os1980 = bitcast %union.rec* %343 to %struct.word_type*
  %ou1981 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1980, i32 0, i32 1
  %ofpos982 = bitcast %union.FIRST_UNION* %ou1981 to %struct.FILE_POS*
  %344 = load i8*, i8** %str.addr, align 8
  %345 = load %union.rec*, %union.rec** %q, align 8
  %os1983 = bitcast %union.rec* %345 to %struct.word_type*
  %ou1984 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1983, i32 0, i32 1
  %ofpos985 = bitcast %union.FIRST_UNION* %ou1984 to %struct.FILE_POS*
  %call986 = call i8* @EchoFilePos(%struct.FILE_POS* %ofpos985)
  %call987 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos982, i8* %344, i8* %call986)
  %346 = load i32, i32* @AltErrorFormat, align 4
  %tobool988 = icmp ne i32 %346, 0
  br i1 %tobool988, label %if.then.989, label %if.end.994

if.then.989:                                      ; preds = %if.then.979
  %347 = load %union.rec*, %union.rec** %q, align 8
  %os1990 = bitcast %union.rec* %347 to %struct.word_type*
  %ou1991 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1990, i32 0, i32 1
  %ofpos992 = bitcast %union.FIRST_UNION* %ou1991 to %struct.FILE_POS*
  %348 = load i8*, i8** %str.addr, align 8
  %call993 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos992, i8* %348)
  br label %if.end.994

if.end.994:                                       ; preds = %if.then.989, %if.then.979
  br label %for.end.1001

if.end.995:                                       ; preds = %for.end.972
  br label %for.inc.996

for.inc.996:                                      ; preds = %if.end.995
  %349 = load %union.rec*, %union.rec** %link, align 8
  %os1997 = bitcast %union.rec* %349 to %struct.word_type*
  %olist998 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1997, i32 0, i32 0
  %arrayidx999 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist998, i32 0, i64 0
  %osucc1000 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx999, i32 0, i32 1
  %350 = load %union.rec*, %union.rec** %osucc1000, align 8
  store %union.rec* %350, %union.rec** %link, align 8
  br label %for.cond.950

for.end.1001:                                     ; preds = %if.end.994, %for.cond.950
  br label %wrapup

if.end.1002:                                      ; preds = %land.lhs.true.940, %for.end.933
  br label %for.inc.1003

for.inc.1003:                                     ; preds = %if.end.1002
  %351 = load %union.rec*, %union.rec** %plink, align 8
  %os11004 = bitcast %union.rec* %351 to %struct.word_type*
  %olist1005 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11004, i32 0, i32 0
  %arrayidx1006 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1005, i32 0, i64 0
  %osucc1007 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1006, i32 0, i32 1
  %352 = load %union.rec*, %union.rec** %osucc1007, align 8
  store %union.rec* %352, %union.rec** %plink, align 8
  br label %for.cond.911

for.end.1008:                                     ; preds = %for.cond.911
  %353 = load i32, i32* %len, align 4
  %add1009 = add nsw i32 %353, 1
  %conv1010 = sext i32 %add1009 to i64
  %mul = mul i64 %conv1010, 1
  %add1011 = add i64 68, %mul
  %conv1012 = trunc i64 %add1011 to i32
  store i32 %conv1012, i32* @zz_size, align 4
  %354 = load i32, i32* @zz_size, align 4
  %sub = sub nsw i32 %354, 1
  %conv1013 = sext i32 %sub to i64
  %div = udiv i64 %conv1013, 8
  %add1014 = add i64 %div, 1
  %conv1015 = trunc i64 %add1014 to i32
  store i32 %conv1015, i32* @zz_size, align 4
  %conv1016 = sext i32 %conv1015 to i64
  %cmp1017 = icmp uge i64 %conv1016, 265
  br i1 %cmp1017, label %if.then.1019, label %if.else.1021

if.then.1019:                                     ; preds = %for.end.1008
  %355 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %call1020 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %355)
  br label %if.end.1038

if.else.1021:                                     ; preds = %for.end.1008
  %356 = load i32, i32* @zz_size, align 4
  %idxprom1022 = sext i32 %356 to i64
  %arrayidx1023 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1022
  %357 = load %union.rec*, %union.rec** %arrayidx1023, align 8
  %cmp1024 = icmp eq %union.rec* %357, null
  br i1 %cmp1024, label %if.then.1026, label %if.else.1028

if.then.1026:                                     ; preds = %if.else.1021
  %358 = load i32, i32* @zz_size, align 4
  %359 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %call1027 = call %union.rec* @GetMemory(i32 %358, %struct.FILE_POS* %359)
  store %union.rec* %call1027, %union.rec** @zz_hold, align 8
  br label %if.end.1037

if.else.1028:                                     ; preds = %if.else.1021
  %360 = load i32, i32* @zz_size, align 4
  %idxprom1029 = sext i32 %360 to i64
  %arrayidx1030 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1029
  %361 = load %union.rec*, %union.rec** %arrayidx1030, align 8
  store %union.rec* %361, %union.rec** @zz_hold, align 8
  store %union.rec* %361, %union.rec** @zz_hold, align 8
  %362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11031 = bitcast %union.rec* %362 to %struct.word_type*
  %olist1032 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11031, i32 0, i32 0
  %arrayidx1033 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1032, i32 0, i64 0
  %opred1034 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1033, i32 0, i32 0
  %363 = load %union.rec*, %union.rec** %opred1034, align 8
  %364 = load i32, i32* @zz_size, align 4
  %idxprom1035 = sext i32 %364 to i64
  %arrayidx1036 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1035
  store %union.rec* %363, %union.rec** %arrayidx1036, align 8
  br label %if.end.1037

if.end.1037:                                      ; preds = %if.else.1028, %if.then.1026
  br label %if.end.1038

if.end.1038:                                      ; preds = %if.end.1037, %if.then.1019
  %365 = load i32, i32* @zz_size, align 4
  %conv1039 = trunc i32 %365 to i8
  %366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11040 = bitcast %union.rec* %366 to %struct.word_type*
  %ou11041 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11040, i32 0, i32 1
  %os111042 = bitcast %union.FIRST_UNION* %ou11041 to %struct.anon.0*
  %orec_size = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os111042, i32 0, i32 1
  store i8 %conv1039, i8* %orec_size, align 1
  %367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11043 = bitcast %union.rec* %367 to %struct.word_type*
  %ou11044 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11043, i32 0, i32 1
  %os111045 = bitcast %union.FIRST_UNION* %ou11044 to %struct.anon.0*
  %otype1046 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os111045, i32 0, i32 0
  store i8 11, i8* %otype1046, align 1
  %368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11047 = bitcast %union.rec* %369 to %struct.word_type*
  %olist1048 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11047, i32 0, i32 0
  %arrayidx1049 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1048, i32 0, i64 1
  %osucc1050 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1049, i32 0, i32 1
  store %union.rec* %368, %union.rec** %osucc1050, align 8
  %370 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11051 = bitcast %union.rec* %370 to %struct.word_type*
  %olist1052 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11051, i32 0, i32 0
  %arrayidx1053 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1052, i32 0, i64 1
  %opred1054 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1053, i32 0, i32 0
  store %union.rec* %368, %union.rec** %opred1054, align 8
  %371 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11055 = bitcast %union.rec* %371 to %struct.word_type*
  %olist1056 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11055, i32 0, i32 0
  %arrayidx1057 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1056, i32 0, i64 0
  %osucc1058 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1057, i32 0, i32 1
  store %union.rec* %368, %union.rec** %osucc1058, align 8
  %372 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11059 = bitcast %union.rec* %372 to %struct.word_type*
  %olist1060 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11059, i32 0, i32 0
  %arrayidx1061 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1060, i32 0, i64 0
  %opred1062 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1061, i32 0, i32 0
  store %union.rec* %368, %union.rec** %opred1062, align 8
  store %union.rec* %368, %union.rec** %p, align 8
  %373 = load i32, i32* %len, align 4
  %374 = load %union.rec*, %union.rec** %p, align 8
  %os11063 = bitcast %union.rec* %374 to %struct.word_type*
  %ou21064 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11063, i32 0, i32 2
  %os221065 = bitcast %union.SECOND_UNION* %ou21064 to %struct.anon.2*
  %375 = bitcast %struct.anon.2* %os221065 to i32*
  %bf.load1066 = load i32, i32* %375, align 4
  %bf.value1067 = and i32 %373, 4095
  %bf.clear1068 = and i32 %bf.load1066, -4096
  %bf.set1069 = or i32 %bf.clear1068, %bf.value1067
  store i32 %bf.set1069, i32* %375, align 4
  %376 = load %union.rec*, %union.rec** %p, align 8
  %os11070 = bitcast %union.rec* %376 to %struct.word_type*
  %ostring1071 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11070, i32 0, i32 4
  %arraydecay1072 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1071, i32 0, i32 0
  %377 = load i8*, i8** %str.addr, align 8
  %call1073 = call i8* @strcpy(i8* %arraydecay1072, i8* %377) #5
  %378 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1074 = zext i8 %378 to i32
  store i32 %conv1074, i32* @zz_size, align 4
  %conv1075 = sext i32 %conv1074 to i64
  %cmp1076 = icmp uge i64 %conv1075, 265
  br i1 %cmp1076, label %if.then.1078, label %if.else.1080

if.then.1078:                                     ; preds = %if.end.1038
  %379 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1079 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %379)
  br label %if.end.1097

if.else.1080:                                     ; preds = %if.end.1038
  %380 = load i32, i32* @zz_size, align 4
  %idxprom1081 = sext i32 %380 to i64
  %arrayidx1082 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1081
  %381 = load %union.rec*, %union.rec** %arrayidx1082, align 8
  %cmp1083 = icmp eq %union.rec* %381, null
  br i1 %cmp1083, label %if.then.1085, label %if.else.1087

if.then.1085:                                     ; preds = %if.else.1080
  %382 = load i32, i32* @zz_size, align 4
  %383 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1086 = call %union.rec* @GetMemory(i32 %382, %struct.FILE_POS* %383)
  store %union.rec* %call1086, %union.rec** @zz_hold, align 8
  br label %if.end.1096

if.else.1087:                                     ; preds = %if.else.1080
  %384 = load i32, i32* @zz_size, align 4
  %idxprom1088 = sext i32 %384 to i64
  %arrayidx1089 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1088
  %385 = load %union.rec*, %union.rec** %arrayidx1089, align 8
  store %union.rec* %385, %union.rec** @zz_hold, align 8
  store %union.rec* %385, %union.rec** @zz_hold, align 8
  %386 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11090 = bitcast %union.rec* %386 to %struct.word_type*
  %olist1091 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11090, i32 0, i32 0
  %arrayidx1092 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1091, i32 0, i64 0
  %opred1093 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1092, i32 0, i32 0
  %387 = load %union.rec*, %union.rec** %opred1093, align 8
  %388 = load i32, i32* @zz_size, align 4
  %idxprom1094 = sext i32 %388 to i64
  %arrayidx1095 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1094
  store %union.rec* %387, %union.rec** %arrayidx1095, align 8
  br label %if.end.1096

if.end.1096:                                      ; preds = %if.else.1087, %if.then.1085
  br label %if.end.1097

if.end.1097:                                      ; preds = %if.end.1096, %if.then.1078
  %389 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11098 = bitcast %union.rec* %389 to %struct.word_type*
  %ou11099 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11098, i32 0, i32 1
  %os111100 = bitcast %union.FIRST_UNION* %ou11099 to %struct.anon.0*
  %otype1101 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os111100, i32 0, i32 0
  store i8 0, i8* %otype1101, align 1
  %390 = load %union.rec*, %union.rec** @zz_hold, align 8
  %391 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11102 = bitcast %union.rec* %391 to %struct.word_type*
  %olist1103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11102, i32 0, i32 0
  %arrayidx1104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1103, i32 0, i64 1
  %osucc1105 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1104, i32 0, i32 1
  store %union.rec* %390, %union.rec** %osucc1105, align 8
  %392 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11106 = bitcast %union.rec* %392 to %struct.word_type*
  %olist1107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11106, i32 0, i32 0
  %arrayidx1108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1107, i32 0, i64 1
  %opred1109 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1108, i32 0, i32 0
  store %union.rec* %390, %union.rec** %opred1109, align 8
  %393 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11110 = bitcast %union.rec* %393 to %struct.word_type*
  %olist1111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11110, i32 0, i32 0
  %arrayidx1112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1111, i32 0, i64 0
  %osucc1113 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1112, i32 0, i32 1
  store %union.rec* %390, %union.rec** %osucc1113, align 8
  %394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11114 = bitcast %union.rec* %394 to %struct.word_type*
  %olist1115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11114, i32 0, i32 0
  %arrayidx1116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1115, i32 0, i64 0
  %opred1117 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1116, i32 0, i32 0
  store %union.rec* %390, %union.rec** %opred1117, align 8
  store %union.rec* %390, %union.rec** @xx_link, align 8
  %395 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %395, %union.rec** @zz_res, align 8
  %396 = load %union.rec*, %union.rec** %entry3, align 8
  store %union.rec* %396, %union.rec** @zz_hold, align 8
  %397 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1118 = icmp eq %union.rec* %397, null
  br i1 %cmp1118, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.1097
  %398 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1152

cond.false:                                       ; preds = %if.end.1097
  %399 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1120 = icmp eq %union.rec* %399, null
  br i1 %cmp1120, label %cond.true.1122, label %cond.false.1123

cond.true.1122:                                   ; preds = %cond.false
  %400 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.1123:                                  ; preds = %cond.false
  %401 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11124 = bitcast %union.rec* %401 to %struct.word_type*
  %olist1125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11124, i32 0, i32 0
  %arrayidx1126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1125, i32 0, i64 0
  %opred1127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1126, i32 0, i32 0
  %402 = load %union.rec*, %union.rec** %opred1127, align 8
  store %union.rec* %402, %union.rec** @zz_tmp, align 8
  %403 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11128 = bitcast %union.rec* %403 to %struct.word_type*
  %olist1129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11128, i32 0, i32 0
  %arrayidx1130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1129, i32 0, i64 0
  %opred1131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1130, i32 0, i32 0
  %404 = load %union.rec*, %union.rec** %opred1131, align 8
  %405 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11132 = bitcast %union.rec* %405 to %struct.word_type*
  %olist1133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11132, i32 0, i32 0
  %arrayidx1134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1133, i32 0, i64 0
  %opred1135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1134, i32 0, i32 0
  store %union.rec* %404, %union.rec** %opred1135, align 8
  %406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %407 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11136 = bitcast %union.rec* %407 to %struct.word_type*
  %olist1137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11136, i32 0, i32 0
  %arrayidx1138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1137, i32 0, i64 0
  %opred1139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1138, i32 0, i32 0
  %408 = load %union.rec*, %union.rec** %opred1139, align 8
  %os11140 = bitcast %union.rec* %408 to %struct.word_type*
  %olist1141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11140, i32 0, i32 0
  %arrayidx1142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1141, i32 0, i64 0
  %osucc1143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1142, i32 0, i32 1
  store %union.rec* %406, %union.rec** %osucc1143, align 8
  %409 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %410 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11144 = bitcast %union.rec* %410 to %struct.word_type*
  %olist1145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11144, i32 0, i32 0
  %arrayidx1146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1145, i32 0, i64 0
  %opred1147 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1146, i32 0, i32 0
  store %union.rec* %409, %union.rec** %opred1147, align 8
  %411 = load %union.rec*, %union.rec** @zz_res, align 8
  %412 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11148 = bitcast %union.rec* %412 to %struct.word_type*
  %olist1149 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11148, i32 0, i32 0
  %arrayidx1150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1149, i32 0, i64 0
  %osucc1151 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1150, i32 0, i32 1
  store %union.rec* %411, %union.rec** %osucc1151, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.1123, %cond.true.1122
  %cond = phi %union.rec* [ %400, %cond.true.1122 ], [ %411, %cond.false.1123 ]
  br label %cond.end.1152

cond.end.1152:                                    ; preds = %cond.end, %cond.true
  %cond1153 = phi %union.rec* [ %398, %cond.true ], [ %cond, %cond.end ]
  %413 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %413, %union.rec** @zz_res, align 8
  %414 = load %union.rec*, %union.rec** %p, align 8
  store %union.rec* %414, %union.rec** @zz_hold, align 8
  %415 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1154 = icmp eq %union.rec* %415, null
  br i1 %cmp1154, label %cond.true.1156, label %cond.false.1157

cond.true.1156:                                   ; preds = %cond.end.1152
  %416 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1193

cond.false.1157:                                  ; preds = %cond.end.1152
  %417 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1158 = icmp eq %union.rec* %417, null
  br i1 %cmp1158, label %cond.true.1160, label %cond.false.1161

cond.true.1160:                                   ; preds = %cond.false.1157
  %418 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1191

cond.false.1161:                                  ; preds = %cond.false.1157
  %419 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11162 = bitcast %union.rec* %419 to %struct.word_type*
  %olist1163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11162, i32 0, i32 0
  %arrayidx1164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1163, i32 0, i64 1
  %opred1165 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1164, i32 0, i32 0
  %420 = load %union.rec*, %union.rec** %opred1165, align 8
  store %union.rec* %420, %union.rec** @zz_tmp, align 8
  %421 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11166 = bitcast %union.rec* %421 to %struct.word_type*
  %olist1167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11166, i32 0, i32 0
  %arrayidx1168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1167, i32 0, i64 1
  %opred1169 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1168, i32 0, i32 0
  %422 = load %union.rec*, %union.rec** %opred1169, align 8
  %423 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11170 = bitcast %union.rec* %423 to %struct.word_type*
  %olist1171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11170, i32 0, i32 0
  %arrayidx1172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1171, i32 0, i64 1
  %opred1173 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1172, i32 0, i32 0
  store %union.rec* %422, %union.rec** %opred1173, align 8
  %424 = load %union.rec*, %union.rec** @zz_hold, align 8
  %425 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11174 = bitcast %union.rec* %425 to %struct.word_type*
  %olist1175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11174, i32 0, i32 0
  %arrayidx1176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1175, i32 0, i64 1
  %opred1177 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1176, i32 0, i32 0
  %426 = load %union.rec*, %union.rec** %opred1177, align 8
  %os11178 = bitcast %union.rec* %426 to %struct.word_type*
  %olist1179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11178, i32 0, i32 0
  %arrayidx1180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1179, i32 0, i64 1
  %osucc1181 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1180, i32 0, i32 1
  store %union.rec* %424, %union.rec** %osucc1181, align 8
  %427 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %428 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11182 = bitcast %union.rec* %428 to %struct.word_type*
  %olist1183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11182, i32 0, i32 0
  %arrayidx1184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1183, i32 0, i64 1
  %opred1185 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1184, i32 0, i32 0
  store %union.rec* %427, %union.rec** %opred1185, align 8
  %429 = load %union.rec*, %union.rec** @zz_res, align 8
  %430 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11187 = bitcast %union.rec* %430 to %struct.word_type*
  %olist1188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11187, i32 0, i32 0
  %arrayidx1189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1188, i32 0, i64 1
  %osucc1190 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1189, i32 0, i32 1
  store %union.rec* %429, %union.rec** %osucc1190, align 8
  br label %cond.end.1191

cond.end.1191:                                    ; preds = %cond.false.1161, %cond.true.1160
  %cond1192 = phi %union.rec* [ %418, %cond.true.1160 ], [ %429, %cond.false.1161 ]
  br label %cond.end.1193

cond.end.1193:                                    ; preds = %cond.end.1191, %cond.true.1156
  %cond1194 = phi %union.rec* [ %416, %cond.true.1156 ], [ %cond1192, %cond.end.1191 ]
  br label %wrapup

wrapup:                                           ; preds = %cond.end.1193, %for.end.1001
  %431 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1195 = zext i8 %431 to i32
  store i32 %conv1195, i32* @zz_size, align 4
  %conv1196 = sext i32 %conv1195 to i64
  %cmp1197 = icmp uge i64 %conv1196, 265
  br i1 %cmp1197, label %if.then.1199, label %if.else.1201

if.then.1199:                                     ; preds = %wrapup
  %432 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1200 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %432)
  br label %if.end.1218

if.else.1201:                                     ; preds = %wrapup
  %433 = load i32, i32* @zz_size, align 4
  %idxprom1202 = sext i32 %433 to i64
  %arrayidx1203 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1202
  %434 = load %union.rec*, %union.rec** %arrayidx1203, align 8
  %cmp1204 = icmp eq %union.rec* %434, null
  br i1 %cmp1204, label %if.then.1206, label %if.else.1208

if.then.1206:                                     ; preds = %if.else.1201
  %435 = load i32, i32* @zz_size, align 4
  %436 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1207 = call %union.rec* @GetMemory(i32 %435, %struct.FILE_POS* %436)
  store %union.rec* %call1207, %union.rec** @zz_hold, align 8
  br label %if.end.1217

if.else.1208:                                     ; preds = %if.else.1201
  %437 = load i32, i32* @zz_size, align 4
  %idxprom1209 = sext i32 %437 to i64
  %arrayidx1210 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1209
  %438 = load %union.rec*, %union.rec** %arrayidx1210, align 8
  store %union.rec* %438, %union.rec** @zz_hold, align 8
  store %union.rec* %438, %union.rec** @zz_hold, align 8
  %439 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11211 = bitcast %union.rec* %439 to %struct.word_type*
  %olist1212 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11211, i32 0, i32 0
  %arrayidx1213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1212, i32 0, i64 0
  %opred1214 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1213, i32 0, i32 0
  %440 = load %union.rec*, %union.rec** %opred1214, align 8
  %441 = load i32, i32* @zz_size, align 4
  %idxprom1215 = sext i32 %441 to i64
  %arrayidx1216 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1215
  store %union.rec* %440, %union.rec** %arrayidx1216, align 8
  br label %if.end.1217

if.end.1217:                                      ; preds = %if.else.1208, %if.then.1206
  br label %if.end.1218

if.end.1218:                                      ; preds = %if.end.1217, %if.then.1199
  %442 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11219 = bitcast %union.rec* %442 to %struct.word_type*
  %ou11220 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11219, i32 0, i32 1
  %os111221 = bitcast %union.FIRST_UNION* %ou11220 to %struct.anon.0*
  %otype1222 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os111221, i32 0, i32 0
  store i8 0, i8* %otype1222, align 1
  %443 = load %union.rec*, %union.rec** @zz_hold, align 8
  %444 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11223 = bitcast %union.rec* %444 to %struct.word_type*
  %olist1224 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11223, i32 0, i32 0
  %arrayidx1225 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1224, i32 0, i64 1
  %osucc1226 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1225, i32 0, i32 1
  store %union.rec* %443, %union.rec** %osucc1226, align 8
  %445 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11227 = bitcast %union.rec* %445 to %struct.word_type*
  %olist1228 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11227, i32 0, i32 0
  %arrayidx1229 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1228, i32 0, i64 1
  %opred1230 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1229, i32 0, i32 0
  store %union.rec* %443, %union.rec** %opred1230, align 8
  %446 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11231 = bitcast %union.rec* %446 to %struct.word_type*
  %olist1232 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11231, i32 0, i32 0
  %arrayidx1233 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1232, i32 0, i64 0
  %osucc1234 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1233, i32 0, i32 1
  store %union.rec* %443, %union.rec** %osucc1234, align 8
  %447 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11235 = bitcast %union.rec* %447 to %struct.word_type*
  %olist1236 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11235, i32 0, i32 0
  %arrayidx1237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1236, i32 0, i64 0
  %opred1238 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1237, i32 0, i32 0
  store %union.rec* %443, %union.rec** %opred1238, align 8
  store %union.rec* %443, %union.rec** @xx_link, align 8
  %448 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %448, %union.rec** @zz_res, align 8
  %449 = load %union.rec*, %union.rec** %p, align 8
  store %union.rec* %449, %union.rec** @zz_hold, align 8
  %450 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1239 = icmp eq %union.rec* %450, null
  br i1 %cmp1239, label %cond.true.1241, label %cond.false.1242

cond.true.1241:                                   ; preds = %if.end.1218
  %451 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1277

cond.false.1242:                                  ; preds = %if.end.1218
  %452 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1243 = icmp eq %union.rec* %452, null
  br i1 %cmp1243, label %cond.true.1245, label %cond.false.1246

cond.true.1245:                                   ; preds = %cond.false.1242
  %453 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1275

cond.false.1246:                                  ; preds = %cond.false.1242
  %454 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11247 = bitcast %union.rec* %454 to %struct.word_type*
  %olist1248 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11247, i32 0, i32 0
  %arrayidx1249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1248, i32 0, i64 0
  %opred1250 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1249, i32 0, i32 0
  %455 = load %union.rec*, %union.rec** %opred1250, align 8
  store %union.rec* %455, %union.rec** @zz_tmp, align 8
  %456 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11251 = bitcast %union.rec* %456 to %struct.word_type*
  %olist1252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11251, i32 0, i32 0
  %arrayidx1253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1252, i32 0, i64 0
  %opred1254 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1253, i32 0, i32 0
  %457 = load %union.rec*, %union.rec** %opred1254, align 8
  %458 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11255 = bitcast %union.rec* %458 to %struct.word_type*
  %olist1256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11255, i32 0, i32 0
  %arrayidx1257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1256, i32 0, i64 0
  %opred1258 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1257, i32 0, i32 0
  store %union.rec* %457, %union.rec** %opred1258, align 8
  %459 = load %union.rec*, %union.rec** @zz_hold, align 8
  %460 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11259 = bitcast %union.rec* %460 to %struct.word_type*
  %olist1260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11259, i32 0, i32 0
  %arrayidx1261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1260, i32 0, i64 0
  %opred1262 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1261, i32 0, i32 0
  %461 = load %union.rec*, %union.rec** %opred1262, align 8
  %os11263 = bitcast %union.rec* %461 to %struct.word_type*
  %olist1264 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11263, i32 0, i32 0
  %arrayidx1265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1264, i32 0, i64 0
  %osucc1266 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1265, i32 0, i32 1
  store %union.rec* %459, %union.rec** %osucc1266, align 8
  %462 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %463 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11267 = bitcast %union.rec* %463 to %struct.word_type*
  %olist1268 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11267, i32 0, i32 0
  %arrayidx1269 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1268, i32 0, i64 0
  %opred1270 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1269, i32 0, i32 0
  store %union.rec* %462, %union.rec** %opred1270, align 8
  %464 = load %union.rec*, %union.rec** @zz_res, align 8
  %465 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11271 = bitcast %union.rec* %465 to %struct.word_type*
  %olist1272 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11271, i32 0, i32 0
  %arrayidx1273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1272, i32 0, i64 0
  %osucc1274 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1273, i32 0, i32 1
  store %union.rec* %464, %union.rec** %osucc1274, align 8
  br label %cond.end.1275

cond.end.1275:                                    ; preds = %cond.false.1246, %cond.true.1245
  %cond1276 = phi %union.rec* [ %453, %cond.true.1245 ], [ %464, %cond.false.1246 ]
  br label %cond.end.1277

cond.end.1277:                                    ; preds = %cond.end.1275, %cond.true.1241
  %cond1278 = phi %union.rec* [ %451, %cond.true.1241 ], [ %cond1276, %cond.end.1275 ]
  %466 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %466, %union.rec** @zz_res, align 8
  %467 = load %union.rec*, %union.rec** %s, align 8
  store %union.rec* %467, %union.rec** @zz_hold, align 8
  %468 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1279 = icmp eq %union.rec* %468, null
  br i1 %cmp1279, label %cond.true.1281, label %cond.false.1282

cond.true.1281:                                   ; preds = %cond.end.1277
  %469 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1317

cond.false.1282:                                  ; preds = %cond.end.1277
  %470 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1283 = icmp eq %union.rec* %470, null
  br i1 %cmp1283, label %cond.true.1285, label %cond.false.1286

cond.true.1285:                                   ; preds = %cond.false.1282
  %471 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1315

cond.false.1286:                                  ; preds = %cond.false.1282
  %472 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11287 = bitcast %union.rec* %472 to %struct.word_type*
  %olist1288 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11287, i32 0, i32 0
  %arrayidx1289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1288, i32 0, i64 1
  %opred1290 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1289, i32 0, i32 0
  %473 = load %union.rec*, %union.rec** %opred1290, align 8
  store %union.rec* %473, %union.rec** @zz_tmp, align 8
  %474 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11291 = bitcast %union.rec* %474 to %struct.word_type*
  %olist1292 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11291, i32 0, i32 0
  %arrayidx1293 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1292, i32 0, i64 1
  %opred1294 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1293, i32 0, i32 0
  %475 = load %union.rec*, %union.rec** %opred1294, align 8
  %476 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11295 = bitcast %union.rec* %476 to %struct.word_type*
  %olist1296 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11295, i32 0, i32 0
  %arrayidx1297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1296, i32 0, i64 1
  %opred1298 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1297, i32 0, i32 0
  store %union.rec* %475, %union.rec** %opred1298, align 8
  %477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %478 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11299 = bitcast %union.rec* %478 to %struct.word_type*
  %olist1300 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11299, i32 0, i32 0
  %arrayidx1301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1300, i32 0, i64 1
  %opred1302 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1301, i32 0, i32 0
  %479 = load %union.rec*, %union.rec** %opred1302, align 8
  %os11303 = bitcast %union.rec* %479 to %struct.word_type*
  %olist1304 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11303, i32 0, i32 0
  %arrayidx1305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1304, i32 0, i64 1
  %osucc1306 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1305, i32 0, i32 1
  store %union.rec* %477, %union.rec** %osucc1306, align 8
  %480 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %481 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11307 = bitcast %union.rec* %481 to %struct.word_type*
  %olist1308 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11307, i32 0, i32 0
  %arrayidx1309 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1308, i32 0, i64 1
  %opred1310 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1309, i32 0, i32 0
  store %union.rec* %480, %union.rec** %opred1310, align 8
  %482 = load %union.rec*, %union.rec** @zz_res, align 8
  %483 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11311 = bitcast %union.rec* %483 to %struct.word_type*
  %olist1312 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11311, i32 0, i32 0
  %arrayidx1313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1312, i32 0, i64 1
  %osucc1314 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1313, i32 0, i32 1
  store %union.rec* %482, %union.rec** %osucc1314, align 8
  br label %cond.end.1315

cond.end.1315:                                    ; preds = %cond.false.1286, %cond.true.1285
  %cond1316 = phi %union.rec* [ %471, %cond.true.1285 ], [ %482, %cond.false.1286 ]
  br label %cond.end.1317

cond.end.1317:                                    ; preds = %cond.end.1315, %cond.true.1281
  %cond1318 = phi %union.rec* [ %469, %cond.true.1281 ], [ %cond1316, %cond.end.1315 ]
  %484 = load %union.rec*, %union.rec** %s, align 8
  %os61319 = bitcast %union.rec* %484 to %struct.symbol_type*
  %oenclosing1320 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os61319, i32 0, i32 3
  %485 = load %union.rec*, %union.rec** %oenclosing1320, align 8
  %cmp1321 = icmp ne %union.rec* %485, null
  br i1 %cmp1321, label %if.then.1323, label %if.end.1451

if.then.1323:                                     ; preds = %cond.end.1317
  %486 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1324 = zext i8 %486 to i32
  store i32 %conv1324, i32* @zz_size, align 4
  %conv1325 = sext i32 %conv1324 to i64
  %cmp1326 = icmp uge i64 %conv1325, 265
  br i1 %cmp1326, label %if.then.1328, label %if.else.1330

if.then.1328:                                     ; preds = %if.then.1323
  %487 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1329 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %487)
  br label %if.end.1347

if.else.1330:                                     ; preds = %if.then.1323
  %488 = load i32, i32* @zz_size, align 4
  %idxprom1331 = sext i32 %488 to i64
  %arrayidx1332 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1331
  %489 = load %union.rec*, %union.rec** %arrayidx1332, align 8
  %cmp1333 = icmp eq %union.rec* %489, null
  br i1 %cmp1333, label %if.then.1335, label %if.else.1337

if.then.1335:                                     ; preds = %if.else.1330
  %490 = load i32, i32* @zz_size, align 4
  %491 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1336 = call %union.rec* @GetMemory(i32 %490, %struct.FILE_POS* %491)
  store %union.rec* %call1336, %union.rec** @zz_hold, align 8
  br label %if.end.1346

if.else.1337:                                     ; preds = %if.else.1330
  %492 = load i32, i32* @zz_size, align 4
  %idxprom1338 = sext i32 %492 to i64
  %arrayidx1339 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1338
  %493 = load %union.rec*, %union.rec** %arrayidx1339, align 8
  store %union.rec* %493, %union.rec** @zz_hold, align 8
  store %union.rec* %493, %union.rec** @zz_hold, align 8
  %494 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11340 = bitcast %union.rec* %494 to %struct.word_type*
  %olist1341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11340, i32 0, i32 0
  %arrayidx1342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1341, i32 0, i64 0
  %opred1343 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1342, i32 0, i32 0
  %495 = load %union.rec*, %union.rec** %opred1343, align 8
  %496 = load i32, i32* @zz_size, align 4
  %idxprom1344 = sext i32 %496 to i64
  %arrayidx1345 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1344
  store %union.rec* %495, %union.rec** %arrayidx1345, align 8
  br label %if.end.1346

if.end.1346:                                      ; preds = %if.else.1337, %if.then.1335
  br label %if.end.1347

if.end.1347:                                      ; preds = %if.end.1346, %if.then.1328
  %497 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11348 = bitcast %union.rec* %497 to %struct.word_type*
  %ou11349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11348, i32 0, i32 1
  %os111350 = bitcast %union.FIRST_UNION* %ou11349 to %struct.anon.0*
  %otype1351 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os111350, i32 0, i32 0
  store i8 0, i8* %otype1351, align 1
  %498 = load %union.rec*, %union.rec** @zz_hold, align 8
  %499 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11352 = bitcast %union.rec* %499 to %struct.word_type*
  %olist1353 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11352, i32 0, i32 0
  %arrayidx1354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1353, i32 0, i64 1
  %osucc1355 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1354, i32 0, i32 1
  store %union.rec* %498, %union.rec** %osucc1355, align 8
  %500 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11356 = bitcast %union.rec* %500 to %struct.word_type*
  %olist1357 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11356, i32 0, i32 0
  %arrayidx1358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1357, i32 0, i64 1
  %opred1359 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1358, i32 0, i32 0
  store %union.rec* %498, %union.rec** %opred1359, align 8
  %501 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11360 = bitcast %union.rec* %501 to %struct.word_type*
  %olist1361 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11360, i32 0, i32 0
  %arrayidx1362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1361, i32 0, i64 0
  %osucc1363 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1362, i32 0, i32 1
  store %union.rec* %498, %union.rec** %osucc1363, align 8
  %502 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11364 = bitcast %union.rec* %502 to %struct.word_type*
  %olist1365 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11364, i32 0, i32 0
  %arrayidx1366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1365, i32 0, i64 0
  %opred1367 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1366, i32 0, i32 0
  store %union.rec* %498, %union.rec** %opred1367, align 8
  store %union.rec* %498, %union.rec** @xx_link, align 8
  %503 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %503, %union.rec** @zz_res, align 8
  %504 = load %union.rec*, %union.rec** %s, align 8
  %os61368 = bitcast %union.rec* %504 to %struct.symbol_type*
  %oenclosing1369 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os61368, i32 0, i32 3
  %505 = load %union.rec*, %union.rec** %oenclosing1369, align 8
  store %union.rec* %505, %union.rec** @zz_hold, align 8
  %506 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1370 = icmp eq %union.rec* %506, null
  br i1 %cmp1370, label %cond.true.1372, label %cond.false.1373

cond.true.1372:                                   ; preds = %if.end.1347
  %507 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1409

cond.false.1373:                                  ; preds = %if.end.1347
  %508 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1374 = icmp eq %union.rec* %508, null
  br i1 %cmp1374, label %cond.true.1376, label %cond.false.1377

cond.true.1376:                                   ; preds = %cond.false.1373
  %509 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1407

cond.false.1377:                                  ; preds = %cond.false.1373
  %510 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11378 = bitcast %union.rec* %510 to %struct.word_type*
  %olist1379 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11378, i32 0, i32 0
  %arrayidx1380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1379, i32 0, i64 0
  %opred1381 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1380, i32 0, i32 0
  %511 = load %union.rec*, %union.rec** %opred1381, align 8
  store %union.rec* %511, %union.rec** @zz_tmp, align 8
  %512 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11383 = bitcast %union.rec* %512 to %struct.word_type*
  %olist1384 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11383, i32 0, i32 0
  %arrayidx1385 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1384, i32 0, i64 0
  %opred1386 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1385, i32 0, i32 0
  %513 = load %union.rec*, %union.rec** %opred1386, align 8
  %514 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11387 = bitcast %union.rec* %514 to %struct.word_type*
  %olist1388 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11387, i32 0, i32 0
  %arrayidx1389 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1388, i32 0, i64 0
  %opred1390 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1389, i32 0, i32 0
  store %union.rec* %513, %union.rec** %opred1390, align 8
  %515 = load %union.rec*, %union.rec** @zz_hold, align 8
  %516 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11391 = bitcast %union.rec* %516 to %struct.word_type*
  %olist1392 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11391, i32 0, i32 0
  %arrayidx1393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1392, i32 0, i64 0
  %opred1394 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1393, i32 0, i32 0
  %517 = load %union.rec*, %union.rec** %opred1394, align 8
  %os11395 = bitcast %union.rec* %517 to %struct.word_type*
  %olist1396 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11395, i32 0, i32 0
  %arrayidx1397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1396, i32 0, i64 0
  %osucc1398 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1397, i32 0, i32 1
  store %union.rec* %515, %union.rec** %osucc1398, align 8
  %518 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %519 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11399 = bitcast %union.rec* %519 to %struct.word_type*
  %olist1400 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11399, i32 0, i32 0
  %arrayidx1401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1400, i32 0, i64 0
  %opred1402 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1401, i32 0, i32 0
  store %union.rec* %518, %union.rec** %opred1402, align 8
  %520 = load %union.rec*, %union.rec** @zz_res, align 8
  %521 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11403 = bitcast %union.rec* %521 to %struct.word_type*
  %olist1404 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11403, i32 0, i32 0
  %arrayidx1405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1404, i32 0, i64 0
  %osucc1406 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1405, i32 0, i32 1
  store %union.rec* %520, %union.rec** %osucc1406, align 8
  br label %cond.end.1407

cond.end.1407:                                    ; preds = %cond.false.1377, %cond.true.1376
  %cond1408 = phi %union.rec* [ %509, %cond.true.1376 ], [ %520, %cond.false.1377 ]
  br label %cond.end.1409

cond.end.1409:                                    ; preds = %cond.end.1407, %cond.true.1372
  %cond1410 = phi %union.rec* [ %507, %cond.true.1372 ], [ %cond1408, %cond.end.1407 ]
  %522 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %522, %union.rec** @zz_res, align 8
  %523 = load %union.rec*, %union.rec** %s, align 8
  store %union.rec* %523, %union.rec** @zz_hold, align 8
  %524 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1411 = icmp eq %union.rec* %524, null
  br i1 %cmp1411, label %cond.true.1413, label %cond.false.1414

cond.true.1413:                                   ; preds = %cond.end.1409
  %525 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1449

cond.false.1414:                                  ; preds = %cond.end.1409
  %526 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1415 = icmp eq %union.rec* %526, null
  br i1 %cmp1415, label %cond.true.1417, label %cond.false.1418

cond.true.1417:                                   ; preds = %cond.false.1414
  %527 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1447

cond.false.1418:                                  ; preds = %cond.false.1414
  %528 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11419 = bitcast %union.rec* %528 to %struct.word_type*
  %olist1420 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11419, i32 0, i32 0
  %arrayidx1421 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1420, i32 0, i64 1
  %opred1422 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1421, i32 0, i32 0
  %529 = load %union.rec*, %union.rec** %opred1422, align 8
  store %union.rec* %529, %union.rec** @zz_tmp, align 8
  %530 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11423 = bitcast %union.rec* %530 to %struct.word_type*
  %olist1424 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11423, i32 0, i32 0
  %arrayidx1425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1424, i32 0, i64 1
  %opred1426 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1425, i32 0, i32 0
  %531 = load %union.rec*, %union.rec** %opred1426, align 8
  %532 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11427 = bitcast %union.rec* %532 to %struct.word_type*
  %olist1428 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11427, i32 0, i32 0
  %arrayidx1429 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1428, i32 0, i64 1
  %opred1430 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1429, i32 0, i32 0
  store %union.rec* %531, %union.rec** %opred1430, align 8
  %533 = load %union.rec*, %union.rec** @zz_hold, align 8
  %534 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11431 = bitcast %union.rec* %534 to %struct.word_type*
  %olist1432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11431, i32 0, i32 0
  %arrayidx1433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1432, i32 0, i64 1
  %opred1434 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1433, i32 0, i32 0
  %535 = load %union.rec*, %union.rec** %opred1434, align 8
  %os11435 = bitcast %union.rec* %535 to %struct.word_type*
  %olist1436 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11435, i32 0, i32 0
  %arrayidx1437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1436, i32 0, i64 1
  %osucc1438 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1437, i32 0, i32 1
  store %union.rec* %533, %union.rec** %osucc1438, align 8
  %536 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %537 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11439 = bitcast %union.rec* %537 to %struct.word_type*
  %olist1440 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11439, i32 0, i32 0
  %arrayidx1441 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1440, i32 0, i64 1
  %opred1442 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1441, i32 0, i32 0
  store %union.rec* %536, %union.rec** %opred1442, align 8
  %538 = load %union.rec*, %union.rec** @zz_res, align 8
  %539 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11443 = bitcast %union.rec* %539 to %struct.word_type*
  %olist1444 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11443, i32 0, i32 0
  %arrayidx1445 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1444, i32 0, i64 1
  %osucc1446 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1445, i32 0, i32 1
  store %union.rec* %538, %union.rec** %osucc1446, align 8
  br label %cond.end.1447

cond.end.1447:                                    ; preds = %cond.false.1418, %cond.true.1417
  %cond1448 = phi %union.rec* [ %527, %cond.true.1417 ], [ %538, %cond.false.1418 ]
  br label %cond.end.1449

cond.end.1449:                                    ; preds = %cond.end.1447, %cond.true.1413
  %cond1450 = phi %union.rec* [ %525, %cond.true.1413 ], [ %cond1448, %cond.end.1447 ]
  br label %if.end.1451

if.end.1451:                                      ; preds = %cond.end.1449, %cond.end.1317
  %540 = load %union.rec*, %union.rec** %s, align 8
  ret %union.rec* %540
}

declare i32 @LexLegalName(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i8* @EchoFilePos(%struct.FILE_POS*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @InsertAlternativeName(i8* %str, %union.rec* %s, %struct.FILE_POS* %xfpos) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %s.addr = alloca %union.rec*, align 8
  %xfpos.addr = alloca %struct.FILE_POS*, align 8
  %sum = alloca i32, align 4
  %rlen = alloca i32, align 4
  %x = alloca i8*, align 8
  %len = alloca i32, align 4
  %entry1 = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %plink = alloca %union.rec*, align 8
  %p = alloca %union.rec*, align 8
  %q = alloca %union.rec*, align 8
  store i8* %str, i8** %str.addr, align 8
  store %union.rec* %s, %union.rec** %s.addr, align 8
  store %struct.FILE_POS* %xfpos, %struct.FILE_POS** %xfpos.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load i32, i32* %len, align 4
  store i32 %1, i32* %rlen, align 4
  %2 = load i8*, i8** %str.addr, align 8
  store i8* %2, i8** %x, align 8
  %3 = load i8*, i8** %x, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %x, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = zext i8 %4 to i32
  store i32 %conv2, i32* %sum, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %rlen, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %rlen, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %x, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr3, i8** %x, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = zext i8 %7 to i32
  %8 = load i32, i32* %sum, align 4
  %add = add nsw i32 %8, %conv4
  store i32 %add, i32* %sum, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %sum, align 4
  %rem = srem i32 %9, 1783
  store i32 %rem, i32* %sum, align 4
  %10 = load i32, i32* %sum, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [1783 x %struct.anon], [1783 x %struct.anon]* @symtab, i32 0, i64 %idxprom
  %11 = bitcast %struct.anon* %arrayidx to %union.rec*
  store %union.rec* %11, %union.rec** %entry1, align 8
  %12 = load %union.rec*, %union.rec** %entry1, align 8
  %os1 = bitcast %union.rec* %12 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5, i32 0, i32 1
  %13 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %13, %union.rec** %plink, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.73, %while.end
  %14 = load %union.rec*, %union.rec** %plink, align 8
  %15 = load %union.rec*, %union.rec** %entry1, align 8
  %cmp = icmp ne %union.rec* %14, %15
  br i1 %cmp, label %for.body, label %for.end.78

for.body:                                         ; preds = %for.cond
  %16 = load %union.rec*, %union.rec** %plink, align 8
  %os17 = bitcast %union.rec* %16 to %struct.word_type*
  %olist8 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx9, i32 0, i32 0
  %17 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %17, %union.rec** %p, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %18 = load %union.rec*, %union.rec** %p, align 8
  %os111 = bitcast %union.rec* %18 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.0*
  %otype = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11, i32 0, i32 0
  %19 = load i8, i8* %otype, align 1
  %conv12 = zext i8 %19 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.10
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %20 = load %union.rec*, %union.rec** %p, align 8
  %os116 = bitcast %union.rec* %20 to %struct.word_type*
  %olist17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist17, i32 0, i64 1
  %opred19 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx18, i32 0, i32 0
  %21 = load %union.rec*, %union.rec** %opred19, align 8
  store %union.rec* %21, %union.rec** %p, align 8
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  %22 = load %union.rec*, %union.rec** %p, align 8
  %os120 = bitcast %union.rec* %22 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %23 = bitcast %struct.anon.2* %os22 to i32*
  %bf.load = load i32, i32* %23, align 4
  %bf.clear = and i32 %bf.load, 4095
  %24 = load i32, i32* %len, align 4
  %cmp21 = icmp eq i32 %bf.clear, %24
  br i1 %cmp21, label %land.lhs.true, label %if.end.72

land.lhs.true:                                    ; preds = %for.end
  %25 = load i8*, i8** %str.addr, align 8
  %26 = load %union.rec*, %union.rec** %p, align 8
  %os123 = bitcast %union.rec* %26 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call24 = call i32 @strcmp(i8* %25, i8* %arraydecay) #4
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then, label %if.end.72

if.then:                                          ; preds = %land.lhs.true
  %27 = load %union.rec*, %union.rec** %p, align 8
  %os127 = bitcast %union.rec* %27 to %struct.word_type*
  %olist28 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist28, i32 0, i64 0
  %osucc30 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx29, i32 0, i32 1
  %28 = load %union.rec*, %union.rec** %osucc30, align 8
  store %union.rec* %28, %union.rec** %link, align 8
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.66, %if.then
  %29 = load %union.rec*, %union.rec** %link, align 8
  %30 = load %union.rec*, %union.rec** %p, align 8
  %cmp32 = icmp ne %union.rec* %29, %30
  br i1 %cmp32, label %for.body.34, label %for.end.71

for.body.34:                                      ; preds = %for.cond.31
  %31 = load %union.rec*, %union.rec** %link, align 8
  %os135 = bitcast %union.rec* %31 to %struct.word_type*
  %olist36 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist36, i32 0, i64 1
  %opred38 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx37, i32 0, i32 0
  %32 = load %union.rec*, %union.rec** %opred38, align 8
  store %union.rec* %32, %union.rec** %q, align 8
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.48, %for.body.34
  %33 = load %union.rec*, %union.rec** %q, align 8
  %os140 = bitcast %union.rec* %33 to %struct.word_type*
  %ou141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 1
  %os1142 = bitcast %union.FIRST_UNION* %ou141 to %struct.anon.0*
  %otype43 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1142, i32 0, i32 0
  %34 = load i8, i8* %otype43, align 1
  %conv44 = zext i8 %34 to i32
  %cmp45 = icmp eq i32 %conv44, 0
  br i1 %cmp45, label %for.body.47, label %for.end.53

for.body.47:                                      ; preds = %for.cond.39
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.47
  %35 = load %union.rec*, %union.rec** %q, align 8
  %os149 = bitcast %union.rec* %35 to %struct.word_type*
  %olist50 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist50, i32 0, i64 1
  %opred52 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx51, i32 0, i32 0
  %36 = load %union.rec*, %union.rec** %opred52, align 8
  store %union.rec* %36, %union.rec** %q, align 8
  br label %for.cond.39

for.end.53:                                       ; preds = %for.cond.39
  %37 = load %union.rec*, %union.rec** %s.addr, align 8
  %os6 = bitcast %union.rec* %37 to %struct.symbol_type*
  %oenclosing = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 3
  %38 = load %union.rec*, %union.rec** %oenclosing, align 8
  %39 = load %union.rec*, %union.rec** %q, align 8
  %os654 = bitcast %union.rec* %39 to %struct.symbol_type*
  %oenclosing55 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os654, i32 0, i32 3
  %40 = load %union.rec*, %union.rec** %oenclosing55, align 8
  %cmp56 = icmp eq %union.rec* %38, %40
  br i1 %cmp56, label %if.then.58, label %if.end

if.then.58:                                       ; preds = %for.end.53
  %41 = load %union.rec*, %union.rec** %s.addr, align 8
  %os159 = bitcast %union.rec* %41 to %struct.word_type*
  %ou160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os159, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou160 to %struct.FILE_POS*
  %42 = load i8*, i8** %str.addr, align 8
  %43 = load %union.rec*, %union.rec** %q, align 8
  %os161 = bitcast %union.rec* %43 to %struct.word_type*
  %ou162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 1
  %ofpos63 = bitcast %union.FIRST_UNION* %ou162 to %struct.FILE_POS*
  %call64 = call i8* @EchoFilePos(%struct.FILE_POS* %ofpos63)
  %call65 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* %42, i8* %call64)
  br label %for.end.71

if.end:                                           ; preds = %for.end.53
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end
  %44 = load %union.rec*, %union.rec** %link, align 8
  %os167 = bitcast %union.rec* %44 to %struct.word_type*
  %olist68 = getelementptr inbounds %struct.word_type, %struct.word_type* %os167, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist68, i32 0, i64 0
  %osucc70 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx69, i32 0, i32 1
  %45 = load %union.rec*, %union.rec** %osucc70, align 8
  store %union.rec* %45, %union.rec** %link, align 8
  br label %for.cond.31

for.end.71:                                       ; preds = %if.then.58, %for.cond.31
  br label %wrapup

if.end.72:                                        ; preds = %land.lhs.true, %for.end
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %46 = load %union.rec*, %union.rec** %plink, align 8
  %os174 = bitcast %union.rec* %46 to %struct.word_type*
  %olist75 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist75, i32 0, i64 0
  %osucc77 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx76, i32 0, i32 1
  %47 = load %union.rec*, %union.rec** %osucc77, align 8
  store %union.rec* %47, %union.rec** %plink, align 8
  br label %for.cond

for.end.78:                                       ; preds = %for.cond
  %48 = load i32, i32* %len, align 4
  %add79 = add nsw i32 %48, 1
  %conv80 = sext i32 %add79 to i64
  %mul = mul i64 %conv80, 1
  %add81 = add i64 68, %mul
  %conv82 = trunc i64 %add81 to i32
  store i32 %conv82, i32* @zz_size, align 4
  %49 = load i32, i32* @zz_size, align 4
  %sub = sub nsw i32 %49, 1
  %conv83 = sext i32 %sub to i64
  %div = udiv i64 %conv83, 8
  %add84 = add i64 %div, 1
  %conv85 = trunc i64 %add84 to i32
  store i32 %conv85, i32* @zz_size, align 4
  %conv86 = sext i32 %conv85 to i64
  %cmp87 = icmp uge i64 %conv86, 265
  br i1 %cmp87, label %if.then.89, label %if.else

if.then.89:                                       ; preds = %for.end.78
  %50 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %call90 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %50)
  br label %if.end.107

if.else:                                          ; preds = %for.end.78
  %51 = load i32, i32* @zz_size, align 4
  %idxprom91 = sext i32 %51 to i64
  %arrayidx92 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom91
  %52 = load %union.rec*, %union.rec** %arrayidx92, align 8
  %cmp93 = icmp eq %union.rec* %52, null
  br i1 %cmp93, label %if.then.95, label %if.else.97

if.then.95:                                       ; preds = %if.else
  %53 = load i32, i32* @zz_size, align 4
  %54 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %call96 = call %union.rec* @GetMemory(i32 %53, %struct.FILE_POS* %54)
  store %union.rec* %call96, %union.rec** @zz_hold, align 8
  br label %if.end.106

if.else.97:                                       ; preds = %if.else
  %55 = load i32, i32* @zz_size, align 4
  %idxprom98 = sext i32 %55 to i64
  %arrayidx99 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom98
  %56 = load %union.rec*, %union.rec** %arrayidx99, align 8
  store %union.rec* %56, %union.rec** @zz_hold, align 8
  store %union.rec* %56, %union.rec** @zz_hold, align 8
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1100 = bitcast %union.rec* %57 to %struct.word_type*
  %olist101 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1100, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist101, i32 0, i64 0
  %opred103 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx102, i32 0, i32 0
  %58 = load %union.rec*, %union.rec** %opred103, align 8
  %59 = load i32, i32* @zz_size, align 4
  %idxprom104 = sext i32 %59 to i64
  %arrayidx105 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom104
  store %union.rec* %58, %union.rec** %arrayidx105, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.97, %if.then.95
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.89
  %60 = load i32, i32* @zz_size, align 4
  %conv108 = trunc i32 %60 to i8
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1109 = bitcast %union.rec* %61 to %struct.word_type*
  %ou1110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1109, i32 0, i32 1
  %os11111 = bitcast %union.FIRST_UNION* %ou1110 to %struct.anon.0*
  %orec_size = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11111, i32 0, i32 1
  store i8 %conv108, i8* %orec_size, align 1
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1112 = bitcast %union.rec* %62 to %struct.word_type*
  %ou1113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1112, i32 0, i32 1
  %os11114 = bitcast %union.FIRST_UNION* %ou1113 to %struct.anon.0*
  %otype115 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11114, i32 0, i32 0
  store i8 11, i8* %otype115, align 1
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1116 = bitcast %union.rec* %64 to %struct.word_type*
  %olist117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1116, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist117, i32 0, i64 1
  %osucc119 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx118, i32 0, i32 1
  store %union.rec* %63, %union.rec** %osucc119, align 8
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1120 = bitcast %union.rec* %65 to %struct.word_type*
  %olist121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1120, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist121, i32 0, i64 1
  %opred123 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx122, i32 0, i32 0
  store %union.rec* %63, %union.rec** %opred123, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1124 = bitcast %union.rec* %66 to %struct.word_type*
  %olist125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist125, i32 0, i64 0
  %osucc127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx126, i32 0, i32 1
  store %union.rec* %63, %union.rec** %osucc127, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1128 = bitcast %union.rec* %67 to %struct.word_type*
  %olist129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist129, i32 0, i64 0
  %opred131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx130, i32 0, i32 0
  store %union.rec* %63, %union.rec** %opred131, align 8
  store %union.rec* %63, %union.rec** %p, align 8
  %68 = load i32, i32* %len, align 4
  %69 = load %union.rec*, %union.rec** %p, align 8
  %os1132 = bitcast %union.rec* %69 to %struct.word_type*
  %ou2133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 2
  %os22134 = bitcast %union.SECOND_UNION* %ou2133 to %struct.anon.2*
  %70 = bitcast %struct.anon.2* %os22134 to i32*
  %bf.load135 = load i32, i32* %70, align 4
  %bf.value = and i32 %68, 4095
  %bf.clear136 = and i32 %bf.load135, -4096
  %bf.set = or i32 %bf.clear136, %bf.value
  store i32 %bf.set, i32* %70, align 4
  %71 = load %union.rec*, %union.rec** %p, align 8
  %os1137 = bitcast %union.rec* %71 to %struct.word_type*
  %ostring138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1137, i32 0, i32 4
  %arraydecay139 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring138, i32 0, i32 0
  %72 = load i8*, i8** %str.addr, align 8
  %call140 = call i8* @strcpy(i8* %arraydecay139, i8* %72) #5
  %73 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv141 = zext i8 %73 to i32
  store i32 %conv141, i32* @zz_size, align 4
  %conv142 = sext i32 %conv141 to i64
  %cmp143 = icmp uge i64 %conv142, 265
  br i1 %cmp143, label %if.then.145, label %if.else.147

if.then.145:                                      ; preds = %if.end.107
  %74 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call146 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %74)
  br label %if.end.164

if.else.147:                                      ; preds = %if.end.107
  %75 = load i32, i32* @zz_size, align 4
  %idxprom148 = sext i32 %75 to i64
  %arrayidx149 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom148
  %76 = load %union.rec*, %union.rec** %arrayidx149, align 8
  %cmp150 = icmp eq %union.rec* %76, null
  br i1 %cmp150, label %if.then.152, label %if.else.154

if.then.152:                                      ; preds = %if.else.147
  %77 = load i32, i32* @zz_size, align 4
  %78 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call153 = call %union.rec* @GetMemory(i32 %77, %struct.FILE_POS* %78)
  store %union.rec* %call153, %union.rec** @zz_hold, align 8
  br label %if.end.163

if.else.154:                                      ; preds = %if.else.147
  %79 = load i32, i32* @zz_size, align 4
  %idxprom155 = sext i32 %79 to i64
  %arrayidx156 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom155
  %80 = load %union.rec*, %union.rec** %arrayidx156, align 8
  store %union.rec* %80, %union.rec** @zz_hold, align 8
  store %union.rec* %80, %union.rec** @zz_hold, align 8
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1157 = bitcast %union.rec* %81 to %struct.word_type*
  %olist158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1157, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist158, i32 0, i64 0
  %opred160 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx159, i32 0, i32 0
  %82 = load %union.rec*, %union.rec** %opred160, align 8
  %83 = load i32, i32* @zz_size, align 4
  %idxprom161 = sext i32 %83 to i64
  %arrayidx162 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom161
  store %union.rec* %82, %union.rec** %arrayidx162, align 8
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.154, %if.then.152
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.then.145
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1165 = bitcast %union.rec* %84 to %struct.word_type*
  %ou1166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1165, i32 0, i32 1
  %os11167 = bitcast %union.FIRST_UNION* %ou1166 to %struct.anon.0*
  %otype168 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11167, i32 0, i32 0
  store i8 0, i8* %otype168, align 1
  %85 = load %union.rec*, %union.rec** @zz_hold, align 8
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1169 = bitcast %union.rec* %86 to %struct.word_type*
  %olist170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1169, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist170, i32 0, i64 1
  %osucc172 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx171, i32 0, i32 1
  store %union.rec* %85, %union.rec** %osucc172, align 8
  %87 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1173 = bitcast %union.rec* %87 to %struct.word_type*
  %olist174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1173, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist174, i32 0, i64 1
  %opred176 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx175, i32 0, i32 0
  store %union.rec* %85, %union.rec** %opred176, align 8
  %88 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1177 = bitcast %union.rec* %88 to %struct.word_type*
  %olist178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1177, i32 0, i32 0
  %arrayidx179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist178, i32 0, i64 0
  %osucc180 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx179, i32 0, i32 1
  store %union.rec* %85, %union.rec** %osucc180, align 8
  %89 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1181 = bitcast %union.rec* %89 to %struct.word_type*
  %olist182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1181, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist182, i32 0, i64 0
  %opred184 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx183, i32 0, i32 0
  store %union.rec* %85, %union.rec** %opred184, align 8
  store %union.rec* %85, %union.rec** @xx_link, align 8
  %90 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %90, %union.rec** @zz_res, align 8
  %91 = load %union.rec*, %union.rec** %entry1, align 8
  store %union.rec* %91, %union.rec** @zz_hold, align 8
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp185 = icmp eq %union.rec* %92, null
  br i1 %cmp185, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.164
  %93 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.219

cond.false:                                       ; preds = %if.end.164
  %94 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp187 = icmp eq %union.rec* %94, null
  br i1 %cmp187, label %cond.true.189, label %cond.false.190

cond.true.189:                                    ; preds = %cond.false
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.190:                                   ; preds = %cond.false
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1191 = bitcast %union.rec* %96 to %struct.word_type*
  %olist192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1191, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist192, i32 0, i64 0
  %opred194 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx193, i32 0, i32 0
  %97 = load %union.rec*, %union.rec** %opred194, align 8
  store %union.rec* %97, %union.rec** @zz_tmp, align 8
  %98 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1195 = bitcast %union.rec* %98 to %struct.word_type*
  %olist196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1195, i32 0, i32 0
  %arrayidx197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist196, i32 0, i64 0
  %opred198 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx197, i32 0, i32 0
  %99 = load %union.rec*, %union.rec** %opred198, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1199 = bitcast %union.rec* %100 to %struct.word_type*
  %olist200 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1199, i32 0, i32 0
  %arrayidx201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist200, i32 0, i64 0
  %opred202 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx201, i32 0, i32 0
  store %union.rec* %99, %union.rec** %opred202, align 8
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %102 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1203 = bitcast %union.rec* %102 to %struct.word_type*
  %olist204 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1203, i32 0, i32 0
  %arrayidx205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist204, i32 0, i64 0
  %opred206 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx205, i32 0, i32 0
  %103 = load %union.rec*, %union.rec** %opred206, align 8
  %os1207 = bitcast %union.rec* %103 to %struct.word_type*
  %olist208 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1207, i32 0, i32 0
  %arrayidx209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist208, i32 0, i64 0
  %osucc210 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx209, i32 0, i32 1
  store %union.rec* %101, %union.rec** %osucc210, align 8
  %104 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %105 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1211 = bitcast %union.rec* %105 to %struct.word_type*
  %olist212 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1211, i32 0, i32 0
  %arrayidx213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist212, i32 0, i64 0
  %opred214 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx213, i32 0, i32 0
  store %union.rec* %104, %union.rec** %opred214, align 8
  %106 = load %union.rec*, %union.rec** @zz_res, align 8
  %107 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1215 = bitcast %union.rec* %107 to %struct.word_type*
  %olist216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1215, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist216, i32 0, i64 0
  %osucc218 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx217, i32 0, i32 1
  store %union.rec* %106, %union.rec** %osucc218, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.190, %cond.true.189
  %cond = phi %union.rec* [ %95, %cond.true.189 ], [ %106, %cond.false.190 ]
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.end, %cond.true
  %cond220 = phi %union.rec* [ %93, %cond.true ], [ %cond, %cond.end ]
  %108 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %108, %union.rec** @zz_res, align 8
  %109 = load %union.rec*, %union.rec** %p, align 8
  store %union.rec* %109, %union.rec** @zz_hold, align 8
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp221 = icmp eq %union.rec* %110, null
  br i1 %cmp221, label %cond.true.223, label %cond.false.224

cond.true.223:                                    ; preds = %cond.end.219
  %111 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.259

cond.false.224:                                   ; preds = %cond.end.219
  %112 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp225 = icmp eq %union.rec* %112, null
  br i1 %cmp225, label %cond.true.227, label %cond.false.228

cond.true.227:                                    ; preds = %cond.false.224
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.257

cond.false.228:                                   ; preds = %cond.false.224
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1229 = bitcast %union.rec* %114 to %struct.word_type*
  %olist230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1229, i32 0, i32 0
  %arrayidx231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist230, i32 0, i64 1
  %opred232 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx231, i32 0, i32 0
  %115 = load %union.rec*, %union.rec** %opred232, align 8
  store %union.rec* %115, %union.rec** @zz_tmp, align 8
  %116 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1233 = bitcast %union.rec* %116 to %struct.word_type*
  %olist234 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1233, i32 0, i32 0
  %arrayidx235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist234, i32 0, i64 1
  %opred236 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx235, i32 0, i32 0
  %117 = load %union.rec*, %union.rec** %opred236, align 8
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1237 = bitcast %union.rec* %118 to %struct.word_type*
  %olist238 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1237, i32 0, i32 0
  %arrayidx239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist238, i32 0, i64 1
  %opred240 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx239, i32 0, i32 0
  store %union.rec* %117, %union.rec** %opred240, align 8
  %119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %120 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1241 = bitcast %union.rec* %120 to %struct.word_type*
  %olist242 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1241, i32 0, i32 0
  %arrayidx243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist242, i32 0, i64 1
  %opred244 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx243, i32 0, i32 0
  %121 = load %union.rec*, %union.rec** %opred244, align 8
  %os1245 = bitcast %union.rec* %121 to %struct.word_type*
  %olist246 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1245, i32 0, i32 0
  %arrayidx247 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist246, i32 0, i64 1
  %osucc248 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx247, i32 0, i32 1
  store %union.rec* %119, %union.rec** %osucc248, align 8
  %122 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %123 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1249 = bitcast %union.rec* %123 to %struct.word_type*
  %olist250 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1249, i32 0, i32 0
  %arrayidx251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist250, i32 0, i64 1
  %opred252 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx251, i32 0, i32 0
  store %union.rec* %122, %union.rec** %opred252, align 8
  %124 = load %union.rec*, %union.rec** @zz_res, align 8
  %125 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1253 = bitcast %union.rec* %125 to %struct.word_type*
  %olist254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1253, i32 0, i32 0
  %arrayidx255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist254, i32 0, i64 1
  %osucc256 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx255, i32 0, i32 1
  store %union.rec* %124, %union.rec** %osucc256, align 8
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.false.228, %cond.true.227
  %cond258 = phi %union.rec* [ %113, %cond.true.227 ], [ %124, %cond.false.228 ]
  br label %cond.end.259

cond.end.259:                                     ; preds = %cond.end.257, %cond.true.223
  %cond260 = phi %union.rec* [ %111, %cond.true.223 ], [ %cond258, %cond.end.257 ]
  br label %wrapup

wrapup:                                           ; preds = %cond.end.259, %for.end.71
  %126 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv261 = zext i8 %126 to i32
  store i32 %conv261, i32* @zz_size, align 4
  %conv262 = sext i32 %conv261 to i64
  %cmp263 = icmp uge i64 %conv262, 265
  br i1 %cmp263, label %if.then.265, label %if.else.267

if.then.265:                                      ; preds = %wrapup
  %127 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call266 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %127)
  br label %if.end.284

if.else.267:                                      ; preds = %wrapup
  %128 = load i32, i32* @zz_size, align 4
  %idxprom268 = sext i32 %128 to i64
  %arrayidx269 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom268
  %129 = load %union.rec*, %union.rec** %arrayidx269, align 8
  %cmp270 = icmp eq %union.rec* %129, null
  br i1 %cmp270, label %if.then.272, label %if.else.274

if.then.272:                                      ; preds = %if.else.267
  %130 = load i32, i32* @zz_size, align 4
  %131 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call273 = call %union.rec* @GetMemory(i32 %130, %struct.FILE_POS* %131)
  store %union.rec* %call273, %union.rec** @zz_hold, align 8
  br label %if.end.283

if.else.274:                                      ; preds = %if.else.267
  %132 = load i32, i32* @zz_size, align 4
  %idxprom275 = sext i32 %132 to i64
  %arrayidx276 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom275
  %133 = load %union.rec*, %union.rec** %arrayidx276, align 8
  store %union.rec* %133, %union.rec** @zz_hold, align 8
  store %union.rec* %133, %union.rec** @zz_hold, align 8
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1277 = bitcast %union.rec* %134 to %struct.word_type*
  %olist278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1277, i32 0, i32 0
  %arrayidx279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist278, i32 0, i64 0
  %opred280 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx279, i32 0, i32 0
  %135 = load %union.rec*, %union.rec** %opred280, align 8
  %136 = load i32, i32* @zz_size, align 4
  %idxprom281 = sext i32 %136 to i64
  %arrayidx282 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom281
  store %union.rec* %135, %union.rec** %arrayidx282, align 8
  br label %if.end.283

if.end.283:                                       ; preds = %if.else.274, %if.then.272
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.283, %if.then.265
  %137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1285 = bitcast %union.rec* %137 to %struct.word_type*
  %ou1286 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1285, i32 0, i32 1
  %os11287 = bitcast %union.FIRST_UNION* %ou1286 to %struct.anon.0*
  %otype288 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11287, i32 0, i32 0
  store i8 0, i8* %otype288, align 1
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1289 = bitcast %union.rec* %139 to %struct.word_type*
  %olist290 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1289, i32 0, i32 0
  %arrayidx291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist290, i32 0, i64 1
  %osucc292 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx291, i32 0, i32 1
  store %union.rec* %138, %union.rec** %osucc292, align 8
  %140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1293 = bitcast %union.rec* %140 to %struct.word_type*
  %olist294 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1293, i32 0, i32 0
  %arrayidx295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist294, i32 0, i64 1
  %opred296 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx295, i32 0, i32 0
  store %union.rec* %138, %union.rec** %opred296, align 8
  %141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1297 = bitcast %union.rec* %141 to %struct.word_type*
  %olist298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1297, i32 0, i32 0
  %arrayidx299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist298, i32 0, i64 0
  %osucc300 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx299, i32 0, i32 1
  store %union.rec* %138, %union.rec** %osucc300, align 8
  %142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1301 = bitcast %union.rec* %142 to %struct.word_type*
  %olist302 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1301, i32 0, i32 0
  %arrayidx303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist302, i32 0, i64 0
  %opred304 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx303, i32 0, i32 0
  store %union.rec* %138, %union.rec** %opred304, align 8
  store %union.rec* %138, %union.rec** @xx_link, align 8
  %143 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %143, %union.rec** @zz_res, align 8
  %144 = load %union.rec*, %union.rec** %p, align 8
  store %union.rec* %144, %union.rec** @zz_hold, align 8
  %145 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp305 = icmp eq %union.rec* %145, null
  br i1 %cmp305, label %cond.true.307, label %cond.false.308

cond.true.307:                                    ; preds = %if.end.284
  %146 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.343

cond.false.308:                                   ; preds = %if.end.284
  %147 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp309 = icmp eq %union.rec* %147, null
  br i1 %cmp309, label %cond.true.311, label %cond.false.312

cond.true.311:                                    ; preds = %cond.false.308
  %148 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.341

cond.false.312:                                   ; preds = %cond.false.308
  %149 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1313 = bitcast %union.rec* %149 to %struct.word_type*
  %olist314 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1313, i32 0, i32 0
  %arrayidx315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist314, i32 0, i64 0
  %opred316 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx315, i32 0, i32 0
  %150 = load %union.rec*, %union.rec** %opred316, align 8
  store %union.rec* %150, %union.rec** @zz_tmp, align 8
  %151 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1317 = bitcast %union.rec* %151 to %struct.word_type*
  %olist318 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1317, i32 0, i32 0
  %arrayidx319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist318, i32 0, i64 0
  %opred320 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx319, i32 0, i32 0
  %152 = load %union.rec*, %union.rec** %opred320, align 8
  %153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1321 = bitcast %union.rec* %153 to %struct.word_type*
  %olist322 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1321, i32 0, i32 0
  %arrayidx323 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist322, i32 0, i64 0
  %opred324 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx323, i32 0, i32 0
  store %union.rec* %152, %union.rec** %opred324, align 8
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %155 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1325 = bitcast %union.rec* %155 to %struct.word_type*
  %olist326 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1325, i32 0, i32 0
  %arrayidx327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist326, i32 0, i64 0
  %opred328 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx327, i32 0, i32 0
  %156 = load %union.rec*, %union.rec** %opred328, align 8
  %os1329 = bitcast %union.rec* %156 to %struct.word_type*
  %olist330 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1329, i32 0, i32 0
  %arrayidx331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist330, i32 0, i64 0
  %osucc332 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx331, i32 0, i32 1
  store %union.rec* %154, %union.rec** %osucc332, align 8
  %157 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %158 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1333 = bitcast %union.rec* %158 to %struct.word_type*
  %olist334 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1333, i32 0, i32 0
  %arrayidx335 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist334, i32 0, i64 0
  %opred336 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx335, i32 0, i32 0
  store %union.rec* %157, %union.rec** %opred336, align 8
  %159 = load %union.rec*, %union.rec** @zz_res, align 8
  %160 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1337 = bitcast %union.rec* %160 to %struct.word_type*
  %olist338 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1337, i32 0, i32 0
  %arrayidx339 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist338, i32 0, i64 0
  %osucc340 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx339, i32 0, i32 1
  store %union.rec* %159, %union.rec** %osucc340, align 8
  br label %cond.end.341

cond.end.341:                                     ; preds = %cond.false.312, %cond.true.311
  %cond342 = phi %union.rec* [ %148, %cond.true.311 ], [ %159, %cond.false.312 ]
  br label %cond.end.343

cond.end.343:                                     ; preds = %cond.end.341, %cond.true.307
  %cond344 = phi %union.rec* [ %146, %cond.true.307 ], [ %cond342, %cond.end.341 ]
  %161 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %161, %union.rec** @zz_res, align 8
  %162 = load %union.rec*, %union.rec** %s.addr, align 8
  store %union.rec* %162, %union.rec** @zz_hold, align 8
  %163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp345 = icmp eq %union.rec* %163, null
  br i1 %cmp345, label %cond.true.347, label %cond.false.348

cond.true.347:                                    ; preds = %cond.end.343
  %164 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.383

cond.false.348:                                   ; preds = %cond.end.343
  %165 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp349 = icmp eq %union.rec* %165, null
  br i1 %cmp349, label %cond.true.351, label %cond.false.352

cond.true.351:                                    ; preds = %cond.false.348
  %166 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.381

cond.false.352:                                   ; preds = %cond.false.348
  %167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1353 = bitcast %union.rec* %167 to %struct.word_type*
  %olist354 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1353, i32 0, i32 0
  %arrayidx355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist354, i32 0, i64 1
  %opred356 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx355, i32 0, i32 0
  %168 = load %union.rec*, %union.rec** %opred356, align 8
  store %union.rec* %168, %union.rec** @zz_tmp, align 8
  %169 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1357 = bitcast %union.rec* %169 to %struct.word_type*
  %olist358 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1357, i32 0, i32 0
  %arrayidx359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist358, i32 0, i64 1
  %opred360 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx359, i32 0, i32 0
  %170 = load %union.rec*, %union.rec** %opred360, align 8
  %171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1361 = bitcast %union.rec* %171 to %struct.word_type*
  %olist362 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1361, i32 0, i32 0
  %arrayidx363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist362, i32 0, i64 1
  %opred364 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx363, i32 0, i32 0
  store %union.rec* %170, %union.rec** %opred364, align 8
  %172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %173 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1365 = bitcast %union.rec* %173 to %struct.word_type*
  %olist366 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1365, i32 0, i32 0
  %arrayidx367 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist366, i32 0, i64 1
  %opred368 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx367, i32 0, i32 0
  %174 = load %union.rec*, %union.rec** %opred368, align 8
  %os1369 = bitcast %union.rec* %174 to %struct.word_type*
  %olist370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1369, i32 0, i32 0
  %arrayidx371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist370, i32 0, i64 1
  %osucc372 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx371, i32 0, i32 1
  store %union.rec* %172, %union.rec** %osucc372, align 8
  %175 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %176 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1373 = bitcast %union.rec* %176 to %struct.word_type*
  %olist374 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1373, i32 0, i32 0
  %arrayidx375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist374, i32 0, i64 1
  %opred376 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx375, i32 0, i32 0
  store %union.rec* %175, %union.rec** %opred376, align 8
  %177 = load %union.rec*, %union.rec** @zz_res, align 8
  %178 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1377 = bitcast %union.rec* %178 to %struct.word_type*
  %olist378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1377, i32 0, i32 0
  %arrayidx379 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist378, i32 0, i64 1
  %osucc380 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx379, i32 0, i32 1
  store %union.rec* %177, %union.rec** %osucc380, align 8
  br label %cond.end.381

cond.end.381:                                     ; preds = %cond.false.352, %cond.true.351
  %cond382 = phi %union.rec* [ %166, %cond.true.351 ], [ %177, %cond.false.352 ]
  br label %cond.end.383

cond.end.383:                                     ; preds = %cond.end.381, %cond.true.347
  %cond384 = phi %union.rec* [ %164, %cond.true.347 ], [ %cond382, %cond.end.381 ]
  ret void
}

; Function Attrs: nounwind uwtable
define %union.rec* @SearchSym(i8* %str, i32 %len) #0 {
entry:
  %retval = alloca %union.rec*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %rlen = alloca i32, align 4
  %sum = alloca i32, align 4
  %x = alloca i8*, align 8
  %y = alloca i8*, align 8
  %p = alloca %union.rec*, align 8
  %q = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %plink = alloca %union.rec*, align 8
  %entry1 = alloca %union.rec*, align 8
  %s = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  store i32 %0, i32* %rlen, align 4
  %1 = load i8*, i8** %str.addr, align 8
  store i8* %1, i8** %x, align 8
  %2 = load i8*, i8** %x, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %x, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %sum, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i32, i32* %rlen, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %rlen, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %x, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr2, i8** %x, align 8
  %6 = load i8, i8* %5, align 1
  %conv3 = zext i8 %6 to i32
  %7 = load i32, i32* %sum, align 4
  %add = add nsw i32 %7, %conv3
  store i32 %add, i32* %sum, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* %sum, align 4
  %rem = srem i32 %8, 1783
  store i32 %rem, i32* %sum, align 4
  %9 = load i32, i32* %len.addr, align 4
  store i32 %9, i32* %rlen, align 4
  %10 = load i32, i32* %sum, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [1783 x %struct.anon], [1783 x %struct.anon]* @symtab, i32 0, i64 %idxprom
  %11 = bitcast %struct.anon* %arrayidx to %union.rec*
  store %union.rec* %11, %union.rec** %entry1, align 8
  %12 = load %union.rec*, %union.rec** %entry1, align 8
  %os1 = bitcast %union.rec* %12 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4, i32 0, i32 1
  %13 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %13, %union.rec** %plink, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.144, %while.end
  %14 = load %union.rec*, %union.rec** %plink, align 8
  %15 = load %union.rec*, %union.rec** %entry1, align 8
  %cmp = icmp ne %union.rec* %14, %15
  br i1 %cmp, label %for.body, label %for.end.149

for.body:                                         ; preds = %for.cond
  %16 = load %union.rec*, %union.rec** %plink, align 8
  %os16 = bitcast %union.rec* %16 to %struct.word_type*
  %olist7 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8, i32 0, i32 0
  %17 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %17, %union.rec** %p, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %18 = load %union.rec*, %union.rec** %p, align 8
  %os110 = bitcast %union.rec* %18 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.0*
  %otype = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11, i32 0, i32 0
  %19 = load i8, i8* %otype, align 1
  %conv11 = zext i8 %19 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.9
  br label %for.inc

for.inc:                                          ; preds = %for.body.14
  %20 = load %union.rec*, %union.rec** %p, align 8
  %os115 = bitcast %union.rec* %20 to %struct.word_type*
  %olist16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist16, i32 0, i64 1
  %opred18 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx17, i32 0, i32 0
  %21 = load %union.rec*, %union.rec** %opred18, align 8
  store %union.rec* %21, %union.rec** %p, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %22 = load i32, i32* %rlen, align 4
  %23 = load %union.rec*, %union.rec** %p, align 8
  %os119 = bitcast %union.rec* %23 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %24 = bitcast %struct.anon.2* %os22 to i32*
  %bf.load = load i32, i32* %24, align 4
  %bf.clear = and i32 %bf.load, 4095
  %cmp20 = icmp eq i32 %22, %bf.clear
  br i1 %cmp20, label %if.then, label %if.end.143

if.then:                                          ; preds = %for.end
  %25 = load i8*, i8** %str.addr, align 8
  store i8* %25, i8** %x, align 8
  %26 = load %union.rec*, %union.rec** %p, align 8
  %os122 = bitcast %union.rec* %26 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  store i8* %arraydecay, i8** %y, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %27 = load i8*, i8** %x, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr23, i8** %x, align 8
  %28 = load i8, i8* %27, align 1
  %conv24 = zext i8 %28 to i32
  %29 = load i8*, i8** %y, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr25, i8** %y, align 8
  %30 = load i8, i8* %29, align 1
  %conv26 = zext i8 %30 to i32
  %cmp27 = icmp eq i32 %conv24, %conv26
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %31 = load i32, i32* %rlen, align 4
  %dec29 = add nsw i32 %31, -1
  store i32 %dec29, i32* %rlen, align 4
  %tobool30 = icmp ne i32 %dec29, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %32 = phi i1 [ false, %do.cond ], [ %tobool30, %land.rhs ]
  br i1 %32, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %33 = load i32, i32* %rlen, align 4
  %cmp31 = icmp eq i32 %33, 0
  br i1 %cmp31, label %if.then.33, label %if.end.142

if.then.33:                                       ; preds = %do.end
  %34 = load i32, i32* @scope_top, align 4
  store i32 %34, i32* %s, align 4
  br label %do.body.34

do.body.34:                                       ; preds = %do.cond.136, %if.then.33
  %35 = load i32, i32* %s, align 4
  %dec35 = add nsw i32 %35, -1
  store i32 %dec35, i32* %s, align 4
  %36 = load %union.rec*, %union.rec** %p, align 8
  %os136 = bitcast %union.rec* %36 to %struct.word_type*
  %olist37 = getelementptr inbounds %struct.word_type, %struct.word_type* %os136, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist37, i32 0, i64 0
  %osucc39 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx38, i32 0, i32 1
  %37 = load %union.rec*, %union.rec** %osucc39, align 8
  store %union.rec* %37, %union.rec** %link, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.130, %do.body.34
  %38 = load %union.rec*, %union.rec** %link, align 8
  %39 = load %union.rec*, %union.rec** %p, align 8
  %cmp41 = icmp ne %union.rec* %38, %39
  br i1 %cmp41, label %for.body.43, label %for.end.135

for.body.43:                                      ; preds = %for.cond.40
  %40 = load %union.rec*, %union.rec** %link, align 8
  %os144 = bitcast %union.rec* %40 to %struct.word_type*
  %olist45 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist45, i32 0, i64 1
  %opred47 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx46, i32 0, i32 0
  %41 = load %union.rec*, %union.rec** %opred47, align 8
  store %union.rec* %41, %union.rec** %q, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.57, %for.body.43
  %42 = load %union.rec*, %union.rec** %q, align 8
  %os149 = bitcast %union.rec* %42 to %struct.word_type*
  %ou150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 1
  %os1151 = bitcast %union.FIRST_UNION* %ou150 to %struct.anon.0*
  %otype52 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1151, i32 0, i32 0
  %43 = load i8, i8* %otype52, align 1
  %conv53 = zext i8 %43 to i32
  %cmp54 = icmp eq i32 %conv53, 0
  br i1 %cmp54, label %for.body.56, label %for.end.62

for.body.56:                                      ; preds = %for.cond.48
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.56
  %44 = load %union.rec*, %union.rec** %q, align 8
  %os158 = bitcast %union.rec* %44 to %struct.word_type*
  %olist59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist59, i32 0, i64 1
  %opred61 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 0
  %45 = load %union.rec*, %union.rec** %opred61, align 8
  store %union.rec* %45, %union.rec** %q, align 8
  br label %for.cond.48

for.end.62:                                       ; preds = %for.cond.48
  %46 = load %union.rec*, %union.rec** %q, align 8
  %os6 = bitcast %union.rec* %46 to %struct.symbol_type*
  %oenclosing = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 3
  %47 = load %union.rec*, %union.rec** %oenclosing, align 8
  %48 = load i32, i32* %s, align 4
  %idxprom63 = sext i32 %48 to i64
  %arrayidx64 = getelementptr inbounds [300 x %union.rec*], [300 x %union.rec*]* @scope, i32 0, i64 %idxprom63
  %49 = load %union.rec*, %union.rec** %arrayidx64, align 8
  %cmp65 = icmp eq %union.rec* %47, %49
  br i1 %cmp65, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end.62
  %50 = load i32, i32* %s, align 4
  %idxprom67 = sext i32 %50 to i64
  %arrayidx68 = getelementptr inbounds [300 x i32], [300 x i32]* @npars_only, i32 0, i64 %idxprom67
  %51 = load i32, i32* %arrayidx68, align 4
  %tobool69 = icmp ne i32 %51, 0
  br i1 %tobool69, label %lor.lhs.false, label %land.lhs.true.77

lor.lhs.false:                                    ; preds = %land.lhs.true
  %52 = load %union.rec*, %union.rec** %q, align 8
  %os170 = bitcast %union.rec* %52 to %struct.word_type*
  %ou171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 1
  %os1172 = bitcast %union.FIRST_UNION* %ou171 to %struct.anon.0*
  %otype73 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1172, i32 0, i32 0
  %53 = load i8, i8* %otype73, align 1
  %conv74 = zext i8 %53 to i32
  %cmp75 = icmp eq i32 %conv74, 145
  br i1 %cmp75, label %land.lhs.true.77, label %if.end

land.lhs.true.77:                                 ; preds = %lor.lhs.false, %land.lhs.true
  %54 = load i32, i32* %s, align 4
  %idxprom78 = sext i32 %54 to i64
  %arrayidx79 = getelementptr inbounds [300 x i32], [300 x i32]* @vis_only, i32 0, i64 %idxprom78
  %55 = load i32, i32* %arrayidx79, align 4
  %tobool80 = icmp ne i32 %55, 0
  br i1 %tobool80, label %lor.lhs.false.81, label %land.lhs.true.89

lor.lhs.false.81:                                 ; preds = %land.lhs.true.77
  %56 = load %union.rec*, %union.rec** %q, align 8
  %os182 = bitcast %union.rec* %56 to %struct.word_type*
  %ou283 = getelementptr inbounds %struct.word_type, %struct.word_type* %os182, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou283 to %struct.anon.6*
  %ovisible = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26, i32 0, i32 1
  %57 = bitcast [3 x i8]* %ovisible to i24*
  %bf.load84 = load i24, i24* %57, align 1
  %bf.lshr = lshr i24 %bf.load84, 16
  %bf.clear85 = and i24 %bf.lshr, 1
  %bf.cast = zext i24 %bf.clear85 to i32
  %tobool86 = icmp ne i32 %bf.cast, 0
  br i1 %tobool86, label %land.lhs.true.89, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %lor.lhs.false.81
  %58 = load i32, i32* @suppress_visible, align 4
  %tobool88 = icmp ne i32 %58, 0
  br i1 %tobool88, label %land.lhs.true.89, label %if.end

land.lhs.true.89:                                 ; preds = %lor.lhs.false.87, %lor.lhs.false.81, %land.lhs.true.77
  %59 = load i32, i32* %s, align 4
  %idxprom90 = sext i32 %59 to i64
  %arrayidx91 = getelementptr inbounds [300 x i32], [300 x i32]* @body_ok, i32 0, i64 %idxprom90
  %60 = load i32, i32* %arrayidx91, align 4
  %tobool92 = icmp ne i32 %60, 0
  br i1 %tobool92, label %land.lhs.true.114, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %land.lhs.true.89
  %61 = load %union.rec*, %union.rec** %q, align 8
  %os194 = bitcast %union.rec* %61 to %struct.word_type*
  %ou195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os194, i32 0, i32 1
  %os1196 = bitcast %union.FIRST_UNION* %ou195 to %struct.anon.0*
  %otype97 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1196, i32 0, i32 0
  %62 = load i8, i8* %otype97, align 1
  %conv98 = zext i8 %62 to i32
  %cmp99 = icmp ne i32 %conv98, 146
  br i1 %cmp99, label %land.lhs.true.114, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %lor.lhs.false.93
  %63 = load %union.rec*, %union.rec** %q, align 8
  %os6102 = bitcast %union.rec* %63 to %struct.symbol_type*
  %oenclosing103 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6102, i32 0, i32 3
  %64 = load %union.rec*, %union.rec** %oenclosing103, align 8
  %os1104 = bitcast %union.rec* %64 to %struct.word_type*
  %ou2105 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1104, i32 0, i32 2
  %os26106 = bitcast %union.SECOND_UNION* %ou2105 to %struct.anon.6*
  %ohas_body = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os26106, i32 0, i32 1
  %65 = bitcast [3 x i8]* %ohas_body to i24*
  %bf.load107 = load i24, i24* %65, align 1
  %bf.lshr108 = lshr i24 %bf.load107, 8
  %bf.clear109 = and i24 %bf.lshr108, 1
  %bf.cast110 = zext i24 %bf.clear109 to i32
  %tobool111 = icmp ne i32 %bf.cast110, 0
  br i1 %tobool111, label %lor.lhs.false.112, label %land.lhs.true.114

lor.lhs.false.112:                                ; preds = %lor.lhs.false.101
  %66 = load i32, i32* @suppress_visible, align 4
  %tobool113 = icmp ne i32 %66, 0
  br i1 %tobool113, label %land.lhs.true.114, label %if.end

land.lhs.true.114:                                ; preds = %lor.lhs.false.112, %lor.lhs.false.101, %lor.lhs.false.93, %land.lhs.true.89
  %67 = load i32, i32* @suppress_scope, align 4
  %tobool115 = icmp ne i32 %67, 0
  br i1 %tobool115, label %lor.lhs.false.116, label %if.then.129

lor.lhs.false.116:                                ; preds = %land.lhs.true.114
  %68 = load %union.rec*, %union.rec** %p, align 8
  %os1117 = bitcast %union.rec* %68 to %struct.word_type*
  %ostring118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 4
  %arraydecay119 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring118, i32 0, i32 0
  %call = call i32 @strcmp(i8* %arraydecay119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0)) #4
  %cmp120 = icmp eq i32 %call, 0
  br i1 %cmp120, label %if.then.129, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %lor.lhs.false.116
  %69 = load %union.rec*, %union.rec** %p, align 8
  %os1123 = bitcast %union.rec* %69 to %struct.word_type*
  %ostring124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1123, i32 0, i32 4
  %arraydecay125 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring124, i32 0, i32 0
  %call126 = call i32 @strcmp(i8* %arraydecay125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0)) #4
  %cmp127 = icmp eq i32 %call126, 0
  br i1 %cmp127, label %if.then.129, label %if.end

if.then.129:                                      ; preds = %lor.lhs.false.122, %lor.lhs.false.116, %land.lhs.true.114
  %70 = load %union.rec*, %union.rec** %q, align 8
  store %union.rec* %70, %union.rec** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.122, %lor.lhs.false.112, %lor.lhs.false.87, %lor.lhs.false, %for.end.62
  br label %for.inc.130

for.inc.130:                                      ; preds = %if.end
  %71 = load %union.rec*, %union.rec** %link, align 8
  %os1131 = bitcast %union.rec* %71 to %struct.word_type*
  %olist132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1131, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist132, i32 0, i64 0
  %osucc134 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx133, i32 0, i32 1
  %72 = load %union.rec*, %union.rec** %osucc134, align 8
  store %union.rec* %72, %union.rec** %link, align 8
  br label %for.cond.40

for.end.135:                                      ; preds = %for.cond.40
  br label %do.cond.136

do.cond.136:                                      ; preds = %for.end.135
  %73 = load i32, i32* %s, align 4
  %idxprom137 = sext i32 %73 to i64
  %arrayidx138 = getelementptr inbounds [300 x %union.rec*], [300 x %union.rec*]* @scope, i32 0, i64 %idxprom137
  %74 = load %union.rec*, %union.rec** %arrayidx138, align 8
  %75 = load %union.rec*, %union.rec** @StartSym, align 8
  %cmp139 = icmp ne %union.rec* %74, %75
  br i1 %cmp139, label %do.body.34, label %do.end.141

do.end.141:                                       ; preds = %do.cond.136
  br label %if.end.142

if.end.142:                                       ; preds = %do.end.141, %do.end
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %for.end
  %76 = load i32, i32* %len.addr, align 4
  store i32 %76, i32* %rlen, align 4
  br label %for.inc.144

for.inc.144:                                      ; preds = %if.end.143
  %77 = load %union.rec*, %union.rec** %plink, align 8
  %os1145 = bitcast %union.rec* %77 to %struct.word_type*
  %olist146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1145, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist146, i32 0, i64 0
  %osucc148 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx147, i32 0, i32 1
  %78 = load %union.rec*, %union.rec** %osucc148, align 8
  store %union.rec* %78, %union.rec** %plink, align 8
  br label %for.cond

for.end.149:                                      ; preds = %for.cond
  store %union.rec* null, %union.rec** %retval
  br label %return

return:                                           ; preds = %for.end.149, %if.then.129
  %79 = load %union.rec*, %union.rec** %retval
  ret %union.rec* %79
}

; Function Attrs: nounwind uwtable
define i8* @SymName(%union.rec* %s) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca %union.rec*, align 8
  %p = alloca %union.rec*, align 8
  store %union.rec* %s, %union.rec** %s.addr, align 8
  %0 = load %union.rec*, %union.rec** %s.addr, align 8
  %cmp = icmp eq %union.rec* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.rec*, %union.rec** %s.addr, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %2 = load %union.rec*, %union.rec** %osucc, align 8
  %os11 = bitcast %union.rec* %2 to %struct.word_type*
  %olist2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3, i32 0, i32 0
  %3 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %3, %union.rec** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %union.rec*, %union.rec** %p, align 8
  %os14 = bitcast %union.rec* %4 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14, i32 0, i32 1
  %os115 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.0*
  %otype = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os115, i32 0, i32 0
  %5 = load i8, i8* %otype, align 1
  %conv = zext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %union.rec*, %union.rec** %p, align 8
  %os18 = bitcast %union.rec* %6 to %struct.word_type*
  %olist9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist9, i32 0, i64 0
  %opred11 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %7 = load %union.rec*, %union.rec** %opred11, align 8
  store %union.rec* %7, %union.rec** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %union.rec*, %union.rec** %p, align 8
  %os112 = bitcast %union.rec* %8 to %struct.word_type*
  %ou113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 1
  %os1114 = bitcast %union.FIRST_UNION* %ou113 to %struct.anon.0*
  %otype15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1114, i32 0, i32 0
  %9 = load i8, i8* %otype15, align 1
  %conv16 = zext i8 %9 to i32
  %cmp17 = icmp eq i32 %conv16, 11
  br i1 %cmp17, label %if.end.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %10 = load %union.rec*, %union.rec** %p, align 8
  %os119 = bitcast %union.rec* %10 to %struct.word_type*
  %ou120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 1
  %os1121 = bitcast %union.FIRST_UNION* %ou120 to %struct.anon.0*
  %otype22 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1121, i32 0, i32 0
  %11 = load i8, i8* %otype22, align 1
  %conv23 = zext i8 %11 to i32
  %cmp24 = icmp eq i32 %conv23, 12
  br i1 %cmp24, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %lor.lhs.false
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %lor.lhs.false, %for.end
  %13 = load %union.rec*, %union.rec** %p, align 8
  %os128 = bitcast %union.rec* %13 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  store i8* %arraydecay, i8** %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then
  %14 = load i8*, i8** %retval
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define i8* @FullSymName(%union.rec* %x, i8* %str) #0 {
entry:
  %retval = alloca i8*, align 8
  %x.addr = alloca %union.rec*, align 8
  %str.addr = alloca i8*, align 8
  %stack = alloca [20 x %union.rec*], align 16
  %i = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp = icmp eq %union.rec* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.rec*, %union.rec** %x.addr, align 8
  %os6 = bitcast %union.rec* %1 to %struct.symbol_type*
  %oenclosing = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 3
  %2 = load %union.rec*, %union.rec** %oenclosing, align 8
  %cmp1 = icmp ne %union.rec* %2, null
  br i1 %cmp1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %4 = load %union.rec*, %union.rec** %x.addr, align 8
  %os64 = bitcast %union.rec* %4 to %struct.symbol_type*
  %oenclosing5 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os64, i32 0, i32 3
  %5 = load %union.rec*, %union.rec** %oenclosing5, align 8
  %cmp6 = icmp ne %union.rec* %5, null
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %6, 20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp7, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load %union.rec*, %union.rec** %x.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [20 x %union.rec*], [20 x %union.rec*]* %stack, i32 0, i64 %idxprom
  store %union.rec* %8, %union.rec** %arrayidx, align 8
  %10 = load %union.rec*, %union.rec** %x.addr, align 8
  %os68 = bitcast %union.rec* %10 to %struct.symbol_type*
  %oenclosing9 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os68, i32 0, i32 3
  %11 = load %union.rec*, %union.rec** %oenclosing9, align 8
  store %union.rec* %11, %union.rec** %x.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %call10 = call i8* @strcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @FullSymName.buff, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0)) #5
  %13 = load i32, i32* %i, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.27, %for.end
  %14 = load i32, i32* %i, align 4
  %cmp12 = icmp sgt i32 %14, 0
  br i1 %cmp12, label %for.body.13, label %for.end.29

for.body.13:                                      ; preds = %for.cond.11
  %15 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [20 x %union.rec*], [20 x %union.rec*]* %stack, i32 0, i64 %idxprom14
  %16 = load %union.rec*, %union.rec** %arrayidx15, align 8
  %call16 = call i8* @SymName(%union.rec* %16)
  store i8* %call16, i8** @FullSymName.sname, align 8
  %17 = load i8*, i8** @FullSymName.sname, align 8
  %call17 = call i64 @strlen(i8* %17) #4
  %18 = load i8*, i8** %str.addr, align 8
  %call18 = call i64 @strlen(i8* %18) #4
  %add = add i64 %call17, %call18
  %call19 = call i64 @strlen(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @FullSymName.buff, i32 0, i32 0)) #4
  %add20 = add i64 %add, %call19
  %cmp21 = icmp uge i64 %add20, 512
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %for.body.13
  %19 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %19 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %call23 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %for.body.13
  %20 = load i8*, i8** @FullSymName.sname, align 8
  %call25 = call i8* @strcat(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @FullSymName.buff, i32 0, i32 0), i8* %20) #5
  %21 = load i8*, i8** %str.addr, align 8
  %call26 = call i8* @strcat(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @FullSymName.buff, i32 0, i32 0), i8* %21) #5
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.24
  %22 = load i32, i32* %i, align 4
  %dec28 = add nsw i32 %22, -1
  store i32 %dec28, i32* %i, align 4
  br label %for.cond.11

for.end.29:                                       ; preds = %for.cond.11
  %arrayidx30 = getelementptr inbounds [20 x %union.rec*], [20 x %union.rec*]* %stack, i32 0, i64 0
  %23 = load %union.rec*, %union.rec** %arrayidx30, align 8
  %call31 = call i8* @SymName(%union.rec* %23)
  store i8* %call31, i8** @FullSymName.sname, align 8
  %24 = load i8*, i8** @FullSymName.sname, align 8
  %call32 = call i64 @strlen(i8* %24) #4
  %call33 = call i64 @strlen(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @FullSymName.buff, i32 0, i32 0)) #4
  %add34 = add i64 %call32, %call33
  %cmp35 = icmp uge i64 %add34, 512
  br i1 %cmp35, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %for.end.29
  %25 = load %union.rec*, %union.rec** %x.addr, align 8
  %os137 = bitcast %union.rec* %25 to %struct.word_type*
  %ou138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 1
  %ofpos39 = bitcast %union.FIRST_UNION* %ou138 to %struct.FILE_POS*
  %call40 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos39)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.36, %for.end.29
  %26 = load i8*, i8** @FullSymName.sname, align 8
  %call42 = call i8* @strcat(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @FullSymName.buff, i32 0, i32 0), i8* %26) #5
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @FullSymName.buff, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.then
  %27 = load i8*, i8** %retval
  ret i8* %27
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define %union.rec* @ChildSym(%union.rec* %s, i32 %typ) #0 {
entry:
  %retval = alloca %union.rec*, align 8
  %s.addr = alloca %union.rec*, align 8
  %typ.addr = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %union.rec* %s, %union.rec** %s.addr, align 8
  store i32 %typ, i32* %typ.addr, align 4
  %0 = load %union.rec*, %union.rec** %s.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %1 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %1, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %entry
  %2 = load %union.rec*, %union.rec** %link, align 8
  %3 = load %union.rec*, %union.rec** %s.addr, align 8
  %cmp = icmp ne %union.rec* %2, %3
  br i1 %cmp, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  %4 = load %union.rec*, %union.rec** %link, align 8
  %os11 = bitcast %union.rec* %4 to %struct.word_type*
  %olist2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3, i32 0, i32 0
  %5 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %5, %union.rec** %y, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %6 = load %union.rec*, %union.rec** %y, align 8
  %os15 = bitcast %union.rec* %6 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 1
  %os116 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.0*
  %otype = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os116, i32 0, i32 0
  %7 = load i8, i8* %otype, align 1
  %conv = zext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.4
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %8 = load %union.rec*, %union.rec** %y, align 8
  %os110 = bitcast %union.rec* %8 to %struct.word_type*
  %olist11 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist11, i32 0, i64 1
  %opred13 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx12, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred13, align 8
  store %union.rec* %9, %union.rec** %y, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %10 = load %union.rec*, %union.rec** %y, align 8
  %os114 = bitcast %union.rec* %10 to %struct.word_type*
  %ou115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 1
  %os1116 = bitcast %union.FIRST_UNION* %ou115 to %struct.anon.0*
  %otype17 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1116, i32 0, i32 0
  %11 = load i8, i8* %otype17, align 1
  %conv18 = zext i8 %11 to i32
  %12 = load i32, i32* %typ.addr, align 4
  %cmp19 = icmp eq i32 %conv18, %12
  br i1 %cmp19, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %13 = load %union.rec*, %union.rec** %y, align 8
  %os6 = bitcast %union.rec* %13 to %struct.symbol_type*
  %oenclosing = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 3
  %14 = load %union.rec*, %union.rec** %oenclosing, align 8
  %15 = load %union.rec*, %union.rec** %s.addr, align 8
  %cmp21 = icmp eq %union.rec* %14, %15
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %16 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %16, %union.rec** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.end
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end
  %17 = load %union.rec*, %union.rec** %link, align 8
  %os124 = bitcast %union.rec* %17 to %struct.word_type*
  %olist25 = getelementptr inbounds %struct.word_type, %struct.word_type* %os124, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist25, i32 0, i64 0
  %osucc27 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx26, i32 0, i32 1
  %18 = load %union.rec*, %union.rec** %osucc27, align 8
  store %union.rec* %18, %union.rec** %link, align 8
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  %19 = load %union.rec*, %union.rec** %s.addr, align 8
  %os129 = bitcast %union.rec* %19 to %struct.word_type*
  %ou130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou130 to %struct.FILE_POS*
  %20 = load %union.rec*, %union.rec** %s.addr, align 8
  %call = call i8* @SymName(%union.rec* %20)
  %21 = load i32, i32* %typ.addr, align 4
  %call31 = call i8* @Image(i32 %21)
  %call32 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i8* %call, i8* %call31)
  store %union.rec* null, %union.rec** %retval
  br label %return

return:                                           ; preds = %for.end.28, %if.then
  %22 = load %union.rec*, %union.rec** %retval
  ret %union.rec* %22
}

declare i8* @Image(i32) #1

; Function Attrs: nounwind uwtable
define %union.rec* @ChildSymWithCode(%union.rec* %s, i8 zeroext %code) #0 {
entry:
  %retval = alloca %union.rec*, align 8
  %s.addr = alloca %union.rec*, align 8
  %code.addr = alloca i8, align 1
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %union.rec* %s, %union.rec** %s.addr, align 8
  store i8 %code, i8* %code.addr, align 1
  %0 = load %union.rec*, %union.rec** %s.addr, align 8
  %os2 = bitcast %union.rec* %0 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %1 = load %union.rec*, %union.rec** %oactual, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %2 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %2, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %entry
  %3 = load %union.rec*, %union.rec** %link, align 8
  %4 = load %union.rec*, %union.rec** %s.addr, align 8
  %os21 = bitcast %union.rec* %4 to %struct.closure_type*
  %oactual2 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21, i32 0, i32 5
  %5 = load %union.rec*, %union.rec** %oactual2, align 8
  %cmp = icmp ne %union.rec* %3, %5
  br i1 %cmp, label %for.body, label %for.end.37

for.body:                                         ; preds = %for.cond
  %6 = load %union.rec*, %union.rec** %link, align 8
  %os13 = bitcast %union.rec* %6 to %struct.word_type*
  %olist4 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5, i32 0, i32 0
  %7 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %7, %union.rec** %y, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %8 = load %union.rec*, %union.rec** %y, align 8
  %os17 = bitcast %union.rec* %8 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.0*
  %otype = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11, i32 0, i32 0
  %9 = load i8, i8* %otype, align 1
  %conv = zext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv, 0
  br i1 %cmp8, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.6
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %10 = load %union.rec*, %union.rec** %y, align 8
  %os111 = bitcast %union.rec* %10 to %struct.word_type*
  %olist12 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist12, i32 0, i64 1
  %opred14 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx13, i32 0, i32 0
  %11 = load %union.rec*, %union.rec** %opred14, align 8
  store %union.rec* %11, %union.rec** %y, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %12 = load %union.rec*, %union.rec** %y, align 8
  %os115 = bitcast %union.rec* %12 to %struct.word_type*
  %ou116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 1
  %os1117 = bitcast %union.FIRST_UNION* %ou116 to %struct.anon.0*
  %otype18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1117, i32 0, i32 0
  %13 = load i8, i8* %otype18, align 1
  %conv19 = zext i8 %13 to i32
  %cmp20 = icmp eq i32 %conv19, 145
  br i1 %cmp20, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %14 = load %union.rec*, %union.rec** %y, align 8
  %os6 = bitcast %union.rec* %14 to %struct.symbol_type*
  %oenclosing = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 3
  %15 = load %union.rec*, %union.rec** %oenclosing, align 8
  %16 = load %union.rec*, %union.rec** %s.addr, align 8
  %os222 = bitcast %union.rec* %16 to %struct.closure_type*
  %oactual23 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os222, i32 0, i32 5
  %17 = load %union.rec*, %union.rec** %oactual23, align 8
  %cmp24 = icmp eq %union.rec* %15, %17
  br i1 %cmp24, label %land.lhs.true.26, label %if.end

land.lhs.true.26:                                 ; preds = %land.lhs.true
  %18 = load %union.rec*, %union.rec** %y, align 8
  %os627 = bitcast %union.rec* %18 to %struct.symbol_type*
  %onpar_code = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os627, i32 0, i32 15
  %19 = load i8, i8* %onpar_code, align 1
  %conv28 = zext i8 %19 to i32
  %20 = load i8, i8* %code.addr, align 1
  %conv29 = zext i8 %20 to i32
  %cmp30 = icmp eq i32 %conv28, %conv29
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.26
  %21 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %21, %union.rec** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.26, %land.lhs.true, %for.end
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end
  %22 = load %union.rec*, %union.rec** %link, align 8
  %os133 = bitcast %union.rec* %22 to %struct.word_type*
  %olist34 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist34, i32 0, i64 0
  %osucc36 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx35, i32 0, i32 1
  %23 = load %union.rec*, %union.rec** %osucc36, align 8
  store %union.rec* %23, %union.rec** %link, align 8
  br label %for.cond

for.end.37:                                       ; preds = %for.cond
  %24 = load %union.rec*, %union.rec** %s.addr, align 8
  %os138 = bitcast %union.rec* %24 to %struct.word_type*
  %ou139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou139 to %struct.FILE_POS*
  %25 = load %union.rec*, %union.rec** %s.addr, align 8
  %os240 = bitcast %union.rec* %25 to %struct.closure_type*
  %oactual41 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os240, i32 0, i32 5
  %26 = load %union.rec*, %union.rec** %oactual41, align 8
  %call = call i8* @SymName(%union.rec* %26)
  %27 = load i8, i8* %code.addr, align 1
  %conv42 = sext i8 %27 to i32
  %call43 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 29, i32 11, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.31, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i8* %call, i32 %conv42)
  store %union.rec* null, %union.rec** %retval
  br label %return

return:                                           ; preds = %for.end.37, %if.then
  %28 = load %union.rec*, %union.rec** %retval
  ret %union.rec* %28
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
