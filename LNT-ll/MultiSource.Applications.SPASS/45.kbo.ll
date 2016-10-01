; ModuleID = './MultiSource.Applications.SPASS/45.kbo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }

@kbo_MINWEIGHT = constant i32 1, align 4
@ord_VARCOUNT = external global [2000 x [2 x i32]], align 16
@stack_POINTER = external global i32, align 4
@symbol_SIGNATURE = external global %struct.signature**, align 8
@symbol_TYPESTATBITS = external constant i32, align 4
@stack_STACK = external global [10000 x i8*], align 16
@ord_PRECEDENCE = external global i32*, align 8
@cont_INSTANCECONTEXT = external global %struct.binding*, align 8

; Function Attrs: nounwind uwtable
define i32 @kbo_Compare(%struct.term* %Term1, %struct.term* %Term2) #0 {
entry:
  %retval = alloca i32, align 4
  %Term1.addr = alloca %struct.term*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %WeightDiff = alloca i32, align 4
  %T1VarCond = alloca i32, align 4
  %T2VarCond = alloca i32, align 4
  %Result = alloca i32, align 4
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call = call i32 @kbo_CompVarCondAndWeight(%struct.term* %0, i32* %T1VarCond, %struct.term* %1, i32* %T2VarCond)
  store i32 %call, i32* %WeightDiff, align 4
  %2 = load i32, i32* %T1VarCond, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %T2VarCond, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %5 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %6 = load i32, i32* %WeightDiff, align 4
  %call2 = call i32 @kbo_CompareStruc(%struct.term* %4, %struct.term* %5, i32 %6)
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load i32, i32* %T1VarCond, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.end.9, label %land.lhs.true.4

land.lhs.true.4:                                  ; preds = %if.end
  %8 = load i32, i32* %T2VarCond, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %land.lhs.true.4
  %9 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %10 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %11 = load i32, i32* %WeightDiff, align 4
  %sub = sub nsw i32 0, %11
  %call7 = call i32 @kbo_CompareStruc(%struct.term* %9, %struct.term* %10, i32 %sub)
  %call8 = call i32 @ord_Not(i32 %call7)
  store i32 %call8, i32* %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true.4, %if.end
  %12 = load i32, i32* %T1VarCond, align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.19

land.lhs.true.11:                                 ; preds = %if.end.9
  %13 = load i32, i32* %T2VarCond, align 4
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %land.lhs.true.11
  %14 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %15 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %16 = load i32, i32* %WeightDiff, align 4
  %call14 = call i32 @kbo_CompareStruc(%struct.term* %14, %struct.term* %15, i32 %16)
  store i32 %call14, i32* %Result, align 4
  %17 = load i32, i32* %Result, align 4
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.13
  %18 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %19 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %20 = load i32, i32* %WeightDiff, align 4
  %sub16 = sub nsw i32 0, %20
  %call17 = call i32 @kbo_CompareStruc(%struct.term* %18, %struct.term* %19, i32 %sub16)
  %call18 = call i32 @ord_Not(i32 %call17)
  store i32 %call18, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.13
  %21 = load i32, i32* %Result, align 4
  store i32 %21, i32* %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.11, %if.end.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.else, %if.then.15, %if.then.6, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @kbo_CompVarCondAndWeight(%struct.term* %Term1, i32* %VarCond1, %struct.term* %Term2, i32* %VarCond2) #0 {
entry:
  %retval = alloca i32, align 4
  %Term1.addr = alloca %struct.term*, align 8
  %VarCond1.addr = alloca i32*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %VarCond2.addr = alloca i32*, align 8
  %MaxVar1 = alloca i32, align 4
  %MaxVar2 = alloca i32, align 4
  %Term = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %Stack = alloca i32, align 4
  %Weight = alloca i32, align 4
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store i32* %VarCond1, i32** %VarCond1.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  store i32* %VarCond2, i32** %VarCond2.addr, align 8
  %0 = load i32*, i32** %VarCond2.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load i32*, i32** %VarCond1.addr, align 8
  store i32 1, i32* %1, align 4
  %2 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call = call i32 @term_MaxVar(%struct.term* %2)
  store i32 %call, i32* %MaxVar1, align 4
  %3 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call1 = call i32 @term_MaxVar(%struct.term* %3)
  store i32 %call1, i32* %MaxVar2, align 4
  %call2 = call i32 @stack_Bottom()
  store i32 %call2, i32* %Stack, align 4
  store i32 0, i32* %Weight, align 4
  %4 = load i32, i32* %MaxVar1, align 4
  %5 = load i32, i32* %MaxVar2, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %MaxVar2, align 4
  store i32 %6, i32* %MaxVar1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %MaxVar1, align 4
  %cmp3 = icmp sle i32 %7, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i32 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  store i32 0, i32* %arrayidx4, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx6, i32 0, i64 1
  store i32 0, i32* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.term*, %struct.term** %Term1.addr, align 8
  store %struct.term* %12, %struct.term** %Term, align 8
  %13 = load %struct.term*, %struct.term** %Term, align 8
  %call8 = call i32 @term_IsStandardVariable(%struct.term* %13)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %for.end
  %14 = load %struct.term*, %struct.term** %Term, align 8
  %call10 = call i32 @term_TopSymbol(%struct.term* %14)
  %idxprom11 = sext i32 %call10 to i64
  %arrayidx12 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx12, i32 0, i64 0
  %15 = load i32, i32* %arrayidx13, align 4
  %inc14 = add i32 %15, 1
  store i32 %inc14, i32* %arrayidx13, align 4
  %16 = load i32, i32* %Weight, align 4
  %add = add nsw i32 %16, 1
  store i32 %add, i32* %Weight, align 4
  br label %if.end.23

if.else:                                          ; preds = %for.end
  %17 = load %struct.term*, %struct.term** %Term, align 8
  %call15 = call i32 @term_TopSymbol(%struct.term* %17)
  %call16 = call i32 @symbol_Weight(i32 %call15)
  %18 = load i32, i32* %Weight, align 4
  %add17 = add nsw i32 %18, %call16
  store i32 %add17, i32* %Weight, align 4
  %19 = load %struct.term*, %struct.term** %Term, align 8
  %call18 = call i32 @term_IsComplex(%struct.term* %19)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.else
  %20 = load %struct.term*, %struct.term** %Term, align 8
  %call21 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %20)
  %21 = bitcast %struct.LIST_HELP* %call21 to i8*
  call void @stack_Push(i8* %21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.9
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end.23
  %22 = load i32, i32* %Stack, align 4
  %call24 = call i32 @stack_Empty(i32 %22)
  %tobool25 = icmp ne i32 %call24, 0
  %lnot = xor i1 %tobool25, true
  br i1 %lnot, label %while.body, label %while.end.56

while.body:                                       ; preds = %while.cond
  %call26 = call i8* @stack_Top()
  %23 = bitcast i8* %call26 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %23, %struct.LIST_HELP** %Scan, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call27 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call27 to %struct.term*
  store %struct.term* %25, %struct.term** %Term, align 8
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call28 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %26)
  %27 = bitcast %struct.LIST_HELP* %call28 to i8*
  call void @stack_RplacTop(i8* %27)
  %28 = load %struct.term*, %struct.term** %Term, align 8
  %call29 = call i32 @term_IsStandardVariable(%struct.term* %28)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.else.38

if.then.31:                                       ; preds = %while.body
  %29 = load i32, i32* %Weight, align 4
  %add32 = add nsw i32 %29, 1
  store i32 %add32, i32* %Weight, align 4
  %30 = load %struct.term*, %struct.term** %Term, align 8
  %call33 = call i32 @term_TopSymbol(%struct.term* %30)
  %idxprom34 = sext i32 %call33 to i64
  %arrayidx35 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i32 0, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx35, i32 0, i64 0
  %31 = load i32, i32* %arrayidx36, align 4
  %inc37 = add i32 %31, 1
  store i32 %inc37, i32* %arrayidx36, align 4
  br label %if.end.47

if.else.38:                                       ; preds = %while.body
  %32 = load %struct.term*, %struct.term** %Term, align 8
  %call39 = call i32 @term_TopSymbol(%struct.term* %32)
  %call40 = call i32 @symbol_Weight(i32 %call39)
  %33 = load i32, i32* %Weight, align 4
  %add41 = add nsw i32 %33, %call40
  store i32 %add41, i32* %Weight, align 4
  %34 = load %struct.term*, %struct.term** %Term, align 8
  %call42 = call i32 @term_IsComplex(%struct.term* %34)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.else.38
  %35 = load %struct.term*, %struct.term** %Term, align 8
  %call45 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %35)
  %36 = bitcast %struct.LIST_HELP* %call45 to i8*
  call void @stack_Push(i8* %36)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.else.38
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.31
  br label %while.cond.48

while.cond.48:                                    ; preds = %while.body.54, %if.end.47
  %37 = load i32, i32* %Stack, align 4
  %call49 = call i32 @stack_Empty(i32 %37)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond.48
  %call51 = call i8* @stack_Top()
  %38 = bitcast i8* %call51 to %struct.LIST_HELP*
  %call52 = call i32 @list_Empty(%struct.LIST_HELP* %38)
  %tobool53 = icmp ne i32 %call52, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.48
  %39 = phi i1 [ false, %while.cond.48 ], [ %tobool53, %land.rhs ]
  br i1 %39, label %while.body.54, label %while.end

while.body.54:                                    ; preds = %land.end
  %call55 = call i32 @stack_Pop()
  br label %while.cond.48

while.end:                                        ; preds = %land.end
  br label %while.cond

while.end.56:                                     ; preds = %while.cond
  %40 = load %struct.term*, %struct.term** %Term2.addr, align 8
  store %struct.term* %40, %struct.term** %Term, align 8
  %41 = load %struct.term*, %struct.term** %Term, align 8
  %call57 = call i32 @term_IsStandardVariable(%struct.term* %41)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.else.65

if.then.59:                                       ; preds = %while.end.56
  %42 = load i32, i32* %Weight, align 4
  %sub = sub nsw i32 %42, 1
  store i32 %sub, i32* %Weight, align 4
  %43 = load %struct.term*, %struct.term** %Term, align 8
  %call60 = call i32 @term_TopSymbol(%struct.term* %43)
  %idxprom61 = sext i32 %call60 to i64
  %arrayidx62 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i32 0, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx62, i32 0, i64 1
  %44 = load i32, i32* %arrayidx63, align 4
  %inc64 = add i32 %44, 1
  store i32 %inc64, i32* %arrayidx63, align 4
  br label %if.end.74

if.else.65:                                       ; preds = %while.end.56
  %45 = load %struct.term*, %struct.term** %Term, align 8
  %call66 = call i32 @term_TopSymbol(%struct.term* %45)
  %call67 = call i32 @symbol_Weight(i32 %call66)
  %46 = load i32, i32* %Weight, align 4
  %sub68 = sub nsw i32 %46, %call67
  store i32 %sub68, i32* %Weight, align 4
  %47 = load %struct.term*, %struct.term** %Term, align 8
  %call69 = call i32 @term_IsComplex(%struct.term* %47)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.else.65
  %48 = load %struct.term*, %struct.term** %Term, align 8
  %call72 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %48)
  %49 = bitcast %struct.LIST_HELP* %call72 to i8*
  call void @stack_Push(i8* %49)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.else.65
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.59
  br label %while.cond.75

while.cond.75:                                    ; preds = %while.end.112, %if.end.74
  %50 = load i32, i32* %Stack, align 4
  %call76 = call i32 @stack_Empty(i32 %50)
  %tobool77 = icmp ne i32 %call76, 0
  %lnot78 = xor i1 %tobool77, true
  br i1 %lnot78, label %while.body.79, label %while.end.113

while.body.79:                                    ; preds = %while.cond.75
  %call80 = call i8* @stack_Top()
  %51 = bitcast i8* %call80 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %51, %struct.LIST_HELP** %Scan, align 8
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call81 = call i8* @list_Car(%struct.LIST_HELP* %52)
  %53 = bitcast i8* %call81 to %struct.term*
  store %struct.term* %53, %struct.term** %Term, align 8
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call82 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %54)
  %55 = bitcast %struct.LIST_HELP* %call82 to i8*
  call void @stack_RplacTop(i8* %55)
  %56 = load %struct.term*, %struct.term** %Term, align 8
  %call83 = call i32 @term_IsStandardVariable(%struct.term* %56)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then.85, label %if.else.92

if.then.85:                                       ; preds = %while.body.79
  %57 = load i32, i32* %Weight, align 4
  %sub86 = sub nsw i32 %57, 1
  store i32 %sub86, i32* %Weight, align 4
  %58 = load %struct.term*, %struct.term** %Term, align 8
  %call87 = call i32 @term_TopSymbol(%struct.term* %58)
  %idxprom88 = sext i32 %call87 to i64
  %arrayidx89 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i32 0, i64 %idxprom88
  %arrayidx90 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx89, i32 0, i64 1
  %59 = load i32, i32* %arrayidx90, align 4
  %inc91 = add i32 %59, 1
  store i32 %inc91, i32* %arrayidx90, align 4
  br label %if.end.101

if.else.92:                                       ; preds = %while.body.79
  %60 = load %struct.term*, %struct.term** %Term, align 8
  %call93 = call i32 @term_TopSymbol(%struct.term* %60)
  %call94 = call i32 @symbol_Weight(i32 %call93)
  %61 = load i32, i32* %Weight, align 4
  %sub95 = sub nsw i32 %61, %call94
  store i32 %sub95, i32* %Weight, align 4
  %62 = load %struct.term*, %struct.term** %Term, align 8
  %call96 = call i32 @term_IsComplex(%struct.term* %62)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %if.else.92
  %63 = load %struct.term*, %struct.term** %Term, align 8
  %call99 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %63)
  %64 = bitcast %struct.LIST_HELP* %call99 to i8*
  call void @stack_Push(i8* %64)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %if.else.92
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.85
  br label %while.cond.102

while.cond.102:                                   ; preds = %while.body.110, %if.end.101
  %65 = load i32, i32* %Stack, align 4
  %call103 = call i32 @stack_Empty(i32 %65)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %land.end.109, label %land.rhs.105

land.rhs.105:                                     ; preds = %while.cond.102
  %call106 = call i8* @stack_Top()
  %66 = bitcast i8* %call106 to %struct.LIST_HELP*
  %call107 = call i32 @list_Empty(%struct.LIST_HELP* %66)
  %tobool108 = icmp ne i32 %call107, 0
  br label %land.end.109

land.end.109:                                     ; preds = %land.rhs.105, %while.cond.102
  %67 = phi i1 [ false, %while.cond.102 ], [ %tobool108, %land.rhs.105 ]
  br i1 %67, label %while.body.110, label %while.end.112

while.body.110:                                   ; preds = %land.end.109
  %call111 = call i32 @stack_Pop()
  br label %while.cond.102

while.end.112:                                    ; preds = %land.end.109
  br label %while.cond.75

while.end.113:                                    ; preds = %while.cond.75
  store i32 0, i32* %i, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.141, %while.end.113
  %68 = load i32, i32* %i, align 4
  %69 = load i32, i32* %MaxVar1, align 4
  %cmp115 = icmp sle i32 %68, %69
  br i1 %cmp115, label %for.body.116, label %for.end.143

for.body.116:                                     ; preds = %for.cond.114
  %70 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %70 to i64
  %arrayidx118 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i32 0, i64 %idxprom117
  %arrayidx119 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx118, i32 0, i64 0
  %71 = load i32, i32* %arrayidx119, align 4
  %72 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %72 to i64
  %arrayidx121 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i32 0, i64 %idxprom120
  %arrayidx122 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx121, i32 0, i64 1
  %73 = load i32, i32* %arrayidx122, align 4
  %cmp123 = icmp ult i32 %71, %73
  br i1 %cmp123, label %if.then.124, label %if.end.128

if.then.124:                                      ; preds = %for.body.116
  %74 = load i32*, i32** %VarCond1.addr, align 8
  store i32 0, i32* %74, align 4
  %75 = load i32*, i32** %VarCond2.addr, align 8
  %76 = load i32, i32* %75, align 4
  %tobool125 = icmp ne i32 %76, 0
  br i1 %tobool125, label %if.end.127, label %if.then.126

if.then.126:                                      ; preds = %if.then.124
  %77 = load i32, i32* %Weight, align 4
  store i32 %77, i32* %retval
  br label %return

if.end.127:                                       ; preds = %if.then.124
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %for.body.116
  %78 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %78 to i64
  %arrayidx130 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i32 0, i64 %idxprom129
  %arrayidx131 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx130, i32 0, i64 0
  %79 = load i32, i32* %arrayidx131, align 4
  %80 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %80 to i64
  %arrayidx133 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i32 0, i64 %idxprom132
  %arrayidx134 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx133, i32 0, i64 1
  %81 = load i32, i32* %arrayidx134, align 4
  %cmp135 = icmp ugt i32 %79, %81
  br i1 %cmp135, label %if.then.136, label %if.end.140

if.then.136:                                      ; preds = %if.end.128
  %82 = load i32*, i32** %VarCond2.addr, align 8
  store i32 0, i32* %82, align 4
  %83 = load i32*, i32** %VarCond1.addr, align 8
  %84 = load i32, i32* %83, align 4
  %tobool137 = icmp ne i32 %84, 0
  br i1 %tobool137, label %if.end.139, label %if.then.138

if.then.138:                                      ; preds = %if.then.136
  %85 = load i32, i32* %Weight, align 4
  store i32 %85, i32* %retval
  br label %return

if.end.139:                                       ; preds = %if.then.136
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.end.128
  br label %for.inc.141

for.inc.141:                                      ; preds = %if.end.140
  %86 = load i32, i32* %i, align 4
  %inc142 = add nsw i32 %86, 1
  store i32 %inc142, i32* %i, align 4
  br label %for.cond.114

for.end.143:                                      ; preds = %for.cond.114
  %87 = load i32, i32* %Weight, align 4
  store i32 %87, i32* %retval
  br label %return

return:                                           ; preds = %for.end.143, %if.then.138, %if.then.126
  %88 = load i32, i32* %retval
  ret i32 %88
}

; Function Attrs: nounwind uwtable
define internal i32 @kbo_CompareStruc(%struct.term* %Term1, %struct.term* %Term2, i32 %WeightDiff) #0 {
entry:
  %retval = alloca i32, align 4
  %Term1.addr = alloca %struct.term*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %WeightDiff.addr = alloca i32, align 4
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %Top1 = alloca i32, align 4
  %Top2 = alloca i32, align 4
  %RecWeightDiff = alloca i32, align 4
  %T1VarCond = alloca i32, align 4
  %T2VarCond = alloca i32, align 4
  %RecTerm1 = alloca %struct.term*, align 8
  %RecTerm2 = alloca %struct.term*, align 8
  %i = alloca i32, align 4
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  store i32 %WeightDiff, i32* %WeightDiff.addr, align 4
  %0 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %Top1, align 4
  %1 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  store i32 %call1, i32* %Top2, align 4
  %2 = load i32, i32* %WeightDiff.addr, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 3, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %WeightDiff.addr, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then.3, label %if.else.61

if.then.3:                                        ; preds = %if.else
  %4 = load i32, i32* %Top1, align 4
  %call4 = call i32 @symbol_IsStandardVariable(i32 %4)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.else.10

if.then.5:                                        ; preds = %if.then.3
  %5 = load i32, i32* %Top2, align 4
  %call6 = call i32 @symbol_IsStandardVariable(i32 %5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.then.5
  store i32 2, i32* %retval
  br label %return

if.else.9:                                        ; preds = %if.then.5
  store i32 0, i32* %retval
  br label %return

if.else.10:                                       ; preds = %if.then.3
  %6 = load i32, i32* %Top2, align 4
  %call11 = call i32 @symbol_IsStandardVariable(i32 %6)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.10
  %7 = load i32*, i32** @ord_PRECEDENCE, align 8
  %8 = load i32, i32* %Top1, align 4
  %9 = load i32, i32* %Top2, align 4
  %call13 = call i32 @symbol_PrecedenceGreater(i32* %7, i32 %8, i32 %9)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %lor.lhs.false, %if.else.10
  store i32 3, i32* %retval
  br label %return

if.else.16:                                       ; preds = %lor.lhs.false
  %10 = load i32, i32* %Top1, align 4
  %11 = load i32, i32* %Top2, align 4
  %cmp17 = icmp eq i32 %10, %11
  br i1 %cmp17, label %if.then.18, label %if.else.60

if.then.18:                                       ; preds = %if.else.16
  %12 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Scan1, align 8
  %13 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call20 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %13)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %Scan2, align 8
  %14 = load i32, i32* %Top1, align 4
  %call21 = call i32 @symbol_HasProperty(i32 %14, i32 8)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.35

if.then.23:                                       ; preds = %if.then.18
  %15 = load i32, i32* %Top1, align 4
  %call24 = call i32 @symbol_Arity(i32 %15)
  store i32 %call24, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.23
  %16 = load i32, i32* %i, align 4
  %cmp25 = icmp sgt i32 %16, 0
  br i1 %cmp25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %18 = load i32, i32* %i, align 4
  %call26 = call i8* @list_NthElement(%struct.LIST_HELP* %17, i32 %18)
  %19 = bitcast i8* %call26 to %struct.term*
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %21 = load i32, i32* %i, align 4
  %call27 = call i8* @list_NthElement(%struct.LIST_HELP* %20, i32 %21)
  %22 = bitcast i8* %call27 to %struct.term*
  %call28 = call i32 @term_Equal(%struct.term* %19, %struct.term* %22)
  %tobool29 = icmp ne i32 %call28, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %23 = phi i1 [ false, %for.cond ], [ %tobool29, %land.rhs ]
  br i1 %23, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %25 = load i32, i32* %i, align 4
  %cmp30 = icmp sgt i32 %25, 0
  br i1 %cmp30, label %if.then.31, label %if.else.34

if.then.31:                                       ; preds = %for.end
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %27 = load i32, i32* %i, align 4
  %call32 = call i8* @list_NthElement(%struct.LIST_HELP* %26, i32 %27)
  %28 = bitcast i8* %call32 to %struct.term*
  store %struct.term* %28, %struct.term** %RecTerm1, align 8
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %30 = load i32, i32* %i, align 4
  %call33 = call i8* @list_NthElement(%struct.LIST_HELP* %29, i32 %30)
  %31 = bitcast i8* %call33 to %struct.term*
  store %struct.term* %31, %struct.term** %RecTerm2, align 8
  br label %if.end

if.else.34:                                       ; preds = %for.end
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.31
  br label %if.end.53

if.else.35:                                       ; preds = %if.then.18
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.35
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call36 = call i32 @list_Empty(%struct.LIST_HELP* %32)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %land.end.43, label %land.rhs.38

land.rhs.38:                                      ; preds = %while.cond
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call39 = call i8* @list_Car(%struct.LIST_HELP* %33)
  %34 = bitcast i8* %call39 to %struct.term*
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call40 = call i8* @list_Car(%struct.LIST_HELP* %35)
  %36 = bitcast i8* %call40 to %struct.term*
  %call41 = call i32 @term_Equal(%struct.term* %34, %struct.term* %36)
  %tobool42 = icmp ne i32 %call41, 0
  br label %land.end.43

land.end.43:                                      ; preds = %land.rhs.38, %while.cond
  %37 = phi i1 [ false, %while.cond ], [ %tobool42, %land.rhs.38 ]
  br i1 %37, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.43
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call44 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %38)
  store %struct.LIST_HELP* %call44, %struct.LIST_HELP** %Scan1, align 8
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call45 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %39)
  store %struct.LIST_HELP* %call45, %struct.LIST_HELP** %Scan2, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end.43
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call46 = call i32 @list_Empty(%struct.LIST_HELP* %40)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %while.end
  store i32 2, i32* %retval
  br label %return

if.else.49:                                       ; preds = %while.end
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call50 = call i8* @list_Car(%struct.LIST_HELP* %41)
  %42 = bitcast i8* %call50 to %struct.term*
  store %struct.term* %42, %struct.term** %RecTerm1, align 8
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call51 = call i8* @list_Car(%struct.LIST_HELP* %43)
  %44 = bitcast i8* %call51 to %struct.term*
  store %struct.term* %44, %struct.term** %RecTerm2, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end
  %45 = load %struct.term*, %struct.term** %RecTerm1, align 8
  %46 = load %struct.term*, %struct.term** %RecTerm2, align 8
  %call54 = call i32 @kbo_CompVarCondAndWeight(%struct.term* %45, i32* %T1VarCond, %struct.term* %46, i32* %T2VarCond)
  store i32 %call54, i32* %RecWeightDiff, align 4
  %47 = load i32, i32* %RecWeightDiff, align 4
  %cmp55 = icmp sge i32 %47, 0
  br i1 %cmp55, label %land.lhs.true, label %if.else.59

land.lhs.true:                                    ; preds = %if.end.53
  %48 = load i32, i32* %T1VarCond, align 4
  %tobool56 = icmp ne i32 %48, 0
  br i1 %tobool56, label %if.then.57, label %if.else.59

if.then.57:                                       ; preds = %land.lhs.true
  %49 = load %struct.term*, %struct.term** %RecTerm1, align 8
  %50 = load %struct.term*, %struct.term** %RecTerm2, align 8
  %51 = load i32, i32* %RecWeightDiff, align 4
  %call58 = call i32 @kbo_CompareStruc(%struct.term* %49, %struct.term* %50, i32 %51)
  store i32 %call58, i32* %retval
  br label %return

if.else.59:                                       ; preds = %land.lhs.true, %if.end.53
  store i32 0, i32* %retval
  br label %return

if.else.60:                                       ; preds = %if.else.16
  store i32 0, i32* %retval
  br label %return

if.else.61:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.61, %if.else.60, %if.else.59, %if.then.57, %if.then.48, %if.else.34, %if.then.15, %if.else.9, %if.then.8, %if.then
  %52 = load i32, i32* %retval
  ret i32 %52
}

declare i32 @ord_Not(i32) #1

; Function Attrs: nounwind uwtable
define i32 @kbo_ContCompare(%struct.binding* %Context1, %struct.term* %Term1, %struct.binding* %Context2, %struct.term* %Term2) #0 {
entry:
  %retval = alloca i32, align 4
  %Context1.addr = alloca %struct.binding*, align 8
  %Term1.addr = alloca %struct.term*, align 8
  %Context2.addr = alloca %struct.binding*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %WeightDiff = alloca i32, align 4
  %T1VarCond = alloca i32, align 4
  %T2VarCond = alloca i32, align 4
  %Result = alloca i32, align 4
  store %struct.binding* %Context1, %struct.binding** %Context1.addr, align 8
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.binding* %Context2, %struct.binding** %Context2.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %Context1.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %2 = load %struct.binding*, %struct.binding** %Context2.addr, align 8
  %3 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call = call i32 @kbo_ContCompVarCondAndWeight(%struct.binding* %0, %struct.term* %1, i32* %T1VarCond, %struct.binding* %2, %struct.term* %3, i32* %T2VarCond)
  store i32 %call, i32* %WeightDiff, align 4
  %4 = load i32, i32* %T1VarCond, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %T2VarCond, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.binding*, %struct.binding** %Context1.addr, align 8
  %7 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %8 = load %struct.binding*, %struct.binding** %Context2.addr, align 8
  %9 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %10 = load i32, i32* %WeightDiff, align 4
  %call2 = call i32 @kbo_ContCompareStruc(%struct.binding* %6, %struct.term* %7, %struct.binding* %8, %struct.term* %9, i32 %10)
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load i32, i32* %T1VarCond, align 4
  %tobool3 = icmp ne i32 %11, 0
  br i1 %tobool3, label %if.end.9, label %land.lhs.true.4

land.lhs.true.4:                                  ; preds = %if.end
  %12 = load i32, i32* %T2VarCond, align 4
  %tobool5 = icmp ne i32 %12, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %land.lhs.true.4
  %13 = load %struct.binding*, %struct.binding** %Context2.addr, align 8
  %14 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %15 = load %struct.binding*, %struct.binding** %Context1.addr, align 8
  %16 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %17 = load i32, i32* %WeightDiff, align 4
  %sub = sub nsw i32 0, %17
  %call7 = call i32 @kbo_ContCompareStruc(%struct.binding* %13, %struct.term* %14, %struct.binding* %15, %struct.term* %16, i32 %sub)
  %call8 = call i32 @ord_Not(i32 %call7)
  store i32 %call8, i32* %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true.4, %if.end
  %18 = load i32, i32* %T1VarCond, align 4
  %tobool10 = icmp ne i32 %18, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.19

land.lhs.true.11:                                 ; preds = %if.end.9
  %19 = load i32, i32* %T2VarCond, align 4
  %tobool12 = icmp ne i32 %19, 0
  br i1 %tobool12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %land.lhs.true.11
  %20 = load %struct.binding*, %struct.binding** %Context1.addr, align 8
  %21 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %22 = load %struct.binding*, %struct.binding** %Context2.addr, align 8
  %23 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %24 = load i32, i32* %WeightDiff, align 4
  %call14 = call i32 @kbo_ContCompareStruc(%struct.binding* %20, %struct.term* %21, %struct.binding* %22, %struct.term* %23, i32 %24)
  store i32 %call14, i32* %Result, align 4
  %25 = load i32, i32* %Result, align 4
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.13
  %26 = load %struct.binding*, %struct.binding** %Context2.addr, align 8
  %27 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %28 = load %struct.binding*, %struct.binding** %Context1.addr, align 8
  %29 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %30 = load i32, i32* %WeightDiff, align 4
  %sub16 = sub nsw i32 0, %30
  %call17 = call i32 @kbo_ContCompareStruc(%struct.binding* %26, %struct.term* %27, %struct.binding* %28, %struct.term* %29, i32 %sub16)
  %call18 = call i32 @ord_Not(i32 %call17)
  store i32 %call18, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.13
  %31 = load i32, i32* %Result, align 4
  store i32 %31, i32* %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.11, %if.end.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.else, %if.then.15, %if.then.6, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @kbo_ContCompVarCondAndWeight(%struct.binding* %Context1, %struct.term* %Term1, i32* %VarCond1, %struct.binding* %Context2, %struct.term* %Term2, i32* %VarCond2) #0 {
entry:
  %retval = alloca i32, align 4
  %Context1.addr = alloca %struct.binding*, align 8
  %Term1.addr = alloca %struct.term*, align 8
  %VarCond1.addr = alloca i32*, align 8
  %Context2.addr = alloca %struct.binding*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %VarCond2.addr = alloca i32*, align 8
  %MaxVar1 = alloca i32, align 4
  %MaxVar2 = alloca i32, align 4
  %i = alloca i32, align 4
  %Weight = alloca i32, align 4
  store %struct.binding* %Context1, %struct.binding** %Context1.addr, align 8
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store i32* %VarCond1, i32** %VarCond1.addr, align 8
  store %struct.binding* %Context2, %struct.binding** %Context2.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  store i32* %VarCond2, i32** %VarCond2.addr, align 8
  %0 = load i32*, i32** %VarCond2.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load i32*, i32** %VarCond1.addr, align 8
  store i32 1, i32* %1, align 4
  %2 = load %struct.binding*, %struct.binding** %Context1.addr, align 8
  %3 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call = call i32 @cont_TermMaxVar(%struct.binding* %2, %struct.term* %3)
  store i32 %call, i32* %MaxVar1, align 4
  %4 = load %struct.binding*, %struct.binding** %Context2.addr, align 8
  %5 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call1 = call i32 @cont_TermMaxVar(%struct.binding* %4, %struct.term* %5)
  store i32 %call1, i32* %MaxVar2, align 4
  %6 = load i32, i32* %MaxVar1, align 4
  %7 = load i32, i32* %MaxVar2, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %MaxVar2, align 4
  store i32 %8, i32* %MaxVar1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %MaxVar1, align 4
  %cmp2 = icmp sle i32 %9, %10
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i32 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  store i32 0, i32* %arrayidx3, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx5, i32 0, i64 1
  store i32 0, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.binding*, %struct.binding** %Context1.addr, align 8
  %15 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call7 = call i32 @kbo_ContCompVarCondAndWeightIntern(%struct.binding* %14, %struct.term* %15, i32 0)
  store i32 %call7, i32* %Weight, align 4
  %16 = load i32, i32* %Weight, align 4
  %17 = load %struct.binding*, %struct.binding** %Context2.addr, align 8
  %18 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call8 = call i32 @kbo_ContCompVarCondAndWeightIntern(%struct.binding* %17, %struct.term* %18, i32 1)
  %sub = sub nsw i32 %16, %call8
  store i32 %sub, i32* %Weight, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.35, %for.end
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %MaxVar1, align 4
  %cmp10 = icmp sle i32 %19, %20
  br i1 %cmp10, label %for.body.11, label %for.end.37

for.body.11:                                      ; preds = %for.cond.9
  %21 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx13, i32 0, i64 0
  %22 = load i32, i32* %arrayidx14, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %23 to i64
  %arrayidx16 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i32 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx16, i32 0, i64 1
  %24 = load i32, i32* %arrayidx17, align 4
  %cmp18 = icmp ult i32 %22, %24
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %for.body.11
  %25 = load i32*, i32** %VarCond1.addr, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %VarCond2.addr, align 8
  %27 = load i32, i32* %26, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.then.19
  %28 = load i32, i32* %Weight, align 4
  store i32 %28, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %if.end.34

if.else:                                          ; preds = %for.body.11
  %29 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %29 to i64
  %arrayidx23 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i32 0, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx23, i32 0, i64 0
  %30 = load i32, i32* %arrayidx24, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %31 to i64
  %arrayidx26 = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i32 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx26, i32 0, i64 1
  %32 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp ugt i32 %30, %32
  br i1 %cmp28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %if.else
  %33 = load i32*, i32** %VarCond2.addr, align 8
  store i32 0, i32* %33, align 4
  %34 = load i32*, i32** %VarCond1.addr, align 8
  %35 = load i32, i32* %34, align 4
  %tobool30 = icmp ne i32 %35, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.then.29
  %36 = load i32, i32* %Weight, align 4
  store i32 %36, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.else
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.21
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %37 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %37, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.9

for.end.37:                                       ; preds = %for.cond.9
  %38 = load i32, i32* %Weight, align 4
  store i32 %38, i32* %retval
  br label %return

return:                                           ; preds = %for.end.37, %if.then.31, %if.then.20
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @kbo_ContCompareStruc(%struct.binding* %Context1, %struct.term* %Term1, %struct.binding* %Context2, %struct.term* %Term2, i32 %WeightDiff) #0 {
entry:
  %retval = alloca i32, align 4
  %Context1.addr = alloca %struct.binding*, align 8
  %Term1.addr = alloca %struct.term*, align 8
  %Context2.addr = alloca %struct.binding*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %WeightDiff.addr = alloca i32, align 4
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %Top1 = alloca i32, align 4
  %Top2 = alloca i32, align 4
  %RecWeightDiff = alloca i32, align 4
  %T1VarCond = alloca i32, align 4
  %T2VarCond = alloca i32, align 4
  %RecTerm1 = alloca %struct.term*, align 8
  %RecTerm2 = alloca %struct.term*, align 8
  %i = alloca i32, align 4
  store %struct.binding* %Context1, %struct.binding** %Context1.addr, align 8
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.binding* %Context2, %struct.binding** %Context2.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  store i32 %WeightDiff, i32* %WeightDiff.addr, align 4
  %0 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call = call %struct.term* @cont_Deref(%struct.binding** %Context1.addr, %struct.term* %0)
  store %struct.term* %call, %struct.term** %Term1.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call1 = call %struct.term* @cont_Deref(%struct.binding** %Context2.addr, %struct.term* %1)
  store %struct.term* %call1, %struct.term** %Term2.addr, align 8
  %2 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %2)
  store i32 %call2, i32* %Top1, align 4
  %3 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %3)
  store i32 %call3, i32* %Top2, align 4
  %4 = load i32, i32* %WeightDiff.addr, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 3, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %WeightDiff.addr, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then.5, label %if.else.67

if.then.5:                                        ; preds = %if.else
  %6 = load i32, i32* %Top1, align 4
  %call6 = call i32 @symbol_IsStandardVariable(i32 %6)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.else.12

if.then.7:                                        ; preds = %if.then.5
  %7 = load i32, i32* %Top2, align 4
  %call8 = call i32 @symbol_IsStandardVariable(i32 %7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.then.7
  store i32 2, i32* %retval
  br label %return

if.else.11:                                       ; preds = %if.then.7
  store i32 0, i32* %retval
  br label %return

if.else.12:                                       ; preds = %if.then.5
  %8 = load i32, i32* %Top2, align 4
  %call13 = call i32 @symbol_IsStandardVariable(i32 %8)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.12
  %9 = load i32*, i32** @ord_PRECEDENCE, align 8
  %10 = load i32, i32* %Top1, align 4
  %11 = load i32, i32* %Top2, align 4
  %call15 = call i32 @symbol_PrecedenceGreater(i32* %9, i32 %10, i32 %11)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %lor.lhs.false, %if.else.12
  store i32 3, i32* %retval
  br label %return

if.else.18:                                       ; preds = %lor.lhs.false
  %12 = load i32, i32* %Top1, align 4
  %13 = load i32, i32* %Top2, align 4
  %cmp19 = icmp eq i32 %12, %13
  br i1 %cmp19, label %if.then.20, label %if.else.66

if.then.20:                                       ; preds = %if.else.18
  %14 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call21 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %14)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Scan1, align 8
  %15 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call22 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %15)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %Scan2, align 8
  %16 = load i32, i32* %Top1, align 4
  %call23 = call i32 @symbol_HasProperty(i32 %16, i32 8)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.39

if.then.25:                                       ; preds = %if.then.20
  %17 = load i32, i32* %Top1, align 4
  %call26 = call i32 @symbol_Arity(i32 %17)
  store i32 %call26, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.25
  %18 = load i32, i32* %i, align 4
  %cmp27 = icmp sgt i32 %18, 0
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %19 = load %struct.binding*, %struct.binding** %Context1.addr, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %21 = load i32, i32* %i, align 4
  %call28 = call i8* @list_NthElement(%struct.LIST_HELP* %20, i32 %21)
  %22 = bitcast i8* %call28 to %struct.term*
  %23 = load %struct.binding*, %struct.binding** %Context2.addr, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %25 = load i32, i32* %i, align 4
  %call29 = call i8* @list_NthElement(%struct.LIST_HELP* %24, i32 %25)
  %26 = bitcast i8* %call29 to %struct.term*
  %call30 = call i32 @cont_TermEqual(%struct.binding* %19, %struct.term* %22, %struct.binding* %23, %struct.term* %26)
  %tobool31 = icmp ne i32 %call30, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %27 = phi i1 [ false, %for.cond ], [ %tobool31, %land.rhs ]
  br i1 %27, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %29 = load i32, i32* %i, align 4
  %cmp32 = icmp sgt i32 %29, 0
  br i1 %cmp32, label %if.then.33, label %if.else.38

if.then.33:                                       ; preds = %for.end
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %31 = load i32, i32* %i, align 4
  %call34 = call i8* @list_NthElement(%struct.LIST_HELP* %30, i32 %31)
  %32 = bitcast i8* %call34 to %struct.term*
  %call35 = call %struct.term* @cont_Deref(%struct.binding** %Context1.addr, %struct.term* %32)
  store %struct.term* %call35, %struct.term** %RecTerm1, align 8
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %34 = load i32, i32* %i, align 4
  %call36 = call i8* @list_NthElement(%struct.LIST_HELP* %33, i32 %34)
  %35 = bitcast i8* %call36 to %struct.term*
  %call37 = call %struct.term* @cont_Deref(%struct.binding** %Context2.addr, %struct.term* %35)
  store %struct.term* %call37, %struct.term** %RecTerm2, align 8
  br label %if.end

if.else.38:                                       ; preds = %for.end
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.33
  br label %if.end.59

if.else.39:                                       ; preds = %if.then.20
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.39
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call40 = call i32 @list_Empty(%struct.LIST_HELP* %36)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %land.end.47, label %land.rhs.42

land.rhs.42:                                      ; preds = %while.cond
  %37 = load %struct.binding*, %struct.binding** %Context1.addr, align 8
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call43 = call i8* @list_Car(%struct.LIST_HELP* %38)
  %39 = bitcast i8* %call43 to %struct.term*
  %40 = load %struct.binding*, %struct.binding** %Context2.addr, align 8
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call44 = call i8* @list_Car(%struct.LIST_HELP* %41)
  %42 = bitcast i8* %call44 to %struct.term*
  %call45 = call i32 @cont_TermEqual(%struct.binding* %37, %struct.term* %39, %struct.binding* %40, %struct.term* %42)
  %tobool46 = icmp ne i32 %call45, 0
  br label %land.end.47

land.end.47:                                      ; preds = %land.rhs.42, %while.cond
  %43 = phi i1 [ false, %while.cond ], [ %tobool46, %land.rhs.42 ]
  br i1 %43, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.47
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call48 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %44)
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %Scan1, align 8
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call49 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %45)
  store %struct.LIST_HELP* %call49, %struct.LIST_HELP** %Scan2, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end.47
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call50 = call i32 @list_Empty(%struct.LIST_HELP* %46)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %while.end
  store i32 2, i32* %retval
  br label %return

if.else.53:                                       ; preds = %while.end
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call54 = call i8* @list_Car(%struct.LIST_HELP* %47)
  %48 = bitcast i8* %call54 to %struct.term*
  %call55 = call %struct.term* @cont_Deref(%struct.binding** %Context1.addr, %struct.term* %48)
  store %struct.term* %call55, %struct.term** %RecTerm1, align 8
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call56 = call i8* @list_Car(%struct.LIST_HELP* %49)
  %50 = bitcast i8* %call56 to %struct.term*
  %call57 = call %struct.term* @cont_Deref(%struct.binding** %Context2.addr, %struct.term* %50)
  store %struct.term* %call57, %struct.term** %RecTerm2, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.53
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end
  %51 = load %struct.binding*, %struct.binding** %Context1.addr, align 8
  %52 = load %struct.term*, %struct.term** %RecTerm1, align 8
  %53 = load %struct.binding*, %struct.binding** %Context2.addr, align 8
  %54 = load %struct.term*, %struct.term** %RecTerm2, align 8
  %call60 = call i32 @kbo_ContCompVarCondAndWeight(%struct.binding* %51, %struct.term* %52, i32* %T1VarCond, %struct.binding* %53, %struct.term* %54, i32* %T2VarCond)
  store i32 %call60, i32* %RecWeightDiff, align 4
  %55 = load i32, i32* %RecWeightDiff, align 4
  %cmp61 = icmp sge i32 %55, 0
  br i1 %cmp61, label %land.lhs.true, label %if.else.65

land.lhs.true:                                    ; preds = %if.end.59
  %56 = load i32, i32* %T1VarCond, align 4
  %tobool62 = icmp ne i32 %56, 0
  br i1 %tobool62, label %if.then.63, label %if.else.65

if.then.63:                                       ; preds = %land.lhs.true
  %57 = load %struct.binding*, %struct.binding** %Context1.addr, align 8
  %58 = load %struct.term*, %struct.term** %RecTerm1, align 8
  %59 = load %struct.binding*, %struct.binding** %Context2.addr, align 8
  %60 = load %struct.term*, %struct.term** %RecTerm2, align 8
  %61 = load i32, i32* %RecWeightDiff, align 4
  %call64 = call i32 @kbo_ContCompareStruc(%struct.binding* %57, %struct.term* %58, %struct.binding* %59, %struct.term* %60, i32 %61)
  store i32 %call64, i32* %retval
  br label %return

if.else.65:                                       ; preds = %land.lhs.true, %if.end.59
  store i32 0, i32* %retval
  br label %return

if.else.66:                                       ; preds = %if.else.18
  store i32 0, i32* %retval
  br label %return

if.else.67:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.67, %if.else.66, %if.else.65, %if.then.63, %if.then.52, %if.else.38, %if.then.17, %if.else.11, %if.then.10, %if.then
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define i32 @kbo_ContGreater(%struct.binding* %Context1, %struct.term* %Term1, %struct.binding* %Context2, %struct.term* %Term2) #0 {
entry:
  %retval = alloca i32, align 4
  %Context1.addr = alloca %struct.binding*, align 8
  %Term1.addr = alloca %struct.term*, align 8
  %Context2.addr = alloca %struct.binding*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %WeightDiff = alloca i32, align 4
  %T1VarCond = alloca i32, align 4
  %T2VarCond = alloca i32, align 4
  store %struct.binding* %Context1, %struct.binding** %Context1.addr, align 8
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.binding* %Context2, %struct.binding** %Context2.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %Context1.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %2 = load %struct.binding*, %struct.binding** %Context2.addr, align 8
  %3 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call = call i32 @kbo_ContCompVarCondAndWeight(%struct.binding* %0, %struct.term* %1, i32* %T1VarCond, %struct.binding* %2, %struct.term* %3, i32* %T2VarCond)
  store i32 %call, i32* %WeightDiff, align 4
  %4 = load i32, i32* %T1VarCond, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %WeightDiff, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %6 = load i32, i32* %WeightDiff, align 4
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %7 = load %struct.binding*, %struct.binding** %Context1.addr, align 8
  %8 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %9 = load %struct.binding*, %struct.binding** %Context2.addr, align 8
  %10 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call4 = call i32 @kbo_ContGreaterCompareStruc(%struct.binding* %7, %struct.term* %8, %struct.binding* %9, %struct.term* %10)
  store i32 %call4, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.3, %if.then.1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @kbo_ContGreaterCompareStruc(%struct.binding* %Context1, %struct.term* %Term1, %struct.binding* %Context2, %struct.term* %Term2) #0 {
entry:
  %retval = alloca i32, align 4
  %Context1.addr = alloca %struct.binding*, align 8
  %Term1.addr = alloca %struct.term*, align 8
  %Context2.addr = alloca %struct.binding*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %Top1 = alloca i32, align 4
  %Top2 = alloca i32, align 4
  %RecWeightDiff = alloca i32, align 4
  %T1VarCond = alloca i32, align 4
  %T2VarCond = alloca i32, align 4
  %RecTerm1 = alloca %struct.term*, align 8
  %RecTerm2 = alloca %struct.term*, align 8
  %i = alloca i32, align 4
  store %struct.binding* %Context1, %struct.binding** %Context1.addr, align 8
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.binding* %Context2, %struct.binding** %Context2.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call = call %struct.term* @cont_Deref(%struct.binding** %Context1.addr, %struct.term* %0)
  store %struct.term* %call, %struct.term** %Term1.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call1 = call %struct.term* @cont_Deref(%struct.binding** %Context2.addr, %struct.term* %1)
  store %struct.term* %call1, %struct.term** %Term2.addr, align 8
  %2 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %2)
  store i32 %call2, i32* %Top1, align 4
  %3 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %3)
  store i32 %call3, i32* %Top2, align 4
  %4 = load i32, i32* %Top1, align 4
  %call4 = call i32 @symbol_IsStandardVariable(i32 %4)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %Top2, align 4
  %call5 = call i32 @symbol_IsStandardVariable(i32 %5)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.else.8:                                        ; preds = %entry
  %6 = load i32, i32* %Top2, align 4
  %call9 = call i32 @symbol_IsStandardVariable(i32 %6)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.8
  %7 = load i32*, i32** @ord_PRECEDENCE, align 8
  %8 = load i32, i32* %Top1, align 4
  %9 = load i32, i32* %Top2, align 4
  %call11 = call i32 @symbol_PrecedenceGreater(i32* %7, i32 %8, i32 %9)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %lor.lhs.false, %if.else.8
  store i32 1, i32* %retval
  br label %return

if.else.14:                                       ; preds = %lor.lhs.false
  %10 = load i32, i32* %Top1, align 4
  %11 = load i32, i32* %Top2, align 4
  %cmp = icmp eq i32 %10, %11
  br i1 %cmp, label %if.then.15, label %if.end.67

if.then.15:                                       ; preds = %if.else.14
  %12 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call16 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Scan1, align 8
  %13 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call17 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %13)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Scan2, align 8
  %14 = load i32, i32* %Top1, align 4
  %call18 = call i32 @symbol_HasProperty(i32 %14, i32 8)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.34

if.then.20:                                       ; preds = %if.then.15
  %15 = load i32, i32* %Top1, align 4
  %call21 = call i32 @symbol_Arity(i32 %15)
  store i32 %call21, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.20
  %16 = load i32, i32* %i, align 4
  %cmp22 = icmp sgt i32 %16, 0
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %17 = load %struct.binding*, %struct.binding** %Context1.addr, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %19 = load i32, i32* %i, align 4
  %call23 = call i8* @list_NthElement(%struct.LIST_HELP* %18, i32 %19)
  %20 = bitcast i8* %call23 to %struct.term*
  %21 = load %struct.binding*, %struct.binding** %Context2.addr, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %23 = load i32, i32* %i, align 4
  %call24 = call i8* @list_NthElement(%struct.LIST_HELP* %22, i32 %23)
  %24 = bitcast i8* %call24 to %struct.term*
  %call25 = call i32 @cont_TermEqual(%struct.binding* %17, %struct.term* %20, %struct.binding* %21, %struct.term* %24)
  %tobool26 = icmp ne i32 %call25, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %25 = phi i1 [ false, %for.cond ], [ %tobool26, %land.rhs ]
  br i1 %25, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %27 = load i32, i32* %i, align 4
  %cmp27 = icmp sgt i32 %27, 0
  br i1 %cmp27, label %if.then.28, label %if.else.33

if.then.28:                                       ; preds = %for.end
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %29 = load i32, i32* %i, align 4
  %call29 = call i8* @list_NthElement(%struct.LIST_HELP* %28, i32 %29)
  %30 = bitcast i8* %call29 to %struct.term*
  %call30 = call %struct.term* @cont_Deref(%struct.binding** %Context1.addr, %struct.term* %30)
  store %struct.term* %call30, %struct.term** %RecTerm1, align 8
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %32 = load i32, i32* %i, align 4
  %call31 = call i8* @list_NthElement(%struct.LIST_HELP* %31, i32 %32)
  %33 = bitcast i8* %call31 to %struct.term*
  %call32 = call %struct.term* @cont_Deref(%struct.binding** %Context2.addr, %struct.term* %33)
  store %struct.term* %call32, %struct.term** %RecTerm2, align 8
  br label %if.end

if.else.33:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.28
  br label %if.end.54

if.else.34:                                       ; preds = %if.then.15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.34
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call35 = call i32 @list_Empty(%struct.LIST_HELP* %34)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %land.end.42, label %land.rhs.37

land.rhs.37:                                      ; preds = %while.cond
  %35 = load %struct.binding*, %struct.binding** %Context1.addr, align 8
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call38 = call i8* @list_Car(%struct.LIST_HELP* %36)
  %37 = bitcast i8* %call38 to %struct.term*
  %38 = load %struct.binding*, %struct.binding** %Context2.addr, align 8
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call39 = call i8* @list_Car(%struct.LIST_HELP* %39)
  %40 = bitcast i8* %call39 to %struct.term*
  %call40 = call i32 @cont_TermEqual(%struct.binding* %35, %struct.term* %37, %struct.binding* %38, %struct.term* %40)
  %tobool41 = icmp ne i32 %call40, 0
  br label %land.end.42

land.end.42:                                      ; preds = %land.rhs.37, %while.cond
  %41 = phi i1 [ false, %while.cond ], [ %tobool41, %land.rhs.37 ]
  br i1 %41, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.42
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call43 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %42)
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** %Scan1, align 8
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call44 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %43)
  store %struct.LIST_HELP* %call44, %struct.LIST_HELP** %Scan2, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end.42
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call45 = call i32 @list_Empty(%struct.LIST_HELP* %44)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.else.48:                                       ; preds = %while.end
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call49 = call i8* @list_Car(%struct.LIST_HELP* %45)
  %46 = bitcast i8* %call49 to %struct.term*
  %call50 = call %struct.term* @cont_Deref(%struct.binding** %Context1.addr, %struct.term* %46)
  store %struct.term* %call50, %struct.term** %RecTerm1, align 8
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call51 = call i8* @list_Car(%struct.LIST_HELP* %47)
  %48 = bitcast i8* %call51 to %struct.term*
  %call52 = call %struct.term* @cont_Deref(%struct.binding** %Context2.addr, %struct.term* %48)
  store %struct.term* %call52, %struct.term** %RecTerm2, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.48
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end
  %49 = load %struct.binding*, %struct.binding** %Context1.addr, align 8
  %50 = load %struct.term*, %struct.term** %RecTerm1, align 8
  %51 = load %struct.binding*, %struct.binding** %Context2.addr, align 8
  %52 = load %struct.term*, %struct.term** %RecTerm2, align 8
  %call55 = call i32 @kbo_ContCompVarCondAndWeight(%struct.binding* %49, %struct.term* %50, i32* %T1VarCond, %struct.binding* %51, %struct.term* %52, i32* %T2VarCond)
  store i32 %call55, i32* %RecWeightDiff, align 4
  %53 = load i32, i32* %T1VarCond, align 4
  %tobool56 = icmp ne i32 %53, 0
  br i1 %tobool56, label %if.then.57, label %if.end.66

if.then.57:                                       ; preds = %if.end.54
  %54 = load i32, i32* %RecWeightDiff, align 4
  %cmp58 = icmp sgt i32 %54, 0
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.then.57
  store i32 1, i32* %retval
  br label %return

if.else.60:                                       ; preds = %if.then.57
  %55 = load i32, i32* %RecWeightDiff, align 4
  %cmp61 = icmp eq i32 %55, 0
  br i1 %cmp61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.else.60
  %56 = load %struct.binding*, %struct.binding** %Context1.addr, align 8
  %57 = load %struct.term*, %struct.term** %RecTerm1, align 8
  %58 = load %struct.binding*, %struct.binding** %Context2.addr, align 8
  %59 = load %struct.term*, %struct.term** %RecTerm2, align 8
  %call63 = call i32 @kbo_ContGreaterCompareStruc(%struct.binding* %56, %struct.term* %57, %struct.binding* %58, %struct.term* %59)
  store i32 %call63, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.else.60
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.54
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.else.14
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.69, %if.then.62, %if.then.59, %if.then.47, %if.else.33, %if.then.13, %if.else, %if.then.7
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare i32 @term_MaxVar(%struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stack_Bottom() #2 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_IsStandardVariable(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsStandardVariable(i32 %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_TopSymbol(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %symbol = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 0
  %1 = load i32, i32* %symbol, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Weight(i32 %ActSymbol) #2 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  %call1 = call %struct.signature* @symbol_Signature(i32 %call)
  %weight = getelementptr inbounds %struct.signature, %struct.signature* %call1, i32 0, i32 2
  %1 = load i32, i32* %weight, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_IsComplex(%struct.term* %T) #2 {
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
define internal void @stack_Push(i8* %Entry) #2 {
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
define internal %struct.LIST_HELP* @term_ArgumentList(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stack_Empty(i32 %Ptr) #2 {
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
define internal i8* @stack_Top() #2 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  %sub = sub i32 %0, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i32 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Car(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 1
  %1 = load i8*, i8** %car, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @stack_RplacTop(i8* %Entry) #2 {
entry:
  %Entry.addr = alloca i8*, align 8
  store i8* %Entry, i8** %Entry.addr, align 8
  %0 = load i8*, i8** %Entry.addr, align 8
  %1 = load i32, i32* @stack_POINTER, align 4
  %sub = sub i32 %1, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i32 0, i64 %idxprom
  store i8* %0, i8** %arrayidx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %cdr, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_Empty(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cmp = icmp eq %struct.LIST_HELP* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stack_Pop() #2 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* @stack_POINTER, align 4
  ret i32 %dec
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsStandardVariable(i32 %S) #2 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %call = call i32 @symbol_IsVariable(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %S.addr, align 4
  %cmp = icmp sle i32 %1, 2000
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsVariable(i32 %S) #2 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.signature* @symbol_Signature(i32 %Index) #2 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
  %0 = load i32, i32* %Index.addr, align 4
  call void @symbol_CheckIndexInRange(i32 %0)
  %1 = load i32, i32* %Index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.signature**, %struct.signature*** @symbol_SIGNATURE, align 8
  %arrayidx = getelementptr inbounds %struct.signature*, %struct.signature** %2, i64 %idxprom
  %3 = load %struct.signature*, %struct.signature** %arrayidx, align 8
  ret %struct.signature* %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Index(i32 %ActSymbol) #2 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  call void @symbol_CheckNoVariable(i32 %0)
  %1 = load i32, i32* %ActSymbol.addr, align 4
  %sub = sub nsw i32 0, %1
  %2 = load i32, i32* @symbol_TYPESTATBITS, align 4
  %shr = ashr i32 %sub, %2
  ret i32 %shr
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_CheckIndexInRange(i32 %Index) #2 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_CheckNoVariable(i32 %S) #2 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_PrecedenceGreater(i32* %P, i32 %S1, i32 %S2) #2 {
entry:
  %P.addr = alloca i32*, align 8
  %S1.addr = alloca i32, align 4
  %S2.addr = alloca i32, align 4
  store i32* %P, i32** %P.addr, align 8
  store i32 %S1, i32* %S1.addr, align 4
  store i32 %S2, i32* %S2.addr, align 4
  %0 = load i32*, i32** %P.addr, align 8
  %1 = load i32, i32* %S1.addr, align 4
  %call = call i32 @symbol_Ordering(i32* %0, i32 %1)
  %2 = load i32*, i32** %P.addr, align 8
  %3 = load i32, i32* %S2.addr, align 4
  %call1 = call i32 @symbol_Ordering(i32* %2, i32 %3)
  %cmp = icmp slt i32 %call, %call1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_HasProperty(i32 %ActSymbol, i32 %Property) #2 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  %Property.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  store i32 %Property, i32* %Property.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  %call1 = call %struct.signature* @symbol_Signature(i32 %call)
  %props = getelementptr inbounds %struct.signature, %struct.signature* %call1, i32 0, i32 4
  %1 = load i32, i32* %props, align 4
  %2 = load i32, i32* %Property.addr, align 4
  %and = and i32 %1, %2
  ret i32 %and
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Arity(i32 %ActSymbol) #2 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  %call1 = call %struct.signature* @symbol_Signature(i32 %call)
  %arity = getelementptr inbounds %struct.signature, %struct.signature* %call1, i32 0, i32 3
  %1 = load i32, i32* %arity, align 4
  ret i32 %1
}

declare i32 @term_Equal(%struct.term*, %struct.term*) #1

declare i8* @list_NthElement(%struct.LIST_HELP*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Ordering(i32* %P, i32 %ActSymbol) #2 {
entry:
  %P.addr = alloca i32*, align 8
  %ActSymbol.addr = alloca i32, align 4
  %Index = alloca i32, align 4
  store i32* %P, i32** %P.addr, align 8
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  store i32 %call, i32* %Index, align 4
  %1 = load i32, i32* %Index, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %P.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  ret i32 %3
}

declare i32 @cont_TermMaxVar(%struct.binding*, %struct.term*) #1

; Function Attrs: nounwind uwtable
define internal i32 @kbo_ContCompVarCondAndWeightIntern(%struct.binding* %Context, %struct.term* %Term, i32 %Index) #0 {
entry:
  %Context.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Index.addr = alloca i32, align 4
  %Weight = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %Index, i32* %Index.addr, align 4
  store i32 0, i32* %Weight, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.term* @cont_Deref(%struct.binding** %Context.addr, %struct.term* %0)
  store %struct.term* %call, %struct.term** %Term.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_IsStandardVariable(%struct.term* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %Index.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %3)
  %idxprom3 = sext i32 %call2 to i64
  %arrayidx = getelementptr inbounds [2000 x [2 x i32]], [2000 x [2 x i32]]* @ord_VARCOUNT, i32 0, i64 %idxprom3
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx4, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %arrayidx4, align 4
  %5 = load i32, i32* %Weight, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, i32* %Weight, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %6)
  %call6 = call i32 @symbol_Weight(i32 %call5)
  %7 = load i32, i32* %Weight, align 4
  %add7 = add nsw i32 %7, %call6
  store i32 %add7, i32* %Weight, align 4
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call8 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %8)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool10 = icmp ne i32 %call9, 0
  %lnot = xor i1 %tobool10, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call11 to %struct.term*
  %13 = load i32, i32* %Index.addr, align 4
  %call12 = call i32 @kbo_ContCompVarCondAndWeightIntern(%struct.binding* %10, %struct.term* %12, i32 %13)
  %14 = load i32, i32* %Weight, align 4
  %add13 = add nsw i32 %14, %call12
  store i32 %add13, i32* %Weight, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %16 = load i32, i32* %Weight, align 4
  ret i32 %16
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @cont_Deref(%struct.binding** %Context, %struct.term* %Term) #2 {
entry:
  %retval = alloca %struct.term*, align 8
  %Context.addr = alloca %struct.binding**, align 8
  %Term.addr = alloca %struct.term*, align 8
  %TermTop = alloca i32, align 4
  %HelpContext = alloca %struct.binding*, align 8
  store %struct.binding** %Context, %struct.binding*** %Context.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.binding**, %struct.binding*** %Context.addr, align 8
  %2 = load %struct.binding*, %struct.binding** %1, align 8
  %call1 = call %struct.binding* @cont_InstanceContext()
  %cmp = icmp ne %struct.binding* %2, %call1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %4)
  store i32 %call2, i32* %TermTop, align 4
  %5 = load %struct.binding**, %struct.binding*** %Context.addr, align 8
  %6 = load %struct.binding*, %struct.binding** %5, align 8
  %7 = load i32, i32* %TermTop, align 4
  %call3 = call i32 @cont_VarIsBound(%struct.binding* %6, i32 %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %8 = load %struct.binding**, %struct.binding*** %Context.addr, align 8
  %9 = load %struct.binding*, %struct.binding** %8, align 8
  %10 = load i32, i32* %TermTop, align 4
  %call5 = call %struct.binding* @cont_ContextBindingContext(%struct.binding* %9, i32 %10)
  store %struct.binding* %call5, %struct.binding** %HelpContext, align 8
  %11 = load %struct.binding**, %struct.binding*** %Context.addr, align 8
  %12 = load %struct.binding*, %struct.binding** %11, align 8
  %13 = load i32, i32* %TermTop, align 4
  %call6 = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %12, i32 %13)
  store %struct.term* %call6, %struct.term** %Term.addr, align 8
  %14 = load %struct.binding*, %struct.binding** %HelpContext, align 8
  %15 = load %struct.binding**, %struct.binding*** %Context.addr, align 8
  store %struct.binding* %14, %struct.binding** %15, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %16 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %16, %struct.term** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %17, %struct.term** %retval
  br label %return

return:                                           ; preds = %while.end, %if.else
  %18 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %18
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_IsVariable(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsVariable(i32 %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_InstanceContext() #2 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_INSTANCECONTEXT, align 8
  ret %struct.binding* %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_VarIsBound(%struct.binding* %C, i32 %Var) #2 {
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
define internal %struct.binding* @cont_ContextBindingContext(%struct.binding* %C, i32 %Var) #2 {
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
define internal %struct.term* @cont_ContextBindingTerm(%struct.binding* %C, i32 %Var) #2 {
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

declare i32 @cont_TermEqual(%struct.binding*, %struct.term*, %struct.binding*, %struct.term*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
