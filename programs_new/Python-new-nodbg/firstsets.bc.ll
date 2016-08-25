; ModuleID = './firstsets.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.grammar = type { i32, %struct.dfa*, %struct.labellist, i32, i32 }
%struct.dfa = type { i32, i8*, i32, i32, %struct.state*, i8* }
%struct.state = type { i32, %struct.arc*, i32, i32, i32*, i32 }
%struct.arc = type { i16, i16 }
%struct.labellist = type { i32, %struct.label* }
%struct.label = type { i32, i8* }

@Py_DebugFlag = external global i32, align 4
@.str = private unnamed_addr constant [23 x i8] c"Adding FIRST sets ...\0A\00", align 1
@calcfirstset.dummy = internal global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Calculate FIRST set for '%s'\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Left-recursion for '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Re-calculating FIRST set for '%s' ???\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"no mem for new sym in calcfirstset\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"no mem to resize sym in calcfirstset\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Left-recursion below '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"FIRST set for '%s': {\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @_Py_addfirstsets(%struct.grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.grammar*, align 8
  %i = alloca i32, align 4
  %d = alloca %struct.dfa*, align 8
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  %0 = load i32, i32* @Py_DebugFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_ndfas = getelementptr inbounds %struct.grammar, %struct.grammar* %2, i32 0, i32 0
  %3 = load i32, i32* %g_ndfas, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_dfa = getelementptr inbounds %struct.grammar, %struct.grammar* %5, i32 0, i32 1
  %6 = load %struct.dfa*, %struct.dfa** %g_dfa, align 8
  %arrayidx = getelementptr %struct.dfa, %struct.dfa* %6, i64 %idxprom
  store %struct.dfa* %arrayidx, %struct.dfa** %d, align 8
  %7 = load %struct.dfa*, %struct.dfa** %d, align 8
  %d_first = getelementptr inbounds %struct.dfa, %struct.dfa* %7, i32 0, i32 5
  %8 = load i8*, i8** %d_first, align 8
  %cmp1 = icmp eq i8* %8, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %for.body
  %9 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %10 = load %struct.dfa*, %struct.dfa** %d, align 8
  call void @calcfirstset(%struct.grammar* %9, %struct.dfa* %10)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.3
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @calcfirstset(%struct.grammar* %g, %struct.dfa* %d) #0 {
entry:
  %g.addr = alloca %struct.grammar*, align 8
  %d.addr = alloca %struct.dfa*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca %struct.state*, align 8
  %a = alloca %struct.arc*, align 8
  %nsyms = alloca i32, align 4
  %sym = alloca i32*, align 8
  %nbits = alloca i32, align 4
  %result = alloca i8*, align 8
  %type = alloca i32, align 4
  %d1 = alloca %struct.dfa*, align 8
  %l0 = alloca %struct.label*, align 8
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  store %struct.dfa* %d, %struct.dfa** %d.addr, align 8
  %0 = load i32, i32* @Py_DebugFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_name = getelementptr inbounds %struct.dfa, %struct.dfa* %1, i32 0, i32 1
  %2 = load i8*, i8** %d_name, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** @calcfirstset.dummy, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %call2 = call i8* @_Py_newbitset(i32 1)
  store i8* %call2, i8** @calcfirstset.dummy, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %4 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_first = getelementptr inbounds %struct.dfa, %struct.dfa* %4, i32 0, i32 5
  %5 = load i8*, i8** %d_first, align 8
  %6 = load i8*, i8** @calcfirstset.dummy, align 8
  %cmp4 = icmp eq i8* %5, %6
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end.3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_name6 = getelementptr inbounds %struct.dfa, %struct.dfa* %8, i32 0, i32 1
  %9 = load i8*, i8** %d_name6, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* %9)
  br label %return

if.end.8:                                         ; preds = %if.end.3
  %10 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_first9 = getelementptr inbounds %struct.dfa, %struct.dfa* %10, i32 0, i32 5
  %11 = load i8*, i8** %d_first9, align 8
  %cmp10 = icmp ne i8* %11, null
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_name12 = getelementptr inbounds %struct.dfa, %struct.dfa* %13, i32 0, i32 1
  %14 = load i8*, i8** %d_name12, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0), i8* %14)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  %15 = load i8*, i8** @calcfirstset.dummy, align 8
  %16 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_first15 = getelementptr inbounds %struct.dfa, %struct.dfa* %16, i32 0, i32 5
  store i8* %15, i8** %d_first15, align 8
  %17 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_ll = getelementptr inbounds %struct.grammar, %struct.grammar* %17, i32 0, i32 2
  %ll_label = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll, i32 0, i32 1
  %18 = load %struct.label*, %struct.label** %ll_label, align 8
  store %struct.label* %18, %struct.label** %l0, align 8
  %19 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_ll16 = getelementptr inbounds %struct.grammar, %struct.grammar* %19, i32 0, i32 2
  %ll_nlabels = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll16, i32 0, i32 0
  %20 = load i32, i32* %ll_nlabels, align 4
  store i32 %20, i32* %nbits, align 4
  %21 = load i32, i32* %nbits, align 4
  %call17 = call i8* @_Py_newbitset(i32 %21)
  store i8* %call17, i8** %result, align 8
  %call18 = call i8* @PyObject_Malloc(i64 4)
  %22 = bitcast i8* %call18 to i32*
  store i32* %22, i32** %sym, align 8
  %23 = load i32*, i32** %sym, align 8
  %cmp19 = icmp eq i32* %23, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.14
  call void @Py_FatalError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0)) #3
  unreachable

if.end.21:                                        ; preds = %if.end.14
  store i32 1, i32* %nsyms, align 4
  %24 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_ll22 = getelementptr inbounds %struct.grammar, %struct.grammar* %24, i32 0, i32 2
  %25 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_type = getelementptr inbounds %struct.dfa, %struct.dfa* %25, i32 0, i32 0
  %26 = load i32, i32* %d_type, align 4
  %call23 = call i32 @_Py_findlabel(%struct.labellist* %g_ll22, i32 %26, i8* null)
  %27 = load i32*, i32** %sym, align 8
  %arrayidx = getelementptr i32, i32* %27, i64 0
  store i32 %call23, i32* %arrayidx, align 4
  %28 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_initial = getelementptr inbounds %struct.dfa, %struct.dfa* %28, i32 0, i32 2
  %29 = load i32, i32* %d_initial, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_state = getelementptr inbounds %struct.dfa, %struct.dfa* %30, i32 0, i32 4
  %31 = load %struct.state*, %struct.state** %d_state, align 8
  %arrayidx24 = getelementptr %struct.state, %struct.state* %31, i64 %idxprom
  store %struct.state* %arrayidx24, %struct.state** %s, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.81, %if.end.21
  %32 = load i32, i32* %i, align 4
  %33 = load %struct.state*, %struct.state** %s, align 8
  %s_narcs = getelementptr inbounds %struct.state, %struct.state* %33, i32 0, i32 0
  %34 = load i32, i32* %s_narcs, align 4
  %cmp25 = icmp slt i32 %32, %34
  br i1 %cmp25, label %for.body, label %for.end.83

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %35 to i64
  %36 = load %struct.state*, %struct.state** %s, align 8
  %s_arc = getelementptr inbounds %struct.state, %struct.state* %36, i32 0, i32 1
  %37 = load %struct.arc*, %struct.arc** %s_arc, align 8
  %arrayidx27 = getelementptr %struct.arc, %struct.arc* %37, i64 %idxprom26
  store %struct.arc* %arrayidx27, %struct.arc** %a, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %for.body
  %38 = load i32, i32* %j, align 4
  %39 = load i32, i32* %nsyms, align 4
  %cmp29 = icmp slt i32 %38, %39
  br i1 %cmp29, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.28
  %40 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %40 to i64
  %41 = load i32*, i32** %sym, align 8
  %arrayidx32 = getelementptr i32, i32* %41, i64 %idxprom31
  %42 = load i32, i32* %arrayidx32, align 4
  %43 = load %struct.arc*, %struct.arc** %a, align 8
  %a_lbl = getelementptr inbounds %struct.arc, %struct.arc* %43, i32 0, i32 0
  %44 = load i16, i16* %a_lbl, align 2
  %conv = sext i16 %44 to i32
  %cmp33 = icmp eq i32 %42, %conv
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.body.30
  br label %for.end

if.end.36:                                        ; preds = %for.body.30
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %45 = load i32, i32* %j, align 4
  %inc = add i32 %45, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.28

for.end:                                          ; preds = %if.then.35, %for.cond.28
  %46 = load i32, i32* %j, align 4
  %47 = load i32, i32* %nsyms, align 4
  %cmp37 = icmp sge i32 %46, %47
  br i1 %cmp37, label %if.then.39, label %if.end.80

if.then.39:                                       ; preds = %for.end
  %48 = load i32*, i32** %sym, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = load i32, i32* %nsyms, align 4
  %add = add i32 %50, 1
  %conv40 = sext i32 %add to i64
  %mul = mul i64 4, %conv40
  %call41 = call i8* @PyObject_Realloc(i8* %49, i64 %mul)
  %51 = bitcast i8* %call41 to i32*
  store i32* %51, i32** %sym, align 8
  %52 = load i32*, i32** %sym, align 8
  %cmp42 = icmp eq i32* %52, null
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.39
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0)) #3
  unreachable

if.end.45:                                        ; preds = %if.then.39
  %53 = load %struct.arc*, %struct.arc** %a, align 8
  %a_lbl46 = getelementptr inbounds %struct.arc, %struct.arc* %53, i32 0, i32 0
  %54 = load i16, i16* %a_lbl46, align 2
  %conv47 = sext i16 %54 to i32
  %55 = load i32, i32* %nsyms, align 4
  %inc48 = add i32 %55, 1
  store i32 %inc48, i32* %nsyms, align 4
  %idxprom49 = sext i32 %55 to i64
  %56 = load i32*, i32** %sym, align 8
  %arrayidx50 = getelementptr i32, i32* %56, i64 %idxprom49
  store i32 %conv47, i32* %arrayidx50, align 4
  %57 = load %struct.arc*, %struct.arc** %a, align 8
  %a_lbl51 = getelementptr inbounds %struct.arc, %struct.arc* %57, i32 0, i32 0
  %58 = load i16, i16* %a_lbl51, align 2
  %idxprom52 = sext i16 %58 to i64
  %59 = load %struct.label*, %struct.label** %l0, align 8
  %arrayidx53 = getelementptr %struct.label, %struct.label* %59, i64 %idxprom52
  %lb_type = getelementptr inbounds %struct.label, %struct.label* %arrayidx53, i32 0, i32 0
  %60 = load i32, i32* %lb_type, align 4
  store i32 %60, i32* %type, align 4
  %61 = load i32, i32* %type, align 4
  %cmp54 = icmp sge i32 %61, 256
  br i1 %cmp54, label %if.then.56, label %if.else.71

if.then.56:                                       ; preds = %if.end.45
  %62 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %63 = load i32, i32* %type, align 4
  %call57 = call %struct.dfa* @PyGrammar_FindDFA(%struct.grammar* %62, i32 %63)
  store %struct.dfa* %call57, %struct.dfa** %d1, align 8
  %64 = load %struct.dfa*, %struct.dfa** %d1, align 8
  %d_first58 = getelementptr inbounds %struct.dfa, %struct.dfa* %64, i32 0, i32 5
  %65 = load i8*, i8** %d_first58, align 8
  %66 = load i8*, i8** @calcfirstset.dummy, align 8
  %cmp59 = icmp eq i8* %65, %66
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %if.then.56
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %68 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_name62 = getelementptr inbounds %struct.dfa, %struct.dfa* %68, i32 0, i32 1
  %69 = load i8*, i8** %d_name62, align 8
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* %69)
  br label %if.end.70

if.else:                                          ; preds = %if.then.56
  %70 = load %struct.dfa*, %struct.dfa** %d1, align 8
  %d_first64 = getelementptr inbounds %struct.dfa, %struct.dfa* %70, i32 0, i32 5
  %71 = load i8*, i8** %d_first64, align 8
  %cmp65 = icmp eq i8* %71, null
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.else
  %72 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %73 = load %struct.dfa*, %struct.dfa** %d1, align 8
  call void @calcfirstset(%struct.grammar* %72, %struct.dfa* %73)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.else
  %74 = load i8*, i8** %result, align 8
  %75 = load %struct.dfa*, %struct.dfa** %d1, align 8
  %d_first69 = getelementptr inbounds %struct.dfa, %struct.dfa* %75, i32 0, i32 5
  %76 = load i8*, i8** %d_first69, align 8
  %77 = load i32, i32* %nbits, align 4
  call void @_Py_mergebitset(i8* %74, i8* %76, i32 %77)
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.68, %if.then.61
  br label %if.end.79

if.else.71:                                       ; preds = %if.end.45
  %78 = load i32, i32* %type, align 4
  %cmp72 = icmp slt i32 %78, 256
  br i1 %cmp72, label %if.then.74, label %if.end.78

if.then.74:                                       ; preds = %if.else.71
  %79 = load i8*, i8** %result, align 8
  %80 = load %struct.arc*, %struct.arc** %a, align 8
  %a_lbl75 = getelementptr inbounds %struct.arc, %struct.arc* %80, i32 0, i32 0
  %81 = load i16, i16* %a_lbl75, align 2
  %conv76 = sext i16 %81 to i32
  %call77 = call i32 @_Py_addbit(i8* %79, i32 %conv76)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.74, %if.else.71
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.70
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %for.end
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.80
  %82 = load i32, i32* %i, align 4
  %inc82 = add i32 %82, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond

for.end.83:                                       ; preds = %for.cond
  %83 = load i8*, i8** %result, align 8
  %84 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_first84 = getelementptr inbounds %struct.dfa, %struct.dfa* %84, i32 0, i32 5
  store i8* %83, i8** %d_first84, align 8
  %85 = load i32, i32* @Py_DebugFlag, align 4
  %tobool85 = icmp ne i32 %85, 0
  br i1 %tobool85, label %if.then.86, label %if.end.109

if.then.86:                                       ; preds = %for.end.83
  %86 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_name87 = getelementptr inbounds %struct.dfa, %struct.dfa* %86, i32 0, i32 1
  %87 = load i8*, i8** %d_name87, align 8
  %call88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* %87)
  store i32 0, i32* %i, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.105, %if.then.86
  %88 = load i32, i32* %i, align 4
  %89 = load i32, i32* %nbits, align 4
  %cmp90 = icmp slt i32 %88, %89
  br i1 %cmp90, label %for.body.92, label %for.end.107

for.body.92:                                      ; preds = %for.cond.89
  %90 = load i32, i32* %i, align 4
  %conv93 = sext i32 %90 to i64
  %div = udiv i64 %conv93, 8
  %91 = load i8*, i8** %result, align 8
  %arrayidx94 = getelementptr i8, i8* %91, i64 %div
  %92 = load i8, i8* %arrayidx94, align 1
  %conv95 = sext i8 %92 to i32
  %93 = load i32, i32* %i, align 4
  %conv96 = sext i32 %93 to i64
  %rem = urem i64 %conv96, 8
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and = and i32 %conv95, %shl
  %cmp97 = icmp ne i32 %and, 0
  br i1 %cmp97, label %if.then.99, label %if.end.104

if.then.99:                                       ; preds = %for.body.92
  %94 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %94 to i64
  %95 = load %struct.label*, %struct.label** %l0, align 8
  %arrayidx101 = getelementptr %struct.label, %struct.label* %95, i64 %idxprom100
  %call102 = call i8* @PyGrammar_LabelRepr(%struct.label* %arrayidx101)
  %call103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %call102)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.99, %for.body.92
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %96 = load i32, i32* %i, align 4
  %inc106 = add i32 %96, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond.89

for.end.107:                                      ; preds = %for.cond.89
  %call108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.109

if.end.109:                                       ; preds = %for.end.107, %for.end.83
  %97 = load i32*, i32** %sym, align 8
  %98 = bitcast i32* %97 to i8*
  call void @PyObject_Free(i8* %98)
  br label %return

return:                                           ; preds = %if.end.109, %if.then.5
  ret void
}

declare i8* @_Py_newbitset(i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @PyObject_Malloc(i64) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

declare i32 @_Py_findlabel(%struct.labellist*, i32, i8*) #1

declare i8* @PyObject_Realloc(i8*, i64) #1

declare %struct.dfa* @PyGrammar_FindDFA(%struct.grammar*, i32) #1

declare void @_Py_mergebitset(i8*, i8*, i32) #1

declare i32 @_Py_addbit(i8*, i32) #1

declare i8* @PyGrammar_LabelRepr(%struct.label*) #1

declare void @PyObject_Free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
