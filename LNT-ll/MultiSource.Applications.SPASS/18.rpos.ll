; ModuleID = './MultiSource.Applications.SPASS/18.rpos.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }

@ord_PRECEDENCE = external global i32*, align 8
@symbol_SIGNATURE = external global %struct.signature**, align 8
@symbol_TYPESTATBITS = external constant i32, align 4
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@cont_INSTANCECONTEXT = external global %struct.binding*, align 8

; Function Attrs: nounwind uwtable
define i32 @rpos_Equal(%struct.term* %T1, %struct.term* %T2) #0 {
entry:
  %retval = alloca i32, align 4
  %T1.addr = alloca %struct.term*, align 8
  %T2.addr = alloca %struct.term*, align 8
  %l1 = alloca %struct.LIST_HELP*, align 8
  %l2 = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  %0 = load %struct.term*, %struct.term** %T1.addr, align 8
  %1 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call = call i32 @term_EqualTopSymbols(%struct.term* %0, %struct.term* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call1 = call i32 @term_IsComplex(%struct.term* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else.4, label %if.then.3

if.then.3:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  %3 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %3)
  %call6 = call i32 @symbol_HasProperty(i32 %call5, i32 16)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else.14

if.then.8:                                        ; preds = %if.else.4
  %4 = load %struct.term*, %struct.term** %T1.addr, align 8
  %5 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call9 = call %struct.LIST_HELP* @rpos_MultisetDifference(%struct.term* %4, %struct.term* %5)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %l1, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.then.8
  store i32 1, i32* %retval
  br label %return

if.else.13:                                       ; preds = %if.then.8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  call void @list_Delete(%struct.LIST_HELP* %7)
  store i32 0, i32* %retval
  br label %return

if.else.14:                                       ; preds = %if.else.4
  %8 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call15 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %8)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %l1, align 8
  %9 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call16 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %9)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %l2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.14
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call17 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call19 to %struct.term*
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call20 to %struct.term*
  %call21 = call i32 @rpos_Equal(%struct.term* %12, %struct.term* %14)
  %tobool22 = icmp ne i32 %call21, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %tobool22, %land.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call23 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %l1, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %l2, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call25 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  store i32 %call25, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.13, %if.then.12, %if.then.3, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
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
define internal i32 @symbol_HasProperty(i32 %ActSymbol, i32 %Property) #1 {
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
define internal i32 @term_TopSymbol(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %symbol = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 0
  %1 = load i32, i32* %symbol, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @rpos_MultisetDifference(%struct.term* %T1, %struct.term* %T2) #0 {
entry:
  %T1.addr = alloca %struct.term*, align 8
  %T2.addr = alloca %struct.term*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  %0 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
  %call1 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %result, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %2 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  %call3 = call %struct.LIST_HELP* @list_NMultisetDifference(%struct.LIST_HELP* %1, %struct.LIST_HELP* %call2, i32 (i8*, i8*)* bitcast (i32 (%struct.term*, %struct.term*)* @rpos_Equal to i32 (i8*, i8*)*))
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %result, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  ret %struct.LIST_HELP* %3
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
define internal void @list_Delete(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %Current = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Current, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %2)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %L.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Current, align 8
  call void @list_Free(%struct.LIST_HELP* %3)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %Current, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
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
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %cdr, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: nounwind uwtable
define i32 @rpos_GreaterEqual(%struct.term* %T1, %struct.term* %T2) #0 {
entry:
  %retval = alloca i32, align 4
  %T1.addr = alloca %struct.term*, align 8
  %T2.addr = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  %0 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call = call i32 @term_IsVariable(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.6

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %T1.addr, align 8
  %2 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call1 = call i32 @term_EqualTopSymbols(%struct.term* %1, %struct.term* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %call4 = call i32 @ord_Equal()
  store i32 %call4, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %call5 = call i32 @ord_Uncomparable()
  store i32 %call5, i32* %retval
  br label %return

if.else.6:                                        ; preds = %entry
  %3 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call7 = call i32 @term_IsVariable(%struct.term* %3)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else.17

if.then.9:                                        ; preds = %if.else.6
  %4 = load %struct.term*, %struct.term** %T1.addr, align 8
  %5 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call10 = call i32 @term_TopSymbol(%struct.term* %5)
  %call11 = call i32 @term_ContainsSymbol(%struct.term* %4, i32 %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.then.9
  %call14 = call i32 @ord_GreaterThan()
  store i32 %call14, i32* %retval
  br label %return

if.else.15:                                       ; preds = %if.then.9
  %call16 = call i32 @ord_Uncomparable()
  store i32 %call16, i32* %retval
  br label %return

if.else.17:                                       ; preds = %if.else.6
  %6 = load %struct.term*, %struct.term** %T1.addr, align 8
  %7 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call18 = call i32 @term_EqualTopSymbols(%struct.term* %6, %struct.term* %7)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.28

if.then.20:                                       ; preds = %if.else.17
  %8 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call21 = call i32 @term_TopSymbol(%struct.term* %8)
  %call22 = call i32 @symbol_HasProperty(i32 %call21, i32 16)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.then.20
  %9 = load %struct.term*, %struct.term** %T1.addr, align 8
  %10 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call25 = call i32 @rpos_MulGreaterEqual(%struct.term* %9, %struct.term* %10)
  store i32 %call25, i32* %retval
  br label %return

if.else.26:                                       ; preds = %if.then.20
  %11 = load %struct.term*, %struct.term** %T1.addr, align 8
  %12 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call27 = call i32 @rpos_LexGreaterEqual(%struct.term* %11, %struct.term* %12)
  store i32 %call27, i32* %retval
  br label %return

if.else.28:                                       ; preds = %if.else.17
  %13 = load i32*, i32** @ord_PRECEDENCE, align 8
  %14 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call29 = call i32 @term_TopSymbol(%struct.term* %14)
  %15 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call30 = call i32 @term_TopSymbol(%struct.term* %15)
  %call31 = call i32 @symbol_PrecedenceGreater(i32* %13, i32 %call29, i32 %call30)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.else.44

if.then.33:                                       ; preds = %if.else.28
  %16 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call34 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %16)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.33
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call35 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  %tobool36 = icmp ne i32 %call35, 0
  %lnot = xor i1 %tobool36, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.term*, %struct.term** %T1.addr, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call37 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call37 to %struct.term*
  %call38 = call i32 @rpos_Greater(%struct.term* %18, %struct.term* %20)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end, label %if.then.40

if.then.40:                                       ; preds = %for.body
  %call41 = call i32 @ord_Uncomparable()
  store i32 %call41, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call42 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call42, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call43 = call i32 @ord_GreaterThan()
  store i32 %call43, i32* %retval
  br label %return

if.else.44:                                       ; preds = %if.else.28
  %22 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call45 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %22)
  store %struct.LIST_HELP* %call45, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.58, %if.else.44
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call47 = call i32 @list_Empty(%struct.LIST_HELP* %23)
  %tobool48 = icmp ne i32 %call47, 0
  %lnot49 = xor i1 %tobool48, true
  br i1 %lnot49, label %for.body.50, label %for.end.60

for.body.50:                                      ; preds = %for.cond.46
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call51 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call51 to %struct.term*
  %26 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call52 = call i32 @rpos_GreaterEqual(%struct.term* %25, %struct.term* %26)
  %call53 = call i32 @ord_IsUncomparable(i32 %call52)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.57, label %if.then.55

if.then.55:                                       ; preds = %for.body.50
  %call56 = call i32 @ord_GreaterThan()
  store i32 %call56, i32* %retval
  br label %return

if.end.57:                                        ; preds = %for.body.50
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.57
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call59 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call59, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.46

for.end.60:                                       ; preds = %for.cond.46
  %call61 = call i32 @ord_Uncomparable()
  store i32 %call61, i32* %retval
  br label %return

return:                                           ; preds = %for.end.60, %if.then.55, %for.end, %if.then.40, %if.else.26, %if.then.24, %if.else.15, %if.then.13, %if.else, %if.then.3
  %28 = load i32, i32* %retval
  ret i32 %28
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
define internal i32 @ord_Equal() #1 {
entry:
  ret i32 2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ord_Uncomparable() #1 {
entry:
  ret i32 0
}

declare i32 @term_ContainsSymbol(%struct.term*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ord_GreaterThan() #1 {
entry:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal i32 @rpos_MulGreaterEqual(%struct.term* %T1, %struct.term* %T2) #0 {
entry:
  %retval = alloca i32, align 4
  %T1.addr = alloca %struct.term*, align 8
  %T2.addr = alloca %struct.term*, align 8
  %l1 = alloca %struct.LIST_HELP*, align 8
  %l2 = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %greater = alloca i32, align 4
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  %0 = load %struct.term*, %struct.term** %T1.addr, align 8
  %1 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call = call %struct.LIST_HELP* @rpos_MultisetDifference(%struct.term* %0, %struct.term* %1)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %l1, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32 @ord_Equal()
  store i32 %call2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.term*, %struct.term** %T2.addr, align 8
  %4 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call3 = call %struct.LIST_HELP* @rpos_MultisetDifference(%struct.term* %3, %struct.term* %4)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %l2, align 8
  store i32 1, i32* %greater, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %if.else
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, i32* %greater, align 4
  %tobool6 = icmp ne i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %tobool6, %land.rhs ]
  br i1 %7, label %for.body, label %for.end.20

for.body:                                         ; preds = %land.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %scan, align 8
  store i32 0, i32* %greater, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.end.12, label %land.rhs.10

land.rhs.10:                                      ; preds = %for.cond.7
  %10 = load i32, i32* %greater, align 4
  %tobool11 = icmp ne i32 %10, 0
  %lnot = xor i1 %tobool11, true
  br label %land.end.12

land.end.12:                                      ; preds = %land.rhs.10, %for.cond.7
  %11 = phi i1 [ false, %for.cond.7 ], [ %lnot, %land.rhs.10 ]
  br i1 %11, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %land.end.12
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call14 to %struct.term*
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  %call15 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call15 to %struct.term*
  %call16 = call i32 @rpos_Greater(%struct.term* %13, %struct.term* %15)
  store i32 %call16, i32* %greater, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.7

for.end:                                          ; preds = %land.end.12
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  %call19 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %l2, align 8
  br label %for.cond

for.end.20:                                       ; preds = %land.end
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  call void @list_Delete(%struct.LIST_HELP* %18)
  %19 = load i32, i32* %greater, align 4
  %tobool21 = icmp ne i32 %19, 0
  br i1 %tobool21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %for.end.20
  %call23 = call i32 @ord_GreaterThan()
  store i32 %call23, i32* %retval
  br label %return

if.else.24:                                       ; preds = %for.end.20
  %call25 = call i32 @ord_Uncomparable()
  store i32 %call25, i32* %retval
  br label %return

return:                                           ; preds = %if.else.24, %if.then.22, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @rpos_LexGreaterEqual(%struct.term* %T1, %struct.term* %T2) #0 {
entry:
  %T1.addr = alloca %struct.term*, align 8
  %T2.addr = alloca %struct.term*, align 8
  %result = alloca i32, align 4
  %l1 = alloca %struct.LIST_HELP*, align 8
  %l2 = alloca %struct.LIST_HELP*, align 8
  %scan1 = alloca %struct.LIST_HELP*, align 8
  %scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  %0 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_HasProperty(i32 %call, i32 8)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  %call3 = call %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP* %call2)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %l1, align 8
  %2 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  %call5 = call %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP* %call4)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %l2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %3)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %l1, align 8
  %4 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call7 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %l2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call8 = call i32 @ord_Equal()
  store i32 %call8, i32* %result, align 4
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %scan1, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %scan2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool10 = icmp ne i32 %call9, 0
  %lnot = xor i1 %tobool10, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call11 to %struct.term*
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call12 to %struct.term*
  %call13 = call i32 @rpos_GreaterEqual(%struct.term* %9, %struct.term* %11)
  store i32 %call13, i32* %result, align 4
  %12 = load i32, i32* %result, align 4
  %call14 = call i32 @ord_IsEqual(i32 %12)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %for.body
  br label %for.end

if.end.17:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %scan1, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %scan2, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.16, %for.cond
  %15 = load i32, i32* %result, align 4
  %call20 = call i32 @ord_IsEqual(i32 %15)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %for.end
  br label %if.end.68

if.else.23:                                       ; preds = %for.end
  %16 = load i32, i32* %result, align 4
  %call24 = call i32 @ord_IsGreaterThan(i32 %16)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.45

if.then.26:                                       ; preds = %if.else.23
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call27 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %scan2, align 8
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.35, %if.then.26
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call29 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond.28
  %19 = load %struct.term*, %struct.term** %T1.addr, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call31 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call31 to %struct.term*
  %call32 = call i32 @rpos_Greater(%struct.term* %19, %struct.term* %21)
  %tobool33 = icmp ne i32 %call32, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.28
  %22 = phi i1 [ false, %for.cond.28 ], [ %tobool33, %land.rhs ]
  br i1 %22, label %for.body.34, label %for.end.37

for.body.34:                                      ; preds = %land.end
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.34
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call36 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call36, %struct.LIST_HELP** %scan2, align 8
  br label %for.cond.28

for.end.37:                                       ; preds = %land.end
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call38 = call i32 @list_Empty(%struct.LIST_HELP* %24)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %for.end.37
  %call41 = call i32 @ord_GreaterThan()
  store i32 %call41, i32* %result, align 4
  br label %if.end.44

if.else.42:                                       ; preds = %for.end.37
  %call43 = call i32 @ord_Uncomparable()
  store i32 %call43, i32* %result, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.40
  br label %if.end.67

if.else.45:                                       ; preds = %if.else.23
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call46 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call46, %struct.LIST_HELP** %scan1, align 8
  %call47 = call i32 @ord_Uncomparable()
  store i32 %call47, i32* %result, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.64, %if.else.45
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call49 = call i32 @list_Empty(%struct.LIST_HELP* %26)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %land.end.55, label %land.rhs.51

land.rhs.51:                                      ; preds = %for.cond.48
  %27 = load i32, i32* %result, align 4
  %call52 = call i32 @ord_IsGreaterThan(i32 %27)
  %tobool53 = icmp ne i32 %call52, 0
  %lnot54 = xor i1 %tobool53, true
  br label %land.end.55

land.end.55:                                      ; preds = %land.rhs.51, %for.cond.48
  %28 = phi i1 [ false, %for.cond.48 ], [ %lnot54, %land.rhs.51 ]
  br i1 %28, label %for.body.56, label %for.end.66

for.body.56:                                      ; preds = %land.end.55
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call57 = call i8* @list_Car(%struct.LIST_HELP* %29)
  %30 = bitcast i8* %call57 to %struct.term*
  %31 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call58 = call i32 @rpos_GreaterEqual(%struct.term* %30, %struct.term* %31)
  %call59 = call i32 @ord_IsUncomparable(i32 %call58)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.end.63, label %if.then.61

if.then.61:                                       ; preds = %for.body.56
  %call62 = call i32 @ord_GreaterThan()
  store i32 %call62, i32* %result, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %for.body.56
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call65 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %32)
  store %struct.LIST_HELP* %call65, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond.48

for.end.66:                                       ; preds = %land.end.55
  br label %if.end.67

if.end.67:                                        ; preds = %for.end.66, %if.end.44
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.22
  %33 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call69 = call i32 @term_TopSymbol(%struct.term* %33)
  %call70 = call i32 @symbol_HasProperty(i32 %call69, i32 8)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.68
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  call void @list_Delete(%struct.LIST_HELP* %34)
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  call void @list_Delete(%struct.LIST_HELP* %35)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.end.68
  %36 = load i32, i32* %result, align 4
  ret i32 %36
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_PrecedenceGreater(i32* %P, i32 %S1, i32 %S2) #1 {
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
define internal i32 @rpos_Greater(%struct.term* %T1, %struct.term* %T2) #1 {
entry:
  %T1.addr = alloca %struct.term*, align 8
  %T2.addr = alloca %struct.term*, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  %0 = load %struct.term*, %struct.term** %T1.addr, align 8
  %1 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call = call i32 @rpos_GreaterEqual(%struct.term* %0, %struct.term* %1)
  %call1 = call i32 @ord_IsGreaterThan(i32 %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ord_IsUncomparable(i32 %Res) #1 {
entry:
  %Res.addr = alloca i32, align 4
  store i32 %Res, i32* %Res.addr, align 4
  %0 = load i32, i32* %Res.addr, align 4
  %cmp = icmp eq i32 0, %0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @rpos_Compare(%struct.term* %T1, %struct.term* %T2) #0 {
entry:
  %retval = alloca i32, align 4
  %T1.addr = alloca %struct.term*, align 8
  %T2.addr = alloca %struct.term*, align 8
  %result = alloca i32, align 4
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  %0 = load %struct.term*, %struct.term** %T1.addr, align 8
  %1 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call = call i32 @rpos_GreaterEqual(%struct.term* %0, %struct.term* %1)
  store i32 %call, i32* %result, align 4
  %2 = load i32, i32* %result, align 4
  %call1 = call i32 @ord_IsUncomparable(i32 %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %result, align 4
  store i32 %3, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.term*, %struct.term** %T2.addr, align 8
  %5 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call2 = call i32 @rpos_Greater(%struct.term* %4, %struct.term* %5)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %call5 = call i32 @ord_SmallerThan()
  store i32 %call5, i32* %retval
  br label %return

if.else.6:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.6, %if.then.4, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ord_SmallerThan() #1 {
entry:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @rpos_ContEqual(%struct.binding* %C1, %struct.term* %T1, %struct.binding* %C2, %struct.term* %T2) #0 {
entry:
  %retval = alloca i32, align 4
  %C1.addr = alloca %struct.binding*, align 8
  %T1.addr = alloca %struct.term*, align 8
  %C2.addr = alloca %struct.binding*, align 8
  %T2.addr = alloca %struct.term*, align 8
  %l1 = alloca %struct.LIST_HELP*, align 8
  %l2 = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %C1, %struct.binding** %C1.addr, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.binding* %C2, %struct.binding** %C2.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  %0 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call = call %struct.term* @cont_Deref(%struct.binding** %C1.addr, %struct.term* %0)
  store %struct.term* %call, %struct.term** %T1.addr, align 8
  %1 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call1 = call %struct.term* @cont_Deref(%struct.binding** %C2.addr, %struct.term* %1)
  store %struct.term* %call1, %struct.term** %T2.addr, align 8
  %2 = load %struct.term*, %struct.term** %T1.addr, align 8
  %3 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call2 = call i32 @term_EqualTopSymbols(%struct.term* %2, %struct.term* %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call3 = call i32 @term_IsComplex(%struct.term* %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else.6, label %if.then.5

if.then.5:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.6:                                        ; preds = %if.else
  %5 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call7 = call i32 @term_TopSymbol(%struct.term* %5)
  %call8 = call i32 @symbol_HasProperty(i32 %call7, i32 16)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.16

if.then.10:                                       ; preds = %if.else.6
  %6 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %7 = load %struct.term*, %struct.term** %T1.addr, align 8
  %8 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %9 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call11 = call %struct.LIST_HELP* @rpos_ContMultisetDifference(%struct.binding* %6, %struct.term* %7, %struct.binding* %8, %struct.term* %9)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %l1, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.then.10
  store i32 1, i32* %retval
  br label %return

if.else.15:                                       ; preds = %if.then.10
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  call void @list_Delete(%struct.LIST_HELP* %11)
  store i32 0, i32* %retval
  br label %return

if.else.16:                                       ; preds = %if.else.6
  %12 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call17 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %l1, align 8
  %13 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call18 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %13)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %l2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.16
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call19 = call i32 @list_Empty(%struct.LIST_HELP* %14)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %15 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call21 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call21 to %struct.term*
  %18 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call22 to %struct.term*
  %call23 = call i32 @rpos_ContEqual(%struct.binding* %15, %struct.term* %17, %struct.binding* %18, %struct.term* %20)
  %tobool24 = icmp ne i32 %call23, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %21 = phi i1 [ false, %for.cond ], [ %tobool24, %land.rhs ]
  br i1 %21, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call25 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %l1, align 8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %l2, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call27 = call i32 @list_Empty(%struct.LIST_HELP* %24)
  store i32 %call27, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.15, %if.then.14, %if.then.5, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @cont_Deref(%struct.binding** %Context, %struct.term* %Term) #1 {
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

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @rpos_ContMultisetDifference(%struct.binding* %C1, %struct.term* %T1, %struct.binding* %C2, %struct.term* %T2) #0 {
entry:
  %C1.addr = alloca %struct.binding*, align 8
  %T1.addr = alloca %struct.term*, align 8
  %C2.addr = alloca %struct.binding*, align 8
  %T2.addr = alloca %struct.term*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %scan1 = alloca %struct.LIST_HELP*, align 8
  %scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %C1, %struct.binding** %C1.addr, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.binding* %C2, %struct.binding** %C2.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  %0 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
  %call1 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %result, align 8
  %1 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %scan2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot7 = xor i1 %tobool6, true
  br i1 %lnot7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.4
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %cmp = icmp ne i8* %call9, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.8
  %6 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call10 to %struct.term*
  %9 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call11 to %struct.term*
  %call12 = call i32 @rpos_ContEqual(%struct.binding* %6, %struct.term* %8, %struct.binding* %9, %struct.term* %11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %12, i8* null)
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond.4

for.end:                                          ; preds = %if.then, %for.cond.4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %scan2, align 8
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call18 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %15, i8* null)
  ret %struct.LIST_HELP* %call18
}

; Function Attrs: nounwind uwtable
define i32 @rpos_ContGreaterEqual(%struct.binding* %C1, %struct.term* %T1, %struct.binding* %C2, %struct.term* %T2) #0 {
entry:
  %retval = alloca i32, align 4
  %C1.addr = alloca %struct.binding*, align 8
  %T1.addr = alloca %struct.term*, align 8
  %C2.addr = alloca %struct.binding*, align 8
  %T2.addr = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %C1, %struct.binding** %C1.addr, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.binding* %C2, %struct.binding** %C2.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  %0 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call = call %struct.term* @cont_Deref(%struct.binding** %C1.addr, %struct.term* %0)
  store %struct.term* %call, %struct.term** %T1.addr, align 8
  %1 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call1 = call %struct.term* @cont_Deref(%struct.binding** %C2.addr, %struct.term* %1)
  store %struct.term* %call1, %struct.term** %T2.addr, align 8
  %2 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call2 = call i32 @term_IsVariable(%struct.term* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  %3 = load %struct.term*, %struct.term** %T1.addr, align 8
  %4 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call3 = call i32 @term_EqualTopSymbols(%struct.term* %3, %struct.term* %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %call6 = call i32 @ord_Equal()
  store i32 %call6, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %call7 = call i32 @ord_Uncomparable()
  store i32 %call7, i32* %retval
  br label %return

if.else.8:                                        ; preds = %entry
  %5 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call9 = call i32 @term_IsVariable(%struct.term* %5)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else.19

if.then.11:                                       ; preds = %if.else.8
  %6 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %7 = load %struct.term*, %struct.term** %T1.addr, align 8
  %8 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call12 = call i32 @term_TopSymbol(%struct.term* %8)
  %call13 = call i32 @cont_TermContainsSymbol(%struct.binding* %6, %struct.term* %7, i32 %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.then.11
  %call16 = call i32 @ord_GreaterThan()
  store i32 %call16, i32* %retval
  br label %return

if.else.17:                                       ; preds = %if.then.11
  %call18 = call i32 @ord_Uncomparable()
  store i32 %call18, i32* %retval
  br label %return

if.else.19:                                       ; preds = %if.else.8
  %9 = load %struct.term*, %struct.term** %T1.addr, align 8
  %10 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call20 = call i32 @term_EqualTopSymbols(%struct.term* %9, %struct.term* %10)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.30

if.then.22:                                       ; preds = %if.else.19
  %11 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call23 = call i32 @term_TopSymbol(%struct.term* %11)
  %call24 = call i32 @symbol_HasProperty(i32 %call23, i32 16)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.then.22
  %12 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %13 = load %struct.term*, %struct.term** %T1.addr, align 8
  %14 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %15 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call27 = call i32 @rpos_ContMulGreaterEqual(%struct.binding* %12, %struct.term* %13, %struct.binding* %14, %struct.term* %15)
  store i32 %call27, i32* %retval
  br label %return

if.else.28:                                       ; preds = %if.then.22
  %16 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %17 = load %struct.term*, %struct.term** %T1.addr, align 8
  %18 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %19 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call29 = call i32 @rpos_ContLexGreaterEqual(%struct.binding* %16, %struct.term* %17, %struct.binding* %18, %struct.term* %19)
  store i32 %call29, i32* %retval
  br label %return

if.else.30:                                       ; preds = %if.else.19
  %20 = load i32*, i32** @ord_PRECEDENCE, align 8
  %21 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call31 = call i32 @term_TopSymbol(%struct.term* %21)
  %22 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call32 = call i32 @term_TopSymbol(%struct.term* %22)
  %call33 = call i32 @symbol_PrecedenceGreater(i32* %20, i32 %call31, i32 %call32)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.else.46

if.then.35:                                       ; preds = %if.else.30
  %23 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call36 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %23)
  store %struct.LIST_HELP* %call36, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.35
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call37 = call i32 @list_Empty(%struct.LIST_HELP* %24)
  %tobool38 = icmp ne i32 %call37, 0
  %lnot = xor i1 %tobool38, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %26 = load %struct.term*, %struct.term** %T1.addr, align 8
  %27 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call39 = call i8* @list_Car(%struct.LIST_HELP* %28)
  %29 = bitcast i8* %call39 to %struct.term*
  %call40 = call i32 @rpos_ContGreater(%struct.binding* %25, %struct.term* %26, %struct.binding* %27, %struct.term* %29)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end, label %if.then.42

if.then.42:                                       ; preds = %for.body
  %call43 = call i32 @ord_Uncomparable()
  store i32 %call43, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call44 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %30)
  store %struct.LIST_HELP* %call44, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call45 = call i32 @ord_GreaterThan()
  store i32 %call45, i32* %retval
  br label %return

if.else.46:                                       ; preds = %if.else.30
  %31 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call47 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %31)
  store %struct.LIST_HELP* %call47, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.60, %if.else.46
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call49 = call i32 @list_Empty(%struct.LIST_HELP* %32)
  %tobool50 = icmp ne i32 %call49, 0
  %lnot51 = xor i1 %tobool50, true
  br i1 %lnot51, label %for.body.52, label %for.end.62

for.body.52:                                      ; preds = %for.cond.48
  %33 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call53 = call i8* @list_Car(%struct.LIST_HELP* %34)
  %35 = bitcast i8* %call53 to %struct.term*
  %36 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %37 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call54 = call i32 @rpos_ContGreaterEqual(%struct.binding* %33, %struct.term* %35, %struct.binding* %36, %struct.term* %37)
  %call55 = call i32 @ord_IsUncomparable(i32 %call54)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end.59, label %if.then.57

if.then.57:                                       ; preds = %for.body.52
  %call58 = call i32 @ord_GreaterThan()
  store i32 %call58, i32* %retval
  br label %return

if.end.59:                                        ; preds = %for.body.52
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call61 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %38)
  store %struct.LIST_HELP* %call61, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.48

for.end.62:                                       ; preds = %for.cond.48
  %call63 = call i32 @ord_Uncomparable()
  store i32 %call63, i32* %retval
  br label %return

return:                                           ; preds = %for.end.62, %if.then.57, %for.end, %if.then.42, %if.else.28, %if.then.26, %if.else.17, %if.then.15, %if.else, %if.then.5
  %39 = load i32, i32* %retval
  ret i32 %39
}

declare i32 @cont_TermContainsSymbol(%struct.binding*, %struct.term*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @rpos_ContMulGreaterEqual(%struct.binding* %C1, %struct.term* %T1, %struct.binding* %C2, %struct.term* %T2) #0 {
entry:
  %retval = alloca i32, align 4
  %C1.addr = alloca %struct.binding*, align 8
  %T1.addr = alloca %struct.term*, align 8
  %C2.addr = alloca %struct.binding*, align 8
  %T2.addr = alloca %struct.term*, align 8
  %l1 = alloca %struct.LIST_HELP*, align 8
  %l2 = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %greater = alloca i32, align 4
  store %struct.binding* %C1, %struct.binding** %C1.addr, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.binding* %C2, %struct.binding** %C2.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %1 = load %struct.term*, %struct.term** %T1.addr, align 8
  %2 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %3 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call = call %struct.LIST_HELP* @rpos_ContMultisetDifference(%struct.binding* %0, %struct.term* %1, %struct.binding* %2, %struct.term* %3)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %l1, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32 @ord_Equal()
  store i32 %call2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %6 = load %struct.term*, %struct.term** %T2.addr, align 8
  %7 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %8 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call3 = call %struct.LIST_HELP* @rpos_ContMultisetDifference(%struct.binding* %5, %struct.term* %6, %struct.binding* %7, %struct.term* %8)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %l2, align 8
  store i32 1, i32* %greater, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %if.else
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %10 = load i32, i32* %greater, align 4
  %tobool6 = icmp ne i32 %10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ %tobool6, %land.rhs ]
  br i1 %11, label %for.body, label %for.end.20

for.body:                                         ; preds = %land.end
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  store %struct.LIST_HELP* %12, %struct.LIST_HELP** %scan, align 8
  store i32 0, i32* %greater, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.end.12, label %land.rhs.10

land.rhs.10:                                      ; preds = %for.cond.7
  %14 = load i32, i32* %greater, align 4
  %tobool11 = icmp ne i32 %14, 0
  %lnot = xor i1 %tobool11, true
  br label %land.end.12

land.end.12:                                      ; preds = %land.rhs.10, %for.cond.7
  %15 = phi i1 [ false, %for.cond.7 ], [ %lnot, %land.rhs.10 ]
  br i1 %15, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %land.end.12
  %16 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call14 to %struct.term*
  %19 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  %call15 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call15 to %struct.term*
  %call16 = call i32 @rpos_ContGreater(%struct.binding* %16, %struct.term* %18, %struct.binding* %19, %struct.term* %21)
  store i32 %call16, i32* %greater, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.7

for.end:                                          ; preds = %land.end.12
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  %call19 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %l2, align 8
  br label %for.cond

for.end.20:                                       ; preds = %land.end
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  call void @list_Delete(%struct.LIST_HELP* %24)
  %25 = load i32, i32* %greater, align 4
  %tobool21 = icmp ne i32 %25, 0
  br i1 %tobool21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %for.end.20
  %call23 = call i32 @ord_GreaterThan()
  store i32 %call23, i32* %retval
  br label %return

if.else.24:                                       ; preds = %for.end.20
  %call25 = call i32 @ord_Uncomparable()
  store i32 %call25, i32* %retval
  br label %return

return:                                           ; preds = %if.else.24, %if.then.22, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @rpos_ContLexGreaterEqual(%struct.binding* %C1, %struct.term* %T1, %struct.binding* %C2, %struct.term* %T2) #0 {
entry:
  %C1.addr = alloca %struct.binding*, align 8
  %T1.addr = alloca %struct.term*, align 8
  %C2.addr = alloca %struct.binding*, align 8
  %T2.addr = alloca %struct.term*, align 8
  %result = alloca i32, align 4
  %l1 = alloca %struct.LIST_HELP*, align 8
  %l2 = alloca %struct.LIST_HELP*, align 8
  %scan1 = alloca %struct.LIST_HELP*, align 8
  %scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.binding* %C1, %struct.binding** %C1.addr, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.binding* %C2, %struct.binding** %C2.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  %0 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_HasProperty(i32 %call, i32 8)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  %call3 = call %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP* %call2)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %l1, align 8
  %2 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  %call5 = call %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP* %call4)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %l2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %3)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %l1, align 8
  %4 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call7 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %l2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call8 = call i32 @ord_Equal()
  store i32 %call8, i32* %result, align 4
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %scan1, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %scan2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool10 = icmp ne i32 %call9, 0
  %lnot = xor i1 %tobool10, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call11 to %struct.term*
  %11 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call12 to %struct.term*
  %call13 = call i32 @rpos_ContGreaterEqual(%struct.binding* %8, %struct.term* %10, %struct.binding* %11, %struct.term* %13)
  store i32 %call13, i32* %result, align 4
  %14 = load i32, i32* %result, align 4
  %call14 = call i32 @ord_IsEqual(i32 %14)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %for.body
  br label %for.end

if.end.17:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %scan1, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %scan2, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.16, %for.cond
  %17 = load i32, i32* %result, align 4
  %call20 = call i32 @ord_IsEqual(i32 %17)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %for.end
  br label %if.end.68

if.else.23:                                       ; preds = %for.end
  %18 = load i32, i32* %result, align 4
  %call24 = call i32 @ord_IsGreaterThan(i32 %18)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.45

if.then.26:                                       ; preds = %if.else.23
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call27 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %scan2, align 8
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.35, %if.then.26
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call29 = call i32 @list_Empty(%struct.LIST_HELP* %20)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond.28
  %21 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %22 = load %struct.term*, %struct.term** %T1.addr, align 8
  %23 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call31 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call31 to %struct.term*
  %call32 = call i32 @rpos_ContGreater(%struct.binding* %21, %struct.term* %22, %struct.binding* %23, %struct.term* %25)
  %tobool33 = icmp ne i32 %call32, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.28
  %26 = phi i1 [ false, %for.cond.28 ], [ %tobool33, %land.rhs ]
  br i1 %26, label %for.body.34, label %for.end.37

for.body.34:                                      ; preds = %land.end
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.34
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call36 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call36, %struct.LIST_HELP** %scan2, align 8
  br label %for.cond.28

for.end.37:                                       ; preds = %land.end
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call38 = call i32 @list_Empty(%struct.LIST_HELP* %28)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %for.end.37
  %call41 = call i32 @ord_GreaterThan()
  store i32 %call41, i32* %result, align 4
  br label %if.end.44

if.else.42:                                       ; preds = %for.end.37
  %call43 = call i32 @ord_Uncomparable()
  store i32 %call43, i32* %result, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.40
  br label %if.end.67

if.else.45:                                       ; preds = %if.else.23
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call46 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %29)
  store %struct.LIST_HELP* %call46, %struct.LIST_HELP** %scan1, align 8
  %call47 = call i32 @ord_Uncomparable()
  store i32 %call47, i32* %result, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.64, %if.else.45
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call49 = call i32 @list_Empty(%struct.LIST_HELP* %30)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %land.end.55, label %land.rhs.51

land.rhs.51:                                      ; preds = %for.cond.48
  %31 = load i32, i32* %result, align 4
  %call52 = call i32 @ord_IsGreaterThan(i32 %31)
  %tobool53 = icmp ne i32 %call52, 0
  %lnot54 = xor i1 %tobool53, true
  br label %land.end.55

land.end.55:                                      ; preds = %land.rhs.51, %for.cond.48
  %32 = phi i1 [ false, %for.cond.48 ], [ %lnot54, %land.rhs.51 ]
  br i1 %32, label %for.body.56, label %for.end.66

for.body.56:                                      ; preds = %land.end.55
  %33 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call57 = call i8* @list_Car(%struct.LIST_HELP* %34)
  %35 = bitcast i8* %call57 to %struct.term*
  %36 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %37 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call58 = call i32 @rpos_ContGreaterEqual(%struct.binding* %33, %struct.term* %35, %struct.binding* %36, %struct.term* %37)
  %call59 = call i32 @ord_IsUncomparable(i32 %call58)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.end.63, label %if.then.61

if.then.61:                                       ; preds = %for.body.56
  %call62 = call i32 @ord_GreaterThan()
  store i32 %call62, i32* %result, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %for.body.56
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call65 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %38)
  store %struct.LIST_HELP* %call65, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond.48

for.end.66:                                       ; preds = %land.end.55
  br label %if.end.67

if.end.67:                                        ; preds = %for.end.66, %if.end.44
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.22
  %39 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call69 = call i32 @term_TopSymbol(%struct.term* %39)
  %call70 = call i32 @symbol_HasProperty(i32 %call69, i32 8)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.68
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  call void @list_Delete(%struct.LIST_HELP* %40)
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  call void @list_Delete(%struct.LIST_HELP* %41)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.end.68
  %42 = load i32, i32* %result, align 4
  ret i32 %42
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @rpos_ContGreater(%struct.binding* %C1, %struct.term* %T1, %struct.binding* %C2, %struct.term* %T2) #1 {
entry:
  %C1.addr = alloca %struct.binding*, align 8
  %T1.addr = alloca %struct.term*, align 8
  %C2.addr = alloca %struct.binding*, align 8
  %T2.addr = alloca %struct.term*, align 8
  store %struct.binding* %C1, %struct.binding** %C1.addr, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.binding* %C2, %struct.binding** %C2.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %1 = load %struct.term*, %struct.term** %T1.addr, align 8
  %2 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %3 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call = call i32 @rpos_ContGreaterEqual(%struct.binding* %0, %struct.term* %1, %struct.binding* %2, %struct.term* %3)
  %call1 = call i32 @ord_IsGreaterThan(i32 %call)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @rpos_ContCompare(%struct.binding* %C1, %struct.term* %T1, %struct.binding* %C2, %struct.term* %T2) #0 {
entry:
  %retval = alloca i32, align 4
  %C1.addr = alloca %struct.binding*, align 8
  %T1.addr = alloca %struct.term*, align 8
  %C2.addr = alloca %struct.binding*, align 8
  %T2.addr = alloca %struct.term*, align 8
  %result = alloca i32, align 4
  store %struct.binding* %C1, %struct.binding** %C1.addr, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.binding* %C2, %struct.binding** %C2.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  %0 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call = call %struct.term* @cont_Deref(%struct.binding** %C1.addr, %struct.term* %0)
  store %struct.term* %call, %struct.term** %T1.addr, align 8
  %1 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call1 = call %struct.term* @cont_Deref(%struct.binding** %C2.addr, %struct.term* %1)
  store %struct.term* %call1, %struct.term** %T2.addr, align 8
  %2 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %3 = load %struct.term*, %struct.term** %T1.addr, align 8
  %4 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %5 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call2 = call i32 @rpos_ContGreaterEqual(%struct.binding* %2, %struct.term* %3, %struct.binding* %4, %struct.term* %5)
  store i32 %call2, i32* %result, align 4
  %6 = load i32, i32* %result, align 4
  %call3 = call i32 @ord_IsUncomparable(i32 %6)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %result, align 4
  store i32 %7, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %9 = load %struct.term*, %struct.term** %T2.addr, align 8
  %10 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %11 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call4 = call i32 @rpos_ContGreater(%struct.binding* %8, %struct.term* %9, %struct.binding* %10, %struct.term* %11)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %call7 = call i32 @ord_SmallerThan()
  store i32 %call7, i32* %retval
  br label %return

if.else.8:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.8, %if.then.6, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
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
define internal %struct.signature* @symbol_Signature(i32 %Index) #1 {
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
define internal i32 @symbol_Index(i32 %ActSymbol) #1 {
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
define internal void @symbol_CheckIndexInRange(i32 %Index) #1 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_CheckNoVariable(i32 %S) #1 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  ret void
}

declare %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP*) #2

declare %struct.LIST_HELP* @list_NMultisetDifference(%struct.LIST_HELP*, %struct.LIST_HELP*, i32 (i8*, i8*)*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Free(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %1 = bitcast %struct.LIST_HELP* %0 to i8*
  call void @memory_Free(i8* %1, i32 16)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @memory_Free(i8* %Freepointer, i32 %Size) #1 {
entry:
  %Freepointer.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %RealBlockSize = alloca i32, align 4
  %BigBlockHeader = alloca %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
  store i8* %Freepointer, i8** %Freepointer.addr, align 8
  store i32 %Size, i32* %Size.addr, align 4
  %0 = load i32, i32* %Size.addr, align 4
  %call = call i32 @memory_LookupRealBlockSize(i32 %0)
  store i32 %call, i32* %RealBlockSize, align 4
  %1 = load i32, i32* %Size.addr, align 4
  %cmp = icmp uge i32 %1, 1024
  br i1 %cmp, label %if.then, label %if.else.25

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %Freepointer.addr, align 8
  %3 = load i32, i32* @memory_OFFSET, align 4
  %idx.ext = zext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.neg
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -16
  %4 = bitcast i8* %add.ptr1 to %struct.MEMORY_BIGBLOCKHEADERHELP*
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %4, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %5 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %previous = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %5, i32 0, i32 0
  %6 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous, align 8
  %cmp2 = icmp ne %struct.MEMORY_BIGBLOCKHEADERHELP* %6, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %7, i32 0, i32 1
  %8 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next, align 8
  %9 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %previous4 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %9, i32 0, i32 0
  %10 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous4, align 8
  %next5 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %10, i32 0, i32 1
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %8, %struct.MEMORY_BIGBLOCKHEADERHELP** %next5, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next6 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %11, i32 0, i32 1
  %12 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next6, align 8
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %12, %struct.MEMORY_BIGBLOCKHEADERHELP** @memory_BIGBLOCKS, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %13 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next7 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %13, i32 0, i32 1
  %14 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next7, align 8
  %cmp8 = icmp ne %struct.MEMORY_BIGBLOCKHEADERHELP* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %15 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %previous10 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %15, i32 0, i32 0
  %16 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous10, align 8
  %17 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next11 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %17, i32 0, i32 1
  %18 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next11, align 8
  %previous12 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %18, i32 0, i32 0
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %16, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end
  %19 = load i32, i32* %RealBlockSize, align 4
  %20 = load i32, i32* @memory_MARKSIZE, align 4
  %add = add i32 %19, %20
  %conv = zext i32 %add to i64
  %add14 = add i64 %conv, 16
  %21 = load i64, i64* @memory_FREEDBYTES, align 8
  %add15 = add i64 %21, %add14
  store i64 %add15, i64* @memory_FREEDBYTES, align 8
  %22 = load i64, i64* @memory_MAXMEM, align 8
  %cmp16 = icmp sge i64 %22, 0
  br i1 %cmp16, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.end.13
  %23 = load i32, i32* %RealBlockSize, align 4
  %24 = load i32, i32* @memory_MARKSIZE, align 4
  %add19 = add i32 %23, %24
  %conv20 = zext i32 %add19 to i64
  %add21 = add i64 %conv20, 16
  %25 = load i64, i64* @memory_MAXMEM, align 8
  %add22 = add i64 %25, %add21
  store i64 %add22, i64* @memory_MAXMEM, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %if.end.13
  %26 = load i8*, i8** %Freepointer.addr, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %26, i64 -16
  call void @free(i8* %add.ptr24) #4
  br label %if.end.33

if.else.25:                                       ; preds = %entry
  %27 = load i32, i32* %Size.addr, align 4
  %idxprom = zext i32 %27 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom
  %28 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx, align 8
  %total_size = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %28, i32 0, i32 4
  %29 = load i32, i32* %total_size, align 4
  %conv26 = sext i32 %29 to i64
  %30 = load i64, i64* @memory_FREEDBYTES, align 8
  %add27 = add i64 %30, %conv26
  store i64 %add27, i64* @memory_FREEDBYTES, align 8
  %31 = load i32, i32* %Size.addr, align 4
  %idxprom28 = zext i32 %31 to i64
  %arrayidx29 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom28
  %32 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx29, align 8
  %free = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %32, i32 0, i32 0
  %33 = load i8*, i8** %free, align 8
  %34 = load i8*, i8** %Freepointer.addr, align 8
  %35 = bitcast i8* %34 to i8**
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %Freepointer.addr, align 8
  %37 = load i32, i32* %Size.addr, align 4
  %idxprom30 = zext i32 %37 to i64
  %arrayidx31 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom30
  %38 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx31, align 8
  %free32 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %38, i32 0, i32 0
  store i8* %36, i8** %free32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.25, %if.end.23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @memory_LookupRealBlockSize(i32 %BlockSize) #1 {
entry:
  %BlockSize.addr = alloca i32, align 4
  %RealSize = alloca i32, align 4
  store i32 %BlockSize, i32* %BlockSize.addr, align 4
  %0 = load i32, i32* %BlockSize.addr, align 4
  %cmp = icmp ult i32 %0, 1024
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %BlockSize.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom
  %2 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx, align 8
  %aligned_size = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %2, i32 0, i32 5
  %3 = load i32, i32* %aligned_size, align 4
  store i32 %3, i32* %RealSize, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %BlockSize.addr, align 4
  %call = call i32 @memory_CalculateRealBlockSize(i32 %4)
  store i32 %call, i32* %RealSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %RealSize, align 4
  ret i32 %5
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @memory_CalculateRealBlockSize(i32 %BlockSize) #1 {
entry:
  %BlockSize.addr = alloca i32, align 4
  %RealSize = alloca i32, align 4
  store i32 %BlockSize, i32* %BlockSize.addr, align 4
  %0 = load i32, i32* %BlockSize.addr, align 4
  store i32 %0, i32* %RealSize, align 4
  %1 = load i32, i32* %RealSize, align 4
  %rem = urem i32 %1, 1
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %RealSize, align 4
  %rem1 = urem i32 %2, 1
  %sub = sub i32 1, %rem1
  %3 = load i32, i32* %RealSize, align 4
  %add = add i32 %3, %sub
  store i32 %add, i32* %RealSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %RealSize, align 4
  %5 = load i32, i32* @memory_ALIGN, align 4
  %rem2 = urem i32 %4, %5
  %tobool3 = icmp ne i32 %rem2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %6 = load i32, i32* @memory_ALIGN, align 4
  %7 = load i32, i32* %RealSize, align 4
  %8 = load i32, i32* @memory_ALIGN, align 4
  %rem5 = urem i32 %7, %8
  %sub6 = sub i32 %6, %rem5
  %9 = load i32, i32* %RealSize, align 4
  %add7 = add i32 %9, %sub6
  store i32 %add7, i32* %RealSize, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  %10 = load i32, i32* %RealSize, align 4
  ret i32 %10
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
define internal %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %Aux = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Aux, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %1)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %L.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Aux, align 8
  call void @list_Free(%struct.LIST_HELP* %2)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  ret %struct.LIST_HELP* %3
}

declare %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ord_IsEqual(i32 %Res) #1 {
entry:
  %Res.addr = alloca i32, align 4
  store i32 %Res, i32* %Res.addr, align 4
  %0 = load i32, i32* %Res.addr, align 4
  %cmp = icmp eq i32 2, %0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ord_IsGreaterThan(i32 %Res) #1 {
entry:
  %Res.addr = alloca i32, align 4
  store i32 %Res, i32* %Res.addr, align 4
  %0 = load i32, i32* %Res.addr, align 4
  %cmp = icmp eq i32 3, %0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Ordering(i32* %P, i32 %ActSymbol) #1 {
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

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_InstanceContext() #1 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_INSTANCECONTEXT, align 8
  ret %struct.binding* %0
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
define internal void @list_Rplaca(%struct.LIST_HELP* %L, i8* %P) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %P.addr = alloca i8*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  store i8* %P, i8** %P.addr, align 8
  %0 = load i8*, i8** %P.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %1, i32 0, i32 1
  store i8* %0, i8** %car, align 8
  ret void
}

declare %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
