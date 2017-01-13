; ModuleID = './MultiSource.Applications.siod/3.trace.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obj = type { i16, i16, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.obj*, %struct.obj* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.anon.10 = type { %struct.obj*, %struct.obj* }
%struct.gen_printio = type { i32 (i32, i8*)*, i32 (i8*, i8*)*, i8* }

@sym_begin = internal global %struct.obj* null, align 8
@sym_quote = internal global %struct.obj* null, align 8
@tc_closure_traced = internal global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"not a closure, cannot trace\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"not a closure, cannot untrace\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"#<CLOSURE(TRACED) \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c">\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@sym_traced = internal global %struct.obj* null, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"*traced*\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"untrace\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"*trace-version*\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"$Id: trace.c 9206 2003-10-17 18:48:45Z gaeke $\00", align 1

; Function Attrs: nounwind uwtable
define %struct.obj* @ltrace_fcn_name(%struct.obj* %body) #0 {
entry:
  %retval = alloca %struct.obj*, align 8
  %body.addr = alloca %struct.obj*, align 8
  %tmp = alloca %struct.obj*, align 8
  store %struct.obj* %body, %struct.obj** %body.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %body.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %body.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp ne i32 %cond, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %body.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %4 = load %struct.obj*, %struct.obj** %car, align 8
  %5 = load %struct.obj*, %struct.obj** @sym_begin, align 8
  %cmp3 = icmp ne %struct.obj* %4, %5
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %6 = load %struct.obj*, %struct.obj** %body.addr, align 8
  %storage_as7 = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %cons8 = bitcast %union.anon* %storage_as7 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons8, i32 0, i32 1
  %7 = load %struct.obj*, %struct.obj** %cdr, align 8
  store %struct.obj* %7, %struct.obj** %tmp, align 8
  %8 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp9 = icmp eq %struct.obj* %8, null
  br i1 %cmp9, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %if.end.6
  br label %cond.end.15

cond.false.12:                                    ; preds = %if.end.6
  %9 = load %struct.obj*, %struct.obj** %tmp, align 8
  %type13 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 1
  %10 = load i16, i16* %type13, align 2
  %conv14 = sext i16 %10 to i32
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.12, %cond.true.11
  %cond16 = phi i32 [ 0, %cond.true.11 ], [ %conv14, %cond.false.12 ]
  %cmp17 = icmp ne i32 %cond16, 1
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %cond.end.15
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.20:                                        ; preds = %cond.end.15
  %11 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as21 = getelementptr inbounds %struct.obj, %struct.obj* %11, i32 0, i32 2
  %cons22 = bitcast %union.anon* %storage_as21 to %struct.anon*
  %car23 = getelementptr inbounds %struct.anon, %struct.anon* %cons22, i32 0, i32 0
  %12 = load %struct.obj*, %struct.obj** %car23, align 8
  store %struct.obj* %12, %struct.obj** %tmp, align 8
  %13 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp24 = icmp eq %struct.obj* %13, null
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %if.end.20
  br label %cond.end.30

cond.false.27:                                    ; preds = %if.end.20
  %14 = load %struct.obj*, %struct.obj** %tmp, align 8
  %type28 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 1
  %15 = load i16, i16* %type28, align 2
  %conv29 = sext i16 %15 to i32
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.27, %cond.true.26
  %cond31 = phi i32 [ 0, %cond.true.26 ], [ %conv29, %cond.false.27 ]
  %cmp32 = icmp ne i32 %cond31, 1
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %cond.end.30
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.35:                                        ; preds = %cond.end.30
  %16 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as36 = getelementptr inbounds %struct.obj, %struct.obj* %16, i32 0, i32 2
  %cons37 = bitcast %union.anon* %storage_as36 to %struct.anon*
  %car38 = getelementptr inbounds %struct.anon, %struct.anon* %cons37, i32 0, i32 0
  %17 = load %struct.obj*, %struct.obj** %car38, align 8
  %18 = load %struct.obj*, %struct.obj** @sym_quote, align 8
  %cmp39 = icmp ne %struct.obj* %17, %18
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.35
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.42:                                        ; preds = %if.end.35
  %19 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as43 = getelementptr inbounds %struct.obj, %struct.obj* %19, i32 0, i32 2
  %cons44 = bitcast %union.anon* %storage_as43 to %struct.anon*
  %cdr45 = getelementptr inbounds %struct.anon, %struct.anon* %cons44, i32 0, i32 1
  %20 = load %struct.obj*, %struct.obj** %cdr45, align 8
  store %struct.obj* %20, %struct.obj** %tmp, align 8
  %21 = load %struct.obj*, %struct.obj** %tmp, align 8
  %cmp46 = icmp eq %struct.obj* %21, null
  br i1 %cmp46, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %if.end.42
  br label %cond.end.52

cond.false.49:                                    ; preds = %if.end.42
  %22 = load %struct.obj*, %struct.obj** %tmp, align 8
  %type50 = getelementptr inbounds %struct.obj, %struct.obj* %22, i32 0, i32 1
  %23 = load i16, i16* %type50, align 2
  %conv51 = sext i16 %23 to i32
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.49, %cond.true.48
  %cond53 = phi i32 [ 0, %cond.true.48 ], [ %conv51, %cond.false.49 ]
  %cmp54 = icmp ne i32 %cond53, 1
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %cond.end.52
  store %struct.obj* null, %struct.obj** %retval
  br label %return

if.end.57:                                        ; preds = %cond.end.52
  %24 = load %struct.obj*, %struct.obj** %tmp, align 8
  %storage_as58 = getelementptr inbounds %struct.obj, %struct.obj* %24, i32 0, i32 2
  %cons59 = bitcast %union.anon* %storage_as58 to %struct.anon*
  %car60 = getelementptr inbounds %struct.anon, %struct.anon* %cons59, i32 0, i32 0
  %25 = load %struct.obj*, %struct.obj** %car60, align 8
  store %struct.obj* %25, %struct.obj** %retval
  br label %return

return:                                           ; preds = %if.end.57, %if.then.56, %if.then.41, %if.then.34, %if.then.19, %if.then.5, %if.then
  %26 = load %struct.obj*, %struct.obj** %retval
  ret %struct.obj* %26
}

; Function Attrs: nounwind uwtable
define %struct.obj* @ltrace_1(%struct.obj* %fcn_name, %struct.obj* %env) #0 {
entry:
  %fcn_name.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  %fcn = alloca %struct.obj*, align 8
  %code = alloca %struct.obj*, align 8
  store %struct.obj* %fcn_name, %struct.obj** %fcn_name.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %fcn_name.addr, align 8
  %1 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call = call %struct.obj* @leval(%struct.obj* %0, %struct.obj* %1)
  store %struct.obj* %call, %struct.obj** %fcn, align 8
  %2 = load %struct.obj*, %struct.obj** %fcn, align 8
  %cmp = icmp eq %struct.obj* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.obj*, %struct.obj** %fcn, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 1
  %4 = load i16, i16* %type, align 2
  %conv = sext i16 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 11
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %5 = load %struct.obj*, %struct.obj** %fcn, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %closure = bitcast %union.anon* %storage_as to %struct.anon.10*
  %code3 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure, i32 0, i32 1
  %6 = load %struct.obj*, %struct.obj** %code3, align 8
  store %struct.obj* %6, %struct.obj** %code, align 8
  %7 = load %struct.obj*, %struct.obj** %code, align 8
  %call4 = call %struct.obj* @cdr(%struct.obj* %7)
  %call5 = call %struct.obj* @ltrace_fcn_name(%struct.obj* %call4)
  %cmp6 = icmp eq %struct.obj* %call5, null
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %8 = load %struct.obj*, %struct.obj** %code, align 8
  %9 = load %struct.obj*, %struct.obj** @sym_begin, align 8
  %10 = load %struct.obj*, %struct.obj** @sym_quote, align 8
  %11 = load %struct.obj*, %struct.obj** %fcn_name.addr, align 8
  %call9 = call %struct.obj* @cons(%struct.obj* %11, %struct.obj* null)
  %call10 = call %struct.obj* @cons(%struct.obj* %10, %struct.obj* %call9)
  %12 = load %struct.obj*, %struct.obj** %code, align 8
  %call11 = call %struct.obj* @cdr(%struct.obj* %12)
  %call12 = call %struct.obj* @cons(%struct.obj* %call11, %struct.obj* null)
  %call13 = call %struct.obj* @cons(%struct.obj* %call10, %struct.obj* %call12)
  %call14 = call %struct.obj* @cons(%struct.obj* %9, %struct.obj* %call13)
  %call15 = call %struct.obj* @setcdr(%struct.obj* %8, %struct.obj* %call14)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %13 = load i64, i64* @tc_closure_traced, align 8
  %conv16 = trunc i64 %13 to i16
  %14 = load %struct.obj*, %struct.obj** %fcn, align 8
  %type17 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 1
  store i16 %conv16, i16* %type17, align 2
  br label %if.end.33

if.else:                                          ; preds = %cond.end
  %15 = load %struct.obj*, %struct.obj** %fcn, align 8
  %cmp18 = icmp eq %struct.obj* %15, null
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %if.else
  br label %cond.end.24

cond.false.21:                                    ; preds = %if.else
  %16 = load %struct.obj*, %struct.obj** %fcn, align 8
  %type22 = getelementptr inbounds %struct.obj, %struct.obj* %16, i32 0, i32 1
  %17 = load i16, i16* %type22, align 2
  %conv23 = sext i16 %17 to i32
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.21, %cond.true.20
  %cond25 = phi i32 [ 0, %cond.true.20 ], [ %conv23, %cond.false.21 ]
  %conv26 = sext i32 %cond25 to i64
  %18 = load i64, i64* @tc_closure_traced, align 8
  %cmp27 = icmp eq i64 %conv26, %18
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %cond.end.24
  br label %if.end.32

if.else.30:                                       ; preds = %cond.end.24
  %19 = load %struct.obj*, %struct.obj** %fcn, align 8
  %call31 = call %struct.obj* @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), %struct.obj* %19)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end
  ret %struct.obj* null
}

declare %struct.obj* @leval(%struct.obj*, %struct.obj*) #1

declare %struct.obj* @cdr(%struct.obj*) #1

declare %struct.obj* @setcdr(%struct.obj*, %struct.obj*) #1

declare %struct.obj* @cons(%struct.obj*, %struct.obj*) #1

declare %struct.obj* @err(i8*, %struct.obj*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @ltrace(%struct.obj* %fcn_names, %struct.obj* %env) #0 {
entry:
  %fcn_names.addr = alloca %struct.obj*, align 8
  %env.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  store %struct.obj* %fcn_names, %struct.obj** %fcn_names.addr, align 8
  store %struct.obj* %env, %struct.obj** %env.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %fcn_names.addr, align 8
  store %struct.obj* %0, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp ne %struct.obj* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %l, align 8
  %call = call %struct.obj* @car(%struct.obj* %2)
  %3 = load %struct.obj*, %struct.obj** %env.addr, align 8
  %call1 = call %struct.obj* @ltrace_1(%struct.obj* %call, %struct.obj* %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.obj*, %struct.obj** %l, align 8
  %call2 = call %struct.obj* @cdr(%struct.obj* %4)
  store %struct.obj* %call2, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret %struct.obj* null
}

declare %struct.obj* @car(%struct.obj*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @luntrace_1(%struct.obj* %fcn) #0 {
entry:
  %fcn.addr = alloca %struct.obj*, align 8
  store %struct.obj* %fcn, %struct.obj** %fcn.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %cmp = icmp eq %struct.obj* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %type = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 1
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %cmp1 = icmp eq i32 %cond, 11
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  br label %if.end.17

if.else:                                          ; preds = %cond.end
  %3 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %cmp3 = icmp eq %struct.obj* %3, null
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %if.else
  br label %cond.end.9

cond.false.6:                                     ; preds = %if.else
  %4 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %type7 = getelementptr inbounds %struct.obj, %struct.obj* %4, i32 0, i32 1
  %5 = load i16, i16* %type7, align 2
  %conv8 = sext i16 %5 to i32
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i32 [ 0, %cond.true.5 ], [ %conv8, %cond.false.6 ]
  %conv11 = sext i32 %cond10 to i64
  %6 = load i64, i64* @tc_closure_traced, align 8
  %cmp12 = icmp eq i64 %conv11, %6
  br i1 %cmp12, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %cond.end.9
  %7 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %type15 = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 1
  store i16 11, i16* %type15, align 2
  br label %if.end

if.else.16:                                       ; preds = %cond.end.9
  %8 = load %struct.obj*, %struct.obj** %fcn.addr, align 8
  %call = call %struct.obj* @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), %struct.obj* %8)
  br label %if.end

if.end:                                           ; preds = %if.else.16, %if.then.14
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define %struct.obj* @luntrace(%struct.obj* %fcns) #0 {
entry:
  %fcns.addr = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  store %struct.obj* %fcns, %struct.obj** %fcns.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %fcns.addr, align 8
  store %struct.obj* %0, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp ne %struct.obj* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.obj*, %struct.obj** %l, align 8
  %call = call %struct.obj* @car(%struct.obj* %2)
  %call1 = call %struct.obj* @luntrace_1(%struct.obj* %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %struct.obj*, %struct.obj** %l, align 8
  %call2 = call %struct.obj* @cdr(%struct.obj* %3)
  store %struct.obj* %call2, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret %struct.obj* null
}

; Function Attrs: nounwind uwtable
define void @ct_prin1(%struct.obj* %ptr, %struct.gen_printio* %f) #0 {
entry:
  %ptr.addr = alloca %struct.obj*, align 8
  %f.addr = alloca %struct.gen_printio*, align 8
  store %struct.obj* %ptr, %struct.obj** %ptr.addr, align 8
  store %struct.gen_printio* %f, %struct.gen_printio** %f.addr, align 8
  %0 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0))
  %1 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %1, i32 0, i32 2
  %closure = bitcast %union.anon* %storage_as to %struct.anon.10*
  %code = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure, i32 0, i32 1
  %2 = load %struct.obj*, %struct.obj** %code, align 8
  %call = call %struct.obj* @car(%struct.obj* %2)
  %3 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %call1 = call %struct.obj* @lprin1g(%struct.obj* %call, %struct.gen_printio* %3)
  %4 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %5 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as2 = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %closure3 = bitcast %union.anon* %storage_as2 to %struct.anon.10*
  %code4 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure3, i32 0, i32 1
  %6 = load %struct.obj*, %struct.obj** %code4, align 8
  %call5 = call %struct.obj* @cdr(%struct.obj* %6)
  %7 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  %call6 = call %struct.obj* @lprin1g(%struct.obj* %call5, %struct.gen_printio* %7)
  %8 = load %struct.gen_printio*, %struct.gen_printio** %f.addr, align 8
  call void @gput_st(%struct.gen_printio* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  ret void
}

declare void @gput_st(%struct.gen_printio*, i8*) #1

declare %struct.obj* @lprin1g(%struct.obj*, %struct.gen_printio*) #1

; Function Attrs: nounwind uwtable
define %struct.obj* @ct_eval(%struct.obj* %ct, %struct.obj** %px, %struct.obj** %penv) #0 {
entry:
  %ct.addr = alloca %struct.obj*, align 8
  %px.addr = alloca %struct.obj**, align 8
  %penv.addr = alloca %struct.obj**, align 8
  %fcn_name = alloca %struct.obj*, align 8
  %args = alloca %struct.obj*, align 8
  %env = alloca %struct.obj*, align 8
  %result = alloca %struct.obj*, align 8
  %l = alloca %struct.obj*, align 8
  store %struct.obj* %ct, %struct.obj** %ct.addr, align 8
  store %struct.obj** %px, %struct.obj*** %px.addr, align 8
  store %struct.obj** %penv, %struct.obj*** %penv.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %ct.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %0, i32 0, i32 2
  %closure = bitcast %union.anon* %storage_as to %struct.anon.10*
  %code = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure, i32 0, i32 1
  %1 = load %struct.obj*, %struct.obj** %code, align 8
  %call = call %struct.obj* @cdr(%struct.obj* %1)
  %call1 = call %struct.obj* @ltrace_fcn_name(%struct.obj* %call)
  store %struct.obj* %call1, %struct.obj** %fcn_name, align 8
  %2 = load %struct.obj**, %struct.obj*** %px.addr, align 8
  %3 = load %struct.obj*, %struct.obj** %2, align 8
  %storage_as2 = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as2 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 1
  %4 = load %struct.obj*, %struct.obj** %cdr, align 8
  %5 = load %struct.obj**, %struct.obj*** %penv.addr, align 8
  %6 = load %struct.obj*, %struct.obj** %5, align 8
  %call3 = call %struct.obj* @leval_args(%struct.obj* %4, %struct.obj* %6)
  store %struct.obj* %call3, %struct.obj** %args, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @fput_st(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  %8 = load %struct.obj*, %struct.obj** %fcn_name, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call %struct.obj* @lprin1f(%struct.obj* %8, %struct._IO_FILE* %9)
  %10 = load %struct.obj*, %struct.obj** %args, align 8
  store %struct.obj* %10, %struct.obj** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load %struct.obj*, %struct.obj** %l, align 8
  %cmp = icmp ne %struct.obj* %11, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @fput_st(%struct._IO_FILE* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %13 = load %struct.obj*, %struct.obj** %l, align 8
  %call5 = call %struct.obj* @car(%struct.obj* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call %struct.obj* @lprin1f(%struct.obj* %call5, %struct._IO_FILE* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct.obj*, %struct.obj** %l, align 8
  %call7 = call %struct.obj* @cdr(%struct.obj* %15)
  store %struct.obj* %call7, %struct.obj** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @fput_st(%struct._IO_FILE* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %17 = load %struct.obj*, %struct.obj** %args, align 8
  %18 = load %struct.obj*, %struct.obj** %ct.addr, align 8
  %storage_as8 = getelementptr inbounds %struct.obj, %struct.obj* %18, i32 0, i32 2
  %closure9 = bitcast %union.anon* %storage_as8 to %struct.anon.10*
  %code10 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure9, i32 0, i32 1
  %19 = load %struct.obj*, %struct.obj** %code10, align 8
  %call11 = call %struct.obj* @car(%struct.obj* %19)
  %20 = load %struct.obj*, %struct.obj** %ct.addr, align 8
  %storage_as12 = getelementptr inbounds %struct.obj, %struct.obj* %20, i32 0, i32 2
  %closure13 = bitcast %union.anon* %storage_as12 to %struct.anon.10*
  %env14 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure13, i32 0, i32 0
  %21 = load %struct.obj*, %struct.obj** %env14, align 8
  %call15 = call %struct.obj* @extend_env(%struct.obj* %17, %struct.obj* %call11, %struct.obj* %21)
  store %struct.obj* %call15, %struct.obj** %env, align 8
  %22 = load %struct.obj*, %struct.obj** %ct.addr, align 8
  %storage_as16 = getelementptr inbounds %struct.obj, %struct.obj* %22, i32 0, i32 2
  %closure17 = bitcast %union.anon* %storage_as16 to %struct.anon.10*
  %code18 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure17, i32 0, i32 1
  %23 = load %struct.obj*, %struct.obj** %code18, align 8
  %call19 = call %struct.obj* @cdr(%struct.obj* %23)
  %24 = load %struct.obj*, %struct.obj** %env, align 8
  %call20 = call %struct.obj* @leval(%struct.obj* %call19, %struct.obj* %24)
  store %struct.obj* %call20, %struct.obj** %result, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @fput_st(%struct._IO_FILE* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %26 = load %struct.obj*, %struct.obj** %fcn_name, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call21 = call %struct.obj* @lprin1f(%struct.obj* %26, %struct._IO_FILE* %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @fput_st(%struct._IO_FILE* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %29 = load %struct.obj*, %struct.obj** %result, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call22 = call %struct.obj* @lprin1f(%struct.obj* %29, %struct._IO_FILE* %30)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @fput_st(%struct._IO_FILE* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %32 = load %struct.obj*, %struct.obj** %result, align 8
  %33 = load %struct.obj**, %struct.obj*** %px.addr, align 8
  store %struct.obj* %32, %struct.obj** %33, align 8
  ret %struct.obj* null
}

declare %struct.obj* @leval_args(%struct.obj*, %struct.obj*) #1

declare void @fput_st(%struct._IO_FILE*, i8*) #1

declare %struct.obj* @lprin1f(%struct.obj*, %struct._IO_FILE*) #1

declare %struct.obj* @extend_env(%struct.obj*, %struct.obj*, %struct.obj*) #1

; Function Attrs: nounwind uwtable
define void @init_trace() #0 {
entry:
  %j = alloca i64, align 8
  %call = call i64 @allocate_user_tc()
  store i64 %call, i64* @tc_closure_traced, align 8
  %0 = load i64, i64* @tc_closure_traced, align 8
  call void @set_gc_hooks(i64 %0, %struct.obj* (%struct.obj*)* null, %struct.obj* (%struct.obj*)* @ct_gc_mark, void (%struct.obj*)* @ct_gc_scan, void (%struct.obj*)* null, i64* %j)
  call void @gc_protect_sym(%struct.obj** @sym_traced, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  %1 = load %struct.obj*, %struct.obj** @sym_traced, align 8
  %call1 = call %struct.obj* @setvar(%struct.obj* %1, %struct.obj* null, %struct.obj* null)
  call void @gc_protect_sym(%struct.obj** @sym_begin, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  call void @gc_protect_sym(%struct.obj** @sym_quote, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0))
  %2 = load i64, i64* @tc_closure_traced, align 8
  call void @set_print_hooks(i64 %2, void (%struct.obj*, %struct.gen_printio*)* @ct_prin1)
  %3 = load i64, i64* @tc_closure_traced, align 8
  call void @set_eval_hooks(i64 %3, %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)* @ct_eval)
  call void @init_fsubr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), %struct.obj* (%struct.obj*, %struct.obj*)* @ltrace)
  call void @init_lsubr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), %struct.obj* (%struct.obj*)* @luntrace)
  call void @init_trace_version()
  ret void
}

declare i64 @allocate_user_tc() #1

declare void @set_gc_hooks(i64, %struct.obj* (%struct.obj*)*, %struct.obj* (%struct.obj*)*, void (%struct.obj*)*, void (%struct.obj*)*, i64*) #1

; Function Attrs: nounwind uwtable
define internal %struct.obj* @ct_gc_mark(%struct.obj* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.obj*, align 8
  store %struct.obj* %ptr, %struct.obj** %ptr.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %0, i32 0, i32 2
  %closure = bitcast %union.anon* %storage_as to %struct.anon.10*
  %code = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure, i32 0, i32 1
  %1 = load %struct.obj*, %struct.obj** %code, align 8
  call void @gc_mark(%struct.obj* %1)
  %2 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as1 = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 2
  %closure2 = bitcast %union.anon* %storage_as1 to %struct.anon.10*
  %env = getelementptr inbounds %struct.anon.10, %struct.anon.10* %closure2, i32 0, i32 0
  %3 = load %struct.obj*, %struct.obj** %env, align 8
  ret %struct.obj* %3
}

; Function Attrs: nounwind uwtable
define internal void @ct_gc_scan(%struct.obj* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.obj*, align 8
  store %struct.obj* %ptr, %struct.obj** %ptr.addr, align 8
  %0 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as = getelementptr inbounds %struct.obj, %struct.obj* %0, i32 0, i32 2
  %cons = bitcast %union.anon* %storage_as to %struct.anon*
  %car = getelementptr inbounds %struct.anon, %struct.anon* %cons, i32 0, i32 0
  %1 = load %struct.obj*, %struct.obj** %car, align 8
  %call = call %struct.obj* @gc_relocate(%struct.obj* %1)
  %2 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as1 = getelementptr inbounds %struct.obj, %struct.obj* %2, i32 0, i32 2
  %cons2 = bitcast %union.anon* %storage_as1 to %struct.anon*
  %car3 = getelementptr inbounds %struct.anon, %struct.anon* %cons2, i32 0, i32 0
  store %struct.obj* %call, %struct.obj** %car3, align 8
  %3 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as4 = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %cons5 = bitcast %union.anon* %storage_as4 to %struct.anon*
  %cdr = getelementptr inbounds %struct.anon, %struct.anon* %cons5, i32 0, i32 1
  %4 = load %struct.obj*, %struct.obj** %cdr, align 8
  %call6 = call %struct.obj* @gc_relocate(%struct.obj* %4)
  %5 = load %struct.obj*, %struct.obj** %ptr.addr, align 8
  %storage_as7 = getelementptr inbounds %struct.obj, %struct.obj* %5, i32 0, i32 2
  %cons8 = bitcast %union.anon* %storage_as7 to %struct.anon*
  %cdr9 = getelementptr inbounds %struct.anon, %struct.anon* %cons8, i32 0, i32 1
  store %struct.obj* %call6, %struct.obj** %cdr9, align 8
  ret void
}

declare void @gc_protect_sym(%struct.obj**, i8*) #1

declare %struct.obj* @setvar(%struct.obj*, %struct.obj*, %struct.obj*) #1

declare void @set_print_hooks(i64, void (%struct.obj*, %struct.gen_printio*)*) #1

declare void @set_eval_hooks(i64, %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)*) #1

declare void @init_fsubr(i8*, %struct.obj* (%struct.obj*, %struct.obj*)*) #1

declare void @init_lsubr(i8*, %struct.obj* (%struct.obj*)*) #1

; Function Attrs: nounwind uwtable
define internal void @init_trace_version() #0 {
entry:
  %call = call %struct.obj* @cintern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0))
  %call1 = call %struct.obj* @cintern(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i32 0, i32 0))
  %call2 = call %struct.obj* @setvar(%struct.obj* %call, %struct.obj* %call1, %struct.obj* null)
  ret void
}

declare void @gc_mark(%struct.obj*) #1

declare %struct.obj* @gc_relocate(%struct.obj*) #1

declare %struct.obj* @cintern(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
