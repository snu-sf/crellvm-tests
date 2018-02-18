; ModuleID = './acceler.bc'
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

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [37 x i8] c"no mem to build parser accelerators\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"XXX too many states!\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"XXX too high nonterminal number!\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"XXX ambiguity!\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"no mem to add parser accelerators\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @PyGrammar_AddAccelerators(%struct.grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.grammar*, align 8
  %d = alloca %struct.dfa*, align 8
  %i = alloca i32, align 4
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  %0 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_dfa = getelementptr inbounds %struct.grammar, %struct.grammar* %0, i32 0, i32 1
  %1 = load %struct.dfa*, %struct.dfa** %g_dfa, align 8
  store %struct.dfa* %1, %struct.dfa** %d, align 8
  %2 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_ndfas = getelementptr inbounds %struct.grammar, %struct.grammar* %2, i32 0, i32 0
  %3 = load i32, i32* %g_ndfas, align 4
  store i32 %3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %dec = add i32 %4, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %6 = load %struct.dfa*, %struct.dfa** %d, align 8
  call void @fixdfa(%struct.grammar* %5, %struct.dfa* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.dfa*, %struct.dfa** %d, align 8
  %incdec.ptr = getelementptr %struct.dfa, %struct.dfa* %7, i32 1
  store %struct.dfa* %incdec.ptr, %struct.dfa** %d, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_accel = getelementptr inbounds %struct.grammar, %struct.grammar* %8, i32 0, i32 4
  store i32 1, i32* %g_accel, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fixdfa(%struct.grammar* %g, %struct.dfa* %d) #0 {
entry:
  %g.addr = alloca %struct.grammar*, align 8
  %d.addr = alloca %struct.dfa*, align 8
  %s = alloca %struct.state*, align 8
  %j = alloca i32, align 4
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  store %struct.dfa* %d, %struct.dfa** %d.addr, align 8
  %0 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_state = getelementptr inbounds %struct.dfa, %struct.dfa* %0, i32 0, i32 4
  %1 = load %struct.state*, %struct.state** %d_state, align 8
  store %struct.state* %1, %struct.state** %s, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4
  %3 = load %struct.dfa*, %struct.dfa** %d.addr, align 8
  %d_nstates = getelementptr inbounds %struct.dfa, %struct.dfa* %3, i32 0, i32 3
  %4 = load i32, i32* %d_nstates, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %6 = load %struct.state*, %struct.state** %s, align 8
  call void @fixstate(%struct.grammar* %5, %struct.state* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %j, align 4
  %8 = load %struct.state*, %struct.state** %s, align 8
  %incdec.ptr = getelementptr %struct.state, %struct.state* %8, i32 1
  store %struct.state* %incdec.ptr, %struct.state** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @PyGrammar_RemoveAccelerators(%struct.grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.grammar*, align 8
  %d = alloca %struct.dfa*, align 8
  %i = alloca i32, align 4
  %s = alloca %struct.state*, align 8
  %j = alloca i32, align 4
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  %0 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_accel = getelementptr inbounds %struct.grammar, %struct.grammar* %0, i32 0, i32 4
  store i32 0, i32* %g_accel, align 4
  %1 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_dfa = getelementptr inbounds %struct.grammar, %struct.grammar* %1, i32 0, i32 1
  %2 = load %struct.dfa*, %struct.dfa** %g_dfa, align 8
  store %struct.dfa* %2, %struct.dfa** %d, align 8
  %3 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_ndfas = getelementptr inbounds %struct.grammar, %struct.grammar* %3, i32 0, i32 0
  %4 = load i32, i32* %g_ndfas, align 4
  store i32 %4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %5 = load i32, i32* %i, align 4
  %dec = add i32 %5, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  %6 = load %struct.dfa*, %struct.dfa** %d, align 8
  %d_state = getelementptr inbounds %struct.dfa, %struct.dfa* %6, i32 0, i32 4
  %7 = load %struct.state*, %struct.state** %d_state, align 8
  store %struct.state* %7, %struct.state** %s, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load %struct.dfa*, %struct.dfa** %d, align 8
  %d_nstates = getelementptr inbounds %struct.dfa, %struct.dfa* %9, i32 0, i32 3
  %10 = load i32, i32* %d_nstates, align 4
  %cmp2 = icmp slt i32 %8, %10
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %11 = load %struct.state*, %struct.state** %s, align 8
  %s_accel = getelementptr inbounds %struct.state, %struct.state* %11, i32 0, i32 4
  %12 = load i32*, i32** %s_accel, align 8
  %tobool = icmp ne i32* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %13 = load %struct.state*, %struct.state** %s, align 8
  %s_accel4 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 4
  %14 = load i32*, i32** %s_accel4, align 8
  %15 = bitcast i32* %14 to i8*
  call void @PyObject_Free(i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  %16 = load %struct.state*, %struct.state** %s, align 8
  %s_accel5 = getelementptr inbounds %struct.state, %struct.state* %16, i32 0, i32 4
  store i32* null, i32** %s_accel5, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %j, align 4
  %18 = load %struct.state*, %struct.state** %s, align 8
  %incdec.ptr = getelementptr %struct.state, %struct.state* %18, i32 1
  store %struct.state* %incdec.ptr, %struct.state** %s, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %19 = load %struct.dfa*, %struct.dfa** %d, align 8
  %incdec.ptr7 = getelementptr %struct.dfa, %struct.dfa* %19, i32 1
  store %struct.dfa* %incdec.ptr7, %struct.dfa** %d, align 8
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  ret void
}

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @fixstate(%struct.grammar* %g, %struct.state* %s) #0 {
entry:
  %g.addr = alloca %struct.grammar*, align 8
  %s.addr = alloca %struct.state*, align 8
  %a = alloca %struct.arc*, align 8
  %k = alloca i32, align 4
  %accel = alloca i32*, align 8
  %nl = alloca i32, align 4
  %lbl = alloca i32, align 4
  %l = alloca %struct.label*, align 8
  %type = alloca i32, align 4
  %d1 = alloca %struct.dfa*, align 8
  %ibit = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8
  store %struct.state* %s, %struct.state** %s.addr, align 8
  %0 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_ll = getelementptr inbounds %struct.grammar, %struct.grammar* %0, i32 0, i32 2
  %ll_nlabels = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll, i32 0, i32 0
  %1 = load i32, i32* %ll_nlabels, align 4
  store i32 %1, i32* %nl, align 4
  %2 = load %struct.state*, %struct.state** %s.addr, align 8
  %s_accept = getelementptr inbounds %struct.state, %struct.state* %2, i32 0, i32 5
  store i32 0, i32* %s_accept, align 4
  %3 = load i32, i32* %nl, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @PyObject_Malloc(i64 %mul)
  %4 = bitcast i8* %call to i32*
  store i32* %4, i32** %accel, align 8
  %5 = load i32*, i32** %accel, align 8
  %cmp = icmp eq i32* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %nl, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %k, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32*, i32** %accel, align 8
  %arrayidx = getelementptr i32, i32* %10, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %k, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.state*, %struct.state** %s.addr, align 8
  %s_arc = getelementptr inbounds %struct.state, %struct.state* %12, i32 0, i32 1
  %13 = load %struct.arc*, %struct.arc** %s_arc, align 8
  store %struct.arc* %13, %struct.arc** %a, align 8
  %14 = load %struct.state*, %struct.state** %s.addr, align 8
  %s_narcs = getelementptr inbounds %struct.state, %struct.state* %14, i32 0, i32 0
  %15 = load i32, i32* %s_narcs, align 4
  store i32 %15, i32* %k, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.76, %for.end
  %16 = load i32, i32* %k, align 4
  %dec = add i32 %16, -1
  store i32 %dec, i32* %k, align 4
  %cmp6 = icmp sge i32 %dec, 0
  br i1 %cmp6, label %for.body.8, label %for.end.77

for.body.8:                                       ; preds = %for.cond.5
  %17 = load %struct.arc*, %struct.arc** %a, align 8
  %a_lbl = getelementptr inbounds %struct.arc, %struct.arc* %17, i32 0, i32 0
  %18 = load i16, i16* %a_lbl, align 2
  %conv9 = sext i16 %18 to i32
  store i32 %conv9, i32* %lbl, align 4
  %19 = load i32, i32* %lbl, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_ll11 = getelementptr inbounds %struct.grammar, %struct.grammar* %20, i32 0, i32 2
  %ll_label = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll11, i32 0, i32 1
  %21 = load %struct.label*, %struct.label** %ll_label, align 8
  %arrayidx12 = getelementptr %struct.label, %struct.label* %21, i64 %idxprom10
  store %struct.label* %arrayidx12, %struct.label** %l, align 8
  %22 = load %struct.label*, %struct.label** %l, align 8
  %lb_type = getelementptr inbounds %struct.label, %struct.label* %22, i32 0, i32 0
  %23 = load i32, i32* %lb_type, align 4
  store i32 %23, i32* %type, align 4
  %24 = load %struct.arc*, %struct.arc** %a, align 8
  %a_arrow = getelementptr inbounds %struct.arc, %struct.arc* %24, i32 0, i32 1
  %25 = load i16, i16* %a_arrow, align 2
  %conv13 = sext i16 %25 to i32
  %cmp14 = icmp sge i32 %conv13, 128
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.body.8
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %for.inc.76

if.end.18:                                        ; preds = %for.body.8
  %26 = load i32, i32* %type, align 4
  %cmp19 = icmp sge i32 %26, 256
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.18
  %27 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %28 = load i32, i32* %type, align 4
  %call22 = call %struct.dfa* @PyGrammar_FindDFA(%struct.grammar* %27, i32 %28)
  store %struct.dfa* %call22, %struct.dfa** %d1, align 8
  %29 = load i32, i32* %type, align 4
  %sub = sub i32 %29, 256
  %cmp23 = icmp sge i32 %sub, 128
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.21
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %for.inc.76

if.end.27:                                        ; preds = %if.then.21
  store i32 0, i32* %ibit, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.56, %if.end.27
  %30 = load i32, i32* %ibit, align 4
  %31 = load %struct.grammar*, %struct.grammar** %g.addr, align 8
  %g_ll29 = getelementptr inbounds %struct.grammar, %struct.grammar* %31, i32 0, i32 2
  %ll_nlabels30 = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll29, i32 0, i32 0
  %32 = load i32, i32* %ll_nlabels30, align 4
  %cmp31 = icmp slt i32 %30, %32
  br i1 %cmp31, label %for.body.33, label %for.end.58

for.body.33:                                      ; preds = %for.cond.28
  %33 = load i32, i32* %ibit, align 4
  %conv34 = sext i32 %33 to i64
  %div = udiv i64 %conv34, 8
  %34 = load %struct.dfa*, %struct.dfa** %d1, align 8
  %d_first = getelementptr inbounds %struct.dfa, %struct.dfa* %34, i32 0, i32 5
  %35 = load i8*, i8** %d_first, align 8
  %arrayidx35 = getelementptr i8, i8* %35, i64 %div
  %36 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %36 to i32
  %37 = load i32, i32* %ibit, align 4
  %conv37 = sext i32 %37 to i64
  %rem = urem i64 %conv37, 8
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and = and i32 %conv36, %shl
  %cmp38 = icmp ne i32 %and, 0
  br i1 %cmp38, label %if.then.40, label %if.end.55

if.then.40:                                       ; preds = %for.body.33
  %38 = load i32, i32* %ibit, align 4
  %idxprom41 = sext i32 %38 to i64
  %39 = load i32*, i32** %accel, align 8
  %arrayidx42 = getelementptr i32, i32* %39, i64 %idxprom41
  %40 = load i32, i32* %arrayidx42, align 4
  %cmp43 = icmp ne i32 %40, -1
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.then.40
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.then.40
  %41 = load %struct.arc*, %struct.arc** %a, align 8
  %a_arrow48 = getelementptr inbounds %struct.arc, %struct.arc* %41, i32 0, i32 1
  %42 = load i16, i16* %a_arrow48, align 2
  %conv49 = sext i16 %42 to i32
  %or = or i32 %conv49, 128
  %43 = load i32, i32* %type, align 4
  %sub50 = sub i32 %43, 256
  %shl51 = shl i32 %sub50, 8
  %or52 = or i32 %or, %shl51
  %44 = load i32, i32* %ibit, align 4
  %idxprom53 = sext i32 %44 to i64
  %45 = load i32*, i32** %accel, align 8
  %arrayidx54 = getelementptr i32, i32* %45, i64 %idxprom53
  store i32 %or52, i32* %arrayidx54, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.47, %for.body.33
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %46 = load i32, i32* %ibit, align 4
  %inc57 = add i32 %46, 1
  store i32 %inc57, i32* %ibit, align 4
  br label %for.cond.28

for.end.58:                                       ; preds = %for.cond.28
  br label %if.end.75

if.else:                                          ; preds = %if.end.18
  %47 = load i32, i32* %lbl, align 4
  %cmp59 = icmp eq i32 %47, 0
  br i1 %cmp59, label %if.then.61, label %if.else.63

if.then.61:                                       ; preds = %if.else
  %48 = load %struct.state*, %struct.state** %s.addr, align 8
  %s_accept62 = getelementptr inbounds %struct.state, %struct.state* %48, i32 0, i32 5
  store i32 1, i32* %s_accept62, align 4
  br label %if.end.74

if.else.63:                                       ; preds = %if.else
  %49 = load i32, i32* %lbl, align 4
  %cmp64 = icmp sge i32 %49, 0
  br i1 %cmp64, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %if.else.63
  %50 = load i32, i32* %lbl, align 4
  %51 = load i32, i32* %nl, align 4
  %cmp66 = icmp slt i32 %50, %51
  br i1 %cmp66, label %if.then.68, label %if.end.73

if.then.68:                                       ; preds = %land.lhs.true
  %52 = load %struct.arc*, %struct.arc** %a, align 8
  %a_arrow69 = getelementptr inbounds %struct.arc, %struct.arc* %52, i32 0, i32 1
  %53 = load i16, i16* %a_arrow69, align 2
  %conv70 = sext i16 %53 to i32
  %54 = load i32, i32* %lbl, align 4
  %idxprom71 = sext i32 %54 to i64
  %55 = load i32*, i32** %accel, align 8
  %arrayidx72 = getelementptr i32, i32* %55, i64 %idxprom71
  store i32 %conv70, i32* %arrayidx72, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.68, %land.lhs.true, %if.else.63
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.61
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %for.end.58
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75, %if.then.25, %if.then.16
  %56 = load %struct.arc*, %struct.arc** %a, align 8
  %incdec.ptr = getelementptr %struct.arc, %struct.arc* %56, i32 1
  store %struct.arc* %incdec.ptr, %struct.arc** %a, align 8
  br label %for.cond.5

for.end.77:                                       ; preds = %for.cond.5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.77
  %57 = load i32, i32* %nl, align 4
  %cmp78 = icmp sgt i32 %57, 0
  br i1 %cmp78, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %58 = load i32, i32* %nl, align 4
  %sub80 = sub i32 %58, 1
  %idxprom81 = sext i32 %sub80 to i64
  %59 = load i32*, i32** %accel, align 8
  %arrayidx82 = getelementptr i32, i32* %59, i64 %idxprom81
  %60 = load i32, i32* %arrayidx82, align 4
  %cmp83 = icmp eq i32 %60, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %61 = phi i1 [ false, %while.cond ], [ %cmp83, %land.rhs ]
  br i1 %61, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %62 = load i32, i32* %nl, align 4
  %dec85 = add i32 %62, -1
  store i32 %dec85, i32* %nl, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i32 0, i32* %k, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.body.95, %while.end
  %63 = load i32, i32* %k, align 4
  %64 = load i32, i32* %nl, align 4
  %cmp87 = icmp slt i32 %63, %64
  br i1 %cmp87, label %land.rhs.89, label %land.end.94

land.rhs.89:                                      ; preds = %for.cond.86
  %65 = load i32, i32* %k, align 4
  %idxprom90 = sext i32 %65 to i64
  %66 = load i32*, i32** %accel, align 8
  %arrayidx91 = getelementptr i32, i32* %66, i64 %idxprom90
  %67 = load i32, i32* %arrayidx91, align 4
  %cmp92 = icmp eq i32 %67, -1
  br label %land.end.94

land.end.94:                                      ; preds = %land.rhs.89, %for.cond.86
  %68 = phi i1 [ false, %for.cond.86 ], [ %cmp92, %land.rhs.89 ]
  br i1 %68, label %for.body.95, label %for.end.97

for.body.95:                                      ; preds = %land.end.94
  %69 = load i32, i32* %k, align 4
  %inc96 = add i32 %69, 1
  store i32 %inc96, i32* %k, align 4
  br label %for.cond.86

for.end.97:                                       ; preds = %land.end.94
  %70 = load i32, i32* %k, align 4
  %71 = load i32, i32* %nl, align 4
  %cmp98 = icmp slt i32 %70, %71
  br i1 %cmp98, label %if.then.100, label %if.end.124

if.then.100:                                      ; preds = %for.end.97
  %72 = load i32, i32* %nl, align 4
  %73 = load i32, i32* %k, align 4
  %sub101 = sub i32 %72, %73
  %conv102 = sext i32 %sub101 to i64
  %mul103 = mul i64 %conv102, 4
  %call104 = call i8* @PyObject_Malloc(i64 %mul103)
  %74 = bitcast i8* %call104 to i32*
  %75 = load %struct.state*, %struct.state** %s.addr, align 8
  %s_accel = getelementptr inbounds %struct.state, %struct.state* %75, i32 0, i32 4
  store i32* %74, i32** %s_accel, align 8
  %76 = load %struct.state*, %struct.state** %s.addr, align 8
  %s_accel105 = getelementptr inbounds %struct.state, %struct.state* %76, i32 0, i32 4
  %77 = load i32*, i32** %s_accel105, align 8
  %cmp106 = icmp eq i32* %77, null
  br i1 %cmp106, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %if.then.100
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

if.end.110:                                       ; preds = %if.then.100
  %79 = load i32, i32* %k, align 4
  %80 = load %struct.state*, %struct.state** %s.addr, align 8
  %s_lower = getelementptr inbounds %struct.state, %struct.state* %80, i32 0, i32 2
  store i32 %79, i32* %s_lower, align 4
  %81 = load i32, i32* %nl, align 4
  %82 = load %struct.state*, %struct.state** %s.addr, align 8
  %s_upper = getelementptr inbounds %struct.state, %struct.state* %82, i32 0, i32 3
  store i32 %81, i32* %s_upper, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.120, %if.end.110
  %83 = load i32, i32* %k, align 4
  %84 = load i32, i32* %nl, align 4
  %cmp112 = icmp slt i32 %83, %84
  br i1 %cmp112, label %for.body.114, label %for.end.123

for.body.114:                                     ; preds = %for.cond.111
  %85 = load i32, i32* %k, align 4
  %idxprom115 = sext i32 %85 to i64
  %86 = load i32*, i32** %accel, align 8
  %arrayidx116 = getelementptr i32, i32* %86, i64 %idxprom115
  %87 = load i32, i32* %arrayidx116, align 4
  %88 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %88 to i64
  %89 = load %struct.state*, %struct.state** %s.addr, align 8
  %s_accel118 = getelementptr inbounds %struct.state, %struct.state* %89, i32 0, i32 4
  %90 = load i32*, i32** %s_accel118, align 8
  %arrayidx119 = getelementptr i32, i32* %90, i64 %idxprom117
  store i32 %87, i32* %arrayidx119, align 4
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.114
  %91 = load i32, i32* %i, align 4
  %inc121 = add i32 %91, 1
  store i32 %inc121, i32* %i, align 4
  %92 = load i32, i32* %k, align 4
  %inc122 = add i32 %92, 1
  store i32 %inc122, i32* %k, align 4
  br label %for.cond.111

for.end.123:                                      ; preds = %for.cond.111
  br label %if.end.124

if.end.124:                                       ; preds = %for.end.123, %for.end.97
  %93 = load i32*, i32** %accel, align 8
  %94 = bitcast i32* %93 to i8*
  call void @PyObject_Free(i8* %94)
  ret void
}

declare i8* @PyObject_Malloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare i32 @printf(i8*, ...) #1

declare %struct.dfa* @PyGrammar_FindDFA(%struct.grammar*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
