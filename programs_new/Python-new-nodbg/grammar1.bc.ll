; ModuleID = './grammar1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfa = type { i32, i8*, i32, i32, %struct.state*, i8* }
%struct.state = type { i32, %struct.arc*, i32, i32, i32*, i32 }
%struct.arc = type { i16, i16 }
%struct.grammar = type { i32, %struct.dfa*, %struct.labellist, i32, i32 }
%struct.labellist = type { i32, %struct.label* }
%struct.label = type { i32, i8* }

@PyGrammar_LabelRepr.buf = internal global [100 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [6 x i8] c"EMPTY\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NT%d\00", align 1
@_PyParser_TokenNames = external global [0 x i8*], align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"%.32s(%.32s)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"invalid label\00", align 1

; Function Attrs: nounwind uwtable
define %struct.dfa* @PyGrammar_FindDFA(%struct.grammar* %g, i32 %type) #0 {
entry:
  %g.addr = alloca %struct.grammar*, align 8
  %type.addr = alloca i32, align 4
  %d = alloca %struct.dfa*, align 8
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %sub = sub i32 %0, 256
  %idxprom = sext i32 %sub to i64
  %1 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_dfa = getelementptr inbounds %struct.grammar, %struct.grammar* %1, i32 0, i32 1
  %2 = load %struct.dfa*, %struct.dfa** %g_dfa, align 8
  %arrayidx = getelementptr %struct.dfa, %struct.dfa* %2, i64 %idxprom
  store %struct.dfa* %arrayidx, %struct.dfa** %d, align 8
  %3 = load %struct.dfa*, %struct.dfa** %d, align 8
  ret %struct.dfa* %3
}

; Function Attrs: nounwind uwtable
define i8* @PyGrammar_LabelRepr(%struct.label* %lb) #0 {
entry:
  %retval = alloca i8*, align 8
  %lb.addr = alloca %struct.label*, align 8
  store %struct.label* %lb, %struct.label** %lb.addr, align 8
  %0 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_type = getelementptr inbounds %struct.label, %struct.label* %0, i32 0, i32 0
  %1 = load i32, i32* %lb_type, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_type1 = getelementptr inbounds %struct.label, %struct.label* %2, i32 0, i32 0
  %3 = load i32, i32* %lb_type1, align 4
  %cmp2 = icmp sge i32 %3, 256
  br i1 %cmp2, label %if.then.3, label %if.else.9

if.then.3:                                        ; preds = %if.else
  %4 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str = getelementptr inbounds %struct.label, %struct.label* %4, i32 0, i32 1
  %5 = load i8*, i8** %lb_str, align 8
  %cmp4 = icmp eq i8* %5, null
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.then.3
  %6 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_type6 = getelementptr inbounds %struct.label, %struct.label* %6, i32 0, i32 0
  %7 = load i32, i32* %lb_type6, align 4
  %call = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @PyGrammar_LabelRepr.buf, i32 0, i32 0), i64 100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %7)
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @PyGrammar_LabelRepr.buf, i32 0, i32 0), i8** %retval
  br label %return

if.else.7:                                        ; preds = %if.then.3
  %8 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str8 = getelementptr inbounds %struct.label, %struct.label* %8, i32 0, i32 1
  %9 = load i8*, i8** %lb_str8, align 8
  store i8* %9, i8** %retval
  br label %return

if.else.9:                                        ; preds = %if.else
  %10 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_type10 = getelementptr inbounds %struct.label, %struct.label* %10, i32 0, i32 0
  %11 = load i32, i32* %lb_type10, align 4
  %cmp11 = icmp slt i32 %11, 54
  br i1 %cmp11, label %if.then.12, label %if.else.23

if.then.12:                                       ; preds = %if.else.9
  %12 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str13 = getelementptr inbounds %struct.label, %struct.label* %12, i32 0, i32 1
  %13 = load i8*, i8** %lb_str13, align 8
  %cmp14 = icmp eq i8* %13, null
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.then.12
  %14 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_type16 = getelementptr inbounds %struct.label, %struct.label* %14, i32 0, i32 0
  %15 = load i32, i32* %lb_type16, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr [0 x i8*], [0 x i8*]* @_PyParser_TokenNames, i32 0, i64 %idxprom
  %16 = load i8*, i8** %arrayidx, align 8
  store i8* %16, i8** %retval
  br label %return

if.else.17:                                       ; preds = %if.then.12
  %17 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_type18 = getelementptr inbounds %struct.label, %struct.label* %17, i32 0, i32 0
  %18 = load i32, i32* %lb_type18, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr [0 x i8*], [0 x i8*]* @_PyParser_TokenNames, i32 0, i64 %idxprom19
  %19 = load i8*, i8** %arrayidx20, align 8
  %20 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str21 = getelementptr inbounds %struct.label, %struct.label* %20, i32 0, i32 1
  %21 = load i8*, i8** %lb_str21, align 8
  %call22 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @PyGrammar_LabelRepr.buf, i32 0, i32 0), i64 100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* %19, i8* %21)
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @PyGrammar_LabelRepr.buf, i32 0, i32 0), i8** %retval
  br label %return

if.else.23:                                       ; preds = %if.else.9
  call void @Py_FatalError(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)) #3
  unreachable

return:                                           ; preds = %if.else.17, %if.then.15, %if.else.7, %if.then.5, %if.then
  %22 = load i8*, i8** %retval
  ret i8* %22
}

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
