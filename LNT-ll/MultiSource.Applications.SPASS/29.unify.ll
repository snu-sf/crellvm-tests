; ModuleID = './MultiSource.Applications.SPASS/29.unify.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.subst = type { %struct.subst*, i32, %struct.term* }

@stack_POINTER = external global i32, align 4
@stack_STACK = external global [10000 x i8*], align 16
@cont_BINDINGS = external global i32, align 4
@cont_CURRENTBINDING = external global %struct.binding*, align 8
@cont_LASTBINDING = external global %struct.binding*, align 8
@cont_INSTANCECONTEXT = external global %struct.binding*, align 8
@cont_INDEXVARSCANNER = external global i32, align 4
@symbol_INDEXVARCOUNTER = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @unify_Init() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @unify_Free() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @unify_OccurCheckCom(i32 %Top, %struct.binding* %Context, %struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Top.addr = alloca i32, align 4
  %Context.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Bottom = alloca i32, align 4
  %Args = alloca %struct.LIST_HELP*, align 8
  store i32 %Top, i32* %Top.addr, align 4
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Bottom, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.39, %if.end.23, %if.then.9, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else.13

if.then:                                          ; preds = %for.cond
  %1 = load i32, i32* %Top.addr, align 4
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %2)
  %call3 = call i32 @symbol_Equal(i32 %1, i32 %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %3 = load i32, i32* %Bottom, align 4
  call void @stack_SetBottom(i32 %3)
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %4 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call i32 @term_TopSymbol(%struct.term* %5)
  %call7 = call i32 @cont_VarIsBound(%struct.binding* %4, i32 %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else
  %6 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call10 = call i32 @term_TopSymbol(%struct.term* %7)
  %call11 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %6, i32 %call10)
  store %struct.term* %call11, %struct.term** %Term.addr, align 8
  br label %for.cond

if.end:                                           ; preds = %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end
  br label %if.end.26

if.else.13:                                       ; preds = %for.cond
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call14 = call i32 @term_IsComplex(%struct.term* %8)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.25

if.then.16:                                       ; preds = %if.else.13
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call17 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %9)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Args, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  %call19 = call i32 @list_Empty(%struct.LIST_HELP* %call18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %if.then.16
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call22 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  %12 = bitcast %struct.LIST_HELP* %call22 to i8*
  call void @stack_Push(i8* %12)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.then.16
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call24 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call24 to %struct.term*
  store %struct.term* %14, %struct.term** %Term.addr, align 8
  br label %for.cond

if.end.25:                                        ; preds = %if.else.13
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.12
  %15 = load i32, i32* %Bottom, align 4
  %call27 = call i32 @stack_Empty(i32 %15)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.end.26
  store i32 0, i32* %retval
  br label %return

if.else.30:                                       ; preds = %if.end.26
  %call31 = call i8* @stack_PopResult()
  %16 = bitcast i8* %call31 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %16, %struct.LIST_HELP** %Args, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call32 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call32 to %struct.term*
  store %struct.term* %18, %struct.term** %Term.addr, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call33 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  %call34 = call i32 @list_Empty(%struct.LIST_HELP* %call33)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.38, label %if.then.36

if.then.36:                                       ; preds = %if.else.30
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call37 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  %21 = bitcast %struct.LIST_HELP* %call37 to i8*
  call void @stack_Push(i8* %21)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.else.30
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38
  br label %for.cond

return:                                           ; preds = %if.then.29, %if.then.5
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stack_Bottom() #1 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_IsVariable(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsVariable(i32 %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Equal(i32 %A, i32 %B) #1 {
entry:
  %A.addr = alloca i32, align 4
  %B.addr = alloca i32, align 4
  store i32 %A, i32* %A.addr, align 4
  store i32 %B, i32* %B.addr, align 4
  %0 = load i32, i32* %A.addr, align 4
  %1 = load i32, i32* %B.addr, align 4
  %cmp = icmp eq i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_TopSymbol(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %symbol = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 0
  %1 = load i32, i32* %symbol, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @stack_SetBottom(i32 %Ptr) #1 {
entry:
  %Ptr.addr = alloca i32, align 4
  store i32 %Ptr, i32* %Ptr.addr, align 4
  %0 = load i32, i32* %Ptr.addr, align 4
  store i32 %0, i32* @stack_POINTER, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_VarIsBound(%struct.binding* %C, i32 %Var) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %1 = load i32, i32* %Var.addr, align 4
  %call = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %0, i32 %1)
  %cmp = icmp ne %struct.term* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @cont_ContextBindingTerm(%struct.binding* %C, i32 %Var) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load i32, i32* %Var.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %arrayidx = getelementptr inbounds %struct.binding, %struct.binding* %1, i64 %idxprom
  %term = getelementptr inbounds %struct.binding, %struct.binding* %arrayidx, i32 0, i32 2
  %2 = load %struct.term*, %struct.term** %term, align 8
  ret %struct.term* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_IsComplex(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
  %cmp = icmp ne %struct.LIST_HELP* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @term_ArgumentList(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_Empty(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cmp = icmp eq %struct.LIST_HELP* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %cdr, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @stack_Push(i8* %Entry) #1 {
entry:
  %Entry.addr = alloca i8*, align 8
  store i8* %Entry, i8** %Entry.addr, align 8
  %0 = load i8*, i8** %Entry.addr, align 8
  %1 = load i32, i32* @stack_POINTER, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* @stack_POINTER, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i32 0, i64 %idxprom
  store i8* %0, i8** %arrayidx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Car(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 1
  %1 = load i8*, i8** %car, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stack_Empty(i32 %Ptr) #1 {
entry:
  %Ptr.addr = alloca i32, align 4
  store i32 %Ptr, i32* %Ptr.addr, align 4
  %0 = load i32, i32* @stack_POINTER, align 4
  %1 = load i32, i32* %Ptr.addr, align 4
  %cmp = icmp eq i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @stack_PopResult() #1 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* @stack_POINTER, align 4
  %idxprom = zext i32 %dec to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i32 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i32 @unify_OccurCheck(%struct.binding* %CTop, i32 %Top, %struct.binding* %CTerm, %struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %CTop.addr = alloca %struct.binding*, align 8
  %Top.addr = alloca i32, align 4
  %CTerm.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Bottom = alloca i32, align 4
  %Args = alloca %struct.LIST_HELP*, align 8
  %TermTop = alloca i32, align 4
  store %struct.binding* %CTop, %struct.binding** %CTop.addr, align 8
  store i32 %Top, i32* %Top.addr, align 4
  store %struct.binding* %CTerm, %struct.binding** %CTerm.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Bottom, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.41, %if.end.22, %if.then.8, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else.12

if.then:                                          ; preds = %for.cond
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %1)
  store i32 %call2, i32* %TermTop, align 4
  %2 = load %struct.binding*, %struct.binding** %CTop.addr, align 8
  %3 = load %struct.binding*, %struct.binding** %CTerm.addr, align 8
  %cmp = icmp eq %struct.binding* %2, %3
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %4 = load i32, i32* %Top.addr, align 4
  %5 = load i32, i32* %TermTop, align 4
  %call3 = call i32 @symbol_Equal(i32 %4, i32 %5)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true
  %6 = load i32, i32* %Bottom, align 4
  call void @stack_SetBottom(i32 %6)
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then
  %7 = load %struct.binding*, %struct.binding** %CTerm.addr, align 8
  %8 = load i32, i32* %TermTop, align 4
  %call6 = call i32 @cont_VarIsBound(%struct.binding* %7, i32 %8)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %9 = load %struct.binding*, %struct.binding** %CTerm.addr, align 8
  %10 = load i32, i32* %TermTop, align 4
  %call9 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %9, i32 %10)
  store %struct.term* %call9, %struct.term** %Term.addr, align 8
  %11 = load %struct.binding*, %struct.binding** %CTerm.addr, align 8
  %12 = load i32, i32* %TermTop, align 4
  %call10 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* %11, i32 %12)
  store %struct.binding* %call10, %struct.binding** %CTerm.addr, align 8
  br label %for.cond

if.end:                                           ; preds = %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end
  br label %if.end.25

if.else.12:                                       ; preds = %for.cond
  %13 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call13 = call i32 @term_IsComplex(%struct.term* %13)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.24

if.then.15:                                       ; preds = %if.else.12
  %14 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call16 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %14)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Args, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.22, label %if.then.20

if.then.20:                                       ; preds = %if.then.15
  %16 = load %struct.binding*, %struct.binding** %CTerm.addr, align 8
  %17 = bitcast %struct.binding* %16 to i8*
  call void @stack_Push(i8* %17)
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  %19 = bitcast %struct.LIST_HELP* %call21 to i8*
  call void @stack_Push(i8* %19)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.then.15
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call23 to %struct.term*
  store %struct.term* %21, %struct.term** %Term.addr, align 8
  br label %for.cond

if.end.24:                                        ; preds = %if.else.12
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.11
  %22 = load i32, i32* %Bottom, align 4
  %call26 = call i32 @stack_Empty(i32 %22)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.end.25
  store i32 0, i32* %retval
  br label %return

if.else.29:                                       ; preds = %if.end.25
  %call30 = call i8* @stack_PopResult()
  %23 = bitcast i8* %call30 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %23, %struct.LIST_HELP** %Args, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call31 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call31 to %struct.term*
  store %struct.term* %25, %struct.term** %Term.addr, align 8
  %call32 = call i8* @stack_Top()
  %26 = bitcast i8* %call32 to %struct.binding*
  store %struct.binding* %26, %struct.binding** %CTerm.addr, align 8
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call33 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %27)
  %call34 = call i32 @list_Empty(%struct.LIST_HELP* %call33)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %if.else.29
  %call37 = call i32 @stack_Pop()
  br label %if.end.40

if.else.38:                                       ; preds = %if.else.29
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call39 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %28)
  %29 = bitcast %struct.LIST_HELP* %call39 to i8*
  call void @stack_Push(i8* %29)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.36
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40
  br label %for.cond

return:                                           ; preds = %if.then.28, %if.then.5
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_ContextBindingContext(%struct.binding* %C, i32 %Var) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load i32, i32* %Var.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %arrayidx = getelementptr inbounds %struct.binding, %struct.binding* %1, i64 %idxprom
  %context = getelementptr inbounds %struct.binding, %struct.binding* %arrayidx, i32 0, i32 3
  %2 = load %struct.binding*, %struct.binding** %context, align 8
  ret %struct.binding* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @stack_Top() #1 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  %sub = sub i32 %0, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i32 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stack_Pop() #1 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* @stack_POINTER, align 4
  ret i32 %dec
}

; Function Attrs: nounwind uwtable
define i32 @unify_Unify(%struct.binding* %CtL, %struct.term* %TermL, %struct.binding* %CtR, %struct.term* %TermR) #0 {
entry:
  %retval = alloca i32, align 4
  %CtL.addr = alloca %struct.binding*, align 8
  %TermL.addr = alloca %struct.term*, align 8
  %CtR.addr = alloca %struct.binding*, align 8
  %TermR.addr = alloca %struct.term*, align 8
  %CHelp = alloca %struct.binding*, align 8
  %ArgsL = alloca %struct.LIST_HELP*, align 8
  %ArgsR = alloca %struct.LIST_HELP*, align 8
  %Bottom = alloca i32, align 4
  %Bound = alloca i32, align 4
  store %struct.binding* %CtL, %struct.binding** %CtL.addr, align 8
  store %struct.term* %TermL, %struct.term** %TermL.addr, align 8
  store %struct.binding* %CtR, %struct.binding** %CtR.addr, align 8
  store %struct.term* %TermR, %struct.term** %TermR.addr, align 8
  store i32 0, i32* %Bound, align 4
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Bottom, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.101, %if.end.75, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %0 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call1 = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %2 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %2)
  %call3 = call i32 @cont_VarIsBound(%struct.binding* %1, i32 %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool4, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %5 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %5)
  %call6 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* %4, i32 %call5)
  store %struct.binding* %call6, %struct.binding** %CHelp, align 8
  %6 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %7 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call7 = call i32 @term_TopSymbol(%struct.term* %7)
  %call8 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %6, i32 %call7)
  store %struct.term* %call8, %struct.term** %TermL.addr, align 8
  %8 = load %struct.binding*, %struct.binding** %CHelp, align 8
  store %struct.binding* %8, %struct.binding** %CtL.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.9

while.cond.9:                                     ; preds = %while.body.17, %while.end
  %9 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call10 = call i32 @term_IsVariable(%struct.term* %9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.rhs.12, label %land.end.16

land.rhs.12:                                      ; preds = %while.cond.9
  %10 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %11 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call13 = call i32 @term_TopSymbol(%struct.term* %11)
  %call14 = call i32 @cont_VarIsBound(%struct.binding* %10, i32 %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br label %land.end.16

land.end.16:                                      ; preds = %land.rhs.12, %while.cond.9
  %12 = phi i1 [ false, %while.cond.9 ], [ %tobool15, %land.rhs.12 ]
  br i1 %12, label %while.body.17, label %while.end.22

while.body.17:                                    ; preds = %land.end.16
  %13 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %14 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call18 = call i32 @term_TopSymbol(%struct.term* %14)
  %call19 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* %13, i32 %call18)
  store %struct.binding* %call19, %struct.binding** %CHelp, align 8
  %15 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %16 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call20 = call i32 @term_TopSymbol(%struct.term* %16)
  %call21 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %15, i32 %call20)
  store %struct.term* %call21, %struct.term** %TermR.addr, align 8
  %17 = load %struct.binding*, %struct.binding** %CHelp, align 8
  store %struct.binding* %17, %struct.binding** %CtR.addr, align 8
  br label %while.cond.9

while.end.22:                                     ; preds = %land.end.16
  %18 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call23 = call i32 @term_IsVariable(%struct.term* %18)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then, label %if.else.44

if.then:                                          ; preds = %while.end.22
  %19 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call25 = call i32 @term_IsVariable(%struct.term* %19)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.then
  %20 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %21 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %cmp = icmp eq %struct.binding* %20, %21
  br i1 %cmp, label %land.lhs.true, label %if.then.30

land.lhs.true:                                    ; preds = %if.then.27
  %22 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %23 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call28 = call i32 @term_EqualTopSymbols(%struct.term* %22, %struct.term* %23)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true, %if.then.27
  %24 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %25 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call31 = call i32 @term_TopSymbol(%struct.term* %25)
  %26 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %27 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call32 = call i32 @cont_CreateBinding(%struct.binding* %24, i32 %call31, %struct.binding* %26, %struct.term* %27)
  store i32 %call32, i32* %Bound, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.30, %land.lhs.true
  br label %if.end.43

if.else:                                          ; preds = %if.then
  %28 = load i32, i32* %Bound, align 4
  %tobool33 = icmp ne i32 %28, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.else.39

land.lhs.true.34:                                 ; preds = %if.else
  %29 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %30 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call35 = call i32 @term_TopSymbol(%struct.term* %30)
  %31 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %32 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call36 = call i32 @unify_OccurCheck(%struct.binding* %29, i32 %call35, %struct.binding* %31, %struct.term* %32)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true.34
  %33 = load i32, i32* %Bottom, align 4
  call void @stack_SetBottom(i32 %33)
  store i32 0, i32* %retval
  br label %return

if.else.39:                                       ; preds = %land.lhs.true.34, %if.else
  %34 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %35 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call40 = call i32 @term_TopSymbol(%struct.term* %35)
  %36 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %37 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call41 = call i32 @cont_CreateBinding(%struct.binding* %34, i32 %call40, %struct.binding* %36, %struct.term* %37)
  store i32 %call41, i32* %Bound, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end
  br label %if.end.82

if.else.44:                                       ; preds = %while.end.22
  %38 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call45 = call i32 @term_IsVariable(%struct.term* %38)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.else.58

if.then.47:                                       ; preds = %if.else.44
  %39 = load i32, i32* %Bound, align 4
  %tobool48 = icmp ne i32 %39, 0
  br i1 %tobool48, label %land.lhs.true.49, label %if.else.54

land.lhs.true.49:                                 ; preds = %if.then.47
  %40 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %41 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call50 = call i32 @term_TopSymbol(%struct.term* %41)
  %42 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %43 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call51 = call i32 @unify_OccurCheck(%struct.binding* %40, i32 %call50, %struct.binding* %42, %struct.term* %43)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %land.lhs.true.49
  %44 = load i32, i32* %Bottom, align 4
  call void @stack_SetBottom(i32 %44)
  store i32 0, i32* %retval
  br label %return

if.else.54:                                       ; preds = %land.lhs.true.49, %if.then.47
  %45 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %46 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call55 = call i32 @term_TopSymbol(%struct.term* %46)
  %47 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %48 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call56 = call i32 @cont_CreateBinding(%struct.binding* %45, i32 %call55, %struct.binding* %47, %struct.term* %48)
  store i32 %call56, i32* %Bound, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54
  br label %if.end.81

if.else.58:                                       ; preds = %if.else.44
  %49 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %50 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call59 = call i32 @term_EqualTopSymbols(%struct.term* %49, %struct.term* %50)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.else.79

if.then.61:                                       ; preds = %if.else.58
  %51 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call62 = call i32 @term_IsComplex(%struct.term* %51)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %land.lhs.true.64, label %if.end.78

land.lhs.true.64:                                 ; preds = %if.then.61
  %52 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %53 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %cmp65 = icmp ne %struct.term* %52, %53
  br i1 %cmp65, label %if.then.66, label %if.end.78

if.then.66:                                       ; preds = %land.lhs.true.64
  %54 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call67 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %54)
  store %struct.LIST_HELP* %call67, %struct.LIST_HELP** %ArgsL, align 8
  %55 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call68 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %55)
  store %struct.LIST_HELP* %call68, %struct.LIST_HELP** %ArgsR, align 8
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsL, align 8
  %call69 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %56)
  %call70 = call i32 @list_Empty(%struct.LIST_HELP* %call69)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.end.75, label %if.then.72

if.then.72:                                       ; preds = %if.then.66
  %57 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %58 = bitcast %struct.binding* %57 to i8*
  call void @stack_Push(i8* %58)
  %59 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %60 = bitcast %struct.binding* %59 to i8*
  call void @stack_Push(i8* %60)
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsL, align 8
  %call73 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %61)
  %62 = bitcast %struct.LIST_HELP* %call73 to i8*
  call void @stack_Push(i8* %62)
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsR, align 8
  %call74 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %63)
  %64 = bitcast %struct.LIST_HELP* %call74 to i8*
  call void @stack_Push(i8* %64)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %if.then.66
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsL, align 8
  %call76 = call i8* @list_Car(%struct.LIST_HELP* %65)
  %66 = bitcast i8* %call76 to %struct.term*
  store %struct.term* %66, %struct.term** %TermL.addr, align 8
  %67 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsR, align 8
  %call77 = call i8* @list_Car(%struct.LIST_HELP* %67)
  %68 = bitcast i8* %call77 to %struct.term*
  store %struct.term* %68, %struct.term** %TermR.addr, align 8
  br label %for.cond

if.end.78:                                        ; preds = %land.lhs.true.64, %if.then.61
  br label %if.end.80

if.else.79:                                       ; preds = %if.else.58
  %69 = load i32, i32* %Bottom, align 4
  call void @stack_SetBottom(i32 %69)
  store i32 0, i32* %retval
  br label %return

if.end.80:                                        ; preds = %if.end.78
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.57
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.43
  %70 = load i32, i32* %Bottom, align 4
  %call83 = call i32 @stack_Empty(i32 %70)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %if.end.82
  store i32 1, i32* %retval
  br label %return

if.else.86:                                       ; preds = %if.end.82
  %call87 = call i8* @stack_PopResult()
  %71 = bitcast i8* %call87 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %71, %struct.LIST_HELP** %ArgsR, align 8
  %call88 = call i8* @stack_PopResult()
  %72 = bitcast i8* %call88 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %72, %struct.LIST_HELP** %ArgsL, align 8
  %73 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsR, align 8
  %call89 = call i8* @list_Car(%struct.LIST_HELP* %73)
  %74 = bitcast i8* %call89 to %struct.term*
  store %struct.term* %74, %struct.term** %TermR.addr, align 8
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsL, align 8
  %call90 = call i8* @list_Car(%struct.LIST_HELP* %75)
  %76 = bitcast i8* %call90 to %struct.term*
  store %struct.term* %76, %struct.term** %TermL.addr, align 8
  %call91 = call i8* @stack_Top()
  %77 = bitcast i8* %call91 to %struct.binding*
  store %struct.binding* %77, %struct.binding** %CtR.addr, align 8
  %call92 = call i8* @stack_NthTop(i32 1)
  %78 = bitcast i8* %call92 to %struct.binding*
  store %struct.binding* %78, %struct.binding** %CtL.addr, align 8
  %79 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsL, align 8
  %call93 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %79)
  %call94 = call i32 @list_Empty(%struct.LIST_HELP* %call93)
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %if.else.86
  call void @stack_NPop(i32 2)
  br label %if.end.100

if.else.97:                                       ; preds = %if.else.86
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsL, align 8
  %call98 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %80)
  %81 = bitcast %struct.LIST_HELP* %call98 to i8*
  call void @stack_Push(i8* %81)
  %82 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsR, align 8
  %call99 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %82)
  %83 = bitcast %struct.LIST_HELP* %call99 to i8*
  call void @stack_Push(i8* %83)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.96
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100
  br label %for.cond

return:                                           ; preds = %if.then.85, %if.else.79, %if.then.53, %if.then.38
  %84 = load i32, i32* %retval
  ret i32 %84
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_EqualTopSymbols(%struct.term* %T, %struct.term* %S) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  %S.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  store %struct.term* %S, %struct.term** %S.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %1 = load %struct.term*, %struct.term** %S.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  %call2 = call i32 @symbol_Equal(i32 %call, i32 %call1)
  ret i32 %call2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_CreateBinding(%struct.binding* %C, i32 %Var, %struct.binding* %CTerm, %struct.term* %Term) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  %CTerm.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  store %struct.binding* %CTerm, %struct.binding** %CTerm.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %1 = load i32, i32* %Var.addr, align 4
  %2 = load %struct.binding*, %struct.binding** %CTerm.addr, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @cont_CreateBindingHelp(%struct.binding* %0, i32 %1, %struct.binding* %2, %struct.term* %3)
  %4 = load i32, i32* @cont_BINDINGS, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @cont_BINDINGS, align 4
  ret i32 %inc
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @stack_NthTop(i32 %N) #1 {
entry:
  %N.addr = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  %0 = load i32, i32* @stack_POINTER, align 4
  %1 = load i32, i32* %N.addr, align 4
  %add = add i32 1, %1
  %sub = sub i32 %0, %add
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  ret i8* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @stack_NPop(i32 %N) #1 {
entry:
  %N.addr = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  %1 = load i32, i32* @stack_POINTER, align 4
  %sub = sub i32 %1, %0
  store i32 %sub, i32* @stack_POINTER, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @unify_UnifyCom(%struct.binding* %Context, %struct.term* %TermL, %struct.term* %TermR) #0 {
entry:
  %retval = alloca i32, align 4
  %Context.addr = alloca %struct.binding*, align 8
  %TermL.addr = alloca %struct.term*, align 8
  %TermR.addr = alloca %struct.term*, align 8
  %ArgsL = alloca %struct.LIST_HELP*, align 8
  %ArgsR = alloca %struct.LIST_HELP*, align 8
  %Bottom = alloca i32, align 4
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.term* %TermL, %struct.term** %TermL.addr, align 8
  store %struct.term* %TermR, %struct.term** %TermR.addr, align 8
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Bottom, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.84, %if.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %0 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call1 = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %2 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %2)
  %call3 = call i32 @cont_VarIsBound(%struct.binding* %1, i32 %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool4, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %5 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %5)
  %call6 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %4, i32 %call5)
  store %struct.term* %call6, %struct.term** %TermL.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.7

while.cond.7:                                     ; preds = %while.body.15, %while.end
  %6 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call8 = call i32 @term_IsVariable(%struct.term* %6)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.rhs.10, label %land.end.14

land.rhs.10:                                      ; preds = %while.cond.7
  %7 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %8 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call11 = call i32 @term_TopSymbol(%struct.term* %8)
  %call12 = call i32 @cont_VarIsBound(%struct.binding* %7, i32 %call11)
  %tobool13 = icmp ne i32 %call12, 0
  br label %land.end.14

land.end.14:                                      ; preds = %land.rhs.10, %while.cond.7
  %9 = phi i1 [ false, %while.cond.7 ], [ %tobool13, %land.rhs.10 ]
  br i1 %9, label %while.body.15, label %while.end.18

while.body.15:                                    ; preds = %land.end.14
  %10 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %11 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call16 = call i32 @term_TopSymbol(%struct.term* %11)
  %call17 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %10, i32 %call16)
  store %struct.term* %call17, %struct.term** %TermR.addr, align 8
  br label %while.cond.7

while.end.18:                                     ; preds = %land.end.14
  %12 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %13 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call19 = call i32 @term_EqualTopSymbols(%struct.term* %12, %struct.term* %13)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then, label %if.else

if.then:                                          ; preds = %while.end.18
  %14 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call21 = call i32 @term_IsComplex(%struct.term* %14)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.then
  %15 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %16 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %cmp = icmp ne %struct.term* %15, %16
  br i1 %cmp, label %if.then.23, label %if.end.34

if.then.23:                                       ; preds = %land.lhs.true
  %17 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call24 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %17)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %ArgsL, align 8
  %18 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call25 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %18)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %ArgsR, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsL, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  %call27 = call i32 @list_Empty(%struct.LIST_HELP* %call26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end, label %if.then.29

if.then.29:                                       ; preds = %if.then.23
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsL, align 8
  %call30 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  %21 = bitcast %struct.LIST_HELP* %call30 to i8*
  call void @stack_Push(i8* %21)
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsR, align 8
  %call31 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  %23 = bitcast %struct.LIST_HELP* %call31 to i8*
  call void @stack_Push(i8* %23)
  br label %if.end

if.end:                                           ; preds = %if.then.29, %if.then.23
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsL, align 8
  %call32 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call32 to %struct.term*
  store %struct.term* %25, %struct.term** %TermL.addr, align 8
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsR, align 8
  %call33 = call i8* @list_Car(%struct.LIST_HELP* %26)
  %27 = bitcast i8* %call33 to %struct.term*
  store %struct.term* %27, %struct.term** %TermR.addr, align 8
  br label %for.cond

if.end.34:                                        ; preds = %land.lhs.true, %if.then
  br label %if.end.68

if.else:                                          ; preds = %while.end.18
  %28 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call35 = call i32 @term_IsVariable(%struct.term* %28)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.else.53

if.then.37:                                       ; preds = %if.else
  %29 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call38 = call i32 @term_IsVariable(%struct.term* %29)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.43

if.then.40:                                       ; preds = %if.then.37
  %30 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %31 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call41 = call i32 @term_TopSymbol(%struct.term* %31)
  %32 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %33 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call42 = call i32 @cont_CreateBinding(%struct.binding* %30, i32 %call41, %struct.binding* %32, %struct.term* %33)
  br label %if.end.52

if.else.43:                                       ; preds = %if.then.37
  %34 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call44 = call i32 @term_TopSymbol(%struct.term* %34)
  %35 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %36 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call45 = call i32 @unify_OccurCheckCom(i32 %call44, %struct.binding* %35, %struct.term* %36)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %if.else.43
  %37 = load i32, i32* %Bottom, align 4
  call void @stack_SetBottom(i32 %37)
  store i32 0, i32* %retval
  br label %return

if.else.48:                                       ; preds = %if.else.43
  %38 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %39 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call49 = call i32 @term_TopSymbol(%struct.term* %39)
  %40 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %41 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call50 = call i32 @cont_CreateBinding(%struct.binding* %38, i32 %call49, %struct.binding* %40, %struct.term* %41)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.40
  br label %if.end.67

if.else.53:                                       ; preds = %if.else
  %42 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call54 = call i32 @term_IsVariable(%struct.term* %42)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.else.65

if.then.56:                                       ; preds = %if.else.53
  %43 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call57 = call i32 @term_TopSymbol(%struct.term* %43)
  %44 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %45 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call58 = call i32 @unify_OccurCheckCom(i32 %call57, %struct.binding* %44, %struct.term* %45)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %if.then.56
  %46 = load i32, i32* %Bottom, align 4
  call void @stack_SetBottom(i32 %46)
  store i32 0, i32* %retval
  br label %return

if.else.61:                                       ; preds = %if.then.56
  %47 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %48 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call62 = call i32 @term_TopSymbol(%struct.term* %48)
  %49 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %50 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call63 = call i32 @cont_CreateBinding(%struct.binding* %47, i32 %call62, %struct.binding* %49, %struct.term* %50)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61
  br label %if.end.66

if.else.65:                                       ; preds = %if.else.53
  %51 = load i32, i32* %Bottom, align 4
  call void @stack_SetBottom(i32 %51)
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.end.64
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.52
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.34
  %52 = load i32, i32* %Bottom, align 4
  %call69 = call i32 @stack_Empty(i32 %52)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.end.68
  store i32 1, i32* %retval
  br label %return

if.else.72:                                       ; preds = %if.end.68
  %call73 = call i8* @stack_PopResult()
  %53 = bitcast i8* %call73 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %53, %struct.LIST_HELP** %ArgsR, align 8
  %call74 = call i8* @stack_PopResult()
  %54 = bitcast i8* %call74 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %54, %struct.LIST_HELP** %ArgsL, align 8
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsR, align 8
  %call75 = call i8* @list_Car(%struct.LIST_HELP* %55)
  %56 = bitcast i8* %call75 to %struct.term*
  store %struct.term* %56, %struct.term** %TermR.addr, align 8
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsL, align 8
  %call76 = call i8* @list_Car(%struct.LIST_HELP* %57)
  %58 = bitcast i8* %call76 to %struct.term*
  store %struct.term* %58, %struct.term** %TermL.addr, align 8
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsL, align 8
  %call77 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %59)
  %call78 = call i32 @list_Empty(%struct.LIST_HELP* %call77)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.end.83, label %if.then.80

if.then.80:                                       ; preds = %if.else.72
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsL, align 8
  %call81 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %60)
  %61 = bitcast %struct.LIST_HELP* %call81 to i8*
  call void @stack_Push(i8* %61)
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsR, align 8
  %call82 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %62)
  %63 = bitcast %struct.LIST_HELP* %call82 to i8*
  call void @stack_Push(i8* %63)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %if.else.72
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83
  br label %for.cond

return:                                           ; preds = %if.then.71, %if.else.65, %if.then.60, %if.then.47
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define i32 @unify_UnifyNoOC(%struct.binding* %CtL, %struct.term* %TermL, %struct.binding* %CtR, %struct.term* %TermR) #0 {
entry:
  %retval = alloca i32, align 4
  %CtL.addr = alloca %struct.binding*, align 8
  %TermL.addr = alloca %struct.term*, align 8
  %CtR.addr = alloca %struct.binding*, align 8
  %TermR.addr = alloca %struct.term*, align 8
  %CHelp = alloca %struct.binding*, align 8
  %ArgsL = alloca %struct.LIST_HELP*, align 8
  %ArgsR = alloca %struct.LIST_HELP*, align 8
  %Bottom = alloca i32, align 4
  store %struct.binding* %CtL, %struct.binding** %CtL.addr, align 8
  store %struct.term* %TermL, %struct.term** %TermL.addr, align 8
  store %struct.binding* %CtR, %struct.binding** %CtR.addr, align 8
  store %struct.term* %TermR, %struct.term** %TermR.addr, align 8
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Bottom, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.85, %if.end.59, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %0 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call1 = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %2 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %2)
  %call3 = call i32 @cont_VarIsBound(%struct.binding* %1, i32 %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool4, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %5 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %5)
  %call6 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* %4, i32 %call5)
  store %struct.binding* %call6, %struct.binding** %CHelp, align 8
  %6 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %7 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call7 = call i32 @term_TopSymbol(%struct.term* %7)
  %call8 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %6, i32 %call7)
  store %struct.term* %call8, %struct.term** %TermL.addr, align 8
  %8 = load %struct.binding*, %struct.binding** %CHelp, align 8
  store %struct.binding* %8, %struct.binding** %CtL.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.9

while.cond.9:                                     ; preds = %while.body.17, %while.end
  %9 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call10 = call i32 @term_IsVariable(%struct.term* %9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.rhs.12, label %land.end.16

land.rhs.12:                                      ; preds = %while.cond.9
  %10 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %11 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call13 = call i32 @term_TopSymbol(%struct.term* %11)
  %call14 = call i32 @cont_VarIsBound(%struct.binding* %10, i32 %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br label %land.end.16

land.end.16:                                      ; preds = %land.rhs.12, %while.cond.9
  %12 = phi i1 [ false, %while.cond.9 ], [ %tobool15, %land.rhs.12 ]
  br i1 %12, label %while.body.17, label %while.end.22

while.body.17:                                    ; preds = %land.end.16
  %13 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %14 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call18 = call i32 @term_TopSymbol(%struct.term* %14)
  %call19 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* %13, i32 %call18)
  store %struct.binding* %call19, %struct.binding** %CHelp, align 8
  %15 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %16 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call20 = call i32 @term_TopSymbol(%struct.term* %16)
  %call21 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %15, i32 %call20)
  store %struct.term* %call21, %struct.term** %TermR.addr, align 8
  %17 = load %struct.binding*, %struct.binding** %CHelp, align 8
  store %struct.binding* %17, %struct.binding** %CtR.addr, align 8
  br label %while.cond.9

while.end.22:                                     ; preds = %land.end.16
  %18 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call23 = call i32 @term_IsVariable(%struct.term* %18)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then, label %if.else.36

if.then:                                          ; preds = %while.end.22
  %19 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call25 = call i32 @term_IsVariable(%struct.term* %19)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.then
  %20 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %21 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %cmp = icmp eq %struct.binding* %20, %21
  br i1 %cmp, label %land.lhs.true, label %if.then.30

land.lhs.true:                                    ; preds = %if.then.27
  %22 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %23 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call28 = call i32 @term_EqualTopSymbols(%struct.term* %22, %struct.term* %23)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true, %if.then.27
  %24 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %25 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call31 = call i32 @term_TopSymbol(%struct.term* %25)
  %26 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %27 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call32 = call i32 @cont_CreateBinding(%struct.binding* %24, i32 %call31, %struct.binding* %26, %struct.term* %27)
  br label %if.end

if.end:                                           ; preds = %if.then.30, %land.lhs.true
  br label %if.end.35

if.else:                                          ; preds = %if.then
  %28 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %29 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call33 = call i32 @term_TopSymbol(%struct.term* %29)
  %30 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %31 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call34 = call i32 @cont_CreateBinding(%struct.binding* %28, i32 %call33, %struct.binding* %30, %struct.term* %31)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.end
  br label %if.end.66

if.else.36:                                       ; preds = %while.end.22
  %32 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call37 = call i32 @term_IsVariable(%struct.term* %32)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.42

if.then.39:                                       ; preds = %if.else.36
  %33 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %34 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call40 = call i32 @term_TopSymbol(%struct.term* %34)
  %35 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %36 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call41 = call i32 @cont_CreateBinding(%struct.binding* %33, i32 %call40, %struct.binding* %35, %struct.term* %36)
  br label %if.end.65

if.else.42:                                       ; preds = %if.else.36
  %37 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %38 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call43 = call i32 @term_EqualTopSymbols(%struct.term* %37, %struct.term* %38)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.else.63

if.then.45:                                       ; preds = %if.else.42
  %39 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call46 = call i32 @term_IsComplex(%struct.term* %39)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %land.lhs.true.48, label %if.end.62

land.lhs.true.48:                                 ; preds = %if.then.45
  %40 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %41 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %cmp49 = icmp ne %struct.term* %40, %41
  br i1 %cmp49, label %if.then.50, label %if.end.62

if.then.50:                                       ; preds = %land.lhs.true.48
  %42 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call51 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %42)
  store %struct.LIST_HELP* %call51, %struct.LIST_HELP** %ArgsL, align 8
  %43 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call52 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %43)
  store %struct.LIST_HELP* %call52, %struct.LIST_HELP** %ArgsR, align 8
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsL, align 8
  %call53 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %44)
  %call54 = call i32 @list_Empty(%struct.LIST_HELP* %call53)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.end.59, label %if.then.56

if.then.56:                                       ; preds = %if.then.50
  %45 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %46 = bitcast %struct.binding* %45 to i8*
  call void @stack_Push(i8* %46)
  %47 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %48 = bitcast %struct.binding* %47 to i8*
  call void @stack_Push(i8* %48)
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsL, align 8
  %call57 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %49)
  %50 = bitcast %struct.LIST_HELP* %call57 to i8*
  call void @stack_Push(i8* %50)
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsR, align 8
  %call58 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %51)
  %52 = bitcast %struct.LIST_HELP* %call58 to i8*
  call void @stack_Push(i8* %52)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %if.then.50
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsL, align 8
  %call60 = call i8* @list_Car(%struct.LIST_HELP* %53)
  %54 = bitcast i8* %call60 to %struct.term*
  store %struct.term* %54, %struct.term** %TermL.addr, align 8
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsR, align 8
  %call61 = call i8* @list_Car(%struct.LIST_HELP* %55)
  %56 = bitcast i8* %call61 to %struct.term*
  store %struct.term* %56, %struct.term** %TermR.addr, align 8
  br label %for.cond

if.end.62:                                        ; preds = %land.lhs.true.48, %if.then.45
  br label %if.end.64

if.else.63:                                       ; preds = %if.else.42
  %57 = load i32, i32* %Bottom, align 4
  call void @stack_SetBottom(i32 %57)
  store i32 0, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.62
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.39
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.35
  %58 = load i32, i32* %Bottom, align 4
  %call67 = call i32 @stack_Empty(i32 %58)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %if.end.66
  store i32 1, i32* %retval
  br label %return

if.else.70:                                       ; preds = %if.end.66
  %call71 = call i8* @stack_PopResult()
  %59 = bitcast i8* %call71 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %59, %struct.LIST_HELP** %ArgsR, align 8
  %call72 = call i8* @stack_PopResult()
  %60 = bitcast i8* %call72 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %60, %struct.LIST_HELP** %ArgsL, align 8
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsR, align 8
  %call73 = call i8* @list_Car(%struct.LIST_HELP* %61)
  %62 = bitcast i8* %call73 to %struct.term*
  store %struct.term* %62, %struct.term** %TermR.addr, align 8
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsL, align 8
  %call74 = call i8* @list_Car(%struct.LIST_HELP* %63)
  %64 = bitcast i8* %call74 to %struct.term*
  store %struct.term* %64, %struct.term** %TermL.addr, align 8
  %call75 = call i8* @stack_Top()
  %65 = bitcast i8* %call75 to %struct.binding*
  store %struct.binding* %65, %struct.binding** %CtR.addr, align 8
  %call76 = call i8* @stack_NthTop(i32 1)
  %66 = bitcast i8* %call76 to %struct.binding*
  store %struct.binding* %66, %struct.binding** %CtL.addr, align 8
  %67 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsL, align 8
  %call77 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %67)
  %call78 = call i32 @list_Empty(%struct.LIST_HELP* %call77)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %if.else.70
  call void @stack_NPop(i32 2)
  br label %if.end.84

if.else.81:                                       ; preds = %if.else.70
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsL, align 8
  %call82 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %68)
  %69 = bitcast %struct.LIST_HELP* %call82 to i8*
  call void @stack_Push(i8* %69)
  %70 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgsR, align 8
  %call83 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %70)
  %71 = bitcast %struct.LIST_HELP* %call83 to i8*
  call void @stack_Push(i8* %71)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.80
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84
  br label %for.cond

return:                                           ; preds = %if.then.69, %if.else.63
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define i32 @unify_UnifyAllOC(%struct.binding* %IndexContext, %struct.binding* %CtL, %struct.term* %TermL, %struct.binding* %CtR, %struct.term* %TermR) #0 {
entry:
  %retval = alloca i32, align 4
  %IndexContext.addr = alloca %struct.binding*, align 8
  %CtL.addr = alloca %struct.binding*, align 8
  %TermL.addr = alloca %struct.term*, align 8
  %CtR.addr = alloca %struct.binding*, align 8
  %TermR.addr = alloca %struct.term*, align 8
  %TermTop = alloca i32, align 4
  %CHelp = alloca %struct.binding*, align 8
  %TermTop10 = alloca i32, align 4
  %CHelp15 = alloca %struct.binding*, align 8
  %ArgL = alloca %struct.LIST_HELP*, align 8
  %ArgR = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.binding* %CtL, %struct.binding** %CtL.addr, align 8
  store %struct.term* %TermL, %struct.term** %TermL.addr, align 8
  store %struct.binding* %CtR, %struct.binding** %CtR.addr, align 8
  store %struct.term* %TermR, %struct.term** %TermR.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  store i32 %call1, i32* %TermTop, align 4
  %2 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %3 = load i32, i32* %TermTop, align 4
  %call2 = call i32 @cont_VarIsBound(%struct.binding* %2, i32 %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %5 = load i32, i32* %TermTop, align 4
  %call4 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* %4, i32 %5)
  store %struct.binding* %call4, %struct.binding** %CHelp, align 8
  %6 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %7 = load i32, i32* %TermTop, align 4
  %call5 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %6, i32 %7)
  store %struct.term* %call5, %struct.term** %TermL.addr, align 8
  %8 = load %struct.binding*, %struct.binding** %CHelp, align 8
  store %struct.binding* %8, %struct.binding** %CtL.addr, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %while.cond

while.end:                                        ; preds = %if.else, %while.cond
  br label %while.cond.6

while.cond.6:                                     ; preds = %if.end.19, %while.end
  %9 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call7 = call i32 @term_IsVariable(%struct.term* %9)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %while.body.9, label %while.end.20

while.body.9:                                     ; preds = %while.cond.6
  %10 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call11 = call i32 @term_TopSymbol(%struct.term* %10)
  store i32 %call11, i32* %TermTop10, align 4
  %11 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %12 = load i32, i32* %TermTop10, align 4
  %call12 = call i32 @cont_VarIsBound(%struct.binding* %11, i32 %12)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.18

if.then.14:                                       ; preds = %while.body.9
  %13 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %14 = load i32, i32* %TermTop10, align 4
  %call16 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* %13, i32 %14)
  store %struct.binding* %call16, %struct.binding** %CHelp15, align 8
  %15 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %16 = load i32, i32* %TermTop10, align 4
  %call17 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %15, i32 %16)
  store %struct.term* %call17, %struct.term** %TermR.addr, align 8
  %17 = load %struct.binding*, %struct.binding** %CHelp15, align 8
  store %struct.binding* %17, %struct.binding** %CtR.addr, align 8
  br label %if.end.19

if.else.18:                                       ; preds = %while.body.9
  br label %while.end.20

if.end.19:                                        ; preds = %if.then.14
  br label %while.cond.6

while.end.20:                                     ; preds = %if.else.18, %while.cond.6
  %18 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call21 = call i32 @term_IsVariable(%struct.term* %18)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.57

if.then.23:                                       ; preds = %while.end.20
  %19 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call24 = call i32 @term_IsVariable(%struct.term* %19)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.49

if.then.26:                                       ; preds = %if.then.23
  %20 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %21 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %cmp = icmp ne %struct.binding* %20, %21
  br i1 %cmp, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.26
  %22 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %23 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call27 = call i32 @term_EqualTopSymbols(%struct.term* %22, %struct.term* %23)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.48, label %if.then.29

if.then.29:                                       ; preds = %lor.lhs.false, %if.then.26
  %24 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call30 = call i32 @term_IsIndexVariable(%struct.term* %24)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.else.35

if.then.32:                                       ; preds = %if.then.29
  %25 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %26 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call33 = call i32 @term_TopSymbol(%struct.term* %26)
  %27 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %28 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call34 = call i32 @cont_CreateBinding(%struct.binding* %25, i32 %call33, %struct.binding* %27, %struct.term* %28)
  br label %if.end.47

if.else.35:                                       ; preds = %if.then.29
  %29 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call36 = call i32 @term_IsIndexVariable(%struct.term* %29)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.40, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %if.else.35
  %30 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %31 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %cmp39 = icmp eq %struct.binding* %30, %31
  br i1 %cmp39, label %if.then.40, label %if.else.43

if.then.40:                                       ; preds = %lor.lhs.false.38, %if.else.35
  %32 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %33 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call41 = call i32 @term_TopSymbol(%struct.term* %33)
  %34 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %35 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call42 = call i32 @cont_CreateBinding(%struct.binding* %32, i32 %call41, %struct.binding* %34, %struct.term* %35)
  br label %if.end.46

if.else.43:                                       ; preds = %lor.lhs.false.38
  %36 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %37 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call44 = call i32 @term_TopSymbol(%struct.term* %37)
  %38 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %39 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call45 = call i32 @cont_CreateBinding(%struct.binding* %36, i32 %call44, %struct.binding* %38, %struct.term* %39)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.40
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.32
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %lor.lhs.false
  store i32 1, i32* %retval
  br label %return

if.else.49:                                       ; preds = %if.then.23
  %40 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %41 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call50 = call i32 @term_TopSymbol(%struct.term* %41)
  %42 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %43 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call51 = call i32 @unify_OccurCheck(%struct.binding* %40, i32 %call50, %struct.binding* %42, %struct.term* %43)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %if.else.49
  store i32 0, i32* %retval
  br label %return

if.else.54:                                       ; preds = %if.else.49
  %44 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %45 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call55 = call i32 @term_TopSymbol(%struct.term* %45)
  %46 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %47 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call56 = call i32 @cont_CreateBinding(%struct.binding* %44, i32 %call55, %struct.binding* %46, %struct.term* %47)
  store i32 1, i32* %retval
  br label %return

if.else.57:                                       ; preds = %while.end.20
  %48 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call58 = call i32 @term_IsVariable(%struct.term* %48)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.else.68

if.then.60:                                       ; preds = %if.else.57
  %49 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %50 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call61 = call i32 @term_TopSymbol(%struct.term* %50)
  %51 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %52 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call62 = call i32 @unify_OccurCheck(%struct.binding* %49, i32 %call61, %struct.binding* %51, %struct.term* %52)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.then.60
  store i32 0, i32* %retval
  br label %return

if.else.65:                                       ; preds = %if.then.60
  %53 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %54 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call66 = call i32 @term_TopSymbol(%struct.term* %54)
  %55 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %56 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call67 = call i32 @cont_CreateBinding(%struct.binding* %53, i32 %call66, %struct.binding* %55, %struct.term* %56)
  store i32 1, i32* %retval
  br label %return

if.else.68:                                       ; preds = %if.else.57
  %57 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %58 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call69 = call i32 @term_EqualTopSymbols(%struct.term* %57, %struct.term* %58)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.else.88

if.then.71:                                       ; preds = %if.else.68
  %59 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call72 = call i32 @term_IsComplex(%struct.term* %59)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.87

if.then.74:                                       ; preds = %if.then.71
  %60 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call75 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %60)
  store %struct.LIST_HELP* %call75, %struct.LIST_HELP** %ArgL, align 8
  %61 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call76 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %61)
  store %struct.LIST_HELP* %call76, %struct.LIST_HELP** %ArgR, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.74
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call77 = call i32 @list_Empty(%struct.LIST_HELP* %62)
  %tobool78 = icmp ne i32 %call77, 0
  %lnot = xor i1 %tobool78, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %63 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %64 = load %struct.binding*, %struct.binding** %CtL.addr, align 8
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call79 = call i8* @list_Car(%struct.LIST_HELP* %65)
  %66 = bitcast i8* %call79 to %struct.term*
  %67 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgR, align 8
  %call80 = call i8* @list_Car(%struct.LIST_HELP* %68)
  %69 = bitcast i8* %call80 to %struct.term*
  %call81 = call i32 @unify_UnifyAllOC(%struct.binding* %63, %struct.binding* %64, %struct.term* %66, %struct.binding* %67, %struct.term* %69)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.end.84, label %if.then.83

if.then.83:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.84:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.84
  %70 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call85 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %70)
  store %struct.LIST_HELP* %call85, %struct.LIST_HELP** %ArgL, align 8
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgR, align 8
  %call86 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %71)
  store %struct.LIST_HELP* %call86, %struct.LIST_HELP** %ArgR, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.87

if.end.87:                                        ; preds = %for.end, %if.then.71
  store i32 1, i32* %retval
  br label %return

if.else.88:                                       ; preds = %if.else.68
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.88, %if.end.87, %if.then.83, %if.else.65, %if.then.64, %if.else.54, %if.then.53, %if.end.48
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_IsIndexVariable(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsIndexVariable(i32 %call)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @unify_Match(%struct.binding* %Context, %struct.term* %TermL, %struct.term* %TermR) #0 {
entry:
  %retval = alloca i32, align 4
  %Context.addr = alloca %struct.binding*, align 8
  %TermL.addr = alloca %struct.term*, align 8
  %TermR.addr = alloca %struct.term*, align 8
  %ArgL = alloca %struct.LIST_HELP*, align 8
  %ArgR = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.term* %TermL, %struct.term** %TermL.addr, align 8
  store %struct.term* %TermR, %struct.term** %TermR.addr, align 8
  %0 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.11

if.then:                                          ; preds = %entry
  %1 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %2 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %2)
  %call2 = call i32 @cont_VarIsBound(%struct.binding* %1, i32 %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %3 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %4 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %4)
  %call6 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %3, i32 %call5)
  %5 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call7 = call i32 @term_Equal(%struct.term* %call6, %struct.term* %5)
  store i32 %call7, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %6 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %7 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call8 = call i32 @term_TopSymbol(%struct.term* %7)
  %call9 = call %struct.binding* @cont_InstanceContext()
  %8 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call10 = call i32 @cont_CreateBinding(%struct.binding* %6, i32 %call8, %struct.binding* %call9, %struct.term* %8)
  store i32 1, i32* %retval
  br label %return

if.else.11:                                       ; preds = %entry
  %9 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %10 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call12 = call i32 @term_EqualTopSymbols(%struct.term* %9, %struct.term* %10)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.30

if.then.14:                                       ; preds = %if.else.11
  %11 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call15 = call i32 @term_IsComplex(%struct.term* %11)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.29

if.then.17:                                       ; preds = %if.then.14
  %12 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call18 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %ArgL, align 8
  %13 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %13)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %ArgR, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.17
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call20 = call i32 @list_Empty(%struct.LIST_HELP* %14)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool21, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call22 to %struct.term*
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgR, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call23 to %struct.term*
  %call24 = call i32 @unify_Match(%struct.binding* %15, %struct.term* %17, %struct.term* %19)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end, label %if.then.26

if.then.26:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call27 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %ArgL, align 8
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgR, align 8
  %call28 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %ArgR, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.29

if.end.29:                                        ; preds = %for.end, %if.then.14
  store i32 1, i32* %retval
  br label %return

if.else.30:                                       ; preds = %if.else.11
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.30, %if.end.29, %if.then.26, %if.else, %if.then.4
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @term_Equal(%struct.term*, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_InstanceContext() #1 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_INSTANCECONTEXT, align 8
  ret %struct.binding* %0
}

; Function Attrs: nounwind uwtable
define i32 @unify_MatchFlexible(%struct.binding* %Context, %struct.term* %TermL, %struct.term* %TermR) #0 {
entry:
  %retval = alloca i32, align 4
  %Context.addr = alloca %struct.binding*, align 8
  %TermL.addr = alloca %struct.term*, align 8
  %TermR.addr = alloca %struct.term*, align 8
  %ArgL = alloca %struct.LIST_HELP*, align 8
  %ArgR = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.term* %TermL, %struct.term** %TermL.addr, align 8
  store %struct.term* %TermR, %struct.term** %TermR.addr, align 8
  %0 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.11

if.then:                                          ; preds = %entry
  %1 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %2 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %2)
  %call2 = call i32 @cont_VarIsBound(%struct.binding* %1, i32 %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %3 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %4 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %4)
  %call6 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %3, i32 %call5)
  %5 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call7 = call i32 @term_Equal(%struct.term* %call6, %struct.term* %5)
  store i32 %call7, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %6 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %7 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call8 = call i32 @term_TopSymbol(%struct.term* %7)
  %call9 = call %struct.binding* @cont_InstanceContext()
  %8 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call10 = call i32 @cont_CreateBinding(%struct.binding* %6, i32 %call8, %struct.binding* %call9, %struct.term* %8)
  store i32 1, i32* %retval
  br label %return

if.else.11:                                       ; preds = %entry
  %9 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %10 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call12 = call i32 @term_EqualTopSymbols(%struct.term* %9, %struct.term* %10)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true, label %if.else.34

land.lhs.true:                                    ; preds = %if.else.11
  %11 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call14 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %11)
  %call15 = call i32 @list_Length(%struct.LIST_HELP* %call14)
  %12 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call16 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  %call17 = call i32 @list_Length(%struct.LIST_HELP* %call16)
  %cmp = icmp eq i32 %call15, %call17
  br i1 %cmp, label %if.then.18, label %if.else.34

if.then.18:                                       ; preds = %land.lhs.true
  %13 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call19 = call i32 @term_IsComplex(%struct.term* %13)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.33

if.then.21:                                       ; preds = %if.then.18
  %14 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call22 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %14)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %ArgL, align 8
  %15 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call23 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %15)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %ArgR, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.21
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call24 = call i32 @list_Empty(%struct.LIST_HELP* %16)
  %tobool25 = icmp ne i32 %call24, 0
  %lnot = xor i1 %tobool25, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call26 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call26 to %struct.term*
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgR, align 8
  %call27 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call27 to %struct.term*
  %call28 = call i32 @unify_MatchFlexible(%struct.binding* %17, %struct.term* %19, %struct.term* %21)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end, label %if.then.30

if.then.30:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call31 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %ArgL, align 8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgR, align 8
  %call32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %ArgR, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %if.then.18
  store i32 1, i32* %retval
  br label %return

if.else.34:                                       ; preds = %land.lhs.true, %if.else.11
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.34, %if.end.33, %if.then.30, %if.else, %if.then.4
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i32 @list_Length(%struct.LIST_HELP*) #2

; Function Attrs: nounwind uwtable
define void @unify_EstablishMatcher(%struct.binding* %Context, %struct.subst* %Subst) #0 {
entry:
  %Context.addr = alloca %struct.binding*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call = call i32 @subst_Exist(%struct.subst* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %2 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call1 = call i32 @subst_Dom(%struct.subst* %2)
  %call2 = call %struct.binding* @cont_InstanceContext()
  %3 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call3 = call %struct.term* @subst_Cod(%struct.subst* %3)
  %call4 = call i32 @cont_CreateBinding(%struct.binding* %1, i32 %call1, %struct.binding* %call2, %struct.term* %call3)
  %4 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call5 = call %struct.subst* @subst_Next(%struct.subst* %4)
  store %struct.subst* %call5, %struct.subst** %Subst.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @subst_Exist(%struct.subst* %S) #1 {
entry:
  %S.addr = alloca %struct.subst*, align 8
  store %struct.subst* %S, %struct.subst** %S.addr, align 8
  %0 = load %struct.subst*, %struct.subst** %S.addr, align 8
  %call = call %struct.subst* @subst_Nil()
  %cmp = icmp ne %struct.subst* %0, %call
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @subst_Dom(%struct.subst* %S) #1 {
entry:
  %S.addr = alloca %struct.subst*, align 8
  store %struct.subst* %S, %struct.subst** %S.addr, align 8
  %0 = load %struct.subst*, %struct.subst** %S.addr, align 8
  %dom = getelementptr inbounds %struct.subst, %struct.subst* %0, i32 0, i32 1
  %1 = load i32, i32* %dom, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @subst_Cod(%struct.subst* %S) #1 {
entry:
  %S.addr = alloca %struct.subst*, align 8
  store %struct.subst* %S, %struct.subst** %S.addr, align 8
  %0 = load %struct.subst*, %struct.subst** %S.addr, align 8
  %codomain = getelementptr inbounds %struct.subst, %struct.subst* %0, i32 0, i32 2
  %1 = load %struct.term*, %struct.term** %codomain, align 8
  ret %struct.term* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.subst* @subst_Next(%struct.subst* %S) #1 {
entry:
  %S.addr = alloca %struct.subst*, align 8
  store %struct.subst* %S, %struct.subst** %S.addr, align 8
  %0 = load %struct.subst*, %struct.subst** %S.addr, align 8
  %next = getelementptr inbounds %struct.subst, %struct.subst* %0, i32 0, i32 0
  %1 = load %struct.subst*, %struct.subst** %next, align 8
  ret %struct.subst* %1
}

; Function Attrs: nounwind uwtable
define i32 @unify_MatchBindingsHelp(%struct.binding* %IndexContext, %struct.term* %TermL, %struct.binding* %CtR, %struct.term* %TermR) #0 {
entry:
  %retval = alloca i32, align 4
  %IndexContext.addr = alloca %struct.binding*, align 8
  %TermL.addr = alloca %struct.term*, align 8
  %CtR.addr = alloca %struct.binding*, align 8
  %TermR.addr = alloca %struct.term*, align 8
  %TermTop = alloca i32, align 4
  %CHelp = alloca %struct.binding*, align 8
  %ArgL = alloca %struct.LIST_HELP*, align 8
  %ArgR = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.term* %TermL, %struct.term** %TermL.addr, align 8
  store %struct.binding* %CtR, %struct.binding** %CtR.addr, align 8
  store %struct.term* %TermR, %struct.term** %TermR.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %entry
  %0 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  store i32 %call1, i32* %TermTop, align 4
  %2 = load i32, i32* %TermTop, align 4
  %call2 = call i32 @symbol_IsIndexVariable(i32 %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  store %struct.binding* %3, %struct.binding** %CtR.addr, align 8
  br label %if.end.6

if.else:                                          ; preds = %while.body
  %4 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %call4 = call %struct.binding* @cont_InstanceContext()
  %cmp = icmp eq %struct.binding* %4, %call4
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  br label %while.end

if.end:                                           ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %5 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %6 = load i32, i32* %TermTop, align 4
  %call7 = call i32 @cont_VarIsBound(%struct.binding* %5, i32 %6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %if.end.6
  %7 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %8 = load i32, i32* %TermTop, align 4
  %call10 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* %7, i32 %8)
  store %struct.binding* %call10, %struct.binding** %CHelp, align 8
  %9 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %10 = load i32, i32* %TermTop, align 4
  %call11 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %9, i32 %10)
  store %struct.term* %call11, %struct.term** %TermR.addr, align 8
  %11 = load %struct.binding*, %struct.binding** %CHelp, align 8
  store %struct.binding* %11, %struct.binding** %CtR.addr, align 8
  br label %if.end.13

if.else.12:                                       ; preds = %if.end.6
  br label %while.end

if.end.13:                                        ; preds = %if.then.9
  br label %while.cond

while.end:                                        ; preds = %if.else.12, %if.then.5, %while.cond
  %12 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call14 = call i32 @term_IsVariable(%struct.term* %12)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.29

if.then.16:                                       ; preds = %while.end
  %13 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %14 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call17 = call i32 @term_TopSymbol(%struct.term* %14)
  %call18 = call i32 @cont_VarIsBound(%struct.binding* %13, i32 %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.26

if.then.20:                                       ; preds = %if.then.16
  %15 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %16 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %17 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call21 = call i32 @term_TopSymbol(%struct.term* %17)
  %call22 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* %16, i32 %call21)
  %18 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %19 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call23 = call i32 @term_TopSymbol(%struct.term* %19)
  %call24 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %18, i32 %call23)
  %20 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %21 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call25 = call i32 @cont_TermEqualModuloBindings(%struct.binding* %15, %struct.binding* %call22, %struct.term* %call24, %struct.binding* %20, %struct.term* %21)
  store i32 %call25, i32* %retval
  br label %return

if.else.26:                                       ; preds = %if.then.16
  %22 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %23 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call27 = call i32 @term_TopSymbol(%struct.term* %23)
  %24 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %25 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call28 = call i32 @cont_CreateBinding(%struct.binding* %22, i32 %call27, %struct.binding* %24, %struct.term* %25)
  store i32 1, i32* %retval
  br label %return

if.else.29:                                       ; preds = %while.end
  %26 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %27 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call30 = call i32 @term_EqualTopSymbols(%struct.term* %26, %struct.term* %27)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.else.49

if.then.32:                                       ; preds = %if.else.29
  %28 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call33 = call i32 @term_IsComplex(%struct.term* %28)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.48

if.then.35:                                       ; preds = %if.then.32
  %29 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call36 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %29)
  store %struct.LIST_HELP* %call36, %struct.LIST_HELP** %ArgL, align 8
  %30 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call37 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %30)
  store %struct.LIST_HELP* %call37, %struct.LIST_HELP** %ArgR, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.35
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call38 = call i32 @list_Empty(%struct.LIST_HELP* %31)
  %tobool39 = icmp ne i32 %call38, 0
  %lnot = xor i1 %tobool39, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call40 = call i8* @list_Car(%struct.LIST_HELP* %33)
  %34 = bitcast i8* %call40 to %struct.term*
  %35 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgR, align 8
  %call41 = call i8* @list_Car(%struct.LIST_HELP* %36)
  %37 = bitcast i8* %call41 to %struct.term*
  %call42 = call i32 @unify_MatchBindingsHelp(%struct.binding* %32, %struct.term* %34, %struct.binding* %35, %struct.term* %37)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call46 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %38)
  store %struct.LIST_HELP* %call46, %struct.LIST_HELP** %ArgL, align 8
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgR, align 8
  %call47 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %39)
  store %struct.LIST_HELP* %call47, %struct.LIST_HELP** %ArgR, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.48

if.end.48:                                        ; preds = %for.end, %if.then.32
  store i32 1, i32* %retval
  br label %return

if.else.49:                                       ; preds = %if.else.29
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.49, %if.end.48, %if.then.44, %if.else.26, %if.then.20
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsIndexVariable(i32 %S) #1 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %cmp = icmp sgt i32 %0, 2000
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %S.addr, align 4
  %cmp1 = icmp sle i32 %1, 3000
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

declare i32 @cont_TermEqualModuloBindings(%struct.binding*, %struct.binding*, %struct.term*, %struct.binding*, %struct.term*) #2

; Function Attrs: nounwind uwtable
define i32 @unify_MatchBindings(%struct.binding* %IndexContext, %struct.term* %TermL, %struct.term* %TermR) #0 {
entry:
  %IndexContext.addr = alloca %struct.binding*, align 8
  %TermL.addr = alloca %struct.term*, align 8
  %TermR.addr = alloca %struct.term*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.term* %TermL, %struct.term** %TermL.addr, align 8
  store %struct.term* %TermR, %struct.term** %TermR.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %1 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call = call %struct.binding* @cont_InstanceContext()
  %2 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call1 = call i32 @unify_MatchBindingsHelp(%struct.binding* %0, %struct.term* %1, %struct.binding* %call, %struct.term* %2)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @unify_MatchReverse(%struct.binding* %IndexContext, %struct.term* %TermL, %struct.binding* %CtR, %struct.term* %TermR) #0 {
entry:
  %retval = alloca i32, align 4
  %IndexContext.addr = alloca %struct.binding*, align 8
  %TermL.addr = alloca %struct.term*, align 8
  %CtR.addr = alloca %struct.binding*, align 8
  %TermR.addr = alloca %struct.term*, align 8
  %TermTop = alloca i32, align 4
  %CHelp = alloca %struct.binding*, align 8
  %ArgL = alloca %struct.LIST_HELP*, align 8
  %ArgR = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.term* %TermL, %struct.term** %TermL.addr, align 8
  store %struct.binding* %CtR, %struct.binding** %CtR.addr, align 8
  store %struct.term* %TermR, %struct.term** %TermR.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %entry
  %0 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  store i32 %call1, i32* %TermTop, align 4
  %2 = load i32, i32* %TermTop, align 4
  %call2 = call i32 @symbol_IsIndexVariable(i32 %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  store %struct.binding* %3, %struct.binding** %CtR.addr, align 8
  br label %if.end.6

if.else:                                          ; preds = %while.body
  %4 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %call4 = call %struct.binding* @cont_InstanceContext()
  %cmp = icmp eq %struct.binding* %4, %call4
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  br label %while.end

if.end:                                           ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %5 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %6 = load i32, i32* %TermTop, align 4
  %call7 = call i32 @cont_VarIsBound(%struct.binding* %5, i32 %6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %if.end.6
  %7 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %8 = load i32, i32* %TermTop, align 4
  %call10 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* %7, i32 %8)
  store %struct.binding* %call10, %struct.binding** %CHelp, align 8
  %9 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %10 = load i32, i32* %TermTop, align 4
  %call11 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %9, i32 %10)
  store %struct.term* %call11, %struct.term** %TermR.addr, align 8
  %11 = load %struct.binding*, %struct.binding** %CHelp, align 8
  store %struct.binding* %11, %struct.binding** %CtR.addr, align 8
  br label %if.end.13

if.else.12:                                       ; preds = %if.end.6
  br label %while.end

if.end.13:                                        ; preds = %if.then.9
  br label %while.cond

while.end:                                        ; preds = %if.else.12, %if.then.5, %while.cond
  %12 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call14 = call i32 @term_IsVariable(%struct.term* %12)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.40

if.then.16:                                       ; preds = %while.end
  %13 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %call17 = call %struct.binding* @cont_InstanceContext()
  %cmp18 = icmp eq %struct.binding* %13, %call17
  br i1 %cmp18, label %land.lhs.true, label %if.else.22

land.lhs.true:                                    ; preds = %if.then.16
  %14 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %15 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call19 = call i32 @term_EqualTopSymbols(%struct.term* %14, %struct.term* %15)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.else.22:                                       ; preds = %land.lhs.true, %if.then.16
  %16 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call23 = call i32 @term_IsIndexVariable(%struct.term* %16)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %if.else.22
  %17 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %18 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call26 = call i32 @term_TopSymbol(%struct.term* %18)
  %19 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %20 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call27 = call i32 @cont_CreateBinding(%struct.binding* %17, i32 %call26, %struct.binding* %19, %struct.term* %20)
  store i32 1, i32* %retval
  br label %return

if.else.28:                                       ; preds = %if.else.22
  %21 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call29 = call i32 @term_IsVariable(%struct.term* %21)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.39

land.lhs.true.31:                                 ; preds = %if.else.28
  %22 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call32 = call i32 @term_IsIndexVariable(%struct.term* %22)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.31
  %23 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %24 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %cmp34 = icmp eq %struct.binding* %23, %24
  br i1 %cmp34, label %if.then.35, label %if.else.39

if.then.35:                                       ; preds = %lor.lhs.false, %land.lhs.true.31
  %25 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %26 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call36 = call i32 @term_TopSymbol(%struct.term* %26)
  %call37 = call %struct.binding* @cont_InstanceContext()
  %27 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call38 = call i32 @cont_CreateBinding(%struct.binding* %25, i32 %call36, %struct.binding* %call37, %struct.term* %27)
  store i32 1, i32* %retval
  br label %return

if.else.39:                                       ; preds = %lor.lhs.false, %if.else.28
  store i32 0, i32* %retval
  br label %return

if.else.40:                                       ; preds = %while.end
  %28 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call41 = call i32 @term_IsVariable(%struct.term* %28)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.53

if.then.43:                                       ; preds = %if.else.40
  %29 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call44 = call i32 @term_IsIndexVariable(%struct.term* %29)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.48, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %if.then.43
  %30 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %31 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %cmp47 = icmp eq %struct.binding* %30, %31
  br i1 %cmp47, label %if.then.48, label %if.else.52

if.then.48:                                       ; preds = %lor.lhs.false.46, %if.then.43
  %32 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %33 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call49 = call i32 @term_TopSymbol(%struct.term* %33)
  %call50 = call %struct.binding* @cont_InstanceContext()
  %34 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call51 = call i32 @cont_CreateBinding(%struct.binding* %32, i32 %call49, %struct.binding* %call50, %struct.term* %34)
  store i32 1, i32* %retval
  br label %return

if.else.52:                                       ; preds = %lor.lhs.false.46
  store i32 0, i32* %retval
  br label %return

if.else.53:                                       ; preds = %if.else.40
  %35 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %36 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call54 = call i32 @term_EqualTopSymbols(%struct.term* %35, %struct.term* %36)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.else.73

if.then.56:                                       ; preds = %if.else.53
  %37 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call57 = call i32 @term_IsComplex(%struct.term* %37)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.72

if.then.59:                                       ; preds = %if.then.56
  %38 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call60 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %38)
  store %struct.LIST_HELP* %call60, %struct.LIST_HELP** %ArgL, align 8
  %39 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call61 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %39)
  store %struct.LIST_HELP* %call61, %struct.LIST_HELP** %ArgR, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.59
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call62 = call i32 @list_Empty(%struct.LIST_HELP* %40)
  %tobool63 = icmp ne i32 %call62, 0
  %lnot = xor i1 %tobool63, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call64 = call i8* @list_Car(%struct.LIST_HELP* %42)
  %43 = bitcast i8* %call64 to %struct.term*
  %44 = load %struct.binding*, %struct.binding** %CtR.addr, align 8
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgR, align 8
  %call65 = call i8* @list_Car(%struct.LIST_HELP* %45)
  %46 = bitcast i8* %call65 to %struct.term*
  %call66 = call i32 @unify_MatchReverse(%struct.binding* %41, %struct.term* %43, %struct.binding* %44, %struct.term* %46)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.69:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call70 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %47)
  store %struct.LIST_HELP* %call70, %struct.LIST_HELP** %ArgL, align 8
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgR, align 8
  %call71 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %48)
  store %struct.LIST_HELP* %call71, %struct.LIST_HELP** %ArgR, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.72

if.end.72:                                        ; preds = %for.end, %if.then.56
  store i32 1, i32* %retval
  br label %return

if.else.73:                                       ; preds = %if.else.53
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.73, %if.end.72, %if.then.68, %if.else.52, %if.then.48, %if.else.39, %if.then.35, %if.then.25, %if.then.21
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define i32 @unify_Variation(%struct.binding* %Context, %struct.term* %TermL, %struct.term* %TermR) #0 {
entry:
  %retval = alloca i32, align 4
  %Context.addr = alloca %struct.binding*, align 8
  %TermL.addr = alloca %struct.term*, align 8
  %TermR.addr = alloca %struct.term*, align 8
  %ArgL = alloca %struct.LIST_HELP*, align 8
  %ArgR = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.term* %TermL, %struct.term** %TermL.addr, align 8
  store %struct.term* %TermR, %struct.term** %TermR.addr, align 8
  %0 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.18

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %2 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call1 = call i32 @term_EqualTopSymbols(%struct.term* %1, %struct.term* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %3 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call4 = call i32 @term_IsIndexVariable(%struct.term* %3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else.17

if.then.6:                                        ; preds = %if.else
  %4 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %5 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call7 = call i32 @term_TopSymbol(%struct.term* %5)
  %call8 = call i32 @cont_VarIsBound(%struct.binding* %4, i32 %call7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.14

if.then.10:                                       ; preds = %if.then.6
  %6 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %7 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call11 = call i32 @term_TopSymbol(%struct.term* %7)
  %call12 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %6, i32 %call11)
  %8 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call13 = call i32 @term_Equal(%struct.term* %call12, %struct.term* %8)
  store i32 %call13, i32* %retval
  br label %return

if.else.14:                                       ; preds = %if.then.6
  %9 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %10 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call15 = call i32 @term_TopSymbol(%struct.term* %10)
  %11 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %12 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call16 = call i32 @cont_CreateBinding(%struct.binding* %9, i32 %call15, %struct.binding* %11, %struct.term* %12)
  store i32 1, i32* %retval
  br label %return

if.else.17:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.else.18:                                       ; preds = %entry
  %13 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %14 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call19 = call i32 @term_EqualTopSymbols(%struct.term* %13, %struct.term* %14)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.37

if.then.21:                                       ; preds = %if.else.18
  %15 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call22 = call i32 @term_IsComplex(%struct.term* %15)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.36

if.then.24:                                       ; preds = %if.then.21
  %16 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call25 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %16)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %ArgL, align 8
  %17 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call26 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %17)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %ArgR, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.24
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call27 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool28 = icmp ne i32 %call27, 0
  %lnot = xor i1 %tobool28, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call29 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call29 to %struct.term*
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgR, align 8
  %call30 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = bitcast i8* %call30 to %struct.term*
  %call31 = call i32 @unify_Variation(%struct.binding* %19, %struct.term* %21, %struct.term* %23)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end, label %if.then.33

if.then.33:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call34 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %ArgL, align 8
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgR, align 8
  %call35 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call35, %struct.LIST_HELP** %ArgR, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.36

if.end.36:                                        ; preds = %for.end, %if.then.21
  store i32 1, i32* %retval
  br label %return

if.else.37:                                       ; preds = %if.else.18
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.37, %if.end.36, %if.then.33, %if.else.17, %if.else.14, %if.then.10, %if.then.3
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define %struct.term* @unify_ComGenLinear(%struct.binding* %IndexContext, %struct.subst** %SubstL, %struct.term* %TermL, %struct.subst** %SubstR, %struct.term* %TermR) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %IndexContext.addr = alloca %struct.binding*, align 8
  %SubstL.addr = alloca %struct.subst**, align 8
  %TermL.addr = alloca %struct.term*, align 8
  %SubstR.addr = alloca %struct.subst**, align 8
  %TermR.addr = alloca %struct.term*, align 8
  %ArgList = alloca %struct.LIST_HELP*, align 8
  %ArgL = alloca %struct.LIST_HELP*, align 8
  %ArgR = alloca %struct.LIST_HELP*, align 8
  %Symbol = alloca i32, align 4
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.subst** %SubstL, %struct.subst*** %SubstL.addr, align 8
  store %struct.term* %TermL, %struct.term** %TermL.addr, align 8
  store %struct.subst** %SubstR, %struct.subst*** %SubstR.addr, align 8
  store %struct.term* %TermR, %struct.term** %TermR.addr, align 8
  %0 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call = call i32 @term_IsIndexVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  %2 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call2 = call %struct.term* @term_Copy(%struct.term* %2)
  %3 = load %struct.subst**, %struct.subst*** %SubstL.addr, align 8
  %4 = load %struct.subst*, %struct.subst** %3, align 8
  %call3 = call %struct.subst* @subst_Add(i32 %call1, %struct.term* %call2, %struct.subst* %4)
  %5 = load %struct.subst**, %struct.subst*** %SubstL.addr, align 8
  store %struct.subst* %call3, %struct.subst** %5, align 8
  %6 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call4 = call %struct.term* @term_Copy(%struct.term* %6)
  store %struct.term* %call4, %struct.term** %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %8 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call5 = call i32 @term_EqualTopSymbols(%struct.term* %7, %struct.term* %8)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else.22

if.then.7:                                        ; preds = %if.else
  %call8 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %ArgList, align 8
  %9 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %9)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %ArgL, align 8
  %10 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call10 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %10)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %ArgR, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %13 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %14 = load %struct.subst**, %struct.subst*** %SubstL.addr, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call13 to %struct.term*
  %17 = load %struct.subst**, %struct.subst*** %SubstR.addr, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgR, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call14 to %struct.term*
  %call15 = call %struct.term* @unify_ComGenLinear(%struct.binding* %13, %struct.subst** %14, %struct.term* %16, %struct.subst** %17, %struct.term* %19)
  %20 = bitcast %struct.term* %call15 to i8*
  %call16 = call %struct.LIST_HELP* @list_List(i8* %20)
  %call17 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %12, %struct.LIST_HELP* %call16)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %ArgList, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgL, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %ArgL, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgR, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %ArgR, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call20 = call i32 @term_TopSymbol(%struct.term* %23)
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %call21 = call %struct.term* @term_Create(i32 %call20, %struct.LIST_HELP* %24)
  store %struct.term* %call21, %struct.term** %retval
  br label %return

if.else.22:                                       ; preds = %if.else
  %25 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %call23 = call i32 @cont_NextIndexVariable(%struct.binding* %25)
  store i32 %call23, i32* %Symbol, align 4
  %26 = load i32, i32* %Symbol, align 4
  %27 = load %struct.term*, %struct.term** %TermL.addr, align 8
  %call24 = call %struct.term* @term_Copy(%struct.term* %27)
  %28 = load %struct.subst**, %struct.subst*** %SubstL.addr, align 8
  %29 = load %struct.subst*, %struct.subst** %28, align 8
  %call25 = call %struct.subst* @subst_Add(i32 %26, %struct.term* %call24, %struct.subst* %29)
  %30 = load %struct.subst**, %struct.subst*** %SubstL.addr, align 8
  store %struct.subst* %call25, %struct.subst** %30, align 8
  %31 = load i32, i32* %Symbol, align 4
  %32 = load %struct.term*, %struct.term** %TermR.addr, align 8
  %call26 = call %struct.term* @term_Copy(%struct.term* %32)
  %33 = load %struct.subst**, %struct.subst*** %SubstR.addr, align 8
  %34 = load %struct.subst*, %struct.subst** %33, align 8
  %call27 = call %struct.subst* @subst_Add(i32 %31, %struct.term* %call26, %struct.subst* %34)
  %35 = load %struct.subst**, %struct.subst*** %SubstR.addr, align 8
  store %struct.subst* %call27, %struct.subst** %35, align 8
  %36 = load i32, i32* %Symbol, align 4
  %call28 = call %struct.LIST_HELP* @list_Nil()
  %call29 = call %struct.term* @term_Create(i32 %36, %struct.LIST_HELP* %call28)
  store %struct.term* %call29, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.else.22, %for.end, %if.then
  %37 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %37
}

declare %struct.subst* @subst_Add(i32, %struct.term*, %struct.subst*) #2

declare %struct.term* @term_Copy(%struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #1 {
entry:
  ret %struct.LIST_HELP* null
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2) #1 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %List1.addr = alloca %struct.LIST_HELP*, align 8
  %List2.addr = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List1, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %List2, %struct.LIST_HELP** %List2.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %Result, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %List1.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %List1.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %9, i32 0, i32 0
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %cdr, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.then
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %11
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_List(i8* %P) #1 {
entry:
  %P.addr = alloca i8*, align 8
  store i8* %P, i8** %P.addr, align 8
  %0 = load i8*, i8** %P.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  %call1 = call %struct.LIST_HELP* @list_Cons(i8* %0, %struct.LIST_HELP* %call)
  ret %struct.LIST_HELP* %call1
}

declare %struct.term* @term_Create(i32, %struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_NextIndexVariable(%struct.binding* %IndexContext) #1 {
entry:
  %IndexContext.addr = alloca %struct.binding*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  %0 = load i32, i32* @cont_INDEXVARSCANNER, align 4
  %call = call i32 @symbol_LastIndexVariable()
  %call1 = call i32 @symbol_Equal(i32 %0, i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32 @symbol_CreateIndexVariable()
  store i32 %call2, i32* @cont_INDEXVARSCANNER, align 4
  br label %if.end.14

if.else:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end.13, %if.else
  %1 = load i32, i32* @cont_INDEXVARSCANNER, align 4
  %call3 = call i32 @symbol_NextIndexVariable(i32 %1)
  store i32 %call3, i32* @cont_INDEXVARSCANNER, align 4
  %2 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %3 = load i32, i32* @cont_INDEXVARSCANNER, align 4
  %call4 = call i32 @cont_VarIsUsed(%struct.binding* %2, i32 %3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.else.7, label %if.then.6

if.then.6:                                        ; preds = %for.cond
  br label %for.end

if.else.7:                                        ; preds = %for.cond
  %4 = load i32, i32* @cont_INDEXVARSCANNER, align 4
  %call8 = call i32 @symbol_LastIndexVariable()
  %call9 = call i32 @symbol_Equal(i32 %4, i32 %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else.7
  %call12 = call i32 @symbol_CreateIndexVariable()
  store i32 %call12, i32* @cont_INDEXVARSCANNER, align 4
  br label %for.end

if.end:                                           ; preds = %if.else.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then.11, %if.then.6
  br label %if.end.14

if.end.14:                                        ; preds = %for.end, %if.then
  %5 = load i32, i32* @cont_INDEXVARSCANNER, align 4
  ret i32 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsVariable(i32 %S) #1 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_CreateBindingHelp(%struct.binding* %C, i32 %Var, %struct.binding* %CTerm, %struct.term* %Term) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  %CTerm.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  store %struct.binding* %CTerm, %struct.binding** %CTerm.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %1 = load i32, i32* %Var.addr, align 4
  %call = call %struct.binding* @cont_Binding(%struct.binding* %0, i32 %1)
  store %struct.binding* %call, %struct.binding** @cont_CURRENTBINDING, align 8
  %2 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @cont_SetBindingTerm(%struct.binding* %2, %struct.term* %3)
  %4 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  %5 = load %struct.binding*, %struct.binding** %CTerm.addr, align 8
  call void @cont_SetBindingContext(%struct.binding* %4, %struct.binding* %5)
  %6 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  %call1 = call %struct.binding* @cont_LastBinding()
  call void @cont_SetBindingLink(%struct.binding* %6, %struct.binding* %call1)
  %7 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetLastBinding(%struct.binding* %7)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_Binding(%struct.binding* %C, i32 %Var) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load i32, i32* %Var.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %arrayidx = getelementptr inbounds %struct.binding, %struct.binding* %1, i64 %idxprom
  ret %struct.binding* %arrayidx
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_SetBindingTerm(%struct.binding* %B, %struct.term* %T) #1 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  %T.addr = alloca %struct.term*, align 8
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %1 = load %struct.binding*, %struct.binding** %B.addr, align 8
  %term = getelementptr inbounds %struct.binding, %struct.binding* %1, i32 0, i32 2
  store %struct.term* %0, %struct.term** %term, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_SetBindingContext(%struct.binding* %B, %struct.binding* %C) #1 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  %C.addr = alloca %struct.binding*, align 8
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %1 = load %struct.binding*, %struct.binding** %B.addr, align 8
  %context = getelementptr inbounds %struct.binding, %struct.binding* %1, i32 0, i32 3
  store %struct.binding* %0, %struct.binding** %context, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_SetBindingLink(%struct.binding* %B, %struct.binding* %L) #1 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  %L.addr = alloca %struct.binding*, align 8
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  store %struct.binding* %L, %struct.binding** %L.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %L.addr, align 8
  %1 = load %struct.binding*, %struct.binding** %B.addr, align 8
  %link = getelementptr inbounds %struct.binding, %struct.binding* %1, i32 0, i32 4
  store %struct.binding* %0, %struct.binding** %link, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_LastBinding() #1 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_LASTBINDING, align 8
  ret %struct.binding* %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_SetLastBinding(%struct.binding* %B) #1 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %B.addr, align 8
  store %struct.binding* %0, %struct.binding** @cont_LASTBINDING, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.subst* @subst_Nil() #1 {
entry:
  ret %struct.subst* null
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Cons(i8* %Ptr, %struct.LIST_HELP* %List) #1 {
entry:
  %Ptr.addr = alloca i8*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Cell = alloca %struct.LIST_HELP*, align 8
  store i8* %Ptr, i8** %Ptr.addr, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %call = call i8* @memory_Malloc(i32 16)
  %0 = bitcast i8* %call to %struct.LIST_HELP*
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Cell, align 8
  %1 = load i8*, i8** %Ptr.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cell, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %2, i32 0, i32 1
  store i8* %1, i8** %car, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cell, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %4, i32 0, i32 0
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %cdr, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cell, align 8
  ret %struct.LIST_HELP* %5
}

declare i8* @memory_Malloc(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_LastIndexVariable() #1 {
entry:
  %0 = load i32, i32* @symbol_INDEXVARCOUNTER, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_CreateIndexVariable() #1 {
entry:
  %0 = load i32, i32* @symbol_INDEXVARCOUNTER, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @symbol_INDEXVARCOUNTER, align 4
  ret i32 %inc
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_NextIndexVariable(i32 %Variable) #1 {
entry:
  %Variable.addr = alloca i32, align 4
  store i32 %Variable, i32* %Variable.addr, align 4
  %0 = load i32, i32* %Variable.addr, align 4
  %add = add nsw i32 %0, 1
  ret i32 %add
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_VarIsUsed(%struct.binding* %C, i32 %Var) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %1 = load i32, i32* %Var.addr, align 4
  %call = call %struct.binding* @cont_ContextBindingContext(%struct.binding* %0, i32 %1)
  %cmp = icmp ne %struct.binding* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
