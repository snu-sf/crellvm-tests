; ModuleID = './MultiSource.Applications.d/9.lex.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_fns_t = type { i32 (i8*, %struct.hash_fns_t*)*, i32 (i8*, i8*, %struct.hash_fns_t*)*, [2 x i8*] }
%struct.Grammar = type { i8*, %struct.anon, %struct.anon.5, %struct.anon.6, %struct.Code, %struct.Code*, i32, %struct.anon.7, %struct.anon.8, i8*, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, %struct.Production*, %struct.Rule*, %struct.Elem*, i32, i32, i32, i32 }
%struct.anon = type { i32, i32, %struct.Production**, [3 x %struct.Production*] }
%struct.anon.5 = type { i32, i32, %struct.Term**, [3 x %struct.Term*] }
%struct.Term = type { i32, i32, i32, i32, i32, i8*, i32, i8, %struct.Production* }
%struct.anon.6 = type { i32, i32, %struct.State**, [3 x %struct.State*] }
%struct.State = type { i32, i64, %struct.anon.3, %struct.anon.4, %struct.VecGoto, %struct.VecAction, %struct.VecAction, %struct.VecHint, %struct.VecHint, %struct.Scanner, i8, i8*, i32, %struct.State*, %struct.State*, %struct.Rule*, %struct.Rule* }
%struct.anon.3 = type { i32, i32, %struct.Elem**, [3 x %struct.Elem*] }
%struct.anon.4 = type { i32, i32, %struct.Elem**, [3 x %struct.Elem*] }
%struct.VecGoto = type { i32, i32, %struct.Goto**, [3 x %struct.Goto*] }
%struct.Goto = type { %struct.Elem*, %struct.State* }
%struct.VecAction = type { i32, i32, %struct.Action**, [3 x %struct.Action*] }
%struct.Action = type { i32, %struct.Term*, %struct.Rule*, %struct.State*, i32, i8* }
%struct.VecHint = type { i32, i32, %struct.Hint**, [3 x %struct.Hint*] }
%struct.Hint = type { i32, %struct.State*, %struct.Rule* }
%struct.Scanner = type { %struct.VecScanState, %struct.VecScanStateTransition }
%struct.VecScanState = type { i32, i32, %struct.ScanState**, [3 x %struct.ScanState*] }
%struct.ScanState = type { i32, [256 x %struct.ScanState*], %struct.VecAction, %struct.VecAction, [256 x %struct.ScanStateTransition*] }
%struct.ScanStateTransition = type { i32, %struct.VecAction, %struct.VecAction }
%struct.VecScanStateTransition = type { i32, i32, %struct.ScanStateTransition**, [3 x %struct.ScanStateTransition*] }
%struct.Code = type { i8*, i32 }
%struct.anon.7 = type { i32, i32, %struct.Declaration**, [3 x %struct.Declaration*] }
%struct.Declaration = type { %struct.Elem*, i32, i32 }
%struct.anon.8 = type { i32, i32, %struct.D_Pass**, [3 x %struct.D_Pass*] }
%struct.D_Pass = type { i8*, i32, i32, i32 }
%struct.Production = type { i8*, i32, %struct.anon.0, i32, i8, %struct.Rule*, [8 x %struct.Production*], [8 x %struct.Declaration*], %struct.State*, %struct.Elem*, %struct.Term*, %struct.Production* }
%struct.anon.0 = type { i32, i32, %struct.Rule**, [3 x %struct.Rule*] }
%struct.Rule = type { i32, %struct.Production*, i32, i32, i32, i32, %struct.anon.1, %struct.Elem*, %struct.Code, %struct.Code, %struct.anon.2, i32, %struct.Rule* }
%struct.anon.1 = type { i32, i32, %struct.Elem**, [3 x %struct.Elem*] }
%struct.anon.2 = type { i32, i32, %struct.Code**, [3 x %struct.Code*] }
%struct.Elem = type { i32, i32, %struct.Rule*, %union.anon }
%union.anon = type { %struct.Unresolved }
%struct.Unresolved = type { i8*, i32 }
%struct.LexState = type { i32, %struct.VecNFAState, i32, i32, i32 }
%struct.VecNFAState = type { i32, i32, %struct.NFAState**, [3 x %struct.NFAState*] }
%struct.NFAState = type { i32, [256 x %struct.anon.9], %struct.anon.10, %struct.anon.11, %struct.anon.12 }
%struct.anon.9 = type { i32, i32, %struct.NFAState**, [3 x %struct.NFAState*] }
%struct.anon.10 = type { i32, i32, %struct.NFAState**, [3 x %struct.NFAState*] }
%struct.anon.11 = type { i32, i32, %struct.Action**, [3 x %struct.Action*] }
%struct.anon.12 = type { i32, i32, %struct.Action**, [3 x %struct.Action*] }
%struct.DFAState = type { %struct.anon.13, [256 x %struct.DFAState*], %struct.ScanState* }
%struct.anon.13 = type { i32, i32, %struct.NFAState**, [3 x %struct.NFAState*] }
%struct.VecDFAState = type { i32, i32, %struct.DFAState**, [3 x %struct.DFAState*] }

@verbose_level = external global i32, align 4
@.str = private unnamed_addr constant [28 x i8] c"%d scanners %d transitions\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"bad (part of) regex: %s\0A\00", align 1
@trans_hash_fns = internal global %struct.hash_fns_t { i32 (i8*, %struct.hash_fns_t*)* bitcast (i32 (%struct.ScanStateTransition*, %struct.hash_fns_t*)* @trans_hash_fn to i32 (i8*, %struct.hash_fns_t*)*), i32 (i8*, i8*, %struct.hash_fns_t*)* bitcast (i32 (%struct.ScanStateTransition*, %struct.ScanStateTransition*, %struct.hash_fns_t*)* @trans_cmp_fn to i32 (i8*, i8*, %struct.hash_fns_t*)*), [2 x i8*] zeroinitializer }, align 8

; Function Attrs: nounwind uwtable
define void @build_scanners(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %s = alloca %struct.State*, align 8
  %ls = alloca %struct.LexState*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  %call = call %struct.LexState* @new_LexState()
  store %struct.LexState* %call, %struct.LexState** %ls, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.73, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 3
  %n = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.75

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 3
  %v = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states1, i32 0, i32 2
  %5 = load %struct.State**, %struct.State*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.State*, %struct.State** %5, i64 %idxprom
  %6 = load %struct.State*, %struct.State** %arrayidx, align 8
  store %struct.State* %6, %struct.State** %s, align 8
  %7 = load %struct.State*, %struct.State** %s, align 8
  %same_shifts = getelementptr inbounds %struct.State, %struct.State* %7, i32 0, i32 13
  %8 = load %struct.State*, %struct.State** %same_shifts, align 8
  %tobool = icmp ne %struct.State* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.73

if.end:                                           ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.70, %if.end
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %9, %10
  br i1 %cmp3, label %for.body.4, label %for.end.72

for.body.4:                                       ; preds = %for.cond.2
  %11 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states6 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %12, i32 0, i32 3
  %v7 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states6, i32 0, i32 2
  %13 = load %struct.State**, %struct.State*** %v7, align 8
  %arrayidx8 = getelementptr inbounds %struct.State*, %struct.State** %13, i64 %idxprom5
  %14 = load %struct.State*, %struct.State** %arrayidx8, align 8
  %same_shifts9 = getelementptr inbounds %struct.State, %struct.State* %14, i32 0, i32 13
  %15 = load %struct.State*, %struct.State** %same_shifts9, align 8
  %tobool10 = icmp ne %struct.State* %15, null
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body.4
  br label %for.inc.70

if.end.12:                                        ; preds = %for.body.4
  %16 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states14 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %17, i32 0, i32 3
  %v15 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states14, i32 0, i32 2
  %18 = load %struct.State**, %struct.State*** %v15, align 8
  %arrayidx16 = getelementptr inbounds %struct.State*, %struct.State** %18, i64 %idxprom13
  %19 = load %struct.State*, %struct.State** %arrayidx16, align 8
  %shift_actions = getelementptr inbounds %struct.State, %struct.State* %19, i32 0, i32 5
  %n17 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions, i32 0, i32 0
  %20 = load i32, i32* %n17, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states19 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %22, i32 0, i32 3
  %v20 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states19, i32 0, i32 2
  %23 = load %struct.State**, %struct.State*** %v20, align 8
  %arrayidx21 = getelementptr inbounds %struct.State*, %struct.State** %23, i64 %idxprom18
  %24 = load %struct.State*, %struct.State** %arrayidx21, align 8
  %shift_actions22 = getelementptr inbounds %struct.State, %struct.State* %24, i32 0, i32 5
  %n23 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions22, i32 0, i32 0
  %25 = load i32, i32* %n23, align 4
  %cmp24 = icmp ne i32 %20, %25
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.12
  br label %for.inc.70

if.end.26:                                        ; preds = %if.end.12
  store i32 0, i32* %k, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %if.end.26
  %26 = load i32, i32* %k, align 4
  %27 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %27 to i64
  %28 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states29 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %28, i32 0, i32 3
  %v30 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states29, i32 0, i32 2
  %29 = load %struct.State**, %struct.State*** %v30, align 8
  %arrayidx31 = getelementptr inbounds %struct.State*, %struct.State** %29, i64 %idxprom28
  %30 = load %struct.State*, %struct.State** %arrayidx31, align 8
  %shift_actions32 = getelementptr inbounds %struct.State, %struct.State* %30, i32 0, i32 5
  %n33 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions32, i32 0, i32 0
  %31 = load i32, i32* %n33, align 4
  %cmp34 = icmp ult i32 %26, %31
  br i1 %cmp34, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.27
  %32 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %32 to i64
  %33 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %33 to i64
  %34 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states38 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %34, i32 0, i32 3
  %v39 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states38, i32 0, i32 2
  %35 = load %struct.State**, %struct.State*** %v39, align 8
  %arrayidx40 = getelementptr inbounds %struct.State*, %struct.State** %35, i64 %idxprom37
  %36 = load %struct.State*, %struct.State** %arrayidx40, align 8
  %shift_actions41 = getelementptr inbounds %struct.State, %struct.State* %36, i32 0, i32 5
  %v42 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions41, i32 0, i32 2
  %37 = load %struct.Action**, %struct.Action*** %v42, align 8
  %arrayidx43 = getelementptr inbounds %struct.Action*, %struct.Action** %37, i64 %idxprom36
  %38 = load %struct.Action*, %struct.Action** %arrayidx43, align 8
  %term = getelementptr inbounds %struct.Action, %struct.Action* %38, i32 0, i32 1
  %39 = load %struct.Term*, %struct.Term** %term, align 8
  %40 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %40 to i64
  %41 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %41 to i64
  %42 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states46 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %42, i32 0, i32 3
  %v47 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states46, i32 0, i32 2
  %43 = load %struct.State**, %struct.State*** %v47, align 8
  %arrayidx48 = getelementptr inbounds %struct.State*, %struct.State** %43, i64 %idxprom45
  %44 = load %struct.State*, %struct.State** %arrayidx48, align 8
  %shift_actions49 = getelementptr inbounds %struct.State, %struct.State* %44, i32 0, i32 5
  %v50 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions49, i32 0, i32 2
  %45 = load %struct.Action**, %struct.Action*** %v50, align 8
  %arrayidx51 = getelementptr inbounds %struct.Action*, %struct.Action** %45, i64 %idxprom44
  %46 = load %struct.Action*, %struct.Action** %arrayidx51, align 8
  %term52 = getelementptr inbounds %struct.Action, %struct.Action* %46, i32 0, i32 1
  %47 = load %struct.Term*, %struct.Term** %term52, align 8
  %cmp53 = icmp ne %struct.Term* %39, %47
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %for.body.35
  br label %for.end

if.end.55:                                        ; preds = %for.body.35
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %48 = load i32, i32* %k, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.27

for.end:                                          ; preds = %if.then.54, %for.cond.27
  %49 = load i32, i32* %k, align 4
  %50 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %50 to i64
  %51 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states57 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %51, i32 0, i32 3
  %v58 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states57, i32 0, i32 2
  %52 = load %struct.State**, %struct.State*** %v58, align 8
  %arrayidx59 = getelementptr inbounds %struct.State*, %struct.State** %52, i64 %idxprom56
  %53 = load %struct.State*, %struct.State** %arrayidx59, align 8
  %shift_actions60 = getelementptr inbounds %struct.State, %struct.State* %53, i32 0, i32 5
  %n61 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions60, i32 0, i32 0
  %54 = load i32, i32* %n61, align 4
  %cmp62 = icmp uge i32 %49, %54
  br i1 %cmp62, label %if.then.63, label %if.end.69

if.then.63:                                       ; preds = %for.end
  %55 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %55 to i64
  %56 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states65 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %56, i32 0, i32 3
  %v66 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states65, i32 0, i32 2
  %57 = load %struct.State**, %struct.State*** %v66, align 8
  %arrayidx67 = getelementptr inbounds %struct.State*, %struct.State** %57, i64 %idxprom64
  %58 = load %struct.State*, %struct.State** %arrayidx67, align 8
  %59 = load %struct.State*, %struct.State** %s, align 8
  %same_shifts68 = getelementptr inbounds %struct.State, %struct.State* %59, i32 0, i32 13
  store %struct.State* %58, %struct.State** %same_shifts68, align 8
  br label %for.end.72

if.end.69:                                        ; preds = %for.end
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.69, %if.then.25, %if.then.11
  %60 = load i32, i32* %j, align 4
  %inc71 = add nsw i32 %60, 1
  store i32 %inc71, i32* %j, align 4
  br label %for.cond.2

for.end.72:                                       ; preds = %if.then.63, %for.cond.2
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.end.72, %if.then
  %61 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %61, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond

for.end.75:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.96, %for.end.75
  %62 = load i32, i32* %i, align 4
  %63 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states77 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %63, i32 0, i32 3
  %n78 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states77, i32 0, i32 0
  %64 = load i32, i32* %n78, align 4
  %cmp79 = icmp ult i32 %62, %64
  br i1 %cmp79, label %for.body.80, label %for.end.98

for.body.80:                                      ; preds = %for.cond.76
  %65 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %65 to i64
  %66 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states82 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %66, i32 0, i32 3
  %v83 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states82, i32 0, i32 2
  %67 = load %struct.State**, %struct.State*** %v83, align 8
  %arrayidx84 = getelementptr inbounds %struct.State*, %struct.State** %67, i64 %idxprom81
  %68 = load %struct.State*, %struct.State** %arrayidx84, align 8
  store %struct.State* %68, %struct.State** %s, align 8
  %69 = load %struct.State*, %struct.State** %s, align 8
  %shift_actions85 = getelementptr inbounds %struct.State, %struct.State* %69, i32 0, i32 5
  %n86 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions85, i32 0, i32 0
  %70 = load i32, i32* %n86, align 4
  %tobool87 = icmp ne i32 %70, 0
  br i1 %tobool87, label %if.then.88, label %if.end.95

if.then.88:                                       ; preds = %for.body.80
  %71 = load %struct.State*, %struct.State** %s, align 8
  %same_shifts89 = getelementptr inbounds %struct.State, %struct.State* %71, i32 0, i32 13
  %72 = load %struct.State*, %struct.State** %same_shifts89, align 8
  %tobool90 = icmp ne %struct.State* %72, null
  br i1 %tobool90, label %if.then.91, label %if.else

if.then.91:                                       ; preds = %if.then.88
  %73 = load %struct.State*, %struct.State** %s, align 8
  %scanner = getelementptr inbounds %struct.State, %struct.State* %73, i32 0, i32 9
  %74 = load %struct.State*, %struct.State** %s, align 8
  %same_shifts92 = getelementptr inbounds %struct.State, %struct.State* %74, i32 0, i32 13
  %75 = load %struct.State*, %struct.State** %same_shifts92, align 8
  %scanner93 = getelementptr inbounds %struct.State, %struct.State* %75, i32 0, i32 9
  %76 = bitcast %struct.Scanner* %scanner to i8*
  %77 = bitcast %struct.Scanner* %scanner93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 80, i32 8, i1 false)
  br label %if.end.94

if.else:                                          ; preds = %if.then.88
  %78 = load %struct.LexState*, %struct.LexState** %ls, align 8
  %79 = load %struct.State*, %struct.State** %s, align 8
  call void @build_state_scanner(%struct.LexState* %78, %struct.State* %79)
  br label %if.end.94

if.end.94:                                        ; preds = %if.else, %if.then.91
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %for.body.80
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %80 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %80, 1
  store i32 %inc97, i32* %i, align 4
  br label %for.cond.76

for.end.98:                                       ; preds = %for.cond.76
  %81 = load i32, i32* @verbose_level, align 4
  %tobool99 = icmp ne i32 %81, 0
  br i1 %tobool99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %for.end.98
  %82 = load %struct.LexState*, %struct.LexState** %ls, align 8
  %scanners = getelementptr inbounds %struct.LexState, %struct.LexState* %82, i32 0, i32 3
  %83 = load i32, i32* %scanners, align 4
  %84 = load %struct.LexState*, %struct.LexState** %ls, align 8
  %transitions = getelementptr inbounds %struct.LexState, %struct.LexState* %84, i32 0, i32 2
  %85 = load i32, i32* %transitions, align 4
  %call101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 %83, i32 %85)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %for.end.98
  %86 = load %struct.LexState*, %struct.LexState** %ls, align 8
  %87 = bitcast %struct.LexState* %86 to i8*
  call void @free(i8* %87) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @build_state_scanner(%struct.LexState* %ls, %struct.State* %s) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %s.addr = alloca %struct.State*, align 8
  %n = alloca %struct.NFAState*, align 8
  %nn = alloca %struct.NFAState*, align 8
  %nnn = alloca %struct.NFAState*, align 8
  %a = alloca %struct.Action*, align 8
  %c = alloca i8*, align 8
  %reg = alloca i8*, align 8
  %j = alloca i32, align 4
  %one = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.State* %s, %struct.State** %s.addr, align 8
  store i32 0, i32* %one, align 4
  %0 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call = call %struct.NFAState* @new_NFAState(%struct.LexState* %0)
  store %struct.NFAState* %call, %struct.NFAState** %n, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.615, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 5
  %n1 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions, i32 0, i32 0
  %3 = load i32, i32* %n1, align 4
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end.617

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions2 = getelementptr inbounds %struct.State, %struct.State* %5, i32 0, i32 5
  %v = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions2, i32 0, i32 2
  %6 = load %struct.Action**, %struct.Action*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Action*, %struct.Action** %6, i64 %idxprom
  %7 = load %struct.Action*, %struct.Action** %arrayidx, align 8
  store %struct.Action* %7, %struct.Action** %a, align 8
  %8 = load %struct.Action*, %struct.Action** %a, align 8
  %kind = getelementptr inbounds %struct.Action, %struct.Action* %8, i32 0, i32 0
  %9 = load i32, i32* %kind, align 4
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %if.then, label %if.else.127

if.then:                                          ; preds = %for.body
  store i32 1, i32* %one, align 4
  %10 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %chars = getelementptr inbounds %struct.NFAState, %struct.NFAState* %10, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars, i32 0, i64 0
  %n5 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx4, i32 0, i32 0
  %11 = load i32, i32* %n5, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.else.69, label %if.then.6

if.then.6:                                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %12 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %chars7 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %12, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars7, i32 0, i64 0
  %v9 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx8, i32 0, i32 2
  %13 = load %struct.NFAState**, %struct.NFAState*** %v9, align 8
  %tobool10 = icmp ne %struct.NFAState** %13, null
  br i1 %tobool10, label %if.else, label %if.then.11

if.then.11:                                       ; preds = %do.body
  %14 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call12 = call %struct.NFAState* @new_NFAState(%struct.LexState* %14)
  store %struct.NFAState* %call12, %struct.NFAState** %nnn, align 8
  %15 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %chars13 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %15, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars13, i32 0, i64 0
  %n15 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx14, i32 0, i32 0
  %16 = load i32, i32* %n15, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %n15, align 4
  %idxprom16 = zext i32 %16 to i64
  %17 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %chars17 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %17, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars17, i32 0, i64 0
  %e = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx18, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e, i32 0, i32 0
  %18 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %chars19 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %18, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars19, i32 0, i64 0
  %v21 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx20, i32 0, i32 2
  store %struct.NFAState** %arraydecay, %struct.NFAState*** %v21, align 8
  %arrayidx22 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay, i64 %idxprom16
  store %struct.NFAState* %call12, %struct.NFAState** %arrayidx22, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %19 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %chars23 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %19, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars23, i32 0, i64 0
  %v25 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx24, i32 0, i32 2
  %20 = load %struct.NFAState**, %struct.NFAState*** %v25, align 8
  %21 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %chars26 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %21, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars26, i32 0, i64 0
  %e28 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx27, i32 0, i32 3
  %arraydecay29 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e28, i32 0, i32 0
  %cmp30 = icmp eq %struct.NFAState** %20, %arraydecay29
  br i1 %cmp30, label %if.then.31, label %if.else.47

if.then.31:                                       ; preds = %if.else
  %22 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %chars32 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %22, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars32, i32 0, i64 0
  %n34 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx33, i32 0, i32 0
  %23 = load i32, i32* %n34, align 4
  %cmp35 = icmp ult i32 %23, 3
  br i1 %cmp35, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %if.then.31
  %24 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call37 = call %struct.NFAState* @new_NFAState(%struct.LexState* %24)
  store %struct.NFAState* %call37, %struct.NFAState** %nnn, align 8
  %25 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %chars38 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %25, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars38, i32 0, i64 0
  %n40 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx39, i32 0, i32 0
  %26 = load i32, i32* %n40, align 4
  %inc41 = add i32 %26, 1
  store i32 %inc41, i32* %n40, align 4
  %idxprom42 = zext i32 %26 to i64
  %27 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %chars43 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %27, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars43, i32 0, i64 0
  %v45 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx44, i32 0, i32 2
  %28 = load %struct.NFAState**, %struct.NFAState*** %v45, align 8
  %arrayidx46 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %28, i64 %idxprom42
  store %struct.NFAState* %call37, %struct.NFAState** %arrayidx46, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.31
  br label %if.end.64

if.else.47:                                       ; preds = %if.else
  %29 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %chars48 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %29, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars48, i32 0, i64 0
  %n50 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx49, i32 0, i32 0
  %30 = load i32, i32* %n50, align 4
  %and = and i32 %30, 7
  %tobool51 = icmp ne i32 %and, 0
  br i1 %tobool51, label %if.then.52, label %if.end.63

if.then.52:                                       ; preds = %if.else.47
  %31 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call53 = call %struct.NFAState* @new_NFAState(%struct.LexState* %31)
  store %struct.NFAState* %call53, %struct.NFAState** %nnn, align 8
  %32 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %chars54 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %32, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars54, i32 0, i64 0
  %n56 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx55, i32 0, i32 0
  %33 = load i32, i32* %n56, align 4
  %inc57 = add i32 %33, 1
  store i32 %inc57, i32* %n56, align 4
  %idxprom58 = zext i32 %33 to i64
  %34 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %chars59 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %34, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars59, i32 0, i64 0
  %v61 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx60, i32 0, i32 2
  %35 = load %struct.NFAState**, %struct.NFAState*** %v61, align 8
  %arrayidx62 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %35, i64 %idxprom58
  store %struct.NFAState* %call53, %struct.NFAState** %arrayidx62, align 8
  br label %do.end

if.end.63:                                        ; preds = %if.else.47
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64
  %36 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %chars66 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %36, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars66, i32 0, i64 0
  %37 = bitcast %struct.anon.9* %arrayidx67 to i8*
  %38 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call68 = call %struct.NFAState* @new_NFAState(%struct.LexState* %38)
  store %struct.NFAState* %call68, %struct.NFAState** %nnn, align 8
  %39 = bitcast %struct.NFAState* %call68 to i8*
  call void @vec_add_internal(i8* %37, i8* %39)
  br label %do.end

do.end:                                           ; preds = %if.end.65, %if.then.52, %if.then.36, %if.then.11
  br label %if.end.74

if.else.69:                                       ; preds = %if.then
  %40 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %chars70 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %40, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars70, i32 0, i64 0
  %v72 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx71, i32 0, i32 2
  %41 = load %struct.NFAState**, %struct.NFAState*** %v72, align 8
  %arrayidx73 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %41, i64 0
  %42 = load %struct.NFAState*, %struct.NFAState** %arrayidx73, align 8
  store %struct.NFAState* %42, %struct.NFAState** %nnn, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.69, %do.end
  br label %do.body.75

do.body.75:                                       ; preds = %if.end.74
  %43 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  %accepts = getelementptr inbounds %struct.NFAState, %struct.NFAState* %43, i32 0, i32 3
  %v76 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts, i32 0, i32 2
  %44 = load %struct.Action**, %struct.Action*** %v76, align 8
  %tobool77 = icmp ne %struct.Action** %44, null
  br i1 %tobool77, label %if.else.89, label %if.then.78

if.then.78:                                       ; preds = %do.body.75
  %45 = load %struct.Action*, %struct.Action** %a, align 8
  %46 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  %accepts79 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %46, i32 0, i32 3
  %n80 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts79, i32 0, i32 0
  %47 = load i32, i32* %n80, align 4
  %inc81 = add i32 %47, 1
  store i32 %inc81, i32* %n80, align 4
  %idxprom82 = zext i32 %47 to i64
  %48 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  %accepts83 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %48, i32 0, i32 3
  %e84 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts83, i32 0, i32 3
  %arraydecay85 = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e84, i32 0, i32 0
  %49 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  %accepts86 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %49, i32 0, i32 3
  %v87 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts86, i32 0, i32 2
  store %struct.Action** %arraydecay85, %struct.Action*** %v87, align 8
  %arrayidx88 = getelementptr inbounds %struct.Action*, %struct.Action** %arraydecay85, i64 %idxprom82
  store %struct.Action* %45, %struct.Action** %arrayidx88, align 8
  br label %do.end.126

if.else.89:                                       ; preds = %do.body.75
  %50 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  %accepts90 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %50, i32 0, i32 3
  %v91 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts90, i32 0, i32 2
  %51 = load %struct.Action**, %struct.Action*** %v91, align 8
  %52 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  %accepts92 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %52, i32 0, i32 3
  %e93 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts92, i32 0, i32 3
  %arraydecay94 = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e93, i32 0, i32 0
  %cmp95 = icmp eq %struct.Action** %51, %arraydecay94
  br i1 %cmp95, label %if.then.96, label %if.else.109

if.then.96:                                       ; preds = %if.else.89
  %53 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  %accepts97 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %53, i32 0, i32 3
  %n98 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts97, i32 0, i32 0
  %54 = load i32, i32* %n98, align 4
  %cmp99 = icmp ult i32 %54, 3
  br i1 %cmp99, label %if.then.100, label %if.end.108

if.then.100:                                      ; preds = %if.then.96
  %55 = load %struct.Action*, %struct.Action** %a, align 8
  %56 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  %accepts101 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %56, i32 0, i32 3
  %n102 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts101, i32 0, i32 0
  %57 = load i32, i32* %n102, align 4
  %inc103 = add i32 %57, 1
  store i32 %inc103, i32* %n102, align 4
  %idxprom104 = zext i32 %57 to i64
  %58 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  %accepts105 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %58, i32 0, i32 3
  %v106 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts105, i32 0, i32 2
  %59 = load %struct.Action**, %struct.Action*** %v106, align 8
  %arrayidx107 = getelementptr inbounds %struct.Action*, %struct.Action** %59, i64 %idxprom104
  store %struct.Action* %55, %struct.Action** %arrayidx107, align 8
  br label %do.end.126

if.end.108:                                       ; preds = %if.then.96
  br label %if.end.123

if.else.109:                                      ; preds = %if.else.89
  %60 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  %accepts110 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %60, i32 0, i32 3
  %n111 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts110, i32 0, i32 0
  %61 = load i32, i32* %n111, align 4
  %and112 = and i32 %61, 7
  %tobool113 = icmp ne i32 %and112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.122

if.then.114:                                      ; preds = %if.else.109
  %62 = load %struct.Action*, %struct.Action** %a, align 8
  %63 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  %accepts115 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %63, i32 0, i32 3
  %n116 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts115, i32 0, i32 0
  %64 = load i32, i32* %n116, align 4
  %inc117 = add i32 %64, 1
  store i32 %inc117, i32* %n116, align 4
  %idxprom118 = zext i32 %64 to i64
  %65 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  %accepts119 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %65, i32 0, i32 3
  %v120 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts119, i32 0, i32 2
  %66 = load %struct.Action**, %struct.Action*** %v120, align 8
  %arrayidx121 = getelementptr inbounds %struct.Action*, %struct.Action** %66, i64 %idxprom118
  store %struct.Action* %62, %struct.Action** %arrayidx121, align 8
  br label %do.end.126

if.end.122:                                       ; preds = %if.else.109
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.end.108
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123
  %67 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  %accepts125 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %67, i32 0, i32 3
  %68 = bitcast %struct.anon.11* %accepts125 to i8*
  %69 = load %struct.Action*, %struct.Action** %a, align 8
  %70 = bitcast %struct.Action* %69 to i8*
  call void @vec_add_internal(i8* %68, i8* %70)
  br label %do.end.126

do.end.126:                                       ; preds = %if.end.124, %if.then.114, %if.then.100, %if.then.78
  br label %if.end.614

if.else.127:                                      ; preds = %for.body
  %71 = load %struct.Action*, %struct.Action** %a, align 8
  %kind128 = getelementptr inbounds %struct.Action, %struct.Action* %71, i32 0, i32 0
  %72 = load i32, i32* %kind128, align 4
  %cmp129 = icmp eq i32 %72, 1
  br i1 %cmp129, label %land.lhs.true, label %if.end.613

land.lhs.true:                                    ; preds = %if.else.127
  %73 = load %struct.Action*, %struct.Action** %a, align 8
  %term = getelementptr inbounds %struct.Action, %struct.Action* %73, i32 0, i32 1
  %74 = load %struct.Term*, %struct.Term** %term, align 8
  %kind130 = getelementptr inbounds %struct.Term, %struct.Term* %74, i32 0, i32 0
  %75 = load i32, i32* %kind130, align 4
  %cmp131 = icmp eq i32 %75, 0
  br i1 %cmp131, label %if.then.132, label %if.end.613

if.then.132:                                      ; preds = %land.lhs.true
  store i32 1, i32* %one, align 4
  %76 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  store %struct.NFAState* %76, %struct.NFAState** %nn, align 8
  %77 = load %struct.Action*, %struct.Action** %a, align 8
  %term133 = getelementptr inbounds %struct.Action, %struct.Action* %77, i32 0, i32 1
  %78 = load %struct.Term*, %struct.Term** %term133, align 8
  %ignore_case = getelementptr inbounds %struct.Term, %struct.Term* %78, i32 0, i32 7
  %bf.load = load i8, i8* %ignore_case, align 4
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool134 = icmp ne i32 %bf.cast, 0
  br i1 %tobool134, label %if.else.236, label %if.then.135

if.then.135:                                      ; preds = %if.then.132
  %79 = load %struct.Action*, %struct.Action** %a, align 8
  %term136 = getelementptr inbounds %struct.Action, %struct.Action* %79, i32 0, i32 1
  %80 = load %struct.Term*, %struct.Term** %term136, align 8
  %string = getelementptr inbounds %struct.Term, %struct.Term* %80, i32 0, i32 5
  %81 = load i8*, i8** %string, align 8
  store i8* %81, i8** %c, align 8
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc, %if.then.135
  %82 = load i8*, i8** %c, align 8
  %83 = load i8, i8* %82, align 1
  %tobool138 = icmp ne i8 %83, 0
  br i1 %tobool138, label %for.body.139, label %for.end

for.body.139:                                     ; preds = %for.cond.137
  %84 = load i8*, i8** %c, align 8
  %85 = load i8, i8* %84, align 1
  %idxprom140 = zext i8 %85 to i64
  %86 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars141 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %86, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars141, i32 0, i64 %idxprom140
  %n143 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx142, i32 0, i32 0
  %87 = load i32, i32* %n143, align 4
  %tobool144 = icmp ne i32 %87, 0
  br i1 %tobool144, label %if.else.229, label %if.then.145

if.then.145:                                      ; preds = %for.body.139
  br label %do.body.146

do.body.146:                                      ; preds = %if.then.145
  %88 = load i8*, i8** %c, align 8
  %89 = load i8, i8* %88, align 1
  %idxprom147 = zext i8 %89 to i64
  %90 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars148 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %90, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars148, i32 0, i64 %idxprom147
  %v150 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx149, i32 0, i32 2
  %91 = load %struct.NFAState**, %struct.NFAState*** %v150, align 8
  %tobool151 = icmp ne %struct.NFAState** %91, null
  br i1 %tobool151, label %if.else.170, label %if.then.152

if.then.152:                                      ; preds = %do.body.146
  %92 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call153 = call %struct.NFAState* @new_NFAState(%struct.LexState* %92)
  store %struct.NFAState* %call153, %struct.NFAState** %nnn, align 8
  %93 = load i8*, i8** %c, align 8
  %94 = load i8, i8* %93, align 1
  %idxprom154 = zext i8 %94 to i64
  %95 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars155 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %95, i32 0, i32 1
  %arrayidx156 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars155, i32 0, i64 %idxprom154
  %n157 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx156, i32 0, i32 0
  %96 = load i32, i32* %n157, align 4
  %inc158 = add i32 %96, 1
  store i32 %inc158, i32* %n157, align 4
  %idxprom159 = zext i32 %96 to i64
  %97 = load i8*, i8** %c, align 8
  %98 = load i8, i8* %97, align 1
  %idxprom160 = zext i8 %98 to i64
  %99 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars161 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %99, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars161, i32 0, i64 %idxprom160
  %e163 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx162, i32 0, i32 3
  %arraydecay164 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e163, i32 0, i32 0
  %100 = load i8*, i8** %c, align 8
  %101 = load i8, i8* %100, align 1
  %idxprom165 = zext i8 %101 to i64
  %102 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars166 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %102, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars166, i32 0, i64 %idxprom165
  %v168 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx167, i32 0, i32 2
  store %struct.NFAState** %arraydecay164, %struct.NFAState*** %v168, align 8
  %arrayidx169 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay164, i64 %idxprom159
  store %struct.NFAState* %call153, %struct.NFAState** %arrayidx169, align 8
  br label %do.end.228

if.else.170:                                      ; preds = %do.body.146
  %103 = load i8*, i8** %c, align 8
  %104 = load i8, i8* %103, align 1
  %idxprom171 = zext i8 %104 to i64
  %105 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars172 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %105, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars172, i32 0, i64 %idxprom171
  %v174 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx173, i32 0, i32 2
  %106 = load %struct.NFAState**, %struct.NFAState*** %v174, align 8
  %107 = load i8*, i8** %c, align 8
  %108 = load i8, i8* %107, align 1
  %idxprom175 = zext i8 %108 to i64
  %109 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars176 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %109, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars176, i32 0, i64 %idxprom175
  %e178 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx177, i32 0, i32 3
  %arraydecay179 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e178, i32 0, i32 0
  %cmp180 = icmp eq %struct.NFAState** %106, %arraydecay179
  br i1 %cmp180, label %if.then.181, label %if.else.201

if.then.181:                                      ; preds = %if.else.170
  %110 = load i8*, i8** %c, align 8
  %111 = load i8, i8* %110, align 1
  %idxprom182 = zext i8 %111 to i64
  %112 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars183 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %112, i32 0, i32 1
  %arrayidx184 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars183, i32 0, i64 %idxprom182
  %n185 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx184, i32 0, i32 0
  %113 = load i32, i32* %n185, align 4
  %cmp186 = icmp ult i32 %113, 3
  br i1 %cmp186, label %if.then.187, label %if.end.200

if.then.187:                                      ; preds = %if.then.181
  %114 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call188 = call %struct.NFAState* @new_NFAState(%struct.LexState* %114)
  store %struct.NFAState* %call188, %struct.NFAState** %nnn, align 8
  %115 = load i8*, i8** %c, align 8
  %116 = load i8, i8* %115, align 1
  %idxprom189 = zext i8 %116 to i64
  %117 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars190 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %117, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars190, i32 0, i64 %idxprom189
  %n192 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx191, i32 0, i32 0
  %118 = load i32, i32* %n192, align 4
  %inc193 = add i32 %118, 1
  store i32 %inc193, i32* %n192, align 4
  %idxprom194 = zext i32 %118 to i64
  %119 = load i8*, i8** %c, align 8
  %120 = load i8, i8* %119, align 1
  %idxprom195 = zext i8 %120 to i64
  %121 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars196 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %121, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars196, i32 0, i64 %idxprom195
  %v198 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx197, i32 0, i32 2
  %122 = load %struct.NFAState**, %struct.NFAState*** %v198, align 8
  %arrayidx199 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %122, i64 %idxprom194
  store %struct.NFAState* %call188, %struct.NFAState** %arrayidx199, align 8
  br label %do.end.228

if.end.200:                                       ; preds = %if.then.181
  br label %if.end.222

if.else.201:                                      ; preds = %if.else.170
  %123 = load i8*, i8** %c, align 8
  %124 = load i8, i8* %123, align 1
  %idxprom202 = zext i8 %124 to i64
  %125 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars203 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %125, i32 0, i32 1
  %arrayidx204 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars203, i32 0, i64 %idxprom202
  %n205 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx204, i32 0, i32 0
  %126 = load i32, i32* %n205, align 4
  %and206 = and i32 %126, 7
  %tobool207 = icmp ne i32 %and206, 0
  br i1 %tobool207, label %if.then.208, label %if.end.221

if.then.208:                                      ; preds = %if.else.201
  %127 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call209 = call %struct.NFAState* @new_NFAState(%struct.LexState* %127)
  store %struct.NFAState* %call209, %struct.NFAState** %nnn, align 8
  %128 = load i8*, i8** %c, align 8
  %129 = load i8, i8* %128, align 1
  %idxprom210 = zext i8 %129 to i64
  %130 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars211 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %130, i32 0, i32 1
  %arrayidx212 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars211, i32 0, i64 %idxprom210
  %n213 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx212, i32 0, i32 0
  %131 = load i32, i32* %n213, align 4
  %inc214 = add i32 %131, 1
  store i32 %inc214, i32* %n213, align 4
  %idxprom215 = zext i32 %131 to i64
  %132 = load i8*, i8** %c, align 8
  %133 = load i8, i8* %132, align 1
  %idxprom216 = zext i8 %133 to i64
  %134 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars217 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %134, i32 0, i32 1
  %arrayidx218 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars217, i32 0, i64 %idxprom216
  %v219 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx218, i32 0, i32 2
  %135 = load %struct.NFAState**, %struct.NFAState*** %v219, align 8
  %arrayidx220 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %135, i64 %idxprom215
  store %struct.NFAState* %call209, %struct.NFAState** %arrayidx220, align 8
  br label %do.end.228

if.end.221:                                       ; preds = %if.else.201
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %if.end.200
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222
  %136 = load i8*, i8** %c, align 8
  %137 = load i8, i8* %136, align 1
  %idxprom224 = zext i8 %137 to i64
  %138 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars225 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %138, i32 0, i32 1
  %arrayidx226 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars225, i32 0, i64 %idxprom224
  %139 = bitcast %struct.anon.9* %arrayidx226 to i8*
  %140 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call227 = call %struct.NFAState* @new_NFAState(%struct.LexState* %140)
  store %struct.NFAState* %call227, %struct.NFAState** %nnn, align 8
  %141 = bitcast %struct.NFAState* %call227 to i8*
  call void @vec_add_internal(i8* %139, i8* %141)
  br label %do.end.228

do.end.228:                                       ; preds = %if.end.223, %if.then.208, %if.then.187, %if.then.152
  br label %if.end.235

if.else.229:                                      ; preds = %for.body.139
  %142 = load i8*, i8** %c, align 8
  %143 = load i8, i8* %142, align 1
  %idxprom230 = zext i8 %143 to i64
  %144 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars231 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %144, i32 0, i32 1
  %arrayidx232 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars231, i32 0, i64 %idxprom230
  %v233 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx232, i32 0, i32 2
  %145 = load %struct.NFAState**, %struct.NFAState*** %v233, align 8
  %arrayidx234 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %145, i64 0
  %146 = load %struct.NFAState*, %struct.NFAState** %arrayidx234, align 8
  store %struct.NFAState* %146, %struct.NFAState** %nnn, align 8
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.229, %do.end.228
  %147 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  store %struct.NFAState* %147, %struct.NFAState** %nn, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.235
  %148 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  br label %for.cond.137

for.end:                                          ; preds = %for.cond.137
  br label %if.end.557

if.else.236:                                      ; preds = %if.then.132
  %149 = load %struct.Action*, %struct.Action** %a, align 8
  %term237 = getelementptr inbounds %struct.Action, %struct.Action* %149, i32 0, i32 1
  %150 = load %struct.Term*, %struct.Term** %term237, align 8
  %string238 = getelementptr inbounds %struct.Term, %struct.Term* %150, i32 0, i32 5
  %151 = load i8*, i8** %string238, align 8
  store i8* %151, i8** %c, align 8
  br label %for.cond.239

for.cond.239:                                     ; preds = %for.inc.554, %if.else.236
  %152 = load i8*, i8** %c, align 8
  %153 = load i8, i8* %152, align 1
  %tobool240 = icmp ne i8 %153, 0
  br i1 %tobool240, label %for.body.241, label %for.end.556

for.body.241:                                     ; preds = %for.cond.239
  %154 = load i8*, i8** %c, align 8
  %155 = load i8, i8* %154, align 1
  %conv = zext i8 %155 to i32
  %idxprom242 = sext i32 %conv to i64
  %call243 = call i16** @__ctype_b_loc() #5
  %156 = load i16*, i16** %call243, align 8
  %arrayidx244 = getelementptr inbounds i16, i16* %156, i64 %idxprom242
  %157 = load i16, i16* %arrayidx244, align 2
  %conv245 = zext i16 %157 to i32
  %and246 = and i32 %conv245, 1024
  %tobool247 = icmp ne i32 %and246, 0
  br i1 %tobool247, label %if.then.248, label %if.else.467

if.then.248:                                      ; preds = %for.body.241
  br label %do.body.249

do.body.249:                                      ; preds = %if.then.248
  %158 = load i8*, i8** %c, align 8
  %159 = load i8, i8* %158, align 1
  %conv250 = zext i8 %159 to i32
  %call251 = call i32 @toupper(i32 %conv250) #1
  %idxprom252 = sext i32 %call251 to i64
  %160 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars253 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %160, i32 0, i32 1
  %arrayidx254 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars253, i32 0, i64 %idxprom252
  %v255 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx254, i32 0, i32 2
  %161 = load %struct.NFAState**, %struct.NFAState*** %v255, align 8
  %tobool256 = icmp ne %struct.NFAState** %161, null
  br i1 %tobool256, label %if.else.281, label %if.then.257

if.then.257:                                      ; preds = %do.body.249
  %162 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call258 = call %struct.NFAState* @new_NFAState(%struct.LexState* %162)
  store %struct.NFAState* %call258, %struct.NFAState** %nnn, align 8
  %163 = load i8*, i8** %c, align 8
  %164 = load i8, i8* %163, align 1
  %conv259 = zext i8 %164 to i32
  %call260 = call i32 @toupper(i32 %conv259) #1
  %idxprom261 = sext i32 %call260 to i64
  %165 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars262 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %165, i32 0, i32 1
  %arrayidx263 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars262, i32 0, i64 %idxprom261
  %n264 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx263, i32 0, i32 0
  %166 = load i32, i32* %n264, align 4
  %inc265 = add i32 %166, 1
  store i32 %inc265, i32* %n264, align 4
  %idxprom266 = zext i32 %166 to i64
  %167 = load i8*, i8** %c, align 8
  %168 = load i8, i8* %167, align 1
  %conv267 = zext i8 %168 to i32
  %call268 = call i32 @toupper(i32 %conv267) #1
  %idxprom269 = sext i32 %call268 to i64
  %169 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars270 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %169, i32 0, i32 1
  %arrayidx271 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars270, i32 0, i64 %idxprom269
  %e272 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx271, i32 0, i32 3
  %arraydecay273 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e272, i32 0, i32 0
  %170 = load i8*, i8** %c, align 8
  %171 = load i8, i8* %170, align 1
  %conv274 = zext i8 %171 to i32
  %call275 = call i32 @toupper(i32 %conv274) #1
  %idxprom276 = sext i32 %call275 to i64
  %172 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars277 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %172, i32 0, i32 1
  %arrayidx278 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars277, i32 0, i64 %idxprom276
  %v279 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx278, i32 0, i32 2
  store %struct.NFAState** %arraydecay273, %struct.NFAState*** %v279, align 8
  %arrayidx280 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay273, i64 %idxprom266
  store %struct.NFAState* %call258, %struct.NFAState** %arrayidx280, align 8
  br label %do.end.359

if.else.281:                                      ; preds = %do.body.249
  %173 = load i8*, i8** %c, align 8
  %174 = load i8, i8* %173, align 1
  %conv282 = zext i8 %174 to i32
  %call283 = call i32 @toupper(i32 %conv282) #1
  %idxprom284 = sext i32 %call283 to i64
  %175 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars285 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %175, i32 0, i32 1
  %arrayidx286 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars285, i32 0, i64 %idxprom284
  %v287 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx286, i32 0, i32 2
  %176 = load %struct.NFAState**, %struct.NFAState*** %v287, align 8
  %177 = load i8*, i8** %c, align 8
  %178 = load i8, i8* %177, align 1
  %conv288 = zext i8 %178 to i32
  %call289 = call i32 @toupper(i32 %conv288) #1
  %idxprom290 = sext i32 %call289 to i64
  %179 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars291 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %179, i32 0, i32 1
  %arrayidx292 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars291, i32 0, i64 %idxprom290
  %e293 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx292, i32 0, i32 3
  %arraydecay294 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e293, i32 0, i32 0
  %cmp295 = icmp eq %struct.NFAState** %176, %arraydecay294
  br i1 %cmp295, label %if.then.297, label %if.else.324

if.then.297:                                      ; preds = %if.else.281
  %180 = load i8*, i8** %c, align 8
  %181 = load i8, i8* %180, align 1
  %conv298 = zext i8 %181 to i32
  %call299 = call i32 @toupper(i32 %conv298) #1
  %idxprom300 = sext i32 %call299 to i64
  %182 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars301 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %182, i32 0, i32 1
  %arrayidx302 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars301, i32 0, i64 %idxprom300
  %n303 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx302, i32 0, i32 0
  %183 = load i32, i32* %n303, align 4
  %cmp304 = icmp ult i32 %183, 3
  br i1 %cmp304, label %if.then.306, label %if.end.323

if.then.306:                                      ; preds = %if.then.297
  %184 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call307 = call %struct.NFAState* @new_NFAState(%struct.LexState* %184)
  store %struct.NFAState* %call307, %struct.NFAState** %nnn, align 8
  %185 = load i8*, i8** %c, align 8
  %186 = load i8, i8* %185, align 1
  %conv308 = zext i8 %186 to i32
  %call309 = call i32 @toupper(i32 %conv308) #1
  %idxprom310 = sext i32 %call309 to i64
  %187 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars311 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %187, i32 0, i32 1
  %arrayidx312 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars311, i32 0, i64 %idxprom310
  %n313 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx312, i32 0, i32 0
  %188 = load i32, i32* %n313, align 4
  %inc314 = add i32 %188, 1
  store i32 %inc314, i32* %n313, align 4
  %idxprom315 = zext i32 %188 to i64
  %189 = load i8*, i8** %c, align 8
  %190 = load i8, i8* %189, align 1
  %conv316 = zext i8 %190 to i32
  %call317 = call i32 @toupper(i32 %conv316) #1
  %idxprom318 = sext i32 %call317 to i64
  %191 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars319 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %191, i32 0, i32 1
  %arrayidx320 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars319, i32 0, i64 %idxprom318
  %v321 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx320, i32 0, i32 2
  %192 = load %struct.NFAState**, %struct.NFAState*** %v321, align 8
  %arrayidx322 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %192, i64 %idxprom315
  store %struct.NFAState* %call307, %struct.NFAState** %arrayidx322, align 8
  br label %do.end.359

if.end.323:                                       ; preds = %if.then.297
  br label %if.end.351

if.else.324:                                      ; preds = %if.else.281
  %193 = load i8*, i8** %c, align 8
  %194 = load i8, i8* %193, align 1
  %conv325 = zext i8 %194 to i32
  %call326 = call i32 @toupper(i32 %conv325) #1
  %idxprom327 = sext i32 %call326 to i64
  %195 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars328 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %195, i32 0, i32 1
  %arrayidx329 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars328, i32 0, i64 %idxprom327
  %n330 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx329, i32 0, i32 0
  %196 = load i32, i32* %n330, align 4
  %and331 = and i32 %196, 7
  %tobool332 = icmp ne i32 %and331, 0
  br i1 %tobool332, label %if.then.333, label %if.end.350

if.then.333:                                      ; preds = %if.else.324
  %197 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call334 = call %struct.NFAState* @new_NFAState(%struct.LexState* %197)
  store %struct.NFAState* %call334, %struct.NFAState** %nnn, align 8
  %198 = load i8*, i8** %c, align 8
  %199 = load i8, i8* %198, align 1
  %conv335 = zext i8 %199 to i32
  %call336 = call i32 @toupper(i32 %conv335) #1
  %idxprom337 = sext i32 %call336 to i64
  %200 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars338 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %200, i32 0, i32 1
  %arrayidx339 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars338, i32 0, i64 %idxprom337
  %n340 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx339, i32 0, i32 0
  %201 = load i32, i32* %n340, align 4
  %inc341 = add i32 %201, 1
  store i32 %inc341, i32* %n340, align 4
  %idxprom342 = zext i32 %201 to i64
  %202 = load i8*, i8** %c, align 8
  %203 = load i8, i8* %202, align 1
  %conv343 = zext i8 %203 to i32
  %call344 = call i32 @toupper(i32 %conv343) #1
  %idxprom345 = sext i32 %call344 to i64
  %204 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars346 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %204, i32 0, i32 1
  %arrayidx347 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars346, i32 0, i64 %idxprom345
  %v348 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx347, i32 0, i32 2
  %205 = load %struct.NFAState**, %struct.NFAState*** %v348, align 8
  %arrayidx349 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %205, i64 %idxprom342
  store %struct.NFAState* %call334, %struct.NFAState** %arrayidx349, align 8
  br label %do.end.359

if.end.350:                                       ; preds = %if.else.324
  br label %if.end.351

if.end.351:                                       ; preds = %if.end.350, %if.end.323
  br label %if.end.352

if.end.352:                                       ; preds = %if.end.351
  %206 = load i8*, i8** %c, align 8
  %207 = load i8, i8* %206, align 1
  %conv353 = zext i8 %207 to i32
  %call354 = call i32 @toupper(i32 %conv353) #1
  %idxprom355 = sext i32 %call354 to i64
  %208 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars356 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %208, i32 0, i32 1
  %arrayidx357 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars356, i32 0, i64 %idxprom355
  %209 = bitcast %struct.anon.9* %arrayidx357 to i8*
  %210 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call358 = call %struct.NFAState* @new_NFAState(%struct.LexState* %210)
  store %struct.NFAState* %call358, %struct.NFAState** %nnn, align 8
  %211 = bitcast %struct.NFAState* %call358 to i8*
  call void @vec_add_internal(i8* %209, i8* %211)
  br label %do.end.359

do.end.359:                                       ; preds = %if.end.352, %if.then.333, %if.then.306, %if.then.257
  br label %do.body.360

do.body.360:                                      ; preds = %do.end.359
  %212 = load i8*, i8** %c, align 8
  %213 = load i8, i8* %212, align 1
  %conv361 = zext i8 %213 to i32
  %call362 = call i32 @tolower(i32 %conv361) #1
  %idxprom363 = sext i32 %call362 to i64
  %214 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars364 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %214, i32 0, i32 1
  %arrayidx365 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars364, i32 0, i64 %idxprom363
  %v366 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx365, i32 0, i32 2
  %215 = load %struct.NFAState**, %struct.NFAState*** %v366, align 8
  %tobool367 = icmp ne %struct.NFAState** %215, null
  br i1 %tobool367, label %if.else.391, label %if.then.368

if.then.368:                                      ; preds = %do.body.360
  %216 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  %217 = load i8*, i8** %c, align 8
  %218 = load i8, i8* %217, align 1
  %conv369 = zext i8 %218 to i32
  %call370 = call i32 @tolower(i32 %conv369) #1
  %idxprom371 = sext i32 %call370 to i64
  %219 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars372 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %219, i32 0, i32 1
  %arrayidx373 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars372, i32 0, i64 %idxprom371
  %n374 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx373, i32 0, i32 0
  %220 = load i32, i32* %n374, align 4
  %inc375 = add i32 %220, 1
  store i32 %inc375, i32* %n374, align 4
  %idxprom376 = zext i32 %220 to i64
  %221 = load i8*, i8** %c, align 8
  %222 = load i8, i8* %221, align 1
  %conv377 = zext i8 %222 to i32
  %call378 = call i32 @tolower(i32 %conv377) #1
  %idxprom379 = sext i32 %call378 to i64
  %223 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars380 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %223, i32 0, i32 1
  %arrayidx381 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars380, i32 0, i64 %idxprom379
  %e382 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx381, i32 0, i32 3
  %arraydecay383 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e382, i32 0, i32 0
  %224 = load i8*, i8** %c, align 8
  %225 = load i8, i8* %224, align 1
  %conv384 = zext i8 %225 to i32
  %call385 = call i32 @tolower(i32 %conv384) #1
  %idxprom386 = sext i32 %call385 to i64
  %226 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars387 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %226, i32 0, i32 1
  %arrayidx388 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars387, i32 0, i64 %idxprom386
  %v389 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx388, i32 0, i32 2
  store %struct.NFAState** %arraydecay383, %struct.NFAState*** %v389, align 8
  %arrayidx390 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay383, i64 %idxprom376
  store %struct.NFAState* %216, %struct.NFAState** %arrayidx390, align 8
  br label %do.end.466

if.else.391:                                      ; preds = %do.body.360
  %227 = load i8*, i8** %c, align 8
  %228 = load i8, i8* %227, align 1
  %conv392 = zext i8 %228 to i32
  %call393 = call i32 @tolower(i32 %conv392) #1
  %idxprom394 = sext i32 %call393 to i64
  %229 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars395 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %229, i32 0, i32 1
  %arrayidx396 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars395, i32 0, i64 %idxprom394
  %v397 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx396, i32 0, i32 2
  %230 = load %struct.NFAState**, %struct.NFAState*** %v397, align 8
  %231 = load i8*, i8** %c, align 8
  %232 = load i8, i8* %231, align 1
  %conv398 = zext i8 %232 to i32
  %call399 = call i32 @tolower(i32 %conv398) #1
  %idxprom400 = sext i32 %call399 to i64
  %233 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars401 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %233, i32 0, i32 1
  %arrayidx402 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars401, i32 0, i64 %idxprom400
  %e403 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx402, i32 0, i32 3
  %arraydecay404 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e403, i32 0, i32 0
  %cmp405 = icmp eq %struct.NFAState** %230, %arraydecay404
  br i1 %cmp405, label %if.then.407, label %if.else.433

if.then.407:                                      ; preds = %if.else.391
  %234 = load i8*, i8** %c, align 8
  %235 = load i8, i8* %234, align 1
  %conv408 = zext i8 %235 to i32
  %call409 = call i32 @tolower(i32 %conv408) #1
  %idxprom410 = sext i32 %call409 to i64
  %236 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars411 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %236, i32 0, i32 1
  %arrayidx412 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars411, i32 0, i64 %idxprom410
  %n413 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx412, i32 0, i32 0
  %237 = load i32, i32* %n413, align 4
  %cmp414 = icmp ult i32 %237, 3
  br i1 %cmp414, label %if.then.416, label %if.end.432

if.then.416:                                      ; preds = %if.then.407
  %238 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  %239 = load i8*, i8** %c, align 8
  %240 = load i8, i8* %239, align 1
  %conv417 = zext i8 %240 to i32
  %call418 = call i32 @tolower(i32 %conv417) #1
  %idxprom419 = sext i32 %call418 to i64
  %241 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars420 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %241, i32 0, i32 1
  %arrayidx421 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars420, i32 0, i64 %idxprom419
  %n422 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx421, i32 0, i32 0
  %242 = load i32, i32* %n422, align 4
  %inc423 = add i32 %242, 1
  store i32 %inc423, i32* %n422, align 4
  %idxprom424 = zext i32 %242 to i64
  %243 = load i8*, i8** %c, align 8
  %244 = load i8, i8* %243, align 1
  %conv425 = zext i8 %244 to i32
  %call426 = call i32 @tolower(i32 %conv425) #1
  %idxprom427 = sext i32 %call426 to i64
  %245 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars428 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %245, i32 0, i32 1
  %arrayidx429 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars428, i32 0, i64 %idxprom427
  %v430 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx429, i32 0, i32 2
  %246 = load %struct.NFAState**, %struct.NFAState*** %v430, align 8
  %arrayidx431 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %246, i64 %idxprom424
  store %struct.NFAState* %238, %struct.NFAState** %arrayidx431, align 8
  br label %do.end.466

if.end.432:                                       ; preds = %if.then.407
  br label %if.end.459

if.else.433:                                      ; preds = %if.else.391
  %247 = load i8*, i8** %c, align 8
  %248 = load i8, i8* %247, align 1
  %conv434 = zext i8 %248 to i32
  %call435 = call i32 @tolower(i32 %conv434) #1
  %idxprom436 = sext i32 %call435 to i64
  %249 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars437 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %249, i32 0, i32 1
  %arrayidx438 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars437, i32 0, i64 %idxprom436
  %n439 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx438, i32 0, i32 0
  %250 = load i32, i32* %n439, align 4
  %and440 = and i32 %250, 7
  %tobool441 = icmp ne i32 %and440, 0
  br i1 %tobool441, label %if.then.442, label %if.end.458

if.then.442:                                      ; preds = %if.else.433
  %251 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  %252 = load i8*, i8** %c, align 8
  %253 = load i8, i8* %252, align 1
  %conv443 = zext i8 %253 to i32
  %call444 = call i32 @tolower(i32 %conv443) #1
  %idxprom445 = sext i32 %call444 to i64
  %254 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars446 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %254, i32 0, i32 1
  %arrayidx447 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars446, i32 0, i64 %idxprom445
  %n448 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx447, i32 0, i32 0
  %255 = load i32, i32* %n448, align 4
  %inc449 = add i32 %255, 1
  store i32 %inc449, i32* %n448, align 4
  %idxprom450 = zext i32 %255 to i64
  %256 = load i8*, i8** %c, align 8
  %257 = load i8, i8* %256, align 1
  %conv451 = zext i8 %257 to i32
  %call452 = call i32 @tolower(i32 %conv451) #1
  %idxprom453 = sext i32 %call452 to i64
  %258 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars454 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %258, i32 0, i32 1
  %arrayidx455 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars454, i32 0, i64 %idxprom453
  %v456 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx455, i32 0, i32 2
  %259 = load %struct.NFAState**, %struct.NFAState*** %v456, align 8
  %arrayidx457 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %259, i64 %idxprom450
  store %struct.NFAState* %251, %struct.NFAState** %arrayidx457, align 8
  br label %do.end.466

if.end.458:                                       ; preds = %if.else.433
  br label %if.end.459

if.end.459:                                       ; preds = %if.end.458, %if.end.432
  br label %if.end.460

if.end.460:                                       ; preds = %if.end.459
  %260 = load i8*, i8** %c, align 8
  %261 = load i8, i8* %260, align 1
  %conv461 = zext i8 %261 to i32
  %call462 = call i32 @tolower(i32 %conv461) #1
  %idxprom463 = sext i32 %call462 to i64
  %262 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars464 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %262, i32 0, i32 1
  %arrayidx465 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars464, i32 0, i64 %idxprom463
  %263 = bitcast %struct.anon.9* %arrayidx465 to i8*
  %264 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  %265 = bitcast %struct.NFAState* %264 to i8*
  call void @vec_add_internal(i8* %263, i8* %265)
  br label %do.end.466

do.end.466:                                       ; preds = %if.end.460, %if.then.442, %if.then.416, %if.then.368
  br label %if.end.553

if.else.467:                                      ; preds = %for.body.241
  br label %do.body.468

do.body.468:                                      ; preds = %if.else.467
  %266 = load i8*, i8** %c, align 8
  %267 = load i8, i8* %266, align 1
  %idxprom469 = zext i8 %267 to i64
  %268 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars470 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %268, i32 0, i32 1
  %arrayidx471 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars470, i32 0, i64 %idxprom469
  %v472 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx471, i32 0, i32 2
  %269 = load %struct.NFAState**, %struct.NFAState*** %v472, align 8
  %tobool473 = icmp ne %struct.NFAState** %269, null
  br i1 %tobool473, label %if.else.492, label %if.then.474

if.then.474:                                      ; preds = %do.body.468
  %270 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call475 = call %struct.NFAState* @new_NFAState(%struct.LexState* %270)
  store %struct.NFAState* %call475, %struct.NFAState** %nnn, align 8
  %271 = load i8*, i8** %c, align 8
  %272 = load i8, i8* %271, align 1
  %idxprom476 = zext i8 %272 to i64
  %273 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars477 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %273, i32 0, i32 1
  %arrayidx478 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars477, i32 0, i64 %idxprom476
  %n479 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx478, i32 0, i32 0
  %274 = load i32, i32* %n479, align 4
  %inc480 = add i32 %274, 1
  store i32 %inc480, i32* %n479, align 4
  %idxprom481 = zext i32 %274 to i64
  %275 = load i8*, i8** %c, align 8
  %276 = load i8, i8* %275, align 1
  %idxprom482 = zext i8 %276 to i64
  %277 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars483 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %277, i32 0, i32 1
  %arrayidx484 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars483, i32 0, i64 %idxprom482
  %e485 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx484, i32 0, i32 3
  %arraydecay486 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e485, i32 0, i32 0
  %278 = load i8*, i8** %c, align 8
  %279 = load i8, i8* %278, align 1
  %idxprom487 = zext i8 %279 to i64
  %280 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars488 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %280, i32 0, i32 1
  %arrayidx489 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars488, i32 0, i64 %idxprom487
  %v490 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx489, i32 0, i32 2
  store %struct.NFAState** %arraydecay486, %struct.NFAState*** %v490, align 8
  %arrayidx491 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay486, i64 %idxprom481
  store %struct.NFAState* %call475, %struct.NFAState** %arrayidx491, align 8
  br label %do.end.552

if.else.492:                                      ; preds = %do.body.468
  %281 = load i8*, i8** %c, align 8
  %282 = load i8, i8* %281, align 1
  %idxprom493 = zext i8 %282 to i64
  %283 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars494 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %283, i32 0, i32 1
  %arrayidx495 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars494, i32 0, i64 %idxprom493
  %v496 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx495, i32 0, i32 2
  %284 = load %struct.NFAState**, %struct.NFAState*** %v496, align 8
  %285 = load i8*, i8** %c, align 8
  %286 = load i8, i8* %285, align 1
  %idxprom497 = zext i8 %286 to i64
  %287 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars498 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %287, i32 0, i32 1
  %arrayidx499 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars498, i32 0, i64 %idxprom497
  %e500 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx499, i32 0, i32 3
  %arraydecay501 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e500, i32 0, i32 0
  %cmp502 = icmp eq %struct.NFAState** %284, %arraydecay501
  br i1 %cmp502, label %if.then.504, label %if.else.525

if.then.504:                                      ; preds = %if.else.492
  %288 = load i8*, i8** %c, align 8
  %289 = load i8, i8* %288, align 1
  %idxprom505 = zext i8 %289 to i64
  %290 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars506 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %290, i32 0, i32 1
  %arrayidx507 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars506, i32 0, i64 %idxprom505
  %n508 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx507, i32 0, i32 0
  %291 = load i32, i32* %n508, align 4
  %cmp509 = icmp ult i32 %291, 3
  br i1 %cmp509, label %if.then.511, label %if.end.524

if.then.511:                                      ; preds = %if.then.504
  %292 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call512 = call %struct.NFAState* @new_NFAState(%struct.LexState* %292)
  store %struct.NFAState* %call512, %struct.NFAState** %nnn, align 8
  %293 = load i8*, i8** %c, align 8
  %294 = load i8, i8* %293, align 1
  %idxprom513 = zext i8 %294 to i64
  %295 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars514 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %295, i32 0, i32 1
  %arrayidx515 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars514, i32 0, i64 %idxprom513
  %n516 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx515, i32 0, i32 0
  %296 = load i32, i32* %n516, align 4
  %inc517 = add i32 %296, 1
  store i32 %inc517, i32* %n516, align 4
  %idxprom518 = zext i32 %296 to i64
  %297 = load i8*, i8** %c, align 8
  %298 = load i8, i8* %297, align 1
  %idxprom519 = zext i8 %298 to i64
  %299 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars520 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %299, i32 0, i32 1
  %arrayidx521 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars520, i32 0, i64 %idxprom519
  %v522 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx521, i32 0, i32 2
  %300 = load %struct.NFAState**, %struct.NFAState*** %v522, align 8
  %arrayidx523 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %300, i64 %idxprom518
  store %struct.NFAState* %call512, %struct.NFAState** %arrayidx523, align 8
  br label %do.end.552

if.end.524:                                       ; preds = %if.then.504
  br label %if.end.546

if.else.525:                                      ; preds = %if.else.492
  %301 = load i8*, i8** %c, align 8
  %302 = load i8, i8* %301, align 1
  %idxprom526 = zext i8 %302 to i64
  %303 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars527 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %303, i32 0, i32 1
  %arrayidx528 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars527, i32 0, i64 %idxprom526
  %n529 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx528, i32 0, i32 0
  %304 = load i32, i32* %n529, align 4
  %and530 = and i32 %304, 7
  %tobool531 = icmp ne i32 %and530, 0
  br i1 %tobool531, label %if.then.532, label %if.end.545

if.then.532:                                      ; preds = %if.else.525
  %305 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call533 = call %struct.NFAState* @new_NFAState(%struct.LexState* %305)
  store %struct.NFAState* %call533, %struct.NFAState** %nnn, align 8
  %306 = load i8*, i8** %c, align 8
  %307 = load i8, i8* %306, align 1
  %idxprom534 = zext i8 %307 to i64
  %308 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars535 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %308, i32 0, i32 1
  %arrayidx536 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars535, i32 0, i64 %idxprom534
  %n537 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx536, i32 0, i32 0
  %309 = load i32, i32* %n537, align 4
  %inc538 = add i32 %309, 1
  store i32 %inc538, i32* %n537, align 4
  %idxprom539 = zext i32 %309 to i64
  %310 = load i8*, i8** %c, align 8
  %311 = load i8, i8* %310, align 1
  %idxprom540 = zext i8 %311 to i64
  %312 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars541 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %312, i32 0, i32 1
  %arrayidx542 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars541, i32 0, i64 %idxprom540
  %v543 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx542, i32 0, i32 2
  %313 = load %struct.NFAState**, %struct.NFAState*** %v543, align 8
  %arrayidx544 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %313, i64 %idxprom539
  store %struct.NFAState* %call533, %struct.NFAState** %arrayidx544, align 8
  br label %do.end.552

if.end.545:                                       ; preds = %if.else.525
  br label %if.end.546

if.end.546:                                       ; preds = %if.end.545, %if.end.524
  br label %if.end.547

if.end.547:                                       ; preds = %if.end.546
  %314 = load i8*, i8** %c, align 8
  %315 = load i8, i8* %314, align 1
  %idxprom548 = zext i8 %315 to i64
  %316 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %chars549 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %316, i32 0, i32 1
  %arrayidx550 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars549, i32 0, i64 %idxprom548
  %317 = bitcast %struct.anon.9* %arrayidx550 to i8*
  %318 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call551 = call %struct.NFAState* @new_NFAState(%struct.LexState* %318)
  store %struct.NFAState* %call551, %struct.NFAState** %nnn, align 8
  %319 = bitcast %struct.NFAState* %call551 to i8*
  call void @vec_add_internal(i8* %317, i8* %319)
  br label %do.end.552

do.end.552:                                       ; preds = %if.end.547, %if.then.532, %if.then.511, %if.then.474
  br label %if.end.553

if.end.553:                                       ; preds = %do.end.552, %do.end.466
  %320 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  store %struct.NFAState* %320, %struct.NFAState** %nn, align 8
  br label %for.inc.554

for.inc.554:                                      ; preds = %if.end.553
  %321 = load i8*, i8** %c, align 8
  %incdec.ptr555 = getelementptr inbounds i8, i8* %321, i32 1
  store i8* %incdec.ptr555, i8** %c, align 8
  br label %for.cond.239

for.end.556:                                      ; preds = %for.cond.239
  br label %if.end.557

if.end.557:                                       ; preds = %for.end.556, %for.end
  br label %do.body.558

do.body.558:                                      ; preds = %if.end.557
  %322 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts559 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %322, i32 0, i32 3
  %v560 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts559, i32 0, i32 2
  %323 = load %struct.Action**, %struct.Action*** %v560, align 8
  %tobool561 = icmp ne %struct.Action** %323, null
  br i1 %tobool561, label %if.else.573, label %if.then.562

if.then.562:                                      ; preds = %do.body.558
  %324 = load %struct.Action*, %struct.Action** %a, align 8
  %325 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts563 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %325, i32 0, i32 3
  %n564 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts563, i32 0, i32 0
  %326 = load i32, i32* %n564, align 4
  %inc565 = add i32 %326, 1
  store i32 %inc565, i32* %n564, align 4
  %idxprom566 = zext i32 %326 to i64
  %327 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts567 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %327, i32 0, i32 3
  %e568 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts567, i32 0, i32 3
  %arraydecay569 = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e568, i32 0, i32 0
  %328 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts570 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %328, i32 0, i32 3
  %v571 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts570, i32 0, i32 2
  store %struct.Action** %arraydecay569, %struct.Action*** %v571, align 8
  %arrayidx572 = getelementptr inbounds %struct.Action*, %struct.Action** %arraydecay569, i64 %idxprom566
  store %struct.Action* %324, %struct.Action** %arrayidx572, align 8
  br label %do.end.612

if.else.573:                                      ; preds = %do.body.558
  %329 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts574 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %329, i32 0, i32 3
  %v575 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts574, i32 0, i32 2
  %330 = load %struct.Action**, %struct.Action*** %v575, align 8
  %331 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts576 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %331, i32 0, i32 3
  %e577 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts576, i32 0, i32 3
  %arraydecay578 = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e577, i32 0, i32 0
  %cmp579 = icmp eq %struct.Action** %330, %arraydecay578
  br i1 %cmp579, label %if.then.581, label %if.else.595

if.then.581:                                      ; preds = %if.else.573
  %332 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts582 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %332, i32 0, i32 3
  %n583 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts582, i32 0, i32 0
  %333 = load i32, i32* %n583, align 4
  %cmp584 = icmp ult i32 %333, 3
  br i1 %cmp584, label %if.then.586, label %if.end.594

if.then.586:                                      ; preds = %if.then.581
  %334 = load %struct.Action*, %struct.Action** %a, align 8
  %335 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts587 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %335, i32 0, i32 3
  %n588 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts587, i32 0, i32 0
  %336 = load i32, i32* %n588, align 4
  %inc589 = add i32 %336, 1
  store i32 %inc589, i32* %n588, align 4
  %idxprom590 = zext i32 %336 to i64
  %337 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts591 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %337, i32 0, i32 3
  %v592 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts591, i32 0, i32 2
  %338 = load %struct.Action**, %struct.Action*** %v592, align 8
  %arrayidx593 = getelementptr inbounds %struct.Action*, %struct.Action** %338, i64 %idxprom590
  store %struct.Action* %334, %struct.Action** %arrayidx593, align 8
  br label %do.end.612

if.end.594:                                       ; preds = %if.then.581
  br label %if.end.609

if.else.595:                                      ; preds = %if.else.573
  %339 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts596 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %339, i32 0, i32 3
  %n597 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts596, i32 0, i32 0
  %340 = load i32, i32* %n597, align 4
  %and598 = and i32 %340, 7
  %tobool599 = icmp ne i32 %and598, 0
  br i1 %tobool599, label %if.then.600, label %if.end.608

if.then.600:                                      ; preds = %if.else.595
  %341 = load %struct.Action*, %struct.Action** %a, align 8
  %342 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts601 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %342, i32 0, i32 3
  %n602 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts601, i32 0, i32 0
  %343 = load i32, i32* %n602, align 4
  %inc603 = add i32 %343, 1
  store i32 %inc603, i32* %n602, align 4
  %idxprom604 = zext i32 %343 to i64
  %344 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts605 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %344, i32 0, i32 3
  %v606 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts605, i32 0, i32 2
  %345 = load %struct.Action**, %struct.Action*** %v606, align 8
  %arrayidx607 = getelementptr inbounds %struct.Action*, %struct.Action** %345, i64 %idxprom604
  store %struct.Action* %341, %struct.Action** %arrayidx607, align 8
  br label %do.end.612

if.end.608:                                       ; preds = %if.else.595
  br label %if.end.609

if.end.609:                                       ; preds = %if.end.608, %if.end.594
  br label %if.end.610

if.end.610:                                       ; preds = %if.end.609
  %346 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts611 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %346, i32 0, i32 3
  %347 = bitcast %struct.anon.11* %accepts611 to i8*
  %348 = load %struct.Action*, %struct.Action** %a, align 8
  %349 = bitcast %struct.Action* %348 to i8*
  call void @vec_add_internal(i8* %347, i8* %349)
  br label %do.end.612

do.end.612:                                       ; preds = %if.end.610, %if.then.600, %if.then.586, %if.then.562
  br label %if.end.613

if.end.613:                                       ; preds = %do.end.612, %land.lhs.true, %if.else.127
  br label %if.end.614

if.end.614:                                       ; preds = %if.end.613, %do.end.126
  br label %for.inc.615

for.inc.615:                                      ; preds = %if.end.614
  %350 = load i32, i32* %j, align 4
  %inc616 = add nsw i32 %350, 1
  store i32 %inc616, i32* %j, align 4
  br label %for.cond

for.end.617:                                      ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.618

for.cond.618:                                     ; preds = %for.inc.761, %for.end.617
  %351 = load i32, i32* %j, align 4
  %352 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions619 = getelementptr inbounds %struct.State, %struct.State* %352, i32 0, i32 5
  %n620 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions619, i32 0, i32 0
  %353 = load i32, i32* %n620, align 4
  %cmp621 = icmp ult i32 %351, %353
  br i1 %cmp621, label %for.body.623, label %for.end.763

for.body.623:                                     ; preds = %for.cond.618
  %354 = load i32, i32* %j, align 4
  %idxprom624 = sext i32 %354 to i64
  %355 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions625 = getelementptr inbounds %struct.State, %struct.State* %355, i32 0, i32 5
  %v626 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions625, i32 0, i32 2
  %356 = load %struct.Action**, %struct.Action*** %v626, align 8
  %arrayidx627 = getelementptr inbounds %struct.Action*, %struct.Action** %356, i64 %idxprom624
  %357 = load %struct.Action*, %struct.Action** %arrayidx627, align 8
  store %struct.Action* %357, %struct.Action** %a, align 8
  %358 = load %struct.Action*, %struct.Action** %a, align 8
  %kind628 = getelementptr inbounds %struct.Action, %struct.Action* %358, i32 0, i32 0
  %359 = load i32, i32* %kind628, align 4
  %cmp629 = icmp eq i32 %359, 1
  br i1 %cmp629, label %land.lhs.true.631, label %if.end.760

land.lhs.true.631:                                ; preds = %for.body.623
  %360 = load %struct.Action*, %struct.Action** %a, align 8
  %term632 = getelementptr inbounds %struct.Action, %struct.Action* %360, i32 0, i32 1
  %361 = load %struct.Term*, %struct.Term** %term632, align 8
  %kind633 = getelementptr inbounds %struct.Term, %struct.Term* %361, i32 0, i32 0
  %362 = load i32, i32* %kind633, align 4
  %cmp634 = icmp eq i32 %362, 1
  br i1 %cmp634, label %if.then.636, label %if.end.760

if.then.636:                                      ; preds = %land.lhs.true.631
  store i32 1, i32* %one, align 4
  %363 = load %struct.Action*, %struct.Action** %a, align 8
  %term637 = getelementptr inbounds %struct.Action, %struct.Action* %363, i32 0, i32 1
  %364 = load %struct.Term*, %struct.Term** %term637, align 8
  %string638 = getelementptr inbounds %struct.Term, %struct.Term* %364, i32 0, i32 5
  %365 = load i8*, i8** %string638, align 8
  store i8* %365, i8** %reg, align 8
  br label %do.body.639

do.body.639:                                      ; preds = %if.then.636
  %366 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %epsilon = getelementptr inbounds %struct.NFAState, %struct.NFAState* %366, i32 0, i32 2
  %v640 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon, i32 0, i32 2
  %367 = load %struct.NFAState**, %struct.NFAState*** %v640, align 8
  %tobool641 = icmp ne %struct.NFAState** %367, null
  br i1 %tobool641, label %if.else.654, label %if.then.642

if.then.642:                                      ; preds = %do.body.639
  %368 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call643 = call %struct.NFAState* @new_NFAState(%struct.LexState* %368)
  store %struct.NFAState* %call643, %struct.NFAState** %nnn, align 8
  %369 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %epsilon644 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %369, i32 0, i32 2
  %n645 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon644, i32 0, i32 0
  %370 = load i32, i32* %n645, align 4
  %inc646 = add i32 %370, 1
  store i32 %inc646, i32* %n645, align 4
  %idxprom647 = zext i32 %370 to i64
  %371 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %epsilon648 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %371, i32 0, i32 2
  %e649 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon648, i32 0, i32 3
  %arraydecay650 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e649, i32 0, i32 0
  %372 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %epsilon651 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %372, i32 0, i32 2
  %v652 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon651, i32 0, i32 2
  store %struct.NFAState** %arraydecay650, %struct.NFAState*** %v652, align 8
  %arrayidx653 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay650, i64 %idxprom647
  store %struct.NFAState* %call643, %struct.NFAState** %arrayidx653, align 8
  br label %do.end.696

if.else.654:                                      ; preds = %do.body.639
  %373 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %epsilon655 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %373, i32 0, i32 2
  %v656 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon655, i32 0, i32 2
  %374 = load %struct.NFAState**, %struct.NFAState*** %v656, align 8
  %375 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %epsilon657 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %375, i32 0, i32 2
  %e658 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon657, i32 0, i32 3
  %arraydecay659 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e658, i32 0, i32 0
  %cmp660 = icmp eq %struct.NFAState** %374, %arraydecay659
  br i1 %cmp660, label %if.then.662, label %if.else.677

if.then.662:                                      ; preds = %if.else.654
  %376 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %epsilon663 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %376, i32 0, i32 2
  %n664 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon663, i32 0, i32 0
  %377 = load i32, i32* %n664, align 4
  %cmp665 = icmp ult i32 %377, 3
  br i1 %cmp665, label %if.then.667, label %if.end.676

if.then.667:                                      ; preds = %if.then.662
  %378 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call668 = call %struct.NFAState* @new_NFAState(%struct.LexState* %378)
  store %struct.NFAState* %call668, %struct.NFAState** %nnn, align 8
  %379 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %epsilon669 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %379, i32 0, i32 2
  %n670 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon669, i32 0, i32 0
  %380 = load i32, i32* %n670, align 4
  %inc671 = add i32 %380, 1
  store i32 %inc671, i32* %n670, align 4
  %idxprom672 = zext i32 %380 to i64
  %381 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %epsilon673 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %381, i32 0, i32 2
  %v674 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon673, i32 0, i32 2
  %382 = load %struct.NFAState**, %struct.NFAState*** %v674, align 8
  %arrayidx675 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %382, i64 %idxprom672
  store %struct.NFAState* %call668, %struct.NFAState** %arrayidx675, align 8
  br label %do.end.696

if.end.676:                                       ; preds = %if.then.662
  br label %if.end.692

if.else.677:                                      ; preds = %if.else.654
  %383 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %epsilon678 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %383, i32 0, i32 2
  %n679 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon678, i32 0, i32 0
  %384 = load i32, i32* %n679, align 4
  %and680 = and i32 %384, 7
  %tobool681 = icmp ne i32 %and680, 0
  br i1 %tobool681, label %if.then.682, label %if.end.691

if.then.682:                                      ; preds = %if.else.677
  %385 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call683 = call %struct.NFAState* @new_NFAState(%struct.LexState* %385)
  store %struct.NFAState* %call683, %struct.NFAState** %nnn, align 8
  %386 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %epsilon684 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %386, i32 0, i32 2
  %n685 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon684, i32 0, i32 0
  %387 = load i32, i32* %n685, align 4
  %inc686 = add i32 %387, 1
  store i32 %inc686, i32* %n685, align 4
  %idxprom687 = zext i32 %387 to i64
  %388 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %epsilon688 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %388, i32 0, i32 2
  %v689 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon688, i32 0, i32 2
  %389 = load %struct.NFAState**, %struct.NFAState*** %v689, align 8
  %arrayidx690 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %389, i64 %idxprom687
  store %struct.NFAState* %call683, %struct.NFAState** %arrayidx690, align 8
  br label %do.end.696

if.end.691:                                       ; preds = %if.else.677
  br label %if.end.692

if.end.692:                                       ; preds = %if.end.691, %if.end.676
  br label %if.end.693

if.end.693:                                       ; preds = %if.end.692
  %390 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %epsilon694 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %390, i32 0, i32 2
  %391 = bitcast %struct.anon.10* %epsilon694 to i8*
  %392 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call695 = call %struct.NFAState* @new_NFAState(%struct.LexState* %392)
  store %struct.NFAState* %call695, %struct.NFAState** %nnn, align 8
  %393 = bitcast %struct.NFAState* %call695 to i8*
  call void @vec_add_internal(i8* %391, i8* %393)
  br label %do.end.696

do.end.696:                                       ; preds = %if.end.693, %if.then.682, %if.then.667, %if.then.642
  %394 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call697 = call %struct.NFAState* @new_NFAState(%struct.LexState* %394)
  store %struct.NFAState* %call697, %struct.NFAState** %nn, align 8
  %395 = load %struct.Action*, %struct.Action** %a, align 8
  %term698 = getelementptr inbounds %struct.Action, %struct.Action* %395, i32 0, i32 1
  %396 = load %struct.Term*, %struct.Term** %term698, align 8
  %ignore_case699 = getelementptr inbounds %struct.Term, %struct.Term* %396, i32 0, i32 7
  %bf.load700 = load i8, i8* %ignore_case699, align 4
  %bf.lshr701 = lshr i8 %bf.load700, 3
  %bf.clear702 = and i8 %bf.lshr701, 1
  %bf.cast703 = zext i8 %bf.clear702 to i32
  %397 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %ignore_case704 = getelementptr inbounds %struct.LexState, %struct.LexState* %397, i32 0, i32 4
  store i32 %bf.cast703, i32* %ignore_case704, align 4
  %398 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %399 = load %struct.NFAState*, %struct.NFAState** %nnn, align 8
  %400 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  call void @build_regex_nfa(%struct.LexState* %398, i8** %reg, %struct.NFAState* %399, %struct.NFAState* %400)
  br label %do.body.705

do.body.705:                                      ; preds = %do.end.696
  %401 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts706 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %401, i32 0, i32 3
  %v707 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts706, i32 0, i32 2
  %402 = load %struct.Action**, %struct.Action*** %v707, align 8
  %tobool708 = icmp ne %struct.Action** %402, null
  br i1 %tobool708, label %if.else.720, label %if.then.709

if.then.709:                                      ; preds = %do.body.705
  %403 = load %struct.Action*, %struct.Action** %a, align 8
  %404 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts710 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %404, i32 0, i32 3
  %n711 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts710, i32 0, i32 0
  %405 = load i32, i32* %n711, align 4
  %inc712 = add i32 %405, 1
  store i32 %inc712, i32* %n711, align 4
  %idxprom713 = zext i32 %405 to i64
  %406 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts714 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %406, i32 0, i32 3
  %e715 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts714, i32 0, i32 3
  %arraydecay716 = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e715, i32 0, i32 0
  %407 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts717 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %407, i32 0, i32 3
  %v718 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts717, i32 0, i32 2
  store %struct.Action** %arraydecay716, %struct.Action*** %v718, align 8
  %arrayidx719 = getelementptr inbounds %struct.Action*, %struct.Action** %arraydecay716, i64 %idxprom713
  store %struct.Action* %403, %struct.Action** %arrayidx719, align 8
  br label %do.end.759

if.else.720:                                      ; preds = %do.body.705
  %408 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts721 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %408, i32 0, i32 3
  %v722 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts721, i32 0, i32 2
  %409 = load %struct.Action**, %struct.Action*** %v722, align 8
  %410 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts723 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %410, i32 0, i32 3
  %e724 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts723, i32 0, i32 3
  %arraydecay725 = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e724, i32 0, i32 0
  %cmp726 = icmp eq %struct.Action** %409, %arraydecay725
  br i1 %cmp726, label %if.then.728, label %if.else.742

if.then.728:                                      ; preds = %if.else.720
  %411 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts729 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %411, i32 0, i32 3
  %n730 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts729, i32 0, i32 0
  %412 = load i32, i32* %n730, align 4
  %cmp731 = icmp ult i32 %412, 3
  br i1 %cmp731, label %if.then.733, label %if.end.741

if.then.733:                                      ; preds = %if.then.728
  %413 = load %struct.Action*, %struct.Action** %a, align 8
  %414 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts734 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %414, i32 0, i32 3
  %n735 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts734, i32 0, i32 0
  %415 = load i32, i32* %n735, align 4
  %inc736 = add i32 %415, 1
  store i32 %inc736, i32* %n735, align 4
  %idxprom737 = zext i32 %415 to i64
  %416 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts738 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %416, i32 0, i32 3
  %v739 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts738, i32 0, i32 2
  %417 = load %struct.Action**, %struct.Action*** %v739, align 8
  %arrayidx740 = getelementptr inbounds %struct.Action*, %struct.Action** %417, i64 %idxprom737
  store %struct.Action* %413, %struct.Action** %arrayidx740, align 8
  br label %do.end.759

if.end.741:                                       ; preds = %if.then.728
  br label %if.end.756

if.else.742:                                      ; preds = %if.else.720
  %418 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts743 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %418, i32 0, i32 3
  %n744 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts743, i32 0, i32 0
  %419 = load i32, i32* %n744, align 4
  %and745 = and i32 %419, 7
  %tobool746 = icmp ne i32 %and745, 0
  br i1 %tobool746, label %if.then.747, label %if.end.755

if.then.747:                                      ; preds = %if.else.742
  %420 = load %struct.Action*, %struct.Action** %a, align 8
  %421 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts748 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %421, i32 0, i32 3
  %n749 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts748, i32 0, i32 0
  %422 = load i32, i32* %n749, align 4
  %inc750 = add i32 %422, 1
  store i32 %inc750, i32* %n749, align 4
  %idxprom751 = zext i32 %422 to i64
  %423 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts752 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %423, i32 0, i32 3
  %v753 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts752, i32 0, i32 2
  %424 = load %struct.Action**, %struct.Action*** %v753, align 8
  %arrayidx754 = getelementptr inbounds %struct.Action*, %struct.Action** %424, i64 %idxprom751
  store %struct.Action* %420, %struct.Action** %arrayidx754, align 8
  br label %do.end.759

if.end.755:                                       ; preds = %if.else.742
  br label %if.end.756

if.end.756:                                       ; preds = %if.end.755, %if.end.741
  br label %if.end.757

if.end.757:                                       ; preds = %if.end.756
  %425 = load %struct.NFAState*, %struct.NFAState** %nn, align 8
  %accepts758 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %425, i32 0, i32 3
  %426 = bitcast %struct.anon.11* %accepts758 to i8*
  %427 = load %struct.Action*, %struct.Action** %a, align 8
  %428 = bitcast %struct.Action* %427 to i8*
  call void @vec_add_internal(i8* %426, i8* %428)
  br label %do.end.759

do.end.759:                                       ; preds = %if.end.757, %if.then.747, %if.then.733, %if.then.709
  br label %if.end.760

if.end.760:                                       ; preds = %do.end.759, %land.lhs.true.631, %for.body.623
  br label %for.inc.761

for.inc.761:                                      ; preds = %if.end.760
  %429 = load i32, i32* %j, align 4
  %inc762 = add nsw i32 %429, 1
  store i32 %inc762, i32* %j, align 4
  br label %for.cond.618

for.end.763:                                      ; preds = %for.cond.618
  %430 = load i32, i32* %one, align 4
  %tobool764 = icmp ne i32 %430, 0
  br i1 %tobool764, label %if.then.765, label %if.end.767

if.then.765:                                      ; preds = %for.end.763
  %431 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %432 = load %struct.State*, %struct.State** %s.addr, align 8
  %scanner = getelementptr inbounds %struct.State, %struct.State* %432, i32 0, i32 9
  call void @nfa_to_scanner(%struct.NFAState* %431, %struct.Scanner* %scanner)
  %433 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %434 = load %struct.State*, %struct.State** %s.addr, align 8
  %scanner766 = getelementptr inbounds %struct.State, %struct.State* %434, i32 0, i32 9
  call void @compute_transitions(%struct.LexState* %433, %struct.Scanner* %scanner766)
  br label %if.end.767

if.end.767:                                       ; preds = %if.then.765, %for.end.763
  %435 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %allnfas = getelementptr inbounds %struct.LexState, %struct.LexState* %435, i32 0, i32 1
  call void @free_VecNFAState(%struct.VecNFAState* %allnfas)
  %436 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %scanners = getelementptr inbounds %struct.LexState, %struct.LexState* %436, i32 0, i32 3
  %437 = load i32, i32* %scanners, align 4
  %inc768 = add i32 %437, 1
  store i32 %inc768, i32* %scanners, align 4
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct.LexState* @new_LexState() #0 {
entry:
  %ls = alloca %struct.LexState*, align 8
  %call = call noalias i8* @malloc(i64 64) #1
  %0 = bitcast i8* %call to %struct.LexState*
  store %struct.LexState* %0, %struct.LexState** %ls, align 8
  %1 = load %struct.LexState*, %struct.LexState** %ls, align 8
  %2 = bitcast %struct.LexState* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 64, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.LexState*, %struct.LexState** %ls, align 8
  %allnfas = getelementptr inbounds %struct.LexState, %struct.LexState* %3, i32 0, i32 1
  %n = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %allnfas, i32 0, i32 0
  store i32 0, i32* %n, align 4
  %4 = load %struct.LexState*, %struct.LexState** %ls, align 8
  %allnfas1 = getelementptr inbounds %struct.LexState, %struct.LexState* %4, i32 0, i32 1
  %v = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %allnfas1, i32 0, i32 2
  store %struct.NFAState** null, %struct.NFAState*** %v, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load %struct.LexState*, %struct.LexState** %ls, align 8
  ret %struct.LexState* %5
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal %struct.NFAState* @new_NFAState(%struct.LexState* %ls) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %n = alloca %struct.NFAState*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  %call = call noalias i8* @malloc(i64 10368) #1
  %0 = bitcast i8* %call to %struct.NFAState*
  store %struct.NFAState* %0, %struct.NFAState** %n, align 8
  %1 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %2 = bitcast %struct.NFAState* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 10368, i32 8, i1 false)
  %3 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %nfa_index = getelementptr inbounds %struct.LexState, %struct.LexState* %3, i32 0, i32 0
  %4 = load i32, i32* %nfa_index, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %nfa_index, align 4
  %5 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %index = getelementptr inbounds %struct.NFAState, %struct.NFAState* %5, i32 0, i32 0
  store i32 %4, i32* %index, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %allnfas = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 1
  %v = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %allnfas, i32 0, i32 2
  %7 = load %struct.NFAState**, %struct.NFAState*** %v, align 8
  %tobool = icmp ne %struct.NFAState** %7, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %8 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %9 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %allnfas1 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 1
  %n2 = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %allnfas1, i32 0, i32 0
  %10 = load i32, i32* %n2, align 4
  %inc3 = add i32 %10, 1
  store i32 %inc3, i32* %n2, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %allnfas4 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 1
  %e = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %allnfas4, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e, i32 0, i32 0
  %12 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %allnfas5 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 1
  %v6 = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %allnfas5, i32 0, i32 2
  store %struct.NFAState** %arraydecay, %struct.NFAState*** %v6, align 8
  %arrayidx = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay, i64 %idxprom
  store %struct.NFAState* %8, %struct.NFAState** %arrayidx, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %13 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %allnfas7 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 1
  %v8 = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %allnfas7, i32 0, i32 2
  %14 = load %struct.NFAState**, %struct.NFAState*** %v8, align 8
  %15 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %allnfas9 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i32 0, i32 1
  %e10 = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %allnfas9, i32 0, i32 3
  %arraydecay11 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e10, i32 0, i32 0
  %cmp = icmp eq %struct.NFAState** %14, %arraydecay11
  br i1 %cmp, label %if.then.12, label %if.else.24

if.then.12:                                       ; preds = %if.else
  %16 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %allnfas13 = getelementptr inbounds %struct.LexState, %struct.LexState* %16, i32 0, i32 1
  %n14 = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %allnfas13, i32 0, i32 0
  %17 = load i32, i32* %n14, align 4
  %cmp15 = icmp ult i32 %17, 3
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then.12
  %18 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %19 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %allnfas17 = getelementptr inbounds %struct.LexState, %struct.LexState* %19, i32 0, i32 1
  %n18 = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %allnfas17, i32 0, i32 0
  %20 = load i32, i32* %n18, align 4
  %inc19 = add i32 %20, 1
  store i32 %inc19, i32* %n18, align 4
  %idxprom20 = zext i32 %20 to i64
  %21 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %allnfas21 = getelementptr inbounds %struct.LexState, %struct.LexState* %21, i32 0, i32 1
  %v22 = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %allnfas21, i32 0, i32 2
  %22 = load %struct.NFAState**, %struct.NFAState*** %v22, align 8
  %arrayidx23 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %22, i64 %idxprom20
  store %struct.NFAState* %18, %struct.NFAState** %arrayidx23, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.12
  br label %if.end.37

if.else.24:                                       ; preds = %if.else
  %23 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %allnfas25 = getelementptr inbounds %struct.LexState, %struct.LexState* %23, i32 0, i32 1
  %n26 = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %allnfas25, i32 0, i32 0
  %24 = load i32, i32* %n26, align 4
  %and = and i32 %24, 7
  %tobool27 = icmp ne i32 %and, 0
  br i1 %tobool27, label %if.then.28, label %if.end.36

if.then.28:                                       ; preds = %if.else.24
  %25 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %26 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %allnfas29 = getelementptr inbounds %struct.LexState, %struct.LexState* %26, i32 0, i32 1
  %n30 = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %allnfas29, i32 0, i32 0
  %27 = load i32, i32* %n30, align 4
  %inc31 = add i32 %27, 1
  store i32 %inc31, i32* %n30, align 4
  %idxprom32 = zext i32 %27 to i64
  %28 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %allnfas33 = getelementptr inbounds %struct.LexState, %struct.LexState* %28, i32 0, i32 1
  %v34 = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %allnfas33, i32 0, i32 2
  %29 = load %struct.NFAState**, %struct.NFAState*** %v34, align 8
  %arrayidx35 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %29, i64 %idxprom32
  store %struct.NFAState* %25, %struct.NFAState** %arrayidx35, align 8
  br label %do.end

if.end.36:                                        ; preds = %if.else.24
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37
  %30 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %allnfas39 = getelementptr inbounds %struct.LexState, %struct.LexState* %30, i32 0, i32 1
  %31 = bitcast %struct.VecNFAState* %allnfas39 to i8*
  %32 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %33 = bitcast %struct.NFAState* %32 to i8*
  call void @vec_add_internal(i8* %31, i8* %33)
  br label %do.end

do.end:                                           ; preds = %if.end.38, %if.then.28, %if.then.16, %if.then
  %34 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  ret %struct.NFAState* %34
}

declare void @vec_add_internal(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare i32 @toupper(i32) #3

; Function Attrs: nounwind
declare i32 @tolower(i32) #3

; Function Attrs: nounwind uwtable
define internal void @build_regex_nfa(%struct.LexState* %ls, i8** %areg, %struct.NFAState* %pp, %struct.NFAState* %nn) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %areg.addr = alloca i8**, align 8
  %pp.addr = alloca %struct.NFAState*, align 8
  %nn.addr = alloca %struct.NFAState*, align 8
  %c = alloca i8, align 1
  %pc = alloca i8, align 1
  %reg = alloca i8*, align 8
  %p = alloca %struct.NFAState*, align 8
  %s = alloca %struct.NFAState*, align 8
  %x = alloca %struct.NFAState*, align 8
  %n = alloca %struct.NFAState*, align 8
  %reversed = alloca i32, align 4
  %i = alloca i32, align 4
  %mark = alloca [256 x i8], align 16
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store i8** %areg, i8*** %areg.addr, align 8
  store %struct.NFAState* %pp, %struct.NFAState** %pp.addr, align 8
  store %struct.NFAState* %nn, %struct.NFAState** %nn.addr, align 8
  %0 = load i8**, i8*** %areg.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %reg, align 8
  %2 = load %struct.NFAState*, %struct.NFAState** %pp.addr, align 8
  store %struct.NFAState* %2, %struct.NFAState** %p, align 8
  %3 = load %struct.NFAState*, %struct.NFAState** %nn.addr, align 8
  store %struct.NFAState* %3, %struct.NFAState** %n, align 8
  %4 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  store %struct.NFAState* %4, %struct.NFAState** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.786, %entry
  %5 = load i8*, i8** %reg, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %reg, align 8
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %c, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %while.body, label %while.end.787

while.body:                                       ; preds = %while.cond
  %7 = load i8, i8* %c, align 1
  %conv = zext i8 %7 to i32
  switch i32 %conv, label %sw.default.470 [
    i32 40, label %sw.bb
    i32 41, label %sw.bb.1
    i32 124, label %sw.bb.2
    i32 91, label %sw.bb.103
    i32 63, label %sw.bb.242
    i32 42, label %sw.bb.298
    i32 43, label %sw.bb.409
    i32 92, label %sw.bb.465
  ]

sw.bb:                                            ; preds = %while.body
  %8 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %9 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %10 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call = call %struct.NFAState* @new_NFAState(%struct.LexState* %10)
  store %struct.NFAState* %call, %struct.NFAState** %x, align 8
  call void @build_regex_nfa(%struct.LexState* %8, i8** %reg, %struct.NFAState* %9, %struct.NFAState* %call)
  %11 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  store %struct.NFAState* %11, %struct.NFAState** %p, align 8
  %12 = load %struct.NFAState*, %struct.NFAState** %x, align 8
  store %struct.NFAState* %12, %struct.NFAState** %s, align 8
  br label %sw.epilog.786

sw.bb.1:                                          ; preds = %while.body
  br label %Lreturn

sw.bb.2:                                          ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %sw.bb.2
  %13 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon = getelementptr inbounds %struct.NFAState, %struct.NFAState* %13, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon, i32 0, i32 2
  %14 = load %struct.NFAState**, %struct.NFAState*** %v, align 8
  %tobool3 = icmp ne %struct.NFAState** %14, null
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %15 = load %struct.NFAState*, %struct.NFAState** %nn.addr, align 8
  %16 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon4 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %16, i32 0, i32 2
  %n5 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon4, i32 0, i32 0
  %17 = load i32, i32* %n5, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %n5, align 4
  %idxprom = zext i32 %17 to i64
  %18 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon6 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %18, i32 0, i32 2
  %e = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon6, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e, i32 0, i32 0
  %19 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon7 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %19, i32 0, i32 2
  %v8 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon7, i32 0, i32 2
  store %struct.NFAState** %arraydecay, %struct.NFAState*** %v8, align 8
  %arrayidx = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay, i64 %idxprom
  store %struct.NFAState* %15, %struct.NFAState** %arrayidx, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %20 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon9 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %20, i32 0, i32 2
  %v10 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon9, i32 0, i32 2
  %21 = load %struct.NFAState**, %struct.NFAState*** %v10, align 8
  %22 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon11 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %22, i32 0, i32 2
  %e12 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon11, i32 0, i32 3
  %arraydecay13 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e12, i32 0, i32 0
  %cmp = icmp eq %struct.NFAState** %21, %arraydecay13
  br i1 %cmp, label %if.then.15, label %if.else.28

if.then.15:                                       ; preds = %if.else
  %23 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon16 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %23, i32 0, i32 2
  %n17 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon16, i32 0, i32 0
  %24 = load i32, i32* %n17, align 4
  %cmp18 = icmp ult i32 %24, 3
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then.15
  %25 = load %struct.NFAState*, %struct.NFAState** %nn.addr, align 8
  %26 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon21 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %26, i32 0, i32 2
  %n22 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon21, i32 0, i32 0
  %27 = load i32, i32* %n22, align 4
  %inc23 = add i32 %27, 1
  store i32 %inc23, i32* %n22, align 4
  %idxprom24 = zext i32 %27 to i64
  %28 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon25 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %28, i32 0, i32 2
  %v26 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon25, i32 0, i32 2
  %29 = load %struct.NFAState**, %struct.NFAState*** %v26, align 8
  %arrayidx27 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %29, i64 %idxprom24
  store %struct.NFAState* %25, %struct.NFAState** %arrayidx27, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.15
  br label %if.end.41

if.else.28:                                       ; preds = %if.else
  %30 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon29 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %30, i32 0, i32 2
  %n30 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon29, i32 0, i32 0
  %31 = load i32, i32* %n30, align 4
  %and = and i32 %31, 7
  %tobool31 = icmp ne i32 %and, 0
  br i1 %tobool31, label %if.then.32, label %if.end.40

if.then.32:                                       ; preds = %if.else.28
  %32 = load %struct.NFAState*, %struct.NFAState** %nn.addr, align 8
  %33 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon33 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %33, i32 0, i32 2
  %n34 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon33, i32 0, i32 0
  %34 = load i32, i32* %n34, align 4
  %inc35 = add i32 %34, 1
  store i32 %inc35, i32* %n34, align 4
  %idxprom36 = zext i32 %34 to i64
  %35 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon37 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %35, i32 0, i32 2
  %v38 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon37, i32 0, i32 2
  %36 = load %struct.NFAState**, %struct.NFAState*** %v38, align 8
  %arrayidx39 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %36, i64 %idxprom36
  store %struct.NFAState* %32, %struct.NFAState** %arrayidx39, align 8
  br label %do.end

if.end.40:                                        ; preds = %if.else.28
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41
  %37 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon43 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %37, i32 0, i32 2
  %38 = bitcast %struct.anon.10* %epsilon43 to i8*
  %39 = load %struct.NFAState*, %struct.NFAState** %nn.addr, align 8
  %40 = bitcast %struct.NFAState* %39 to i8*
  call void @vec_add_internal(i8* %38, i8* %40)
  br label %do.end

do.end:                                           ; preds = %if.end.42, %if.then.32, %if.then.20, %if.then
  br label %do.body.44

do.body.44:                                       ; preds = %do.end
  %41 = load %struct.NFAState*, %struct.NFAState** %pp.addr, align 8
  %epsilon45 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %41, i32 0, i32 2
  %v46 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon45, i32 0, i32 2
  %42 = load %struct.NFAState**, %struct.NFAState*** %v46, align 8
  %tobool47 = icmp ne %struct.NFAState** %42, null
  br i1 %tobool47, label %if.else.60, label %if.then.48

if.then.48:                                       ; preds = %do.body.44
  %43 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call49 = call %struct.NFAState* @new_NFAState(%struct.LexState* %43)
  store %struct.NFAState* %call49, %struct.NFAState** %s, align 8
  %44 = load %struct.NFAState*, %struct.NFAState** %pp.addr, align 8
  %epsilon50 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %44, i32 0, i32 2
  %n51 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon50, i32 0, i32 0
  %45 = load i32, i32* %n51, align 4
  %inc52 = add i32 %45, 1
  store i32 %inc52, i32* %n51, align 4
  %idxprom53 = zext i32 %45 to i64
  %46 = load %struct.NFAState*, %struct.NFAState** %pp.addr, align 8
  %epsilon54 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %46, i32 0, i32 2
  %e55 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon54, i32 0, i32 3
  %arraydecay56 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e55, i32 0, i32 0
  %47 = load %struct.NFAState*, %struct.NFAState** %pp.addr, align 8
  %epsilon57 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %47, i32 0, i32 2
  %v58 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon57, i32 0, i32 2
  store %struct.NFAState** %arraydecay56, %struct.NFAState*** %v58, align 8
  %arrayidx59 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay56, i64 %idxprom53
  store %struct.NFAState* %call49, %struct.NFAState** %arrayidx59, align 8
  br label %do.end.102

if.else.60:                                       ; preds = %do.body.44
  %48 = load %struct.NFAState*, %struct.NFAState** %pp.addr, align 8
  %epsilon61 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %48, i32 0, i32 2
  %v62 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon61, i32 0, i32 2
  %49 = load %struct.NFAState**, %struct.NFAState*** %v62, align 8
  %50 = load %struct.NFAState*, %struct.NFAState** %pp.addr, align 8
  %epsilon63 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %50, i32 0, i32 2
  %e64 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon63, i32 0, i32 3
  %arraydecay65 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e64, i32 0, i32 0
  %cmp66 = icmp eq %struct.NFAState** %49, %arraydecay65
  br i1 %cmp66, label %if.then.68, label %if.else.83

if.then.68:                                       ; preds = %if.else.60
  %51 = load %struct.NFAState*, %struct.NFAState** %pp.addr, align 8
  %epsilon69 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %51, i32 0, i32 2
  %n70 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon69, i32 0, i32 0
  %52 = load i32, i32* %n70, align 4
  %cmp71 = icmp ult i32 %52, 3
  br i1 %cmp71, label %if.then.73, label %if.end.82

if.then.73:                                       ; preds = %if.then.68
  %53 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call74 = call %struct.NFAState* @new_NFAState(%struct.LexState* %53)
  store %struct.NFAState* %call74, %struct.NFAState** %s, align 8
  %54 = load %struct.NFAState*, %struct.NFAState** %pp.addr, align 8
  %epsilon75 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %54, i32 0, i32 2
  %n76 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon75, i32 0, i32 0
  %55 = load i32, i32* %n76, align 4
  %inc77 = add i32 %55, 1
  store i32 %inc77, i32* %n76, align 4
  %idxprom78 = zext i32 %55 to i64
  %56 = load %struct.NFAState*, %struct.NFAState** %pp.addr, align 8
  %epsilon79 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %56, i32 0, i32 2
  %v80 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon79, i32 0, i32 2
  %57 = load %struct.NFAState**, %struct.NFAState*** %v80, align 8
  %arrayidx81 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %57, i64 %idxprom78
  store %struct.NFAState* %call74, %struct.NFAState** %arrayidx81, align 8
  br label %do.end.102

if.end.82:                                        ; preds = %if.then.68
  br label %if.end.98

if.else.83:                                       ; preds = %if.else.60
  %58 = load %struct.NFAState*, %struct.NFAState** %pp.addr, align 8
  %epsilon84 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %58, i32 0, i32 2
  %n85 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon84, i32 0, i32 0
  %59 = load i32, i32* %n85, align 4
  %and86 = and i32 %59, 7
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %if.then.88, label %if.end.97

if.then.88:                                       ; preds = %if.else.83
  %60 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call89 = call %struct.NFAState* @new_NFAState(%struct.LexState* %60)
  store %struct.NFAState* %call89, %struct.NFAState** %s, align 8
  %61 = load %struct.NFAState*, %struct.NFAState** %pp.addr, align 8
  %epsilon90 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %61, i32 0, i32 2
  %n91 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon90, i32 0, i32 0
  %62 = load i32, i32* %n91, align 4
  %inc92 = add i32 %62, 1
  store i32 %inc92, i32* %n91, align 4
  %idxprom93 = zext i32 %62 to i64
  %63 = load %struct.NFAState*, %struct.NFAState** %pp.addr, align 8
  %epsilon94 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %63, i32 0, i32 2
  %v95 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon94, i32 0, i32 2
  %64 = load %struct.NFAState**, %struct.NFAState*** %v95, align 8
  %arrayidx96 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %64, i64 %idxprom93
  store %struct.NFAState* %call89, %struct.NFAState** %arrayidx96, align 8
  br label %do.end.102

if.end.97:                                        ; preds = %if.else.83
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.82
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98
  %65 = load %struct.NFAState*, %struct.NFAState** %pp.addr, align 8
  %epsilon100 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %65, i32 0, i32 2
  %66 = bitcast %struct.anon.10* %epsilon100 to i8*
  %67 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call101 = call %struct.NFAState* @new_NFAState(%struct.LexState* %67)
  store %struct.NFAState* %call101, %struct.NFAState** %s, align 8
  %68 = bitcast %struct.NFAState* %call101 to i8*
  call void @vec_add_internal(i8* %66, i8* %68)
  br label %do.end.102

do.end.102:                                       ; preds = %if.end.99, %if.then.88, %if.then.73, %if.then.48
  br label %sw.epilog.786

sw.bb.103:                                        ; preds = %while.body
  %69 = load i8*, i8** %reg, align 8
  %70 = load i8, i8* %69, align 1
  %conv104 = zext i8 %70 to i32
  %cmp105 = icmp eq i32 %conv104, 94
  br i1 %cmp105, label %if.then.107, label %if.else.109

if.then.107:                                      ; preds = %sw.bb.103
  %71 = load i8*, i8** %reg, align 8
  %incdec.ptr108 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr108, i8** %reg, align 8
  store i32 1, i32* %reversed, align 4
  br label %if.end.110

if.else.109:                                      ; preds = %sw.bb.103
  store i32 0, i32* %reversed, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.109, %if.then.107
  %72 = bitcast [256 x i8]* %mark to i8*
  call void @llvm.memset.p0i8.i64(i8* %72, i8 0, i64 256, i32 16, i1 false)
  store i8 -1, i8* %pc, align 1
  br label %while.cond.111

while.cond.111:                                   ; preds = %sw.epilog, %if.end.110
  %73 = load i8*, i8** %reg, align 8
  %incdec.ptr112 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr112, i8** %reg, align 8
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %c, align 1
  %tobool113 = icmp ne i8 %74, 0
  br i1 %tobool113, label %while.body.114, label %while.end

while.body.114:                                   ; preds = %while.cond.111
  %75 = load i8, i8* %c, align 1
  %conv115 = zext i8 %75 to i32
  switch i32 %conv115, label %sw.default [
    i32 93, label %sw.bb.116
    i32 45, label %sw.bb.117
    i32 92, label %sw.bb.138
  ]

sw.bb.116:                                        ; preds = %while.body.114
  br label %Lsetdone

sw.bb.117:                                        ; preds = %while.body.114
  %76 = load i8*, i8** %reg, align 8
  %incdec.ptr118 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr118, i8** %reg, align 8
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* %c, align 1
  %78 = load i8, i8* %c, align 1
  %tobool119 = icmp ne i8 %78, 0
  br i1 %tobool119, label %if.end.121, label %if.then.120

if.then.120:                                      ; preds = %sw.bb.117
  br label %Lerror

if.end.121:                                       ; preds = %sw.bb.117
  %79 = load i8, i8* %c, align 1
  %conv122 = zext i8 %79 to i32
  %cmp123 = icmp eq i32 %conv122, 92
  br i1 %cmp123, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %if.end.121
  %80 = load i8*, i8** %reg, align 8
  %incdec.ptr126 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr126, i8** %reg, align 8
  %81 = load i8, i8* %80, align 1
  store i8 %81, i8* %c, align 1
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %if.end.121
  %82 = load i8, i8* %c, align 1
  %tobool128 = icmp ne i8 %82, 0
  br i1 %tobool128, label %if.end.130, label %if.then.129

if.then.129:                                      ; preds = %if.end.127
  br label %Lerror

if.end.130:                                       ; preds = %if.end.127
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.130
  %83 = load i8, i8* %pc, align 1
  %conv131 = zext i8 %83 to i32
  %84 = load i8, i8* %c, align 1
  %conv132 = zext i8 %84 to i32
  %cmp133 = icmp sle i32 %conv131, %conv132
  br i1 %cmp133, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %85 = load i8, i8* %pc, align 1
  %idxprom135 = zext i8 %85 to i64
  %arrayidx136 = getelementptr inbounds [256 x i8], [256 x i8]* %mark, i32 0, i64 %idxprom135
  store i8 1, i8* %arrayidx136, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %86 = load i8, i8* %pc, align 1
  %inc137 = add i8 %86, 1
  store i8 %inc137, i8* %pc, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.138:                                        ; preds = %while.body.114
  %87 = load i8*, i8** %reg, align 8
  %incdec.ptr139 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr139, i8** %reg, align 8
  %88 = load i8, i8* %87, align 1
  store i8 %88, i8* %c, align 1
  br label %sw.default

sw.default:                                       ; preds = %while.body.114, %sw.bb.138
  %89 = load i8, i8* %c, align 1
  store i8 %89, i8* %pc, align 1
  %90 = load i8, i8* %c, align 1
  %idxprom140 = zext i8 %90 to i64
  %arrayidx141 = getelementptr inbounds [256 x i8], [256 x i8]* %mark, i32 0, i64 %idxprom140
  store i8 1, i8* %arrayidx141, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end
  br label %while.cond.111

while.end:                                        ; preds = %while.cond.111
  br label %Lsetdone

Lsetdone:                                         ; preds = %while.end, %sw.bb.116
  %91 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call142 = call %struct.NFAState* @new_NFAState(%struct.LexState* %91)
  store %struct.NFAState* %call142, %struct.NFAState** %x, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.239, %Lsetdone
  %92 = load i32, i32* %i, align 4
  %cmp144 = icmp slt i32 %92, 256
  br i1 %cmp144, label %for.body.146, label %for.end.241

for.body.146:                                     ; preds = %for.cond.143
  %93 = load i32, i32* %reversed, align 4
  %tobool147 = icmp ne i32 %93, 0
  br i1 %tobool147, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.146
  %94 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %94 to i64
  %arrayidx149 = getelementptr inbounds [256 x i8], [256 x i8]* %mark, i32 0, i64 %idxprom148
  %95 = load i8, i8* %arrayidx149, align 1
  %conv150 = zext i8 %95 to i32
  %tobool151 = icmp ne i32 %conv150, 0
  br i1 %tobool151, label %if.then.157, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body.146
  %96 = load i32, i32* %reversed, align 4
  %tobool152 = icmp ne i32 %96, 0
  br i1 %tobool152, label %land.lhs.true.153, label %if.end.238

land.lhs.true.153:                                ; preds = %lor.lhs.false
  %97 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %97 to i64
  %arrayidx155 = getelementptr inbounds [256 x i8], [256 x i8]* %mark, i32 0, i64 %idxprom154
  %98 = load i8, i8* %arrayidx155, align 1
  %tobool156 = icmp ne i8 %98, 0
  br i1 %tobool156, label %if.end.238, label %if.then.157

if.then.157:                                      ; preds = %land.lhs.true.153, %land.lhs.true
  br label %do.body.158

do.body.158:                                      ; preds = %if.then.157
  %99 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %99 to i64
  %100 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars = getelementptr inbounds %struct.NFAState, %struct.NFAState* %100, i32 0, i32 1
  %arrayidx160 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars, i32 0, i64 %idxprom159
  %v161 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx160, i32 0, i32 2
  %101 = load %struct.NFAState**, %struct.NFAState*** %v161, align 8
  %tobool162 = icmp ne %struct.NFAState** %101, null
  br i1 %tobool162, label %if.else.180, label %if.then.163

if.then.163:                                      ; preds = %do.body.158
  %102 = load %struct.NFAState*, %struct.NFAState** %x, align 8
  %103 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %103 to i64
  %104 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars165 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %104, i32 0, i32 1
  %arrayidx166 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars165, i32 0, i64 %idxprom164
  %n167 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx166, i32 0, i32 0
  %105 = load i32, i32* %n167, align 4
  %inc168 = add i32 %105, 1
  store i32 %inc168, i32* %n167, align 4
  %idxprom169 = zext i32 %105 to i64
  %106 = load i32, i32* %i, align 4
  %idxprom170 = sext i32 %106 to i64
  %107 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars171 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %107, i32 0, i32 1
  %arrayidx172 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars171, i32 0, i64 %idxprom170
  %e173 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx172, i32 0, i32 3
  %arraydecay174 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e173, i32 0, i32 0
  %108 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %108 to i64
  %109 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars176 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %109, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars176, i32 0, i64 %idxprom175
  %v178 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx177, i32 0, i32 2
  store %struct.NFAState** %arraydecay174, %struct.NFAState*** %v178, align 8
  %arrayidx179 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay174, i64 %idxprom169
  store %struct.NFAState* %102, %struct.NFAState** %arrayidx179, align 8
  br label %do.end.237

if.else.180:                                      ; preds = %do.body.158
  %110 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %110 to i64
  %111 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars182 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %111, i32 0, i32 1
  %arrayidx183 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars182, i32 0, i64 %idxprom181
  %v184 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx183, i32 0, i32 2
  %112 = load %struct.NFAState**, %struct.NFAState*** %v184, align 8
  %113 = load i32, i32* %i, align 4
  %idxprom185 = sext i32 %113 to i64
  %114 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars186 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %114, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars186, i32 0, i64 %idxprom185
  %e188 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx187, i32 0, i32 3
  %arraydecay189 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e188, i32 0, i32 0
  %cmp190 = icmp eq %struct.NFAState** %112, %arraydecay189
  br i1 %cmp190, label %if.then.192, label %if.else.212

if.then.192:                                      ; preds = %if.else.180
  %115 = load i32, i32* %i, align 4
  %idxprom193 = sext i32 %115 to i64
  %116 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars194 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %116, i32 0, i32 1
  %arrayidx195 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars194, i32 0, i64 %idxprom193
  %n196 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx195, i32 0, i32 0
  %117 = load i32, i32* %n196, align 4
  %cmp197 = icmp ult i32 %117, 3
  br i1 %cmp197, label %if.then.199, label %if.end.211

if.then.199:                                      ; preds = %if.then.192
  %118 = load %struct.NFAState*, %struct.NFAState** %x, align 8
  %119 = load i32, i32* %i, align 4
  %idxprom200 = sext i32 %119 to i64
  %120 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars201 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %120, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars201, i32 0, i64 %idxprom200
  %n203 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx202, i32 0, i32 0
  %121 = load i32, i32* %n203, align 4
  %inc204 = add i32 %121, 1
  store i32 %inc204, i32* %n203, align 4
  %idxprom205 = zext i32 %121 to i64
  %122 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %122 to i64
  %123 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars207 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %123, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars207, i32 0, i64 %idxprom206
  %v209 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx208, i32 0, i32 2
  %124 = load %struct.NFAState**, %struct.NFAState*** %v209, align 8
  %arrayidx210 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %124, i64 %idxprom205
  store %struct.NFAState* %118, %struct.NFAState** %arrayidx210, align 8
  br label %do.end.237

if.end.211:                                       ; preds = %if.then.192
  br label %if.end.232

if.else.212:                                      ; preds = %if.else.180
  %125 = load i32, i32* %i, align 4
  %idxprom213 = sext i32 %125 to i64
  %126 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars214 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %126, i32 0, i32 1
  %arrayidx215 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars214, i32 0, i64 %idxprom213
  %n216 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx215, i32 0, i32 0
  %127 = load i32, i32* %n216, align 4
  %and217 = and i32 %127, 7
  %tobool218 = icmp ne i32 %and217, 0
  br i1 %tobool218, label %if.then.219, label %if.end.231

if.then.219:                                      ; preds = %if.else.212
  %128 = load %struct.NFAState*, %struct.NFAState** %x, align 8
  %129 = load i32, i32* %i, align 4
  %idxprom220 = sext i32 %129 to i64
  %130 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars221 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %130, i32 0, i32 1
  %arrayidx222 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars221, i32 0, i64 %idxprom220
  %n223 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx222, i32 0, i32 0
  %131 = load i32, i32* %n223, align 4
  %inc224 = add i32 %131, 1
  store i32 %inc224, i32* %n223, align 4
  %idxprom225 = zext i32 %131 to i64
  %132 = load i32, i32* %i, align 4
  %idxprom226 = sext i32 %132 to i64
  %133 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars227 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %133, i32 0, i32 1
  %arrayidx228 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars227, i32 0, i64 %idxprom226
  %v229 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx228, i32 0, i32 2
  %134 = load %struct.NFAState**, %struct.NFAState*** %v229, align 8
  %arrayidx230 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %134, i64 %idxprom225
  store %struct.NFAState* %128, %struct.NFAState** %arrayidx230, align 8
  br label %do.end.237

if.end.231:                                       ; preds = %if.else.212
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.end.211
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232
  %135 = load i32, i32* %i, align 4
  %idxprom234 = sext i32 %135 to i64
  %136 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars235 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %136, i32 0, i32 1
  %arrayidx236 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars235, i32 0, i64 %idxprom234
  %137 = bitcast %struct.anon.9* %arrayidx236 to i8*
  %138 = load %struct.NFAState*, %struct.NFAState** %x, align 8
  %139 = bitcast %struct.NFAState* %138 to i8*
  call void @vec_add_internal(i8* %137, i8* %139)
  br label %do.end.237

do.end.237:                                       ; preds = %if.end.233, %if.then.219, %if.then.199, %if.then.163
  br label %if.end.238

if.end.238:                                       ; preds = %do.end.237, %land.lhs.true.153, %lor.lhs.false
  br label %for.inc.239

for.inc.239:                                      ; preds = %if.end.238
  %140 = load i32, i32* %i, align 4
  %inc240 = add nsw i32 %140, 1
  store i32 %inc240, i32* %i, align 4
  br label %for.cond.143

for.end.241:                                      ; preds = %for.cond.143
  %141 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  store %struct.NFAState* %141, %struct.NFAState** %p, align 8
  %142 = load %struct.NFAState*, %struct.NFAState** %x, align 8
  store %struct.NFAState* %142, %struct.NFAState** %s, align 8
  br label %sw.epilog.786

sw.bb.242:                                        ; preds = %while.body
  br label %do.body.243

do.body.243:                                      ; preds = %sw.bb.242
  %143 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon244 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %143, i32 0, i32 2
  %v245 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon244, i32 0, i32 2
  %144 = load %struct.NFAState**, %struct.NFAState*** %v245, align 8
  %tobool246 = icmp ne %struct.NFAState** %144, null
  br i1 %tobool246, label %if.else.258, label %if.then.247

if.then.247:                                      ; preds = %do.body.243
  %145 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %146 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon248 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %146, i32 0, i32 2
  %n249 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon248, i32 0, i32 0
  %147 = load i32, i32* %n249, align 4
  %inc250 = add i32 %147, 1
  store i32 %inc250, i32* %n249, align 4
  %idxprom251 = zext i32 %147 to i64
  %148 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon252 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %148, i32 0, i32 2
  %e253 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon252, i32 0, i32 3
  %arraydecay254 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e253, i32 0, i32 0
  %149 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon255 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %149, i32 0, i32 2
  %v256 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon255, i32 0, i32 2
  store %struct.NFAState** %arraydecay254, %struct.NFAState*** %v256, align 8
  %arrayidx257 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay254, i64 %idxprom251
  store %struct.NFAState* %145, %struct.NFAState** %arrayidx257, align 8
  br label %do.end.297

if.else.258:                                      ; preds = %do.body.243
  %150 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon259 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %150, i32 0, i32 2
  %v260 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon259, i32 0, i32 2
  %151 = load %struct.NFAState**, %struct.NFAState*** %v260, align 8
  %152 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon261 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %152, i32 0, i32 2
  %e262 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon261, i32 0, i32 3
  %arraydecay263 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e262, i32 0, i32 0
  %cmp264 = icmp eq %struct.NFAState** %151, %arraydecay263
  br i1 %cmp264, label %if.then.266, label %if.else.280

if.then.266:                                      ; preds = %if.else.258
  %153 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon267 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %153, i32 0, i32 2
  %n268 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon267, i32 0, i32 0
  %154 = load i32, i32* %n268, align 4
  %cmp269 = icmp ult i32 %154, 3
  br i1 %cmp269, label %if.then.271, label %if.end.279

if.then.271:                                      ; preds = %if.then.266
  %155 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %156 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon272 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %156, i32 0, i32 2
  %n273 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon272, i32 0, i32 0
  %157 = load i32, i32* %n273, align 4
  %inc274 = add i32 %157, 1
  store i32 %inc274, i32* %n273, align 4
  %idxprom275 = zext i32 %157 to i64
  %158 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon276 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %158, i32 0, i32 2
  %v277 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon276, i32 0, i32 2
  %159 = load %struct.NFAState**, %struct.NFAState*** %v277, align 8
  %arrayidx278 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %159, i64 %idxprom275
  store %struct.NFAState* %155, %struct.NFAState** %arrayidx278, align 8
  br label %do.end.297

if.end.279:                                       ; preds = %if.then.266
  br label %if.end.294

if.else.280:                                      ; preds = %if.else.258
  %160 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon281 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %160, i32 0, i32 2
  %n282 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon281, i32 0, i32 0
  %161 = load i32, i32* %n282, align 4
  %and283 = and i32 %161, 7
  %tobool284 = icmp ne i32 %and283, 0
  br i1 %tobool284, label %if.then.285, label %if.end.293

if.then.285:                                      ; preds = %if.else.280
  %162 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %163 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon286 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %163, i32 0, i32 2
  %n287 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon286, i32 0, i32 0
  %164 = load i32, i32* %n287, align 4
  %inc288 = add i32 %164, 1
  store i32 %inc288, i32* %n287, align 4
  %idxprom289 = zext i32 %164 to i64
  %165 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon290 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %165, i32 0, i32 2
  %v291 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon290, i32 0, i32 2
  %166 = load %struct.NFAState**, %struct.NFAState*** %v291, align 8
  %arrayidx292 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %166, i64 %idxprom289
  store %struct.NFAState* %162, %struct.NFAState** %arrayidx292, align 8
  br label %do.end.297

if.end.293:                                       ; preds = %if.else.280
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %if.end.279
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294
  %167 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon296 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %167, i32 0, i32 2
  %168 = bitcast %struct.anon.10* %epsilon296 to i8*
  %169 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %170 = bitcast %struct.NFAState* %169 to i8*
  call void @vec_add_internal(i8* %168, i8* %170)
  br label %do.end.297

do.end.297:                                       ; preds = %if.end.295, %if.then.285, %if.then.271, %if.then.247
  br label %sw.epilog.786

sw.bb.298:                                        ; preds = %while.body
  br label %do.body.299

do.body.299:                                      ; preds = %sw.bb.298
  %171 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon300 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %171, i32 0, i32 2
  %v301 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon300, i32 0, i32 2
  %172 = load %struct.NFAState**, %struct.NFAState*** %v301, align 8
  %tobool302 = icmp ne %struct.NFAState** %172, null
  br i1 %tobool302, label %if.else.314, label %if.then.303

if.then.303:                                      ; preds = %do.body.299
  %173 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %174 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon304 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %174, i32 0, i32 2
  %n305 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon304, i32 0, i32 0
  %175 = load i32, i32* %n305, align 4
  %inc306 = add i32 %175, 1
  store i32 %inc306, i32* %n305, align 4
  %idxprom307 = zext i32 %175 to i64
  %176 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon308 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %176, i32 0, i32 2
  %e309 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon308, i32 0, i32 3
  %arraydecay310 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e309, i32 0, i32 0
  %177 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon311 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %177, i32 0, i32 2
  %v312 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon311, i32 0, i32 2
  store %struct.NFAState** %arraydecay310, %struct.NFAState*** %v312, align 8
  %arrayidx313 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay310, i64 %idxprom307
  store %struct.NFAState* %173, %struct.NFAState** %arrayidx313, align 8
  br label %do.end.353

if.else.314:                                      ; preds = %do.body.299
  %178 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon315 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %178, i32 0, i32 2
  %v316 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon315, i32 0, i32 2
  %179 = load %struct.NFAState**, %struct.NFAState*** %v316, align 8
  %180 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon317 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %180, i32 0, i32 2
  %e318 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon317, i32 0, i32 3
  %arraydecay319 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e318, i32 0, i32 0
  %cmp320 = icmp eq %struct.NFAState** %179, %arraydecay319
  br i1 %cmp320, label %if.then.322, label %if.else.336

if.then.322:                                      ; preds = %if.else.314
  %181 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon323 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %181, i32 0, i32 2
  %n324 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon323, i32 0, i32 0
  %182 = load i32, i32* %n324, align 4
  %cmp325 = icmp ult i32 %182, 3
  br i1 %cmp325, label %if.then.327, label %if.end.335

if.then.327:                                      ; preds = %if.then.322
  %183 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %184 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon328 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %184, i32 0, i32 2
  %n329 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon328, i32 0, i32 0
  %185 = load i32, i32* %n329, align 4
  %inc330 = add i32 %185, 1
  store i32 %inc330, i32* %n329, align 4
  %idxprom331 = zext i32 %185 to i64
  %186 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon332 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %186, i32 0, i32 2
  %v333 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon332, i32 0, i32 2
  %187 = load %struct.NFAState**, %struct.NFAState*** %v333, align 8
  %arrayidx334 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %187, i64 %idxprom331
  store %struct.NFAState* %183, %struct.NFAState** %arrayidx334, align 8
  br label %do.end.353

if.end.335:                                       ; preds = %if.then.322
  br label %if.end.350

if.else.336:                                      ; preds = %if.else.314
  %188 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon337 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %188, i32 0, i32 2
  %n338 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon337, i32 0, i32 0
  %189 = load i32, i32* %n338, align 4
  %and339 = and i32 %189, 7
  %tobool340 = icmp ne i32 %and339, 0
  br i1 %tobool340, label %if.then.341, label %if.end.349

if.then.341:                                      ; preds = %if.else.336
  %190 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %191 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon342 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %191, i32 0, i32 2
  %n343 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon342, i32 0, i32 0
  %192 = load i32, i32* %n343, align 4
  %inc344 = add i32 %192, 1
  store i32 %inc344, i32* %n343, align 4
  %idxprom345 = zext i32 %192 to i64
  %193 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon346 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %193, i32 0, i32 2
  %v347 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon346, i32 0, i32 2
  %194 = load %struct.NFAState**, %struct.NFAState*** %v347, align 8
  %arrayidx348 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %194, i64 %idxprom345
  store %struct.NFAState* %190, %struct.NFAState** %arrayidx348, align 8
  br label %do.end.353

if.end.349:                                       ; preds = %if.else.336
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.349, %if.end.335
  br label %if.end.351

if.end.351:                                       ; preds = %if.end.350
  %195 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %epsilon352 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %195, i32 0, i32 2
  %196 = bitcast %struct.anon.10* %epsilon352 to i8*
  %197 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %198 = bitcast %struct.NFAState* %197 to i8*
  call void @vec_add_internal(i8* %196, i8* %198)
  br label %do.end.353

do.end.353:                                       ; preds = %if.end.351, %if.then.341, %if.then.327, %if.then.303
  br label %do.body.354

do.body.354:                                      ; preds = %do.end.353
  %199 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon355 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %199, i32 0, i32 2
  %v356 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon355, i32 0, i32 2
  %200 = load %struct.NFAState**, %struct.NFAState*** %v356, align 8
  %tobool357 = icmp ne %struct.NFAState** %200, null
  br i1 %tobool357, label %if.else.369, label %if.then.358

if.then.358:                                      ; preds = %do.body.354
  %201 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %202 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon359 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %202, i32 0, i32 2
  %n360 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon359, i32 0, i32 0
  %203 = load i32, i32* %n360, align 4
  %inc361 = add i32 %203, 1
  store i32 %inc361, i32* %n360, align 4
  %idxprom362 = zext i32 %203 to i64
  %204 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon363 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %204, i32 0, i32 2
  %e364 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon363, i32 0, i32 3
  %arraydecay365 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e364, i32 0, i32 0
  %205 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon366 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %205, i32 0, i32 2
  %v367 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon366, i32 0, i32 2
  store %struct.NFAState** %arraydecay365, %struct.NFAState*** %v367, align 8
  %arrayidx368 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay365, i64 %idxprom362
  store %struct.NFAState* %201, %struct.NFAState** %arrayidx368, align 8
  br label %do.end.408

if.else.369:                                      ; preds = %do.body.354
  %206 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon370 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %206, i32 0, i32 2
  %v371 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon370, i32 0, i32 2
  %207 = load %struct.NFAState**, %struct.NFAState*** %v371, align 8
  %208 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon372 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %208, i32 0, i32 2
  %e373 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon372, i32 0, i32 3
  %arraydecay374 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e373, i32 0, i32 0
  %cmp375 = icmp eq %struct.NFAState** %207, %arraydecay374
  br i1 %cmp375, label %if.then.377, label %if.else.391

if.then.377:                                      ; preds = %if.else.369
  %209 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon378 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %209, i32 0, i32 2
  %n379 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon378, i32 0, i32 0
  %210 = load i32, i32* %n379, align 4
  %cmp380 = icmp ult i32 %210, 3
  br i1 %cmp380, label %if.then.382, label %if.end.390

if.then.382:                                      ; preds = %if.then.377
  %211 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %212 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon383 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %212, i32 0, i32 2
  %n384 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon383, i32 0, i32 0
  %213 = load i32, i32* %n384, align 4
  %inc385 = add i32 %213, 1
  store i32 %inc385, i32* %n384, align 4
  %idxprom386 = zext i32 %213 to i64
  %214 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon387 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %214, i32 0, i32 2
  %v388 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon387, i32 0, i32 2
  %215 = load %struct.NFAState**, %struct.NFAState*** %v388, align 8
  %arrayidx389 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %215, i64 %idxprom386
  store %struct.NFAState* %211, %struct.NFAState** %arrayidx389, align 8
  br label %do.end.408

if.end.390:                                       ; preds = %if.then.377
  br label %if.end.405

if.else.391:                                      ; preds = %if.else.369
  %216 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon392 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %216, i32 0, i32 2
  %n393 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon392, i32 0, i32 0
  %217 = load i32, i32* %n393, align 4
  %and394 = and i32 %217, 7
  %tobool395 = icmp ne i32 %and394, 0
  br i1 %tobool395, label %if.then.396, label %if.end.404

if.then.396:                                      ; preds = %if.else.391
  %218 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %219 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon397 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %219, i32 0, i32 2
  %n398 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon397, i32 0, i32 0
  %220 = load i32, i32* %n398, align 4
  %inc399 = add i32 %220, 1
  store i32 %inc399, i32* %n398, align 4
  %idxprom400 = zext i32 %220 to i64
  %221 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon401 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %221, i32 0, i32 2
  %v402 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon401, i32 0, i32 2
  %222 = load %struct.NFAState**, %struct.NFAState*** %v402, align 8
  %arrayidx403 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %222, i64 %idxprom400
  store %struct.NFAState* %218, %struct.NFAState** %arrayidx403, align 8
  br label %do.end.408

if.end.404:                                       ; preds = %if.else.391
  br label %if.end.405

if.end.405:                                       ; preds = %if.end.404, %if.end.390
  br label %if.end.406

if.end.406:                                       ; preds = %if.end.405
  %223 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon407 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %223, i32 0, i32 2
  %224 = bitcast %struct.anon.10* %epsilon407 to i8*
  %225 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %226 = bitcast %struct.NFAState* %225 to i8*
  call void @vec_add_internal(i8* %224, i8* %226)
  br label %do.end.408

do.end.408:                                       ; preds = %if.end.406, %if.then.396, %if.then.382, %if.then.358
  br label %sw.epilog.786

sw.bb.409:                                        ; preds = %while.body
  br label %do.body.410

do.body.410:                                      ; preds = %sw.bb.409
  %227 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon411 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %227, i32 0, i32 2
  %v412 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon411, i32 0, i32 2
  %228 = load %struct.NFAState**, %struct.NFAState*** %v412, align 8
  %tobool413 = icmp ne %struct.NFAState** %228, null
  br i1 %tobool413, label %if.else.425, label %if.then.414

if.then.414:                                      ; preds = %do.body.410
  %229 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %230 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon415 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %230, i32 0, i32 2
  %n416 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon415, i32 0, i32 0
  %231 = load i32, i32* %n416, align 4
  %inc417 = add i32 %231, 1
  store i32 %inc417, i32* %n416, align 4
  %idxprom418 = zext i32 %231 to i64
  %232 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon419 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %232, i32 0, i32 2
  %e420 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon419, i32 0, i32 3
  %arraydecay421 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e420, i32 0, i32 0
  %233 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon422 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %233, i32 0, i32 2
  %v423 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon422, i32 0, i32 2
  store %struct.NFAState** %arraydecay421, %struct.NFAState*** %v423, align 8
  %arrayidx424 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay421, i64 %idxprom418
  store %struct.NFAState* %229, %struct.NFAState** %arrayidx424, align 8
  br label %do.end.464

if.else.425:                                      ; preds = %do.body.410
  %234 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon426 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %234, i32 0, i32 2
  %v427 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon426, i32 0, i32 2
  %235 = load %struct.NFAState**, %struct.NFAState*** %v427, align 8
  %236 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon428 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %236, i32 0, i32 2
  %e429 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon428, i32 0, i32 3
  %arraydecay430 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e429, i32 0, i32 0
  %cmp431 = icmp eq %struct.NFAState** %235, %arraydecay430
  br i1 %cmp431, label %if.then.433, label %if.else.447

if.then.433:                                      ; preds = %if.else.425
  %237 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon434 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %237, i32 0, i32 2
  %n435 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon434, i32 0, i32 0
  %238 = load i32, i32* %n435, align 4
  %cmp436 = icmp ult i32 %238, 3
  br i1 %cmp436, label %if.then.438, label %if.end.446

if.then.438:                                      ; preds = %if.then.433
  %239 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %240 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon439 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %240, i32 0, i32 2
  %n440 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon439, i32 0, i32 0
  %241 = load i32, i32* %n440, align 4
  %inc441 = add i32 %241, 1
  store i32 %inc441, i32* %n440, align 4
  %idxprom442 = zext i32 %241 to i64
  %242 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon443 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %242, i32 0, i32 2
  %v444 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon443, i32 0, i32 2
  %243 = load %struct.NFAState**, %struct.NFAState*** %v444, align 8
  %arrayidx445 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %243, i64 %idxprom442
  store %struct.NFAState* %239, %struct.NFAState** %arrayidx445, align 8
  br label %do.end.464

if.end.446:                                       ; preds = %if.then.433
  br label %if.end.461

if.else.447:                                      ; preds = %if.else.425
  %244 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon448 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %244, i32 0, i32 2
  %n449 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon448, i32 0, i32 0
  %245 = load i32, i32* %n449, align 4
  %and450 = and i32 %245, 7
  %tobool451 = icmp ne i32 %and450, 0
  br i1 %tobool451, label %if.then.452, label %if.end.460

if.then.452:                                      ; preds = %if.else.447
  %246 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %247 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon453 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %247, i32 0, i32 2
  %n454 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon453, i32 0, i32 0
  %248 = load i32, i32* %n454, align 4
  %inc455 = add i32 %248, 1
  store i32 %inc455, i32* %n454, align 4
  %idxprom456 = zext i32 %248 to i64
  %249 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon457 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %249, i32 0, i32 2
  %v458 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon457, i32 0, i32 2
  %250 = load %struct.NFAState**, %struct.NFAState*** %v458, align 8
  %arrayidx459 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %250, i64 %idxprom456
  store %struct.NFAState* %246, %struct.NFAState** %arrayidx459, align 8
  br label %do.end.464

if.end.460:                                       ; preds = %if.else.447
  br label %if.end.461

if.end.461:                                       ; preds = %if.end.460, %if.end.446
  br label %if.end.462

if.end.462:                                       ; preds = %if.end.461
  %251 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon463 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %251, i32 0, i32 2
  %252 = bitcast %struct.anon.10* %epsilon463 to i8*
  %253 = load %struct.NFAState*, %struct.NFAState** %p, align 8
  %254 = bitcast %struct.NFAState* %253 to i8*
  call void @vec_add_internal(i8* %252, i8* %254)
  br label %do.end.464

do.end.464:                                       ; preds = %if.end.462, %if.then.452, %if.then.438, %if.then.414
  br label %sw.epilog.786

sw.bb.465:                                        ; preds = %while.body
  %255 = load i8*, i8** %reg, align 8
  %incdec.ptr466 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %incdec.ptr466, i8** %reg, align 8
  %256 = load i8, i8* %255, align 1
  store i8 %256, i8* %c, align 1
  %257 = load i8, i8* %c, align 1
  %tobool467 = icmp ne i8 %257, 0
  br i1 %tobool467, label %if.end.469, label %if.then.468

if.then.468:                                      ; preds = %sw.bb.465
  br label %Lerror

if.end.469:                                       ; preds = %sw.bb.465
  br label %sw.default.470

sw.default.470:                                   ; preds = %while.body, %if.end.469
  %258 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %ignore_case = getelementptr inbounds %struct.LexState, %struct.LexState* %258, i32 0, i32 4
  %259 = load i32, i32* %ignore_case, align 4
  %tobool471 = icmp ne i32 %259, 0
  br i1 %tobool471, label %lor.lhs.false.472, label %if.then.480

lor.lhs.false.472:                                ; preds = %sw.default.470
  %260 = load i8, i8* %c, align 1
  %conv473 = zext i8 %260 to i32
  %idxprom474 = sext i32 %conv473 to i64
  %call475 = call i16** @__ctype_b_loc() #5
  %261 = load i16*, i16** %call475, align 8
  %arrayidx476 = getelementptr inbounds i16, i16* %261, i64 %idxprom474
  %262 = load i16, i16* %arrayidx476, align 2
  %conv477 = zext i16 %262 to i32
  %and478 = and i32 %conv477, 1024
  %tobool479 = icmp ne i32 %and478, 0
  br i1 %tobool479, label %if.else.566, label %if.then.480

if.then.480:                                      ; preds = %lor.lhs.false.472, %sw.default.470
  br label %do.body.481

do.body.481:                                      ; preds = %if.then.480
  %263 = load i8, i8* %c, align 1
  %idxprom482 = zext i8 %263 to i64
  %264 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars483 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %264, i32 0, i32 1
  %arrayidx484 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars483, i32 0, i64 %idxprom482
  %v485 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx484, i32 0, i32 2
  %265 = load %struct.NFAState**, %struct.NFAState*** %v485, align 8
  %tobool486 = icmp ne %struct.NFAState** %265, null
  br i1 %tobool486, label %if.else.505, label %if.then.487

if.then.487:                                      ; preds = %do.body.481
  %266 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call488 = call %struct.NFAState* @new_NFAState(%struct.LexState* %266)
  store %struct.NFAState* %call488, %struct.NFAState** %x, align 8
  %267 = load i8, i8* %c, align 1
  %idxprom489 = zext i8 %267 to i64
  %268 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars490 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %268, i32 0, i32 1
  %arrayidx491 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars490, i32 0, i64 %idxprom489
  %n492 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx491, i32 0, i32 0
  %269 = load i32, i32* %n492, align 4
  %inc493 = add i32 %269, 1
  store i32 %inc493, i32* %n492, align 4
  %idxprom494 = zext i32 %269 to i64
  %270 = load i8, i8* %c, align 1
  %idxprom495 = zext i8 %270 to i64
  %271 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars496 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %271, i32 0, i32 1
  %arrayidx497 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars496, i32 0, i64 %idxprom495
  %e498 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx497, i32 0, i32 3
  %arraydecay499 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e498, i32 0, i32 0
  %272 = load i8, i8* %c, align 1
  %idxprom500 = zext i8 %272 to i64
  %273 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars501 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %273, i32 0, i32 1
  %arrayidx502 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars501, i32 0, i64 %idxprom500
  %v503 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx502, i32 0, i32 2
  store %struct.NFAState** %arraydecay499, %struct.NFAState*** %v503, align 8
  %arrayidx504 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay499, i64 %idxprom494
  store %struct.NFAState* %call488, %struct.NFAState** %arrayidx504, align 8
  br label %do.end.565

if.else.505:                                      ; preds = %do.body.481
  %274 = load i8, i8* %c, align 1
  %idxprom506 = zext i8 %274 to i64
  %275 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars507 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %275, i32 0, i32 1
  %arrayidx508 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars507, i32 0, i64 %idxprom506
  %v509 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx508, i32 0, i32 2
  %276 = load %struct.NFAState**, %struct.NFAState*** %v509, align 8
  %277 = load i8, i8* %c, align 1
  %idxprom510 = zext i8 %277 to i64
  %278 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars511 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %278, i32 0, i32 1
  %arrayidx512 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars511, i32 0, i64 %idxprom510
  %e513 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx512, i32 0, i32 3
  %arraydecay514 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e513, i32 0, i32 0
  %cmp515 = icmp eq %struct.NFAState** %276, %arraydecay514
  br i1 %cmp515, label %if.then.517, label %if.else.538

if.then.517:                                      ; preds = %if.else.505
  %279 = load i8, i8* %c, align 1
  %idxprom518 = zext i8 %279 to i64
  %280 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars519 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %280, i32 0, i32 1
  %arrayidx520 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars519, i32 0, i64 %idxprom518
  %n521 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx520, i32 0, i32 0
  %281 = load i32, i32* %n521, align 4
  %cmp522 = icmp ult i32 %281, 3
  br i1 %cmp522, label %if.then.524, label %if.end.537

if.then.524:                                      ; preds = %if.then.517
  %282 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call525 = call %struct.NFAState* @new_NFAState(%struct.LexState* %282)
  store %struct.NFAState* %call525, %struct.NFAState** %x, align 8
  %283 = load i8, i8* %c, align 1
  %idxprom526 = zext i8 %283 to i64
  %284 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars527 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %284, i32 0, i32 1
  %arrayidx528 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars527, i32 0, i64 %idxprom526
  %n529 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx528, i32 0, i32 0
  %285 = load i32, i32* %n529, align 4
  %inc530 = add i32 %285, 1
  store i32 %inc530, i32* %n529, align 4
  %idxprom531 = zext i32 %285 to i64
  %286 = load i8, i8* %c, align 1
  %idxprom532 = zext i8 %286 to i64
  %287 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars533 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %287, i32 0, i32 1
  %arrayidx534 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars533, i32 0, i64 %idxprom532
  %v535 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx534, i32 0, i32 2
  %288 = load %struct.NFAState**, %struct.NFAState*** %v535, align 8
  %arrayidx536 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %288, i64 %idxprom531
  store %struct.NFAState* %call525, %struct.NFAState** %arrayidx536, align 8
  br label %do.end.565

if.end.537:                                       ; preds = %if.then.517
  br label %if.end.559

if.else.538:                                      ; preds = %if.else.505
  %289 = load i8, i8* %c, align 1
  %idxprom539 = zext i8 %289 to i64
  %290 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars540 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %290, i32 0, i32 1
  %arrayidx541 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars540, i32 0, i64 %idxprom539
  %n542 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx541, i32 0, i32 0
  %291 = load i32, i32* %n542, align 4
  %and543 = and i32 %291, 7
  %tobool544 = icmp ne i32 %and543, 0
  br i1 %tobool544, label %if.then.545, label %if.end.558

if.then.545:                                      ; preds = %if.else.538
  %292 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call546 = call %struct.NFAState* @new_NFAState(%struct.LexState* %292)
  store %struct.NFAState* %call546, %struct.NFAState** %x, align 8
  %293 = load i8, i8* %c, align 1
  %idxprom547 = zext i8 %293 to i64
  %294 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars548 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %294, i32 0, i32 1
  %arrayidx549 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars548, i32 0, i64 %idxprom547
  %n550 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx549, i32 0, i32 0
  %295 = load i32, i32* %n550, align 4
  %inc551 = add i32 %295, 1
  store i32 %inc551, i32* %n550, align 4
  %idxprom552 = zext i32 %295 to i64
  %296 = load i8, i8* %c, align 1
  %idxprom553 = zext i8 %296 to i64
  %297 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars554 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %297, i32 0, i32 1
  %arrayidx555 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars554, i32 0, i64 %idxprom553
  %v556 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx555, i32 0, i32 2
  %298 = load %struct.NFAState**, %struct.NFAState*** %v556, align 8
  %arrayidx557 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %298, i64 %idxprom552
  store %struct.NFAState* %call546, %struct.NFAState** %arrayidx557, align 8
  br label %do.end.565

if.end.558:                                       ; preds = %if.else.538
  br label %if.end.559

if.end.559:                                       ; preds = %if.end.558, %if.end.537
  br label %if.end.560

if.end.560:                                       ; preds = %if.end.559
  %299 = load i8, i8* %c, align 1
  %idxprom561 = zext i8 %299 to i64
  %300 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars562 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %300, i32 0, i32 1
  %arrayidx563 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars562, i32 0, i64 %idxprom561
  %301 = bitcast %struct.anon.9* %arrayidx563 to i8*
  %302 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call564 = call %struct.NFAState* @new_NFAState(%struct.LexState* %302)
  store %struct.NFAState* %call564, %struct.NFAState** %x, align 8
  %303 = bitcast %struct.NFAState* %call564 to i8*
  call void @vec_add_internal(i8* %301, i8* %303)
  br label %do.end.565

do.end.565:                                       ; preds = %if.end.560, %if.then.545, %if.then.524, %if.then.487
  br label %if.end.785

if.else.566:                                      ; preds = %lor.lhs.false.472
  br label %do.body.567

do.body.567:                                      ; preds = %if.else.566
  %304 = load i8, i8* %c, align 1
  %conv568 = zext i8 %304 to i32
  %call569 = call i32 @tolower(i32 %conv568) #1
  %idxprom570 = sext i32 %call569 to i64
  %305 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars571 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %305, i32 0, i32 1
  %arrayidx572 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars571, i32 0, i64 %idxprom570
  %v573 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx572, i32 0, i32 2
  %306 = load %struct.NFAState**, %struct.NFAState*** %v573, align 8
  %tobool574 = icmp ne %struct.NFAState** %306, null
  br i1 %tobool574, label %if.else.599, label %if.then.575

if.then.575:                                      ; preds = %do.body.567
  %307 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call576 = call %struct.NFAState* @new_NFAState(%struct.LexState* %307)
  store %struct.NFAState* %call576, %struct.NFAState** %x, align 8
  %308 = load i8, i8* %c, align 1
  %conv577 = zext i8 %308 to i32
  %call578 = call i32 @tolower(i32 %conv577) #1
  %idxprom579 = sext i32 %call578 to i64
  %309 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars580 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %309, i32 0, i32 1
  %arrayidx581 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars580, i32 0, i64 %idxprom579
  %n582 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx581, i32 0, i32 0
  %310 = load i32, i32* %n582, align 4
  %inc583 = add i32 %310, 1
  store i32 %inc583, i32* %n582, align 4
  %idxprom584 = zext i32 %310 to i64
  %311 = load i8, i8* %c, align 1
  %conv585 = zext i8 %311 to i32
  %call586 = call i32 @tolower(i32 %conv585) #1
  %idxprom587 = sext i32 %call586 to i64
  %312 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars588 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %312, i32 0, i32 1
  %arrayidx589 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars588, i32 0, i64 %idxprom587
  %e590 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx589, i32 0, i32 3
  %arraydecay591 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e590, i32 0, i32 0
  %313 = load i8, i8* %c, align 1
  %conv592 = zext i8 %313 to i32
  %call593 = call i32 @tolower(i32 %conv592) #1
  %idxprom594 = sext i32 %call593 to i64
  %314 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars595 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %314, i32 0, i32 1
  %arrayidx596 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars595, i32 0, i64 %idxprom594
  %v597 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx596, i32 0, i32 2
  store %struct.NFAState** %arraydecay591, %struct.NFAState*** %v597, align 8
  %arrayidx598 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay591, i64 %idxprom584
  store %struct.NFAState* %call576, %struct.NFAState** %arrayidx598, align 8
  br label %do.end.677

if.else.599:                                      ; preds = %do.body.567
  %315 = load i8, i8* %c, align 1
  %conv600 = zext i8 %315 to i32
  %call601 = call i32 @tolower(i32 %conv600) #1
  %idxprom602 = sext i32 %call601 to i64
  %316 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars603 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %316, i32 0, i32 1
  %arrayidx604 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars603, i32 0, i64 %idxprom602
  %v605 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx604, i32 0, i32 2
  %317 = load %struct.NFAState**, %struct.NFAState*** %v605, align 8
  %318 = load i8, i8* %c, align 1
  %conv606 = zext i8 %318 to i32
  %call607 = call i32 @tolower(i32 %conv606) #1
  %idxprom608 = sext i32 %call607 to i64
  %319 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars609 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %319, i32 0, i32 1
  %arrayidx610 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars609, i32 0, i64 %idxprom608
  %e611 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx610, i32 0, i32 3
  %arraydecay612 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e611, i32 0, i32 0
  %cmp613 = icmp eq %struct.NFAState** %317, %arraydecay612
  br i1 %cmp613, label %if.then.615, label %if.else.642

if.then.615:                                      ; preds = %if.else.599
  %320 = load i8, i8* %c, align 1
  %conv616 = zext i8 %320 to i32
  %call617 = call i32 @tolower(i32 %conv616) #1
  %idxprom618 = sext i32 %call617 to i64
  %321 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars619 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %321, i32 0, i32 1
  %arrayidx620 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars619, i32 0, i64 %idxprom618
  %n621 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx620, i32 0, i32 0
  %322 = load i32, i32* %n621, align 4
  %cmp622 = icmp ult i32 %322, 3
  br i1 %cmp622, label %if.then.624, label %if.end.641

if.then.624:                                      ; preds = %if.then.615
  %323 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call625 = call %struct.NFAState* @new_NFAState(%struct.LexState* %323)
  store %struct.NFAState* %call625, %struct.NFAState** %x, align 8
  %324 = load i8, i8* %c, align 1
  %conv626 = zext i8 %324 to i32
  %call627 = call i32 @tolower(i32 %conv626) #1
  %idxprom628 = sext i32 %call627 to i64
  %325 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars629 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %325, i32 0, i32 1
  %arrayidx630 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars629, i32 0, i64 %idxprom628
  %n631 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx630, i32 0, i32 0
  %326 = load i32, i32* %n631, align 4
  %inc632 = add i32 %326, 1
  store i32 %inc632, i32* %n631, align 4
  %idxprom633 = zext i32 %326 to i64
  %327 = load i8, i8* %c, align 1
  %conv634 = zext i8 %327 to i32
  %call635 = call i32 @tolower(i32 %conv634) #1
  %idxprom636 = sext i32 %call635 to i64
  %328 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars637 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %328, i32 0, i32 1
  %arrayidx638 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars637, i32 0, i64 %idxprom636
  %v639 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx638, i32 0, i32 2
  %329 = load %struct.NFAState**, %struct.NFAState*** %v639, align 8
  %arrayidx640 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %329, i64 %idxprom633
  store %struct.NFAState* %call625, %struct.NFAState** %arrayidx640, align 8
  br label %do.end.677

if.end.641:                                       ; preds = %if.then.615
  br label %if.end.669

if.else.642:                                      ; preds = %if.else.599
  %330 = load i8, i8* %c, align 1
  %conv643 = zext i8 %330 to i32
  %call644 = call i32 @tolower(i32 %conv643) #1
  %idxprom645 = sext i32 %call644 to i64
  %331 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars646 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %331, i32 0, i32 1
  %arrayidx647 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars646, i32 0, i64 %idxprom645
  %n648 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx647, i32 0, i32 0
  %332 = load i32, i32* %n648, align 4
  %and649 = and i32 %332, 7
  %tobool650 = icmp ne i32 %and649, 0
  br i1 %tobool650, label %if.then.651, label %if.end.668

if.then.651:                                      ; preds = %if.else.642
  %333 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call652 = call %struct.NFAState* @new_NFAState(%struct.LexState* %333)
  store %struct.NFAState* %call652, %struct.NFAState** %x, align 8
  %334 = load i8, i8* %c, align 1
  %conv653 = zext i8 %334 to i32
  %call654 = call i32 @tolower(i32 %conv653) #1
  %idxprom655 = sext i32 %call654 to i64
  %335 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars656 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %335, i32 0, i32 1
  %arrayidx657 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars656, i32 0, i64 %idxprom655
  %n658 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx657, i32 0, i32 0
  %336 = load i32, i32* %n658, align 4
  %inc659 = add i32 %336, 1
  store i32 %inc659, i32* %n658, align 4
  %idxprom660 = zext i32 %336 to i64
  %337 = load i8, i8* %c, align 1
  %conv661 = zext i8 %337 to i32
  %call662 = call i32 @tolower(i32 %conv661) #1
  %idxprom663 = sext i32 %call662 to i64
  %338 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars664 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %338, i32 0, i32 1
  %arrayidx665 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars664, i32 0, i64 %idxprom663
  %v666 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx665, i32 0, i32 2
  %339 = load %struct.NFAState**, %struct.NFAState*** %v666, align 8
  %arrayidx667 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %339, i64 %idxprom660
  store %struct.NFAState* %call652, %struct.NFAState** %arrayidx667, align 8
  br label %do.end.677

if.end.668:                                       ; preds = %if.else.642
  br label %if.end.669

if.end.669:                                       ; preds = %if.end.668, %if.end.641
  br label %if.end.670

if.end.670:                                       ; preds = %if.end.669
  %340 = load i8, i8* %c, align 1
  %conv671 = zext i8 %340 to i32
  %call672 = call i32 @tolower(i32 %conv671) #1
  %idxprom673 = sext i32 %call672 to i64
  %341 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars674 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %341, i32 0, i32 1
  %arrayidx675 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars674, i32 0, i64 %idxprom673
  %342 = bitcast %struct.anon.9* %arrayidx675 to i8*
  %343 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %call676 = call %struct.NFAState* @new_NFAState(%struct.LexState* %343)
  store %struct.NFAState* %call676, %struct.NFAState** %x, align 8
  %344 = bitcast %struct.NFAState* %call676 to i8*
  call void @vec_add_internal(i8* %342, i8* %344)
  br label %do.end.677

do.end.677:                                       ; preds = %if.end.670, %if.then.651, %if.then.624, %if.then.575
  br label %do.body.678

do.body.678:                                      ; preds = %do.end.677
  %345 = load i8, i8* %c, align 1
  %conv679 = zext i8 %345 to i32
  %call680 = call i32 @toupper(i32 %conv679) #1
  %idxprom681 = sext i32 %call680 to i64
  %346 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars682 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %346, i32 0, i32 1
  %arrayidx683 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars682, i32 0, i64 %idxprom681
  %v684 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx683, i32 0, i32 2
  %347 = load %struct.NFAState**, %struct.NFAState*** %v684, align 8
  %tobool685 = icmp ne %struct.NFAState** %347, null
  br i1 %tobool685, label %if.else.709, label %if.then.686

if.then.686:                                      ; preds = %do.body.678
  %348 = load %struct.NFAState*, %struct.NFAState** %x, align 8
  %349 = load i8, i8* %c, align 1
  %conv687 = zext i8 %349 to i32
  %call688 = call i32 @toupper(i32 %conv687) #1
  %idxprom689 = sext i32 %call688 to i64
  %350 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars690 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %350, i32 0, i32 1
  %arrayidx691 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars690, i32 0, i64 %idxprom689
  %n692 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx691, i32 0, i32 0
  %351 = load i32, i32* %n692, align 4
  %inc693 = add i32 %351, 1
  store i32 %inc693, i32* %n692, align 4
  %idxprom694 = zext i32 %351 to i64
  %352 = load i8, i8* %c, align 1
  %conv695 = zext i8 %352 to i32
  %call696 = call i32 @toupper(i32 %conv695) #1
  %idxprom697 = sext i32 %call696 to i64
  %353 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars698 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %353, i32 0, i32 1
  %arrayidx699 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars698, i32 0, i64 %idxprom697
  %e700 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx699, i32 0, i32 3
  %arraydecay701 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e700, i32 0, i32 0
  %354 = load i8, i8* %c, align 1
  %conv702 = zext i8 %354 to i32
  %call703 = call i32 @toupper(i32 %conv702) #1
  %idxprom704 = sext i32 %call703 to i64
  %355 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars705 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %355, i32 0, i32 1
  %arrayidx706 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars705, i32 0, i64 %idxprom704
  %v707 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx706, i32 0, i32 2
  store %struct.NFAState** %arraydecay701, %struct.NFAState*** %v707, align 8
  %arrayidx708 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay701, i64 %idxprom694
  store %struct.NFAState* %348, %struct.NFAState** %arrayidx708, align 8
  br label %do.end.784

if.else.709:                                      ; preds = %do.body.678
  %356 = load i8, i8* %c, align 1
  %conv710 = zext i8 %356 to i32
  %call711 = call i32 @toupper(i32 %conv710) #1
  %idxprom712 = sext i32 %call711 to i64
  %357 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars713 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %357, i32 0, i32 1
  %arrayidx714 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars713, i32 0, i64 %idxprom712
  %v715 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx714, i32 0, i32 2
  %358 = load %struct.NFAState**, %struct.NFAState*** %v715, align 8
  %359 = load i8, i8* %c, align 1
  %conv716 = zext i8 %359 to i32
  %call717 = call i32 @toupper(i32 %conv716) #1
  %idxprom718 = sext i32 %call717 to i64
  %360 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars719 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %360, i32 0, i32 1
  %arrayidx720 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars719, i32 0, i64 %idxprom718
  %e721 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx720, i32 0, i32 3
  %arraydecay722 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e721, i32 0, i32 0
  %cmp723 = icmp eq %struct.NFAState** %358, %arraydecay722
  br i1 %cmp723, label %if.then.725, label %if.else.751

if.then.725:                                      ; preds = %if.else.709
  %361 = load i8, i8* %c, align 1
  %conv726 = zext i8 %361 to i32
  %call727 = call i32 @toupper(i32 %conv726) #1
  %idxprom728 = sext i32 %call727 to i64
  %362 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars729 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %362, i32 0, i32 1
  %arrayidx730 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars729, i32 0, i64 %idxprom728
  %n731 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx730, i32 0, i32 0
  %363 = load i32, i32* %n731, align 4
  %cmp732 = icmp ult i32 %363, 3
  br i1 %cmp732, label %if.then.734, label %if.end.750

if.then.734:                                      ; preds = %if.then.725
  %364 = load %struct.NFAState*, %struct.NFAState** %x, align 8
  %365 = load i8, i8* %c, align 1
  %conv735 = zext i8 %365 to i32
  %call736 = call i32 @toupper(i32 %conv735) #1
  %idxprom737 = sext i32 %call736 to i64
  %366 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars738 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %366, i32 0, i32 1
  %arrayidx739 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars738, i32 0, i64 %idxprom737
  %n740 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx739, i32 0, i32 0
  %367 = load i32, i32* %n740, align 4
  %inc741 = add i32 %367, 1
  store i32 %inc741, i32* %n740, align 4
  %idxprom742 = zext i32 %367 to i64
  %368 = load i8, i8* %c, align 1
  %conv743 = zext i8 %368 to i32
  %call744 = call i32 @toupper(i32 %conv743) #1
  %idxprom745 = sext i32 %call744 to i64
  %369 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars746 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %369, i32 0, i32 1
  %arrayidx747 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars746, i32 0, i64 %idxprom745
  %v748 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx747, i32 0, i32 2
  %370 = load %struct.NFAState**, %struct.NFAState*** %v748, align 8
  %arrayidx749 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %370, i64 %idxprom742
  store %struct.NFAState* %364, %struct.NFAState** %arrayidx749, align 8
  br label %do.end.784

if.end.750:                                       ; preds = %if.then.725
  br label %if.end.777

if.else.751:                                      ; preds = %if.else.709
  %371 = load i8, i8* %c, align 1
  %conv752 = zext i8 %371 to i32
  %call753 = call i32 @toupper(i32 %conv752) #1
  %idxprom754 = sext i32 %call753 to i64
  %372 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars755 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %372, i32 0, i32 1
  %arrayidx756 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars755, i32 0, i64 %idxprom754
  %n757 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx756, i32 0, i32 0
  %373 = load i32, i32* %n757, align 4
  %and758 = and i32 %373, 7
  %tobool759 = icmp ne i32 %and758, 0
  br i1 %tobool759, label %if.then.760, label %if.end.776

if.then.760:                                      ; preds = %if.else.751
  %374 = load %struct.NFAState*, %struct.NFAState** %x, align 8
  %375 = load i8, i8* %c, align 1
  %conv761 = zext i8 %375 to i32
  %call762 = call i32 @toupper(i32 %conv761) #1
  %idxprom763 = sext i32 %call762 to i64
  %376 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars764 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %376, i32 0, i32 1
  %arrayidx765 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars764, i32 0, i64 %idxprom763
  %n766 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx765, i32 0, i32 0
  %377 = load i32, i32* %n766, align 4
  %inc767 = add i32 %377, 1
  store i32 %inc767, i32* %n766, align 4
  %idxprom768 = zext i32 %377 to i64
  %378 = load i8, i8* %c, align 1
  %conv769 = zext i8 %378 to i32
  %call770 = call i32 @toupper(i32 %conv769) #1
  %idxprom771 = sext i32 %call770 to i64
  %379 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars772 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %379, i32 0, i32 1
  %arrayidx773 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars772, i32 0, i64 %idxprom771
  %v774 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx773, i32 0, i32 2
  %380 = load %struct.NFAState**, %struct.NFAState*** %v774, align 8
  %arrayidx775 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %380, i64 %idxprom768
  store %struct.NFAState* %374, %struct.NFAState** %arrayidx775, align 8
  br label %do.end.784

if.end.776:                                       ; preds = %if.else.751
  br label %if.end.777

if.end.777:                                       ; preds = %if.end.776, %if.end.750
  br label %if.end.778

if.end.778:                                       ; preds = %if.end.777
  %381 = load i8, i8* %c, align 1
  %conv779 = zext i8 %381 to i32
  %call780 = call i32 @toupper(i32 %conv779) #1
  %idxprom781 = sext i32 %call780 to i64
  %382 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %chars782 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %382, i32 0, i32 1
  %arrayidx783 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars782, i32 0, i64 %idxprom781
  %383 = bitcast %struct.anon.9* %arrayidx783 to i8*
  %384 = load %struct.NFAState*, %struct.NFAState** %x, align 8
  %385 = bitcast %struct.NFAState* %384 to i8*
  call void @vec_add_internal(i8* %383, i8* %385)
  br label %do.end.784

do.end.784:                                       ; preds = %if.end.778, %if.then.760, %if.then.734, %if.then.686
  br label %if.end.785

if.end.785:                                       ; preds = %do.end.784, %do.end.565
  %386 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  store %struct.NFAState* %386, %struct.NFAState** %p, align 8
  %387 = load %struct.NFAState*, %struct.NFAState** %x, align 8
  store %struct.NFAState* %387, %struct.NFAState** %s, align 8
  br label %sw.epilog.786

sw.epilog.786:                                    ; preds = %if.end.785, %do.end.464, %do.end.408, %do.end.297, %for.end.241, %do.end.102, %sw.bb
  br label %while.cond

while.end.787:                                    ; preds = %while.cond
  br label %Lreturn

Lreturn:                                          ; preds = %while.end.787, %sw.bb.1
  br label %do.body.788

do.body.788:                                      ; preds = %Lreturn
  %388 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon789 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %388, i32 0, i32 2
  %v790 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon789, i32 0, i32 2
  %389 = load %struct.NFAState**, %struct.NFAState*** %v790, align 8
  %tobool791 = icmp ne %struct.NFAState** %389, null
  br i1 %tobool791, label %if.else.803, label %if.then.792

if.then.792:                                      ; preds = %do.body.788
  %390 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %391 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon793 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %391, i32 0, i32 2
  %n794 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon793, i32 0, i32 0
  %392 = load i32, i32* %n794, align 4
  %inc795 = add i32 %392, 1
  store i32 %inc795, i32* %n794, align 4
  %idxprom796 = zext i32 %392 to i64
  %393 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon797 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %393, i32 0, i32 2
  %e798 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon797, i32 0, i32 3
  %arraydecay799 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e798, i32 0, i32 0
  %394 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon800 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %394, i32 0, i32 2
  %v801 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon800, i32 0, i32 2
  store %struct.NFAState** %arraydecay799, %struct.NFAState*** %v801, align 8
  %arrayidx802 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay799, i64 %idxprom796
  store %struct.NFAState* %390, %struct.NFAState** %arrayidx802, align 8
  br label %do.end.842

if.else.803:                                      ; preds = %do.body.788
  %395 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon804 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %395, i32 0, i32 2
  %v805 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon804, i32 0, i32 2
  %396 = load %struct.NFAState**, %struct.NFAState*** %v805, align 8
  %397 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon806 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %397, i32 0, i32 2
  %e807 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon806, i32 0, i32 3
  %arraydecay808 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e807, i32 0, i32 0
  %cmp809 = icmp eq %struct.NFAState** %396, %arraydecay808
  br i1 %cmp809, label %if.then.811, label %if.else.825

if.then.811:                                      ; preds = %if.else.803
  %398 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon812 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %398, i32 0, i32 2
  %n813 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon812, i32 0, i32 0
  %399 = load i32, i32* %n813, align 4
  %cmp814 = icmp ult i32 %399, 3
  br i1 %cmp814, label %if.then.816, label %if.end.824

if.then.816:                                      ; preds = %if.then.811
  %400 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %401 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon817 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %401, i32 0, i32 2
  %n818 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon817, i32 0, i32 0
  %402 = load i32, i32* %n818, align 4
  %inc819 = add i32 %402, 1
  store i32 %inc819, i32* %n818, align 4
  %idxprom820 = zext i32 %402 to i64
  %403 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon821 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %403, i32 0, i32 2
  %v822 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon821, i32 0, i32 2
  %404 = load %struct.NFAState**, %struct.NFAState*** %v822, align 8
  %arrayidx823 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %404, i64 %idxprom820
  store %struct.NFAState* %400, %struct.NFAState** %arrayidx823, align 8
  br label %do.end.842

if.end.824:                                       ; preds = %if.then.811
  br label %if.end.839

if.else.825:                                      ; preds = %if.else.803
  %405 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon826 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %405, i32 0, i32 2
  %n827 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon826, i32 0, i32 0
  %406 = load i32, i32* %n827, align 4
  %and828 = and i32 %406, 7
  %tobool829 = icmp ne i32 %and828, 0
  br i1 %tobool829, label %if.then.830, label %if.end.838

if.then.830:                                      ; preds = %if.else.825
  %407 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %408 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon831 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %408, i32 0, i32 2
  %n832 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon831, i32 0, i32 0
  %409 = load i32, i32* %n832, align 4
  %inc833 = add i32 %409, 1
  store i32 %inc833, i32* %n832, align 4
  %idxprom834 = zext i32 %409 to i64
  %410 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon835 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %410, i32 0, i32 2
  %v836 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon835, i32 0, i32 2
  %411 = load %struct.NFAState**, %struct.NFAState*** %v836, align 8
  %arrayidx837 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %411, i64 %idxprom834
  store %struct.NFAState* %407, %struct.NFAState** %arrayidx837, align 8
  br label %do.end.842

if.end.838:                                       ; preds = %if.else.825
  br label %if.end.839

if.end.839:                                       ; preds = %if.end.838, %if.end.824
  br label %if.end.840

if.end.840:                                       ; preds = %if.end.839
  %412 = load %struct.NFAState*, %struct.NFAState** %s, align 8
  %epsilon841 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %412, i32 0, i32 2
  %413 = bitcast %struct.anon.10* %epsilon841 to i8*
  %414 = load %struct.NFAState*, %struct.NFAState** %n, align 8
  %415 = bitcast %struct.NFAState* %414 to i8*
  call void @vec_add_internal(i8* %413, i8* %415)
  br label %do.end.842

do.end.842:                                       ; preds = %if.end.840, %if.then.830, %if.then.816, %if.then.792
  %416 = load i8*, i8** %reg, align 8
  %417 = load i8**, i8*** %areg.addr, align 8
  store i8* %416, i8** %417, align 8
  br label %return

Lerror:                                           ; preds = %if.then.468, %if.then.129, %if.then.120
  %418 = load i8**, i8*** %areg.addr, align 8
  %419 = load i8*, i8** %418, align 8
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8* %419)
  br label %return

return:                                           ; preds = %Lerror, %do.end.842
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @nfa_to_scanner(%struct.NFAState* %n, %struct.Scanner* %s) #0 {
entry:
  %n.addr = alloca %struct.NFAState*, align 8
  %s.addr = alloca %struct.Scanner*, align 8
  %x = alloca %struct.DFAState*, align 8
  %y = alloca %struct.DFAState*, align 8
  %alldfas = alloca %struct.VecDFAState, align 8
  %i = alloca i32, align 4
  %i_alldfas = alloca i32, align 4
  %i_states = alloca i32, align 4
  %i_char = alloca i32, align 4
  %scanner = alloca %struct.VecScanState*, align 8
  store %struct.NFAState* %n, %struct.NFAState** %n.addr, align 8
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  %call = call %struct.DFAState* @new_DFAState()
  store %struct.DFAState* %call, %struct.DFAState** %x, align 8
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %states = getelementptr inbounds %struct.Scanner, %struct.Scanner* %0, i32 0, i32 0
  store %struct.VecScanState* %states, %struct.VecScanState** %scanner, align 8
  %1 = bitcast %struct.VecDFAState* %alldfas to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 40, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %states1 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %2, i32 0, i32 0
  %v = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states1, i32 0, i32 2
  %3 = load %struct.NFAState**, %struct.NFAState*** %v, align 8
  %tobool = icmp ne %struct.NFAState** %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %4 = load %struct.NFAState*, %struct.NFAState** %n.addr, align 8
  %5 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %states2 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %5, i32 0, i32 0
  %n3 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states2, i32 0, i32 0
  %6 = load i32, i32* %n3, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %n3, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %states4 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %7, i32 0, i32 0
  %e = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states4, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e, i32 0, i32 0
  %8 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %states5 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %8, i32 0, i32 0
  %v6 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states5, i32 0, i32 2
  store %struct.NFAState** %arraydecay, %struct.NFAState*** %v6, align 8
  %arrayidx = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay, i64 %idxprom
  store %struct.NFAState* %4, %struct.NFAState** %arrayidx, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %9 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %states7 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %9, i32 0, i32 0
  %v8 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states7, i32 0, i32 2
  %10 = load %struct.NFAState**, %struct.NFAState*** %v8, align 8
  %11 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %states9 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %11, i32 0, i32 0
  %e10 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states9, i32 0, i32 3
  %arraydecay11 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e10, i32 0, i32 0
  %cmp = icmp eq %struct.NFAState** %10, %arraydecay11
  br i1 %cmp, label %if.then.12, label %if.else.24

if.then.12:                                       ; preds = %if.else
  %12 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %states13 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %12, i32 0, i32 0
  %n14 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states13, i32 0, i32 0
  %13 = load i32, i32* %n14, align 4
  %cmp15 = icmp ult i32 %13, 3
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then.12
  %14 = load %struct.NFAState*, %struct.NFAState** %n.addr, align 8
  %15 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %states17 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %15, i32 0, i32 0
  %n18 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states17, i32 0, i32 0
  %16 = load i32, i32* %n18, align 4
  %inc19 = add i32 %16, 1
  store i32 %inc19, i32* %n18, align 4
  %idxprom20 = zext i32 %16 to i64
  %17 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %states21 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %17, i32 0, i32 0
  %v22 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states21, i32 0, i32 2
  %18 = load %struct.NFAState**, %struct.NFAState*** %v22, align 8
  %arrayidx23 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %18, i64 %idxprom20
  store %struct.NFAState* %14, %struct.NFAState** %arrayidx23, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.12
  br label %if.end.37

if.else.24:                                       ; preds = %if.else
  %19 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %states25 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %19, i32 0, i32 0
  %n26 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states25, i32 0, i32 0
  %20 = load i32, i32* %n26, align 4
  %and = and i32 %20, 7
  %tobool27 = icmp ne i32 %and, 0
  br i1 %tobool27, label %if.then.28, label %if.end.36

if.then.28:                                       ; preds = %if.else.24
  %21 = load %struct.NFAState*, %struct.NFAState** %n.addr, align 8
  %22 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %states29 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %22, i32 0, i32 0
  %n30 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states29, i32 0, i32 0
  %23 = load i32, i32* %n30, align 4
  %inc31 = add i32 %23, 1
  store i32 %inc31, i32* %n30, align 4
  %idxprom32 = zext i32 %23 to i64
  %24 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %states33 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %24, i32 0, i32 0
  %v34 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states33, i32 0, i32 2
  %25 = load %struct.NFAState**, %struct.NFAState*** %v34, align 8
  %arrayidx35 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %25, i64 %idxprom32
  store %struct.NFAState* %21, %struct.NFAState** %arrayidx35, align 8
  br label %do.end

if.end.36:                                        ; preds = %if.else.24
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37
  %26 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %states39 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %26, i32 0, i32 0
  %27 = bitcast %struct.anon.13* %states39 to i8*
  %28 = load %struct.NFAState*, %struct.NFAState** %n.addr, align 8
  %29 = bitcast %struct.NFAState* %28 to i8*
  call void @vec_add_internal(i8* %27, i8* %29)
  br label %do.end

do.end:                                           ; preds = %if.end.38, %if.then.28, %if.then.16, %if.then
  %30 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  call void @nfa_closure(%struct.DFAState* %30)
  br label %do.body.40

do.body.40:                                       ; preds = %do.end
  %v41 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 2
  %31 = load %struct.DFAState**, %struct.DFAState*** %v41, align 8
  %tobool42 = icmp ne %struct.DFAState** %31, null
  br i1 %tobool42, label %if.else.51, label %if.then.43

if.then.43:                                       ; preds = %do.body.40
  %32 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %n44 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 0
  %33 = load i32, i32* %n44, align 4
  %inc45 = add i32 %33, 1
  store i32 %inc45, i32* %n44, align 4
  %idxprom46 = zext i32 %33 to i64
  %e47 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 3
  %arraydecay48 = getelementptr inbounds [3 x %struct.DFAState*], [3 x %struct.DFAState*]* %e47, i32 0, i32 0
  %v49 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 2
  store %struct.DFAState** %arraydecay48, %struct.DFAState*** %v49, align 8
  %arrayidx50 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %arraydecay48, i64 %idxprom46
  store %struct.DFAState* %32, %struct.DFAState** %arrayidx50, align 8
  br label %do.end.79

if.else.51:                                       ; preds = %do.body.40
  %v52 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 2
  %34 = load %struct.DFAState**, %struct.DFAState*** %v52, align 8
  %e53 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 3
  %arraydecay54 = getelementptr inbounds [3 x %struct.DFAState*], [3 x %struct.DFAState*]* %e53, i32 0, i32 0
  %cmp55 = icmp eq %struct.DFAState** %34, %arraydecay54
  br i1 %cmp55, label %if.then.56, label %if.else.66

if.then.56:                                       ; preds = %if.else.51
  %n57 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 0
  %35 = load i32, i32* %n57, align 4
  %cmp58 = icmp ult i32 %35, 3
  br i1 %cmp58, label %if.then.59, label %if.end.65

if.then.59:                                       ; preds = %if.then.56
  %36 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %n60 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 0
  %37 = load i32, i32* %n60, align 4
  %inc61 = add i32 %37, 1
  store i32 %inc61, i32* %n60, align 4
  %idxprom62 = zext i32 %37 to i64
  %v63 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 2
  %38 = load %struct.DFAState**, %struct.DFAState*** %v63, align 8
  %arrayidx64 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %38, i64 %idxprom62
  store %struct.DFAState* %36, %struct.DFAState** %arrayidx64, align 8
  br label %do.end.79

if.end.65:                                        ; preds = %if.then.56
  br label %if.end.77

if.else.66:                                       ; preds = %if.else.51
  %n67 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 0
  %39 = load i32, i32* %n67, align 4
  %and68 = and i32 %39, 7
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.76

if.then.70:                                       ; preds = %if.else.66
  %40 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %n71 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 0
  %41 = load i32, i32* %n71, align 4
  %inc72 = add i32 %41, 1
  store i32 %inc72, i32* %n71, align 4
  %idxprom73 = zext i32 %41 to i64
  %v74 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 2
  %42 = load %struct.DFAState**, %struct.DFAState*** %v74, align 8
  %arrayidx75 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %42, i64 %idxprom73
  store %struct.DFAState* %40, %struct.DFAState** %arrayidx75, align 8
  br label %do.end.79

if.end.76:                                        ; preds = %if.else.66
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.65
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77
  %43 = bitcast %struct.VecDFAState* %alldfas to i8*
  %44 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %45 = bitcast %struct.DFAState* %44 to i8*
  call void @vec_add_internal(i8* %43, i8* %45)
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78, %if.then.70, %if.then.59, %if.then.43
  store i32 0, i32* %i_alldfas, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.190, %do.end.79
  %46 = load i32, i32* %i_alldfas, align 4
  %n80 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 0
  %47 = load i32, i32* %n80, align 4
  %cmp81 = icmp ult i32 %46, %47
  br i1 %cmp81, label %for.body, label %for.end.192

for.body:                                         ; preds = %for.cond
  %48 = load i32, i32* %i_alldfas, align 4
  %idxprom82 = sext i32 %48 to i64
  %v83 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 2
  %49 = load %struct.DFAState**, %struct.DFAState*** %v83, align 8
  %arrayidx84 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %49, i64 %idxprom82
  %50 = load %struct.DFAState*, %struct.DFAState** %arrayidx84, align 8
  store %struct.DFAState* %50, %struct.DFAState** %x, align 8
  store i32 0, i32* %i_char, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.187, %for.body
  %51 = load i32, i32* %i_char, align 4
  %cmp86 = icmp slt i32 %51, 256
  br i1 %cmp86, label %for.body.87, label %for.end.189

for.body.87:                                      ; preds = %for.cond.85
  store %struct.DFAState* null, %struct.DFAState** %y, align 8
  store i32 0, i32* %i_states, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.120, %for.body.87
  %52 = load i32, i32* %i_states, align 4
  %53 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %states89 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %53, i32 0, i32 0
  %n90 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states89, i32 0, i32 0
  %54 = load i32, i32* %n90, align 4
  %cmp91 = icmp ult i32 %52, %54
  br i1 %cmp91, label %for.body.92, label %for.end.122

for.body.92:                                      ; preds = %for.cond.88
  store i32 0, i32* %i, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc, %for.body.92
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %i_char, align 4
  %idxprom94 = sext i32 %56 to i64
  %57 = load i32, i32* %i_states, align 4
  %idxprom95 = sext i32 %57 to i64
  %58 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %states96 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %58, i32 0, i32 0
  %v97 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states96, i32 0, i32 2
  %59 = load %struct.NFAState**, %struct.NFAState*** %v97, align 8
  %arrayidx98 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %59, i64 %idxprom95
  %60 = load %struct.NFAState*, %struct.NFAState** %arrayidx98, align 8
  %chars = getelementptr inbounds %struct.NFAState, %struct.NFAState* %60, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars, i32 0, i64 %idxprom94
  %n100 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx99, i32 0, i32 0
  %61 = load i32, i32* %n100, align 4
  %cmp101 = icmp ult i32 %55, %61
  br i1 %cmp101, label %for.body.102, label %for.end

for.body.102:                                     ; preds = %for.cond.93
  %62 = load %struct.DFAState*, %struct.DFAState** %y, align 8
  %tobool103 = icmp ne %struct.DFAState* %62, null
  br i1 %tobool103, label %if.end.106, label %if.then.104

if.then.104:                                      ; preds = %for.body.102
  %call105 = call %struct.DFAState* @new_DFAState()
  store %struct.DFAState* %call105, %struct.DFAState** %y, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %for.body.102
  %63 = load %struct.DFAState*, %struct.DFAState** %y, align 8
  %states107 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %63, i32 0, i32 0
  %64 = bitcast %struct.anon.13* %states107 to i8*
  %65 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %65 to i64
  %66 = load i32, i32* %i_char, align 4
  %idxprom109 = sext i32 %66 to i64
  %67 = load i32, i32* %i_states, align 4
  %idxprom110 = sext i32 %67 to i64
  %68 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %states111 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %68, i32 0, i32 0
  %v112 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states111, i32 0, i32 2
  %69 = load %struct.NFAState**, %struct.NFAState*** %v112, align 8
  %arrayidx113 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %69, i64 %idxprom110
  %70 = load %struct.NFAState*, %struct.NFAState** %arrayidx113, align 8
  %chars114 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %70, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars114, i32 0, i64 %idxprom109
  %v116 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx115, i32 0, i32 2
  %71 = load %struct.NFAState**, %struct.NFAState*** %v116, align 8
  %arrayidx117 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %71, i64 %idxprom108
  %72 = load %struct.NFAState*, %struct.NFAState** %arrayidx117, align 8
  %73 = bitcast %struct.NFAState* %72 to i8*
  %call118 = call i32 @set_add(i8* %64, i8* %73)
  br label %for.inc

for.inc:                                          ; preds = %if.end.106
  %74 = load i32, i32* %i, align 4
  %inc119 = add nsw i32 %74, 1
  store i32 %inc119, i32* %i, align 4
  br label %for.cond.93

for.end:                                          ; preds = %for.cond.93
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.end
  %75 = load i32, i32* %i_states, align 4
  %inc121 = add nsw i32 %75, 1
  store i32 %inc121, i32* %i_states, align 4
  br label %for.cond.88

for.end.122:                                      ; preds = %for.cond.88
  %76 = load %struct.DFAState*, %struct.DFAState** %y, align 8
  %tobool123 = icmp ne %struct.DFAState* %76, null
  br i1 %tobool123, label %if.then.124, label %if.end.186

if.then.124:                                      ; preds = %for.end.122
  %77 = load %struct.DFAState*, %struct.DFAState** %y, align 8
  %states125 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %77, i32 0, i32 0
  %78 = bitcast %struct.anon.13* %states125 to i8*
  call void @set_to_vec(i8* %78)
  %79 = load %struct.DFAState*, %struct.DFAState** %y, align 8
  call void @nfa_closure(%struct.DFAState* %79)
  store i32 0, i32* %i, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.140, %if.then.124
  %80 = load i32, i32* %i, align 4
  %n127 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 0
  %81 = load i32, i32* %n127, align 4
  %cmp128 = icmp ult i32 %80, %81
  br i1 %cmp128, label %for.body.129, label %for.end.142

for.body.129:                                     ; preds = %for.cond.126
  %82 = load %struct.DFAState*, %struct.DFAState** %y, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %83 to i64
  %v131 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 2
  %84 = load %struct.DFAState**, %struct.DFAState*** %v131, align 8
  %arrayidx132 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %84, i64 %idxprom130
  %85 = load %struct.DFAState*, %struct.DFAState** %arrayidx132, align 8
  %call133 = call i32 @eq_dfa_state(%struct.DFAState* %82, %struct.DFAState* %85)
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.then.135, label %if.end.139

if.then.135:                                      ; preds = %for.body.129
  %86 = load %struct.DFAState*, %struct.DFAState** %y, align 8
  call void @free_DFAState(%struct.DFAState* %86)
  %87 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %87 to i64
  %v137 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 2
  %88 = load %struct.DFAState**, %struct.DFAState*** %v137, align 8
  %arrayidx138 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %88, i64 %idxprom136
  %89 = load %struct.DFAState*, %struct.DFAState** %arrayidx138, align 8
  store %struct.DFAState* %89, %struct.DFAState** %y, align 8
  br label %Lnext

if.end.139:                                       ; preds = %for.body.129
  br label %for.inc.140

for.inc.140:                                      ; preds = %if.end.139
  %90 = load i32, i32* %i, align 4
  %inc141 = add nsw i32 %90, 1
  store i32 %inc141, i32* %i, align 4
  br label %for.cond.126

for.end.142:                                      ; preds = %for.cond.126
  br label %do.body.143

do.body.143:                                      ; preds = %for.end.142
  %v144 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 2
  %91 = load %struct.DFAState**, %struct.DFAState*** %v144, align 8
  %tobool145 = icmp ne %struct.DFAState** %91, null
  br i1 %tobool145, label %if.else.154, label %if.then.146

if.then.146:                                      ; preds = %do.body.143
  %92 = load %struct.DFAState*, %struct.DFAState** %y, align 8
  %n147 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 0
  %93 = load i32, i32* %n147, align 4
  %inc148 = add i32 %93, 1
  store i32 %inc148, i32* %n147, align 4
  %idxprom149 = zext i32 %93 to i64
  %e150 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 3
  %arraydecay151 = getelementptr inbounds [3 x %struct.DFAState*], [3 x %struct.DFAState*]* %e150, i32 0, i32 0
  %v152 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 2
  store %struct.DFAState** %arraydecay151, %struct.DFAState*** %v152, align 8
  %arrayidx153 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %arraydecay151, i64 %idxprom149
  store %struct.DFAState* %92, %struct.DFAState** %arrayidx153, align 8
  br label %do.end.182

if.else.154:                                      ; preds = %do.body.143
  %v155 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 2
  %94 = load %struct.DFAState**, %struct.DFAState*** %v155, align 8
  %e156 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 3
  %arraydecay157 = getelementptr inbounds [3 x %struct.DFAState*], [3 x %struct.DFAState*]* %e156, i32 0, i32 0
  %cmp158 = icmp eq %struct.DFAState** %94, %arraydecay157
  br i1 %cmp158, label %if.then.159, label %if.else.169

if.then.159:                                      ; preds = %if.else.154
  %n160 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 0
  %95 = load i32, i32* %n160, align 4
  %cmp161 = icmp ult i32 %95, 3
  br i1 %cmp161, label %if.then.162, label %if.end.168

if.then.162:                                      ; preds = %if.then.159
  %96 = load %struct.DFAState*, %struct.DFAState** %y, align 8
  %n163 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 0
  %97 = load i32, i32* %n163, align 4
  %inc164 = add i32 %97, 1
  store i32 %inc164, i32* %n163, align 4
  %idxprom165 = zext i32 %97 to i64
  %v166 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 2
  %98 = load %struct.DFAState**, %struct.DFAState*** %v166, align 8
  %arrayidx167 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %98, i64 %idxprom165
  store %struct.DFAState* %96, %struct.DFAState** %arrayidx167, align 8
  br label %do.end.182

if.end.168:                                       ; preds = %if.then.159
  br label %if.end.180

if.else.169:                                      ; preds = %if.else.154
  %n170 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 0
  %99 = load i32, i32* %n170, align 4
  %and171 = and i32 %99, 7
  %tobool172 = icmp ne i32 %and171, 0
  br i1 %tobool172, label %if.then.173, label %if.end.179

if.then.173:                                      ; preds = %if.else.169
  %100 = load %struct.DFAState*, %struct.DFAState** %y, align 8
  %n174 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 0
  %101 = load i32, i32* %n174, align 4
  %inc175 = add i32 %101, 1
  store i32 %inc175, i32* %n174, align 4
  %idxprom176 = zext i32 %101 to i64
  %v177 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %alldfas, i32 0, i32 2
  %102 = load %struct.DFAState**, %struct.DFAState*** %v177, align 8
  %arrayidx178 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %102, i64 %idxprom176
  store %struct.DFAState* %100, %struct.DFAState** %arrayidx178, align 8
  br label %do.end.182

if.end.179:                                       ; preds = %if.else.169
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %if.end.168
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180
  %103 = bitcast %struct.VecDFAState* %alldfas to i8*
  %104 = load %struct.DFAState*, %struct.DFAState** %y, align 8
  %105 = bitcast %struct.DFAState* %104 to i8*
  call void @vec_add_internal(i8* %103, i8* %105)
  br label %do.end.182

do.end.182:                                       ; preds = %if.end.181, %if.then.173, %if.then.162, %if.then.146
  br label %Lnext

Lnext:                                            ; preds = %do.end.182, %if.then.135
  %106 = load %struct.DFAState*, %struct.DFAState** %y, align 8
  %107 = load i32, i32* %i_char, align 4
  %idxprom183 = sext i32 %107 to i64
  %108 = load %struct.DFAState*, %struct.DFAState** %x, align 8
  %chars184 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %108, i32 0, i32 1
  %arrayidx185 = getelementptr inbounds [256 x %struct.DFAState*], [256 x %struct.DFAState*]* %chars184, i32 0, i64 %idxprom183
  store %struct.DFAState* %106, %struct.DFAState** %arrayidx185, align 8
  br label %if.end.186

if.end.186:                                       ; preds = %Lnext, %for.end.122
  br label %for.inc.187

for.inc.187:                                      ; preds = %if.end.186
  %109 = load i32, i32* %i_char, align 4
  %inc188 = add nsw i32 %109, 1
  store i32 %inc188, i32* %i_char, align 4
  br label %for.cond.85

for.end.189:                                      ; preds = %for.cond.85
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.end.189
  %110 = load i32, i32* %i_alldfas, align 4
  %inc191 = add nsw i32 %110, 1
  store i32 %inc191, i32* %i_alldfas, align 4
  br label %for.cond

for.end.192:                                      ; preds = %for.cond
  %111 = load %struct.VecScanState*, %struct.VecScanState** %scanner, align 8
  call void @dfa_to_scanner(%struct.VecDFAState* %alldfas, %struct.VecScanState* %111)
  call void @free_VecDFAState(%struct.VecDFAState* %alldfas)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_transitions(%struct.LexState* %ls, %struct.Scanner* %s) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %s.addr = alloca %struct.Scanner*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  call void @compute_liveness(%struct.Scanner* %0)
  %1 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %2 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  call void @build_transitions(%struct.LexState* %1, %struct.Scanner* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_VecNFAState(%struct.VecNFAState* %nfas) #0 {
entry:
  %nfas.addr = alloca %struct.VecNFAState*, align 8
  %i = alloca i32, align 4
  store %struct.VecNFAState* %nfas, %struct.VecNFAState** %nfas.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.VecNFAState*, %struct.VecNFAState** %nfas.addr, align 8
  %n = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %1, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.VecNFAState*, %struct.VecNFAState** %nfas.addr, align 8
  %v = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %4, i32 0, i32 2
  %5 = load %struct.NFAState**, %struct.NFAState*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %5, i64 %idxprom
  %6 = load %struct.NFAState*, %struct.NFAState** %arrayidx, align 8
  call void @free_NFAState(%struct.NFAState* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %8 = load %struct.VecNFAState*, %struct.VecNFAState** %nfas.addr, align 8
  %v1 = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %8, i32 0, i32 2
  %9 = load %struct.NFAState**, %struct.NFAState*** %v1, align 8
  %tobool = icmp ne %struct.NFAState** %9, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %10 = load %struct.VecNFAState*, %struct.VecNFAState** %nfas.addr, align 8
  %v2 = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %10, i32 0, i32 2
  %11 = load %struct.NFAState**, %struct.NFAState*** %v2, align 8
  %12 = load %struct.VecNFAState*, %struct.VecNFAState** %nfas.addr, align 8
  %e = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %12, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e, i32 0, i32 0
  %cmp3 = icmp ne %struct.NFAState** %11, %arraydecay
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct.VecNFAState*, %struct.VecNFAState** %nfas.addr, align 8
  %v4 = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %13, i32 0, i32 2
  %14 = load %struct.NFAState**, %struct.NFAState*** %v4, align 8
  %15 = bitcast %struct.NFAState** %14 to i8*
  call void @free(i8* %15) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  br label %do.body.5

do.body.5:                                        ; preds = %if.end
  %16 = load %struct.VecNFAState*, %struct.VecNFAState** %nfas.addr, align 8
  %n6 = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %16, i32 0, i32 0
  store i32 0, i32* %n6, align 4
  %17 = load %struct.VecNFAState*, %struct.VecNFAState** %nfas.addr, align 8
  %v7 = getelementptr inbounds %struct.VecNFAState, %struct.VecNFAState* %17, i32 0, i32 2
  store %struct.NFAState** null, %struct.NFAState*** %v7, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.5
  br label %do.end.8

do.end.8:                                         ; preds = %do.end
  ret void
}

declare void @d_fail(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @nfa_closure(%struct.DFAState* %x) #0 {
entry:
  %x.addr = alloca %struct.DFAState*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.DFAState* %x, %struct.DFAState** %x.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.105, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states = getelementptr inbounds %struct.DFAState, %struct.DFAState* %1, i32 0, i32 0
  %n = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.107

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.102, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states2 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %5, i32 0, i32 0
  %v = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states2, i32 0, i32 2
  %6 = load %struct.NFAState**, %struct.NFAState*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %6, i64 %idxprom
  %7 = load %struct.NFAState*, %struct.NFAState** %arrayidx, align 8
  %epsilon = getelementptr inbounds %struct.NFAState, %struct.NFAState* %7, i32 0, i32 2
  %n3 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon, i32 0, i32 0
  %8 = load i32, i32* %n3, align 4
  %cmp4 = icmp ult i32 %3, %8
  br i1 %cmp4, label %for.body.5, label %for.end.104

for.body.5:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body.5
  %9 = load i32, i32* %k, align 4
  %10 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states7 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %10, i32 0, i32 0
  %n8 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states7, i32 0, i32 0
  %11 = load i32, i32* %n8, align 4
  %cmp9 = icmp ult i32 %9, %11
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.6
  %12 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states13 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %14, i32 0, i32 0
  %v14 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states13, i32 0, i32 2
  %15 = load %struct.NFAState**, %struct.NFAState*** %v14, align 8
  %arrayidx15 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %15, i64 %idxprom12
  %16 = load %struct.NFAState*, %struct.NFAState** %arrayidx15, align 8
  %epsilon16 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %16, i32 0, i32 2
  %v17 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon16, i32 0, i32 2
  %17 = load %struct.NFAState**, %struct.NFAState*** %v17, align 8
  %arrayidx18 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %17, i64 %idxprom11
  %18 = load %struct.NFAState*, %struct.NFAState** %arrayidx18, align 8
  %19 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %19 to i64
  %20 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states20 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %20, i32 0, i32 0
  %v21 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states20, i32 0, i32 2
  %21 = load %struct.NFAState**, %struct.NFAState*** %v21, align 8
  %arrayidx22 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %21, i64 %idxprom19
  %22 = load %struct.NFAState*, %struct.NFAState** %arrayidx22, align 8
  %cmp23 = icmp eq %struct.NFAState* %18, %22
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.10
  br label %Lbreak

if.end:                                           ; preds = %for.body.10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %k, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %do.body

do.body:                                          ; preds = %for.end
  %24 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states24 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %24, i32 0, i32 0
  %v25 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states24, i32 0, i32 2
  %25 = load %struct.NFAState**, %struct.NFAState*** %v25, align 8
  %tobool = icmp ne %struct.NFAState** %25, null
  br i1 %tobool, label %if.else, label %if.then.26

if.then.26:                                       ; preds = %do.body
  %26 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %26 to i64
  %27 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %27 to i64
  %28 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states29 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %28, i32 0, i32 0
  %v30 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states29, i32 0, i32 2
  %29 = load %struct.NFAState**, %struct.NFAState*** %v30, align 8
  %arrayidx31 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %29, i64 %idxprom28
  %30 = load %struct.NFAState*, %struct.NFAState** %arrayidx31, align 8
  %epsilon32 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %30, i32 0, i32 2
  %v33 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon32, i32 0, i32 2
  %31 = load %struct.NFAState**, %struct.NFAState*** %v33, align 8
  %arrayidx34 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %31, i64 %idxprom27
  %32 = load %struct.NFAState*, %struct.NFAState** %arrayidx34, align 8
  %33 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states35 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %33, i32 0, i32 0
  %n36 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states35, i32 0, i32 0
  %34 = load i32, i32* %n36, align 4
  %inc37 = add i32 %34, 1
  store i32 %inc37, i32* %n36, align 4
  %idxprom38 = zext i32 %34 to i64
  %35 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states39 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %35, i32 0, i32 0
  %e = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states39, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e, i32 0, i32 0
  %36 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states40 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %36, i32 0, i32 0
  %v41 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states40, i32 0, i32 2
  store %struct.NFAState** %arraydecay, %struct.NFAState*** %v41, align 8
  %arrayidx42 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %arraydecay, i64 %idxprom38
  store %struct.NFAState* %32, %struct.NFAState** %arrayidx42, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %37 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states43 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %37, i32 0, i32 0
  %v44 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states43, i32 0, i32 2
  %38 = load %struct.NFAState**, %struct.NFAState*** %v44, align 8
  %39 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states45 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %39, i32 0, i32 0
  %e46 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states45, i32 0, i32 3
  %arraydecay47 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e46, i32 0, i32 0
  %cmp48 = icmp eq %struct.NFAState** %38, %arraydecay47
  br i1 %cmp48, label %if.then.49, label %if.else.70

if.then.49:                                       ; preds = %if.else
  %40 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states50 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %40, i32 0, i32 0
  %n51 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states50, i32 0, i32 0
  %41 = load i32, i32* %n51, align 4
  %cmp52 = icmp ult i32 %41, 3
  br i1 %cmp52, label %if.then.53, label %if.end.69

if.then.53:                                       ; preds = %if.then.49
  %42 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %42 to i64
  %43 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %43 to i64
  %44 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states56 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %44, i32 0, i32 0
  %v57 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states56, i32 0, i32 2
  %45 = load %struct.NFAState**, %struct.NFAState*** %v57, align 8
  %arrayidx58 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %45, i64 %idxprom55
  %46 = load %struct.NFAState*, %struct.NFAState** %arrayidx58, align 8
  %epsilon59 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %46, i32 0, i32 2
  %v60 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon59, i32 0, i32 2
  %47 = load %struct.NFAState**, %struct.NFAState*** %v60, align 8
  %arrayidx61 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %47, i64 %idxprom54
  %48 = load %struct.NFAState*, %struct.NFAState** %arrayidx61, align 8
  %49 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states62 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %49, i32 0, i32 0
  %n63 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states62, i32 0, i32 0
  %50 = load i32, i32* %n63, align 4
  %inc64 = add i32 %50, 1
  store i32 %inc64, i32* %n63, align 4
  %idxprom65 = zext i32 %50 to i64
  %51 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states66 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %51, i32 0, i32 0
  %v67 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states66, i32 0, i32 2
  %52 = load %struct.NFAState**, %struct.NFAState*** %v67, align 8
  %arrayidx68 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %52, i64 %idxprom65
  store %struct.NFAState* %48, %struct.NFAState** %arrayidx68, align 8
  br label %do.end

if.end.69:                                        ; preds = %if.then.49
  br label %if.end.91

if.else.70:                                       ; preds = %if.else
  %53 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states71 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %53, i32 0, i32 0
  %n72 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states71, i32 0, i32 0
  %54 = load i32, i32* %n72, align 4
  %and = and i32 %54, 7
  %tobool73 = icmp ne i32 %and, 0
  br i1 %tobool73, label %if.then.74, label %if.end.90

if.then.74:                                       ; preds = %if.else.70
  %55 = load i32, i32* %j, align 4
  %idxprom75 = sext i32 %55 to i64
  %56 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %56 to i64
  %57 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states77 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %57, i32 0, i32 0
  %v78 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states77, i32 0, i32 2
  %58 = load %struct.NFAState**, %struct.NFAState*** %v78, align 8
  %arrayidx79 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %58, i64 %idxprom76
  %59 = load %struct.NFAState*, %struct.NFAState** %arrayidx79, align 8
  %epsilon80 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %59, i32 0, i32 2
  %v81 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon80, i32 0, i32 2
  %60 = load %struct.NFAState**, %struct.NFAState*** %v81, align 8
  %arrayidx82 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %60, i64 %idxprom75
  %61 = load %struct.NFAState*, %struct.NFAState** %arrayidx82, align 8
  %62 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states83 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %62, i32 0, i32 0
  %n84 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states83, i32 0, i32 0
  %63 = load i32, i32* %n84, align 4
  %inc85 = add i32 %63, 1
  store i32 %inc85, i32* %n84, align 4
  %idxprom86 = zext i32 %63 to i64
  %64 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states87 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %64, i32 0, i32 0
  %v88 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states87, i32 0, i32 2
  %65 = load %struct.NFAState**, %struct.NFAState*** %v88, align 8
  %arrayidx89 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %65, i64 %idxprom86
  store %struct.NFAState* %61, %struct.NFAState** %arrayidx89, align 8
  br label %do.end

if.end.90:                                        ; preds = %if.else.70
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.69
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91
  %66 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states93 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %66, i32 0, i32 0
  %67 = bitcast %struct.anon.13* %states93 to i8*
  %68 = load i32, i32* %j, align 4
  %idxprom94 = sext i32 %68 to i64
  %69 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %69 to i64
  %70 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states96 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %70, i32 0, i32 0
  %v97 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states96, i32 0, i32 2
  %71 = load %struct.NFAState**, %struct.NFAState*** %v97, align 8
  %arrayidx98 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %71, i64 %idxprom95
  %72 = load %struct.NFAState*, %struct.NFAState** %arrayidx98, align 8
  %epsilon99 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %72, i32 0, i32 2
  %v100 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon99, i32 0, i32 2
  %73 = load %struct.NFAState**, %struct.NFAState*** %v100, align 8
  %arrayidx101 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %73, i64 %idxprom94
  %74 = load %struct.NFAState*, %struct.NFAState** %arrayidx101, align 8
  %75 = bitcast %struct.NFAState* %74 to i8*
  call void @vec_add_internal(i8* %67, i8* %75)
  br label %do.end

do.end:                                           ; preds = %if.end.92, %if.then.74, %if.then.53, %if.then.26
  br label %Lbreak

Lbreak:                                           ; preds = %do.end, %if.then
  br label %for.inc.102

for.inc.102:                                      ; preds = %Lbreak
  %76 = load i32, i32* %j, align 4
  %inc103 = add nsw i32 %76, 1
  store i32 %inc103, i32* %j, align 4
  br label %for.cond.1

for.end.104:                                      ; preds = %for.cond.1
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.end.104
  %77 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %77, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond

for.end.107:                                      ; preds = %for.cond
  %78 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states108 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %78, i32 0, i32 0
  %v109 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states108, i32 0, i32 2
  %79 = load %struct.NFAState**, %struct.NFAState*** %v109, align 8
  %80 = bitcast %struct.NFAState** %79 to i8*
  %81 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states110 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %81, i32 0, i32 0
  %n111 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states110, i32 0, i32 0
  %82 = load i32, i32* %n111, align 4
  %conv = zext i32 %82 to i64
  call void @qsort(i8* %80, i64 %conv, i64 8, i32 (i8*, i8*)* @nfacmp)
  ret void
}

declare i32 @set_add(i8*, i8*) #2

declare void @set_to_vec(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @eq_dfa_state(%struct.DFAState* %x, %struct.DFAState* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.DFAState*, align 8
  %y.addr = alloca %struct.DFAState*, align 8
  %i = alloca i32, align 4
  store %struct.DFAState* %x, %struct.DFAState** %x.addr, align 8
  store %struct.DFAState* %y, %struct.DFAState** %y.addr, align 8
  %0 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states = getelementptr inbounds %struct.DFAState, %struct.DFAState* %0, i32 0, i32 0
  %n = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  %2 = load %struct.DFAState*, %struct.DFAState** %y.addr, align 8
  %states1 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %2, i32 0, i32 0
  %n2 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states1, i32 0, i32 0
  %3 = load i32, i32* %n2, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states3 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %5, i32 0, i32 0
  %n4 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states3, i32 0, i32 0
  %6 = load i32, i32* %n4, align 4
  %cmp5 = icmp ult i32 %4, %6
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.DFAState*, %struct.DFAState** %x.addr, align 8
  %states6 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %8, i32 0, i32 0
  %v = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states6, i32 0, i32 2
  %9 = load %struct.NFAState**, %struct.NFAState*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %9, i64 %idxprom
  %10 = load %struct.NFAState*, %struct.NFAState** %arrayidx, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct.DFAState*, %struct.DFAState** %y.addr, align 8
  %states8 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %12, i32 0, i32 0
  %v9 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states8, i32 0, i32 2
  %13 = load %struct.NFAState**, %struct.NFAState*** %v9, align 8
  %arrayidx10 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %13, i64 %idxprom7
  %14 = load %struct.NFAState*, %struct.NFAState** %arrayidx10, align 8
  %cmp11 = icmp ne %struct.NFAState* %10, %14
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.12, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @free_DFAState(%struct.DFAState* %y) #0 {
entry:
  %y.addr = alloca %struct.DFAState*, align 8
  store %struct.DFAState* %y, %struct.DFAState** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.DFAState*, %struct.DFAState** %y.addr, align 8
  %states = getelementptr inbounds %struct.DFAState, %struct.DFAState* %0, i32 0, i32 0
  %v = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states, i32 0, i32 2
  %1 = load %struct.NFAState**, %struct.NFAState*** %v, align 8
  %tobool = icmp ne %struct.NFAState** %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %2 = load %struct.DFAState*, %struct.DFAState** %y.addr, align 8
  %states1 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %2, i32 0, i32 0
  %v2 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states1, i32 0, i32 2
  %3 = load %struct.NFAState**, %struct.NFAState*** %v2, align 8
  %4 = load %struct.DFAState*, %struct.DFAState** %y.addr, align 8
  %states3 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %4, i32 0, i32 0
  %e = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states3, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e, i32 0, i32 0
  %cmp = icmp ne %struct.NFAState** %3, %arraydecay
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.DFAState*, %struct.DFAState** %y.addr, align 8
  %states4 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %5, i32 0, i32 0
  %v5 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states4, i32 0, i32 2
  %6 = load %struct.NFAState**, %struct.NFAState*** %v5, align 8
  %7 = bitcast %struct.NFAState** %6 to i8*
  call void @free(i8* %7) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  br label %do.body.6

do.body.6:                                        ; preds = %if.end
  %8 = load %struct.DFAState*, %struct.DFAState** %y.addr, align 8
  %states7 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %8, i32 0, i32 0
  %n = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states7, i32 0, i32 0
  store i32 0, i32* %n, align 4
  %9 = load %struct.DFAState*, %struct.DFAState** %y.addr, align 8
  %states8 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %9, i32 0, i32 0
  %v9 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states8, i32 0, i32 2
  store %struct.NFAState** null, %struct.NFAState*** %v9, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.6
  br label %do.end.10

do.end.10:                                        ; preds = %do.end
  %10 = load %struct.DFAState*, %struct.DFAState** %y.addr, align 8
  %11 = bitcast %struct.DFAState* %10 to i8*
  call void @free(i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dfa_to_scanner(%struct.VecDFAState* %alldfas, %struct.VecScanState* %scanner) #0 {
entry:
  %alldfas.addr = alloca %struct.VecDFAState*, align 8
  %scanner.addr = alloca %struct.VecScanState*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %highest = alloca i32, align 4
  %p = alloca i32, align 4
  store %struct.VecDFAState* %alldfas, %struct.VecDFAState** %alldfas.addr, align 8
  store %struct.VecScanState* %scanner, %struct.VecScanState** %scanner.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.VecScanState*, %struct.VecScanState** %scanner.addr, align 8
  %n = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %0, i32 0, i32 0
  store i32 0, i32* %n, align 4
  %1 = load %struct.VecScanState*, %struct.VecScanState** %scanner.addr, align 8
  %v = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %1, i32 0, i32 2
  store %struct.ScanState** null, %struct.ScanState*** %v, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %n1 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %3, i32 0, i32 0
  %4 = load i32, i32* %n1, align 4
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call %struct.ScanState* @new_ScanState()
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v2 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %6, i32 0, i32 2
  %7 = load %struct.DFAState**, %struct.DFAState*** %v2, align 8
  %arrayidx = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %7, i64 %idxprom
  %8 = load %struct.DFAState*, %struct.DFAState** %arrayidx, align 8
  %scan = getelementptr inbounds %struct.DFAState, %struct.DFAState* %8, i32 0, i32 2
  store %struct.ScanState* %call, %struct.ScanState** %scan, align 8
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v4 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %11, i32 0, i32 2
  %12 = load %struct.DFAState**, %struct.DFAState*** %v4, align 8
  %arrayidx5 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %12, i64 %idxprom3
  %13 = load %struct.DFAState*, %struct.DFAState** %arrayidx5, align 8
  %scan6 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %13, i32 0, i32 2
  %14 = load %struct.ScanState*, %struct.ScanState** %scan6, align 8
  %index = getelementptr inbounds %struct.ScanState, %struct.ScanState* %14, i32 0, i32 0
  store i32 %9, i32* %index, align 4
  br label %do.body.7

do.body.7:                                        ; preds = %for.body
  %15 = load %struct.VecScanState*, %struct.VecScanState** %scanner.addr, align 8
  %v8 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %15, i32 0, i32 2
  %16 = load %struct.ScanState**, %struct.ScanState*** %v8, align 8
  %tobool = icmp ne %struct.ScanState** %16, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body.7
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v10 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %18, i32 0, i32 2
  %19 = load %struct.DFAState**, %struct.DFAState*** %v10, align 8
  %arrayidx11 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %19, i64 %idxprom9
  %20 = load %struct.DFAState*, %struct.DFAState** %arrayidx11, align 8
  %scan12 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %20, i32 0, i32 2
  %21 = load %struct.ScanState*, %struct.ScanState** %scan12, align 8
  %22 = load %struct.VecScanState*, %struct.VecScanState** %scanner.addr, align 8
  %n13 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %22, i32 0, i32 0
  %23 = load i32, i32* %n13, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %n13, align 4
  %idxprom14 = zext i32 %23 to i64
  %24 = load %struct.VecScanState*, %struct.VecScanState** %scanner.addr, align 8
  %e = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %24, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.ScanState*], [3 x %struct.ScanState*]* %e, i32 0, i32 0
  %25 = load %struct.VecScanState*, %struct.VecScanState** %scanner.addr, align 8
  %v15 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %25, i32 0, i32 2
  store %struct.ScanState** %arraydecay, %struct.ScanState*** %v15, align 8
  %arrayidx16 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %arraydecay, i64 %idxprom14
  store %struct.ScanState* %21, %struct.ScanState** %arrayidx16, align 8
  br label %do.end.54

if.else:                                          ; preds = %do.body.7
  %26 = load %struct.VecScanState*, %struct.VecScanState** %scanner.addr, align 8
  %v17 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %26, i32 0, i32 2
  %27 = load %struct.ScanState**, %struct.ScanState*** %v17, align 8
  %28 = load %struct.VecScanState*, %struct.VecScanState** %scanner.addr, align 8
  %e18 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %28, i32 0, i32 3
  %arraydecay19 = getelementptr inbounds [3 x %struct.ScanState*], [3 x %struct.ScanState*]* %e18, i32 0, i32 0
  %cmp20 = icmp eq %struct.ScanState** %27, %arraydecay19
  br i1 %cmp20, label %if.then.21, label %if.else.34

if.then.21:                                       ; preds = %if.else
  %29 = load %struct.VecScanState*, %struct.VecScanState** %scanner.addr, align 8
  %n22 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %29, i32 0, i32 0
  %30 = load i32, i32* %n22, align 4
  %cmp23 = icmp ult i32 %30, 3
  br i1 %cmp23, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %if.then.21
  %31 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %31 to i64
  %32 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v26 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %32, i32 0, i32 2
  %33 = load %struct.DFAState**, %struct.DFAState*** %v26, align 8
  %arrayidx27 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %33, i64 %idxprom25
  %34 = load %struct.DFAState*, %struct.DFAState** %arrayidx27, align 8
  %scan28 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %34, i32 0, i32 2
  %35 = load %struct.ScanState*, %struct.ScanState** %scan28, align 8
  %36 = load %struct.VecScanState*, %struct.VecScanState** %scanner.addr, align 8
  %n29 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %36, i32 0, i32 0
  %37 = load i32, i32* %n29, align 4
  %inc30 = add i32 %37, 1
  store i32 %inc30, i32* %n29, align 4
  %idxprom31 = zext i32 %37 to i64
  %38 = load %struct.VecScanState*, %struct.VecScanState** %scanner.addr, align 8
  %v32 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %38, i32 0, i32 2
  %39 = load %struct.ScanState**, %struct.ScanState*** %v32, align 8
  %arrayidx33 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %39, i64 %idxprom31
  store %struct.ScanState* %35, %struct.ScanState** %arrayidx33, align 8
  br label %do.end.54

if.end:                                           ; preds = %if.then.21
  br label %if.end.48

if.else.34:                                       ; preds = %if.else
  %40 = load %struct.VecScanState*, %struct.VecScanState** %scanner.addr, align 8
  %n35 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %40, i32 0, i32 0
  %41 = load i32, i32* %n35, align 4
  %and = and i32 %41, 7
  %tobool36 = icmp ne i32 %and, 0
  br i1 %tobool36, label %if.then.37, label %if.end.47

if.then.37:                                       ; preds = %if.else.34
  %42 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %42 to i64
  %43 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v39 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %43, i32 0, i32 2
  %44 = load %struct.DFAState**, %struct.DFAState*** %v39, align 8
  %arrayidx40 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %44, i64 %idxprom38
  %45 = load %struct.DFAState*, %struct.DFAState** %arrayidx40, align 8
  %scan41 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %45, i32 0, i32 2
  %46 = load %struct.ScanState*, %struct.ScanState** %scan41, align 8
  %47 = load %struct.VecScanState*, %struct.VecScanState** %scanner.addr, align 8
  %n42 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %47, i32 0, i32 0
  %48 = load i32, i32* %n42, align 4
  %inc43 = add i32 %48, 1
  store i32 %inc43, i32* %n42, align 4
  %idxprom44 = zext i32 %48 to i64
  %49 = load %struct.VecScanState*, %struct.VecScanState** %scanner.addr, align 8
  %v45 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %49, i32 0, i32 2
  %50 = load %struct.ScanState**, %struct.ScanState*** %v45, align 8
  %arrayidx46 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %50, i64 %idxprom44
  store %struct.ScanState* %46, %struct.ScanState** %arrayidx46, align 8
  br label %do.end.54

if.end.47:                                        ; preds = %if.else.34
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48
  %51 = load %struct.VecScanState*, %struct.VecScanState** %scanner.addr, align 8
  %52 = bitcast %struct.VecScanState* %51 to i8*
  %53 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %53 to i64
  %54 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v51 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %54, i32 0, i32 2
  %55 = load %struct.DFAState**, %struct.DFAState*** %v51, align 8
  %arrayidx52 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %55, i64 %idxprom50
  %56 = load %struct.DFAState*, %struct.DFAState** %arrayidx52, align 8
  %scan53 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %56, i32 0, i32 2
  %57 = load %struct.ScanState*, %struct.ScanState** %scan53, align 8
  %58 = bitcast %struct.ScanState* %57 to i8*
  call void @vec_add_internal(i8* %52, i8* %58)
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.49, %if.then.37, %if.then.24, %if.then
  br label %for.inc

for.inc:                                          ; preds = %do.end.54
  %59 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %59, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.317, %for.end
  %60 = load i32, i32* %i, align 4
  %61 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %n57 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %61, i32 0, i32 0
  %62 = load i32, i32* %n57, align 4
  %cmp58 = icmp ult i32 %60, %62
  br i1 %cmp58, label %for.body.59, label %for.end.319

for.body.59:                                      ; preds = %for.cond.56
  store i32 0, i32* %j, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.85, %for.body.59
  %63 = load i32, i32* %j, align 4
  %cmp61 = icmp slt i32 %63, 256
  br i1 %cmp61, label %for.body.62, label %for.end.87

for.body.62:                                      ; preds = %for.cond.60
  %64 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %64 to i64
  %65 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %65 to i64
  %66 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v65 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %66, i32 0, i32 2
  %67 = load %struct.DFAState**, %struct.DFAState*** %v65, align 8
  %arrayidx66 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %67, i64 %idxprom64
  %68 = load %struct.DFAState*, %struct.DFAState** %arrayidx66, align 8
  %chars = getelementptr inbounds %struct.DFAState, %struct.DFAState* %68, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [256 x %struct.DFAState*], [256 x %struct.DFAState*]* %chars, i32 0, i64 %idxprom63
  %69 = load %struct.DFAState*, %struct.DFAState** %arrayidx67, align 8
  %tobool68 = icmp ne %struct.DFAState* %69, null
  br i1 %tobool68, label %if.then.69, label %if.end.84

if.then.69:                                       ; preds = %for.body.62
  %70 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %70 to i64
  %71 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %71 to i64
  %72 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v72 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %72, i32 0, i32 2
  %73 = load %struct.DFAState**, %struct.DFAState*** %v72, align 8
  %arrayidx73 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %73, i64 %idxprom71
  %74 = load %struct.DFAState*, %struct.DFAState** %arrayidx73, align 8
  %chars74 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %74, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [256 x %struct.DFAState*], [256 x %struct.DFAState*]* %chars74, i32 0, i64 %idxprom70
  %75 = load %struct.DFAState*, %struct.DFAState** %arrayidx75, align 8
  %scan76 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %75, i32 0, i32 2
  %76 = load %struct.ScanState*, %struct.ScanState** %scan76, align 8
  %77 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %77 to i64
  %78 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %78 to i64
  %79 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v79 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %79, i32 0, i32 2
  %80 = load %struct.DFAState**, %struct.DFAState*** %v79, align 8
  %arrayidx80 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %80, i64 %idxprom78
  %81 = load %struct.DFAState*, %struct.DFAState** %arrayidx80, align 8
  %scan81 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %81, i32 0, i32 2
  %82 = load %struct.ScanState*, %struct.ScanState** %scan81, align 8
  %chars82 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %82, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [256 x %struct.ScanState*], [256 x %struct.ScanState*]* %chars82, i32 0, i64 %idxprom77
  store %struct.ScanState* %76, %struct.ScanState** %arrayidx83, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.69, %for.body.62
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %83 = load i32, i32* %j, align 4
  %inc86 = add nsw i32 %83, 1
  store i32 %inc86, i32* %j, align 4
  br label %for.cond.60

for.end.87:                                       ; preds = %for.cond.60
  store i32 -2147483648, i32* %highest, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.123, %for.end.87
  %84 = load i32, i32* %j, align 4
  %85 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %85 to i64
  %86 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v90 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %86, i32 0, i32 2
  %87 = load %struct.DFAState**, %struct.DFAState*** %v90, align 8
  %arrayidx91 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %87, i64 %idxprom89
  %88 = load %struct.DFAState*, %struct.DFAState** %arrayidx91, align 8
  %states = getelementptr inbounds %struct.DFAState, %struct.DFAState* %88, i32 0, i32 0
  %n92 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states, i32 0, i32 0
  %89 = load i32, i32* %n92, align 4
  %cmp93 = icmp ult i32 %84, %89
  br i1 %cmp93, label %for.body.94, label %for.end.125

for.body.94:                                      ; preds = %for.cond.88
  store i32 0, i32* %k, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.120, %for.body.94
  %90 = load i32, i32* %k, align 4
  %91 = load i32, i32* %j, align 4
  %idxprom96 = sext i32 %91 to i64
  %92 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %92 to i64
  %93 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v98 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %93, i32 0, i32 2
  %94 = load %struct.DFAState**, %struct.DFAState*** %v98, align 8
  %arrayidx99 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %94, i64 %idxprom97
  %95 = load %struct.DFAState*, %struct.DFAState** %arrayidx99, align 8
  %states100 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %95, i32 0, i32 0
  %v101 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states100, i32 0, i32 2
  %96 = load %struct.NFAState**, %struct.NFAState*** %v101, align 8
  %arrayidx102 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %96, i64 %idxprom96
  %97 = load %struct.NFAState*, %struct.NFAState** %arrayidx102, align 8
  %accepts = getelementptr inbounds %struct.NFAState, %struct.NFAState* %97, i32 0, i32 3
  %n103 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts, i32 0, i32 0
  %98 = load i32, i32* %n103, align 4
  %cmp104 = icmp ult i32 %90, %98
  br i1 %cmp104, label %for.body.105, label %for.end.122

for.body.105:                                     ; preds = %for.cond.95
  %99 = load i32, i32* %k, align 4
  %idxprom106 = sext i32 %99 to i64
  %100 = load i32, i32* %j, align 4
  %idxprom107 = sext i32 %100 to i64
  %101 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %101 to i64
  %102 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v109 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %102, i32 0, i32 2
  %103 = load %struct.DFAState**, %struct.DFAState*** %v109, align 8
  %arrayidx110 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %103, i64 %idxprom108
  %104 = load %struct.DFAState*, %struct.DFAState** %arrayidx110, align 8
  %states111 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %104, i32 0, i32 0
  %v112 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states111, i32 0, i32 2
  %105 = load %struct.NFAState**, %struct.NFAState*** %v112, align 8
  %arrayidx113 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %105, i64 %idxprom107
  %106 = load %struct.NFAState*, %struct.NFAState** %arrayidx113, align 8
  %accepts114 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %106, i32 0, i32 3
  %v115 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts114, i32 0, i32 2
  %107 = load %struct.Action**, %struct.Action*** %v115, align 8
  %arrayidx116 = getelementptr inbounds %struct.Action*, %struct.Action** %107, i64 %idxprom106
  %108 = load %struct.Action*, %struct.Action** %arrayidx116, align 8
  %term = getelementptr inbounds %struct.Action, %struct.Action* %108, i32 0, i32 1
  %109 = load %struct.Term*, %struct.Term** %term, align 8
  %term_priority = getelementptr inbounds %struct.Term, %struct.Term* %109, i32 0, i32 2
  %110 = load i32, i32* %term_priority, align 4
  store i32 %110, i32* %p, align 4
  %111 = load i32, i32* %highest, align 4
  %112 = load i32, i32* %p, align 4
  %cmp117 = icmp slt i32 %111, %112
  br i1 %cmp117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %for.body.105
  %113 = load i32, i32* %p, align 4
  store i32 %113, i32* %highest, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %for.body.105
  br label %for.inc.120

for.inc.120:                                      ; preds = %if.end.119
  %114 = load i32, i32* %k, align 4
  %inc121 = add nsw i32 %114, 1
  store i32 %inc121, i32* %k, align 4
  br label %for.cond.95

for.end.122:                                      ; preds = %for.cond.95
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.end.122
  %115 = load i32, i32* %j, align 4
  %inc124 = add nsw i32 %115, 1
  store i32 %inc124, i32* %j, align 4
  br label %for.cond.88

for.end.125:                                      ; preds = %for.cond.88
  store i32 0, i32* %j, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.314, %for.end.125
  %116 = load i32, i32* %j, align 4
  %117 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %117 to i64
  %118 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v128 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %118, i32 0, i32 2
  %119 = load %struct.DFAState**, %struct.DFAState*** %v128, align 8
  %arrayidx129 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %119, i64 %idxprom127
  %120 = load %struct.DFAState*, %struct.DFAState** %arrayidx129, align 8
  %states130 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %120, i32 0, i32 0
  %n131 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states130, i32 0, i32 0
  %121 = load i32, i32* %n131, align 4
  %cmp132 = icmp ult i32 %116, %121
  br i1 %cmp132, label %for.body.133, label %for.end.316

for.body.133:                                     ; preds = %for.cond.126
  store i32 0, i32* %k, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.311, %for.body.133
  %122 = load i32, i32* %k, align 4
  %123 = load i32, i32* %j, align 4
  %idxprom135 = sext i32 %123 to i64
  %124 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %124 to i64
  %125 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v137 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %125, i32 0, i32 2
  %126 = load %struct.DFAState**, %struct.DFAState*** %v137, align 8
  %arrayidx138 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %126, i64 %idxprom136
  %127 = load %struct.DFAState*, %struct.DFAState** %arrayidx138, align 8
  %states139 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %127, i32 0, i32 0
  %v140 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states139, i32 0, i32 2
  %128 = load %struct.NFAState**, %struct.NFAState*** %v140, align 8
  %arrayidx141 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %128, i64 %idxprom135
  %129 = load %struct.NFAState*, %struct.NFAState** %arrayidx141, align 8
  %accepts142 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %129, i32 0, i32 3
  %n143 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts142, i32 0, i32 0
  %130 = load i32, i32* %n143, align 4
  %cmp144 = icmp ult i32 %122, %130
  br i1 %cmp144, label %for.body.145, label %for.end.313

for.body.145:                                     ; preds = %for.cond.134
  %131 = load i32, i32* %k, align 4
  %idxprom146 = sext i32 %131 to i64
  %132 = load i32, i32* %j, align 4
  %idxprom147 = sext i32 %132 to i64
  %133 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %133 to i64
  %134 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v149 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %134, i32 0, i32 2
  %135 = load %struct.DFAState**, %struct.DFAState*** %v149, align 8
  %arrayidx150 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %135, i64 %idxprom148
  %136 = load %struct.DFAState*, %struct.DFAState** %arrayidx150, align 8
  %states151 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %136, i32 0, i32 0
  %v152 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states151, i32 0, i32 2
  %137 = load %struct.NFAState**, %struct.NFAState*** %v152, align 8
  %arrayidx153 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %137, i64 %idxprom147
  %138 = load %struct.NFAState*, %struct.NFAState** %arrayidx153, align 8
  %accepts154 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %138, i32 0, i32 3
  %v155 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts154, i32 0, i32 2
  %139 = load %struct.Action**, %struct.Action*** %v155, align 8
  %arrayidx156 = getelementptr inbounds %struct.Action*, %struct.Action** %139, i64 %idxprom146
  %140 = load %struct.Action*, %struct.Action** %arrayidx156, align 8
  %term157 = getelementptr inbounds %struct.Action, %struct.Action* %140, i32 0, i32 1
  %141 = load %struct.Term*, %struct.Term** %term157, align 8
  %term_priority158 = getelementptr inbounds %struct.Term, %struct.Term* %141, i32 0, i32 2
  %142 = load i32, i32* %term_priority158, align 4
  store i32 %142, i32* %p, align 4
  %143 = load i32, i32* %p, align 4
  %144 = load i32, i32* %highest, align 4
  %cmp159 = icmp eq i32 %143, %144
  br i1 %cmp159, label %if.then.160, label %if.end.310

if.then.160:                                      ; preds = %for.body.145
  br label %do.body.161

do.body.161:                                      ; preds = %if.then.160
  %145 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %145 to i64
  %146 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v163 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %146, i32 0, i32 2
  %147 = load %struct.DFAState**, %struct.DFAState*** %v163, align 8
  %arrayidx164 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %147, i64 %idxprom162
  %148 = load %struct.DFAState*, %struct.DFAState** %arrayidx164, align 8
  %scan165 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %148, i32 0, i32 2
  %149 = load %struct.ScanState*, %struct.ScanState** %scan165, align 8
  %accepts166 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %149, i32 0, i32 2
  %v167 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts166, i32 0, i32 2
  %150 = load %struct.Action**, %struct.Action*** %v167, align 8
  %tobool168 = icmp ne %struct.Action** %150, null
  br i1 %tobool168, label %if.else.203, label %if.then.169

if.then.169:                                      ; preds = %do.body.161
  %151 = load i32, i32* %k, align 4
  %idxprom170 = sext i32 %151 to i64
  %152 = load i32, i32* %j, align 4
  %idxprom171 = sext i32 %152 to i64
  %153 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %153 to i64
  %154 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v173 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %154, i32 0, i32 2
  %155 = load %struct.DFAState**, %struct.DFAState*** %v173, align 8
  %arrayidx174 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %155, i64 %idxprom172
  %156 = load %struct.DFAState*, %struct.DFAState** %arrayidx174, align 8
  %states175 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %156, i32 0, i32 0
  %v176 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states175, i32 0, i32 2
  %157 = load %struct.NFAState**, %struct.NFAState*** %v176, align 8
  %arrayidx177 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %157, i64 %idxprom171
  %158 = load %struct.NFAState*, %struct.NFAState** %arrayidx177, align 8
  %accepts178 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %158, i32 0, i32 3
  %v179 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts178, i32 0, i32 2
  %159 = load %struct.Action**, %struct.Action*** %v179, align 8
  %arrayidx180 = getelementptr inbounds %struct.Action*, %struct.Action** %159, i64 %idxprom170
  %160 = load %struct.Action*, %struct.Action** %arrayidx180, align 8
  %161 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %161 to i64
  %162 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v182 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %162, i32 0, i32 2
  %163 = load %struct.DFAState**, %struct.DFAState*** %v182, align 8
  %arrayidx183 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %163, i64 %idxprom181
  %164 = load %struct.DFAState*, %struct.DFAState** %arrayidx183, align 8
  %scan184 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %164, i32 0, i32 2
  %165 = load %struct.ScanState*, %struct.ScanState** %scan184, align 8
  %accepts185 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %165, i32 0, i32 2
  %n186 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts185, i32 0, i32 0
  %166 = load i32, i32* %n186, align 4
  %inc187 = add i32 %166, 1
  store i32 %inc187, i32* %n186, align 4
  %idxprom188 = zext i32 %166 to i64
  %167 = load i32, i32* %i, align 4
  %idxprom189 = sext i32 %167 to i64
  %168 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v190 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %168, i32 0, i32 2
  %169 = load %struct.DFAState**, %struct.DFAState*** %v190, align 8
  %arrayidx191 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %169, i64 %idxprom189
  %170 = load %struct.DFAState*, %struct.DFAState** %arrayidx191, align 8
  %scan192 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %170, i32 0, i32 2
  %171 = load %struct.ScanState*, %struct.ScanState** %scan192, align 8
  %accepts193 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %171, i32 0, i32 2
  %e194 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts193, i32 0, i32 3
  %arraydecay195 = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e194, i32 0, i32 0
  %172 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %172 to i64
  %173 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v197 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %173, i32 0, i32 2
  %174 = load %struct.DFAState**, %struct.DFAState*** %v197, align 8
  %arrayidx198 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %174, i64 %idxprom196
  %175 = load %struct.DFAState*, %struct.DFAState** %arrayidx198, align 8
  %scan199 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %175, i32 0, i32 2
  %176 = load %struct.ScanState*, %struct.ScanState** %scan199, align 8
  %accepts200 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %176, i32 0, i32 2
  %v201 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts200, i32 0, i32 2
  store %struct.Action** %arraydecay195, %struct.Action*** %v201, align 8
  %arrayidx202 = getelementptr inbounds %struct.Action*, %struct.Action** %arraydecay195, i64 %idxprom188
  store %struct.Action* %160, %struct.Action** %arrayidx202, align 8
  br label %do.end.309

if.else.203:                                      ; preds = %do.body.161
  %177 = load i32, i32* %i, align 4
  %idxprom204 = sext i32 %177 to i64
  %178 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v205 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %178, i32 0, i32 2
  %179 = load %struct.DFAState**, %struct.DFAState*** %v205, align 8
  %arrayidx206 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %179, i64 %idxprom204
  %180 = load %struct.DFAState*, %struct.DFAState** %arrayidx206, align 8
  %scan207 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %180, i32 0, i32 2
  %181 = load %struct.ScanState*, %struct.ScanState** %scan207, align 8
  %accepts208 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %181, i32 0, i32 2
  %v209 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts208, i32 0, i32 2
  %182 = load %struct.Action**, %struct.Action*** %v209, align 8
  %183 = load i32, i32* %i, align 4
  %idxprom210 = sext i32 %183 to i64
  %184 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v211 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %184, i32 0, i32 2
  %185 = load %struct.DFAState**, %struct.DFAState*** %v211, align 8
  %arrayidx212 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %185, i64 %idxprom210
  %186 = load %struct.DFAState*, %struct.DFAState** %arrayidx212, align 8
  %scan213 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %186, i32 0, i32 2
  %187 = load %struct.ScanState*, %struct.ScanState** %scan213, align 8
  %accepts214 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %187, i32 0, i32 2
  %e215 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts214, i32 0, i32 3
  %arraydecay216 = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e215, i32 0, i32 0
  %cmp217 = icmp eq %struct.Action** %182, %arraydecay216
  br i1 %cmp217, label %if.then.218, label %if.else.254

if.then.218:                                      ; preds = %if.else.203
  %188 = load i32, i32* %i, align 4
  %idxprom219 = sext i32 %188 to i64
  %189 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v220 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %189, i32 0, i32 2
  %190 = load %struct.DFAState**, %struct.DFAState*** %v220, align 8
  %arrayidx221 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %190, i64 %idxprom219
  %191 = load %struct.DFAState*, %struct.DFAState** %arrayidx221, align 8
  %scan222 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %191, i32 0, i32 2
  %192 = load %struct.ScanState*, %struct.ScanState** %scan222, align 8
  %accepts223 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %192, i32 0, i32 2
  %n224 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts223, i32 0, i32 0
  %193 = load i32, i32* %n224, align 4
  %cmp225 = icmp ult i32 %193, 3
  br i1 %cmp225, label %if.then.226, label %if.end.253

if.then.226:                                      ; preds = %if.then.218
  %194 = load i32, i32* %k, align 4
  %idxprom227 = sext i32 %194 to i64
  %195 = load i32, i32* %j, align 4
  %idxprom228 = sext i32 %195 to i64
  %196 = load i32, i32* %i, align 4
  %idxprom229 = sext i32 %196 to i64
  %197 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v230 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %197, i32 0, i32 2
  %198 = load %struct.DFAState**, %struct.DFAState*** %v230, align 8
  %arrayidx231 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %198, i64 %idxprom229
  %199 = load %struct.DFAState*, %struct.DFAState** %arrayidx231, align 8
  %states232 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %199, i32 0, i32 0
  %v233 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states232, i32 0, i32 2
  %200 = load %struct.NFAState**, %struct.NFAState*** %v233, align 8
  %arrayidx234 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %200, i64 %idxprom228
  %201 = load %struct.NFAState*, %struct.NFAState** %arrayidx234, align 8
  %accepts235 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %201, i32 0, i32 3
  %v236 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts235, i32 0, i32 2
  %202 = load %struct.Action**, %struct.Action*** %v236, align 8
  %arrayidx237 = getelementptr inbounds %struct.Action*, %struct.Action** %202, i64 %idxprom227
  %203 = load %struct.Action*, %struct.Action** %arrayidx237, align 8
  %204 = load i32, i32* %i, align 4
  %idxprom238 = sext i32 %204 to i64
  %205 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v239 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %205, i32 0, i32 2
  %206 = load %struct.DFAState**, %struct.DFAState*** %v239, align 8
  %arrayidx240 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %206, i64 %idxprom238
  %207 = load %struct.DFAState*, %struct.DFAState** %arrayidx240, align 8
  %scan241 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %207, i32 0, i32 2
  %208 = load %struct.ScanState*, %struct.ScanState** %scan241, align 8
  %accepts242 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %208, i32 0, i32 2
  %n243 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts242, i32 0, i32 0
  %209 = load i32, i32* %n243, align 4
  %inc244 = add i32 %209, 1
  store i32 %inc244, i32* %n243, align 4
  %idxprom245 = zext i32 %209 to i64
  %210 = load i32, i32* %i, align 4
  %idxprom246 = sext i32 %210 to i64
  %211 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v247 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %211, i32 0, i32 2
  %212 = load %struct.DFAState**, %struct.DFAState*** %v247, align 8
  %arrayidx248 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %212, i64 %idxprom246
  %213 = load %struct.DFAState*, %struct.DFAState** %arrayidx248, align 8
  %scan249 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %213, i32 0, i32 2
  %214 = load %struct.ScanState*, %struct.ScanState** %scan249, align 8
  %accepts250 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %214, i32 0, i32 2
  %v251 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts250, i32 0, i32 2
  %215 = load %struct.Action**, %struct.Action*** %v251, align 8
  %arrayidx252 = getelementptr inbounds %struct.Action*, %struct.Action** %215, i64 %idxprom245
  store %struct.Action* %203, %struct.Action** %arrayidx252, align 8
  br label %do.end.309

if.end.253:                                       ; preds = %if.then.218
  br label %if.end.291

if.else.254:                                      ; preds = %if.else.203
  %216 = load i32, i32* %i, align 4
  %idxprom255 = sext i32 %216 to i64
  %217 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v256 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %217, i32 0, i32 2
  %218 = load %struct.DFAState**, %struct.DFAState*** %v256, align 8
  %arrayidx257 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %218, i64 %idxprom255
  %219 = load %struct.DFAState*, %struct.DFAState** %arrayidx257, align 8
  %scan258 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %219, i32 0, i32 2
  %220 = load %struct.ScanState*, %struct.ScanState** %scan258, align 8
  %accepts259 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %220, i32 0, i32 2
  %n260 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts259, i32 0, i32 0
  %221 = load i32, i32* %n260, align 4
  %and261 = and i32 %221, 7
  %tobool262 = icmp ne i32 %and261, 0
  br i1 %tobool262, label %if.then.263, label %if.end.290

if.then.263:                                      ; preds = %if.else.254
  %222 = load i32, i32* %k, align 4
  %idxprom264 = sext i32 %222 to i64
  %223 = load i32, i32* %j, align 4
  %idxprom265 = sext i32 %223 to i64
  %224 = load i32, i32* %i, align 4
  %idxprom266 = sext i32 %224 to i64
  %225 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v267 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %225, i32 0, i32 2
  %226 = load %struct.DFAState**, %struct.DFAState*** %v267, align 8
  %arrayidx268 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %226, i64 %idxprom266
  %227 = load %struct.DFAState*, %struct.DFAState** %arrayidx268, align 8
  %states269 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %227, i32 0, i32 0
  %v270 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states269, i32 0, i32 2
  %228 = load %struct.NFAState**, %struct.NFAState*** %v270, align 8
  %arrayidx271 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %228, i64 %idxprom265
  %229 = load %struct.NFAState*, %struct.NFAState** %arrayidx271, align 8
  %accepts272 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %229, i32 0, i32 3
  %v273 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts272, i32 0, i32 2
  %230 = load %struct.Action**, %struct.Action*** %v273, align 8
  %arrayidx274 = getelementptr inbounds %struct.Action*, %struct.Action** %230, i64 %idxprom264
  %231 = load %struct.Action*, %struct.Action** %arrayidx274, align 8
  %232 = load i32, i32* %i, align 4
  %idxprom275 = sext i32 %232 to i64
  %233 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v276 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %233, i32 0, i32 2
  %234 = load %struct.DFAState**, %struct.DFAState*** %v276, align 8
  %arrayidx277 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %234, i64 %idxprom275
  %235 = load %struct.DFAState*, %struct.DFAState** %arrayidx277, align 8
  %scan278 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %235, i32 0, i32 2
  %236 = load %struct.ScanState*, %struct.ScanState** %scan278, align 8
  %accepts279 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %236, i32 0, i32 2
  %n280 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts279, i32 0, i32 0
  %237 = load i32, i32* %n280, align 4
  %inc281 = add i32 %237, 1
  store i32 %inc281, i32* %n280, align 4
  %idxprom282 = zext i32 %237 to i64
  %238 = load i32, i32* %i, align 4
  %idxprom283 = sext i32 %238 to i64
  %239 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v284 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %239, i32 0, i32 2
  %240 = load %struct.DFAState**, %struct.DFAState*** %v284, align 8
  %arrayidx285 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %240, i64 %idxprom283
  %241 = load %struct.DFAState*, %struct.DFAState** %arrayidx285, align 8
  %scan286 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %241, i32 0, i32 2
  %242 = load %struct.ScanState*, %struct.ScanState** %scan286, align 8
  %accepts287 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %242, i32 0, i32 2
  %v288 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts287, i32 0, i32 2
  %243 = load %struct.Action**, %struct.Action*** %v288, align 8
  %arrayidx289 = getelementptr inbounds %struct.Action*, %struct.Action** %243, i64 %idxprom282
  store %struct.Action* %231, %struct.Action** %arrayidx289, align 8
  br label %do.end.309

if.end.290:                                       ; preds = %if.else.254
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.end.253
  br label %if.end.292

if.end.292:                                       ; preds = %if.end.291
  %244 = load i32, i32* %i, align 4
  %idxprom293 = sext i32 %244 to i64
  %245 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v294 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %245, i32 0, i32 2
  %246 = load %struct.DFAState**, %struct.DFAState*** %v294, align 8
  %arrayidx295 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %246, i64 %idxprom293
  %247 = load %struct.DFAState*, %struct.DFAState** %arrayidx295, align 8
  %scan296 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %247, i32 0, i32 2
  %248 = load %struct.ScanState*, %struct.ScanState** %scan296, align 8
  %accepts297 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %248, i32 0, i32 2
  %249 = bitcast %struct.VecAction* %accepts297 to i8*
  %250 = load i32, i32* %k, align 4
  %idxprom298 = sext i32 %250 to i64
  %251 = load i32, i32* %j, align 4
  %idxprom299 = sext i32 %251 to i64
  %252 = load i32, i32* %i, align 4
  %idxprom300 = sext i32 %252 to i64
  %253 = load %struct.VecDFAState*, %struct.VecDFAState** %alldfas.addr, align 8
  %v301 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %253, i32 0, i32 2
  %254 = load %struct.DFAState**, %struct.DFAState*** %v301, align 8
  %arrayidx302 = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %254, i64 %idxprom300
  %255 = load %struct.DFAState*, %struct.DFAState** %arrayidx302, align 8
  %states303 = getelementptr inbounds %struct.DFAState, %struct.DFAState* %255, i32 0, i32 0
  %v304 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %states303, i32 0, i32 2
  %256 = load %struct.NFAState**, %struct.NFAState*** %v304, align 8
  %arrayidx305 = getelementptr inbounds %struct.NFAState*, %struct.NFAState** %256, i64 %idxprom299
  %257 = load %struct.NFAState*, %struct.NFAState** %arrayidx305, align 8
  %accepts306 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %257, i32 0, i32 3
  %v307 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts306, i32 0, i32 2
  %258 = load %struct.Action**, %struct.Action*** %v307, align 8
  %arrayidx308 = getelementptr inbounds %struct.Action*, %struct.Action** %258, i64 %idxprom298
  %259 = load %struct.Action*, %struct.Action** %arrayidx308, align 8
  %260 = bitcast %struct.Action* %259 to i8*
  call void @vec_add_internal(i8* %249, i8* %260)
  br label %do.end.309

do.end.309:                                       ; preds = %if.end.292, %if.then.263, %if.then.226, %if.then.169
  br label %if.end.310

if.end.310:                                       ; preds = %do.end.309, %for.body.145
  br label %for.inc.311

for.inc.311:                                      ; preds = %if.end.310
  %261 = load i32, i32* %k, align 4
  %inc312 = add nsw i32 %261, 1
  store i32 %inc312, i32* %k, align 4
  br label %for.cond.134

for.end.313:                                      ; preds = %for.cond.134
  br label %for.inc.314

for.inc.314:                                      ; preds = %for.end.313
  %262 = load i32, i32* %j, align 4
  %inc315 = add nsw i32 %262, 1
  store i32 %inc315, i32* %j, align 4
  br label %for.cond.126

for.end.316:                                      ; preds = %for.cond.126
  br label %for.inc.317

for.inc.317:                                      ; preds = %for.end.316
  %263 = load i32, i32* %i, align 4
  %inc318 = add nsw i32 %263, 1
  store i32 %inc318, i32* %i, align 4
  br label %for.cond.56

for.end.319:                                      ; preds = %for.cond.56
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_VecDFAState(%struct.VecDFAState* %dfas) #0 {
entry:
  %dfas.addr = alloca %struct.VecDFAState*, align 8
  %i = alloca i32, align 4
  store %struct.VecDFAState* %dfas, %struct.VecDFAState** %dfas.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.VecDFAState*, %struct.VecDFAState** %dfas.addr, align 8
  %n = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %1, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.VecDFAState*, %struct.VecDFAState** %dfas.addr, align 8
  %v = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %4, i32 0, i32 2
  %5 = load %struct.DFAState**, %struct.DFAState*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.DFAState*, %struct.DFAState** %5, i64 %idxprom
  %6 = load %struct.DFAState*, %struct.DFAState** %arrayidx, align 8
  call void @free_DFAState(%struct.DFAState* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %8 = load %struct.VecDFAState*, %struct.VecDFAState** %dfas.addr, align 8
  %v1 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %8, i32 0, i32 2
  %9 = load %struct.DFAState**, %struct.DFAState*** %v1, align 8
  %tobool = icmp ne %struct.DFAState** %9, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %10 = load %struct.VecDFAState*, %struct.VecDFAState** %dfas.addr, align 8
  %v2 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %10, i32 0, i32 2
  %11 = load %struct.DFAState**, %struct.DFAState*** %v2, align 8
  %12 = load %struct.VecDFAState*, %struct.VecDFAState** %dfas.addr, align 8
  %e = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %12, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.DFAState*], [3 x %struct.DFAState*]* %e, i32 0, i32 0
  %cmp3 = icmp ne %struct.DFAState** %11, %arraydecay
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct.VecDFAState*, %struct.VecDFAState** %dfas.addr, align 8
  %v4 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %13, i32 0, i32 2
  %14 = load %struct.DFAState**, %struct.DFAState*** %v4, align 8
  %15 = bitcast %struct.DFAState** %14 to i8*
  call void @free(i8* %15) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  br label %do.body.5

do.body.5:                                        ; preds = %if.end
  %16 = load %struct.VecDFAState*, %struct.VecDFAState** %dfas.addr, align 8
  %n6 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %16, i32 0, i32 0
  store i32 0, i32* %n6, align 4
  %17 = load %struct.VecDFAState*, %struct.VecDFAState** %dfas.addr, align 8
  %v7 = getelementptr inbounds %struct.VecDFAState, %struct.VecDFAState* %17, i32 0, i32 2
  store %struct.DFAState** null, %struct.DFAState*** %v7, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.5
  br label %do.end.8

do.end.8:                                         ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.DFAState* @new_DFAState() #0 {
entry:
  %n = alloca %struct.DFAState*, align 8
  %call = call noalias i8* @malloc(i64 2096) #1
  %0 = bitcast i8* %call to %struct.DFAState*
  store %struct.DFAState* %0, %struct.DFAState** %n, align 8
  %1 = load %struct.DFAState*, %struct.DFAState** %n, align 8
  %2 = bitcast %struct.DFAState* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 2096, i32 8, i1 false)
  %3 = load %struct.DFAState*, %struct.DFAState** %n, align 8
  ret %struct.DFAState* %3
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @nfacmp(i8* %ai, i8* %aj) #0 {
entry:
  %ai.addr = alloca i8*, align 8
  %aj.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %ai, i8** %ai.addr, align 8
  store i8* %aj, i8** %aj.addr, align 8
  %0 = load i8*, i8** %ai.addr, align 8
  %1 = bitcast i8* %0 to %struct.NFAState**
  %2 = load %struct.NFAState*, %struct.NFAState** %1, align 8
  %index = getelementptr inbounds %struct.NFAState, %struct.NFAState* %2, i32 0, i32 0
  %3 = load i32, i32* %index, align 4
  store i32 %3, i32* %i, align 4
  %4 = load i8*, i8** %aj.addr, align 8
  %5 = bitcast i8* %4 to %struct.NFAState**
  %6 = load %struct.NFAState*, %struct.NFAState** %5, align 8
  %index1 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %6, i32 0, i32 0
  %7 = load i32, i32* %index1, align 4
  store i32 %7, i32* %j, align 4
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %j, align 4
  %cmp = icmp ugt i32 %8, %9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %cmp2 = icmp ult i32 %10, %11
  %cond = select i1 %cmp2, i32 -1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond3 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  ret i32 %cond3
}

; Function Attrs: nounwind uwtable
define internal %struct.ScanState* @new_ScanState() #0 {
entry:
  %n = alloca %struct.ScanState*, align 8
  %call = call noalias i8* @malloc(i64 4184) #1
  %0 = bitcast i8* %call to %struct.ScanState*
  store %struct.ScanState* %0, %struct.ScanState** %n, align 8
  %1 = load %struct.ScanState*, %struct.ScanState** %n, align 8
  %2 = bitcast %struct.ScanState* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 4184, i32 8, i1 false)
  %3 = load %struct.ScanState*, %struct.ScanState** %n, align 8
  ret %struct.ScanState* %3
}

; Function Attrs: nounwind uwtable
define internal void @compute_liveness(%struct.Scanner* %scanner) #0 {
entry:
  %scanner.addr = alloca %struct.Scanner*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %changed = alloca i32, align 4
  %ss = alloca %struct.ScanState*, align 8
  %sss = alloca %struct.ScanState*, align 8
  %states = alloca %struct.VecScanState*, align 8
  store %struct.Scanner* %scanner, %struct.Scanner** %scanner.addr, align 8
  store i32 1, i32* %changed, align 4
  %0 = load %struct.Scanner*, %struct.Scanner** %scanner.addr, align 8
  %states1 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %0, i32 0, i32 0
  store %struct.VecScanState* %states1, %struct.VecScanState** %states, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.VecScanState*, %struct.VecScanState** %states, align 8
  %n = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %2, i32 0, i32 0
  %3 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.VecScanState*, %struct.VecScanState** %states, align 8
  %v = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %5, i32 0, i32 2
  %6 = load %struct.ScanState**, %struct.ScanState*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %6, i64 %idxprom
  %7 = load %struct.ScanState*, %struct.ScanState** %arrayidx, align 8
  store %struct.ScanState* %7, %struct.ScanState** %ss, align 8
  %8 = load %struct.ScanState*, %struct.ScanState** %ss, align 8
  %live = getelementptr inbounds %struct.ScanState, %struct.ScanState* %8, i32 0, i32 3
  %9 = bitcast %struct.VecAction* %live to i8*
  %10 = load %struct.ScanState*, %struct.ScanState** %ss, align 8
  %accepts = getelementptr inbounds %struct.ScanState, %struct.ScanState* %10, i32 0, i32 2
  %11 = bitcast %struct.VecAction* %accepts to i8*
  %call = call i32 @set_union(i8* %9, i8* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %for.end.29, %for.end
  %13 = load i32, i32* %changed, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %changed, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.27, %while.body
  %14 = load i32, i32* %i, align 4
  %15 = load %struct.VecScanState*, %struct.VecScanState** %states, align 8
  %n3 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %15, i32 0, i32 0
  %16 = load i32, i32* %n3, align 4
  %cmp4 = icmp ult i32 %14, %16
  br i1 %cmp4, label %for.body.5, label %for.end.29

for.body.5:                                       ; preds = %for.cond.2
  %17 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %17 to i64
  %18 = load %struct.VecScanState*, %struct.VecScanState** %states, align 8
  %v7 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %18, i32 0, i32 2
  %19 = load %struct.ScanState**, %struct.ScanState*** %v7, align 8
  %arrayidx8 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %19, i64 %idxprom6
  %20 = load %struct.ScanState*, %struct.ScanState** %arrayidx8, align 8
  store %struct.ScanState* %20, %struct.ScanState** %ss, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.24, %for.body.5
  %21 = load i32, i32* %j, align 4
  %cmp10 = icmp slt i32 %21, 256
  br i1 %cmp10, label %for.body.11, label %for.end.26

for.body.11:                                      ; preds = %for.cond.9
  %22 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %22 to i64
  %23 = load %struct.ScanState*, %struct.ScanState** %ss, align 8
  %chars = getelementptr inbounds %struct.ScanState, %struct.ScanState* %23, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [256 x %struct.ScanState*], [256 x %struct.ScanState*]* %chars, i32 0, i64 %idxprom12
  %24 = load %struct.ScanState*, %struct.ScanState** %arrayidx13, align 8
  store %struct.ScanState* %24, %struct.ScanState** %sss, align 8
  %tobool14 = icmp ne %struct.ScanState* %24, null
  br i1 %tobool14, label %if.then, label %if.end.23

if.then:                                          ; preds = %for.body.11
  %25 = load %struct.ScanState*, %struct.ScanState** %ss, align 8
  %26 = load %struct.ScanState*, %struct.ScanState** %sss, align 8
  %cmp15 = icmp ne %struct.ScanState* %25, %26
  br i1 %cmp15, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %if.then
  %27 = load %struct.ScanState*, %struct.ScanState** %ss, align 8
  %live17 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %27, i32 0, i32 3
  %28 = bitcast %struct.VecAction* %live17 to i8*
  %29 = load %struct.ScanState*, %struct.ScanState** %sss, align 8
  %live18 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %29, i32 0, i32 3
  %30 = bitcast %struct.VecAction* %live18 to i8*
  %call19 = call i32 @set_union(i8* %28, i8* %30)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then.16
  store i32 1, i32* %changed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %for.body.11
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end.23
  %31 = load i32, i32* %j, align 4
  %inc25 = add nsw i32 %31, 1
  store i32 %inc25, i32* %j, align 4
  br label %for.cond.9

for.end.26:                                       ; preds = %for.cond.9
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end.26
  %32 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %32, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.2

for.end.29:                                       ; preds = %for.cond.2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.39, %while.end
  %33 = load i32, i32* %i, align 4
  %34 = load %struct.VecScanState*, %struct.VecScanState** %states, align 8
  %n31 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %34, i32 0, i32 0
  %35 = load i32, i32* %n31, align 4
  %cmp32 = icmp ult i32 %33, %35
  br i1 %cmp32, label %for.body.33, label %for.end.41

for.body.33:                                      ; preds = %for.cond.30
  %36 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %36 to i64
  %37 = load %struct.VecScanState*, %struct.VecScanState** %states, align 8
  %v35 = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %37, i32 0, i32 2
  %38 = load %struct.ScanState**, %struct.ScanState*** %v35, align 8
  %arrayidx36 = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %38, i64 %idxprom34
  %39 = load %struct.ScanState*, %struct.ScanState** %arrayidx36, align 8
  store %struct.ScanState* %39, %struct.ScanState** %ss, align 8
  %40 = load %struct.ScanState*, %struct.ScanState** %ss, align 8
  %live37 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %40, i32 0, i32 3
  %41 = bitcast %struct.VecAction* %live37 to i8*
  call void @set_to_vec(i8* %41)
  %42 = load %struct.ScanState*, %struct.ScanState** %ss, align 8
  %live38 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %42, i32 0, i32 3
  call void @sort_VecAction(%struct.VecAction* %live38)
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.33
  %43 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %43, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.30

for.end.41:                                       ; preds = %for.cond.30
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @build_transitions(%struct.LexState* %ls, %struct.Scanner* %s) #0 {
entry:
  %ls.addr = alloca %struct.LexState*, align 8
  %s.addr = alloca %struct.Scanner*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ss = alloca %struct.ScanState*, align 8
  %trans = alloca %struct.ScanStateTransition*, align 8
  %x = alloca %struct.ScanStateTransition*, align 8
  %states = alloca %struct.VecScanState*, align 8
  store %struct.LexState* %ls, %struct.LexState** %ls.addr, align 8
  store %struct.Scanner* %s, %struct.Scanner** %s.addr, align 8
  store %struct.ScanStateTransition* null, %struct.ScanStateTransition** %trans, align 8
  %0 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %states1 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %0, i32 0, i32 0
  store %struct.VecScanState* %states1, %struct.VecScanState** %states, align 8
  store i8* inttoptr (i64 1 to i8*), i8** getelementptr inbounds (%struct.hash_fns_t, %struct.hash_fns_t* @trans_hash_fns, i32 0, i32 2, i64 0), align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.VecScanState*, %struct.VecScanState** %states, align 8
  %n = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %2, i32 0, i32 0
  %3 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end.62

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.VecScanState*, %struct.VecScanState** %states, align 8
  %v = getelementptr inbounds %struct.VecScanState, %struct.VecScanState* %5, i32 0, i32 2
  %6 = load %struct.ScanState**, %struct.ScanState*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.ScanState*, %struct.ScanState** %6, i64 %idxprom
  %7 = load %struct.ScanState*, %struct.ScanState** %arrayidx, align 8
  store %struct.ScanState* %7, %struct.ScanState** %ss, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %8, 256
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %9 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %trans, align 8
  %tobool = icmp ne %struct.ScanStateTransition* %9, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.4
  %call = call noalias i8* @malloc(i64 88) #1
  %10 = bitcast i8* %call to %struct.ScanStateTransition*
  store %struct.ScanStateTransition* %10, %struct.ScanStateTransition** %trans, align 8
  %11 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %trans, align 8
  %12 = bitcast %struct.ScanStateTransition* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 88, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  %13 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct.ScanState*, %struct.ScanState** %ss, align 8
  %chars = getelementptr inbounds %struct.ScanState, %struct.ScanState* %14, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [256 x %struct.ScanState*], [256 x %struct.ScanState*]* %chars, i32 0, i64 %idxprom5
  %15 = load %struct.ScanState*, %struct.ScanState** %arrayidx6, align 8
  %tobool7 = icmp ne %struct.ScanState* %15, null
  br i1 %tobool7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.end
  %16 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %trans, align 8
  %live_diff = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %16, i32 0, i32 1
  %17 = load %struct.ScanState*, %struct.ScanState** %ss, align 8
  %live = getelementptr inbounds %struct.ScanState, %struct.ScanState* %17, i32 0, i32 3
  %18 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load %struct.ScanState*, %struct.ScanState** %ss, align 8
  %chars10 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %19, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [256 x %struct.ScanState*], [256 x %struct.ScanState*]* %chars10, i32 0, i64 %idxprom9
  %20 = load %struct.ScanState*, %struct.ScanState** %arrayidx11, align 8
  %live12 = getelementptr inbounds %struct.ScanState, %struct.ScanState* %20, i32 0, i32 3
  call void @action_diff(%struct.VecAction* %live_diff, %struct.VecAction* %live, %struct.VecAction* %live12)
  %21 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %trans, align 8
  %accepts_diff = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %21, i32 0, i32 2
  %22 = load %struct.ScanState*, %struct.ScanState** %ss, align 8
  %accepts = getelementptr inbounds %struct.ScanState, %struct.ScanState* %22, i32 0, i32 2
  %23 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %trans, align 8
  %live_diff13 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %23, i32 0, i32 1
  call void @action_intersect(%struct.VecAction* %accepts_diff, %struct.VecAction* %accepts, %struct.VecAction* %live_diff13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.8, %if.end
  %24 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %transitions = getelementptr inbounds %struct.Scanner, %struct.Scanner* %24, i32 0, i32 1
  %25 = bitcast %struct.VecScanStateTransition* %transitions to i8*
  %26 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %trans, align 8
  %27 = bitcast %struct.ScanStateTransition* %26 to i8*
  %call15 = call i8* @set_add_fn(i8* %25, i8* %27, %struct.hash_fns_t* @trans_hash_fns)
  %28 = bitcast i8* %call15 to %struct.ScanStateTransition*
  store %struct.ScanStateTransition* %28, %struct.ScanStateTransition** %x, align 8
  %29 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %trans, align 8
  %cmp16 = icmp eq %struct.ScanStateTransition* %28, %29
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.14
  store %struct.ScanStateTransition* null, %struct.ScanStateTransition** %trans, align 8
  br label %if.end.57

if.else:                                          ; preds = %if.end.14
  br label %do.body

do.body:                                          ; preds = %if.else
  %30 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %trans, align 8
  %live_diff18 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %30, i32 0, i32 1
  %v19 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %live_diff18, i32 0, i32 2
  %31 = load %struct.Action**, %struct.Action*** %v19, align 8
  %tobool20 = icmp ne %struct.Action** %31, null
  br i1 %tobool20, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %do.body
  %32 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %trans, align 8
  %live_diff21 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %32, i32 0, i32 1
  %v22 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %live_diff21, i32 0, i32 2
  %33 = load %struct.Action**, %struct.Action*** %v22, align 8
  %34 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %trans, align 8
  %live_diff23 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %34, i32 0, i32 1
  %e = getelementptr inbounds %struct.VecAction, %struct.VecAction* %live_diff23, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e, i32 0, i32 0
  %cmp24 = icmp ne %struct.Action** %33, %arraydecay
  br i1 %cmp24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %land.lhs.true
  %35 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %trans, align 8
  %live_diff26 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %35, i32 0, i32 1
  %v27 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %live_diff26, i32 0, i32 2
  %36 = load %struct.Action**, %struct.Action*** %v27, align 8
  %37 = bitcast %struct.Action** %36 to i8*
  call void @free(i8* %37) #1
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %land.lhs.true, %do.body
  br label %do.body.29

do.body.29:                                       ; preds = %if.end.28
  %38 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %trans, align 8
  %live_diff30 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %38, i32 0, i32 1
  %n31 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %live_diff30, i32 0, i32 0
  store i32 0, i32* %n31, align 4
  %39 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %trans, align 8
  %live_diff32 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %39, i32 0, i32 1
  %v33 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %live_diff32, i32 0, i32 2
  store %struct.Action** null, %struct.Action*** %v33, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.29
  br label %do.end.34

do.end.34:                                        ; preds = %do.end
  br label %do.body.35

do.body.35:                                       ; preds = %do.end.34
  %40 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %trans, align 8
  %accepts_diff36 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %40, i32 0, i32 2
  %v37 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts_diff36, i32 0, i32 2
  %41 = load %struct.Action**, %struct.Action*** %v37, align 8
  %tobool38 = icmp ne %struct.Action** %41, null
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.49

land.lhs.true.39:                                 ; preds = %do.body.35
  %42 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %trans, align 8
  %accepts_diff40 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %42, i32 0, i32 2
  %v41 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts_diff40, i32 0, i32 2
  %43 = load %struct.Action**, %struct.Action*** %v41, align 8
  %44 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %trans, align 8
  %accepts_diff42 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %44, i32 0, i32 2
  %e43 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts_diff42, i32 0, i32 3
  %arraydecay44 = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e43, i32 0, i32 0
  %cmp45 = icmp ne %struct.Action** %43, %arraydecay44
  br i1 %cmp45, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %land.lhs.true.39
  %45 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %trans, align 8
  %accepts_diff47 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %45, i32 0, i32 2
  %v48 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts_diff47, i32 0, i32 2
  %46 = load %struct.Action**, %struct.Action*** %v48, align 8
  %47 = bitcast %struct.Action** %46 to i8*
  call void @free(i8* %47) #1
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %land.lhs.true.39, %do.body.35
  br label %do.body.50

do.body.50:                                       ; preds = %if.end.49
  %48 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %trans, align 8
  %accepts_diff51 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %48, i32 0, i32 2
  %n52 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts_diff51, i32 0, i32 0
  store i32 0, i32* %n52, align 4
  %49 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %trans, align 8
  %accepts_diff53 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %49, i32 0, i32 2
  %v54 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts_diff53, i32 0, i32 2
  store %struct.Action** null, %struct.Action*** %v54, align 8
  br label %do.end.55

do.end.55:                                        ; preds = %do.body.50
  br label %do.end.56

do.end.56:                                        ; preds = %do.end.55
  br label %if.end.57

if.end.57:                                        ; preds = %do.end.56, %if.then.17
  %50 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %x, align 8
  %51 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %51 to i64
  %52 = load %struct.ScanState*, %struct.ScanState** %ss, align 8
  %transition = getelementptr inbounds %struct.ScanState, %struct.ScanState* %52, i32 0, i32 4
  %arrayidx59 = getelementptr inbounds [256 x %struct.ScanStateTransition*], [256 x %struct.ScanStateTransition*]* %transition, i32 0, i64 %idxprom58
  store %struct.ScanStateTransition* %50, %struct.ScanStateTransition** %arrayidx59, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.57
  %53 = load i32, i32* %j, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end
  %54 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %54, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond

for.end.62:                                       ; preds = %for.cond
  store i32 0, i32* %j, align 4
  %55 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %transitions63 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %55, i32 0, i32 1
  %56 = bitcast %struct.VecScanStateTransition* %transitions63 to i8*
  call void @set_to_vec(i8* %56)
  store i32 0, i32* %i, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.73, %for.end.62
  %57 = load i32, i32* %i, align 4
  %58 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %transitions65 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %58, i32 0, i32 1
  %n66 = getelementptr inbounds %struct.VecScanStateTransition, %struct.VecScanStateTransition* %transitions65, i32 0, i32 0
  %59 = load i32, i32* %n66, align 4
  %cmp67 = icmp ult i32 %57, %59
  br i1 %cmp67, label %for.body.68, label %for.end.75

for.body.68:                                      ; preds = %for.cond.64
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %61 to i64
  %62 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %transitions70 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %62, i32 0, i32 1
  %v71 = getelementptr inbounds %struct.VecScanStateTransition, %struct.VecScanStateTransition* %transitions70, i32 0, i32 2
  %63 = load %struct.ScanStateTransition**, %struct.ScanStateTransition*** %v71, align 8
  %arrayidx72 = getelementptr inbounds %struct.ScanStateTransition*, %struct.ScanStateTransition** %63, i64 %idxprom69
  %64 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %arrayidx72, align 8
  %index = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %64, i32 0, i32 0
  store i32 %60, i32* %index, align 4
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.68
  %65 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %65, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond.64

for.end.75:                                       ; preds = %for.cond.64
  %66 = load %struct.Scanner*, %struct.Scanner** %s.addr, align 8
  %transitions76 = getelementptr inbounds %struct.Scanner, %struct.Scanner* %66, i32 0, i32 1
  %n77 = getelementptr inbounds %struct.VecScanStateTransition, %struct.VecScanStateTransition* %transitions76, i32 0, i32 0
  %67 = load i32, i32* %n77, align 4
  %68 = load %struct.LexState*, %struct.LexState** %ls.addr, align 8
  %transitions78 = getelementptr inbounds %struct.LexState, %struct.LexState* %68, i32 0, i32 2
  %69 = load i32, i32* %transitions78, align 4
  %add = add i32 %69, %67
  store i32 %add, i32* %transitions78, align 4
  ret void
}

declare i32 @set_union(i8*, i8*) #2

declare void @sort_VecAction(%struct.VecAction*) #2

; Function Attrs: nounwind uwtable
define internal void @action_diff(%struct.VecAction* %a, %struct.VecAction* %b, %struct.VecAction* %c) #0 {
entry:
  %a.addr = alloca %struct.VecAction*, align 8
  %b.addr = alloca %struct.VecAction*, align 8
  %c.addr = alloca %struct.VecAction*, align 8
  %bb = alloca i32, align 4
  %cc = alloca i32, align 4
  store %struct.VecAction* %a, %struct.VecAction** %a.addr, align 8
  store %struct.VecAction* %b, %struct.VecAction** %b.addr, align 8
  store %struct.VecAction* %c, %struct.VecAction** %c.addr, align 8
  store i32 0, i32* %bb, align 4
  store i32 0, i32* %cc, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.then.62
  %0 = load i32, i32* %bb, align 4
  %1 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %n = getelementptr inbounds %struct.VecAction, %struct.VecAction* %1, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp uge i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end.138

if.end:                                           ; preds = %while.body
  br label %Lagainc

Lagainc:                                          ; preds = %if.end.136, %if.end
  %3 = load i32, i32* %cc, align 4
  %4 = load %struct.VecAction*, %struct.VecAction** %c.addr, align 8
  %n1 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %4, i32 0, i32 0
  %5 = load i32, i32* %n1, align 4
  %cmp2 = icmp uge i32 %3, %5
  br i1 %cmp2, label %if.then.3, label %if.end.53

if.then.3:                                        ; preds = %Lagainc
  br label %while.cond.4

while.cond.4:                                     ; preds = %do.end, %if.then.3
  %6 = load i32, i32* %bb, align 4
  %7 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %n5 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %7, i32 0, i32 0
  %8 = load i32, i32* %n5, align 4
  %cmp6 = icmp ult i32 %6, %8
  br i1 %cmp6, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %while.cond.4
  br label %do.body

do.body:                                          ; preds = %while.body.7
  %9 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %v = getelementptr inbounds %struct.VecAction, %struct.VecAction* %9, i32 0, i32 2
  %10 = load %struct.Action**, %struct.Action*** %v, align 8
  %tobool = icmp ne %struct.Action** %10, null
  br i1 %tobool, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %do.body
  %11 = load i32, i32* %bb, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %bb, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %v9 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %12, i32 0, i32 2
  %13 = load %struct.Action**, %struct.Action*** %v9, align 8
  %arrayidx = getelementptr inbounds %struct.Action*, %struct.Action** %13, i64 %idxprom
  %14 = load %struct.Action*, %struct.Action** %arrayidx, align 8
  %15 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %n10 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %15, i32 0, i32 0
  %16 = load i32, i32* %n10, align 4
  %inc11 = add i32 %16, 1
  store i32 %inc11, i32* %n10, align 4
  %idxprom12 = zext i32 %16 to i64
  %17 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %e = getelementptr inbounds %struct.VecAction, %struct.VecAction* %17, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e, i32 0, i32 0
  %18 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %v13 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %18, i32 0, i32 2
  store %struct.Action** %arraydecay, %struct.Action*** %v13, align 8
  %arrayidx14 = getelementptr inbounds %struct.Action*, %struct.Action** %arraydecay, i64 %idxprom12
  store %struct.Action* %14, %struct.Action** %arrayidx14, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %19 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %v15 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %19, i32 0, i32 2
  %20 = load %struct.Action**, %struct.Action*** %v15, align 8
  %21 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %e16 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %21, i32 0, i32 3
  %arraydecay17 = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e16, i32 0, i32 0
  %cmp18 = icmp eq %struct.Action** %20, %arraydecay17
  br i1 %cmp18, label %if.then.19, label %if.else.33

if.then.19:                                       ; preds = %if.else
  %22 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %n20 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %22, i32 0, i32 0
  %23 = load i32, i32* %n20, align 4
  %cmp21 = icmp ult i32 %23, 3
  br i1 %cmp21, label %if.then.22, label %if.end.32

if.then.22:                                       ; preds = %if.then.19
  %24 = load i32, i32* %bb, align 4
  %inc23 = add nsw i32 %24, 1
  store i32 %inc23, i32* %bb, align 4
  %idxprom24 = sext i32 %24 to i64
  %25 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %v25 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %25, i32 0, i32 2
  %26 = load %struct.Action**, %struct.Action*** %v25, align 8
  %arrayidx26 = getelementptr inbounds %struct.Action*, %struct.Action** %26, i64 %idxprom24
  %27 = load %struct.Action*, %struct.Action** %arrayidx26, align 8
  %28 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %n27 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %28, i32 0, i32 0
  %29 = load i32, i32* %n27, align 4
  %inc28 = add i32 %29, 1
  store i32 %inc28, i32* %n27, align 4
  %idxprom29 = zext i32 %29 to i64
  %30 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %v30 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %30, i32 0, i32 2
  %31 = load %struct.Action**, %struct.Action*** %v30, align 8
  %arrayidx31 = getelementptr inbounds %struct.Action*, %struct.Action** %31, i64 %idxprom29
  store %struct.Action* %27, %struct.Action** %arrayidx31, align 8
  br label %do.end

if.end.32:                                        ; preds = %if.then.19
  br label %if.end.47

if.else.33:                                       ; preds = %if.else
  %32 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %n34 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %32, i32 0, i32 0
  %33 = load i32, i32* %n34, align 4
  %and = and i32 %33, 7
  %tobool35 = icmp ne i32 %and, 0
  br i1 %tobool35, label %if.then.36, label %if.end.46

if.then.36:                                       ; preds = %if.else.33
  %34 = load i32, i32* %bb, align 4
  %inc37 = add nsw i32 %34, 1
  store i32 %inc37, i32* %bb, align 4
  %idxprom38 = sext i32 %34 to i64
  %35 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %v39 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %35, i32 0, i32 2
  %36 = load %struct.Action**, %struct.Action*** %v39, align 8
  %arrayidx40 = getelementptr inbounds %struct.Action*, %struct.Action** %36, i64 %idxprom38
  %37 = load %struct.Action*, %struct.Action** %arrayidx40, align 8
  %38 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %n41 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %38, i32 0, i32 0
  %39 = load i32, i32* %n41, align 4
  %inc42 = add i32 %39, 1
  store i32 %inc42, i32* %n41, align 4
  %idxprom43 = zext i32 %39 to i64
  %40 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %v44 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %40, i32 0, i32 2
  %41 = load %struct.Action**, %struct.Action*** %v44, align 8
  %arrayidx45 = getelementptr inbounds %struct.Action*, %struct.Action** %41, i64 %idxprom43
  store %struct.Action* %37, %struct.Action** %arrayidx45, align 8
  br label %do.end

if.end.46:                                        ; preds = %if.else.33
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.32
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47
  %42 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %43 = bitcast %struct.VecAction* %42 to i8*
  %44 = load i32, i32* %bb, align 4
  %inc49 = add nsw i32 %44, 1
  store i32 %inc49, i32* %bb, align 4
  %idxprom50 = sext i32 %44 to i64
  %45 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %v51 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %45, i32 0, i32 2
  %46 = load %struct.Action**, %struct.Action*** %v51, align 8
  %arrayidx52 = getelementptr inbounds %struct.Action*, %struct.Action** %46, i64 %idxprom50
  %47 = load %struct.Action*, %struct.Action** %arrayidx52, align 8
  %48 = bitcast %struct.Action* %47 to i8*
  call void @vec_add_internal(i8* %43, i8* %48)
  br label %do.end

do.end:                                           ; preds = %if.end.48, %if.then.36, %if.then.22, %if.then.8
  br label %while.cond.4

while.end:                                        ; preds = %while.cond.4
  br label %while.end.138

if.end.53:                                        ; preds = %Lagainc
  br label %Lagainb

Lagainb:                                          ; preds = %if.end.135, %if.end.53
  %49 = load i32, i32* %bb, align 4
  %idxprom54 = sext i32 %49 to i64
  %50 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %v55 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %50, i32 0, i32 2
  %51 = load %struct.Action**, %struct.Action*** %v55, align 8
  %arrayidx56 = getelementptr inbounds %struct.Action*, %struct.Action** %51, i64 %idxprom54
  %52 = load %struct.Action*, %struct.Action** %arrayidx56, align 8
  %index = getelementptr inbounds %struct.Action, %struct.Action* %52, i32 0, i32 4
  %53 = load i32, i32* %index, align 4
  %54 = load i32, i32* %cc, align 4
  %idxprom57 = sext i32 %54 to i64
  %55 = load %struct.VecAction*, %struct.VecAction** %c.addr, align 8
  %v58 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %55, i32 0, i32 2
  %56 = load %struct.Action**, %struct.Action*** %v58, align 8
  %arrayidx59 = getelementptr inbounds %struct.Action*, %struct.Action** %56, i64 %idxprom57
  %57 = load %struct.Action*, %struct.Action** %arrayidx59, align 8
  %index60 = getelementptr inbounds %struct.Action, %struct.Action* %57, i32 0, i32 4
  %58 = load i32, i32* %index60, align 4
  %cmp61 = icmp eq i32 %53, %58
  br i1 %cmp61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %Lagainb
  %59 = load i32, i32* %bb, align 4
  %inc63 = add nsw i32 %59, 1
  store i32 %inc63, i32* %bb, align 4
  %60 = load i32, i32* %cc, align 4
  %inc64 = add nsw i32 %60, 1
  store i32 %inc64, i32* %cc, align 4
  br label %while.body

if.end.65:                                        ; preds = %Lagainb
  %61 = load i32, i32* %bb, align 4
  %idxprom66 = sext i32 %61 to i64
  %62 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %v67 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %62, i32 0, i32 2
  %63 = load %struct.Action**, %struct.Action*** %v67, align 8
  %arrayidx68 = getelementptr inbounds %struct.Action*, %struct.Action** %63, i64 %idxprom66
  %64 = load %struct.Action*, %struct.Action** %arrayidx68, align 8
  %index69 = getelementptr inbounds %struct.Action, %struct.Action* %64, i32 0, i32 4
  %65 = load i32, i32* %index69, align 4
  %66 = load i32, i32* %cc, align 4
  %idxprom70 = sext i32 %66 to i64
  %67 = load %struct.VecAction*, %struct.VecAction** %c.addr, align 8
  %v71 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %67, i32 0, i32 2
  %68 = load %struct.Action**, %struct.Action*** %v71, align 8
  %arrayidx72 = getelementptr inbounds %struct.Action*, %struct.Action** %68, i64 %idxprom70
  %69 = load %struct.Action*, %struct.Action** %arrayidx72, align 8
  %index73 = getelementptr inbounds %struct.Action, %struct.Action* %69, i32 0, i32 4
  %70 = load i32, i32* %index73, align 4
  %cmp74 = icmp ult i32 %65, %70
  br i1 %cmp74, label %if.then.75, label %if.end.136

if.then.75:                                       ; preds = %if.end.65
  br label %do.body.76

do.body.76:                                       ; preds = %if.then.75
  %71 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %v77 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %71, i32 0, i32 2
  %72 = load %struct.Action**, %struct.Action*** %v77, align 8
  %tobool78 = icmp ne %struct.Action** %72, null
  br i1 %tobool78, label %if.else.91, label %if.then.79

if.then.79:                                       ; preds = %do.body.76
  %73 = load i32, i32* %bb, align 4
  %inc80 = add nsw i32 %73, 1
  store i32 %inc80, i32* %bb, align 4
  %idxprom81 = sext i32 %73 to i64
  %74 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %v82 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %74, i32 0, i32 2
  %75 = load %struct.Action**, %struct.Action*** %v82, align 8
  %arrayidx83 = getelementptr inbounds %struct.Action*, %struct.Action** %75, i64 %idxprom81
  %76 = load %struct.Action*, %struct.Action** %arrayidx83, align 8
  %77 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %n84 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %77, i32 0, i32 0
  %78 = load i32, i32* %n84, align 4
  %inc85 = add i32 %78, 1
  store i32 %inc85, i32* %n84, align 4
  %idxprom86 = zext i32 %78 to i64
  %79 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %e87 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %79, i32 0, i32 3
  %arraydecay88 = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e87, i32 0, i32 0
  %80 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %v89 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %80, i32 0, i32 2
  store %struct.Action** %arraydecay88, %struct.Action*** %v89, align 8
  %arrayidx90 = getelementptr inbounds %struct.Action*, %struct.Action** %arraydecay88, i64 %idxprom86
  store %struct.Action* %76, %struct.Action** %arrayidx90, align 8
  br label %do.end.131

if.else.91:                                       ; preds = %do.body.76
  %81 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %v92 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %81, i32 0, i32 2
  %82 = load %struct.Action**, %struct.Action*** %v92, align 8
  %83 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %e93 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %83, i32 0, i32 3
  %arraydecay94 = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e93, i32 0, i32 0
  %cmp95 = icmp eq %struct.Action** %82, %arraydecay94
  br i1 %cmp95, label %if.then.96, label %if.else.110

if.then.96:                                       ; preds = %if.else.91
  %84 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %n97 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %84, i32 0, i32 0
  %85 = load i32, i32* %n97, align 4
  %cmp98 = icmp ult i32 %85, 3
  br i1 %cmp98, label %if.then.99, label %if.end.109

if.then.99:                                       ; preds = %if.then.96
  %86 = load i32, i32* %bb, align 4
  %inc100 = add nsw i32 %86, 1
  store i32 %inc100, i32* %bb, align 4
  %idxprom101 = sext i32 %86 to i64
  %87 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %v102 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %87, i32 0, i32 2
  %88 = load %struct.Action**, %struct.Action*** %v102, align 8
  %arrayidx103 = getelementptr inbounds %struct.Action*, %struct.Action** %88, i64 %idxprom101
  %89 = load %struct.Action*, %struct.Action** %arrayidx103, align 8
  %90 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %n104 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %90, i32 0, i32 0
  %91 = load i32, i32* %n104, align 4
  %inc105 = add i32 %91, 1
  store i32 %inc105, i32* %n104, align 4
  %idxprom106 = zext i32 %91 to i64
  %92 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %v107 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %92, i32 0, i32 2
  %93 = load %struct.Action**, %struct.Action*** %v107, align 8
  %arrayidx108 = getelementptr inbounds %struct.Action*, %struct.Action** %93, i64 %idxprom106
  store %struct.Action* %89, %struct.Action** %arrayidx108, align 8
  br label %do.end.131

if.end.109:                                       ; preds = %if.then.96
  br label %if.end.125

if.else.110:                                      ; preds = %if.else.91
  %94 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %n111 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %94, i32 0, i32 0
  %95 = load i32, i32* %n111, align 4
  %and112 = and i32 %95, 7
  %tobool113 = icmp ne i32 %and112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.124

if.then.114:                                      ; preds = %if.else.110
  %96 = load i32, i32* %bb, align 4
  %inc115 = add nsw i32 %96, 1
  store i32 %inc115, i32* %bb, align 4
  %idxprom116 = sext i32 %96 to i64
  %97 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %v117 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %97, i32 0, i32 2
  %98 = load %struct.Action**, %struct.Action*** %v117, align 8
  %arrayidx118 = getelementptr inbounds %struct.Action*, %struct.Action** %98, i64 %idxprom116
  %99 = load %struct.Action*, %struct.Action** %arrayidx118, align 8
  %100 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %n119 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %100, i32 0, i32 0
  %101 = load i32, i32* %n119, align 4
  %inc120 = add i32 %101, 1
  store i32 %inc120, i32* %n119, align 4
  %idxprom121 = zext i32 %101 to i64
  %102 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %v122 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %102, i32 0, i32 2
  %103 = load %struct.Action**, %struct.Action*** %v122, align 8
  %arrayidx123 = getelementptr inbounds %struct.Action*, %struct.Action** %103, i64 %idxprom121
  store %struct.Action* %99, %struct.Action** %arrayidx123, align 8
  br label %do.end.131

if.end.124:                                       ; preds = %if.else.110
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.end.109
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125
  %104 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %105 = bitcast %struct.VecAction* %104 to i8*
  %106 = load i32, i32* %bb, align 4
  %inc127 = add nsw i32 %106, 1
  store i32 %inc127, i32* %bb, align 4
  %idxprom128 = sext i32 %106 to i64
  %107 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %v129 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %107, i32 0, i32 2
  %108 = load %struct.Action**, %struct.Action*** %v129, align 8
  %arrayidx130 = getelementptr inbounds %struct.Action*, %struct.Action** %108, i64 %idxprom128
  %109 = load %struct.Action*, %struct.Action** %arrayidx130, align 8
  %110 = bitcast %struct.Action* %109 to i8*
  call void @vec_add_internal(i8* %105, i8* %110)
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.126, %if.then.114, %if.then.99, %if.then.79
  %111 = load i32, i32* %bb, align 4
  %112 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %n132 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %112, i32 0, i32 0
  %113 = load i32, i32* %n132, align 4
  %cmp133 = icmp uge i32 %111, %113
  br i1 %cmp133, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %do.end.131
  br label %while.end.138

if.end.135:                                       ; preds = %do.end.131
  br label %Lagainb

if.end.136:                                       ; preds = %if.end.65
  %114 = load i32, i32* %cc, align 4
  %inc137 = add nsw i32 %114, 1
  store i32 %inc137, i32* %cc, align 4
  br label %Lagainc

while.end.138:                                    ; preds = %if.then.134, %while.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @action_intersect(%struct.VecAction* %a, %struct.VecAction* %b, %struct.VecAction* %c) #0 {
entry:
  %a.addr = alloca %struct.VecAction*, align 8
  %b.addr = alloca %struct.VecAction*, align 8
  %c.addr = alloca %struct.VecAction*, align 8
  %bb = alloca i32, align 4
  %cc = alloca i32, align 4
  store %struct.VecAction* %a, %struct.VecAction** %a.addr, align 8
  store %struct.VecAction* %b, %struct.VecAction** %b.addr, align 8
  store %struct.VecAction* %c, %struct.VecAction** %c.addr, align 8
  store i32 0, i32* %bb, align 4
  store i32 0, i32* %cc, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %do.end
  %0 = load i32, i32* %bb, align 4
  %1 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %n = getelementptr inbounds %struct.VecAction, %struct.VecAction* %1, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp uge i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %Lagainc

Lagainc:                                          ; preds = %if.end.76, %if.end
  %3 = load i32, i32* %cc, align 4
  %4 = load %struct.VecAction*, %struct.VecAction** %c.addr, align 8
  %n1 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %4, i32 0, i32 0
  %5 = load i32, i32* %n1, align 4
  %cmp2 = icmp uge i32 %3, %5
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %Lagainc
  br label %while.end

if.end.4:                                         ; preds = %Lagainc
  br label %Lagainb

Lagainb:                                          ; preds = %if.end.75, %if.end.4
  %6 = load i32, i32* %bb, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %v = getelementptr inbounds %struct.VecAction, %struct.VecAction* %7, i32 0, i32 2
  %8 = load %struct.Action**, %struct.Action*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Action*, %struct.Action** %8, i64 %idxprom
  %9 = load %struct.Action*, %struct.Action** %arrayidx, align 8
  %index = getelementptr inbounds %struct.Action, %struct.Action* %9, i32 0, i32 4
  %10 = load i32, i32* %index, align 4
  %11 = load i32, i32* %cc, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.VecAction*, %struct.VecAction** %c.addr, align 8
  %v6 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %12, i32 0, i32 2
  %13 = load %struct.Action**, %struct.Action*** %v6, align 8
  %arrayidx7 = getelementptr inbounds %struct.Action*, %struct.Action** %13, i64 %idxprom5
  %14 = load %struct.Action*, %struct.Action** %arrayidx7, align 8
  %index8 = getelementptr inbounds %struct.Action, %struct.Action* %14, i32 0, i32 4
  %15 = load i32, i32* %index8, align 4
  %cmp9 = icmp eq i32 %10, %15
  br i1 %cmp9, label %if.then.10, label %if.end.60

if.then.10:                                       ; preds = %Lagainb
  br label %do.body

do.body:                                          ; preds = %if.then.10
  %16 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %v11 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %16, i32 0, i32 2
  %17 = load %struct.Action**, %struct.Action*** %v11, align 8
  %tobool = icmp ne %struct.Action** %17, null
  br i1 %tobool, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %do.body
  %18 = load i32, i32* %bb, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %bb, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %v14 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %19, i32 0, i32 2
  %20 = load %struct.Action**, %struct.Action*** %v14, align 8
  %arrayidx15 = getelementptr inbounds %struct.Action*, %struct.Action** %20, i64 %idxprom13
  %21 = load %struct.Action*, %struct.Action** %arrayidx15, align 8
  %22 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %n16 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %22, i32 0, i32 0
  %23 = load i32, i32* %n16, align 4
  %inc17 = add i32 %23, 1
  store i32 %inc17, i32* %n16, align 4
  %idxprom18 = zext i32 %23 to i64
  %24 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %e = getelementptr inbounds %struct.VecAction, %struct.VecAction* %24, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e, i32 0, i32 0
  %25 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %v19 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %25, i32 0, i32 2
  store %struct.Action** %arraydecay, %struct.Action*** %v19, align 8
  %arrayidx20 = getelementptr inbounds %struct.Action*, %struct.Action** %arraydecay, i64 %idxprom18
  store %struct.Action* %21, %struct.Action** %arrayidx20, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %26 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %v21 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %26, i32 0, i32 2
  %27 = load %struct.Action**, %struct.Action*** %v21, align 8
  %28 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %e22 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %28, i32 0, i32 3
  %arraydecay23 = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e22, i32 0, i32 0
  %cmp24 = icmp eq %struct.Action** %27, %arraydecay23
  br i1 %cmp24, label %if.then.25, label %if.else.39

if.then.25:                                       ; preds = %if.else
  %29 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %n26 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %29, i32 0, i32 0
  %30 = load i32, i32* %n26, align 4
  %cmp27 = icmp ult i32 %30, 3
  br i1 %cmp27, label %if.then.28, label %if.end.38

if.then.28:                                       ; preds = %if.then.25
  %31 = load i32, i32* %bb, align 4
  %inc29 = add nsw i32 %31, 1
  store i32 %inc29, i32* %bb, align 4
  %idxprom30 = sext i32 %31 to i64
  %32 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %v31 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %32, i32 0, i32 2
  %33 = load %struct.Action**, %struct.Action*** %v31, align 8
  %arrayidx32 = getelementptr inbounds %struct.Action*, %struct.Action** %33, i64 %idxprom30
  %34 = load %struct.Action*, %struct.Action** %arrayidx32, align 8
  %35 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %n33 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %35, i32 0, i32 0
  %36 = load i32, i32* %n33, align 4
  %inc34 = add i32 %36, 1
  store i32 %inc34, i32* %n33, align 4
  %idxprom35 = zext i32 %36 to i64
  %37 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %v36 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %37, i32 0, i32 2
  %38 = load %struct.Action**, %struct.Action*** %v36, align 8
  %arrayidx37 = getelementptr inbounds %struct.Action*, %struct.Action** %38, i64 %idxprom35
  store %struct.Action* %34, %struct.Action** %arrayidx37, align 8
  br label %do.end

if.end.38:                                        ; preds = %if.then.25
  br label %if.end.53

if.else.39:                                       ; preds = %if.else
  %39 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %n40 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %39, i32 0, i32 0
  %40 = load i32, i32* %n40, align 4
  %and = and i32 %40, 7
  %tobool41 = icmp ne i32 %and, 0
  br i1 %tobool41, label %if.then.42, label %if.end.52

if.then.42:                                       ; preds = %if.else.39
  %41 = load i32, i32* %bb, align 4
  %inc43 = add nsw i32 %41, 1
  store i32 %inc43, i32* %bb, align 4
  %idxprom44 = sext i32 %41 to i64
  %42 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %v45 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %42, i32 0, i32 2
  %43 = load %struct.Action**, %struct.Action*** %v45, align 8
  %arrayidx46 = getelementptr inbounds %struct.Action*, %struct.Action** %43, i64 %idxprom44
  %44 = load %struct.Action*, %struct.Action** %arrayidx46, align 8
  %45 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %n47 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %45, i32 0, i32 0
  %46 = load i32, i32* %n47, align 4
  %inc48 = add i32 %46, 1
  store i32 %inc48, i32* %n47, align 4
  %idxprom49 = zext i32 %46 to i64
  %47 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %v50 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %47, i32 0, i32 2
  %48 = load %struct.Action**, %struct.Action*** %v50, align 8
  %arrayidx51 = getelementptr inbounds %struct.Action*, %struct.Action** %48, i64 %idxprom49
  store %struct.Action* %44, %struct.Action** %arrayidx51, align 8
  br label %do.end

if.end.52:                                        ; preds = %if.else.39
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.38
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53
  %49 = load %struct.VecAction*, %struct.VecAction** %a.addr, align 8
  %50 = bitcast %struct.VecAction* %49 to i8*
  %51 = load i32, i32* %bb, align 4
  %inc55 = add nsw i32 %51, 1
  store i32 %inc55, i32* %bb, align 4
  %idxprom56 = sext i32 %51 to i64
  %52 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %v57 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %52, i32 0, i32 2
  %53 = load %struct.Action**, %struct.Action*** %v57, align 8
  %arrayidx58 = getelementptr inbounds %struct.Action*, %struct.Action** %53, i64 %idxprom56
  %54 = load %struct.Action*, %struct.Action** %arrayidx58, align 8
  %55 = bitcast %struct.Action* %54 to i8*
  call void @vec_add_internal(i8* %50, i8* %55)
  br label %do.end

do.end:                                           ; preds = %if.end.54, %if.then.42, %if.then.28, %if.then.12
  %56 = load i32, i32* %cc, align 4
  %inc59 = add nsw i32 %56, 1
  store i32 %inc59, i32* %cc, align 4
  br label %while.body

if.end.60:                                        ; preds = %Lagainb
  %57 = load i32, i32* %bb, align 4
  %idxprom61 = sext i32 %57 to i64
  %58 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %v62 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %58, i32 0, i32 2
  %59 = load %struct.Action**, %struct.Action*** %v62, align 8
  %arrayidx63 = getelementptr inbounds %struct.Action*, %struct.Action** %59, i64 %idxprom61
  %60 = load %struct.Action*, %struct.Action** %arrayidx63, align 8
  %index64 = getelementptr inbounds %struct.Action, %struct.Action* %60, i32 0, i32 4
  %61 = load i32, i32* %index64, align 4
  %62 = load i32, i32* %cc, align 4
  %idxprom65 = sext i32 %62 to i64
  %63 = load %struct.VecAction*, %struct.VecAction** %c.addr, align 8
  %v66 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %63, i32 0, i32 2
  %64 = load %struct.Action**, %struct.Action*** %v66, align 8
  %arrayidx67 = getelementptr inbounds %struct.Action*, %struct.Action** %64, i64 %idxprom65
  %65 = load %struct.Action*, %struct.Action** %arrayidx67, align 8
  %index68 = getelementptr inbounds %struct.Action, %struct.Action* %65, i32 0, i32 4
  %66 = load i32, i32* %index68, align 4
  %cmp69 = icmp ult i32 %61, %66
  br i1 %cmp69, label %if.then.70, label %if.end.76

if.then.70:                                       ; preds = %if.end.60
  %67 = load i32, i32* %bb, align 4
  %inc71 = add nsw i32 %67, 1
  store i32 %inc71, i32* %bb, align 4
  %68 = load i32, i32* %bb, align 4
  %69 = load %struct.VecAction*, %struct.VecAction** %b.addr, align 8
  %n72 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %69, i32 0, i32 0
  %70 = load i32, i32* %n72, align 4
  %cmp73 = icmp uge i32 %68, %70
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.then.70
  br label %while.end

if.end.75:                                        ; preds = %if.then.70
  br label %Lagainb

if.end.76:                                        ; preds = %if.end.60
  %71 = load i32, i32* %cc, align 4
  %inc77 = add nsw i32 %71, 1
  store i32 %inc77, i32* %cc, align 4
  br label %Lagainc

while.end:                                        ; preds = %if.then.74, %if.then.3, %if.then
  ret void
}

declare i8* @set_add_fn(i8*, i8*, %struct.hash_fns_t*) #2

; Function Attrs: nounwind uwtable
define internal i32 @trans_hash_fn(%struct.ScanStateTransition* %a, %struct.hash_fns_t* %fns) #0 {
entry:
  %a.addr = alloca %struct.ScanStateTransition*, align 8
  %fns.addr = alloca %struct.hash_fns_t*, align 8
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.ScanStateTransition* %a, %struct.ScanStateTransition** %a.addr, align 8
  store %struct.hash_fns_t* %fns, %struct.hash_fns_t** %fns.addr, align 8
  store i32 0, i32* %h, align 4
  %0 = load %struct.hash_fns_t*, %struct.hash_fns_t** %fns.addr, align 8
  %data = getelementptr inbounds %struct.hash_fns_t, %struct.hash_fns_t* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %data, i32 0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %a.addr, align 8
  %live_diff = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %3, i32 0, i32 1
  %n = getelementptr inbounds %struct.VecAction, %struct.VecAction* %live_diff, i32 0, i32 0
  %4 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %a.addr, align 8
  %live_diff1 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %6, i32 0, i32 1
  %v = getelementptr inbounds %struct.VecAction, %struct.VecAction* %live_diff1, i32 0, i32 2
  %7 = load %struct.Action**, %struct.Action*** %v, align 8
  %arrayidx2 = getelementptr inbounds %struct.Action*, %struct.Action** %7, i64 %idxprom
  %8 = load %struct.Action*, %struct.Action** %arrayidx2, align 8
  %index = getelementptr inbounds %struct.Action, %struct.Action* %8, i32 0, i32 4
  %9 = load i32, i32* %index, align 4
  %mul = mul i32 3, %9
  %10 = load i32, i32* %h, align 4
  %add = add i32 %10, %mul
  store i32 %add, i32* %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.14, %if.end
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %a.addr, align 8
  %accepts_diff = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %13, i32 0, i32 2
  %n4 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts_diff, i32 0, i32 0
  %14 = load i32, i32* %n4, align 4
  %cmp5 = icmp ult i32 %12, %14
  br i1 %cmp5, label %for.body.6, label %for.end.16

for.body.6:                                       ; preds = %for.cond.3
  %15 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %a.addr, align 8
  %accepts_diff8 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %16, i32 0, i32 2
  %v9 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts_diff8, i32 0, i32 2
  %17 = load %struct.Action**, %struct.Action*** %v9, align 8
  %arrayidx10 = getelementptr inbounds %struct.Action*, %struct.Action** %17, i64 %idxprom7
  %18 = load %struct.Action*, %struct.Action** %arrayidx10, align 8
  %index11 = getelementptr inbounds %struct.Action, %struct.Action* %18, i32 0, i32 4
  %19 = load i32, i32* %index11, align 4
  %mul12 = mul i32 3, %19
  %20 = load i32, i32* %h, align 4
  %add13 = add i32 %20, %mul12
  store i32 %add13, i32* %h, align 4
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.6
  %21 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %21, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond.3

for.end.16:                                       ; preds = %for.cond.3
  %22 = load i32, i32* %h, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @trans_cmp_fn(%struct.ScanStateTransition* %a, %struct.ScanStateTransition* %b, %struct.hash_fns_t* %fns) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.ScanStateTransition*, align 8
  %b.addr = alloca %struct.ScanStateTransition*, align 8
  %fns.addr = alloca %struct.hash_fns_t*, align 8
  %i = alloca i32, align 4
  store %struct.ScanStateTransition* %a, %struct.ScanStateTransition** %a.addr, align 8
  store %struct.ScanStateTransition* %b, %struct.ScanStateTransition** %b.addr, align 8
  store %struct.hash_fns_t* %fns, %struct.hash_fns_t** %fns.addr, align 8
  %0 = load %struct.hash_fns_t*, %struct.hash_fns_t** %fns.addr, align 8
  %data = getelementptr inbounds %struct.hash_fns_t, %struct.hash_fns_t* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %data, i32 0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end.4, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %a.addr, align 8
  %live_diff = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %2, i32 0, i32 1
  %n = getelementptr inbounds %struct.VecAction, %struct.VecAction* %live_diff, i32 0, i32 0
  %3 = load i32, i32* %n, align 4
  %4 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %b.addr, align 8
  %live_diff1 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %4, i32 0, i32 1
  %n2 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %live_diff1, i32 0, i32 0
  %5 = load i32, i32* %n2, align 4
  %cmp = icmp ne i32 %3, %5
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %6 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %a.addr, align 8
  %accepts_diff = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %6, i32 0, i32 2
  %n5 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts_diff, i32 0, i32 0
  %7 = load i32, i32* %n5, align 4
  %8 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %b.addr, align 8
  %accepts_diff6 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %8, i32 0, i32 2
  %n7 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts_diff6, i32 0, i32 0
  %9 = load i32, i32* %n7, align 4
  %cmp8 = icmp ne i32 %7, %9
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.4
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.4
  %10 = load %struct.hash_fns_t*, %struct.hash_fns_t** %fns.addr, align 8
  %data11 = getelementptr inbounds %struct.hash_fns_t, %struct.hash_fns_t* %10, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [2 x i8*], [2 x i8*]* %data11, i32 0, i64 0
  %11 = load i8*, i8** %arrayidx12, align 8
  %tobool13 = icmp ne i8* %11, null
  br i1 %tobool13, label %if.end.27, label %if.then.14

if.then.14:                                       ; preds = %if.end.10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.14
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %a.addr, align 8
  %live_diff15 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %13, i32 0, i32 1
  %n16 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %live_diff15, i32 0, i32 0
  %14 = load i32, i32* %n16, align 4
  %cmp17 = icmp ult i32 %12, %14
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %a.addr, align 8
  %live_diff18 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %16, i32 0, i32 1
  %v = getelementptr inbounds %struct.VecAction, %struct.VecAction* %live_diff18, i32 0, i32 2
  %17 = load %struct.Action**, %struct.Action*** %v, align 8
  %arrayidx19 = getelementptr inbounds %struct.Action*, %struct.Action** %17, i64 %idxprom
  %18 = load %struct.Action*, %struct.Action** %arrayidx19, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %b.addr, align 8
  %live_diff21 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %20, i32 0, i32 1
  %v22 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %live_diff21, i32 0, i32 2
  %21 = load %struct.Action**, %struct.Action*** %v22, align 8
  %arrayidx23 = getelementptr inbounds %struct.Action*, %struct.Action** %21, i64 %idxprom20
  %22 = load %struct.Action*, %struct.Action** %arrayidx23, align 8
  %cmp24 = icmp ne %struct.Action* %18, %22
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.27

if.end.27:                                        ; preds = %for.end, %if.end.10
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.44, %if.end.27
  %24 = load i32, i32* %i, align 4
  %25 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %a.addr, align 8
  %accepts_diff29 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %25, i32 0, i32 2
  %n30 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts_diff29, i32 0, i32 0
  %26 = load i32, i32* %n30, align 4
  %cmp31 = icmp ult i32 %24, %26
  br i1 %cmp31, label %for.body.32, label %for.end.46

for.body.32:                                      ; preds = %for.cond.28
  %27 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %27 to i64
  %28 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %a.addr, align 8
  %accepts_diff34 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %28, i32 0, i32 2
  %v35 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts_diff34, i32 0, i32 2
  %29 = load %struct.Action**, %struct.Action*** %v35, align 8
  %arrayidx36 = getelementptr inbounds %struct.Action*, %struct.Action** %29, i64 %idxprom33
  %30 = load %struct.Action*, %struct.Action** %arrayidx36, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %31 to i64
  %32 = load %struct.ScanStateTransition*, %struct.ScanStateTransition** %b.addr, align 8
  %accepts_diff38 = getelementptr inbounds %struct.ScanStateTransition, %struct.ScanStateTransition* %32, i32 0, i32 2
  %v39 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %accepts_diff38, i32 0, i32 2
  %33 = load %struct.Action**, %struct.Action*** %v39, align 8
  %arrayidx40 = getelementptr inbounds %struct.Action*, %struct.Action** %33, i64 %idxprom37
  %34 = load %struct.Action*, %struct.Action** %arrayidx40, align 8
  %cmp41 = icmp ne %struct.Action* %30, %34
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.body.32
  store i32 1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %for.body.32
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %35 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %35, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.28

for.end.46:                                       ; preds = %for.cond.28
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.46, %if.then.42, %if.then.25, %if.then.9, %if.then.3
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal void @free_NFAState(%struct.NFAState* %y) #0 {
entry:
  %y.addr = alloca %struct.NFAState*, align 8
  %i = alloca i32, align 4
  store %struct.NFAState* %y, %struct.NFAState** %y.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.NFAState*, %struct.NFAState** %y.addr, align 8
  %chars = getelementptr inbounds %struct.NFAState, %struct.NFAState* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars, i32 0, i64 %idxprom
  %v = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx, i32 0, i32 2
  %3 = load %struct.NFAState**, %struct.NFAState*** %v, align 8
  %tobool = icmp ne %struct.NFAState** %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.NFAState*, %struct.NFAState** %y.addr, align 8
  %chars2 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %5, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars2, i32 0, i64 %idxprom1
  %v4 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx3, i32 0, i32 2
  %6 = load %struct.NFAState**, %struct.NFAState*** %v4, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load %struct.NFAState*, %struct.NFAState** %y.addr, align 8
  %chars6 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %8, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars6, i32 0, i64 %idxprom5
  %e = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx7, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e, i32 0, i32 0
  %cmp8 = icmp ne %struct.NFAState** %6, %arraydecay
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %10 = load %struct.NFAState*, %struct.NFAState** %y.addr, align 8
  %chars10 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %10, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars10, i32 0, i64 %idxprom9
  %v12 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx11, i32 0, i32 2
  %11 = load %struct.NFAState**, %struct.NFAState*** %v12, align 8
  %12 = bitcast %struct.NFAState** %11 to i8*
  call void @free(i8* %12) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  br label %do.body.13

do.body.13:                                       ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load %struct.NFAState*, %struct.NFAState** %y.addr, align 8
  %chars15 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %14, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars15, i32 0, i64 %idxprom14
  %n = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx16, i32 0, i32 0
  store i32 0, i32* %n, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %15 to i64
  %16 = load %struct.NFAState*, %struct.NFAState** %y.addr, align 8
  %chars18 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %16, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [256 x %struct.anon.9], [256 x %struct.anon.9]* %chars18, i32 0, i64 %idxprom17
  %v20 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %arrayidx19, i32 0, i32 2
  store %struct.NFAState** null, %struct.NFAState*** %v20, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.13
  br label %do.end.21

do.end.21:                                        ; preds = %do.end
  br label %for.inc

for.inc:                                          ; preds = %do.end.21
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.22

do.body.22:                                       ; preds = %for.end
  %18 = load %struct.NFAState*, %struct.NFAState** %y.addr, align 8
  %epsilon = getelementptr inbounds %struct.NFAState, %struct.NFAState* %18, i32 0, i32 2
  %v23 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon, i32 0, i32 2
  %19 = load %struct.NFAState**, %struct.NFAState*** %v23, align 8
  %tobool24 = icmp ne %struct.NFAState** %19, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.end.35

land.lhs.true.25:                                 ; preds = %do.body.22
  %20 = load %struct.NFAState*, %struct.NFAState** %y.addr, align 8
  %epsilon26 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %20, i32 0, i32 2
  %v27 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon26, i32 0, i32 2
  %21 = load %struct.NFAState**, %struct.NFAState*** %v27, align 8
  %22 = load %struct.NFAState*, %struct.NFAState** %y.addr, align 8
  %epsilon28 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %22, i32 0, i32 2
  %e29 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon28, i32 0, i32 3
  %arraydecay30 = getelementptr inbounds [3 x %struct.NFAState*], [3 x %struct.NFAState*]* %e29, i32 0, i32 0
  %cmp31 = icmp ne %struct.NFAState** %21, %arraydecay30
  br i1 %cmp31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %land.lhs.true.25
  %23 = load %struct.NFAState*, %struct.NFAState** %y.addr, align 8
  %epsilon33 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %23, i32 0, i32 2
  %v34 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon33, i32 0, i32 2
  %24 = load %struct.NFAState**, %struct.NFAState*** %v34, align 8
  %25 = bitcast %struct.NFAState** %24 to i8*
  call void @free(i8* %25) #1
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %land.lhs.true.25, %do.body.22
  br label %do.body.36

do.body.36:                                       ; preds = %if.end.35
  %26 = load %struct.NFAState*, %struct.NFAState** %y.addr, align 8
  %epsilon37 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %26, i32 0, i32 2
  %n38 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon37, i32 0, i32 0
  store i32 0, i32* %n38, align 4
  %27 = load %struct.NFAState*, %struct.NFAState** %y.addr, align 8
  %epsilon39 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %27, i32 0, i32 2
  %v40 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %epsilon39, i32 0, i32 2
  store %struct.NFAState** null, %struct.NFAState*** %v40, align 8
  br label %do.end.41

do.end.41:                                        ; preds = %do.body.36
  br label %do.end.42

do.end.42:                                        ; preds = %do.end.41
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.42
  %28 = load %struct.NFAState*, %struct.NFAState** %y.addr, align 8
  %accepts = getelementptr inbounds %struct.NFAState, %struct.NFAState* %28, i32 0, i32 3
  %v44 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts, i32 0, i32 2
  %29 = load %struct.Action**, %struct.Action*** %v44, align 8
  %tobool45 = icmp ne %struct.Action** %29, null
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.56

land.lhs.true.46:                                 ; preds = %do.body.43
  %30 = load %struct.NFAState*, %struct.NFAState** %y.addr, align 8
  %accepts47 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %30, i32 0, i32 3
  %v48 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts47, i32 0, i32 2
  %31 = load %struct.Action**, %struct.Action*** %v48, align 8
  %32 = load %struct.NFAState*, %struct.NFAState** %y.addr, align 8
  %accepts49 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %32, i32 0, i32 3
  %e50 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts49, i32 0, i32 3
  %arraydecay51 = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e50, i32 0, i32 0
  %cmp52 = icmp ne %struct.Action** %31, %arraydecay51
  br i1 %cmp52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %land.lhs.true.46
  %33 = load %struct.NFAState*, %struct.NFAState** %y.addr, align 8
  %accepts54 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %33, i32 0, i32 3
  %v55 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts54, i32 0, i32 2
  %34 = load %struct.Action**, %struct.Action*** %v55, align 8
  %35 = bitcast %struct.Action** %34 to i8*
  call void @free(i8* %35) #1
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %land.lhs.true.46, %do.body.43
  br label %do.body.57

do.body.57:                                       ; preds = %if.end.56
  %36 = load %struct.NFAState*, %struct.NFAState** %y.addr, align 8
  %accepts58 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %36, i32 0, i32 3
  %n59 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts58, i32 0, i32 0
  store i32 0, i32* %n59, align 4
  %37 = load %struct.NFAState*, %struct.NFAState** %y.addr, align 8
  %accepts60 = getelementptr inbounds %struct.NFAState, %struct.NFAState* %37, i32 0, i32 3
  %v61 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %accepts60, i32 0, i32 2
  store %struct.Action** null, %struct.Action*** %v61, align 8
  br label %do.end.62

do.end.62:                                        ; preds = %do.body.57
  br label %do.end.63

do.end.63:                                        ; preds = %do.end.62
  %38 = load %struct.NFAState*, %struct.NFAState** %y.addr, align 8
  %39 = bitcast %struct.NFAState* %38 to i8*
  call void @free(i8* %39) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
