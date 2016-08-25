; ModuleID = './grammar.bc'
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

@.str = private unnamed_addr constant [23 x i8] c"no mem for new grammar\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"no mem to resize dfa in adddfa\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"no mem to resize state in addstate\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"no mem to resize arc list in addarc\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"no mem to resize labellist in addlabel\00", align 1
@Py_DebugFlag = external global i32, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Label @ %8p, %d: %s\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"Label %d/'%s' not found\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"grammar.c:findlabel()\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Translating label %s ...\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Label %s is non-terminal %d.\0A\00", align 1
@_PyParser_TokenNames = external global [0 x i8*], align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"Label %s is terminal %d.\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Can't translate NAME label '%s'\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Label %s is a keyword\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Can't alloc dest '%s'\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Unknown OP label %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Can't translate STRING label %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Can't translate label '%s'\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.grammar* @_Py_newgrammar(i32 %start) #0 {
entry:
  %start.addr = alloca i32, align 4
  %g = alloca %struct.grammar*, align 8
  store i32 %start, i32* %start.addr, align 4
  %call = call i8* @PyObject_Malloc(i64 40)
  %0 = bitcast i8* %call to %struct.grammar*
  store %struct.grammar* %0, %struct.grammar** %g, align 8
  %1 = load %struct.grammar*, %struct.grammar** %g, align 8
  %cmp = icmp eq %struct.grammar* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.grammar*, %struct.grammar** %g, align 8
  %g_ndfas = getelementptr inbounds %struct.grammar, %struct.grammar* %2, i32 0, i32 0
  store i32 0, i32* %g_ndfas, align 4
  %3 = load %struct.grammar*, %struct.grammar** %g, align 8
  %g_dfa = getelementptr inbounds %struct.grammar, %struct.grammar* %3, i32 0, i32 1
  store %struct.dfa* null, %struct.dfa** %g_dfa, align 8
  %4 = load i32, i32* %start.addr, align 4
  %5 = load %struct.grammar*, %struct.grammar** %g, align 8
  %g_start = getelementptr inbounds %struct.grammar, %struct.grammar* %5, i32 0, i32 3
  store i32 %4, i32* %g_start, align 4
  %6 = load %struct.grammar*, %struct.grammar** %g, align 8
  %g_ll = getelementptr inbounds %struct.grammar, %struct.grammar* %6, i32 0, i32 2
  %ll_nlabels = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll, i32 0, i32 0
  store i32 0, i32* %ll_nlabels, align 4
  %7 = load %struct.grammar*, %struct.grammar** %g, align 8
  %g_ll1 = getelementptr inbounds %struct.grammar, %struct.grammar* %7, i32 0, i32 2
  %ll_label = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll1, i32 0, i32 1
  store %struct.label* null, %struct.label** %ll_label, align 8
  %8 = load %struct.grammar*, %struct.grammar** %g, align 8
  %g_accel = getelementptr inbounds %struct.grammar, %struct.grammar* %8, i32 0, i32 4
  store i32 0, i32* %g_accel, align 4
  %9 = load %struct.grammar*, %struct.grammar** %g, align 8
  ret %struct.grammar* %9
}

declare i8* @PyObject_Malloc(i64) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.dfa* @_Py_adddfa(%struct.grammar* %g, i32 %type, i8* %name) #0 {
entry:
  %g.addr = alloca %struct.grammar*, align 8
  %type.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %d = alloca %struct.dfa*, align 8
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_dfa = getelementptr inbounds %struct.grammar, %struct.grammar* %0, i32 0, i32 1
  %1 = load %struct.dfa*, %struct.dfa** %g_dfa, align 8
  %2 = bitcast %struct.dfa* %1 to i8*
  %3 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_ndfas = getelementptr inbounds %struct.grammar, %struct.grammar* %3, i32 0, i32 0
  %4 = load i32, i32* %g_ndfas, align 4
  %add = add i32 %4, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 40, %conv
  %call = call i8* @PyObject_Realloc(i8* %2, i64 %mul)
  %5 = bitcast i8* %call to %struct.dfa*
  %6 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_dfa1 = getelementptr inbounds %struct.grammar, %struct.grammar* %6, i32 0, i32 1
  store %struct.dfa* %5, %struct.dfa** %g_dfa1, align 8
  %7 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_dfa2 = getelementptr inbounds %struct.grammar, %struct.grammar* %7, i32 0, i32 1
  %8 = load %struct.dfa*, %struct.dfa** %g_dfa2, align 8
  %cmp = icmp eq %struct.dfa* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %9 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_ndfas4 = getelementptr inbounds %struct.grammar, %struct.grammar* %9, i32 0, i32 0
  %10 = load i32, i32* %g_ndfas4, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %g_ndfas4, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_dfa5 = getelementptr inbounds %struct.grammar, %struct.grammar* %11, i32 0, i32 1
  %12 = load %struct.dfa*, %struct.dfa** %g_dfa5, align 8
  %arrayidx = getelementptr %struct.dfa, %struct.dfa* %12, i64 %idxprom
  store %struct.dfa* %arrayidx, %struct.dfa** %d, align 8
  %13 = load i32, i32* %type.addr, align 4
  %14 = load %struct.dfa*, %struct.dfa** %d, align 8
  %d_type = getelementptr inbounds %struct.dfa, %struct.dfa* %14, i32 0, i32 0
  store i32 %13, i32* %d_type, align 4
  %15 = load i8*, i8** %name.addr, align 8
  %call6 = call noalias i8* @strdup(i8* %15) #7
  %16 = load %struct.dfa*, %struct.dfa** %d, align 8
  %d_name = getelementptr inbounds %struct.dfa, %struct.dfa* %16, i32 0, i32 1
  store i8* %call6, i8** %d_name, align 8
  %17 = load %struct.dfa*, %struct.dfa** %d, align 8
  %d_nstates = getelementptr inbounds %struct.dfa, %struct.dfa* %17, i32 0, i32 3
  store i32 0, i32* %d_nstates, align 4
  %18 = load %struct.dfa*, %struct.dfa** %d, align 8
  %d_state = getelementptr inbounds %struct.dfa, %struct.dfa* %18, i32 0, i32 4
  store %struct.state* null, %struct.state** %d_state, align 8
  %19 = load %struct.dfa*, %struct.dfa** %d, align 8
  %d_initial = getelementptr inbounds %struct.dfa, %struct.dfa* %19, i32 0, i32 2
  store i32 -1, i32* %d_initial, align 4
  %20 = load %struct.dfa*, %struct.dfa** %d, align 8
  %d_first = getelementptr inbounds %struct.dfa, %struct.dfa* %20, i32 0, i32 5
  store i8* null, i8** %d_first, align 8
  %21 = load %struct.dfa*, %struct.dfa** %d, align 8
  ret %struct.dfa* %21
}

declare i8* @PyObject_Realloc(i8*, i64) #1

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @_Py_addstate(%struct.dfa* %d) #0 {
entry:
  %d.addr = alloca %struct.dfa*, align 8
  %s = alloca %struct.state*, align 8
  store %struct.dfa* %d, %struct.dfa** %d.addr, align 8
  %0 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_state = getelementptr inbounds %struct.dfa, %struct.dfa* %0, i32 0, i32 4
  %1 = load %struct.state*, %struct.state** %d_state, align 8
  %2 = bitcast %struct.state* %1 to i8*
  %3 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_nstates = getelementptr inbounds %struct.dfa, %struct.dfa* %3, i32 0, i32 3
  %4 = load i32, i32* %d_nstates, align 4
  %add = add i32 %4, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 40, %conv
  %call = call i8* @PyObject_Realloc(i8* %2, i64 %mul)
  %5 = bitcast i8* %call to %struct.state*
  %6 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_state1 = getelementptr inbounds %struct.dfa, %struct.dfa* %6, i32 0, i32 4
  store %struct.state* %5, %struct.state** %d_state1, align 8
  %7 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_state2 = getelementptr inbounds %struct.dfa, %struct.dfa* %7, i32 0, i32 4
  %8 = load %struct.state*, %struct.state** %d_state2, align 8
  %cmp = icmp eq %struct.state* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %9 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_nstates4 = getelementptr inbounds %struct.dfa, %struct.dfa* %9, i32 0, i32 3
  %10 = load i32, i32* %d_nstates4, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %d_nstates4, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_state5 = getelementptr inbounds %struct.dfa, %struct.dfa* %11, i32 0, i32 4
  %12 = load %struct.state*, %struct.state** %d_state5, align 8
  %arrayidx = getelementptr %struct.state, %struct.state* %12, i64 %idxprom
  store %struct.state* %arrayidx, %struct.state** %s, align 8
  %13 = load %struct.state*, %struct.state** %s, align 8
  %s_narcs = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 0
  store i32 0, i32* %s_narcs, align 4
  %14 = load %struct.state*, %struct.state** %s, align 8
  %s_arc = getelementptr inbounds %struct.state, %struct.state* %14, i32 0, i32 1
  store %struct.arc* null, %struct.arc** %s_arc, align 8
  %15 = load %struct.state*, %struct.state** %s, align 8
  %s_lower = getelementptr inbounds %struct.state, %struct.state* %15, i32 0, i32 2
  store i32 0, i32* %s_lower, align 4
  %16 = load %struct.state*, %struct.state** %s, align 8
  %s_upper = getelementptr inbounds %struct.state, %struct.state* %16, i32 0, i32 3
  store i32 0, i32* %s_upper, align 4
  %17 = load %struct.state*, %struct.state** %s, align 8
  %s_accel = getelementptr inbounds %struct.state, %struct.state* %17, i32 0, i32 4
  store i32* null, i32** %s_accel, align 8
  %18 = load %struct.state*, %struct.state** %s, align 8
  %s_accept = getelementptr inbounds %struct.state, %struct.state* %18, i32 0, i32 5
  store i32 0, i32* %s_accept, align 4
  %19 = load %struct.state*, %struct.state** %s, align 8
  %20 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_state6 = getelementptr inbounds %struct.dfa, %struct.dfa* %20, i32 0, i32 4
  %21 = load %struct.state*, %struct.state** %d_state6, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.state* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.state* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  %conv7 = trunc i64 %sub.ptr.div to i32
  ret i32 %conv7
}

; Function Attrs: nounwind uwtable
define void @_Py_addarc(%struct.dfa* %d, i32 %from, i32 %to, i32 %lbl) #0 {
entry:
  %d.addr = alloca %struct.dfa*, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %lbl.addr = alloca i32, align 4
  %s = alloca %struct.state*, align 8
  %a = alloca %struct.arc*, align 8
  store %struct.dfa* %d, %struct.dfa** %d.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  store i32 %lbl, i32* %lbl.addr, align 4
  %0 = load i32, i32* %from.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_state = getelementptr inbounds %struct.dfa, %struct.dfa* %1, i32 0, i32 4
  %2 = load %struct.state*, %struct.state** %d_state, align 8
  %arrayidx = getelementptr %struct.state, %struct.state* %2, i64 %idxprom
  store %struct.state* %arrayidx, %struct.state** %s, align 8
  %3 = load %struct.state*, %struct.state** %s, align 8
  %s_arc = getelementptr inbounds %struct.state, %struct.state* %3, i32 0, i32 1
  %4 = load %struct.arc*, %struct.arc** %s_arc, align 8
  %5 = bitcast %struct.arc* %4 to i8*
  %6 = load %struct.state*, %struct.state** %s, align 8
  %s_narcs = getelementptr inbounds %struct.state, %struct.state* %6, i32 0, i32 0
  %7 = load i32, i32* %s_narcs, align 4
  %add = add i32 %7, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 4, %conv
  %call = call i8* @PyObject_Realloc(i8* %5, i64 %mul)
  %8 = bitcast i8* %call to %struct.arc*
  %9 = load %struct.state*, %struct.state** %s, align 8
  %s_arc1 = getelementptr inbounds %struct.state, %struct.state* %9, i32 0, i32 1
  store %struct.arc* %8, %struct.arc** %s_arc1, align 8
  %10 = load %struct.state*, %struct.state** %s, align 8
  %s_arc2 = getelementptr inbounds %struct.state, %struct.state* %10, i32 0, i32 1
  %11 = load %struct.arc*, %struct.arc** %s_arc2, align 8
  %cmp = icmp eq %struct.arc* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %12 = load %struct.state*, %struct.state** %s, align 8
  %s_narcs4 = getelementptr inbounds %struct.state, %struct.state* %12, i32 0, i32 0
  %13 = load i32, i32* %s_narcs4, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %s_narcs4, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct.state*, %struct.state** %s, align 8
  %s_arc6 = getelementptr inbounds %struct.state, %struct.state* %14, i32 0, i32 1
  %15 = load %struct.arc*, %struct.arc** %s_arc6, align 8
  %arrayidx7 = getelementptr %struct.arc, %struct.arc* %15, i64 %idxprom5
  store %struct.arc* %arrayidx7, %struct.arc** %a, align 8
  %16 = load i32, i32* %lbl.addr, align 4
  %conv8 = trunc i32 %16 to i16
  %17 = load %struct.arc*, %struct.arc** %a, align 8
  %a_lbl = getelementptr inbounds %struct.arc, %struct.arc* %17, i32 0, i32 0
  store i16 %conv8, i16* %a_lbl, align 2
  %18 = load i32, i32* %to.addr, align 4
  %conv9 = trunc i32 %18 to i16
  %19 = load %struct.arc*, %struct.arc** %a, align 8
  %a_arrow = getelementptr inbounds %struct.arc, %struct.arc* %19, i32 0, i32 1
  store i16 %conv9, i16* %a_arrow, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_Py_addlabel(%struct.labellist* %ll, i32 %type, i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %ll.addr = alloca %struct.labellist*, align 8
  %type.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %lb = alloca %struct.label*, align 8
  store %struct.labellist* %ll, %struct.labellist** %ll.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %ll_nlabels = getelementptr inbounds %struct.labellist, %struct.labellist* %1, i32 0, i32 0
  %2 = load i32, i32* %ll_nlabels, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %ll_label = getelementptr inbounds %struct.labellist, %struct.labellist* %4, i32 0, i32 1
  %5 = load %struct.label*, %struct.label** %ll_label, align 8
  %arrayidx = getelementptr %struct.label, %struct.label* %5, i64 %idxprom
  %lb_type = getelementptr inbounds %struct.label, %struct.label* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %lb_type, align 4
  %7 = load i32, i32* %type.addr, align 4
  %cmp1 = icmp eq i32 %6, %7
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %ll_label3 = getelementptr inbounds %struct.labellist, %struct.labellist* %9, i32 0, i32 1
  %10 = load %struct.label*, %struct.label** %ll_label3, align 8
  %arrayidx4 = getelementptr %struct.label, %struct.label* %10, i64 %idxprom2
  %lb_str = getelementptr inbounds %struct.label, %struct.label* %arrayidx4, i32 0, i32 1
  %11 = load i8*, i8** %lb_str, align 8
  %12 = load i8*, i8** %str.addr, align 8
  %call = call i32 @strcmp(i8* %11, i8* %12) #8
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load i32, i32* %i, align 4
  store i32 %13, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %ll_label6 = getelementptr inbounds %struct.labellist, %struct.labellist* %15, i32 0, i32 1
  %16 = load %struct.label*, %struct.label** %ll_label6, align 8
  %17 = bitcast %struct.label* %16 to i8*
  %18 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %ll_nlabels7 = getelementptr inbounds %struct.labellist, %struct.labellist* %18, i32 0, i32 0
  %19 = load i32, i32* %ll_nlabels7, align 4
  %add = add i32 %19, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 16, %conv
  %call8 = call i8* @PyObject_Realloc(i8* %17, i64 %mul)
  %20 = bitcast i8* %call8 to %struct.label*
  %21 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %ll_label9 = getelementptr inbounds %struct.labellist, %struct.labellist* %21, i32 0, i32 1
  store %struct.label* %20, %struct.label** %ll_label9, align 8
  %22 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %ll_label10 = getelementptr inbounds %struct.labellist, %struct.labellist* %22, i32 0, i32 1
  %23 = load %struct.label*, %struct.label** %ll_label10, align 8
  %cmp11 = icmp eq %struct.label* %23, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.end
  call void @Py_FatalError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0)) #6
  unreachable

if.end.14:                                        ; preds = %for.end
  %24 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %ll_nlabels15 = getelementptr inbounds %struct.labellist, %struct.labellist* %24, i32 0, i32 0
  %25 = load i32, i32* %ll_nlabels15, align 4
  %inc16 = add i32 %25, 1
  store i32 %inc16, i32* %ll_nlabels15, align 4
  %idxprom17 = sext i32 %25 to i64
  %26 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %ll_label18 = getelementptr inbounds %struct.labellist, %struct.labellist* %26, i32 0, i32 1
  %27 = load %struct.label*, %struct.label** %ll_label18, align 8
  %arrayidx19 = getelementptr %struct.label, %struct.label* %27, i64 %idxprom17
  store %struct.label* %arrayidx19, %struct.label** %lb, align 8
  %28 = load i32, i32* %type.addr, align 4
  %29 = load %struct.label*, %struct.label** %lb, align 8
  %lb_type20 = getelementptr inbounds %struct.label, %struct.label* %29, i32 0, i32 0
  store i32 %28, i32* %lb_type20, align 4
  %30 = load i8*, i8** %str.addr, align 8
  %call21 = call noalias i8* @strdup(i8* %30) #7
  %31 = load %struct.label*, %struct.label** %lb, align 8
  %lb_str22 = getelementptr inbounds %struct.label, %struct.label* %31, i32 0, i32 1
  store i8* %call21, i8** %lb_str22, align 8
  %32 = load i32, i32* @Py_DebugFlag, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.end.14
  %33 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %34 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %ll_nlabels24 = getelementptr inbounds %struct.labellist, %struct.labellist* %34, i32 0, i32 0
  %35 = load i32, i32* %ll_nlabels24, align 4
  %36 = load %struct.label*, %struct.label** %lb, align 8
  %call25 = call i8* @PyGrammar_LabelRepr(%struct.label* %36)
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), %struct.labellist* %33, i32 %35, i8* %call25)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.end.14
  %37 = load %struct.label*, %struct.label** %lb, align 8
  %38 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %ll_label28 = getelementptr inbounds %struct.labellist, %struct.labellist* %38, i32 0, i32 1
  %39 = load %struct.label*, %struct.label** %ll_label28, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.label* %37 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.label* %39 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv29 = trunc i64 %sub.ptr.div to i32
  store i32 %conv29, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @printf(i8*, ...) #1

declare i8* @PyGrammar_LabelRepr(%struct.label*) #1

; Function Attrs: nounwind uwtable
define i32 @_Py_findlabel(%struct.labellist* %ll, i32 %type, i8* %str) #0 {
entry:
  %ll.addr = alloca %struct.labellist*, align 8
  %type.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.labellist* %ll, %struct.labellist** %ll.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %ll_nlabels = getelementptr inbounds %struct.labellist, %struct.labellist* %1, i32 0, i32 0
  %2 = load i32, i32* %ll_nlabels, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.labellist*, %struct.labellist** %ll.addr, align 8
  %ll_label = getelementptr inbounds %struct.labellist, %struct.labellist* %4, i32 0, i32 1
  %5 = load %struct.label*, %struct.label** %ll_label, align 8
  %arrayidx = getelementptr %struct.label, %struct.label* %5, i64 %idxprom
  %lb_type = getelementptr inbounds %struct.label, %struct.label* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %lb_type, align 4
  %7 = load i32, i32* %type.addr, align 4
  %cmp1 = icmp eq i32 %6, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  ret i32 %8

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i32, i32* %type.addr, align 4
  %12 = load i8*, i8** %str.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i32 %11, i8* %12)
  call void @Py_FatalError(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)) #6
  unreachable
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @_Py_translatelabels(%struct.grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.grammar*, align 8
  %i = alloca i32, align 4
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_ll = getelementptr inbounds %struct.grammar, %struct.grammar* %1, i32 0, i32 2
  %ll_nlabels = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll, i32 0, i32 0
  %2 = load i32, i32* %ll_nlabels, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_ll1 = getelementptr inbounds %struct.grammar, %struct.grammar* %5, i32 0, i32 2
  %ll_label = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll1, i32 0, i32 1
  %6 = load %struct.label*, %struct.label** %ll_label, align 8
  %arrayidx = getelementptr %struct.label, %struct.label* %6, i64 %idxprom
  call void @translabel(%struct.grammar* %3, %struct.label* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @translabel(%struct.grammar* %g, %struct.label* %lb) #0 {
entry:
  %g.addr = alloca %struct.grammar*, align 8
  %lb.addr = alloca %struct.label*, align 8
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %name_len = alloca i64, align 8
  %type = alloca i32, align 4
  %type125 = alloca i32, align 4
  %type163 = alloca i32, align 4
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  store %struct.label* %lb, %struct.label** %lb.addr, align 8
  %0 = load i32, i32* @Py_DebugFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.label*, %struct.label** %lb.addr, align 8
  %call = call i8* @PyGrammar_LabelRepr(%struct.label* %1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_type = getelementptr inbounds %struct.label, %struct.label* %2, i32 0, i32 0
  %3 = load i32, i32* %lb_type, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then.2, label %if.end.46

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_ndfas = getelementptr inbounds %struct.grammar, %struct.grammar* %5, i32 0, i32 0
  %6 = load i32, i32* %g_ndfas, align 4
  %cmp3 = icmp slt i32 %4, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str = getelementptr inbounds %struct.label, %struct.label* %7, i32 0, i32 1
  %8 = load i8*, i8** %lb_str, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_dfa = getelementptr inbounds %struct.grammar, %struct.grammar* %10, i32 0, i32 1
  %11 = load %struct.dfa*, %struct.dfa** %g_dfa, align 8
  %arrayidx = getelementptr %struct.dfa, %struct.dfa* %11, i64 %idxprom
  %d_name = getelementptr inbounds %struct.dfa, %struct.dfa* %arrayidx, i32 0, i32 1
  %12 = load i8*, i8** %d_name, align 8
  %call4 = call i32 @strcmp(i8* %8, i8* %12) #8
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.22

if.then.6:                                        ; preds = %for.body
  %13 = load i32, i32* @Py_DebugFlag, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.then.6
  %14 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str9 = getelementptr inbounds %struct.label, %struct.label* %14, i32 0, i32 1
  %15 = load i8*, i8** %lb_str9, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_dfa11 = getelementptr inbounds %struct.grammar, %struct.grammar* %17, i32 0, i32 1
  %18 = load %struct.dfa*, %struct.dfa** %g_dfa11, align 8
  %arrayidx12 = getelementptr %struct.dfa, %struct.dfa* %18, i64 %idxprom10
  %d_type = getelementptr inbounds %struct.dfa, %struct.dfa* %arrayidx12, i32 0, i32 0
  %19 = load i32, i32* %d_type, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i8* %15, i32 %19)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.8, %if.then.6
  %20 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %20 to i64
  %21 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_dfa16 = getelementptr inbounds %struct.grammar, %struct.grammar* %21, i32 0, i32 1
  %22 = load %struct.dfa*, %struct.dfa** %g_dfa16, align 8
  %arrayidx17 = getelementptr %struct.dfa, %struct.dfa* %22, i64 %idxprom15
  %d_type18 = getelementptr inbounds %struct.dfa, %struct.dfa* %arrayidx17, i32 0, i32 0
  %23 = load i32, i32* %d_type18, align 4
  %24 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_type19 = getelementptr inbounds %struct.label, %struct.label* %24, i32 0, i32 0
  store i32 %23, i32* %lb_type19, align 4
  %25 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str20 = getelementptr inbounds %struct.label, %struct.label* %25, i32 0, i32 1
  %26 = load i8*, i8** %lb_str20, align 8
  call void @free(i8* %26) #7
  %27 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str21 = getelementptr inbounds %struct.label, %struct.label* %27, i32 0, i32 1
  store i8* null, i8** %lb_str21, align 8
  br label %if.end.194

if.end.22:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %28 = load i32, i32* %i, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.41, %for.end
  %29 = load i32, i32* %i, align 4
  %cmp24 = icmp slt i32 %29, 54
  br i1 %cmp24, label %for.body.25, label %for.end.43

for.body.25:                                      ; preds = %for.cond.23
  %30 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str26 = getelementptr inbounds %struct.label, %struct.label* %30, i32 0, i32 1
  %31 = load i8*, i8** %lb_str26, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %32 to i64
  %arrayidx28 = getelementptr [0 x i8*], [0 x i8*]* @_PyParser_TokenNames, i32 0, i64 %idxprom27
  %33 = load i8*, i8** %arrayidx28, align 8
  %call29 = call i32 @strcmp(i8* %31, i8* %33) #8
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.40

if.then.31:                                       ; preds = %for.body.25
  %34 = load i32, i32* @Py_DebugFlag, align 4
  %tobool32 = icmp ne i32 %34, 0
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.then.31
  %35 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str34 = getelementptr inbounds %struct.label, %struct.label* %35, i32 0, i32 1
  %36 = load i8*, i8** %lb_str34, align 8
  %37 = load i32, i32* %i, align 4
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0), i8* %36, i32 %37)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.then.31
  %38 = load i32, i32* %i, align 4
  %39 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_type37 = getelementptr inbounds %struct.label, %struct.label* %39, i32 0, i32 0
  store i32 %38, i32* %lb_type37, align 4
  %40 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str38 = getelementptr inbounds %struct.label, %struct.label* %40, i32 0, i32 1
  %41 = load i8*, i8** %lb_str38, align 8
  call void @free(i8* %41) #7
  %42 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str39 = getelementptr inbounds %struct.label, %struct.label* %42, i32 0, i32 1
  store i8* null, i8** %lb_str39, align 8
  br label %if.end.194

if.end.40:                                        ; preds = %for.body.25
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %43 = load i32, i32* %i, align 4
  %inc42 = add i32 %43, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond.23

for.end.43:                                       ; preds = %for.cond.23
  %44 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str44 = getelementptr inbounds %struct.label, %struct.label* %44, i32 0, i32 1
  %45 = load i8*, i8** %lb_str44, align 8
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0), i8* %45)
  br label %if.end.194

if.end.46:                                        ; preds = %if.end
  %46 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_type47 = getelementptr inbounds %struct.label, %struct.label* %46, i32 0, i32 0
  %47 = load i32, i32* %lb_type47, align 4
  %cmp48 = icmp eq i32 %47, 3
  br i1 %cmp48, label %if.then.49, label %if.else.191

if.then.49:                                       ; preds = %if.end.46
  %48 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str50 = getelementptr inbounds %struct.label, %struct.label* %48, i32 0, i32 1
  %49 = load i8*, i8** %lb_str50, align 8
  %arrayidx51 = getelementptr i8, i8* %49, i64 1
  %50 = load i8, i8* %arrayidx51, align 1
  %conv = sext i8 %50 to i32
  %and = and i32 %conv, 255
  %conv52 = trunc i32 %and to i8
  %conv53 = zext i8 %conv52 to i32
  %idxprom54 = sext i32 %conv53 to i64
  %call55 = call i16** @__ctype_b_loc() #9
  %51 = load i16*, i16** %call55, align 8
  %arrayidx56 = getelementptr i16, i16* %51, i64 %idxprom54
  %52 = load i16, i16* %arrayidx56, align 2
  %conv57 = zext i16 %52 to i32
  %and58 = and i32 %conv57, 1024
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.then.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.49
  %53 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str60 = getelementptr inbounds %struct.label, %struct.label* %53, i32 0, i32 1
  %54 = load i8*, i8** %lb_str60, align 8
  %arrayidx61 = getelementptr i8, i8* %54, i64 1
  %55 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %55 to i32
  %cmp63 = icmp eq i32 %conv62, 95
  br i1 %cmp63, label %if.then.65, label %if.else.87

if.then.65:                                       ; preds = %lor.lhs.false, %if.then.49
  %56 = load i32, i32* @Py_DebugFlag, align 4
  %tobool66 = icmp ne i32 %56, 0
  br i1 %tobool66, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %if.then.65
  %57 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str68 = getelementptr inbounds %struct.label, %struct.label* %57, i32 0, i32 1
  %58 = load i8*, i8** %lb_str68, align 8
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i8* %58)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.67, %if.then.65
  %59 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_type71 = getelementptr inbounds %struct.label, %struct.label* %59, i32 0, i32 0
  store i32 1, i32* %lb_type71, align 4
  %60 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str72 = getelementptr inbounds %struct.label, %struct.label* %60, i32 0, i32 1
  %61 = load i8*, i8** %lb_str72, align 8
  %add.ptr = getelementptr i8, i8* %61, i64 1
  store i8* %add.ptr, i8** %src, align 8
  %62 = load i8*, i8** %src, align 8
  %call73 = call i8* @strchr(i8* %62, i32 39) #8
  store i8* %call73, i8** %p, align 8
  %63 = load i8*, i8** %p, align 8
  %tobool74 = icmp ne i8* %63, null
  br i1 %tobool74, label %if.then.75, label %if.else

if.then.75:                                       ; preds = %if.end.70
  %64 = load i8*, i8** %p, align 8
  %65 = load i8*, i8** %src, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %64 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %65 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %name_len, align 8
  br label %if.end.77

if.else:                                          ; preds = %if.end.70
  %66 = load i8*, i8** %src, align 8
  %call76 = call i64 @strlen(i8* %66) #8
  store i64 %call76, i64* %name_len, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.else, %if.then.75
  %67 = load i64, i64* %name_len, align 8
  %add = add i64 %67, 1
  %call78 = call noalias i8* @malloc(i64 %add) #7
  store i8* %call78, i8** %dest, align 8
  %68 = load i8*, i8** %dest, align 8
  %tobool79 = icmp ne i8* %68, null
  br i1 %tobool79, label %if.end.82, label %if.then.80

if.then.80:                                       ; preds = %if.end.77
  %69 = load i8*, i8** %src, align 8
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i8* %69)
  br label %if.end.194

if.end.82:                                        ; preds = %if.end.77
  %70 = load i8*, i8** %dest, align 8
  %71 = load i8*, i8** %src, align 8
  %72 = load i64, i64* %name_len, align 8
  %call83 = call i8* @strncpy(i8* %70, i8* %71, i64 %72) #7
  %73 = load i64, i64* %name_len, align 8
  %74 = load i8*, i8** %dest, align 8
  %arrayidx84 = getelementptr i8, i8* %74, i64 %73
  store i8 0, i8* %arrayidx84, align 1
  %75 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str85 = getelementptr inbounds %struct.label, %struct.label* %75, i32 0, i32 1
  %76 = load i8*, i8** %lb_str85, align 8
  call void @free(i8* %76) #7
  %77 = load i8*, i8** %dest, align 8
  %78 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str86 = getelementptr inbounds %struct.label, %struct.label* %78, i32 0, i32 1
  store i8* %77, i8** %lb_str86, align 8
  br label %if.end.190

if.else.87:                                       ; preds = %lor.lhs.false
  %79 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str88 = getelementptr inbounds %struct.label, %struct.label* %79, i32 0, i32 1
  %80 = load i8*, i8** %lb_str88, align 8
  %arrayidx89 = getelementptr i8, i8* %80, i64 2
  %81 = load i8, i8* %arrayidx89, align 1
  %conv90 = sext i8 %81 to i32
  %82 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str91 = getelementptr inbounds %struct.label, %struct.label* %82, i32 0, i32 1
  %83 = load i8*, i8** %lb_str91, align 8
  %arrayidx92 = getelementptr i8, i8* %83, i64 0
  %84 = load i8, i8* %arrayidx92, align 1
  %conv93 = sext i8 %84 to i32
  %cmp94 = icmp eq i32 %conv90, %conv93
  br i1 %cmp94, label %if.then.96, label %if.else.111

if.then.96:                                       ; preds = %if.else.87
  %85 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str97 = getelementptr inbounds %struct.label, %struct.label* %85, i32 0, i32 1
  %86 = load i8*, i8** %lb_str97, align 8
  %arrayidx98 = getelementptr i8, i8* %86, i64 1
  %87 = load i8, i8* %arrayidx98, align 1
  %conv99 = sext i8 %87 to i32
  %call100 = call i32 @PyToken_OneChar(i32 %conv99)
  store i32 %call100, i32* %type, align 4
  %88 = load i32, i32* %type, align 4
  %cmp101 = icmp ne i32 %88, 52
  br i1 %cmp101, label %if.then.103, label %if.else.107

if.then.103:                                      ; preds = %if.then.96
  %89 = load i32, i32* %type, align 4
  %90 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_type104 = getelementptr inbounds %struct.label, %struct.label* %90, i32 0, i32 0
  store i32 %89, i32* %lb_type104, align 4
  %91 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str105 = getelementptr inbounds %struct.label, %struct.label* %91, i32 0, i32 1
  %92 = load i8*, i8** %lb_str105, align 8
  call void @free(i8* %92) #7
  %93 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str106 = getelementptr inbounds %struct.label, %struct.label* %93, i32 0, i32 1
  store i8* null, i8** %lb_str106, align 8
  br label %if.end.110

if.else.107:                                      ; preds = %if.then.96
  %94 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str108 = getelementptr inbounds %struct.label, %struct.label* %94, i32 0, i32 1
  %95 = load i8*, i8** %lb_str108, align 8
  %call109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i8* %95)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.103
  br label %if.end.189

if.else.111:                                      ; preds = %if.else.87
  %96 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str112 = getelementptr inbounds %struct.label, %struct.label* %96, i32 0, i32 1
  %97 = load i8*, i8** %lb_str112, align 8
  %arrayidx113 = getelementptr i8, i8* %97, i64 2
  %98 = load i8, i8* %arrayidx113, align 1
  %conv114 = sext i8 %98 to i32
  %tobool115 = icmp ne i32 %conv114, 0
  br i1 %tobool115, label %land.lhs.true, label %if.else.143

land.lhs.true:                                    ; preds = %if.else.111
  %99 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str116 = getelementptr inbounds %struct.label, %struct.label* %99, i32 0, i32 1
  %100 = load i8*, i8** %lb_str116, align 8
  %arrayidx117 = getelementptr i8, i8* %100, i64 3
  %101 = load i8, i8* %arrayidx117, align 1
  %conv118 = sext i8 %101 to i32
  %102 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str119 = getelementptr inbounds %struct.label, %struct.label* %102, i32 0, i32 1
  %103 = load i8*, i8** %lb_str119, align 8
  %arrayidx120 = getelementptr i8, i8* %103, i64 0
  %104 = load i8, i8* %arrayidx120, align 1
  %conv121 = sext i8 %104 to i32
  %cmp122 = icmp eq i32 %conv118, %conv121
  br i1 %cmp122, label %if.then.124, label %if.else.143

if.then.124:                                      ; preds = %land.lhs.true
  %105 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str126 = getelementptr inbounds %struct.label, %struct.label* %105, i32 0, i32 1
  %106 = load i8*, i8** %lb_str126, align 8
  %arrayidx127 = getelementptr i8, i8* %106, i64 1
  %107 = load i8, i8* %arrayidx127, align 1
  %conv128 = sext i8 %107 to i32
  %108 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str129 = getelementptr inbounds %struct.label, %struct.label* %108, i32 0, i32 1
  %109 = load i8*, i8** %lb_str129, align 8
  %arrayidx130 = getelementptr i8, i8* %109, i64 2
  %110 = load i8, i8* %arrayidx130, align 1
  %conv131 = sext i8 %110 to i32
  %call132 = call i32 @PyToken_TwoChars(i32 %conv128, i32 %conv131)
  store i32 %call132, i32* %type125, align 4
  %111 = load i32, i32* %type125, align 4
  %cmp133 = icmp ne i32 %111, 52
  br i1 %cmp133, label %if.then.135, label %if.else.139

if.then.135:                                      ; preds = %if.then.124
  %112 = load i32, i32* %type125, align 4
  %113 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_type136 = getelementptr inbounds %struct.label, %struct.label* %113, i32 0, i32 0
  store i32 %112, i32* %lb_type136, align 4
  %114 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str137 = getelementptr inbounds %struct.label, %struct.label* %114, i32 0, i32 1
  %115 = load i8*, i8** %lb_str137, align 8
  call void @free(i8* %115) #7
  %116 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str138 = getelementptr inbounds %struct.label, %struct.label* %116, i32 0, i32 1
  store i8* null, i8** %lb_str138, align 8
  br label %if.end.142

if.else.139:                                      ; preds = %if.then.124
  %117 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str140 = getelementptr inbounds %struct.label, %struct.label* %117, i32 0, i32 1
  %118 = load i8*, i8** %lb_str140, align 8
  %call141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i8* %118)
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.139, %if.then.135
  br label %if.end.188

if.else.143:                                      ; preds = %land.lhs.true, %if.else.111
  %119 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str144 = getelementptr inbounds %struct.label, %struct.label* %119, i32 0, i32 1
  %120 = load i8*, i8** %lb_str144, align 8
  %arrayidx145 = getelementptr i8, i8* %120, i64 2
  %121 = load i8, i8* %arrayidx145, align 1
  %conv146 = sext i8 %121 to i32
  %tobool147 = icmp ne i32 %conv146, 0
  br i1 %tobool147, label %land.lhs.true.148, label %if.else.184

land.lhs.true.148:                                ; preds = %if.else.143
  %122 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str149 = getelementptr inbounds %struct.label, %struct.label* %122, i32 0, i32 1
  %123 = load i8*, i8** %lb_str149, align 8
  %arrayidx150 = getelementptr i8, i8* %123, i64 3
  %124 = load i8, i8* %arrayidx150, align 1
  %conv151 = sext i8 %124 to i32
  %tobool152 = icmp ne i32 %conv151, 0
  br i1 %tobool152, label %land.lhs.true.153, label %if.else.184

land.lhs.true.153:                                ; preds = %land.lhs.true.148
  %125 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str154 = getelementptr inbounds %struct.label, %struct.label* %125, i32 0, i32 1
  %126 = load i8*, i8** %lb_str154, align 8
  %arrayidx155 = getelementptr i8, i8* %126, i64 4
  %127 = load i8, i8* %arrayidx155, align 1
  %conv156 = sext i8 %127 to i32
  %128 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str157 = getelementptr inbounds %struct.label, %struct.label* %128, i32 0, i32 1
  %129 = load i8*, i8** %lb_str157, align 8
  %arrayidx158 = getelementptr i8, i8* %129, i64 0
  %130 = load i8, i8* %arrayidx158, align 1
  %conv159 = sext i8 %130 to i32
  %cmp160 = icmp eq i32 %conv156, %conv159
  br i1 %cmp160, label %if.then.162, label %if.else.184

if.then.162:                                      ; preds = %land.lhs.true.153
  %131 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str164 = getelementptr inbounds %struct.label, %struct.label* %131, i32 0, i32 1
  %132 = load i8*, i8** %lb_str164, align 8
  %arrayidx165 = getelementptr i8, i8* %132, i64 1
  %133 = load i8, i8* %arrayidx165, align 1
  %conv166 = sext i8 %133 to i32
  %134 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str167 = getelementptr inbounds %struct.label, %struct.label* %134, i32 0, i32 1
  %135 = load i8*, i8** %lb_str167, align 8
  %arrayidx168 = getelementptr i8, i8* %135, i64 2
  %136 = load i8, i8* %arrayidx168, align 1
  %conv169 = sext i8 %136 to i32
  %137 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str170 = getelementptr inbounds %struct.label, %struct.label* %137, i32 0, i32 1
  %138 = load i8*, i8** %lb_str170, align 8
  %arrayidx171 = getelementptr i8, i8* %138, i64 3
  %139 = load i8, i8* %arrayidx171, align 1
  %conv172 = sext i8 %139 to i32
  %call173 = call i32 @PyToken_ThreeChars(i32 %conv166, i32 %conv169, i32 %conv172)
  store i32 %call173, i32* %type163, align 4
  %140 = load i32, i32* %type163, align 4
  %cmp174 = icmp ne i32 %140, 52
  br i1 %cmp174, label %if.then.176, label %if.else.180

if.then.176:                                      ; preds = %if.then.162
  %141 = load i32, i32* %type163, align 4
  %142 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_type177 = getelementptr inbounds %struct.label, %struct.label* %142, i32 0, i32 0
  store i32 %141, i32* %lb_type177, align 4
  %143 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str178 = getelementptr inbounds %struct.label, %struct.label* %143, i32 0, i32 1
  %144 = load i8*, i8** %lb_str178, align 8
  call void @free(i8* %144) #7
  %145 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str179 = getelementptr inbounds %struct.label, %struct.label* %145, i32 0, i32 1
  store i8* null, i8** %lb_str179, align 8
  br label %if.end.183

if.else.180:                                      ; preds = %if.then.162
  %146 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str181 = getelementptr inbounds %struct.label, %struct.label* %146, i32 0, i32 1
  %147 = load i8*, i8** %lb_str181, align 8
  %call182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i8* %147)
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.180, %if.then.176
  br label %if.end.187

if.else.184:                                      ; preds = %land.lhs.true.153, %land.lhs.true.148, %if.else.143
  %148 = load %struct.label*, %struct.label** %lb.addr, align 8
  %lb_str185 = getelementptr inbounds %struct.label, %struct.label* %148, i32 0, i32 1
  %149 = load i8*, i8** %lb_str185, align 8
  %call186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), i8* %149)
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.184, %if.end.183
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.end.142
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.end.110
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.end.82
  br label %if.end.194

if.else.191:                                      ; preds = %if.end.46
  %150 = load %struct.label*, %struct.label** %lb.addr, align 8
  %call192 = call i8* @PyGrammar_LabelRepr(%struct.label* %150)
  %call193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0), i8* %call192)
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.14, %if.end.36, %for.end.43, %if.then.80, %if.else.191, %if.end.190
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare i32 @PyToken_OneChar(i32) #1

declare i32 @PyToken_TwoChars(i32, i32) #1

declare i32 @PyToken_ThreeChars(i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
