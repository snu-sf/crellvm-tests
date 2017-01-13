; ModuleID = './MultiSource.Applications.d/12.lr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

; Function Attrs: nounwind uwtable
define i32 @elem_symbol(%struct.Grammar* %g, %struct.Elem* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.Grammar*, align 8
  %e.addr = alloca %struct.Elem*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store %struct.Elem* %e, %struct.Elem** %e.addr, align 8
  %0 = load %struct.Elem*, %struct.Elem** %e.addr, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %0, i32 0, i32 0
  %1 = load i32, i32* %kind, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.Elem*, %struct.Elem** %e.addr, align 8
  %e1 = getelementptr inbounds %struct.Elem, %struct.Elem* %2, i32 0, i32 3
  %nterm = bitcast %union.anon* %e1 to %struct.Production**
  %3 = load %struct.Production*, %struct.Production** %nterm, align 8
  %index = getelementptr inbounds %struct.Production, %struct.Production* %3, i32 0, i32 3
  %4 = load i32, i32* %index, align 4
  store i32 %4, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %5, i32 0, i32 1
  %n = getelementptr inbounds %struct.anon, %struct.anon* %productions, i32 0, i32 0
  %6 = load i32, i32* %n, align 4
  %7 = load %struct.Elem*, %struct.Elem** %e.addr, align 8
  %e2 = getelementptr inbounds %struct.Elem, %struct.Elem* %7, i32 0, i32 3
  %term = bitcast %union.anon* %e2 to %struct.Term**
  %8 = load %struct.Term*, %struct.Term** %term, align 8
  %index3 = getelementptr inbounds %struct.Term, %struct.Term* %8, i32 0, i32 1
  %9 = load i32, i32* %index3, align 4
  %add = add i32 %6, %9
  store i32 %add, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @sort_VecAction(%struct.VecAction* %v) #0 {
entry:
  %v.addr = alloca %struct.VecAction*, align 8
  store %struct.VecAction* %v, %struct.VecAction** %v.addr, align 8
  %0 = load %struct.VecAction*, %struct.VecAction** %v.addr, align 8
  %v1 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %0, i32 0, i32 2
  %1 = load %struct.Action**, %struct.Action*** %v1, align 8
  %2 = bitcast %struct.Action** %1 to i8*
  %3 = load %struct.VecAction*, %struct.VecAction** %v.addr, align 8
  %n = getelementptr inbounds %struct.VecAction, %struct.VecAction* %3, i32 0, i32 0
  %4 = load i32, i32* %n, align 4
  %conv = zext i32 %4 to i64
  call void @qsort(i8* %2, i64 %conv, i64 8, i32 (i8*, i8*)* @actioncmp)
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @actioncmp(i8* %aa, i8* %bb) #0 {
entry:
  %aa.addr = alloca i8*, align 8
  %bb.addr = alloca i8*, align 8
  %a = alloca %struct.Action*, align 8
  %b = alloca %struct.Action*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %aa, i8** %aa.addr, align 8
  store i8* %bb, i8** %bb.addr, align 8
  %0 = load i8*, i8** %aa.addr, align 8
  %1 = bitcast i8* %0 to %struct.Action**
  %2 = load %struct.Action*, %struct.Action** %1, align 8
  store %struct.Action* %2, %struct.Action** %a, align 8
  %3 = load i8*, i8** %bb.addr, align 8
  %4 = bitcast i8* %3 to %struct.Action**
  %5 = load %struct.Action*, %struct.Action** %4, align 8
  store %struct.Action* %5, %struct.Action** %b, align 8
  %6 = load %struct.Action*, %struct.Action** %a, align 8
  %kind = getelementptr inbounds %struct.Action, %struct.Action* %6, i32 0, i32 0
  %7 = load i32, i32* %kind, align 4
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.Action*, %struct.Action** %a, align 8
  %term = getelementptr inbounds %struct.Action, %struct.Action* %8, i32 0, i32 1
  %9 = load %struct.Term*, %struct.Term** %term, align 8
  %index = getelementptr inbounds %struct.Term, %struct.Term* %9, i32 0, i32 1
  %10 = load i32, i32* %index, align 4
  %add = add i32 %10, 1000000
  store i32 %add, i32* %i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.Action*, %struct.Action** %a, align 8
  %rule = getelementptr inbounds %struct.Action, %struct.Action* %11, i32 0, i32 2
  %12 = load %struct.Rule*, %struct.Rule** %rule, align 8
  %index1 = getelementptr inbounds %struct.Rule, %struct.Rule* %12, i32 0, i32 0
  %13 = load i32, i32* %index1, align 4
  store i32 %13, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct.Action*, %struct.Action** %b, align 8
  %kind2 = getelementptr inbounds %struct.Action, %struct.Action* %14, i32 0, i32 0
  %15 = load i32, i32* %kind2, align 4
  %cmp3 = icmp eq i32 %15, 1
  br i1 %cmp3, label %if.then.4, label %if.else.8

if.then.4:                                        ; preds = %if.end
  %16 = load %struct.Action*, %struct.Action** %b, align 8
  %term5 = getelementptr inbounds %struct.Action, %struct.Action* %16, i32 0, i32 1
  %17 = load %struct.Term*, %struct.Term** %term5, align 8
  %index6 = getelementptr inbounds %struct.Term, %struct.Term* %17, i32 0, i32 1
  %18 = load i32, i32* %index6, align 4
  %add7 = add i32 %18, 1000000
  store i32 %add7, i32* %j, align 4
  br label %if.end.11

if.else.8:                                        ; preds = %if.end
  %19 = load %struct.Action*, %struct.Action** %b, align 8
  %rule9 = getelementptr inbounds %struct.Action, %struct.Action* %19, i32 0, i32 2
  %20 = load %struct.Rule*, %struct.Rule** %rule9, align 8
  %index10 = getelementptr inbounds %struct.Rule, %struct.Rule* %20, i32 0, i32 0
  %21 = load i32, i32* %index10, align 4
  store i32 %21, i32* %j, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.8, %if.then.4
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %j, align 4
  %cmp12 = icmp sgt i32 %22, %23
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %j, align 4
  %cmp13 = icmp slt i32 %24, %25
  %cond = select i1 %cmp13, i32 -1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond14 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  ret i32 %cond14
}

; Function Attrs: nounwind uwtable
define %struct.State* @goto_State(%struct.State* %s, %struct.Elem* %e) #0 {
entry:
  %retval = alloca %struct.State*, align 8
  %s.addr = alloca %struct.State*, align 8
  %e.addr = alloca %struct.Elem*, align 8
  %i = alloca i32, align 4
  store %struct.State* %s, %struct.State** %s.addr, align 8
  store %struct.Elem* %e, %struct.Elem** %e.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos = getelementptr inbounds %struct.State, %struct.State* %1, i32 0, i32 4
  %n = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos1 = getelementptr inbounds %struct.State, %struct.State* %4, i32 0, i32 4
  %v = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos1, i32 0, i32 2
  %5 = load %struct.Goto**, %struct.Goto*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Goto*, %struct.Goto** %5, i64 %idxprom
  %6 = load %struct.Goto*, %struct.Goto** %arrayidx, align 8
  %elem = getelementptr inbounds %struct.Goto, %struct.Goto* %6, i32 0, i32 0
  %7 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %e2 = getelementptr inbounds %struct.Elem, %struct.Elem* %7, i32 0, i32 3
  %term_or_nterm = bitcast %union.anon* %e2 to i8**
  %8 = load i8*, i8** %term_or_nterm, align 8
  %9 = load %struct.Elem*, %struct.Elem** %e.addr, align 8
  %e3 = getelementptr inbounds %struct.Elem, %struct.Elem* %9, i32 0, i32 3
  %term_or_nterm4 = bitcast %union.anon* %e3 to i8**
  %10 = load i8*, i8** %term_or_nterm4, align 8
  %cmp5 = icmp eq i8* %8, %10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos7 = getelementptr inbounds %struct.State, %struct.State* %12, i32 0, i32 4
  %v8 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos7, i32 0, i32 2
  %13 = load %struct.Goto**, %struct.Goto*** %v8, align 8
  %arrayidx9 = getelementptr inbounds %struct.Goto*, %struct.Goto** %13, i64 %idxprom6
  %14 = load %struct.Goto*, %struct.Goto** %arrayidx9, align 8
  %state = getelementptr inbounds %struct.Goto, %struct.Goto* %14, i32 0, i32 1
  %15 = load %struct.State*, %struct.State** %state, align 8
  store %struct.State* %15, %struct.State** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.State* null, %struct.State** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %17 = load %struct.State*, %struct.State** %retval
  ret %struct.State* %17
}

; Function Attrs: nounwind uwtable
define void @build_LR_tables(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @init_LR(%struct.Grammar* %0)
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @build_LR_sets(%struct.Grammar* %1)
  %2 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @build_actions(%struct.Grammar* %2)
  %3 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @build_right_epsilon_hints(%struct.Grammar* %3)
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @build_error_recovery(%struct.Grammar* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_LR(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %action_count = getelementptr inbounds %struct.Grammar, %struct.Grammar* %0, i32 0, i32 27
  store i32 0, i32* %action_count, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @build_LR_sets(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %s = alloca %struct.State*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  %call = call %struct.State* @new_state()
  store %struct.State* %call, %struct.State** %s, align 8
  %0 = load %struct.State*, %struct.State** %s, align 8
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 1
  %v = getelementptr inbounds %struct.anon, %struct.anon* %productions, i32 0, i32 2
  %2 = load %struct.Production**, %struct.Production*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Production*, %struct.Production** %2, i64 0
  %3 = load %struct.Production*, %struct.Production** %arrayidx, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %3, i32 0, i32 2
  %v1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules, i32 0, i32 2
  %4 = load %struct.Rule**, %struct.Rule*** %v1, align 8
  %arrayidx2 = getelementptr inbounds %struct.Rule*, %struct.Rule** %4, i64 0
  %5 = load %struct.Rule*, %struct.Rule** %arrayidx2, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %5, i32 0, i32 6
  %v3 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems, i32 0, i32 2
  %6 = load %struct.Elem**, %struct.Elem*** %v3, align 8
  %arrayidx4 = getelementptr inbounds %struct.Elem*, %struct.Elem** %6, i64 0
  %7 = load %struct.Elem*, %struct.Elem** %arrayidx4, align 8
  %call5 = call i32 @insert_item(%struct.State* %0, %struct.Elem* %7)
  %8 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %9 = load %struct.State*, %struct.State** %s, align 8
  %call6 = call %struct.State* @build_closure(%struct.Grammar* %8, %struct.State* %9)
  %10 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @build_states_for_each_production(%struct.Grammar* %10)
  %11 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @build_new_states(%struct.Grammar* %11)
  %12 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @sort_Gotos(%struct.Grammar* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @build_actions(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %s = alloca %struct.State*, align 8
  %e = alloca %struct.Elem*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.42, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 3
  %n = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.44

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %x, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 3
  %v = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states1, i32 0, i32 2
  %5 = load %struct.State**, %struct.State*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.State*, %struct.State** %5, i64 %idxprom
  %6 = load %struct.State*, %struct.State** %arrayidx, align 8
  store %struct.State* %6, %struct.State** %s, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.39, %for.body
  %7 = load i32, i32* %y, align 4
  %8 = load %struct.State*, %struct.State** %s, align 8
  %items = getelementptr inbounds %struct.State, %struct.State* %8, i32 0, i32 2
  %n3 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items, i32 0, i32 0
  %9 = load i32, i32* %n3, align 4
  %cmp4 = icmp ult i32 %7, %9
  br i1 %cmp4, label %for.body.5, label %for.end.41

for.body.5:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %y, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.State*, %struct.State** %s, align 8
  %items7 = getelementptr inbounds %struct.State, %struct.State* %11, i32 0, i32 2
  %v8 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items7, i32 0, i32 2
  %12 = load %struct.Elem**, %struct.Elem*** %v8, align 8
  %arrayidx9 = getelementptr inbounds %struct.Elem*, %struct.Elem** %12, i64 %idxprom6
  %13 = load %struct.Elem*, %struct.Elem** %arrayidx9, align 8
  store %struct.Elem* %13, %struct.Elem** %e, align 8
  %14 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %14, i32 0, i32 0
  %15 = load i32, i32* %kind, align 4
  %cmp10 = icmp ne i32 %15, 3
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.5
  %16 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind11 = getelementptr inbounds %struct.Elem, %struct.Elem* %16, i32 0, i32 0
  %17 = load i32, i32* %kind11, align 4
  %cmp12 = icmp eq i32 %17, 1
  br i1 %cmp12, label %if.then.13, label %if.end.33

if.then.13:                                       ; preds = %if.then
  store i32 0, i32* %z, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %if.then.13
  %18 = load i32, i32* %z, align 4
  %19 = load %struct.State*, %struct.State** %s, align 8
  %gotos = getelementptr inbounds %struct.State, %struct.State* %19, i32 0, i32 4
  %n15 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos, i32 0, i32 0
  %20 = load i32, i32* %n15, align 4
  %cmp16 = icmp ult i32 %18, %20
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.14
  %21 = load i32, i32* %z, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load %struct.State*, %struct.State** %s, align 8
  %gotos19 = getelementptr inbounds %struct.State, %struct.State* %22, i32 0, i32 4
  %v20 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos19, i32 0, i32 2
  %23 = load %struct.Goto**, %struct.Goto*** %v20, align 8
  %arrayidx21 = getelementptr inbounds %struct.Goto*, %struct.Goto** %23, i64 %idxprom18
  %24 = load %struct.Goto*, %struct.Goto** %arrayidx21, align 8
  %elem = getelementptr inbounds %struct.Goto, %struct.Goto* %24, i32 0, i32 0
  %25 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %e22 = getelementptr inbounds %struct.Elem, %struct.Elem* %25, i32 0, i32 3
  %term = bitcast %union.anon* %e22 to %struct.Term**
  %26 = load %struct.Term*, %struct.Term** %term, align 8
  %27 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e23 = getelementptr inbounds %struct.Elem, %struct.Elem* %27, i32 0, i32 3
  %term24 = bitcast %union.anon* %e23 to %struct.Term**
  %28 = load %struct.Term*, %struct.Term** %term24, align 8
  %cmp25 = icmp eq %struct.Term* %26, %28
  br i1 %cmp25, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %for.body.17
  %29 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %30 = load %struct.State*, %struct.State** %s, align 8
  %31 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e27 = getelementptr inbounds %struct.Elem, %struct.Elem* %31, i32 0, i32 3
  %term28 = bitcast %union.anon* %e27 to %struct.Term**
  %32 = load %struct.Term*, %struct.Term** %term28, align 8
  %33 = load i32, i32* %z, align 4
  %idxprom29 = sext i32 %33 to i64
  %34 = load %struct.State*, %struct.State** %s, align 8
  %gotos30 = getelementptr inbounds %struct.State, %struct.State* %34, i32 0, i32 4
  %v31 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos30, i32 0, i32 2
  %35 = load %struct.Goto**, %struct.Goto*** %v31, align 8
  %arrayidx32 = getelementptr inbounds %struct.Goto*, %struct.Goto** %35, i64 %idxprom29
  %36 = load %struct.Goto*, %struct.Goto** %arrayidx32, align 8
  %state = getelementptr inbounds %struct.Goto, %struct.Goto* %36, i32 0, i32 1
  %37 = load %struct.State*, %struct.State** %state, align 8
  call void @add_action(%struct.Grammar* %29, %struct.State* %30, i32 1, %struct.Term* %32, %struct.Rule* null, %struct.State* %37)
  br label %if.end

if.end:                                           ; preds = %if.then.26, %for.body.17
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %38 = load i32, i32* %z, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %z, align 4
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %if.then
  br label %if.end.38

if.else:                                          ; preds = %for.body.5
  %39 = load %struct.Elem*, %struct.Elem** %e, align 8
  %rule = getelementptr inbounds %struct.Elem, %struct.Elem* %39, i32 0, i32 2
  %40 = load %struct.Rule*, %struct.Rule** %rule, align 8
  %prod = getelementptr inbounds %struct.Rule, %struct.Rule* %40, i32 0, i32 1
  %41 = load %struct.Production*, %struct.Production** %prod, align 8
  %index = getelementptr inbounds %struct.Production, %struct.Production* %41, i32 0, i32 3
  %42 = load i32, i32* %index, align 4
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.else
  %43 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %44 = load %struct.State*, %struct.State** %s, align 8
  %45 = load %struct.Elem*, %struct.Elem** %e, align 8
  %rule35 = getelementptr inbounds %struct.Elem, %struct.Elem* %45, i32 0, i32 2
  %46 = load %struct.Rule*, %struct.Rule** %rule35, align 8
  call void @add_action(%struct.Grammar* %43, %struct.State* %44, i32 2, %struct.Term* null, %struct.Rule* %46, %struct.State* null)
  br label %if.end.37

if.else.36:                                       ; preds = %if.else
  %47 = load %struct.State*, %struct.State** %s, align 8
  %accept = getelementptr inbounds %struct.State, %struct.State* %47, i32 0, i32 10
  %bf.load = load i8, i8* %accept, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %accept, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.33
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %48 = load i32, i32* %y, align 4
  %inc40 = add nsw i32 %48, 1
  store i32 %inc40, i32* %y, align 4
  br label %for.cond.2

for.end.41:                                       ; preds = %for.cond.2
  %49 = load %struct.State*, %struct.State** %s, align 8
  %shift_actions = getelementptr inbounds %struct.State, %struct.State* %49, i32 0, i32 5
  call void @sort_VecAction(%struct.VecAction* %shift_actions)
  %50 = load %struct.State*, %struct.State** %s, align 8
  %reduce_actions = getelementptr inbounds %struct.State, %struct.State* %50, i32 0, i32 6
  call void @sort_VecAction(%struct.VecAction* %reduce_actions)
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.end.41
  %51 = load i32, i32* %x, align 4
  %inc43 = add nsw i32 %51, 1
  store i32 %inc43, i32* %x, align 4
  br label %for.cond

for.end.44:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @build_right_epsilon_hints(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %s = alloca %struct.State*, align 8
  %ss = alloca %struct.State*, align 8
  %e = alloca %struct.Elem*, align 8
  %r = alloca %struct.Rule*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.130, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 3
  %n = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.132

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %x, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 3
  %v = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states1, i32 0, i32 2
  %5 = load %struct.State**, %struct.State*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.State*, %struct.State** %5, i64 %idxprom
  %6 = load %struct.State*, %struct.State** %arrayidx, align 8
  store %struct.State* %6, %struct.State** %s, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.118, %for.body
  %7 = load i32, i32* %y, align 4
  %8 = load %struct.State*, %struct.State** %s, align 8
  %items = getelementptr inbounds %struct.State, %struct.State* %8, i32 0, i32 2
  %n3 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items, i32 0, i32 0
  %9 = load i32, i32* %n3, align 4
  %cmp4 = icmp ult i32 %7, %9
  br i1 %cmp4, label %for.body.5, label %for.end.120

for.body.5:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %y, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.State*, %struct.State** %s, align 8
  %items7 = getelementptr inbounds %struct.State, %struct.State* %11, i32 0, i32 2
  %v8 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items7, i32 0, i32 2
  %12 = load %struct.Elem**, %struct.Elem*** %v8, align 8
  %arrayidx9 = getelementptr inbounds %struct.Elem*, %struct.Elem** %12, i64 %idxprom6
  %13 = load %struct.Elem*, %struct.Elem** %arrayidx9, align 8
  store %struct.Elem* %13, %struct.Elem** %e, align 8
  %14 = load %struct.Elem*, %struct.Elem** %e, align 8
  %rule = getelementptr inbounds %struct.Elem, %struct.Elem* %14, i32 0, i32 2
  %15 = load %struct.Rule*, %struct.Rule** %rule, align 8
  store %struct.Rule* %15, %struct.Rule** %r, align 8
  %16 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %16, i32 0, i32 0
  %17 = load i32, i32* %kind, align 4
  %cmp10 = icmp ne i32 %17, 3
  br i1 %cmp10, label %if.then, label %if.end.117

if.then:                                          ; preds = %for.body.5
  %18 = load %struct.Elem*, %struct.Elem** %e, align 8
  %index = getelementptr inbounds %struct.Elem, %struct.Elem* %18, i32 0, i32 1
  %19 = load i32, i32* %index, align 4
  store i32 %19, i32* %z, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.then
  %20 = load i32, i32* %z, align 4
  %21 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %21, i32 0, i32 6
  %n12 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems, i32 0, i32 0
  %22 = load i32, i32* %n12, align 4
  %cmp13 = icmp ult i32 %20, %22
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.11
  %23 = load i32, i32* %z, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems16 = getelementptr inbounds %struct.Rule, %struct.Rule* %24, i32 0, i32 6
  %v17 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems16, i32 0, i32 2
  %25 = load %struct.Elem**, %struct.Elem*** %v17, align 8
  %arrayidx18 = getelementptr inbounds %struct.Elem*, %struct.Elem** %25, i64 %idxprom15
  %26 = load %struct.Elem*, %struct.Elem** %arrayidx18, align 8
  %kind19 = getelementptr inbounds %struct.Elem, %struct.Elem* %26, i32 0, i32 0
  %27 = load i32, i32* %kind19, align 4
  %cmp20 = icmp ne i32 %27, 0
  br i1 %cmp20, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.14
  %28 = load i32, i32* %z, align 4
  %idxprom21 = sext i32 %28 to i64
  %29 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems22 = getelementptr inbounds %struct.Rule, %struct.Rule* %29, i32 0, i32 6
  %v23 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems22, i32 0, i32 2
  %30 = load %struct.Elem**, %struct.Elem*** %v23, align 8
  %arrayidx24 = getelementptr inbounds %struct.Elem*, %struct.Elem** %30, i64 %idxprom21
  %31 = load %struct.Elem*, %struct.Elem** %arrayidx24, align 8
  %e25 = getelementptr inbounds %struct.Elem, %struct.Elem* %31, i32 0, i32 3
  %nterm = bitcast %union.anon* %e25 to %struct.Production**
  %32 = load %struct.Production*, %struct.Production** %nterm, align 8
  %nullable = getelementptr inbounds %struct.Production, %struct.Production* %32, i32 0, i32 5
  %33 = load %struct.Rule*, %struct.Rule** %nullable, align 8
  %tobool = icmp ne %struct.Rule* %33, null
  br i1 %tobool, label %if.end, label %if.then.26

if.then.26:                                       ; preds = %lor.lhs.false, %for.body.14
  br label %Lnext

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %34 = load i32, i32* %z, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %z, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %35 = load %struct.State*, %struct.State** %s, align 8
  store %struct.State* %35, %struct.State** %ss, align 8
  %36 = load %struct.Elem*, %struct.Elem** %e, align 8
  %index27 = getelementptr inbounds %struct.Elem, %struct.Elem* %36, i32 0, i32 1
  %37 = load i32, i32* %index27, align 4
  store i32 %37, i32* %z, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.37, %for.end
  %38 = load i32, i32* %z, align 4
  %39 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems29 = getelementptr inbounds %struct.Rule, %struct.Rule* %39, i32 0, i32 6
  %n30 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems29, i32 0, i32 0
  %40 = load i32, i32* %n30, align 4
  %cmp31 = icmp ult i32 %38, %40
  br i1 %cmp31, label %for.body.32, label %for.end.39

for.body.32:                                      ; preds = %for.cond.28
  %41 = load %struct.State*, %struct.State** %ss, align 8
  %42 = load i32, i32* %z, align 4
  %idxprom33 = sext i32 %42 to i64
  %43 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems34 = getelementptr inbounds %struct.Rule, %struct.Rule* %43, i32 0, i32 6
  %v35 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems34, i32 0, i32 2
  %44 = load %struct.Elem**, %struct.Elem*** %v35, align 8
  %arrayidx36 = getelementptr inbounds %struct.Elem*, %struct.Elem** %44, i64 %idxprom33
  %45 = load %struct.Elem*, %struct.Elem** %arrayidx36, align 8
  %call = call %struct.State* @goto_State(%struct.State* %41, %struct.Elem* %45)
  store %struct.State* %call, %struct.State** %ss, align 8
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.32
  %46 = load i32, i32* %z, align 4
  %inc38 = add nsw i32 %46, 1
  store i32 %inc38, i32* %z, align 4
  br label %for.cond.28

for.end.39:                                       ; preds = %for.cond.28
  %47 = load %struct.State*, %struct.State** %ss, align 8
  %tobool40 = icmp ne %struct.State* %47, null
  br i1 %tobool40, label %land.lhs.true, label %if.else.115

land.lhs.true:                                    ; preds = %for.end.39
  %48 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems41 = getelementptr inbounds %struct.Rule, %struct.Rule* %48, i32 0, i32 6
  %n42 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems41, i32 0, i32 0
  %49 = load i32, i32* %n42, align 4
  %tobool43 = icmp ne i32 %49, 0
  br i1 %tobool43, label %if.then.44, label %if.else.115

if.then.44:                                       ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.44
  %50 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints = getelementptr inbounds %struct.State, %struct.State* %50, i32 0, i32 7
  %v45 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints, i32 0, i32 2
  %51 = load %struct.Hint**, %struct.Hint*** %v45, align 8
  %tobool46 = icmp ne %struct.Hint** %51, null
  br i1 %tobool46, label %if.else, label %if.then.47

if.then.47:                                       ; preds = %do.body
  %52 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems48 = getelementptr inbounds %struct.Rule, %struct.Rule* %52, i32 0, i32 6
  %n49 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems48, i32 0, i32 0
  %53 = load i32, i32* %n49, align 4
  %54 = load %struct.Elem*, %struct.Elem** %e, align 8
  %index50 = getelementptr inbounds %struct.Elem, %struct.Elem* %54, i32 0, i32 1
  %55 = load i32, i32* %index50, align 4
  %sub = sub i32 %53, %55
  %sub51 = sub i32 %sub, 1
  %56 = load %struct.State*, %struct.State** %ss, align 8
  %57 = load %struct.Rule*, %struct.Rule** %r, align 8
  %call52 = call %struct.Hint* @new_Hint(i32 %sub51, %struct.State* %56, %struct.Rule* %57)
  %58 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints53 = getelementptr inbounds %struct.State, %struct.State* %58, i32 0, i32 7
  %n54 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints53, i32 0, i32 0
  %59 = load i32, i32* %n54, align 4
  %inc55 = add i32 %59, 1
  store i32 %inc55, i32* %n54, align 4
  %idxprom56 = zext i32 %59 to i64
  %60 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints57 = getelementptr inbounds %struct.State, %struct.State* %60, i32 0, i32 7
  %e58 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints57, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Hint*], [3 x %struct.Hint*]* %e58, i32 0, i32 0
  %61 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints59 = getelementptr inbounds %struct.State, %struct.State* %61, i32 0, i32 7
  %v60 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints59, i32 0, i32 2
  store %struct.Hint** %arraydecay, %struct.Hint*** %v60, align 8
  %arrayidx61 = getelementptr inbounds %struct.Hint*, %struct.Hint** %arraydecay, i64 %idxprom56
  store %struct.Hint* %call52, %struct.Hint** %arrayidx61, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %62 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints62 = getelementptr inbounds %struct.State, %struct.State* %62, i32 0, i32 7
  %v63 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints62, i32 0, i32 2
  %63 = load %struct.Hint**, %struct.Hint*** %v63, align 8
  %64 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints64 = getelementptr inbounds %struct.State, %struct.State* %64, i32 0, i32 7
  %e65 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints64, i32 0, i32 3
  %arraydecay66 = getelementptr inbounds [3 x %struct.Hint*], [3 x %struct.Hint*]* %e65, i32 0, i32 0
  %cmp67 = icmp eq %struct.Hint** %63, %arraydecay66
  br i1 %cmp67, label %if.then.68, label %if.else.87

if.then.68:                                       ; preds = %if.else
  %65 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints69 = getelementptr inbounds %struct.State, %struct.State* %65, i32 0, i32 7
  %n70 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints69, i32 0, i32 0
  %66 = load i32, i32* %n70, align 4
  %cmp71 = icmp ult i32 %66, 3
  br i1 %cmp71, label %if.then.72, label %if.end.86

if.then.72:                                       ; preds = %if.then.68
  %67 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems73 = getelementptr inbounds %struct.Rule, %struct.Rule* %67, i32 0, i32 6
  %n74 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems73, i32 0, i32 0
  %68 = load i32, i32* %n74, align 4
  %69 = load %struct.Elem*, %struct.Elem** %e, align 8
  %index75 = getelementptr inbounds %struct.Elem, %struct.Elem* %69, i32 0, i32 1
  %70 = load i32, i32* %index75, align 4
  %sub76 = sub i32 %68, %70
  %sub77 = sub i32 %sub76, 1
  %71 = load %struct.State*, %struct.State** %ss, align 8
  %72 = load %struct.Rule*, %struct.Rule** %r, align 8
  %call78 = call %struct.Hint* @new_Hint(i32 %sub77, %struct.State* %71, %struct.Rule* %72)
  %73 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints79 = getelementptr inbounds %struct.State, %struct.State* %73, i32 0, i32 7
  %n80 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints79, i32 0, i32 0
  %74 = load i32, i32* %n80, align 4
  %inc81 = add i32 %74, 1
  store i32 %inc81, i32* %n80, align 4
  %idxprom82 = zext i32 %74 to i64
  %75 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints83 = getelementptr inbounds %struct.State, %struct.State* %75, i32 0, i32 7
  %v84 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints83, i32 0, i32 2
  %76 = load %struct.Hint**, %struct.Hint*** %v84, align 8
  %arrayidx85 = getelementptr inbounds %struct.Hint*, %struct.Hint** %76, i64 %idxprom82
  store %struct.Hint* %call78, %struct.Hint** %arrayidx85, align 8
  br label %do.end

if.end.86:                                        ; preds = %if.then.68
  br label %if.end.106

if.else.87:                                       ; preds = %if.else
  %77 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints88 = getelementptr inbounds %struct.State, %struct.State* %77, i32 0, i32 7
  %n89 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints88, i32 0, i32 0
  %78 = load i32, i32* %n89, align 4
  %and = and i32 %78, 7
  %tobool90 = icmp ne i32 %and, 0
  br i1 %tobool90, label %if.then.91, label %if.end.105

if.then.91:                                       ; preds = %if.else.87
  %79 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems92 = getelementptr inbounds %struct.Rule, %struct.Rule* %79, i32 0, i32 6
  %n93 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems92, i32 0, i32 0
  %80 = load i32, i32* %n93, align 4
  %81 = load %struct.Elem*, %struct.Elem** %e, align 8
  %index94 = getelementptr inbounds %struct.Elem, %struct.Elem* %81, i32 0, i32 1
  %82 = load i32, i32* %index94, align 4
  %sub95 = sub i32 %80, %82
  %sub96 = sub i32 %sub95, 1
  %83 = load %struct.State*, %struct.State** %ss, align 8
  %84 = load %struct.Rule*, %struct.Rule** %r, align 8
  %call97 = call %struct.Hint* @new_Hint(i32 %sub96, %struct.State* %83, %struct.Rule* %84)
  %85 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints98 = getelementptr inbounds %struct.State, %struct.State* %85, i32 0, i32 7
  %n99 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints98, i32 0, i32 0
  %86 = load i32, i32* %n99, align 4
  %inc100 = add i32 %86, 1
  store i32 %inc100, i32* %n99, align 4
  %idxprom101 = zext i32 %86 to i64
  %87 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints102 = getelementptr inbounds %struct.State, %struct.State* %87, i32 0, i32 7
  %v103 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints102, i32 0, i32 2
  %88 = load %struct.Hint**, %struct.Hint*** %v103, align 8
  %arrayidx104 = getelementptr inbounds %struct.Hint*, %struct.Hint** %88, i64 %idxprom101
  store %struct.Hint* %call97, %struct.Hint** %arrayidx104, align 8
  br label %do.end

if.end.105:                                       ; preds = %if.else.87
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.86
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106
  %89 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints108 = getelementptr inbounds %struct.State, %struct.State* %89, i32 0, i32 7
  %90 = bitcast %struct.VecHint* %right_epsilon_hints108 to i8*
  %91 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems109 = getelementptr inbounds %struct.Rule, %struct.Rule* %91, i32 0, i32 6
  %n110 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems109, i32 0, i32 0
  %92 = load i32, i32* %n110, align 4
  %93 = load %struct.Elem*, %struct.Elem** %e, align 8
  %index111 = getelementptr inbounds %struct.Elem, %struct.Elem* %93, i32 0, i32 1
  %94 = load i32, i32* %index111, align 4
  %sub112 = sub i32 %92, %94
  %sub113 = sub i32 %sub112, 1
  %95 = load %struct.State*, %struct.State** %ss, align 8
  %96 = load %struct.Rule*, %struct.Rule** %r, align 8
  %call114 = call %struct.Hint* @new_Hint(i32 %sub113, %struct.State* %95, %struct.Rule* %96)
  %97 = bitcast %struct.Hint* %call114 to i8*
  call void @vec_add_internal(i8* %90, i8* %97)
  br label %do.end

do.end:                                           ; preds = %if.end.107, %if.then.91, %if.then.72, %if.then.47
  br label %if.end.116

if.else.115:                                      ; preds = %land.lhs.true, %for.end.39
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.115, %do.end
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %for.body.5
  br label %Lnext

Lnext:                                            ; preds = %if.end.117, %if.then.26
  br label %for.inc.118

for.inc.118:                                      ; preds = %Lnext
  %98 = load i32, i32* %y, align 4
  %inc119 = add nsw i32 %98, 1
  store i32 %inc119, i32* %y, align 4
  br label %for.cond.2

for.end.120:                                      ; preds = %for.cond.2
  %99 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints121 = getelementptr inbounds %struct.State, %struct.State* %99, i32 0, i32 7
  %n122 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints121, i32 0, i32 0
  %100 = load i32, i32* %n122, align 4
  %cmp123 = icmp ugt i32 %100, 1
  br i1 %cmp123, label %if.then.124, label %if.end.129

if.then.124:                                      ; preds = %for.end.120
  %101 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints125 = getelementptr inbounds %struct.State, %struct.State* %101, i32 0, i32 7
  %v126 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints125, i32 0, i32 2
  %102 = load %struct.Hint**, %struct.Hint*** %v126, align 8
  %103 = bitcast %struct.Hint** %102 to i8*
  %104 = load %struct.State*, %struct.State** %s, align 8
  %right_epsilon_hints127 = getelementptr inbounds %struct.State, %struct.State* %104, i32 0, i32 7
  %n128 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %right_epsilon_hints127, i32 0, i32 0
  %105 = load i32, i32* %n128, align 4
  %conv = zext i32 %105 to i64
  call void @qsort(i8* %103, i64 %conv, i64 8, i32 (i8*, i8*)* @hintcmp)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.124, %for.end.120
  br label %for.inc.130

for.inc.130:                                      ; preds = %if.end.129
  %106 = load i32, i32* %x, align 4
  %inc131 = add nsw i32 %106, 1
  store i32 %inc131, i32* %x, align 4
  br label %for.cond

for.end.132:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @build_error_recovery(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %depth = alloca i32, align 4
  %s = alloca %struct.State*, align 8
  %r = alloca %struct.Rule*, align 8
  %rr = alloca %struct.Rule*, align 8
  %e = alloca %struct.Elem*, align 8
  %ee = alloca %struct.Elem*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.143, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 3
  %n = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.145

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
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.136, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load %struct.State*, %struct.State** %s, align 8
  %items = getelementptr inbounds %struct.State, %struct.State* %8, i32 0, i32 2
  %n3 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items, i32 0, i32 0
  %9 = load i32, i32* %n3, align 4
  %cmp4 = icmp ult i32 %7, %9
  br i1 %cmp4, label %for.body.5, label %for.end.138

for.body.5:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.State*, %struct.State** %s, align 8
  %items7 = getelementptr inbounds %struct.State, %struct.State* %11, i32 0, i32 2
  %v8 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items7, i32 0, i32 2
  %12 = load %struct.Elem**, %struct.Elem*** %v8, align 8
  %arrayidx9 = getelementptr inbounds %struct.Elem*, %struct.Elem** %12, i64 %idxprom6
  %13 = load %struct.Elem*, %struct.Elem** %arrayidx9, align 8
  %rule = getelementptr inbounds %struct.Elem, %struct.Elem* %13, i32 0, i32 2
  %14 = load %struct.Rule*, %struct.Rule** %rule, align 8
  store %struct.Rule* %14, %struct.Rule** %r, align 8
  %15 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %15, i32 0, i32 6
  %n10 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems, i32 0, i32 0
  %16 = load i32, i32* %n10, align 4
  %cmp11 = icmp ugt i32 %16, 1
  br i1 %cmp11, label %land.lhs.true, label %if.end.135

land.lhs.true:                                    ; preds = %for.body.5
  %17 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems12 = getelementptr inbounds %struct.Rule, %struct.Rule* %17, i32 0, i32 6
  %n13 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems12, i32 0, i32 0
  %18 = load i32, i32* %n13, align 4
  %sub = sub i32 %18, 1
  %idxprom14 = zext i32 %sub to i64
  %19 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems15 = getelementptr inbounds %struct.Rule, %struct.Rule* %19, i32 0, i32 6
  %v16 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems15, i32 0, i32 2
  %20 = load %struct.Elem**, %struct.Elem*** %v16, align 8
  %arrayidx17 = getelementptr inbounds %struct.Elem*, %struct.Elem** %20, i64 %idxprom14
  %21 = load %struct.Elem*, %struct.Elem** %arrayidx17, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %21, i32 0, i32 0
  %22 = load i32, i32* %kind, align 4
  %cmp18 = icmp eq i32 %22, 1
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.135

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %23 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems20 = getelementptr inbounds %struct.Rule, %struct.Rule* %23, i32 0, i32 6
  %n21 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems20, i32 0, i32 0
  %24 = load i32, i32* %n21, align 4
  %sub22 = sub i32 %24, 1
  %idxprom23 = zext i32 %sub22 to i64
  %25 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems24 = getelementptr inbounds %struct.Rule, %struct.Rule* %25, i32 0, i32 6
  %v25 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems24, i32 0, i32 2
  %26 = load %struct.Elem**, %struct.Elem*** %v25, align 8
  %arrayidx26 = getelementptr inbounds %struct.Elem*, %struct.Elem** %26, i64 %idxprom23
  %27 = load %struct.Elem*, %struct.Elem** %arrayidx26, align 8
  %e27 = getelementptr inbounds %struct.Elem, %struct.Elem* %27, i32 0, i32 3
  %term = bitcast %union.anon* %e27 to %struct.Term**
  %28 = load %struct.Term*, %struct.Term** %term, align 8
  %kind28 = getelementptr inbounds %struct.Term, %struct.Term* %28, i32 0, i32 0
  %29 = load i32, i32* %kind28, align 4
  %cmp29 = icmp eq i32 %29, 0
  br i1 %cmp29, label %if.then, label %if.end.135

if.then:                                          ; preds = %land.lhs.true.19
  %30 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %30 to i64
  %31 = load %struct.State*, %struct.State** %s, align 8
  %items31 = getelementptr inbounds %struct.State, %struct.State* %31, i32 0, i32 2
  %v32 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items31, i32 0, i32 2
  %32 = load %struct.Elem**, %struct.Elem*** %v32, align 8
  %arrayidx33 = getelementptr inbounds %struct.Elem*, %struct.Elem** %32, i64 %idxprom30
  %33 = load %struct.Elem*, %struct.Elem** %arrayidx33, align 8
  %index = getelementptr inbounds %struct.Elem, %struct.Elem* %33, i32 0, i32 1
  %34 = load i32, i32* %index, align 4
  store i32 %34, i32* %depth, align 4
  %35 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems34 = getelementptr inbounds %struct.Rule, %struct.Rule* %35, i32 0, i32 6
  %n35 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems34, i32 0, i32 0
  %36 = load i32, i32* %n35, align 4
  %sub36 = sub i32 %36, 1
  %idxprom37 = zext i32 %sub36 to i64
  %37 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems38 = getelementptr inbounds %struct.Rule, %struct.Rule* %37, i32 0, i32 6
  %v39 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems38, i32 0, i32 2
  %38 = load %struct.Elem**, %struct.Elem*** %v39, align 8
  %arrayidx40 = getelementptr inbounds %struct.Elem*, %struct.Elem** %38, i64 %idxprom37
  %39 = load %struct.Elem*, %struct.Elem** %arrayidx40, align 8
  store %struct.Elem* %39, %struct.Elem** %e, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc, %if.then
  %40 = load i32, i32* %k, align 4
  %41 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints = getelementptr inbounds %struct.State, %struct.State* %41, i32 0, i32 8
  %n42 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints, i32 0, i32 0
  %42 = load i32, i32* %n42, align 4
  %cmp43 = icmp ult i32 %40, %42
  br i1 %cmp43, label %for.body.44, label %for.end

for.body.44:                                      ; preds = %for.cond.41
  %43 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %43 to i64
  %44 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints46 = getelementptr inbounds %struct.State, %struct.State* %44, i32 0, i32 8
  %v47 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints46, i32 0, i32 2
  %45 = load %struct.Hint**, %struct.Hint*** %v47, align 8
  %arrayidx48 = getelementptr inbounds %struct.Hint*, %struct.Hint** %45, i64 %idxprom45
  %46 = load %struct.Hint*, %struct.Hint** %arrayidx48, align 8
  %rule49 = getelementptr inbounds %struct.Hint, %struct.Hint* %46, i32 0, i32 2
  %47 = load %struct.Rule*, %struct.Rule** %rule49, align 8
  store %struct.Rule* %47, %struct.Rule** %rr, align 8
  %48 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems50 = getelementptr inbounds %struct.Rule, %struct.Rule* %48, i32 0, i32 6
  %n51 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems50, i32 0, i32 0
  %49 = load i32, i32* %n51, align 4
  %sub52 = sub i32 %49, 1
  %idxprom53 = zext i32 %sub52 to i64
  %50 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems54 = getelementptr inbounds %struct.Rule, %struct.Rule* %50, i32 0, i32 6
  %v55 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems54, i32 0, i32 2
  %51 = load %struct.Elem**, %struct.Elem*** %v55, align 8
  %arrayidx56 = getelementptr inbounds %struct.Elem*, %struct.Elem** %51, i64 %idxprom53
  %52 = load %struct.Elem*, %struct.Elem** %arrayidx56, align 8
  store %struct.Elem* %52, %struct.Elem** %ee, align 8
  %53 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e57 = getelementptr inbounds %struct.Elem, %struct.Elem* %53, i32 0, i32 3
  %term58 = bitcast %union.anon* %e57 to %struct.Term**
  %54 = load %struct.Term*, %struct.Term** %term58, align 8
  %string_len = getelementptr inbounds %struct.Term, %struct.Term* %54, i32 0, i32 6
  %55 = load i32, i32* %string_len, align 4
  %56 = load %struct.Elem*, %struct.Elem** %ee, align 8
  %e59 = getelementptr inbounds %struct.Elem, %struct.Elem* %56, i32 0, i32 3
  %term60 = bitcast %union.anon* %e59 to %struct.Term**
  %57 = load %struct.Term*, %struct.Term** %term60, align 8
  %string_len61 = getelementptr inbounds %struct.Term, %struct.Term* %57, i32 0, i32 6
  %58 = load i32, i32* %string_len61, align 4
  %cmp62 = icmp eq i32 %55, %58
  br i1 %cmp62, label %land.lhs.true.63, label %if.end.82

land.lhs.true.63:                                 ; preds = %for.body.44
  %59 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e64 = getelementptr inbounds %struct.Elem, %struct.Elem* %59, i32 0, i32 3
  %term65 = bitcast %union.anon* %e64 to %struct.Term**
  %60 = load %struct.Term*, %struct.Term** %term65, align 8
  %string = getelementptr inbounds %struct.Term, %struct.Term* %60, i32 0, i32 5
  %61 = load i8*, i8** %string, align 8
  %62 = load %struct.Elem*, %struct.Elem** %ee, align 8
  %e66 = getelementptr inbounds %struct.Elem, %struct.Elem* %62, i32 0, i32 3
  %term67 = bitcast %union.anon* %e66 to %struct.Term**
  %63 = load %struct.Term*, %struct.Term** %term67, align 8
  %string68 = getelementptr inbounds %struct.Term, %struct.Term* %63, i32 0, i32 5
  %64 = load i8*, i8** %string68, align 8
  %call = call i32 @strcmp(i8* %61, i8* %64) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.82, label %if.then.69

if.then.69:                                       ; preds = %land.lhs.true.63
  %65 = load i32, i32* %k, align 4
  %idxprom70 = sext i32 %65 to i64
  %66 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints71 = getelementptr inbounds %struct.State, %struct.State* %66, i32 0, i32 8
  %v72 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints71, i32 0, i32 2
  %67 = load %struct.Hint**, %struct.Hint*** %v72, align 8
  %arrayidx73 = getelementptr inbounds %struct.Hint*, %struct.Hint** %67, i64 %idxprom70
  %68 = load %struct.Hint*, %struct.Hint** %arrayidx73, align 8
  %depth74 = getelementptr inbounds %struct.Hint, %struct.Hint* %68, i32 0, i32 0
  %69 = load i32, i32* %depth74, align 4
  %70 = load i32, i32* %depth, align 4
  %cmp75 = icmp ugt i32 %69, %70
  br i1 %cmp75, label %if.then.76, label %if.end

if.then.76:                                       ; preds = %if.then.69
  %71 = load i32, i32* %depth, align 4
  %72 = load i32, i32* %k, align 4
  %idxprom77 = sext i32 %72 to i64
  %73 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints78 = getelementptr inbounds %struct.State, %struct.State* %73, i32 0, i32 8
  %v79 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints78, i32 0, i32 2
  %74 = load %struct.Hint**, %struct.Hint*** %v79, align 8
  %arrayidx80 = getelementptr inbounds %struct.Hint*, %struct.Hint** %74, i64 %idxprom77
  %75 = load %struct.Hint*, %struct.Hint** %arrayidx80, align 8
  %depth81 = getelementptr inbounds %struct.Hint, %struct.Hint* %75, i32 0, i32 0
  store i32 %71, i32* %depth81, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.76, %if.then.69
  br label %Ldone

if.end.82:                                        ; preds = %land.lhs.true.63, %for.body.44
  br label %for.inc

for.inc:                                          ; preds = %if.end.82
  %76 = load i32, i32* %k, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.41

for.end:                                          ; preds = %for.cond.41
  br label %do.body

do.body:                                          ; preds = %for.end
  %77 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints83 = getelementptr inbounds %struct.State, %struct.State* %77, i32 0, i32 8
  %v84 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints83, i32 0, i32 2
  %78 = load %struct.Hint**, %struct.Hint*** %v84, align 8
  %tobool85 = icmp ne %struct.Hint** %78, null
  br i1 %tobool85, label %if.else, label %if.then.86

if.then.86:                                       ; preds = %do.body
  %79 = load i32, i32* %depth, align 4
  %80 = load %struct.Rule*, %struct.Rule** %r, align 8
  %call87 = call %struct.Hint* @new_Hint(i32 %79, %struct.State* null, %struct.Rule* %80)
  %81 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints88 = getelementptr inbounds %struct.State, %struct.State* %81, i32 0, i32 8
  %n89 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints88, i32 0, i32 0
  %82 = load i32, i32* %n89, align 4
  %inc90 = add i32 %82, 1
  store i32 %inc90, i32* %n89, align 4
  %idxprom91 = zext i32 %82 to i64
  %83 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints92 = getelementptr inbounds %struct.State, %struct.State* %83, i32 0, i32 8
  %e93 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints92, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Hint*], [3 x %struct.Hint*]* %e93, i32 0, i32 0
  %84 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints94 = getelementptr inbounds %struct.State, %struct.State* %84, i32 0, i32 8
  %v95 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints94, i32 0, i32 2
  store %struct.Hint** %arraydecay, %struct.Hint*** %v95, align 8
  %arrayidx96 = getelementptr inbounds %struct.Hint*, %struct.Hint** %arraydecay, i64 %idxprom91
  store %struct.Hint* %call87, %struct.Hint** %arrayidx96, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %85 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints97 = getelementptr inbounds %struct.State, %struct.State* %85, i32 0, i32 8
  %v98 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints97, i32 0, i32 2
  %86 = load %struct.Hint**, %struct.Hint*** %v98, align 8
  %87 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints99 = getelementptr inbounds %struct.State, %struct.State* %87, i32 0, i32 8
  %e100 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints99, i32 0, i32 3
  %arraydecay101 = getelementptr inbounds [3 x %struct.Hint*], [3 x %struct.Hint*]* %e100, i32 0, i32 0
  %cmp102 = icmp eq %struct.Hint** %86, %arraydecay101
  br i1 %cmp102, label %if.then.103, label %if.else.117

if.then.103:                                      ; preds = %if.else
  %88 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints104 = getelementptr inbounds %struct.State, %struct.State* %88, i32 0, i32 8
  %n105 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints104, i32 0, i32 0
  %89 = load i32, i32* %n105, align 4
  %cmp106 = icmp ult i32 %89, 3
  br i1 %cmp106, label %if.then.107, label %if.end.116

if.then.107:                                      ; preds = %if.then.103
  %90 = load i32, i32* %depth, align 4
  %91 = load %struct.Rule*, %struct.Rule** %r, align 8
  %call108 = call %struct.Hint* @new_Hint(i32 %90, %struct.State* null, %struct.Rule* %91)
  %92 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints109 = getelementptr inbounds %struct.State, %struct.State* %92, i32 0, i32 8
  %n110 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints109, i32 0, i32 0
  %93 = load i32, i32* %n110, align 4
  %inc111 = add i32 %93, 1
  store i32 %inc111, i32* %n110, align 4
  %idxprom112 = zext i32 %93 to i64
  %94 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints113 = getelementptr inbounds %struct.State, %struct.State* %94, i32 0, i32 8
  %v114 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints113, i32 0, i32 2
  %95 = load %struct.Hint**, %struct.Hint*** %v114, align 8
  %arrayidx115 = getelementptr inbounds %struct.Hint*, %struct.Hint** %95, i64 %idxprom112
  store %struct.Hint* %call108, %struct.Hint** %arrayidx115, align 8
  br label %do.end

if.end.116:                                       ; preds = %if.then.103
  br label %if.end.131

if.else.117:                                      ; preds = %if.else
  %96 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints118 = getelementptr inbounds %struct.State, %struct.State* %96, i32 0, i32 8
  %n119 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints118, i32 0, i32 0
  %97 = load i32, i32* %n119, align 4
  %and = and i32 %97, 7
  %tobool120 = icmp ne i32 %and, 0
  br i1 %tobool120, label %if.then.121, label %if.end.130

if.then.121:                                      ; preds = %if.else.117
  %98 = load i32, i32* %depth, align 4
  %99 = load %struct.Rule*, %struct.Rule** %r, align 8
  %call122 = call %struct.Hint* @new_Hint(i32 %98, %struct.State* null, %struct.Rule* %99)
  %100 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints123 = getelementptr inbounds %struct.State, %struct.State* %100, i32 0, i32 8
  %n124 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints123, i32 0, i32 0
  %101 = load i32, i32* %n124, align 4
  %inc125 = add i32 %101, 1
  store i32 %inc125, i32* %n124, align 4
  %idxprom126 = zext i32 %101 to i64
  %102 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints127 = getelementptr inbounds %struct.State, %struct.State* %102, i32 0, i32 8
  %v128 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints127, i32 0, i32 2
  %103 = load %struct.Hint**, %struct.Hint*** %v128, align 8
  %arrayidx129 = getelementptr inbounds %struct.Hint*, %struct.Hint** %103, i64 %idxprom126
  store %struct.Hint* %call122, %struct.Hint** %arrayidx129, align 8
  br label %do.end

if.end.130:                                       ; preds = %if.else.117
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.end.116
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131
  %104 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints133 = getelementptr inbounds %struct.State, %struct.State* %104, i32 0, i32 8
  %105 = bitcast %struct.VecHint* %error_recovery_hints133 to i8*
  %106 = load i32, i32* %depth, align 4
  %107 = load %struct.Rule*, %struct.Rule** %r, align 8
  %call134 = call %struct.Hint* @new_Hint(i32 %106, %struct.State* null, %struct.Rule* %107)
  %108 = bitcast %struct.Hint* %call134 to i8*
  call void @vec_add_internal(i8* %105, i8* %108)
  br label %do.end

do.end:                                           ; preds = %if.end.132, %if.then.121, %if.then.107, %if.then.86
  br label %Ldone

Ldone:                                            ; preds = %do.end, %if.end
  br label %if.end.135

if.end.135:                                       ; preds = %Ldone, %land.lhs.true.19, %land.lhs.true, %for.body.5
  br label %for.inc.136

for.inc.136:                                      ; preds = %if.end.135
  %109 = load i32, i32* %j, align 4
  %inc137 = add nsw i32 %109, 1
  store i32 %inc137, i32* %j, align 4
  br label %for.cond.2

for.end.138:                                      ; preds = %for.cond.2
  %110 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints139 = getelementptr inbounds %struct.State, %struct.State* %110, i32 0, i32 8
  %v140 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints139, i32 0, i32 2
  %111 = load %struct.Hint**, %struct.Hint*** %v140, align 8
  %112 = bitcast %struct.Hint** %111 to i8*
  %113 = load %struct.State*, %struct.State** %s, align 8
  %error_recovery_hints141 = getelementptr inbounds %struct.State, %struct.State* %113, i32 0, i32 8
  %n142 = getelementptr inbounds %struct.VecHint, %struct.VecHint* %error_recovery_hints141, i32 0, i32 0
  %114 = load i32, i32* %n142, align 4
  %conv = zext i32 %114 to i64
  call void @qsort(i8* %112, i64 %conv, i64 8, i32 (i8*, i8*)* @hintcmp)
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.end.138
  %115 = load i32, i32* %i, align 4
  %inc144 = add nsw i32 %115, 1
  store i32 %inc144, i32* %i, align 4
  br label %for.cond

for.end.145:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @insert_item(%struct.State* %s, %struct.Elem* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.State*, align 8
  %e.addr = alloca %struct.Elem*, align 8
  %i = alloca %struct.Elem*, align 8
  store %struct.State* %s, %struct.State** %s.addr, align 8
  store %struct.Elem* %e, %struct.Elem** %e.addr, align 8
  %0 = load %struct.Elem*, %struct.Elem** %e.addr, align 8
  store %struct.Elem* %0, %struct.Elem** %i, align 8
  %1 = load %struct.State*, %struct.State** %s.addr, align 8
  %items_hash = getelementptr inbounds %struct.State, %struct.State* %1, i32 0, i32 3
  %2 = bitcast %struct.anon.4* %items_hash to i8*
  %3 = load %struct.Elem*, %struct.Elem** %i, align 8
  %4 = bitcast %struct.Elem* %3 to i8*
  %call = call i32 @set_add(i8* %2, i8* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.41

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct.State*, %struct.State** %s.addr, align 8
  %items = getelementptr inbounds %struct.State, %struct.State* %5, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items, i32 0, i32 2
  %6 = load %struct.Elem**, %struct.Elem*** %v, align 8
  %tobool1 = icmp ne %struct.Elem** %6, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %do.body
  %7 = load %struct.Elem*, %struct.Elem** %i, align 8
  %8 = load %struct.State*, %struct.State** %s.addr, align 8
  %items3 = getelementptr inbounds %struct.State, %struct.State* %8, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items3, i32 0, i32 0
  %9 = load i32, i32* %n, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %n, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load %struct.State*, %struct.State** %s.addr, align 8
  %items4 = getelementptr inbounds %struct.State, %struct.State* %10, i32 0, i32 2
  %e5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items4, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e5, i32 0, i32 0
  %11 = load %struct.State*, %struct.State** %s.addr, align 8
  %items6 = getelementptr inbounds %struct.State, %struct.State* %11, i32 0, i32 2
  %v7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items6, i32 0, i32 2
  store %struct.Elem** %arraydecay, %struct.Elem*** %v7, align 8
  %arrayidx = getelementptr inbounds %struct.Elem*, %struct.Elem** %arraydecay, i64 %idxprom
  store %struct.Elem* %7, %struct.Elem** %arrayidx, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %12 = load %struct.State*, %struct.State** %s.addr, align 8
  %items8 = getelementptr inbounds %struct.State, %struct.State* %12, i32 0, i32 2
  %v9 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items8, i32 0, i32 2
  %13 = load %struct.Elem**, %struct.Elem*** %v9, align 8
  %14 = load %struct.State*, %struct.State** %s.addr, align 8
  %items10 = getelementptr inbounds %struct.State, %struct.State* %14, i32 0, i32 2
  %e11 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items10, i32 0, i32 3
  %arraydecay12 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e11, i32 0, i32 0
  %cmp = icmp eq %struct.Elem** %13, %arraydecay12
  br i1 %cmp, label %if.then.13, label %if.else.25

if.then.13:                                       ; preds = %if.else
  %15 = load %struct.State*, %struct.State** %s.addr, align 8
  %items14 = getelementptr inbounds %struct.State, %struct.State* %15, i32 0, i32 2
  %n15 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items14, i32 0, i32 0
  %16 = load i32, i32* %n15, align 4
  %cmp16 = icmp ult i32 %16, 3
  br i1 %cmp16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.13
  %17 = load %struct.Elem*, %struct.Elem** %i, align 8
  %18 = load %struct.State*, %struct.State** %s.addr, align 8
  %items18 = getelementptr inbounds %struct.State, %struct.State* %18, i32 0, i32 2
  %n19 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items18, i32 0, i32 0
  %19 = load i32, i32* %n19, align 4
  %inc20 = add i32 %19, 1
  store i32 %inc20, i32* %n19, align 4
  %idxprom21 = zext i32 %19 to i64
  %20 = load %struct.State*, %struct.State** %s.addr, align 8
  %items22 = getelementptr inbounds %struct.State, %struct.State* %20, i32 0, i32 2
  %v23 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items22, i32 0, i32 2
  %21 = load %struct.Elem**, %struct.Elem*** %v23, align 8
  %arrayidx24 = getelementptr inbounds %struct.Elem*, %struct.Elem** %21, i64 %idxprom21
  store %struct.Elem* %17, %struct.Elem** %arrayidx24, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.13
  br label %if.end.38

if.else.25:                                       ; preds = %if.else
  %22 = load %struct.State*, %struct.State** %s.addr, align 8
  %items26 = getelementptr inbounds %struct.State, %struct.State* %22, i32 0, i32 2
  %n27 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items26, i32 0, i32 0
  %23 = load i32, i32* %n27, align 4
  %and = and i32 %23, 7
  %tobool28 = icmp ne i32 %and, 0
  br i1 %tobool28, label %if.then.29, label %if.end.37

if.then.29:                                       ; preds = %if.else.25
  %24 = load %struct.Elem*, %struct.Elem** %i, align 8
  %25 = load %struct.State*, %struct.State** %s.addr, align 8
  %items30 = getelementptr inbounds %struct.State, %struct.State* %25, i32 0, i32 2
  %n31 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items30, i32 0, i32 0
  %26 = load i32, i32* %n31, align 4
  %inc32 = add i32 %26, 1
  store i32 %inc32, i32* %n31, align 4
  %idxprom33 = zext i32 %26 to i64
  %27 = load %struct.State*, %struct.State** %s.addr, align 8
  %items34 = getelementptr inbounds %struct.State, %struct.State* %27, i32 0, i32 2
  %v35 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items34, i32 0, i32 2
  %28 = load %struct.Elem**, %struct.Elem*** %v35, align 8
  %arrayidx36 = getelementptr inbounds %struct.Elem*, %struct.Elem** %28, i64 %idxprom33
  store %struct.Elem* %24, %struct.Elem** %arrayidx36, align 8
  br label %do.end

if.end.37:                                        ; preds = %if.else.25
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38
  %29 = load %struct.State*, %struct.State** %s.addr, align 8
  %items40 = getelementptr inbounds %struct.State, %struct.State* %29, i32 0, i32 2
  %30 = bitcast %struct.anon.3* %items40 to i8*
  %31 = load %struct.Elem*, %struct.Elem** %i, align 8
  %32 = bitcast %struct.Elem* %31 to i8*
  call void @vec_add_internal(i8* %30, i8* %32)
  br label %do.end

do.end:                                           ; preds = %if.end.39, %if.then.29, %if.then.17, %if.then.2
  store i32 1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.41, %do.end
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal %struct.State* @build_closure(%struct.Grammar* %g, %struct.State* %s) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %s.addr = alloca %struct.State*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca %struct.Elem*, align 8
  %e = alloca %struct.Elem*, align 8
  %pp = alloca %struct.Production*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store %struct.State* %s, %struct.State** %s.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load %struct.State*, %struct.State** %s.addr, align 8
  %items = getelementptr inbounds %struct.State, %struct.State* %1, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.State*, %struct.State** %s.addr, align 8
  %items1 = getelementptr inbounds %struct.State, %struct.State* %4, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items1, i32 0, i32 2
  %5 = load %struct.Elem**, %struct.Elem*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Elem*, %struct.Elem** %5, i64 %idxprom
  %6 = load %struct.Elem*, %struct.Elem** %arrayidx, align 8
  store %struct.Elem* %6, %struct.Elem** %i, align 8
  %7 = load %struct.Elem*, %struct.Elem** %i, align 8
  store %struct.Elem* %7, %struct.Elem** %e, align 8
  %8 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %8, i32 0, i32 0
  %9 = load i32, i32* %kind, align 4
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e3 = getelementptr inbounds %struct.Elem, %struct.Elem* %10, i32 0, i32 3
  %nterm = bitcast %union.anon* %e3 to %struct.Production**
  %11 = load %struct.Production*, %struct.Production** %nterm, align 8
  store %struct.Production* %11, %struct.Production** %pp, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.then
  %12 = load i32, i32* %k, align 4
  %13 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e5 = getelementptr inbounds %struct.Elem, %struct.Elem* %13, i32 0, i32 3
  %nterm6 = bitcast %union.anon* %e5 to %struct.Production**
  %14 = load %struct.Production*, %struct.Production** %nterm6, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %14, i32 0, i32 2
  %n7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules, i32 0, i32 0
  %15 = load i32, i32* %n7, align 4
  %cmp8 = icmp ult i32 %12, %15
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.4
  %16 = load %struct.State*, %struct.State** %s.addr, align 8
  %17 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules11 = getelementptr inbounds %struct.Production, %struct.Production* %18, i32 0, i32 2
  %v12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules11, i32 0, i32 2
  %19 = load %struct.Rule**, %struct.Rule*** %v12, align 8
  %arrayidx13 = getelementptr inbounds %struct.Rule*, %struct.Rule** %19, i64 %idxprom10
  %20 = load %struct.Rule*, %struct.Rule** %arrayidx13, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %20, i32 0, i32 6
  %v14 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems, i32 0, i32 2
  %21 = load %struct.Elem**, %struct.Elem*** %v14, align 8
  %tobool = icmp ne %struct.Elem** %21, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.9
  %22 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %22 to i64
  %23 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules16 = getelementptr inbounds %struct.Production, %struct.Production* %23, i32 0, i32 2
  %v17 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules16, i32 0, i32 2
  %24 = load %struct.Rule**, %struct.Rule*** %v17, align 8
  %arrayidx18 = getelementptr inbounds %struct.Rule*, %struct.Rule** %24, i64 %idxprom15
  %25 = load %struct.Rule*, %struct.Rule** %arrayidx18, align 8
  %elems19 = getelementptr inbounds %struct.Rule, %struct.Rule* %25, i32 0, i32 6
  %v20 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems19, i32 0, i32 2
  %26 = load %struct.Elem**, %struct.Elem*** %v20, align 8
  %arrayidx21 = getelementptr inbounds %struct.Elem*, %struct.Elem** %26, i64 0
  %27 = load %struct.Elem*, %struct.Elem** %arrayidx21, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body.9
  %28 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %28 to i64
  %29 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules23 = getelementptr inbounds %struct.Production, %struct.Production* %29, i32 0, i32 2
  %v24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules23, i32 0, i32 2
  %30 = load %struct.Rule**, %struct.Rule*** %v24, align 8
  %arrayidx25 = getelementptr inbounds %struct.Rule*, %struct.Rule** %30, i64 %idxprom22
  %31 = load %struct.Rule*, %struct.Rule** %arrayidx25, align 8
  %end = getelementptr inbounds %struct.Rule, %struct.Rule* %31, i32 0, i32 7
  %32 = load %struct.Elem*, %struct.Elem** %end, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.Elem* [ %27, %cond.true ], [ %32, %cond.false ]
  %call = call i32 @insert_item(%struct.State* %16, %struct.Elem* %cond)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %33 = load i32, i32* %k, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end
  %34 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %34, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  %35 = load %struct.State*, %struct.State** %s.addr, align 8
  %items29 = getelementptr inbounds %struct.State, %struct.State* %35, i32 0, i32 2
  %v30 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items29, i32 0, i32 2
  %36 = load %struct.Elem**, %struct.Elem*** %v30, align 8
  %37 = bitcast %struct.Elem** %36 to i8*
  %38 = load %struct.State*, %struct.State** %s.addr, align 8
  %items31 = getelementptr inbounds %struct.State, %struct.State* %38, i32 0, i32 2
  %n32 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items31, i32 0, i32 0
  %39 = load i32, i32* %n32, align 4
  %conv = zext i32 %39 to i64
  call void @qsort(i8* %37, i64 %conv, i64 8, i32 (i8*, i8*)* @itemcmp)
  %40 = load %struct.State*, %struct.State** %s.addr, align 8
  %hash = getelementptr inbounds %struct.State, %struct.State* %40, i32 0, i32 1
  store i64 0, i64* %hash, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.69, %for.end.28
  %41 = load i32, i32* %j, align 4
  %42 = load %struct.State*, %struct.State** %s.addr, align 8
  %items34 = getelementptr inbounds %struct.State, %struct.State* %42, i32 0, i32 2
  %n35 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items34, i32 0, i32 0
  %43 = load i32, i32* %n35, align 4
  %cmp36 = icmp ult i32 %41, %43
  br i1 %cmp36, label %for.body.38, label %for.end.71

for.body.38:                                      ; preds = %for.cond.33
  %44 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %44 to i64
  %45 = load %struct.State*, %struct.State** %s.addr, align 8
  %items40 = getelementptr inbounds %struct.State, %struct.State* %45, i32 0, i32 2
  %v41 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items40, i32 0, i32 2
  %46 = load %struct.Elem**, %struct.Elem*** %v41, align 8
  %arrayidx42 = getelementptr inbounds %struct.Elem*, %struct.Elem** %46, i64 %idxprom39
  %47 = load %struct.Elem*, %struct.Elem** %arrayidx42, align 8
  %rule = getelementptr inbounds %struct.Elem, %struct.Elem* %47, i32 0, i32 2
  %48 = load %struct.Rule*, %struct.Rule** %rule, align 8
  %index = getelementptr inbounds %struct.Rule, %struct.Rule* %48, i32 0, i32 0
  %49 = load i32, i32* %index, align 4
  %shl = shl i32 %49, 8
  %50 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %50 to i64
  %51 = load %struct.State*, %struct.State** %s.addr, align 8
  %items44 = getelementptr inbounds %struct.State, %struct.State* %51, i32 0, i32 2
  %v45 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items44, i32 0, i32 2
  %52 = load %struct.Elem**, %struct.Elem*** %v45, align 8
  %arrayidx46 = getelementptr inbounds %struct.Elem*, %struct.Elem** %52, i64 %idxprom43
  %53 = load %struct.Elem*, %struct.Elem** %arrayidx46, align 8
  %kind47 = getelementptr inbounds %struct.Elem, %struct.Elem* %53, i32 0, i32 0
  %54 = load i32, i32* %kind47, align 4
  %cmp48 = icmp ne i32 %54, 3
  br i1 %cmp48, label %cond.true.50, label %cond.false.56

cond.true.50:                                     ; preds = %for.body.38
  %55 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %55 to i64
  %56 = load %struct.State*, %struct.State** %s.addr, align 8
  %items52 = getelementptr inbounds %struct.State, %struct.State* %56, i32 0, i32 2
  %v53 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items52, i32 0, i32 2
  %57 = load %struct.Elem**, %struct.Elem*** %v53, align 8
  %arrayidx54 = getelementptr inbounds %struct.Elem*, %struct.Elem** %57, i64 %idxprom51
  %58 = load %struct.Elem*, %struct.Elem** %arrayidx54, align 8
  %index55 = getelementptr inbounds %struct.Elem, %struct.Elem* %58, i32 0, i32 1
  %59 = load i32, i32* %index55, align 4
  br label %cond.end.64

cond.false.56:                                    ; preds = %for.body.38
  %60 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %60 to i64
  %61 = load %struct.State*, %struct.State** %s.addr, align 8
  %items58 = getelementptr inbounds %struct.State, %struct.State* %61, i32 0, i32 2
  %v59 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items58, i32 0, i32 2
  %62 = load %struct.Elem**, %struct.Elem*** %v59, align 8
  %arrayidx60 = getelementptr inbounds %struct.Elem*, %struct.Elem** %62, i64 %idxprom57
  %63 = load %struct.Elem*, %struct.Elem** %arrayidx60, align 8
  %rule61 = getelementptr inbounds %struct.Elem, %struct.Elem* %63, i32 0, i32 2
  %64 = load %struct.Rule*, %struct.Rule** %rule61, align 8
  %elems62 = getelementptr inbounds %struct.Rule, %struct.Rule* %64, i32 0, i32 6
  %n63 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems62, i32 0, i32 0
  %65 = load i32, i32* %n63, align 4
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.56, %cond.true.50
  %cond65 = phi i32 [ %59, %cond.true.50 ], [ %65, %cond.false.56 ]
  %add = add i32 %shl, %cond65
  %conv66 = zext i32 %add to i64
  %66 = load %struct.State*, %struct.State** %s.addr, align 8
  %hash67 = getelementptr inbounds %struct.State, %struct.State* %66, i32 0, i32 1
  %67 = load i64, i64* %hash67, align 8
  %add68 = add i64 %67, %conv66
  store i64 %add68, i64* %hash67, align 8
  br label %for.inc.69

for.inc.69:                                       ; preds = %cond.end.64
  %68 = load i32, i32* %j, align 4
  %inc70 = add nsw i32 %68, 1
  store i32 %inc70, i32* %j, align 4
  br label %for.cond.33

for.end.71:                                       ; preds = %for.cond.33
  %69 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %70 = load %struct.State*, %struct.State** %s.addr, align 8
  %call72 = call %struct.State* @maybe_add_state(%struct.Grammar* %69, %struct.State* %70)
  ret %struct.State* %call72
}

; Function Attrs: nounwind uwtable
define internal void @build_states_for_each_production(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %i = alloca i32, align 4
  %s = alloca %struct.State*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 1
  %n = getelementptr inbounds %struct.anon, %struct.anon* %productions, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 1
  %v = getelementptr inbounds %struct.anon, %struct.anon* %productions1, i32 0, i32 2
  %5 = load %struct.Production**, %struct.Production*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Production*, %struct.Production** %5, i64 %idxprom
  %6 = load %struct.Production*, %struct.Production** %arrayidx, align 8
  %internal = getelementptr inbounds %struct.Production, %struct.Production* %6, i32 0, i32 4
  %bf.load = load i8, i8* %internal, align 4
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 7
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions3 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %8, i32 0, i32 1
  %v4 = getelementptr inbounds %struct.anon, %struct.anon* %productions3, i32 0, i32 2
  %9 = load %struct.Production**, %struct.Production*** %v4, align 8
  %arrayidx5 = getelementptr inbounds %struct.Production*, %struct.Production** %9, i64 %idxprom2
  %10 = load %struct.Production*, %struct.Production** %arrayidx5, align 8
  %elem = getelementptr inbounds %struct.Production, %struct.Production* %10, i32 0, i32 9
  %11 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %tobool6 = icmp ne %struct.Elem* %11, null
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call %struct.State* @new_state()
  store %struct.State* %call, %struct.State** %s, align 8
  %12 = load %struct.State*, %struct.State** %s, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions8 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %14, i32 0, i32 1
  %v9 = getelementptr inbounds %struct.anon, %struct.anon* %productions8, i32 0, i32 2
  %15 = load %struct.Production**, %struct.Production*** %v9, align 8
  %arrayidx10 = getelementptr inbounds %struct.Production*, %struct.Production** %15, i64 %idxprom7
  %16 = load %struct.Production*, %struct.Production** %arrayidx10, align 8
  %elem11 = getelementptr inbounds %struct.Production, %struct.Production* %16, i32 0, i32 9
  %17 = load %struct.Elem*, %struct.Elem** %elem11, align 8
  %call12 = call i32 @insert_item(%struct.State* %12, %struct.Elem* %17)
  %18 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %19 = load %struct.State*, %struct.State** %s, align 8
  %call13 = call %struct.State* @build_closure(%struct.Grammar* %18, %struct.State* %19)
  %20 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions15 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %21, i32 0, i32 1
  %v16 = getelementptr inbounds %struct.anon, %struct.anon* %productions15, i32 0, i32 2
  %22 = load %struct.Production**, %struct.Production*** %v16, align 8
  %arrayidx17 = getelementptr inbounds %struct.Production*, %struct.Production** %22, i64 %idxprom14
  %23 = load %struct.Production*, %struct.Production** %arrayidx17, align 8
  %state = getelementptr inbounds %struct.Production, %struct.Production* %23, i32 0, i32 8
  store %struct.State* %call13, %struct.State** %state, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @build_new_states(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca %struct.State*, align 8
  %e = alloca %struct.Elem, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 3
  %n = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.26

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
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals = getelementptr inbounds %struct.Grammar, %struct.Grammar* %8, i32 0, i32 2
  %n3 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals, i32 0, i32 0
  %9 = load i32, i32* %n3, align 4
  %cmp4 = icmp ult i32 %7, %9
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %e, i32 0, i32 0
  store i32 1, i32* %kind, align 4
  %10 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals7 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %11, i32 0, i32 2
  %v8 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals7, i32 0, i32 2
  %12 = load %struct.Term**, %struct.Term*** %v8, align 8
  %arrayidx9 = getelementptr inbounds %struct.Term*, %struct.Term** %12, i64 %idxprom6
  %13 = load %struct.Term*, %struct.Term** %arrayidx9, align 8
  %e10 = getelementptr inbounds %struct.Elem, %struct.Elem* %e, i32 0, i32 3
  %term = bitcast %union.anon* %e10 to %struct.Term**
  store %struct.Term* %13, %struct.Term** %term, align 8
  %14 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %15 = load %struct.State*, %struct.State** %s, align 8
  call void @build_state_for(%struct.Grammar* %14, %struct.State* %15, %struct.Elem* %e)
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  store i32 0, i32* %j, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.21, %for.end
  %17 = load i32, i32* %j, align 4
  %18 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %18, i32 0, i32 1
  %n12 = getelementptr inbounds %struct.anon, %struct.anon* %productions, i32 0, i32 0
  %19 = load i32, i32* %n12, align 4
  %cmp13 = icmp ult i32 %17, %19
  br i1 %cmp13, label %for.body.14, label %for.end.23

for.body.14:                                      ; preds = %for.cond.11
  %kind15 = getelementptr inbounds %struct.Elem, %struct.Elem* %e, i32 0, i32 0
  store i32 0, i32* %kind15, align 4
  %20 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %20 to i64
  %21 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions17 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %21, i32 0, i32 1
  %v18 = getelementptr inbounds %struct.anon, %struct.anon* %productions17, i32 0, i32 2
  %22 = load %struct.Production**, %struct.Production*** %v18, align 8
  %arrayidx19 = getelementptr inbounds %struct.Production*, %struct.Production** %22, i64 %idxprom16
  %23 = load %struct.Production*, %struct.Production** %arrayidx19, align 8
  %e20 = getelementptr inbounds %struct.Elem, %struct.Elem* %e, i32 0, i32 3
  %nterm = bitcast %union.anon* %e20 to %struct.Production**
  store %struct.Production* %23, %struct.Production** %nterm, align 8
  %24 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %25 = load %struct.State*, %struct.State** %s, align 8
  call void @build_state_for(%struct.Grammar* %24, %struct.State* %25, %struct.Elem* %e)
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.14
  %26 = load i32, i32* %j, align 4
  %inc22 = add nsw i32 %26, 1
  store i32 %inc22, i32* %j, align 4
  br label %for.cond.11

for.end.23:                                       ; preds = %for.cond.11
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end.23
  %27 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %27, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sort_Gotos(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %i = alloca i32, align 4
  %vg = alloca %struct.VecGoto*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 3
  %n = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 3
  %v = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states1, i32 0, i32 2
  %5 = load %struct.State**, %struct.State*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.State*, %struct.State** %5, i64 %idxprom
  %6 = load %struct.State*, %struct.State** %arrayidx, align 8
  %gotos = getelementptr inbounds %struct.State, %struct.State* %6, i32 0, i32 4
  store %struct.VecGoto* %gotos, %struct.VecGoto** %vg, align 8
  %7 = load %struct.VecGoto*, %struct.VecGoto** %vg, align 8
  %v2 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %7, i32 0, i32 2
  %8 = load %struct.Goto**, %struct.Goto*** %v2, align 8
  %9 = bitcast %struct.Goto** %8 to i8*
  %10 = load %struct.VecGoto*, %struct.VecGoto** %vg, align 8
  %n3 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %10, i32 0, i32 0
  %11 = load i32, i32* %n3, align 4
  %conv = zext i32 %11 to i64
  call void @qsort(i8* %9, i64 %conv, i64 8, i32 (i8*, i8*)* @gotocmp)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.State* @new_state() #0 {
entry:
  %s = alloca %struct.State*, align 8
  %call = call noalias i8* @malloc(i64 432) #3
  %0 = bitcast i8* %call to %struct.State*
  store %struct.State* %0, %struct.State** %s, align 8
  %1 = load %struct.State*, %struct.State** %s, align 8
  %2 = bitcast %struct.State* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 432, i32 8, i1 false)
  %3 = load %struct.State*, %struct.State** %s, align 8
  ret %struct.State* %3
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare i32 @set_add(i8*, i8*) #1

declare void @vec_add_internal(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @itemcmp(i8* %ai, i8* %aj) #0 {
entry:
  %ai.addr = alloca i8*, align 8
  %aj.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %ai, i8** %ai.addr, align 8
  store i8* %aj, i8** %aj.addr, align 8
  %0 = load i8*, i8** %ai.addr, align 8
  %1 = bitcast i8* %0 to %struct.Elem**
  %2 = load %struct.Elem*, %struct.Elem** %1, align 8
  %rule = getelementptr inbounds %struct.Elem, %struct.Elem* %2, i32 0, i32 2
  %3 = load %struct.Rule*, %struct.Rule** %rule, align 8
  %index = getelementptr inbounds %struct.Rule, %struct.Rule* %3, i32 0, i32 0
  %4 = load i32, i32* %index, align 4
  %shl = shl i32 %4, 8
  %5 = load i8*, i8** %ai.addr, align 8
  %6 = bitcast i8* %5 to %struct.Elem**
  %7 = load %struct.Elem*, %struct.Elem** %6, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %7, i32 0, i32 0
  %8 = load i32, i32* %kind, align 4
  %cmp = icmp ne i32 %8, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i8*, i8** %ai.addr, align 8
  %10 = bitcast i8* %9 to %struct.Elem**
  %11 = load %struct.Elem*, %struct.Elem** %10, align 8
  %index1 = getelementptr inbounds %struct.Elem, %struct.Elem* %11, i32 0, i32 1
  %12 = load i32, i32* %index1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %13 = load i8*, i8** %ai.addr, align 8
  %14 = bitcast i8* %13 to %struct.Elem**
  %15 = load %struct.Elem*, %struct.Elem** %14, align 8
  %rule2 = getelementptr inbounds %struct.Elem, %struct.Elem* %15, i32 0, i32 2
  %16 = load %struct.Rule*, %struct.Rule** %rule2, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %16, i32 0, i32 6
  %n = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems, i32 0, i32 0
  %17 = load i32, i32* %n, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %17, %cond.false ]
  %add = add i32 %shl, %cond
  store i32 %add, i32* %i, align 4
  %18 = load i8*, i8** %aj.addr, align 8
  %19 = bitcast i8* %18 to %struct.Elem**
  %20 = load %struct.Elem*, %struct.Elem** %19, align 8
  %rule3 = getelementptr inbounds %struct.Elem, %struct.Elem* %20, i32 0, i32 2
  %21 = load %struct.Rule*, %struct.Rule** %rule3, align 8
  %index4 = getelementptr inbounds %struct.Rule, %struct.Rule* %21, i32 0, i32 0
  %22 = load i32, i32* %index4, align 4
  %shl5 = shl i32 %22, 8
  %23 = load i8*, i8** %aj.addr, align 8
  %24 = bitcast i8* %23 to %struct.Elem**
  %25 = load %struct.Elem*, %struct.Elem** %24, align 8
  %kind6 = getelementptr inbounds %struct.Elem, %struct.Elem* %25, i32 0, i32 0
  %26 = load i32, i32* %kind6, align 4
  %cmp7 = icmp ne i32 %26, 3
  br i1 %cmp7, label %cond.true.8, label %cond.false.10

cond.true.8:                                      ; preds = %cond.end
  %27 = load i8*, i8** %aj.addr, align 8
  %28 = bitcast i8* %27 to %struct.Elem**
  %29 = load %struct.Elem*, %struct.Elem** %28, align 8
  %index9 = getelementptr inbounds %struct.Elem, %struct.Elem* %29, i32 0, i32 1
  %30 = load i32, i32* %index9, align 4
  br label %cond.end.14

cond.false.10:                                    ; preds = %cond.end
  %31 = load i8*, i8** %aj.addr, align 8
  %32 = bitcast i8* %31 to %struct.Elem**
  %33 = load %struct.Elem*, %struct.Elem** %32, align 8
  %rule11 = getelementptr inbounds %struct.Elem, %struct.Elem* %33, i32 0, i32 2
  %34 = load %struct.Rule*, %struct.Rule** %rule11, align 8
  %elems12 = getelementptr inbounds %struct.Rule, %struct.Rule* %34, i32 0, i32 6
  %n13 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems12, i32 0, i32 0
  %35 = load i32, i32* %n13, align 4
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.10, %cond.true.8
  %cond15 = phi i32 [ %30, %cond.true.8 ], [ %35, %cond.false.10 ]
  %add16 = add i32 %shl5, %cond15
  store i32 %add16, i32* %j, align 4
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %j, align 4
  %cmp17 = icmp ugt i32 %36, %37
  br i1 %cmp17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.end.14
  br label %cond.end.22

cond.false.19:                                    ; preds = %cond.end.14
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %j, align 4
  %cmp20 = icmp ult i32 %38, %39
  %cond21 = select i1 %cmp20, i32 -1, i32 0
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.19, %cond.true.18
  %cond23 = phi i32 [ 1, %cond.true.18 ], [ %cond21, %cond.false.19 ]
  ret i32 %cond23
}

; Function Attrs: nounwind uwtable
define internal %struct.State* @maybe_add_state(%struct.Grammar* %g, %struct.State* %s) #0 {
entry:
  %retval = alloca %struct.State*, align 8
  %g.addr = alloca %struct.Grammar*, align 8
  %s.addr = alloca %struct.State*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store %struct.State* %s, %struct.State** %s.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 3
  %n = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  %3 = load %struct.State*, %struct.State** %s.addr, align 8
  %hash = getelementptr inbounds %struct.State, %struct.State* %3, i32 0, i32 1
  %4 = load i64, i64* %hash, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %6, i32 0, i32 3
  %v = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states1, i32 0, i32 2
  %7 = load %struct.State**, %struct.State*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.State*, %struct.State** %7, i64 %idxprom
  %8 = load %struct.State*, %struct.State** %arrayidx, align 8
  %hash2 = getelementptr inbounds %struct.State, %struct.State* %8, i32 0, i32 1
  %9 = load i64, i64* %hash2, align 8
  %cmp3 = icmp eq i64 %4, %9
  br i1 %cmp3, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.State*, %struct.State** %s.addr, align 8
  %items = getelementptr inbounds %struct.State, %struct.State* %10, i32 0, i32 2
  %n4 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items, i32 0, i32 0
  %11 = load i32, i32* %n4, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states6 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %13, i32 0, i32 3
  %v7 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states6, i32 0, i32 2
  %14 = load %struct.State**, %struct.State*** %v7, align 8
  %arrayidx8 = getelementptr inbounds %struct.State*, %struct.State** %14, i64 %idxprom5
  %15 = load %struct.State*, %struct.State** %arrayidx8, align 8
  %items9 = getelementptr inbounds %struct.State, %struct.State* %15, i32 0, i32 2
  %n10 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items9, i32 0, i32 0
  %16 = load i32, i32* %n10, align 4
  %cmp11 = icmp eq i32 %11, %16
  br i1 %cmp11, label %if.then, label %if.end.35

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then
  %17 = load i32, i32* %j, align 4
  %18 = load %struct.State*, %struct.State** %s.addr, align 8
  %items13 = getelementptr inbounds %struct.State, %struct.State* %18, i32 0, i32 2
  %n14 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items13, i32 0, i32 0
  %19 = load i32, i32* %n14, align 4
  %cmp15 = icmp ult i32 %17, %19
  br i1 %cmp15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.12
  %20 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load %struct.State*, %struct.State** %s.addr, align 8
  %items18 = getelementptr inbounds %struct.State, %struct.State* %21, i32 0, i32 2
  %v19 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items18, i32 0, i32 2
  %22 = load %struct.Elem**, %struct.Elem*** %v19, align 8
  %arrayidx20 = getelementptr inbounds %struct.Elem*, %struct.Elem** %22, i64 %idxprom17
  %23 = load %struct.Elem*, %struct.Elem** %arrayidx20, align 8
  %24 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %24 to i64
  %25 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %25 to i64
  %26 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states23 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %26, i32 0, i32 3
  %v24 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states23, i32 0, i32 2
  %27 = load %struct.State**, %struct.State*** %v24, align 8
  %arrayidx25 = getelementptr inbounds %struct.State*, %struct.State** %27, i64 %idxprom22
  %28 = load %struct.State*, %struct.State** %arrayidx25, align 8
  %items26 = getelementptr inbounds %struct.State, %struct.State* %28, i32 0, i32 2
  %v27 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items26, i32 0, i32 2
  %29 = load %struct.Elem**, %struct.Elem*** %v27, align 8
  %arrayidx28 = getelementptr inbounds %struct.Elem*, %struct.Elem** %29, i64 %idxprom21
  %30 = load %struct.Elem*, %struct.Elem** %arrayidx28, align 8
  %cmp29 = icmp ne %struct.Elem* %23, %30
  br i1 %cmp29, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %for.body.16
  br label %Lcont

if.end:                                           ; preds = %for.body.16
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  %32 = load %struct.State*, %struct.State** %s.addr, align 8
  call void @free_state(%struct.State* %32)
  %33 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %33 to i64
  %34 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states32 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %34, i32 0, i32 3
  %v33 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states32, i32 0, i32 2
  %35 = load %struct.State**, %struct.State*** %v33, align 8
  %arrayidx34 = getelementptr inbounds %struct.State*, %struct.State** %35, i64 %idxprom31
  %36 = load %struct.State*, %struct.State** %arrayidx34, align 8
  store %struct.State* %36, %struct.State** %retval
  br label %return

Lcont:                                            ; preds = %if.then.30
  br label %if.end.35

if.end.35:                                        ; preds = %Lcont, %land.lhs.true, %for.body
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %37 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %37, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  %38 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states39 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %38, i32 0, i32 3
  %n40 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states39, i32 0, i32 0
  %39 = load i32, i32* %n40, align 4
  %40 = load %struct.State*, %struct.State** %s.addr, align 8
  %index = getelementptr inbounds %struct.State, %struct.State* %40, i32 0, i32 0
  store i32 %39, i32* %index, align 4
  br label %do.body

do.body:                                          ; preds = %for.end.38
  %41 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states41 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %41, i32 0, i32 3
  %v42 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states41, i32 0, i32 2
  %42 = load %struct.State**, %struct.State*** %v42, align 8
  %tobool = icmp ne %struct.State** %42, null
  br i1 %tobool, label %if.else, label %if.then.43

if.then.43:                                       ; preds = %do.body
  %43 = load %struct.State*, %struct.State** %s.addr, align 8
  %44 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states44 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %44, i32 0, i32 3
  %n45 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states44, i32 0, i32 0
  %45 = load i32, i32* %n45, align 4
  %inc46 = add i32 %45, 1
  store i32 %inc46, i32* %n45, align 4
  %idxprom47 = zext i32 %45 to i64
  %46 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states48 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %46, i32 0, i32 3
  %e = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states48, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.State*], [3 x %struct.State*]* %e, i32 0, i32 0
  %47 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states49 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %47, i32 0, i32 3
  %v50 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states49, i32 0, i32 2
  store %struct.State** %arraydecay, %struct.State*** %v50, align 8
  %arrayidx51 = getelementptr inbounds %struct.State*, %struct.State** %arraydecay, i64 %idxprom47
  store %struct.State* %43, %struct.State** %arrayidx51, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %48 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states52 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %48, i32 0, i32 3
  %v53 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states52, i32 0, i32 2
  %49 = load %struct.State**, %struct.State*** %v53, align 8
  %50 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states54 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %50, i32 0, i32 3
  %e55 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states54, i32 0, i32 3
  %arraydecay56 = getelementptr inbounds [3 x %struct.State*], [3 x %struct.State*]* %e55, i32 0, i32 0
  %cmp57 = icmp eq %struct.State** %49, %arraydecay56
  br i1 %cmp57, label %if.then.58, label %if.else.71

if.then.58:                                       ; preds = %if.else
  %51 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states59 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %51, i32 0, i32 3
  %n60 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states59, i32 0, i32 0
  %52 = load i32, i32* %n60, align 4
  %cmp61 = icmp ult i32 %52, 3
  br i1 %cmp61, label %if.then.62, label %if.end.70

if.then.62:                                       ; preds = %if.then.58
  %53 = load %struct.State*, %struct.State** %s.addr, align 8
  %54 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states63 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %54, i32 0, i32 3
  %n64 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states63, i32 0, i32 0
  %55 = load i32, i32* %n64, align 4
  %inc65 = add i32 %55, 1
  store i32 %inc65, i32* %n64, align 4
  %idxprom66 = zext i32 %55 to i64
  %56 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states67 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %56, i32 0, i32 3
  %v68 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states67, i32 0, i32 2
  %57 = load %struct.State**, %struct.State*** %v68, align 8
  %arrayidx69 = getelementptr inbounds %struct.State*, %struct.State** %57, i64 %idxprom66
  store %struct.State* %53, %struct.State** %arrayidx69, align 8
  br label %do.end

if.end.70:                                        ; preds = %if.then.58
  br label %if.end.84

if.else.71:                                       ; preds = %if.else
  %58 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states72 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %58, i32 0, i32 3
  %n73 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states72, i32 0, i32 0
  %59 = load i32, i32* %n73, align 4
  %and = and i32 %59, 7
  %tobool74 = icmp ne i32 %and, 0
  br i1 %tobool74, label %if.then.75, label %if.end.83

if.then.75:                                       ; preds = %if.else.71
  %60 = load %struct.State*, %struct.State** %s.addr, align 8
  %61 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states76 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %61, i32 0, i32 3
  %n77 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states76, i32 0, i32 0
  %62 = load i32, i32* %n77, align 4
  %inc78 = add i32 %62, 1
  store i32 %inc78, i32* %n77, align 4
  %idxprom79 = zext i32 %62 to i64
  %63 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states80 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %63, i32 0, i32 3
  %v81 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states80, i32 0, i32 2
  %64 = load %struct.State**, %struct.State*** %v81, align 8
  %arrayidx82 = getelementptr inbounds %struct.State*, %struct.State** %64, i64 %idxprom79
  store %struct.State* %60, %struct.State** %arrayidx82, align 8
  br label %do.end

if.end.83:                                        ; preds = %if.else.71
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.70
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84
  %65 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states86 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %65, i32 0, i32 3
  %66 = bitcast %struct.anon.6* %states86 to i8*
  %67 = load %struct.State*, %struct.State** %s.addr, align 8
  %68 = bitcast %struct.State* %67 to i8*
  call void @vec_add_internal(i8* %66, i8* %68)
  br label %do.end

do.end:                                           ; preds = %if.end.85, %if.then.75, %if.then.62, %if.then.43
  %69 = load %struct.State*, %struct.State** %s.addr, align 8
  store %struct.State* %69, %struct.State** %retval
  br label %return

return:                                           ; preds = %do.end, %for.end
  %70 = load %struct.State*, %struct.State** %retval
  ret %struct.State* %70
}

; Function Attrs: nounwind uwtable
define internal void @free_state(%struct.State* %s) #0 {
entry:
  %s.addr = alloca %struct.State*, align 8
  store %struct.State* %s, %struct.State** %s.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.State*, %struct.State** %s.addr, align 8
  %items = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items, i32 0, i32 2
  %1 = load %struct.Elem**, %struct.Elem*** %v, align 8
  %tobool = icmp ne %struct.Elem** %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %2 = load %struct.State*, %struct.State** %s.addr, align 8
  %items1 = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 2
  %v2 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items1, i32 0, i32 2
  %3 = load %struct.Elem**, %struct.Elem*** %v2, align 8
  %4 = load %struct.State*, %struct.State** %s.addr, align 8
  %items3 = getelementptr inbounds %struct.State, %struct.State* %4, i32 0, i32 2
  %e = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items3, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e, i32 0, i32 0
  %cmp = icmp ne %struct.Elem** %3, %arraydecay
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.State*, %struct.State** %s.addr, align 8
  %items4 = getelementptr inbounds %struct.State, %struct.State* %5, i32 0, i32 2
  %v5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items4, i32 0, i32 2
  %6 = load %struct.Elem**, %struct.Elem*** %v5, align 8
  %7 = bitcast %struct.Elem** %6 to i8*
  call void @free(i8* %7) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  br label %do.body.6

do.body.6:                                        ; preds = %if.end
  %8 = load %struct.State*, %struct.State** %s.addr, align 8
  %items7 = getelementptr inbounds %struct.State, %struct.State* %8, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items7, i32 0, i32 0
  store i32 0, i32* %n, align 4
  %9 = load %struct.State*, %struct.State** %s.addr, align 8
  %items8 = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 2
  %v9 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items8, i32 0, i32 2
  store %struct.Elem** null, %struct.Elem*** %v9, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.6
  br label %do.end.10

do.end.10:                                        ; preds = %do.end
  br label %do.body.11

do.body.11:                                       ; preds = %do.end.10
  %10 = load %struct.State*, %struct.State** %s.addr, align 8
  %items_hash = getelementptr inbounds %struct.State, %struct.State* %10, i32 0, i32 3
  %v12 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %items_hash, i32 0, i32 2
  %11 = load %struct.Elem**, %struct.Elem*** %v12, align 8
  %tobool13 = icmp ne %struct.Elem** %11, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.24

land.lhs.true.14:                                 ; preds = %do.body.11
  %12 = load %struct.State*, %struct.State** %s.addr, align 8
  %items_hash15 = getelementptr inbounds %struct.State, %struct.State* %12, i32 0, i32 3
  %v16 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %items_hash15, i32 0, i32 2
  %13 = load %struct.Elem**, %struct.Elem*** %v16, align 8
  %14 = load %struct.State*, %struct.State** %s.addr, align 8
  %items_hash17 = getelementptr inbounds %struct.State, %struct.State* %14, i32 0, i32 3
  %e18 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %items_hash17, i32 0, i32 3
  %arraydecay19 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e18, i32 0, i32 0
  %cmp20 = icmp ne %struct.Elem** %13, %arraydecay19
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %land.lhs.true.14
  %15 = load %struct.State*, %struct.State** %s.addr, align 8
  %items_hash22 = getelementptr inbounds %struct.State, %struct.State* %15, i32 0, i32 3
  %v23 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %items_hash22, i32 0, i32 2
  %16 = load %struct.Elem**, %struct.Elem*** %v23, align 8
  %17 = bitcast %struct.Elem** %16 to i8*
  call void @free(i8* %17) #3
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %land.lhs.true.14, %do.body.11
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.24
  %18 = load %struct.State*, %struct.State** %s.addr, align 8
  %items_hash26 = getelementptr inbounds %struct.State, %struct.State* %18, i32 0, i32 3
  %n27 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %items_hash26, i32 0, i32 0
  store i32 0, i32* %n27, align 4
  %19 = load %struct.State*, %struct.State** %s.addr, align 8
  %items_hash28 = getelementptr inbounds %struct.State, %struct.State* %19, i32 0, i32 3
  %v29 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %items_hash28, i32 0, i32 2
  store %struct.Elem** null, %struct.Elem*** %v29, align 8
  br label %do.end.30

do.end.30:                                        ; preds = %do.body.25
  br label %do.end.31

do.end.31:                                        ; preds = %do.end.30
  %20 = load %struct.State*, %struct.State** %s.addr, align 8
  %21 = bitcast %struct.State* %20 to i8*
  call void @free(i8* %21) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @build_state_for(%struct.Grammar* %g, %struct.State* %s, %struct.Elem* %e) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %s.addr = alloca %struct.State*, align 8
  %e.addr = alloca %struct.Elem*, align 8
  %j = alloca i32, align 4
  %i = alloca %struct.Elem*, align 8
  %ss = alloca %struct.State*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store %struct.State* %s, %struct.State** %s.addr, align 8
  store %struct.Elem* %e, %struct.Elem** %e.addr, align 8
  store %struct.State* null, %struct.State** %ss, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load %struct.State*, %struct.State** %s.addr, align 8
  %items = getelementptr inbounds %struct.State, %struct.State* %1, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.State*, %struct.State** %s.addr, align 8
  %items1 = getelementptr inbounds %struct.State, %struct.State* %4, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon.3, %struct.anon.3* %items1, i32 0, i32 2
  %5 = load %struct.Elem**, %struct.Elem*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Elem*, %struct.Elem** %5, i64 %idxprom
  %6 = load %struct.Elem*, %struct.Elem** %arrayidx, align 8
  store %struct.Elem* %6, %struct.Elem** %i, align 8
  %7 = load %struct.Elem*, %struct.Elem** %i, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %7, i32 0, i32 0
  %8 = load i32, i32* %kind, align 4
  %cmp2 = icmp ne i32 %8, 3
  br i1 %cmp2, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.Elem*, %struct.Elem** %i, align 8
  %kind3 = getelementptr inbounds %struct.Elem, %struct.Elem* %9, i32 0, i32 0
  %10 = load i32, i32* %kind3, align 4
  %11 = load %struct.Elem*, %struct.Elem** %e.addr, align 8
  %kind4 = getelementptr inbounds %struct.Elem, %struct.Elem* %11, i32 0, i32 0
  %12 = load i32, i32* %kind4, align 4
  %cmp5 = icmp eq i32 %10, %12
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.14

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %13 = load %struct.Elem*, %struct.Elem** %i, align 8
  %e7 = getelementptr inbounds %struct.Elem, %struct.Elem* %13, i32 0, i32 3
  %term_or_nterm = bitcast %union.anon* %e7 to i8**
  %14 = load i8*, i8** %term_or_nterm, align 8
  %15 = load %struct.Elem*, %struct.Elem** %e.addr, align 8
  %e8 = getelementptr inbounds %struct.Elem, %struct.Elem* %15, i32 0, i32 3
  %term_or_nterm9 = bitcast %union.anon* %e8 to i8**
  %16 = load i8*, i8** %term_or_nterm9, align 8
  %cmp10 = icmp eq i8* %14, %16
  br i1 %cmp10, label %if.then, label %if.end.14

if.then:                                          ; preds = %land.lhs.true.6
  %17 = load %struct.State*, %struct.State** %ss, align 8
  %tobool = icmp ne %struct.State* %17, null
  br i1 %tobool, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %if.then
  %call = call %struct.State* @new_state()
  store %struct.State* %call, %struct.State** %ss, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %18 = load %struct.State*, %struct.State** %ss, align 8
  %19 = load %struct.Elem*, %struct.Elem** %i, align 8
  %call12 = call %struct.Elem* @next_elem(%struct.Elem* %19)
  %call13 = call i32 @insert_item(%struct.State* %18, %struct.Elem* %call12)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %land.lhs.true.6, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.State*, %struct.State** %ss, align 8
  %tobool15 = icmp ne %struct.State* %21, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.end
  %22 = load %struct.State*, %struct.State** %s.addr, align 8
  %23 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %24 = load %struct.State*, %struct.State** %ss, align 8
  %call17 = call %struct.State* @build_closure(%struct.Grammar* %23, %struct.State* %24)
  %25 = load %struct.Elem*, %struct.Elem** %e.addr, align 8
  call void @add_goto(%struct.State* %22, %struct.State* %call17, %struct.Elem* %25)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.Elem* @next_elem(%struct.Elem* %i) #0 {
entry:
  %retval = alloca %struct.Elem*, align 8
  %i.addr = alloca %struct.Elem*, align 8
  store %struct.Elem* %i, %struct.Elem** %i.addr, align 8
  %0 = load %struct.Elem*, %struct.Elem** %i.addr, align 8
  %index = getelementptr inbounds %struct.Elem, %struct.Elem* %0, i32 0, i32 1
  %1 = load i32, i32* %index, align 4
  %add = add i32 %1, 1
  %2 = load %struct.Elem*, %struct.Elem** %i.addr, align 8
  %rule = getelementptr inbounds %struct.Elem, %struct.Elem* %2, i32 0, i32 2
  %3 = load %struct.Rule*, %struct.Rule** %rule, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %3, i32 0, i32 6
  %n = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems, i32 0, i32 0
  %4 = load i32, i32* %n, align 4
  %cmp = icmp uge i32 %add, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.Elem*, %struct.Elem** %i.addr, align 8
  %rule1 = getelementptr inbounds %struct.Elem, %struct.Elem* %5, i32 0, i32 2
  %6 = load %struct.Rule*, %struct.Rule** %rule1, align 8
  %end = getelementptr inbounds %struct.Rule, %struct.Rule* %6, i32 0, i32 7
  %7 = load %struct.Elem*, %struct.Elem** %end, align 8
  store %struct.Elem* %7, %struct.Elem** %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load %struct.Elem*, %struct.Elem** %i.addr, align 8
  %index2 = getelementptr inbounds %struct.Elem, %struct.Elem* %8, i32 0, i32 1
  %9 = load i32, i32* %index2, align 4
  %add3 = add i32 %9, 1
  %idxprom = zext i32 %add3 to i64
  %10 = load %struct.Elem*, %struct.Elem** %i.addr, align 8
  %rule4 = getelementptr inbounds %struct.Elem, %struct.Elem* %10, i32 0, i32 2
  %11 = load %struct.Rule*, %struct.Rule** %rule4, align 8
  %elems5 = getelementptr inbounds %struct.Rule, %struct.Rule* %11, i32 0, i32 6
  %v = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems5, i32 0, i32 2
  %12 = load %struct.Elem**, %struct.Elem*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Elem*, %struct.Elem** %12, i64 %idxprom
  %13 = load %struct.Elem*, %struct.Elem** %arrayidx, align 8
  store %struct.Elem* %13, %struct.Elem** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %14 = load %struct.Elem*, %struct.Elem** %retval
  ret %struct.Elem* %14
}

; Function Attrs: nounwind uwtable
define internal void @add_goto(%struct.State* %s, %struct.State* %ss, %struct.Elem* %e) #0 {
entry:
  %s.addr = alloca %struct.State*, align 8
  %ss.addr = alloca %struct.State*, align 8
  %e.addr = alloca %struct.Elem*, align 8
  %g = alloca %struct.Goto*, align 8
  store %struct.State* %s, %struct.State** %s.addr, align 8
  store %struct.State* %ss, %struct.State** %ss.addr, align 8
  store %struct.Elem* %e, %struct.Elem** %e.addr, align 8
  %call = call noalias i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.Goto*
  store %struct.Goto* %0, %struct.Goto** %g, align 8
  %1 = load %struct.State*, %struct.State** %ss.addr, align 8
  %2 = load %struct.Goto*, %struct.Goto** %g, align 8
  %state = getelementptr inbounds %struct.Goto, %struct.Goto* %2, i32 0, i32 1
  store %struct.State* %1, %struct.State** %state, align 8
  %3 = load %struct.Elem*, %struct.Elem** %e.addr, align 8
  %call1 = call %struct.Elem* @clone_elem(%struct.Elem* %3)
  %4 = load %struct.Goto*, %struct.Goto** %g, align 8
  %elem = getelementptr inbounds %struct.Goto, %struct.Goto* %4, i32 0, i32 0
  store %struct.Elem* %call1, %struct.Elem** %elem, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos = getelementptr inbounds %struct.State, %struct.State* %5, i32 0, i32 4
  %v = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos, i32 0, i32 2
  %6 = load %struct.Goto**, %struct.Goto*** %v, align 8
  %tobool = icmp ne %struct.Goto** %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %7 = load %struct.Goto*, %struct.Goto** %g, align 8
  %8 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos2 = getelementptr inbounds %struct.State, %struct.State* %8, i32 0, i32 4
  %n = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos2, i32 0, i32 0
  %9 = load i32, i32* %n, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %n, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos3 = getelementptr inbounds %struct.State, %struct.State* %10, i32 0, i32 4
  %e4 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos3, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Goto*], [3 x %struct.Goto*]* %e4, i32 0, i32 0
  %11 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos5 = getelementptr inbounds %struct.State, %struct.State* %11, i32 0, i32 4
  %v6 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos5, i32 0, i32 2
  store %struct.Goto** %arraydecay, %struct.Goto*** %v6, align 8
  %arrayidx = getelementptr inbounds %struct.Goto*, %struct.Goto** %arraydecay, i64 %idxprom
  store %struct.Goto* %7, %struct.Goto** %arrayidx, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %12 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos7 = getelementptr inbounds %struct.State, %struct.State* %12, i32 0, i32 4
  %v8 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos7, i32 0, i32 2
  %13 = load %struct.Goto**, %struct.Goto*** %v8, align 8
  %14 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos9 = getelementptr inbounds %struct.State, %struct.State* %14, i32 0, i32 4
  %e10 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos9, i32 0, i32 3
  %arraydecay11 = getelementptr inbounds [3 x %struct.Goto*], [3 x %struct.Goto*]* %e10, i32 0, i32 0
  %cmp = icmp eq %struct.Goto** %13, %arraydecay11
  br i1 %cmp, label %if.then.12, label %if.else.24

if.then.12:                                       ; preds = %if.else
  %15 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos13 = getelementptr inbounds %struct.State, %struct.State* %15, i32 0, i32 4
  %n14 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos13, i32 0, i32 0
  %16 = load i32, i32* %n14, align 4
  %cmp15 = icmp ult i32 %16, 3
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then.12
  %17 = load %struct.Goto*, %struct.Goto** %g, align 8
  %18 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos17 = getelementptr inbounds %struct.State, %struct.State* %18, i32 0, i32 4
  %n18 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos17, i32 0, i32 0
  %19 = load i32, i32* %n18, align 4
  %inc19 = add i32 %19, 1
  store i32 %inc19, i32* %n18, align 4
  %idxprom20 = zext i32 %19 to i64
  %20 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos21 = getelementptr inbounds %struct.State, %struct.State* %20, i32 0, i32 4
  %v22 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos21, i32 0, i32 2
  %21 = load %struct.Goto**, %struct.Goto*** %v22, align 8
  %arrayidx23 = getelementptr inbounds %struct.Goto*, %struct.Goto** %21, i64 %idxprom20
  store %struct.Goto* %17, %struct.Goto** %arrayidx23, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.12
  br label %if.end.37

if.else.24:                                       ; preds = %if.else
  %22 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos25 = getelementptr inbounds %struct.State, %struct.State* %22, i32 0, i32 4
  %n26 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos25, i32 0, i32 0
  %23 = load i32, i32* %n26, align 4
  %and = and i32 %23, 7
  %tobool27 = icmp ne i32 %and, 0
  br i1 %tobool27, label %if.then.28, label %if.end.36

if.then.28:                                       ; preds = %if.else.24
  %24 = load %struct.Goto*, %struct.Goto** %g, align 8
  %25 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos29 = getelementptr inbounds %struct.State, %struct.State* %25, i32 0, i32 4
  %n30 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos29, i32 0, i32 0
  %26 = load i32, i32* %n30, align 4
  %inc31 = add i32 %26, 1
  store i32 %inc31, i32* %n30, align 4
  %idxprom32 = zext i32 %26 to i64
  %27 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos33 = getelementptr inbounds %struct.State, %struct.State* %27, i32 0, i32 4
  %v34 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos33, i32 0, i32 2
  %28 = load %struct.Goto**, %struct.Goto*** %v34, align 8
  %arrayidx35 = getelementptr inbounds %struct.Goto*, %struct.Goto** %28, i64 %idxprom32
  store %struct.Goto* %24, %struct.Goto** %arrayidx35, align 8
  br label %do.end

if.end.36:                                        ; preds = %if.else.24
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37
  %29 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos39 = getelementptr inbounds %struct.State, %struct.State* %29, i32 0, i32 4
  %30 = bitcast %struct.VecGoto* %gotos39 to i8*
  %31 = load %struct.Goto*, %struct.Goto** %g, align 8
  %32 = bitcast %struct.Goto* %31 to i8*
  call void @vec_add_internal(i8* %30, i8* %32)
  br label %do.end

do.end:                                           ; preds = %if.end.38, %if.then.28, %if.then.16, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.Elem* @clone_elem(%struct.Elem* %e) #0 {
entry:
  %e.addr = alloca %struct.Elem*, align 8
  %ee = alloca %struct.Elem*, align 8
  store %struct.Elem* %e, %struct.Elem** %e.addr, align 8
  %call = call noalias i8* @malloc(i64 32) #3
  %0 = bitcast i8* %call to %struct.Elem*
  store %struct.Elem* %0, %struct.Elem** %ee, align 8
  %1 = load %struct.Elem*, %struct.Elem** %ee, align 8
  %2 = bitcast %struct.Elem* %1 to i8*
  %3 = load %struct.Elem*, %struct.Elem** %e.addr, align 8
  %4 = bitcast %struct.Elem* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %4, i64 32, i32 8, i1 false)
  %5 = load %struct.Elem*, %struct.Elem** %ee, align 8
  ret %struct.Elem* %5
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @gotocmp(i8* %aa, i8* %bb) #0 {
entry:
  %aa.addr = alloca i8*, align 8
  %bb.addr = alloca i8*, align 8
  %a = alloca %struct.Goto*, align 8
  %b = alloca %struct.Goto*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %aa, i8** %aa.addr, align 8
  store i8* %bb, i8** %bb.addr, align 8
  %0 = load i8*, i8** %aa.addr, align 8
  %1 = bitcast i8* %0 to %struct.Goto**
  %2 = load %struct.Goto*, %struct.Goto** %1, align 8
  store %struct.Goto* %2, %struct.Goto** %a, align 8
  %3 = load i8*, i8** %bb.addr, align 8
  %4 = bitcast i8* %3 to %struct.Goto**
  %5 = load %struct.Goto*, %struct.Goto** %4, align 8
  store %struct.Goto* %5, %struct.Goto** %b, align 8
  %6 = load %struct.Goto*, %struct.Goto** %a, align 8
  %state = getelementptr inbounds %struct.Goto, %struct.Goto* %6, i32 0, i32 1
  %7 = load %struct.State*, %struct.State** %state, align 8
  %index = getelementptr inbounds %struct.State, %struct.State* %7, i32 0, i32 0
  %8 = load i32, i32* %index, align 4
  store i32 %8, i32* %i, align 4
  %9 = load %struct.Goto*, %struct.Goto** %b, align 8
  %state1 = getelementptr inbounds %struct.Goto, %struct.Goto* %9, i32 0, i32 1
  %10 = load %struct.State*, %struct.State** %state1, align 8
  %index2 = getelementptr inbounds %struct.State, %struct.State* %10, i32 0, i32 0
  %11 = load i32, i32* %index2, align 4
  store i32 %11, i32* %j, align 4
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %j, align 4
  %cmp = icmp sgt i32 %12, %13
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %14, %15
  %cond = select i1 %cmp3, i32 -1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  ret i32 %cond4
}

; Function Attrs: nounwind uwtable
define internal void @add_action(%struct.Grammar* %g, %struct.State* %s, i32 %akind, %struct.Term* %aterm, %struct.Rule* %arule, %struct.State* %astate) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %s.addr = alloca %struct.State*, align 8
  %akind.addr = alloca i32, align 4
  %aterm.addr = alloca %struct.Term*, align 8
  %arule.addr = alloca %struct.Rule*, align 8
  %astate.addr = alloca %struct.State*, align 8
  %i = alloca i32, align 4
  %a = alloca %struct.Action*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store %struct.State* %s, %struct.State** %s.addr, align 8
  store i32 %akind, i32* %akind.addr, align 4
  store %struct.Term* %aterm, %struct.Term** %aterm.addr, align 8
  store %struct.Rule* %arule, %struct.Rule** %arule.addr, align 8
  store %struct.State* %astate, %struct.State** %astate.addr, align 8
  %0 = load i32, i32* %akind.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else.51

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.State*, %struct.State** %s.addr, align 8
  %reduce_actions = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 6
  %n = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions, i32 0, i32 0
  %3 = load i32, i32* %n, align 4
  %cmp1 = icmp ult i32 %1, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.State*, %struct.State** %s.addr, align 8
  %reduce_actions2 = getelementptr inbounds %struct.State, %struct.State* %5, i32 0, i32 6
  %v = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions2, i32 0, i32 2
  %6 = load %struct.Action**, %struct.Action*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Action*, %struct.Action** %6, i64 %idxprom
  %7 = load %struct.Action*, %struct.Action** %arrayidx, align 8
  %rule = getelementptr inbounds %struct.Action, %struct.Action* %7, i32 0, i32 2
  %8 = load %struct.Rule*, %struct.Rule** %rule, align 8
  %9 = load %struct.Rule*, %struct.Rule** %arule.addr, align 8
  %cmp3 = icmp eq %struct.Rule* %8, %9
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  br label %if.end.131

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %12 = load i32, i32* %akind.addr, align 4
  %13 = load %struct.Term*, %struct.Term** %aterm.addr, align 8
  %14 = load %struct.Rule*, %struct.Rule** %arule.addr, align 8
  %15 = load %struct.State*, %struct.State** %astate.addr, align 8
  %call = call %struct.Action* @new_Action(%struct.Grammar* %11, i32 %12, %struct.Term* %13, %struct.Rule* %14, %struct.State* %15)
  store %struct.Action* %call, %struct.Action** %a, align 8
  br label %do.body

do.body:                                          ; preds = %for.end
  %16 = load %struct.State*, %struct.State** %s.addr, align 8
  %reduce_actions5 = getelementptr inbounds %struct.State, %struct.State* %16, i32 0, i32 6
  %v6 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions5, i32 0, i32 2
  %17 = load %struct.Action**, %struct.Action*** %v6, align 8
  %tobool = icmp ne %struct.Action** %17, null
  br i1 %tobool, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %do.body
  %18 = load %struct.Action*, %struct.Action** %a, align 8
  %19 = load %struct.State*, %struct.State** %s.addr, align 8
  %reduce_actions8 = getelementptr inbounds %struct.State, %struct.State* %19, i32 0, i32 6
  %n9 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions8, i32 0, i32 0
  %20 = load i32, i32* %n9, align 4
  %inc10 = add i32 %20, 1
  store i32 %inc10, i32* %n9, align 4
  %idxprom11 = zext i32 %20 to i64
  %21 = load %struct.State*, %struct.State** %s.addr, align 8
  %reduce_actions12 = getelementptr inbounds %struct.State, %struct.State* %21, i32 0, i32 6
  %e = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions12, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e, i32 0, i32 0
  %22 = load %struct.State*, %struct.State** %s.addr, align 8
  %reduce_actions13 = getelementptr inbounds %struct.State, %struct.State* %22, i32 0, i32 6
  %v14 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions13, i32 0, i32 2
  store %struct.Action** %arraydecay, %struct.Action*** %v14, align 8
  %arrayidx15 = getelementptr inbounds %struct.Action*, %struct.Action** %arraydecay, i64 %idxprom11
  store %struct.Action* %18, %struct.Action** %arrayidx15, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %23 = load %struct.State*, %struct.State** %s.addr, align 8
  %reduce_actions16 = getelementptr inbounds %struct.State, %struct.State* %23, i32 0, i32 6
  %v17 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions16, i32 0, i32 2
  %24 = load %struct.Action**, %struct.Action*** %v17, align 8
  %25 = load %struct.State*, %struct.State** %s.addr, align 8
  %reduce_actions18 = getelementptr inbounds %struct.State, %struct.State* %25, i32 0, i32 6
  %e19 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions18, i32 0, i32 3
  %arraydecay20 = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e19, i32 0, i32 0
  %cmp21 = icmp eq %struct.Action** %24, %arraydecay20
  br i1 %cmp21, label %if.then.22, label %if.else.35

if.then.22:                                       ; preds = %if.else
  %26 = load %struct.State*, %struct.State** %s.addr, align 8
  %reduce_actions23 = getelementptr inbounds %struct.State, %struct.State* %26, i32 0, i32 6
  %n24 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions23, i32 0, i32 0
  %27 = load i32, i32* %n24, align 4
  %cmp25 = icmp ult i32 %27, 3
  br i1 %cmp25, label %if.then.26, label %if.end.34

if.then.26:                                       ; preds = %if.then.22
  %28 = load %struct.Action*, %struct.Action** %a, align 8
  %29 = load %struct.State*, %struct.State** %s.addr, align 8
  %reduce_actions27 = getelementptr inbounds %struct.State, %struct.State* %29, i32 0, i32 6
  %n28 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions27, i32 0, i32 0
  %30 = load i32, i32* %n28, align 4
  %inc29 = add i32 %30, 1
  store i32 %inc29, i32* %n28, align 4
  %idxprom30 = zext i32 %30 to i64
  %31 = load %struct.State*, %struct.State** %s.addr, align 8
  %reduce_actions31 = getelementptr inbounds %struct.State, %struct.State* %31, i32 0, i32 6
  %v32 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions31, i32 0, i32 2
  %32 = load %struct.Action**, %struct.Action*** %v32, align 8
  %arrayidx33 = getelementptr inbounds %struct.Action*, %struct.Action** %32, i64 %idxprom30
  store %struct.Action* %28, %struct.Action** %arrayidx33, align 8
  br label %do.end

if.end.34:                                        ; preds = %if.then.22
  br label %if.end.48

if.else.35:                                       ; preds = %if.else
  %33 = load %struct.State*, %struct.State** %s.addr, align 8
  %reduce_actions36 = getelementptr inbounds %struct.State, %struct.State* %33, i32 0, i32 6
  %n37 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions36, i32 0, i32 0
  %34 = load i32, i32* %n37, align 4
  %and = and i32 %34, 7
  %tobool38 = icmp ne i32 %and, 0
  br i1 %tobool38, label %if.then.39, label %if.end.47

if.then.39:                                       ; preds = %if.else.35
  %35 = load %struct.Action*, %struct.Action** %a, align 8
  %36 = load %struct.State*, %struct.State** %s.addr, align 8
  %reduce_actions40 = getelementptr inbounds %struct.State, %struct.State* %36, i32 0, i32 6
  %n41 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions40, i32 0, i32 0
  %37 = load i32, i32* %n41, align 4
  %inc42 = add i32 %37, 1
  store i32 %inc42, i32* %n41, align 4
  %idxprom43 = zext i32 %37 to i64
  %38 = load %struct.State*, %struct.State** %s.addr, align 8
  %reduce_actions44 = getelementptr inbounds %struct.State, %struct.State* %38, i32 0, i32 6
  %v45 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions44, i32 0, i32 2
  %39 = load %struct.Action**, %struct.Action*** %v45, align 8
  %arrayidx46 = getelementptr inbounds %struct.Action*, %struct.Action** %39, i64 %idxprom43
  store %struct.Action* %35, %struct.Action** %arrayidx46, align 8
  br label %do.end

if.end.47:                                        ; preds = %if.else.35
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.34
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48
  %40 = load %struct.State*, %struct.State** %s.addr, align 8
  %reduce_actions50 = getelementptr inbounds %struct.State, %struct.State* %40, i32 0, i32 6
  %41 = bitcast %struct.VecAction* %reduce_actions50 to i8*
  %42 = load %struct.Action*, %struct.Action** %a, align 8
  %43 = bitcast %struct.Action* %42 to i8*
  call void @vec_add_internal(i8* %41, i8* %43)
  br label %do.end

do.end:                                           ; preds = %if.end.49, %if.then.39, %if.then.26, %if.then.7
  br label %if.end.131

if.else.51:                                       ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.74, %if.else.51
  %44 = load i32, i32* %i, align 4
  %45 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions = getelementptr inbounds %struct.State, %struct.State* %45, i32 0, i32 5
  %n53 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions, i32 0, i32 0
  %46 = load i32, i32* %n53, align 4
  %cmp54 = icmp ult i32 %44, %46
  br i1 %cmp54, label %for.body.55, label %for.end.76

for.body.55:                                      ; preds = %for.cond.52
  %47 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %47 to i64
  %48 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions57 = getelementptr inbounds %struct.State, %struct.State* %48, i32 0, i32 5
  %v58 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions57, i32 0, i32 2
  %49 = load %struct.Action**, %struct.Action*** %v58, align 8
  %arrayidx59 = getelementptr inbounds %struct.Action*, %struct.Action** %49, i64 %idxprom56
  %50 = load %struct.Action*, %struct.Action** %arrayidx59, align 8
  %term = getelementptr inbounds %struct.Action, %struct.Action* %50, i32 0, i32 1
  %51 = load %struct.Term*, %struct.Term** %term, align 8
  %52 = load %struct.Term*, %struct.Term** %aterm.addr, align 8
  %cmp60 = icmp eq %struct.Term* %51, %52
  br i1 %cmp60, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %for.body.55
  %53 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %53 to i64
  %54 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions62 = getelementptr inbounds %struct.State, %struct.State* %54, i32 0, i32 5
  %v63 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions62, i32 0, i32 2
  %55 = load %struct.Action**, %struct.Action*** %v63, align 8
  %arrayidx64 = getelementptr inbounds %struct.Action*, %struct.Action** %55, i64 %idxprom61
  %56 = load %struct.Action*, %struct.Action** %arrayidx64, align 8
  %state = getelementptr inbounds %struct.Action, %struct.Action* %56, i32 0, i32 3
  %57 = load %struct.State*, %struct.State** %state, align 8
  %58 = load %struct.State*, %struct.State** %astate.addr, align 8
  %cmp65 = icmp eq %struct.State* %57, %58
  br i1 %cmp65, label %land.lhs.true.66, label %if.end.73

land.lhs.true.66:                                 ; preds = %land.lhs.true
  %59 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %59 to i64
  %60 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions68 = getelementptr inbounds %struct.State, %struct.State* %60, i32 0, i32 5
  %v69 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions68, i32 0, i32 2
  %61 = load %struct.Action**, %struct.Action*** %v69, align 8
  %arrayidx70 = getelementptr inbounds %struct.Action*, %struct.Action** %61, i64 %idxprom67
  %62 = load %struct.Action*, %struct.Action** %arrayidx70, align 8
  %kind = getelementptr inbounds %struct.Action, %struct.Action* %62, i32 0, i32 0
  %63 = load i32, i32* %kind, align 4
  %64 = load i32, i32* %akind.addr, align 4
  %cmp71 = icmp eq i32 %63, %64
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %land.lhs.true.66
  br label %if.end.131

if.end.73:                                        ; preds = %land.lhs.true.66, %land.lhs.true, %for.body.55
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73
  %65 = load i32, i32* %i, align 4
  %inc75 = add nsw i32 %65, 1
  store i32 %inc75, i32* %i, align 4
  br label %for.cond.52

for.end.76:                                       ; preds = %for.cond.52
  %66 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %67 = load i32, i32* %akind.addr, align 4
  %68 = load %struct.Term*, %struct.Term** %aterm.addr, align 8
  %69 = load %struct.Rule*, %struct.Rule** %arule.addr, align 8
  %70 = load %struct.State*, %struct.State** %astate.addr, align 8
  %call77 = call %struct.Action* @new_Action(%struct.Grammar* %66, i32 %67, %struct.Term* %68, %struct.Rule* %69, %struct.State* %70)
  store %struct.Action* %call77, %struct.Action** %a, align 8
  br label %do.body.78

do.body.78:                                       ; preds = %for.end.76
  %71 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions79 = getelementptr inbounds %struct.State, %struct.State* %71, i32 0, i32 5
  %v80 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions79, i32 0, i32 2
  %72 = load %struct.Action**, %struct.Action*** %v80, align 8
  %tobool81 = icmp ne %struct.Action** %72, null
  br i1 %tobool81, label %if.else.93, label %if.then.82

if.then.82:                                       ; preds = %do.body.78
  %73 = load %struct.Action*, %struct.Action** %a, align 8
  %74 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions83 = getelementptr inbounds %struct.State, %struct.State* %74, i32 0, i32 5
  %n84 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions83, i32 0, i32 0
  %75 = load i32, i32* %n84, align 4
  %inc85 = add i32 %75, 1
  store i32 %inc85, i32* %n84, align 4
  %idxprom86 = zext i32 %75 to i64
  %76 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions87 = getelementptr inbounds %struct.State, %struct.State* %76, i32 0, i32 5
  %e88 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions87, i32 0, i32 3
  %arraydecay89 = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e88, i32 0, i32 0
  %77 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions90 = getelementptr inbounds %struct.State, %struct.State* %77, i32 0, i32 5
  %v91 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions90, i32 0, i32 2
  store %struct.Action** %arraydecay89, %struct.Action*** %v91, align 8
  %arrayidx92 = getelementptr inbounds %struct.Action*, %struct.Action** %arraydecay89, i64 %idxprom86
  store %struct.Action* %73, %struct.Action** %arrayidx92, align 8
  br label %do.end.130

if.else.93:                                       ; preds = %do.body.78
  %78 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions94 = getelementptr inbounds %struct.State, %struct.State* %78, i32 0, i32 5
  %v95 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions94, i32 0, i32 2
  %79 = load %struct.Action**, %struct.Action*** %v95, align 8
  %80 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions96 = getelementptr inbounds %struct.State, %struct.State* %80, i32 0, i32 5
  %e97 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions96, i32 0, i32 3
  %arraydecay98 = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e97, i32 0, i32 0
  %cmp99 = icmp eq %struct.Action** %79, %arraydecay98
  br i1 %cmp99, label %if.then.100, label %if.else.113

if.then.100:                                      ; preds = %if.else.93
  %81 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions101 = getelementptr inbounds %struct.State, %struct.State* %81, i32 0, i32 5
  %n102 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions101, i32 0, i32 0
  %82 = load i32, i32* %n102, align 4
  %cmp103 = icmp ult i32 %82, 3
  br i1 %cmp103, label %if.then.104, label %if.end.112

if.then.104:                                      ; preds = %if.then.100
  %83 = load %struct.Action*, %struct.Action** %a, align 8
  %84 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions105 = getelementptr inbounds %struct.State, %struct.State* %84, i32 0, i32 5
  %n106 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions105, i32 0, i32 0
  %85 = load i32, i32* %n106, align 4
  %inc107 = add i32 %85, 1
  store i32 %inc107, i32* %n106, align 4
  %idxprom108 = zext i32 %85 to i64
  %86 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions109 = getelementptr inbounds %struct.State, %struct.State* %86, i32 0, i32 5
  %v110 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions109, i32 0, i32 2
  %87 = load %struct.Action**, %struct.Action*** %v110, align 8
  %arrayidx111 = getelementptr inbounds %struct.Action*, %struct.Action** %87, i64 %idxprom108
  store %struct.Action* %83, %struct.Action** %arrayidx111, align 8
  br label %do.end.130

if.end.112:                                       ; preds = %if.then.100
  br label %if.end.127

if.else.113:                                      ; preds = %if.else.93
  %88 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions114 = getelementptr inbounds %struct.State, %struct.State* %88, i32 0, i32 5
  %n115 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions114, i32 0, i32 0
  %89 = load i32, i32* %n115, align 4
  %and116 = and i32 %89, 7
  %tobool117 = icmp ne i32 %and116, 0
  br i1 %tobool117, label %if.then.118, label %if.end.126

if.then.118:                                      ; preds = %if.else.113
  %90 = load %struct.Action*, %struct.Action** %a, align 8
  %91 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions119 = getelementptr inbounds %struct.State, %struct.State* %91, i32 0, i32 5
  %n120 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions119, i32 0, i32 0
  %92 = load i32, i32* %n120, align 4
  %inc121 = add i32 %92, 1
  store i32 %inc121, i32* %n120, align 4
  %idxprom122 = zext i32 %92 to i64
  %93 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions123 = getelementptr inbounds %struct.State, %struct.State* %93, i32 0, i32 5
  %v124 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions123, i32 0, i32 2
  %94 = load %struct.Action**, %struct.Action*** %v124, align 8
  %arrayidx125 = getelementptr inbounds %struct.Action*, %struct.Action** %94, i64 %idxprom122
  store %struct.Action* %90, %struct.Action** %arrayidx125, align 8
  br label %do.end.130

if.end.126:                                       ; preds = %if.else.113
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.end.112
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127
  %95 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions129 = getelementptr inbounds %struct.State, %struct.State* %95, i32 0, i32 5
  %96 = bitcast %struct.VecAction* %shift_actions129 to i8*
  %97 = load %struct.Action*, %struct.Action** %a, align 8
  %98 = bitcast %struct.Action* %97 to i8*
  call void @vec_add_internal(i8* %96, i8* %98)
  br label %do.end.130

do.end.130:                                       ; preds = %if.end.128, %if.then.118, %if.then.104, %if.then.82
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.4, %if.then.72, %do.end.130, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.Action* @new_Action(%struct.Grammar* %g, i32 %akind, %struct.Term* %aterm, %struct.Rule* %arule, %struct.State* %astate) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %akind.addr = alloca i32, align 4
  %aterm.addr = alloca %struct.Term*, align 8
  %arule.addr = alloca %struct.Rule*, align 8
  %astate.addr = alloca %struct.State*, align 8
  %a = alloca %struct.Action*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i32 %akind, i32* %akind.addr, align 4
  store %struct.Term* %aterm, %struct.Term** %aterm.addr, align 8
  store %struct.Rule* %arule, %struct.Rule** %arule.addr, align 8
  store %struct.State* %astate, %struct.State** %astate.addr, align 8
  %call = call noalias i8* @malloc(i64 48) #3
  %0 = bitcast i8* %call to %struct.Action*
  store %struct.Action* %0, %struct.Action** %a, align 8
  %1 = load i32, i32* %akind.addr, align 4
  %2 = load %struct.Action*, %struct.Action** %a, align 8
  %kind = getelementptr inbounds %struct.Action, %struct.Action* %2, i32 0, i32 0
  store i32 %1, i32* %kind, align 4
  %3 = load %struct.Term*, %struct.Term** %aterm.addr, align 8
  %4 = load %struct.Action*, %struct.Action** %a, align 8
  %term = getelementptr inbounds %struct.Action, %struct.Action* %4, i32 0, i32 1
  store %struct.Term* %3, %struct.Term** %term, align 8
  %5 = load %struct.Rule*, %struct.Rule** %arule.addr, align 8
  %6 = load %struct.Action*, %struct.Action** %a, align 8
  %rule = getelementptr inbounds %struct.Action, %struct.Action* %6, i32 0, i32 2
  store %struct.Rule* %5, %struct.Rule** %rule, align 8
  %7 = load %struct.State*, %struct.State** %astate.addr, align 8
  %8 = load %struct.Action*, %struct.Action** %a, align 8
  %state = getelementptr inbounds %struct.Action, %struct.Action* %8, i32 0, i32 3
  store %struct.State* %7, %struct.State** %state, align 8
  %9 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %action_count = getelementptr inbounds %struct.Grammar, %struct.Grammar* %9, i32 0, i32 27
  %10 = load i32, i32* %action_count, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %action_count, align 4
  %11 = load %struct.Action*, %struct.Action** %a, align 8
  %index = getelementptr inbounds %struct.Action, %struct.Action* %11, i32 0, i32 4
  store i32 %10, i32* %index, align 4
  %12 = load %struct.Action*, %struct.Action** %a, align 8
  ret %struct.Action* %12
}

; Function Attrs: nounwind uwtable
define internal %struct.Hint* @new_Hint(i32 %d, %struct.State* %s, %struct.Rule* %r) #0 {
entry:
  %d.addr = alloca i32, align 4
  %s.addr = alloca %struct.State*, align 8
  %r.addr = alloca %struct.Rule*, align 8
  %h = alloca %struct.Hint*, align 8
  store i32 %d, i32* %d.addr, align 4
  store %struct.State* %s, %struct.State** %s.addr, align 8
  store %struct.Rule* %r, %struct.Rule** %r.addr, align 8
  %call = call noalias i8* @malloc(i64 24) #3
  %0 = bitcast i8* %call to %struct.Hint*
  store %struct.Hint* %0, %struct.Hint** %h, align 8
  %1 = load i32, i32* %d.addr, align 4
  %2 = load %struct.Hint*, %struct.Hint** %h, align 8
  %depth = getelementptr inbounds %struct.Hint, %struct.Hint* %2, i32 0, i32 0
  store i32 %1, i32* %depth, align 4
  %3 = load %struct.State*, %struct.State** %s.addr, align 8
  %4 = load %struct.Hint*, %struct.Hint** %h, align 8
  %state = getelementptr inbounds %struct.Hint, %struct.Hint* %4, i32 0, i32 1
  store %struct.State* %3, %struct.State** %state, align 8
  %5 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %6 = load %struct.Hint*, %struct.Hint** %h, align 8
  %rule = getelementptr inbounds %struct.Hint, %struct.Hint* %6, i32 0, i32 2
  store %struct.Rule* %5, %struct.Rule** %rule, align 8
  %7 = load %struct.Hint*, %struct.Hint** %h, align 8
  ret %struct.Hint* %7
}

; Function Attrs: nounwind uwtable
define internal i32 @hintcmp(i8* %ai, i8* %aj) #0 {
entry:
  %ai.addr = alloca i8*, align 8
  %aj.addr = alloca i8*, align 8
  %i = alloca %struct.Hint*, align 8
  %j = alloca %struct.Hint*, align 8
  store i8* %ai, i8** %ai.addr, align 8
  store i8* %aj, i8** %aj.addr, align 8
  %0 = load i8*, i8** %ai.addr, align 8
  %1 = bitcast i8* %0 to %struct.Hint**
  %2 = load %struct.Hint*, %struct.Hint** %1, align 8
  store %struct.Hint* %2, %struct.Hint** %i, align 8
  %3 = load i8*, i8** %aj.addr, align 8
  %4 = bitcast i8* %3 to %struct.Hint**
  %5 = load %struct.Hint*, %struct.Hint** %4, align 8
  store %struct.Hint* %5, %struct.Hint** %j, align 8
  %6 = load %struct.Hint*, %struct.Hint** %i, align 8
  %depth = getelementptr inbounds %struct.Hint, %struct.Hint* %6, i32 0, i32 0
  %7 = load i32, i32* %depth, align 4
  %8 = load %struct.Hint*, %struct.Hint** %j, align 8
  %depth1 = getelementptr inbounds %struct.Hint, %struct.Hint* %8, i32 0, i32 0
  %9 = load i32, i32* %depth1, align 4
  %cmp = icmp ugt i32 %7, %9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.20

cond.false:                                       ; preds = %entry
  %10 = load %struct.Hint*, %struct.Hint** %i, align 8
  %depth2 = getelementptr inbounds %struct.Hint, %struct.Hint* %10, i32 0, i32 0
  %11 = load i32, i32* %depth2, align 4
  %12 = load %struct.Hint*, %struct.Hint** %j, align 8
  %depth3 = getelementptr inbounds %struct.Hint, %struct.Hint* %12, i32 0, i32 0
  %13 = load i32, i32* %depth3, align 4
  %cmp4 = icmp ult i32 %11, %13
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end.18

cond.false.6:                                     ; preds = %cond.false
  %14 = load %struct.Hint*, %struct.Hint** %i, align 8
  %rule = getelementptr inbounds %struct.Hint, %struct.Hint* %14, i32 0, i32 2
  %15 = load %struct.Rule*, %struct.Rule** %rule, align 8
  %index = getelementptr inbounds %struct.Rule, %struct.Rule* %15, i32 0, i32 0
  %16 = load i32, i32* %index, align 4
  %17 = load %struct.Hint*, %struct.Hint** %j, align 8
  %rule7 = getelementptr inbounds %struct.Hint, %struct.Hint* %17, i32 0, i32 2
  %18 = load %struct.Rule*, %struct.Rule** %rule7, align 8
  %index8 = getelementptr inbounds %struct.Rule, %struct.Rule* %18, i32 0, i32 0
  %19 = load i32, i32* %index8, align 4
  %cmp9 = icmp ugt i32 %16, %19
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.false.6
  br label %cond.end

cond.false.11:                                    ; preds = %cond.false.6
  %20 = load %struct.Hint*, %struct.Hint** %i, align 8
  %rule12 = getelementptr inbounds %struct.Hint, %struct.Hint* %20, i32 0, i32 2
  %21 = load %struct.Rule*, %struct.Rule** %rule12, align 8
  %index13 = getelementptr inbounds %struct.Rule, %struct.Rule* %21, i32 0, i32 0
  %22 = load i32, i32* %index13, align 4
  %23 = load %struct.Hint*, %struct.Hint** %j, align 8
  %rule14 = getelementptr inbounds %struct.Hint, %struct.Hint* %23, i32 0, i32 2
  %24 = load %struct.Rule*, %struct.Rule** %rule14, align 8
  %index15 = getelementptr inbounds %struct.Rule, %struct.Rule* %24, i32 0, i32 0
  %25 = load i32, i32* %index15, align 4
  %cmp16 = icmp ult i32 %22, %25
  %cond = select i1 %cmp16, i32 -1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false.11, %cond.true.10
  %cond17 = phi i32 [ 1, %cond.true.10 ], [ %cond, %cond.false.11 ]
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.end, %cond.true.5
  %cond19 = phi i32 [ -1, %cond.true.5 ], [ %cond17, %cond.end ]
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.end.18, %cond.true
  %cond21 = phi i32 [ 1, %cond.true ], [ %cond19, %cond.end.18 ]
  ret i32 %cond21
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
