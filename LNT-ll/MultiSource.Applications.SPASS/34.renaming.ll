; ModuleID = './MultiSource.Applications.SPASS/34.renaming.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.RENAMING_NODE = type { %struct.term*, %struct.LIST_HELP*, i32, i32 }

@ren_STAMPID = internal global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"\0A\0A\09 Renaming term:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"\0A\0A\09 Renamed term:\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"\09 Renaming:\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"\0A\09 ========= \0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\0A\0A\09 Instances:\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0A\09 Polarity: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"\0A\09 General : %d\0A\00", align 1
@symbol_TYPEMASK = external constant i32, align 4
@fol_ALL = external global i32, align 4
@fol_EXIST = external global i32, align 4
@term_STAMP = external global i32, align 4
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"\0A\09Error in file %s at line %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [84 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/SPASS/renaming.c\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"In ren_GetRenamings: Unknown first-order operator.\00", align 1
@.str.11 = private unnamed_addr constant [133 x i8] c"\0A Please report this error via email to spass@mpi-sb.mpg.de including\0A the SPASS version, input problem, options, operating system.\0A\00", align 1
@fol_NOT = external global i32, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"In ren_HasBenefit: Unknown polarity.\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"In ren_AFactorOk: Unknown first order operator.\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"In ren_BFactorOk: Unknown first order operator.\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"In ren_AExtraFactorOk: Unknown first order operator.\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"In ren_BExtraFactorOk: Unknown first order operator.\00", align 1
@fol_AND = external global i32, align 4
@fol_OR = external global i32, align 4
@fol_IMPLIES = external global i32, align 4
@fol_EQUIV = external global i32, align 4
@.str.17 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"In ren_Polarity: Unknown first-order operator.\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"In ren_HasNonZeroBenefit: Unknown polarity.\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c" \0A In ren_PFactorBigger3: unknown first order operator.\00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c" \0A In ren_NotPFactorBigger3: unknown first order operator.\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"In ren_AFactorBigger3: Unknown first order operator.\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"In ren_BFactorBigger3: Unknown first order operator.\00", align 1
@.str.24 = private unnamed_addr constant [62 x i8] c"\0A In ren_FormulaRename: Further match is no instance of hit.\0A\00", align 1
@cont_BINDINGS = external global i32, align 4
@cont_STACKPOINTER = external global i32, align 4
@cont_STACK = external global [1000 x i32], align 16
@cont_LEFTCONTEXT = external global %struct.binding*, align 8
@cont_CURRENTBINDING = external global %struct.binding*, align 8
@cont_LASTBINDING = external global %struct.binding*, align 8
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4

; Function Attrs: nounwind uwtable
define void @ren_Init() #0 {
entry:
  %call = call i32 @term_GetStampID()
  store i32 %call, i32* @ren_STAMPID, align 4
  ret void
}

declare i32 @term_GetStampID() #1

; Function Attrs: nounwind uwtable
define %struct.term* @ren_Rename(%struct.term* %Term, i32* %Precedence, %struct.LIST_HELP** %SkolemSymbols, i32 %Document, i32 %Match) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Precedence.addr = alloca i32*, align 8
  %SkolemSymbols.addr = alloca %struct.LIST_HELP**, align 8
  %Document.addr = alloca i32, align 4
  %Match.addr = alloca i32, align 4
  %Renamings = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Formulas = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.LIST_HELP** %SkolemSymbols, %struct.LIST_HELP*** %SkolemSymbols.addr, align 8
  store i32 %Document, i32* %Document.addr, align 4
  store i32 %Match, i32* %Match.addr, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Renamings, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Formulas, align 8
  %0 = load i32, i32* @ren_STAMPID, align 4
  %call2 = call i32 @term_StampOverflow(i32 %0)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @ren_ResetTermStamp(%struct.term* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @term_StartStamp()
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call %struct.LIST_HELP* @ren_GetRenamings(%struct.term* %2, %struct.term* %3, i32 1)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Formulas, align 8
  %4 = load i32, i32* %Match.addr, align 4
  %tobool4 = icmp ne i32 %4, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Formulas, align 8
  %call6 = call %struct.LIST_HELP* @ren_FurtherMatches(%struct.term* %5, %struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Renamings, align 8
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Formulas, align 8
  store %struct.LIST_HELP* %7, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call9 to %struct.term*
  %call10 = call %struct.LIST_HELP* @list_Nil()
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call11 to %struct.term*
  %call12 = call i32 @ren_Polarity(%struct.term* %12)
  %call13 = call %struct.RENAMING_NODE* @ren_Create(%struct.term* %10, %struct.LIST_HELP* %call10, i32 %call12)
  %13 = bitcast %struct.RENAMING_NODE* %call13 to i8*
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings, align 8
  %call14 = call %struct.LIST_HELP* @list_Cons(i8* %13, %struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Renamings, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %if.then.5
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings, align 8
  %call17 = call %struct.LIST_HELP* @ren_FreeRenaming(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Renamings, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings, align 8
  %call18 = call %struct.LIST_HELP* @list_Sort(%struct.LIST_HELP* %17, i32 (i8*, i8*)* bitcast (i32 (%struct.RENAMING_NODE*, %struct.RENAMING_NODE*)* @ren_RootDistanceSmaller to i32 (i8*, i8*)*))
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Renamings, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings, align 8
  %call19 = call %struct.LIST_HELP* @ren_SolveDependencies(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Renamings, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings, align 8
  %call20 = call %struct.LIST_HELP* @ren_FreeRenaming(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %Renamings, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings, align 8
  %call21 = call i32 @list_Empty(%struct.LIST_HELP* %20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.37, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.16
  %21 = load i32, i32* %Document.addr, align 4
  %tobool23 = icmp ne i32 %21, 0
  br i1 %tobool23, label %if.then.24, label %if.end.37

if.then.24:                                       ; preds = %land.lhs.true
  %call25 = call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %22 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @fol_PrettyPrintDFG(%struct.term* %22)
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings, align 8
  store %struct.LIST_HELP* %23, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.33, %if.then.24
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call27 = call i32 @list_Empty(%struct.LIST_HELP* %24)
  %tobool28 = icmp ne i32 %call27, 0
  %lnot29 = xor i1 %tobool28, true
  br i1 %lnot29, label %for.body.30, label %for.end.35

for.body.30:                                      ; preds = %for.cond.26
  %call31 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call32 = call i8* @list_Car(%struct.LIST_HELP* %25)
  %26 = bitcast i8* %call32 to %struct.RENAMING_NODE*
  call void @ren_PrettyPrint(%struct.RENAMING_NODE* %26)
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.30
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call34 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.26

for.end.35:                                       ; preds = %for.cond.26
  %call36 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %for.end.35, %land.lhs.true, %if.end.16
  %28 = load %struct.term*, %struct.term** %Term.addr, align 8
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings, align 8
  %30 = load i32*, i32** %Precedence.addr, align 8
  %31 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %SkolemSymbols.addr, align 8
  %call38 = call %struct.term* @ren_FormulaRename(%struct.term* %28, %struct.LIST_HELP* %29, i32* %30, %struct.LIST_HELP** %31)
  store %struct.term* %call38, %struct.term** %Term.addr, align 8
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings, align 8
  %call39 = call i32 @list_Empty(%struct.LIST_HELP* %32)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.46, label %land.lhs.true.41

land.lhs.true.41:                                 ; preds = %if.end.37
  %33 = load i32, i32* %Document.addr, align 4
  %tobool42 = icmp ne i32 %33, 0
  br i1 %tobool42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %land.lhs.true.41
  %call44 = call i32 @puts(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  %34 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @fol_PrettyPrintDFG(%struct.term* %34)
  %call45 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %land.lhs.true.41, %if.end.37
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %35, void (i8*)* bitcast (void (%struct.RENAMING_NODE*)* @ren_Delete to void (i8*)*))
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Formulas, align 8
  call void @list_Delete(%struct.LIST_HELP* %36)
  call void @term_StopStamp()
  %37 = load %struct.term*, %struct.term** %Term.addr, align 8
  ret %struct.term* %37
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #2 {
entry:
  ret %struct.LIST_HELP* null
}

declare i32 @term_StampOverflow(i32) #1

; Function Attrs: nounwind uwtable
define internal void @ren_ResetTermStamp(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_ResetTermStamp(%struct.term* %0)
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %1)
  store i32 %call, i32* %Top, align 4
  %2 = load i32, i32* %Top, align 4
  %call1 = call i32 @symbol_IsPredicate(i32 %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.11, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %Top, align 4
  %call2 = call i32 @fol_IsQuantifier(i32 %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call %struct.term* @term_SecondArgument(%struct.term* %4)
  call void @ren_ResetTermStamp(%struct.term* %call5)
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call9 to %struct.term*
  call void @ren_ResetTermStamp(%struct.term* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_StartStamp() #2 {
entry:
  %0 = load i32, i32* @term_STAMP, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* @term_STAMP, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @ren_GetRenamings(%struct.term* %Term1, %struct.term* %Term2, i32 %Pol) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Term1.addr = alloca %struct.term*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %Pol.addr = alloca i32, align 4
  %Top = alloca i32, align 4
  %Result = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  store i32 %Pol, i32* %Pol.addr, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %0)
  %call2 = call i32 @fol_Not()
  %call3 = call i32 @symbol_Equal(i32 %call1, i32 %call2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call4 = call %struct.term* @term_FirstArgument(%struct.term* %1)
  store %struct.term* %call4, %struct.term** %Term2.addr, align 8
  %2 = load i32, i32* %Pol.addr, align 4
  %sub = sub nsw i32 0, %2
  store i32 %sub, i32* %Pol.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call5 = call i32 @term_IsAtom(%struct.term* %3)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %while.end
  %5 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call7 = call i32 @term_TopSymbol(%struct.term* %5)
  store i32 %call7, i32* %Top, align 4
  %6 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call8 = call %struct.term* @term_Superterm(%struct.term* %6)
  %tobool9 = icmp ne %struct.term* %call8, null
  br i1 %tobool9, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call10 = call %struct.term* @term_Superterm(%struct.term* %7)
  %call11 = call i32 @term_TopSymbol(%struct.term* %call10)
  %call12 = call i32 @fol_IsQuantifier(i32 %call11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.19, label %land.lhs.true.14

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %8 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %9 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %10 = load i32, i32* %Pol.addr, align 4
  %call15 = call i32 @ren_HasBenefit(%struct.term* %8, %struct.term* %9, i32 %10)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %land.lhs.true.14
  %11 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %12 = bitcast %struct.term* %11 to i8*
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call18 = call %struct.LIST_HELP* @list_Cons(i8* %12, %struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Result, align 8
  %14 = load %struct.term*, %struct.term** %Term2.addr, align 8
  call void @term_SetTermStamp(%struct.term* %14)
  %15 = load %struct.term*, %struct.term** %Term2.addr, align 8
  store %struct.term* %15, %struct.term** %Term1.addr, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %land.lhs.true.14, %land.lhs.true, %if.end
  %16 = load i32, i32* %Top, align 4
  %call20 = call i32 @fol_IsQuantifier(i32 %16)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.end.19
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %18 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %19 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call23 = call %struct.term* @term_SecondArgument(%struct.term* %19)
  %20 = load i32, i32* %Pol.addr, align 4
  %call24 = call %struct.LIST_HELP* @ren_GetRenamings(%struct.term* %18, %struct.term* %call23, i32 %20)
  %call25 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %17, %struct.LIST_HELP* %call24)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %Result, align 8
  br label %if.end.70

if.else:                                          ; preds = %if.end.19
  %21 = load i32, i32* %Top, align 4
  %call26 = call i32 @fol_And()
  %call27 = call i32 @symbol_Equal(i32 %21, i32 %call26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %22 = load i32, i32* %Top, align 4
  %call29 = call i32 @fol_Or()
  %call30 = call i32 @symbol_Equal(i32 %22, i32 %call29)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.else.40

if.then.32:                                       ; preds = %lor.lhs.false, %if.else
  %23 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call33 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %23)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.32
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call34 = call i32 @list_Empty(%struct.LIST_HELP* %24)
  %tobool35 = icmp ne i32 %call34, 0
  %lnot = xor i1 %tobool35, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %26 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call36 = call i8* @list_Car(%struct.LIST_HELP* %27)
  %28 = bitcast i8* %call36 to %struct.term*
  %29 = load i32, i32* %Pol.addr, align 4
  %call37 = call %struct.LIST_HELP* @ren_GetRenamings(%struct.term* %26, %struct.term* %28, i32 %29)
  %call38 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %25, %struct.LIST_HELP* %call37)
  store %struct.LIST_HELP* %call38, %struct.LIST_HELP** %Result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call39 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %30)
  store %struct.LIST_HELP* %call39, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.69

if.else.40:                                       ; preds = %lor.lhs.false
  %31 = load i32, i32* %Top, align 4
  %call41 = call i32 @fol_Implies()
  %call42 = call i32 @symbol_Equal(i32 %31, i32 %call41)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.52

if.then.44:                                       ; preds = %if.else.40
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %33 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %34 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call45 = call %struct.term* @term_FirstArgument(%struct.term* %34)
  %35 = load i32, i32* %Pol.addr, align 4
  %sub46 = sub nsw i32 0, %35
  %call47 = call %struct.LIST_HELP* @ren_GetRenamings(%struct.term* %33, %struct.term* %call45, i32 %sub46)
  %call48 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %32, %struct.LIST_HELP* %call47)
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %Result, align 8
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %37 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %38 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call49 = call %struct.term* @term_SecondArgument(%struct.term* %38)
  %39 = load i32, i32* %Pol.addr, align 4
  %call50 = call %struct.LIST_HELP* @ren_GetRenamings(%struct.term* %37, %struct.term* %call49, i32 %39)
  %call51 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %36, %struct.LIST_HELP* %call50)
  store %struct.LIST_HELP* %call51, %struct.LIST_HELP** %Result, align 8
  br label %if.end.68

if.else.52:                                       ; preds = %if.else.40
  %40 = load i32, i32* %Top, align 4
  %call53 = call i32 @fol_Equiv()
  %call54 = call i32 @symbol_Equal(i32 %40, i32 %call53)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.else.63

if.then.56:                                       ; preds = %if.else.52
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %42 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %43 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call57 = call %struct.term* @term_FirstArgument(%struct.term* %43)
  %call58 = call %struct.LIST_HELP* @ren_GetRenamings(%struct.term* %42, %struct.term* %call57, i32 0)
  %call59 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %41, %struct.LIST_HELP* %call58)
  store %struct.LIST_HELP* %call59, %struct.LIST_HELP** %Result, align 8
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %45 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %46 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call60 = call %struct.term* @term_SecondArgument(%struct.term* %46)
  %call61 = call %struct.LIST_HELP* @ren_GetRenamings(%struct.term* %45, %struct.term* %call60, i32 0)
  %call62 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %44, %struct.LIST_HELP* %call61)
  store %struct.LIST_HELP* %call62, %struct.LIST_HELP** %Result, align 8
  br label %if.end.67

if.else.63:                                       ; preds = %if.else.52
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call64 = call i32 @fflush(%struct._IO_FILE* %47)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i32 0, i32 0), i32 1070)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i32 0, i32 0))
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call66 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %49)
  call void @misc_DumpCore()
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.63, %if.then.56
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.44
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %for.end
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.22
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %50, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %if.end.70, %if.then
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %51
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @ren_FurtherMatches(%struct.term* %Formula, %struct.LIST_HELP* %Formulas) #0 {
entry:
  %Formula.addr = alloca %struct.term*, align 8
  %Formulas.addr = alloca %struct.LIST_HELP*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %Allmatches = alloca %struct.LIST_HELP*, align 8
  %Matchables = alloca %struct.LIST_HELP*, align 8
  %Renamings = alloca %struct.LIST_HELP*, align 8
  %Hit = alloca %struct.term*, align 8
  %Polarity = alloca i32, align 4
  %NewPol = alloca i32, align 4
  store %struct.term* %Formula, %struct.term** %Formula.addr, align 8
  store %struct.LIST_HELP* %Formulas, %struct.LIST_HELP** %Formulas.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Allmatches, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Renamings, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Formulas.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call3 to %struct.term*
  store %struct.term* %3, %struct.term** %Hit, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Allmatches, align 8
  %5 = load %struct.term*, %struct.term** %Hit, align 8
  %6 = bitcast %struct.term* %5 to i8*
  %call4 = call i32 @list_PointerMember(%struct.LIST_HELP* %4, i8* %6)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.35, label %if.then

if.then:                                          ; preds = %for.body
  %7 = load %struct.term*, %struct.term** %Hit, align 8
  %8 = bitcast %struct.term* %7 to i8*
  %9 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %10 = load %struct.term*, %struct.term** %Hit, align 8
  %call6 = call %struct.LIST_HELP* @fol_Generalizations(%struct.term* %9, %struct.term* %10)
  %call7 = call %struct.LIST_HELP* @list_Cons(i8* %8, %struct.LIST_HELP* %call6)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Matchables, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Matchables, align 8
  %call8 = call %struct.term* @fol_MostGeneralFormula(%struct.LIST_HELP* %11)
  store %struct.term* %call8, %struct.term** %Hit, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Matchables, align 8
  call void @list_Delete(%struct.LIST_HELP* %12)
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Allmatches, align 8
  %14 = load %struct.term*, %struct.term** %Hit, align 8
  %15 = bitcast %struct.term* %14 to i8*
  %call9 = call i32 @list_PointerMember(%struct.LIST_HELP* %13, i8* %15)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.34, label %if.then.11

if.then.11:                                       ; preds = %if.then
  %16 = load %struct.term*, %struct.term** %Hit, align 8
  %17 = bitcast %struct.term* %16 to i8*
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Allmatches, align 8
  %call12 = call %struct.LIST_HELP* @list_Cons(i8* %17, %struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Allmatches, align 8
  %19 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %20 = load %struct.term*, %struct.term** %Hit, align 8
  %call13 = call %struct.LIST_HELP* @fol_Instances(%struct.term* %19, %struct.term* %20)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Matchables, align 8
  %21 = load %struct.term*, %struct.term** %Hit, align 8
  %call14 = call i32 @ren_Polarity(%struct.term* %21)
  store i32 %call14, i32* %Polarity, align 4
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Matchables, align 8
  store %struct.LIST_HELP* %22, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.then.11
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %23)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot18 = xor i1 %tobool17, true
  br i1 %lnot18, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.15
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Allmatches, align 8
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %25)
  %call21 = call i32 @list_PointerMember(%struct.LIST_HELP* %24, i8* %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %for.body.19
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %26, i8* null)
  br label %if.end.27

if.else:                                          ; preds = %for.body.19
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call24 = call i8* @list_Car(%struct.LIST_HELP* %27)
  %28 = bitcast i8* %call24 to %struct.term*
  %call25 = call i32 @ren_Polarity(%struct.term* %28)
  store i32 %call25, i32* %NewPol, align 4
  %29 = load i32, i32* %NewPol, align 4
  %30 = load i32, i32* %Polarity, align 4
  %cmp = icmp ne i32 %29, %30
  br i1 %cmp, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %if.else
  store i32 0, i32* %Polarity, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.26, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call28 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %31)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Matchables, align 8
  %call29 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %32, i8* null)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Matchables, align 8
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Matchables, align 8
  %call30 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %33)
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Allmatches, align 8
  %call31 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call30, %struct.LIST_HELP* %34)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %Allmatches, align 8
  %35 = load %struct.term*, %struct.term** %Hit, align 8
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Matchables, align 8
  %37 = load i32, i32* %Polarity, align 4
  %call32 = call %struct.RENAMING_NODE* @ren_Create(%struct.term* %35, %struct.LIST_HELP* %36, i32 %37)
  %38 = bitcast %struct.RENAMING_NODE* %call32 to i8*
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings, align 8
  %call33 = call %struct.LIST_HELP* @list_Cons(i8* %38, %struct.LIST_HELP* %39)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %Renamings, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %for.end, %if.then
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %for.body
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call37 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %40)
  store %struct.LIST_HELP* %call37, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Allmatches, align 8
  call void @list_Delete(%struct.LIST_HELP* %41)
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings, align 8
  ret %struct.LIST_HELP* %42
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
define internal %struct.LIST_HELP* @list_Cons(i8* %Ptr, %struct.LIST_HELP* %List) #2 {
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

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.RENAMING_NODE* @ren_Create(%struct.term* %hit, %struct.LIST_HELP* %matches, i32 %polarity) #2 {
entry:
  %hit.addr = alloca %struct.term*, align 8
  %matches.addr = alloca %struct.LIST_HELP*, align 8
  %polarity.addr = alloca i32, align 4
  %Result = alloca %struct.RENAMING_NODE*, align 8
  store %struct.term* %hit, %struct.term** %hit.addr, align 8
  store %struct.LIST_HELP* %matches, %struct.LIST_HELP** %matches.addr, align 8
  store i32 %polarity, i32* %polarity.addr, align 4
  %call = call i8* @memory_Malloc(i32 24)
  %0 = bitcast i8* %call to %struct.RENAMING_NODE*
  store %struct.RENAMING_NODE* %0, %struct.RENAMING_NODE** %Result, align 8
  %1 = load %struct.term*, %struct.term** %hit.addr, align 8
  %2 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Result, align 8
  %hit1 = getelementptr inbounds %struct.RENAMING_NODE, %struct.RENAMING_NODE* %2, i32 0, i32 0
  store %struct.term* %1, %struct.term** %hit1, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %matches.addr, align 8
  %4 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Result, align 8
  %matches2 = getelementptr inbounds %struct.RENAMING_NODE, %struct.RENAMING_NODE* %4, i32 0, i32 1
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %matches2, align 8
  %5 = load i32, i32* %polarity.addr, align 4
  %6 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Result, align 8
  %polarity3 = getelementptr inbounds %struct.RENAMING_NODE, %struct.RENAMING_NODE* %6, i32 0, i32 3
  store i32 %5, i32* %polarity3, align 4
  %7 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Result, align 8
  %general = getelementptr inbounds %struct.RENAMING_NODE, %struct.RENAMING_NODE* %7, i32 0, i32 2
  store i32 0, i32* %general, align 4
  %8 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Result, align 8
  ret %struct.RENAMING_NODE* %8
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

; Function Attrs: nounwind uwtable
define internal i32 @ren_Polarity(%struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %SuperTerm = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.term* @term_Superterm(%struct.term* %0)
  store %struct.term* %call, %struct.term** %SuperTerm, align 8
  %1 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %tobool = icmp ne %struct.term* %1, null
  br i1 %tobool, label %if.then, label %if.end.37

if.then:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %2)
  store i32 %call1, i32* %Top, align 4
  %3 = load i32, i32* %Top, align 4
  %call2 = call i32 @fol_And()
  %call3 = call i32 @symbol_Equal(i32 %3, i32 %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load i32, i32* %Top, align 4
  %call5 = call i32 @fol_Or()
  %call6 = call i32 @symbol_Equal(i32 %4, i32 %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.11, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %Top, align 4
  %call9 = call i32 @fol_IsQuantifier(i32 %5)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %lor.lhs.false.8, %lor.lhs.false, %if.then
  %6 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call12 = call i32 @ren_Polarity(%struct.term* %6)
  store i32 %call12, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.8
  %7 = load i32, i32* %Top, align 4
  %call13 = call i32 @fol_Not()
  %call14 = call i32 @symbol_Equal(i32 %7, i32 %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end
  %8 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call17 = call i32 @ren_Polarity(%struct.term* %8)
  %sub = sub nsw i32 0, %call17
  store i32 %sub, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end
  %9 = load i32, i32* %Top, align 4
  %call19 = call i32 @fol_Equiv()
  %call20 = call i32 @symbol_Equal(i32 %9, i32 %call19)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  %10 = load i32, i32* %Top, align 4
  %call24 = call i32 @fol_Implies()
  %call25 = call i32 @symbol_Equal(i32 %10, i32 %call24)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %if.end.23
  %11 = load %struct.term*, %struct.term** %Term.addr, align 8
  %12 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call28 = call %struct.term* @term_FirstArgument(%struct.term* %12)
  %cmp = icmp eq %struct.term* %11, %call28
  br i1 %cmp, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.then.27
  %13 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call30 = call i32 @ren_Polarity(%struct.term* %13)
  %sub31 = sub nsw i32 0, %call30
  store i32 %sub31, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.27
  %14 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call32 = call i32 @ren_Polarity(%struct.term* %14)
  store i32 %call32, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end.23
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call34 = call i32 @fflush(%struct._IO_FILE* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i32 0, i32 0), i32 1104)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call36 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %17)
  call void @misc_DumpCore()
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.33, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.else, %if.then.29, %if.then.22, %if.then.16, %if.then.11
  %18 = load i32, i32* %retval
  ret i32 %18
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

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @ren_FreeRenaming(%struct.LIST_HELP* %Renamings) #0 {
entry:
  %Renamings.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Father = alloca %struct.term*, align 8
  %Term = alloca %struct.term*, align 8
  %Candidate = alloca %struct.RENAMING_NODE*, align 8
  store %struct.LIST_HELP* %Renamings, %struct.LIST_HELP** %Renamings.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call1 to %struct.RENAMING_NODE*
  store %struct.RENAMING_NODE* %3, %struct.RENAMING_NODE** %Candidate, align 8
  %4 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Candidate, align 8
  %call2 = call %struct.LIST_HELP* @ren_Matches(%struct.RENAMING_NODE* %4)
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end.19

if.then:                                          ; preds = %for.body
  %5 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Candidate, align 8
  %call5 = call %struct.term* @ren_Hit(%struct.RENAMING_NODE* %5)
  store %struct.term* %call5, %struct.term** %Term, align 8
  %6 = load %struct.term*, %struct.term** %Term, align 8
  %call6 = call %struct.term* @term_Superterm(%struct.term* %6)
  store %struct.term* %call6, %struct.term** %Father, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %7 = load %struct.term*, %struct.term** %Father, align 8
  %call7 = call i32 @term_HasTermStamp(%struct.term* %7)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct.term*, %struct.term** %Father, align 8
  %call9 = call %struct.term* @term_Superterm(%struct.term* %8)
  %tobool10 = icmp ne %struct.term* %call9, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %tobool10, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load %struct.term*, %struct.term** %Father, align 8
  %call11 = call %struct.term* @term_Superterm(%struct.term* %10)
  store %struct.term* %call11, %struct.term** %Father, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load %struct.term*, %struct.term** %Term, align 8
  call void @term_ResetTermStamp(%struct.term* %11)
  %12 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Candidate, align 8
  %call12 = call i32 @ren_General(%struct.RENAMING_NODE* %12)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %13 = load %struct.term*, %struct.term** %Father, align 8
  %14 = load %struct.term*, %struct.term** %Father, align 8
  %call14 = call i32 @ren_Polarity(%struct.term* %14)
  %15 = load %struct.term*, %struct.term** %Term, align 8
  %16 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Candidate, align 8
  %call15 = call i32 @ren_OverallPolarity(%struct.RENAMING_NODE* %16)
  %call16 = call i32 @ren_HasNonZeroBenefit(%struct.term* %13, i32 %call14, %struct.term* %15, i32 %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false, %while.end
  %17 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Candidate, align 8
  call void @ren_Delete(%struct.RENAMING_NODE* %17)
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %18, i8* null)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %19 = load %struct.term*, %struct.term** %Term, align 8
  call void @term_SetTermStamp(%struct.term* %19)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.18
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  %call21 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %21, i8* null)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Renamings.addr, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  ret %struct.LIST_HELP* %22
}

declare %struct.LIST_HELP* @list_Sort(%struct.LIST_HELP*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ren_RootDistanceSmaller(%struct.RENAMING_NODE* %Ren1, %struct.RENAMING_NODE* %Ren2) #0 {
entry:
  %Ren1.addr = alloca %struct.RENAMING_NODE*, align 8
  %Ren2.addr = alloca %struct.RENAMING_NODE*, align 8
  store %struct.RENAMING_NODE* %Ren1, %struct.RENAMING_NODE** %Ren1.addr, align 8
  store %struct.RENAMING_NODE* %Ren2, %struct.RENAMING_NODE** %Ren2.addr, align 8
  %0 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Ren1.addr, align 8
  %call = call %struct.term* @ren_Hit(%struct.RENAMING_NODE* %0)
  %1 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Ren2.addr, align 8
  %call1 = call %struct.term* @ren_Hit(%struct.RENAMING_NODE* %1)
  %call2 = call i32 @term_RootDistanceSmaller(%struct.term* %call, %struct.term* %call1)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @ren_SolveDependencies(%struct.LIST_HELP* %Renamings) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Renamings.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Renaming = alloca %struct.RENAMING_NODE*, align 8
  %ActMatch = alloca %struct.term*, align 8
  store %struct.LIST_HELP* %Renamings, %struct.LIST_HELP** %Renamings.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call1 to %struct.RENAMING_NODE*
  store %struct.RENAMING_NODE* %3, %struct.RENAMING_NODE** %Renaming, align 8
  %4 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Renaming, align 8
  %call2 = call %struct.LIST_HELP* @ren_Matches(%struct.RENAMING_NODE* %4)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool4, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call5 to %struct.term*
  store %struct.term* %7, %struct.term** %ActMatch, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  %9 = load %struct.term*, %struct.term** %ActMatch, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  %call7 = call %struct.LIST_HELP* @ren_RemoveAllSubterms(%struct.term* %9, %struct.LIST_HELP* %call6)
  call void @list_Rplacd(%struct.LIST_HELP* %8, %struct.LIST_HELP* %call7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  %call9 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  %call10 = call %struct.LIST_HELP* @ren_SolveDependencies(%struct.LIST_HELP* %call9)
  call void @list_Rplacd(%struct.LIST_HELP* %12, %struct.LIST_HELP* %call10)
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  store %struct.LIST_HELP* %14, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %15
}

declare i32 @puts(i8*) #1

declare void @fol_PrettyPrintDFG(%struct.term*) #1

; Function Attrs: nounwind uwtable
define void @ren_PrettyPrint(%struct.RENAMING_NODE* %Ren) #0 {
entry:
  %Ren.addr = alloca %struct.RENAMING_NODE*, align 8
  %Matches = alloca %struct.LIST_HELP*, align 8
  store %struct.RENAMING_NODE* %Ren, %struct.RENAMING_NODE** %Ren.addr, align 8
  %call = call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  %call1 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0))
  %0 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Ren.addr, align 8
  %call2 = call %struct.term* @ren_Hit(%struct.RENAMING_NODE* %0)
  call void @fol_PrettyPrintDFG(%struct.term* %call2)
  %call3 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %1 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Ren.addr, align 8
  %call4 = call %struct.LIST_HELP* @ren_Matches(%struct.RENAMING_NODE* %1)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Matches, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Matches, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Matches, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call6 to %struct.term*
  call void @fol_PrettyPrintDFG(%struct.term* %4)
  %call7 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Matches, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Matches, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Ren.addr, align 8
  %call9 = call i32 @ren_OverallPolarity(%struct.RENAMING_NODE* %6)
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 %call9)
  %7 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Ren.addr, align 8
  %call11 = call i32 @ren_General(%struct.RENAMING_NODE* %7)
  %tobool12 = icmp ne i32 %call11, 0
  %cond = select i1 %tobool12, i32 1, i32 0
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 %cond)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @ren_FormulaRename(%struct.term* %Term, %struct.LIST_HELP* %Renamings, i32* %Precedence, %struct.LIST_HELP** %SkolemSymbols) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Renamings.addr = alloca %struct.LIST_HELP*, align 8
  %Precedence.addr = alloca i32*, align 8
  %SkolemSymbols.addr = alloca %struct.LIST_HELP**, align 8
  %Result = alloca %struct.term*, align 8
  %ActTerm = alloca %struct.term*, align 8
  %Hit = alloca %struct.term*, align 8
  %DefTerm = alloca %struct.term*, align 8
  %Superterm = alloca %struct.term*, align 8
  %NewTerm = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %FreeVariables = alloca %struct.LIST_HELP*, align 8
  %Args = alloca %struct.LIST_HELP*, align 8
  %AllMatches = alloca %struct.LIST_HELP*, align 8
  %ActSymbol = alloca i32, align 4
  %Renaming = alloca %struct.RENAMING_NODE*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.LIST_HELP* %Renamings, %struct.LIST_HELP** %Renamings.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.LIST_HELP** %SkolemSymbols, %struct.LIST_HELP*** %SkolemSymbols.addr, align 8
  store %struct.term* null, %struct.term** %DefTerm, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %AllMatches, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i32 @fol_And()
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %2 = bitcast %struct.term* %1 to i8*
  %call3 = call %struct.LIST_HELP* @list_List(i8* %2)
  %call4 = call %struct.term* @term_Create(i32 %call2, %struct.LIST_HELP* %call3)
  store %struct.term* %call4, %struct.term** %Result, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %3, %struct.term** %retval
  br label %return

if.end:                                           ; preds = %if.then
  store i32 0, i32* %ActSymbol, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.105, %if.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call7 to %struct.RENAMING_NODE*
  store %struct.RENAMING_NODE* %6, %struct.RENAMING_NODE** %Renaming, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Renamings.addr, align 8
  %8 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Renaming, align 8
  %call9 = call %struct.term* @ren_Hit(%struct.RENAMING_NODE* %8)
  store %struct.term* %call9, %struct.term** %Hit, align 8
  %9 = load %struct.term*, %struct.term** %Hit, align 8
  %call10 = call %struct.term* @term_Superterm(%struct.term* %9)
  store %struct.term* %call10, %struct.term** %Superterm, align 8
  %10 = load %struct.term*, %struct.term** %Hit, align 8
  %call11 = call %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %10)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %FreeVariables, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeVariables, align 8
  %call12 = call i32 @list_Length(%struct.LIST_HELP* %11)
  %12 = load i32*, i32** %Precedence.addr, align 8
  %call13 = call i32 @symbol_CreateSkolemPredicate(i32 %call12, i32* %12)
  store i32 %call13, i32* %ActSymbol, align 4
  %13 = load i32, i32* %ActSymbol, align 4
  %conv = sext i32 %13 to i64
  %14 = inttoptr i64 %conv to i8*
  %15 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %SkolemSymbols.addr, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %15, align 8
  %call14 = call %struct.LIST_HELP* @list_Cons(i8* %14, %struct.LIST_HELP* %16)
  %17 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %SkolemSymbols.addr, align 8
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %17, align 8
  %18 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Renaming, align 8
  %call15 = call i32 @ren_General(%struct.RENAMING_NODE* %18)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %while.body
  %19 = load %struct.term*, %struct.term** %Hit, align 8
  %call18 = call %struct.term* @term_Copy(%struct.term* %19)
  store %struct.term* %call18, %struct.term** %Hit, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %while.body
  %20 = load i32, i32* %ActSymbol, align 4
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeVariables, align 8
  %call20 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %21)
  %call21 = call %struct.term* @term_Create(i32 %20, %struct.LIST_HELP* %call20)
  store %struct.term* %call21, %struct.term** %NewTerm, align 8
  %22 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Renaming, align 8
  %call22 = call i32 @ren_OverallPolarity(%struct.RENAMING_NODE* %22)
  switch i32 %call22, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.28
    i32 -1, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %if.end.19
  %call23 = call i32 @fol_Equiv()
  %23 = load %struct.term*, %struct.term** %NewTerm, align 8
  %call24 = call %struct.term* @term_Copy(%struct.term* %23)
  %24 = bitcast %struct.term* %call24 to i8*
  %25 = load %struct.term*, %struct.term** %Hit, align 8
  %26 = bitcast %struct.term* %25 to i8*
  %call25 = call %struct.LIST_HELP* @list_List(i8* %26)
  %call26 = call %struct.LIST_HELP* @list_Cons(i8* %24, %struct.LIST_HELP* %call25)
  %call27 = call %struct.term* @term_Create(i32 %call23, %struct.LIST_HELP* %call26)
  store %struct.term* %call27, %struct.term** %DefTerm, align 8
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.end.19
  %call29 = call i32 @fol_Implies()
  %27 = load %struct.term*, %struct.term** %NewTerm, align 8
  %call30 = call %struct.term* @term_Copy(%struct.term* %27)
  %28 = bitcast %struct.term* %call30 to i8*
  %29 = load %struct.term*, %struct.term** %Hit, align 8
  %30 = bitcast %struct.term* %29 to i8*
  %call31 = call %struct.LIST_HELP* @list_List(i8* %30)
  %call32 = call %struct.LIST_HELP* @list_Cons(i8* %28, %struct.LIST_HELP* %call31)
  %call33 = call %struct.term* @term_Create(i32 %call29, %struct.LIST_HELP* %call32)
  store %struct.term* %call33, %struct.term** %DefTerm, align 8
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end.19
  %call35 = call i32 @fol_Implies()
  %31 = load %struct.term*, %struct.term** %Hit, align 8
  %32 = bitcast %struct.term* %31 to i8*
  %33 = load %struct.term*, %struct.term** %NewTerm, align 8
  %call36 = call %struct.term* @term_Copy(%struct.term* %33)
  %34 = bitcast %struct.term* %call36 to i8*
  %call37 = call %struct.LIST_HELP* @list_List(i8* %34)
  %call38 = call %struct.LIST_HELP* @list_Cons(i8* %32, %struct.LIST_HELP* %call37)
  %call39 = call %struct.term* @term_Create(i32 %call35, %struct.LIST_HELP* %call38)
  store %struct.term* %call39, %struct.term** %DefTerm, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.19, %sw.bb.34, %sw.bb.28, %sw.bb
  %35 = load %struct.term*, %struct.term** %DefTerm, align 8
  %call40 = call %struct.term* @term_FirstArgument(%struct.term* %35)
  %36 = load %struct.term*, %struct.term** %DefTerm, align 8
  call void @term_RplacSuperterm(%struct.term* %call40, %struct.term* %36)
  %37 = load %struct.term*, %struct.term** %DefTerm, align 8
  %call41 = call %struct.term* @term_SecondArgument(%struct.term* %37)
  %38 = load %struct.term*, %struct.term** %DefTerm, align 8
  call void @term_RplacSuperterm(%struct.term* %call41, %struct.term* %38)
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeVariables, align 8
  %call42 = call i32 @list_Empty(%struct.LIST_HELP* %39)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.49, label %if.then.44

if.then.44:                                       ; preds = %sw.epilog
  %call45 = call i32 @fol_All()
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeVariables, align 8
  %call46 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %40)
  %41 = load %struct.term*, %struct.term** %DefTerm, align 8
  %42 = bitcast %struct.term* %41 to i8*
  %call47 = call %struct.LIST_HELP* @list_List(i8* %42)
  %call48 = call %struct.term* @fol_CreateQuantifier(i32 %call45, %struct.LIST_HELP* %call46, %struct.LIST_HELP* %call47)
  store %struct.term* %call48, %struct.term** %DefTerm, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.44, %sw.epilog
  %43 = load %struct.term*, %struct.term** %Result, align 8
  %44 = load %struct.term*, %struct.term** %Result, align 8
  %call50 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %44)
  %45 = load %struct.term*, %struct.term** %DefTerm, align 8
  %46 = bitcast %struct.term* %45 to i8*
  %call51 = call %struct.LIST_HELP* @list_List(i8* %46)
  %call52 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call50, %struct.LIST_HELP* %call51)
  call void @term_RplacArgumentList(%struct.term* %43, %struct.LIST_HELP* %call52)
  %47 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Renaming, align 8
  %call53 = call i32 @ren_General(%struct.RENAMING_NODE* %47)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.else.65, label %if.then.55

if.then.55:                                       ; preds = %if.end.49
  %48 = load %struct.term*, %struct.term** %NewTerm, align 8
  %49 = load %struct.term*, %struct.term** %Superterm, align 8
  call void @term_RplacSuperterm(%struct.term* %48, %struct.term* %49)
  %50 = load %struct.term*, %struct.term** %Superterm, align 8
  %call56 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %50)
  store %struct.LIST_HELP* %call56, %struct.LIST_HELP** %Args, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.55
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call57 = call i32 @list_Empty(%struct.LIST_HELP* %51)
  %tobool58 = icmp ne i32 %call57, 0
  %lnot59 = xor i1 %tobool58, true
  br i1 %lnot59, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call60 = call i8* @list_Car(%struct.LIST_HELP* %52)
  %53 = bitcast i8* %call60 to %struct.term*
  %54 = load %struct.term*, %struct.term** %Hit, align 8
  %cmp = icmp eq %struct.term* %53, %54
  br i1 %cmp, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %for.body
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %56 = load %struct.term*, %struct.term** %NewTerm, align 8
  %57 = bitcast %struct.term* %56 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %55, i8* %57)
  br label %for.end

if.end.63:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.63
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call64 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %58)
  store %struct.LIST_HELP* %call64, %struct.LIST_HELP** %Args, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.62, %for.cond
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.49
  %59 = load %struct.term*, %struct.term** %NewTerm, align 8
  call void @term_Delete(%struct.term* %59)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.65, %for.end
  %60 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Renaming, align 8
  %call67 = call %struct.LIST_HELP* @ren_Matches(%struct.RENAMING_NODE* %60)
  store %struct.LIST_HELP* %call67, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.103, %if.end.66
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call69 = call i32 @list_Empty(%struct.LIST_HELP* %61)
  %tobool70 = icmp ne i32 %call69, 0
  %lnot71 = xor i1 %tobool70, true
  br i1 %lnot71, label %for.body.72, label %for.end.105

for.body.72:                                      ; preds = %for.cond.68
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call73 = call i8* @list_Car(%struct.LIST_HELP* %62)
  %63 = bitcast i8* %call73 to %struct.term*
  store %struct.term* %63, %struct.term** %ActTerm, align 8
  %64 = load %struct.term*, %struct.term** %ActTerm, align 8
  %call74 = call %struct.term* @term_Superterm(%struct.term* %64)
  store %struct.term* %call74, %struct.term** %Superterm, align 8
  %65 = load i32, i32* %ActSymbol, align 4
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeVariables, align 8
  %call75 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %66)
  %call76 = call %struct.term* @term_Create(i32 %65, %struct.LIST_HELP* %call75)
  store %struct.term* %call76, %struct.term** %NewTerm, align 8
  call void @cont_StartBinding()
  %call77 = call %struct.binding* @cont_LeftContext()
  %67 = load %struct.term*, %struct.term** %Hit, align 8
  %68 = load %struct.term*, %struct.term** %ActTerm, align 8
  %call78 = call i32 @unify_MatchFlexible(%struct.binding* %call77, %struct.term* %67, %struct.term* %68)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.else.83

if.then.80:                                       ; preds = %for.body.72
  %call81 = call %struct.binding* @cont_LeftContext()
  %69 = load %struct.term*, %struct.term** %NewTerm, align 8
  %call82 = call %struct.term* @cont_ApplyBindingsModuloMatching(%struct.binding* %call81, %struct.term* %69, i32 1)
  br label %if.end.87

if.else.83:                                       ; preds = %for.body.72
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call84 = call i32 @fflush(%struct._IO_FILE* %70)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i32 0, i32 0), i32 1298)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.24, i32 0, i32 0))
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call86 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %72)
  call void @misc_DumpCore()
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.83, %if.then.80
  %call88 = call i32 @cont_BackTrack()
  %73 = load %struct.term*, %struct.term** %NewTerm, align 8
  %74 = load %struct.term*, %struct.term** %Superterm, align 8
  call void @term_RplacSuperterm(%struct.term* %73, %struct.term* %74)
  %75 = load %struct.term*, %struct.term** %Superterm, align 8
  %call89 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %75)
  store %struct.LIST_HELP* %call89, %struct.LIST_HELP** %Args, align 8
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.100, %if.end.87
  %76 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call91 = call i32 @list_Empty(%struct.LIST_HELP* %76)
  %tobool92 = icmp ne i32 %call91, 0
  %lnot93 = xor i1 %tobool92, true
  br i1 %lnot93, label %for.body.94, label %for.end.102

for.body.94:                                      ; preds = %for.cond.90
  %77 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call95 = call i8* @list_Car(%struct.LIST_HELP* %77)
  %78 = load %struct.term*, %struct.term** %ActTerm, align 8
  %79 = bitcast %struct.term* %78 to i8*
  %cmp96 = icmp eq i8* %call95, %79
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %for.body.94
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %81 = load %struct.term*, %struct.term** %NewTerm, align 8
  %82 = bitcast %struct.term* %81 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %80, i8* %82)
  br label %for.end.102

if.end.99:                                        ; preds = %for.body.94
  br label %for.inc.100

for.inc.100:                                      ; preds = %if.end.99
  %83 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call101 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %83)
  store %struct.LIST_HELP* %call101, %struct.LIST_HELP** %Args, align 8
  br label %for.cond.90

for.end.102:                                      ; preds = %if.then.98, %for.cond.90
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.end.102
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call104 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %84)
  store %struct.LIST_HELP* %call104, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.68

for.end.105:                                      ; preds = %for.cond.68
  %85 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Renaming, align 8
  %call106 = call %struct.LIST_HELP* @ren_Matches(%struct.RENAMING_NODE* %85)
  %86 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AllMatches, align 8
  %call107 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call106, %struct.LIST_HELP* %86)
  store %struct.LIST_HELP* %call107, %struct.LIST_HELP** %AllMatches, align 8
  %87 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Renaming, align 8
  %call108 = call %struct.LIST_HELP* @list_Nil()
  call void @ren_SetMatches(%struct.RENAMING_NODE* %87, %struct.LIST_HELP* %call108)
  %88 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeVariables, align 8
  call void @list_Delete(%struct.LIST_HELP* %88)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %89 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AllMatches, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %89, void (i8*)* bitcast (void (%struct.term*)* @term_Delete to void (i8*)*))
  %90 = load %struct.term*, %struct.term** %Result, align 8
  store %struct.term* %90, %struct.term** %retval
  br label %return

return:                                           ; preds = %while.end, %if.else
  %91 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %91
}

declare void @list_DeleteWithElement(%struct.LIST_HELP*, void (i8*)*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @ren_Delete(%struct.RENAMING_NODE* %ren) #2 {
entry:
  %ren.addr = alloca %struct.RENAMING_NODE*, align 8
  store %struct.RENAMING_NODE* %ren, %struct.RENAMING_NODE** %ren.addr, align 8
  %0 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %ren.addr, align 8
  %matches = getelementptr inbounds %struct.RENAMING_NODE, %struct.RENAMING_NODE* %0, i32 0, i32 1
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %matches, align 8
  call void @list_Delete(%struct.LIST_HELP* %1)
  %2 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %ren.addr, align 8
  %3 = bitcast %struct.RENAMING_NODE* %2 to i8*
  call void @memory_Free(i8* %3, i32 24)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Delete(%struct.LIST_HELP* %L) #2 {
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
define internal void @term_StopStamp() #2 {
entry:
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @ren_Hit(%struct.RENAMING_NODE* %ren) #2 {
entry:
  %ren.addr = alloca %struct.RENAMING_NODE*, align 8
  store %struct.RENAMING_NODE* %ren, %struct.RENAMING_NODE** %ren.addr, align 8
  %0 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %ren.addr, align 8
  %hit = getelementptr inbounds %struct.RENAMING_NODE, %struct.RENAMING_NODE* %0, i32 0, i32 0
  %1 = load %struct.term*, %struct.term** %hit, align 8
  ret %struct.term* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @ren_Matches(%struct.RENAMING_NODE* %ren) #2 {
entry:
  %ren.addr = alloca %struct.RENAMING_NODE*, align 8
  store %struct.RENAMING_NODE* %ren, %struct.RENAMING_NODE** %ren.addr, align 8
  %0 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %ren.addr, align 8
  %matches = getelementptr inbounds %struct.RENAMING_NODE, %struct.RENAMING_NODE* %0, i32 0, i32 1
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %matches, align 8
  ret %struct.LIST_HELP* %1
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ren_OverallPolarity(%struct.RENAMING_NODE* %ren) #2 {
entry:
  %ren.addr = alloca %struct.RENAMING_NODE*, align 8
  store %struct.RENAMING_NODE* %ren, %struct.RENAMING_NODE** %ren.addr, align 8
  %0 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %ren.addr, align 8
  %polarity = getelementptr inbounds %struct.RENAMING_NODE, %struct.RENAMING_NODE* %0, i32 0, i32 3
  %1 = load i32, i32* %polarity, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ren_General(%struct.RENAMING_NODE* %ren) #2 {
entry:
  %ren.addr = alloca %struct.RENAMING_NODE*, align 8
  store %struct.RENAMING_NODE* %ren, %struct.RENAMING_NODE** %ren.addr, align 8
  %0 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %ren.addr, align 8
  %general = getelementptr inbounds %struct.RENAMING_NODE, %struct.RENAMING_NODE* %0, i32 0, i32 2
  %1 = load i32, i32* %general, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_ResetTermStamp(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %stamp = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 3
  store i32 0, i32* %stamp, align 4
  ret void
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
define internal i32 @symbol_IsPredicate(i32 %S) #2 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %call = call i32 @symbol_IsSignature(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %S.addr, align 4
  %call1 = call i32 @symbol_Type(i32 %1)
  %cmp = icmp eq i32 %call1, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_IsQuantifier(i32 %S) #2 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* @fol_ALL, align 4
  %1 = load i32, i32* %S.addr, align 4
  %call = call i32 @symbol_Equal(i32 %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i32, i32* @fol_EXIST, align 4
  %3 = load i32, i32* %S.addr, align 4
  %call1 = call i32 @symbol_Equal(i32 %2, i32 %3)
  %tobool2 = icmp ne i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_SecondArgument(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  %call = call i8* @list_Second(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call to %struct.term*
  ret %struct.term* %2
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
define internal i32 @symbol_IsSignature(i32 %S) #2 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %cmp = icmp slt i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Type(i32 %ActSymbol) #2 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  call void @symbol_CheckNoVariable(i32 %0)
  %1 = load i32, i32* %ActSymbol.addr, align 4
  %sub = sub nsw i32 0, %1
  %2 = load i32, i32* @symbol_TYPEMASK, align 4
  %and = and i32 %sub, %2
  ret i32 %and
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_CheckNoVariable(i32 %S) #2 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Equal(i32 %A, i32 %B) #2 {
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
define internal i8* @list_Second(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %0)
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %call)
  ret i8* %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Not() #2 {
entry:
  %0 = load i32, i32* @fol_NOT, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_FirstArgument(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  %call = call i8* @list_First(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call to %struct.term*
  ret %struct.term* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_IsAtom(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsPredicate(i32 %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_Superterm(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %super = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 1
  %term = bitcast %union.anon* %super to %struct.term**
  %1 = load %struct.term*, %struct.term** %term, align 8
  ret %struct.term* %1
}

; Function Attrs: nounwind uwtable
define internal i32 @ren_HasBenefit(%struct.term* %Term1, %struct.term* %Term2, i32 %Pol) #0 {
entry:
  %retval = alloca i32, align 4
  %Term1.addr = alloca %struct.term*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %Pol.addr = alloca i32, align 4
  %PFacOk = alloca i32, align 4
  %NotPFacOk = alloca i32, align 4
  %AFacOk = alloca i32, align 4
  %BFacOk = alloca i32, align 4
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  store i32 %Pol, i32* %Pol.addr, align 4
  %0 = load i32, i32* %Pol.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.27
    i32 -1, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call = call i32 @ren_PFactorOk(%struct.term* %1)
  store i32 %call, i32* %PFacOk, align 4
  %2 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call1 = call i32 @ren_NotPFactorOk(%struct.term* %2)
  store i32 %call1, i32* %NotPFacOk, align 4
  %3 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %4 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call2 = call i32 @ren_AFactorOk(%struct.term* %3, %struct.term* %4)
  store i32 %call2, i32* %AFacOk, align 4
  %5 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %6 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call3 = call i32 @ren_BFactorOk(%struct.term* %5, %struct.term* %6)
  store i32 %call3, i32* %BFacOk, align 4
  %7 = load i32, i32* %AFacOk, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %sw.bb
  %8 = load i32, i32* %BFacOk, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %land.lhs.true.5, label %lor.lhs.false

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* %PFacOk, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %land.lhs.true.7, label %lor.lhs.false

land.lhs.true.7:                                  ; preds = %land.lhs.true.5
  %10 = load i32, i32* %NotPFacOk, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %lor.end.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.7, %land.lhs.true.5, %land.lhs.true, %sw.bb
  %11 = load i32, i32* %AFacOk, align 4
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %land.lhs.true.10, label %lor.rhs

land.lhs.true.10:                                 ; preds = %lor.lhs.false
  %12 = load i32, i32* %PFacOk, align 4
  %tobool11 = icmp ne i32 %12, 0
  br i1 %tobool11, label %land.lhs.true.12, label %lor.rhs

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %13 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call13 = call i32 @ren_PExtraFactorOk(%struct.term* %13)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %lor.end.26, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true.12
  %14 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %15 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call16 = call i32 @ren_AExtraFactorOk(%struct.term* %14, %struct.term* %15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %lor.end.26, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.15, %land.lhs.true.10, %lor.lhs.false
  %16 = load i32, i32* %BFacOk, align 4
  %tobool18 = icmp ne i32 %16, 0
  br i1 %tobool18, label %land.lhs.true.19, label %land.end

land.lhs.true.19:                                 ; preds = %lor.rhs
  %17 = load i32, i32* %NotPFacOk, align 4
  %tobool20 = icmp ne i32 %17, 0
  br i1 %tobool20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.19
  %18 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call21 = call i32 @ren_NotPExtraFactorOk(%struct.term* %18)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %lor.end, label %lor.rhs.23

lor.rhs.23:                                       ; preds = %land.rhs
  %19 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %20 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call24 = call i32 @ren_BExtraFactorOk(%struct.term* %19, %struct.term* %20)
  %tobool25 = icmp ne i32 %call24, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.23, %land.rhs
  %21 = phi i1 [ true, %land.rhs ], [ %tobool25, %lor.rhs.23 ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true.19, %lor.rhs
  %22 = phi i1 [ false, %land.lhs.true.19 ], [ false, %lor.rhs ], [ %21, %lor.end ]
  br label %lor.end.26

lor.end.26:                                       ; preds = %land.end, %lor.lhs.false.15, %land.lhs.true.12, %land.lhs.true.7
  %23 = phi i1 [ true, %lor.lhs.false.15 ], [ true, %land.lhs.true.12 ], [ true, %land.lhs.true.7 ], [ %22, %land.end ]
  %lor.ext = zext i1 %23 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

sw.bb.27:                                         ; preds = %entry
  %24 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call28 = call i32 @ren_PFactorOk(%struct.term* %24)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %land.rhs.30, label %land.end.33

land.rhs.30:                                      ; preds = %sw.bb.27
  %25 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %26 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call31 = call i32 @ren_AFactorOk(%struct.term* %25, %struct.term* %26)
  %tobool32 = icmp ne i32 %call31, 0
  br label %land.end.33

land.end.33:                                      ; preds = %land.rhs.30, %sw.bb.27
  %27 = phi i1 [ false, %sw.bb.27 ], [ %tobool32, %land.rhs.30 ]
  %land.ext = zext i1 %27 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.bb.34:                                         ; preds = %entry
  %28 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call35 = call i32 @ren_NotPFactorOk(%struct.term* %28)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %land.rhs.37, label %land.end.40

land.rhs.37:                                      ; preds = %sw.bb.34
  %29 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %30 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call38 = call i32 @ren_BFactorOk(%struct.term* %29, %struct.term* %30)
  %tobool39 = icmp ne i32 %call38, 0
  br label %land.end.40

land.end.40:                                      ; preds = %land.rhs.37, %sw.bb.34
  %31 = phi i1 [ false, %sw.bb.34 ], [ %tobool39, %land.rhs.37 ]
  %land.ext41 = zext i1 %31 to i32
  store i32 %land.ext41, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call42 = call i32 @fflush(%struct._IO_FILE* %32)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i32 0, i32 0), i32 966)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call44 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %34)
  call void @misc_DumpCore()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %land.end.40, %land.end.33, %lor.end.26
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_SetTermStamp(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load i32, i32* @term_STAMP, align 4
  %1 = load %struct.term*, %struct.term** %T.addr, align 8
  %stamp = getelementptr inbounds %struct.term, %struct.term* %1, i32 0, i32 3
  store i32 %0, i32* %stamp, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2) #2 {
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
define internal i32 @fol_And() #2 {
entry:
  %0 = load i32, i32* @fol_AND, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Or() #2 {
entry:
  %0 = load i32, i32* @fol_OR, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Implies() #2 {
entry:
  %0 = load i32, i32* @fol_IMPLIES, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Equiv() #2 {
entry:
  %0 = load i32, i32* @fol_EQUIV, align 4
  ret i32 %0
}

declare i32 @fflush(%struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @misc_ErrorReport(i8*, ...) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_DumpCore() #2 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %3)
  call void @abort() #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_First(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ren_PFactorOk(%struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_HasTermStamp(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_IsAtom(%struct.term* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %2)
  store i32 %call3, i32* %Top, align 4
  %3 = load i32, i32* %Top, align 4
  %call4 = call i32 @fol_Equiv()
  %call5 = call i32 @symbol_Equal(i32 %3, i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.end
  %4 = load i32, i32* %Top, align 4
  %call8 = call i32 @fol_And()
  %call9 = call i32 @symbol_Equal(i32 %4, i32 %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false.7, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false.7
  %5 = load i32, i32* %Top, align 4
  %call13 = call i32 @fol_Not()
  %call14 = call i32 @symbol_Equal(i32 %5, i32 %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.12
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call17 = call %struct.term* @term_FirstArgument(%struct.term* %6)
  %call18 = call i32 @ren_NotPFactorOk(%struct.term* %call17)
  store i32 %call18, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.12
  %7 = load i32, i32* %Top, align 4
  %call20 = call i32 @fol_IsQuantifier(i32 %7)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.19
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call23 = call %struct.term* @term_SecondArgument(%struct.term* %8)
  %call24 = call i32 @ren_PFactorOk(%struct.term* %call23)
  store i32 %call24, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.19
  %9 = load i32, i32* %Top, align 4
  %call26 = call i32 @fol_Implies()
  %call27 = call i32 @symbol_Equal(i32 %9, i32 %call26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %if.end.25
  %10 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call30 = call %struct.term* @term_FirstArgument(%struct.term* %10)
  %call31 = call i32 @ren_NotPFactorOk(%struct.term* %call30)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.29
  %11 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call33 = call %struct.term* @term_SecondArgument(%struct.term* %11)
  %call34 = call i32 @ren_PFactorOk(%struct.term* %call33)
  %tobool35 = icmp ne i32 %call34, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.29
  %12 = phi i1 [ true, %if.then.29 ], [ %tobool35, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.25
  %13 = load i32, i32* %Top, align 4
  %call37 = call i32 @fol_Or()
  %call38 = call i32 @symbol_Equal(i32 %13, i32 %call37)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.50

if.then.40:                                       ; preds = %if.end.36
  %14 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call41 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %14)
  store %struct.LIST_HELP* %call41, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.40
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call42 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool43 = icmp ne i32 %call42, 0
  %lnot = xor i1 %tobool43, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call44 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call44 to %struct.term*
  %call45 = call i32 @ren_PFactorOk(%struct.term* %17)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.48:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call49 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call49, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.50

if.end.50:                                        ; preds = %for.end, %if.end.36
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.then.47, %lor.end, %if.then.22, %if.then.16, %if.then.11, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @ren_NotPFactorOk(%struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_HasTermStamp(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_IsAtom(%struct.term* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %2)
  store i32 %call3, i32* %Top, align 4
  %3 = load i32, i32* %Top, align 4
  %call4 = call i32 @fol_Equiv()
  %call5 = call i32 @symbol_Equal(i32 %3, i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.15, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.end
  %4 = load i32, i32* %Top, align 4
  %call8 = call i32 @fol_Or()
  %call9 = call i32 @symbol_Equal(i32 %4, i32 %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.15, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.7
  %5 = load i32, i32* %Top, align 4
  %call12 = call i32 @fol_Implies()
  %call13 = call i32 @symbol_Equal(i32 %5, i32 %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false.11, %lor.lhs.false.7, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false.11
  %6 = load i32, i32* %Top, align 4
  %call17 = call i32 @fol_Not()
  %call18 = call i32 @symbol_Equal(i32 %6, i32 %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.16
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call21 = call %struct.term* @term_FirstArgument(%struct.term* %7)
  %call22 = call i32 @ren_PFactorOk(%struct.term* %call21)
  store i32 %call22, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.16
  %8 = load i32, i32* %Top, align 4
  %call24 = call i32 @fol_IsQuantifier(i32 %8)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.23
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call27 = call %struct.term* @term_SecondArgument(%struct.term* %9)
  %call28 = call i32 @ren_NotPFactorOk(%struct.term* %call27)
  store i32 %call28, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.23
  %10 = load i32, i32* %Top, align 4
  %call30 = call i32 @fol_And()
  %call31 = call i32 @symbol_Equal(i32 %10, i32 %call30)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.43

if.then.33:                                       ; preds = %if.end.29
  %11 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call34 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %11)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.33
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call35 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool36 = icmp ne i32 %call35, 0
  %lnot = xor i1 %tobool36, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call37 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call37 to %struct.term*
  %call38 = call i32 @ren_NotPFactorOk(%struct.term* %14)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call42 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call42, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.43

if.end.43:                                        ; preds = %for.end, %if.end.29
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then.40, %if.then.26, %if.then.20, %if.then.15, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @ren_AFactorOk(%struct.term* %Term1, %struct.term* %Term2) #0 {
entry:
  %retval = alloca i32, align 4
  %Term1.addr = alloca %struct.term*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %Super = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Sub = alloca %struct.term*, align 8
  %Pol = alloca i32, align 4
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %cmp = icmp eq %struct.term* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call = call %struct.term* @term_Superterm(%struct.term* %2)
  store %struct.term* %call, %struct.term** %Super, align 8
  %3 = load %struct.term*, %struct.term** %Super, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %3)
  store i32 %call1, i32* %Top, align 4
  %4 = load i32, i32* %Top, align 4
  %call2 = call i32 @fol_And()
  %call3 = call i32 @symbol_Equal(i32 %4, i32 %call2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* %Top, align 4
  %call4 = call i32 @fol_IsQuantifier(i32 %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %6 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %7 = load %struct.term*, %struct.term** %Super, align 8
  %call7 = call i32 @ren_AFactorOk(%struct.term* %6, %struct.term* %7)
  store i32 %call7, i32* %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %Top, align 4
  %call9 = call i32 @fol_Not()
  %call10 = call i32 @symbol_Equal(i32 %8, i32 %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.8
  %9 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %10 = load %struct.term*, %struct.term** %Super, align 8
  %call13 = call i32 @ren_BFactorOk(%struct.term* %9, %struct.term* %10)
  store i32 %call13, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %11 = load i32, i32* %Top, align 4
  %call15 = call i32 @fol_Or()
  %call16 = call i32 @symbol_Equal(i32 %11, i32 %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %if.end.14
  %12 = load %struct.term*, %struct.term** %Super, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.18
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool21, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call22 to %struct.term*
  store %struct.term* %15, %struct.term** %Sub, align 8
  %16 = load %struct.term*, %struct.term** %Sub, align 8
  %17 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %cmp23 = icmp ne %struct.term* %16, %17
  br i1 %cmp23, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %for.body
  %18 = load %struct.term*, %struct.term** %Sub, align 8
  %call24 = call i32 @ren_PFactorOk(%struct.term* %18)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call28 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %21 = load %struct.term*, %struct.term** %Super, align 8
  %call29 = call i32 @ren_AFactorOk(%struct.term* %20, %struct.term* %21)
  store i32 %call29, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.14
  %22 = load i32, i32* %Top, align 4
  %call31 = call i32 @fol_Implies()
  %call32 = call i32 @symbol_Equal(i32 %22, i32 %call31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.44

if.then.34:                                       ; preds = %if.end.30
  %23 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %24 = load %struct.term*, %struct.term** %Super, align 8
  %call35 = call %struct.term* @term_FirstArgument(%struct.term* %24)
  %cmp36 = icmp eq %struct.term* %23, %call35
  br i1 %cmp36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.34
  %25 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %26 = load %struct.term*, %struct.term** %Super, align 8
  %call38 = call i32 @ren_BFactorOk(%struct.term* %25, %struct.term* %26)
  store i32 %call38, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.34
  %27 = load %struct.term*, %struct.term** %Super, align 8
  %call39 = call %struct.term* @term_FirstArgument(%struct.term* %27)
  %call40 = call i32 @ren_NotPFactorOk(%struct.term* %call39)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else
  %28 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %29 = load %struct.term*, %struct.term** %Super, align 8
  %call42 = call i32 @ren_AFactorOk(%struct.term* %28, %struct.term* %29)
  %tobool43 = icmp ne i32 %call42, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else
  %30 = phi i1 [ true, %if.else ], [ %tobool43, %lor.rhs ]
  %lor.ext = zext i1 %30 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.30
  %31 = load i32, i32* %Top, align 4
  %call45 = call i32 @fol_Equiv()
  %call46 = call i32 @symbol_Equal(i32 %31, i32 %call45)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.77

if.then.48:                                       ; preds = %if.end.44
  %32 = load %struct.term*, %struct.term** %Super, align 8
  %call49 = call i32 @ren_Polarity(%struct.term* %32)
  store i32 %call49, i32* %Pol, align 4
  %33 = load i32, i32* %Pol, align 4
  %cmp50 = icmp eq i32 %33, 0
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.then.48
  store i32 1, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.then.48
  %34 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %35 = load %struct.term*, %struct.term** %Super, align 8
  %call53 = call %struct.term* @term_FirstArgument(%struct.term* %35)
  %cmp54 = icmp eq %struct.term* %34, %call53
  br i1 %cmp54, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %if.end.52
  %36 = load %struct.term*, %struct.term** %Super, align 8
  %call56 = call %struct.term* @term_SecondArgument(%struct.term* %36)
  store %struct.term* %call56, %struct.term** %Term2.addr, align 8
  br label %if.end.59

if.else.57:                                       ; preds = %if.end.52
  %37 = load %struct.term*, %struct.term** %Super, align 8
  %call58 = call %struct.term* @term_FirstArgument(%struct.term* %37)
  store %struct.term* %call58, %struct.term** %Term2.addr, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.55
  %38 = load i32, i32* %Pol, align 4
  %cmp60 = icmp eq i32 %38, 1
  br i1 %cmp60, label %if.then.61, label %if.else.69

if.then.61:                                       ; preds = %if.end.59
  %39 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call62 = call i32 @ren_NotPFactorOk(%struct.term* %39)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %lor.end.67, label %lor.rhs.64

lor.rhs.64:                                       ; preds = %if.then.61
  %40 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %41 = load %struct.term*, %struct.term** %Super, align 8
  %call65 = call i32 @ren_AFactorOk(%struct.term* %40, %struct.term* %41)
  %tobool66 = icmp ne i32 %call65, 0
  br label %lor.end.67

lor.end.67:                                       ; preds = %lor.rhs.64, %if.then.61
  %42 = phi i1 [ true, %if.then.61 ], [ %tobool66, %lor.rhs.64 ]
  %lor.ext68 = zext i1 %42 to i32
  store i32 %lor.ext68, i32* %retval
  br label %return

if.else.69:                                       ; preds = %if.end.59
  %43 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call70 = call i32 @ren_PFactorOk(%struct.term* %43)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %lor.end.75, label %lor.rhs.72

lor.rhs.72:                                       ; preds = %if.else.69
  %44 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %45 = load %struct.term*, %struct.term** %Super, align 8
  %call73 = call i32 @ren_BFactorOk(%struct.term* %44, %struct.term* %45)
  %tobool74 = icmp ne i32 %call73, 0
  br label %lor.end.75

lor.end.75:                                       ; preds = %lor.rhs.72, %if.else.69
  %46 = phi i1 [ true, %if.else.69 ], [ %tobool74, %lor.rhs.72 ]
  %lor.ext76 = zext i1 %46 to i32
  store i32 %lor.ext76, i32* %retval
  br label %return

if.end.77:                                        ; preds = %if.end.44
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call78 = call i32 @fflush(%struct._IO_FILE* %47)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i32 0, i32 0), i32 539)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i32 0, i32 0))
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call80 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %49)
  call void @misc_DumpCore()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.77, %lor.end.75, %lor.end.67, %if.then.51, %lor.end, %if.then.37, %for.end, %if.then.26, %if.then.12, %if.then.6, %if.then
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @ren_BFactorOk(%struct.term* %Term1, %struct.term* %Term2) #0 {
entry:
  %retval = alloca i32, align 4
  %Term1.addr = alloca %struct.term*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %Super = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Sub = alloca %struct.term*, align 8
  %Pol = alloca i32, align 4
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %cmp = icmp eq %struct.term* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call = call %struct.term* @term_Superterm(%struct.term* %2)
  store %struct.term* %call, %struct.term** %Super, align 8
  %3 = load %struct.term*, %struct.term** %Super, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %3)
  store i32 %call1, i32* %Top, align 4
  %4 = load i32, i32* %Top, align 4
  %call2 = call i32 @fol_Or()
  %call3 = call i32 @symbol_Equal(i32 %4, i32 %call2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* %Top, align 4
  %call4 = call i32 @fol_IsQuantifier(i32 %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %6 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %7 = load %struct.term*, %struct.term** %Super, align 8
  %call7 = call i32 @ren_BFactorOk(%struct.term* %6, %struct.term* %7)
  store i32 %call7, i32* %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %Top, align 4
  %call9 = call i32 @fol_Not()
  %call10 = call i32 @symbol_Equal(i32 %8, i32 %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.8
  %9 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %10 = load %struct.term*, %struct.term** %Super, align 8
  %call13 = call i32 @ren_AFactorOk(%struct.term* %9, %struct.term* %10)
  store i32 %call13, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %11 = load i32, i32* %Top, align 4
  %call15 = call i32 @fol_And()
  %call16 = call i32 @symbol_Equal(i32 %11, i32 %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %if.end.14
  %12 = load %struct.term*, %struct.term** %Super, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.18
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool21, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call22 to %struct.term*
  store %struct.term* %15, %struct.term** %Sub, align 8
  %16 = load %struct.term*, %struct.term** %Sub, align 8
  %17 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %cmp23 = icmp ne %struct.term* %16, %17
  br i1 %cmp23, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %for.body
  %18 = load %struct.term*, %struct.term** %Sub, align 8
  %call24 = call i32 @ren_NotPFactorOk(%struct.term* %18)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call28 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %21 = load %struct.term*, %struct.term** %Super, align 8
  %call29 = call i32 @ren_BFactorOk(%struct.term* %20, %struct.term* %21)
  store i32 %call29, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.14
  %22 = load i32, i32* %Top, align 4
  %call31 = call i32 @fol_Implies()
  %call32 = call i32 @symbol_Equal(i32 %22, i32 %call31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.44

if.then.34:                                       ; preds = %if.end.30
  %23 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %24 = load %struct.term*, %struct.term** %Super, align 8
  %call35 = call %struct.term* @term_FirstArgument(%struct.term* %24)
  %cmp36 = icmp eq %struct.term* %23, %call35
  br i1 %cmp36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.34
  %25 = load %struct.term*, %struct.term** %Super, align 8
  %call38 = call %struct.term* @term_SecondArgument(%struct.term* %25)
  %call39 = call i32 @ren_PFactorOk(%struct.term* %call38)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.37
  %26 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %27 = load %struct.term*, %struct.term** %Super, align 8
  %call41 = call i32 @ren_AFactorOk(%struct.term* %26, %struct.term* %27)
  %tobool42 = icmp ne i32 %call41, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.37
  %28 = phi i1 [ true, %if.then.37 ], [ %tobool42, %lor.rhs ]
  %lor.ext = zext i1 %28 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.34
  %29 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %30 = load %struct.term*, %struct.term** %Super, align 8
  %call43 = call i32 @ren_BFactorOk(%struct.term* %29, %struct.term* %30)
  store i32 %call43, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.30
  %31 = load i32, i32* %Top, align 4
  %call45 = call i32 @fol_Equiv()
  %call46 = call i32 @symbol_Equal(i32 %31, i32 %call45)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.77

if.then.48:                                       ; preds = %if.end.44
  %32 = load %struct.term*, %struct.term** %Super, align 8
  %call49 = call i32 @ren_Polarity(%struct.term* %32)
  store i32 %call49, i32* %Pol, align 4
  %33 = load i32, i32* %Pol, align 4
  %cmp50 = icmp eq i32 %33, 0
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.then.48
  store i32 1, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.then.48
  %34 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %35 = load %struct.term*, %struct.term** %Super, align 8
  %call53 = call %struct.term* @term_FirstArgument(%struct.term* %35)
  %cmp54 = icmp eq %struct.term* %34, %call53
  br i1 %cmp54, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %if.end.52
  %36 = load %struct.term*, %struct.term** %Super, align 8
  %call56 = call %struct.term* @term_SecondArgument(%struct.term* %36)
  store %struct.term* %call56, %struct.term** %Term2.addr, align 8
  br label %if.end.59

if.else.57:                                       ; preds = %if.end.52
  %37 = load %struct.term*, %struct.term** %Super, align 8
  %call58 = call %struct.term* @term_FirstArgument(%struct.term* %37)
  store %struct.term* %call58, %struct.term** %Term2.addr, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.55
  %38 = load i32, i32* %Pol, align 4
  %cmp60 = icmp eq i32 %38, 1
  br i1 %cmp60, label %if.then.61, label %if.else.69

if.then.61:                                       ; preds = %if.end.59
  %39 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call62 = call i32 @ren_PFactorOk(%struct.term* %39)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %lor.end.67, label %lor.rhs.64

lor.rhs.64:                                       ; preds = %if.then.61
  %40 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %41 = load %struct.term*, %struct.term** %Super, align 8
  %call65 = call i32 @ren_AFactorOk(%struct.term* %40, %struct.term* %41)
  %tobool66 = icmp ne i32 %call65, 0
  br label %lor.end.67

lor.end.67:                                       ; preds = %lor.rhs.64, %if.then.61
  %42 = phi i1 [ true, %if.then.61 ], [ %tobool66, %lor.rhs.64 ]
  %lor.ext68 = zext i1 %42 to i32
  store i32 %lor.ext68, i32* %retval
  br label %return

if.else.69:                                       ; preds = %if.end.59
  %43 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call70 = call i32 @ren_NotPFactorOk(%struct.term* %43)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %lor.end.75, label %lor.rhs.72

lor.rhs.72:                                       ; preds = %if.else.69
  %44 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %45 = load %struct.term*, %struct.term** %Super, align 8
  %call73 = call i32 @ren_BFactorOk(%struct.term* %44, %struct.term* %45)
  %tobool74 = icmp ne i32 %call73, 0
  br label %lor.end.75

lor.end.75:                                       ; preds = %lor.rhs.72, %if.else.69
  %46 = phi i1 [ true, %if.else.69 ], [ %tobool74, %lor.rhs.72 ]
  %lor.ext76 = zext i1 %46 to i32
  store i32 %lor.ext76, i32* %retval
  br label %return

if.end.77:                                        ; preds = %if.end.44
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call78 = call i32 @fflush(%struct._IO_FILE* %47)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i32 0, i32 0), i32 765)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i32 0, i32 0))
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call80 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %49)
  call void @misc_DumpCore()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.77, %lor.end.75, %lor.end.67, %if.then.51, %if.else, %lor.end, %for.end, %if.then.26, %if.then.12, %if.then.6, %if.then
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @ren_PExtraFactorOk(%struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %T1 = alloca %struct.term*, align 8
  %T2 = alloca %struct.term*, align 8
  %Ok = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_HasTermStamp(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_IsAtom(%struct.term* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %2)
  store i32 %call3, i32* %Top, align 4
  %3 = load i32, i32* %Top, align 4
  %call4 = call i32 @fol_IsQuantifier(i32 %3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call %struct.term* @term_SecondArgument(%struct.term* %4)
  %call8 = call i32 @ren_PExtraFactorOk(%struct.term* %call7)
  store i32 %call8, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %5 = load i32, i32* %Top, align 4
  %call10 = call i32 @fol_Not()
  %call11 = call i32 @symbol_Equal(i32 %5, i32 %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.9
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call14 = call %struct.term* @term_FirstArgument(%struct.term* %6)
  %call15 = call i32 @ren_NotPExtraFactorOk(%struct.term* %call14)
  store i32 %call15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.9
  %7 = load i32, i32* %Top, align 4
  %call17 = call i32 @fol_Equiv()
  %call18 = call i32 @symbol_Equal(i32 %7, i32 %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.33

if.then.20:                                       ; preds = %if.end.16
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call21 = call %struct.term* @term_FirstArgument(%struct.term* %8)
  store %struct.term* %call21, %struct.term** %T1, align 8
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call22 = call %struct.term* @term_SecondArgument(%struct.term* %9)
  store %struct.term* %call22, %struct.term** %T2, align 8
  %10 = load %struct.term*, %struct.term** %T1, align 8
  %call23 = call i32 @ren_PFactorOk(%struct.term* %10)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %lor.end, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %if.then.20
  %11 = load %struct.term*, %struct.term** %T2, align 8
  %call26 = call i32 @ren_NotPFactorOk(%struct.term* %11)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %lor.end, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.25
  %12 = load %struct.term*, %struct.term** %T1, align 8
  %call29 = call i32 @ren_NotPFactorOk(%struct.term* %12)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.28
  %13 = load %struct.term*, %struct.term** %T2, align 8
  %call31 = call i32 @ren_PFactorOk(%struct.term* %13)
  %tobool32 = icmp ne i32 %call31, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.28, %lor.lhs.false.25, %if.then.20
  %14 = phi i1 [ true, %lor.lhs.false.28 ], [ true, %lor.lhs.false.25 ], [ true, %if.then.20 ], [ %tobool32, %lor.rhs ]
  %lor.ext = zext i1 %14 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end.16
  %15 = load i32, i32* %Top, align 4
  %call34 = call i32 @fol_And()
  %call35 = call i32 @symbol_Equal(i32 %15, i32 %call34)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.50

if.then.37:                                       ; preds = %if.end.33
  %16 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call38 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %16)
  %call39 = call i32 @list_Length(%struct.LIST_HELP* %call38)
  %cmp = icmp ugt i32 %call39, 2
  br i1 %cmp, label %lor.end.48, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.then.37
  %17 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call41 = call %struct.term* @term_FirstArgument(%struct.term* %17)
  %call42 = call i32 @ren_PFactorOk(%struct.term* %call41)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %lor.end.48, label %lor.rhs.44

lor.rhs.44:                                       ; preds = %lor.lhs.false.40
  %18 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call45 = call %struct.term* @term_SecondArgument(%struct.term* %18)
  %call46 = call i32 @ren_PFactorOk(%struct.term* %call45)
  %tobool47 = icmp ne i32 %call46, 0
  br label %lor.end.48

lor.end.48:                                       ; preds = %lor.rhs.44, %lor.lhs.false.40, %if.then.37
  %19 = phi i1 [ true, %lor.lhs.false.40 ], [ true, %if.then.37 ], [ %tobool47, %lor.rhs.44 ]
  %lor.ext49 = zext i1 %19 to i32
  store i32 %lor.ext49, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.33
  %20 = load i32, i32* %Top, align 4
  %call51 = call i32 @fol_Implies()
  %call52 = call i32 @symbol_Equal(i32 %20, i32 %call51)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.70

if.then.54:                                       ; preds = %if.end.50
  %21 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call55 = call %struct.term* @term_FirstArgument(%struct.term* %21)
  store %struct.term* %call55, %struct.term** %T1, align 8
  %22 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call56 = call %struct.term* @term_SecondArgument(%struct.term* %22)
  store %struct.term* %call56, %struct.term** %T2, align 8
  %23 = load %struct.term*, %struct.term** %T2, align 8
  %call57 = call i32 @ren_PFactorOk(%struct.term* %23)
  store i32 %call57, i32* %Ok, align 4
  %24 = load %struct.term*, %struct.term** %T1, align 8
  %call58 = call i32 @ren_NotPFactorOk(%struct.term* %24)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %land.lhs.true, label %lor.rhs.64

land.lhs.true:                                    ; preds = %if.then.54
  %25 = load i32, i32* %Ok, align 4
  %tobool60 = icmp ne i32 %25, 0
  br i1 %tobool60, label %lor.end.68, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %land.lhs.true
  %26 = load %struct.term*, %struct.term** %T1, align 8
  %call62 = call i32 @ren_NotPExtraFactorOk(%struct.term* %26)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %lor.end.68, label %lor.rhs.64

lor.rhs.64:                                       ; preds = %lor.lhs.false.61, %if.then.54
  %27 = load i32, i32* %Ok, align 4
  %tobool65 = icmp ne i32 %27, 0
  br i1 %tobool65, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs.64
  %28 = load %struct.term*, %struct.term** %T2, align 8
  %call66 = call i32 @ren_PExtraFactorOk(%struct.term* %28)
  %tobool67 = icmp ne i32 %call66, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs.64
  %29 = phi i1 [ false, %lor.rhs.64 ], [ %tobool67, %land.rhs ]
  br label %lor.end.68

lor.end.68:                                       ; preds = %land.end, %lor.lhs.false.61, %land.lhs.true
  %30 = phi i1 [ true, %lor.lhs.false.61 ], [ true, %land.lhs.true ], [ %29, %land.end ]
  %lor.ext69 = zext i1 %30 to i32
  store i32 %lor.ext69, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.end.50
  %31 = load i32, i32* %Top, align 4
  %call71 = call i32 @fol_Or()
  %call72 = call i32 @symbol_Equal(i32 %31, i32 %call71)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.91

if.then.74:                                       ; preds = %if.end.70
  store i32 0, i32* %Ok, align 4
  %32 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call75 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %32)
  store %struct.LIST_HELP* %call75, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.74
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call76 = call i32 @list_Empty(%struct.LIST_HELP* %33)
  %tobool77 = icmp ne i32 %call76, 0
  %lnot = xor i1 %tobool77, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call78 = call i8* @list_Car(%struct.LIST_HELP* %34)
  %35 = bitcast i8* %call78 to %struct.term*
  %call79 = call i32 @ren_PFactorOk(%struct.term* %35)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.end.89

if.then.81:                                       ; preds = %for.body
  %36 = load i32, i32* %Ok, align 4
  %tobool82 = icmp ne i32 %36, 0
  br i1 %tobool82, label %if.then.87, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %if.then.81
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call84 = call i8* @list_Car(%struct.LIST_HELP* %37)
  %38 = bitcast i8* %call84 to %struct.term*
  %call85 = call i32 @ren_PExtraFactorOk(%struct.term* %38)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %lor.lhs.false.83, %if.then.81
  store i32 1, i32* %retval
  br label %return

if.end.88:                                        ; preds = %lor.lhs.false.83
  store i32 1, i32* %Ok, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.89
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call90 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %39)
  store %struct.LIST_HELP* %call90, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.91

if.end.91:                                        ; preds = %for.end, %if.end.70
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.91, %if.then.87, %lor.end.68, %lor.end.48, %lor.end, %if.then.13, %if.then.6, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @ren_AExtraFactorOk(%struct.term* %Term1, %struct.term* %Term2) #0 {
entry:
  %retval = alloca i32, align 4
  %Term1.addr = alloca %struct.term*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %Super = alloca %struct.term*, align 8
  %Ok = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Sub = alloca %struct.term*, align 8
  %T1 = alloca %struct.term*, align 8
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %cmp = icmp eq %struct.term* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call = call %struct.term* @term_Superterm(%struct.term* %2)
  store %struct.term* %call, %struct.term** %Super, align 8
  %3 = load %struct.term*, %struct.term** %Super, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %3)
  store i32 %call1, i32* %Top, align 4
  %4 = load i32, i32* %Top, align 4
  %call2 = call i32 @fol_And()
  %call3 = call i32 @symbol_Equal(i32 %4, i32 %call2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* %Top, align 4
  %call4 = call i32 @fol_IsQuantifier(i32 %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %6 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %7 = load %struct.term*, %struct.term** %Super, align 8
  %call7 = call i32 @ren_AExtraFactorOk(%struct.term* %6, %struct.term* %7)
  store i32 %call7, i32* %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %Top, align 4
  %call9 = call i32 @fol_Not()
  %call10 = call i32 @symbol_Equal(i32 %8, i32 %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.8
  %9 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %10 = load %struct.term*, %struct.term** %Super, align 8
  %call13 = call i32 @ren_BExtraFactorOk(%struct.term* %9, %struct.term* %10)
  store i32 %call13, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %11 = load i32, i32* %Top, align 4
  %call15 = call i32 @fol_Or()
  %call16 = call i32 @symbol_Equal(i32 %11, i32 %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.40

if.then.18:                                       ; preds = %if.end.14
  store i32 0, i32* %Ok, align 4
  %12 = load %struct.term*, %struct.term** %Super, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.18
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool21, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call22 to %struct.term*
  store %struct.term* %15, %struct.term** %Sub, align 8
  %16 = load %struct.term*, %struct.term** %Sub, align 8
  %17 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %cmp23 = icmp ne %struct.term* %16, %17
  br i1 %cmp23, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %for.body
  %18 = load %struct.term*, %struct.term** %Sub, align 8
  %call24 = call i32 @ren_PFactorOk(%struct.term* %18)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %land.lhs.true
  %19 = load i32, i32* %Ok, align 4
  %tobool27 = icmp ne i32 %19, 0
  br i1 %tobool27, label %if.then.31, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.then.26
  %20 = load %struct.term*, %struct.term** %Sub, align 8
  %call29 = call i32 @ren_PExtraFactorOk(%struct.term* %20)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false.28, %if.then.26
  store i32 1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %lor.lhs.false.28
  store i32 1, i32* %Ok, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call34 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %23 = load %struct.term*, %struct.term** %Super, align 8
  %call35 = call i32 @ren_AFactorOk(%struct.term* %22, %struct.term* %23)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end
  %24 = load i32, i32* %Ok, align 4
  %tobool37 = icmp ne i32 %24, 0
  br i1 %tobool37, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %25 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %26 = load %struct.term*, %struct.term** %Super, align 8
  %call38 = call i32 @ren_AExtraFactorOk(%struct.term* %25, %struct.term* %26)
  %tobool39 = icmp ne i32 %call38, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %27 = phi i1 [ true, %land.rhs ], [ %tobool39, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.end
  %28 = phi i1 [ false, %for.end ], [ %27, %lor.end ]
  %land.ext = zext i1 %28 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.14
  %29 = load i32, i32* %Top, align 4
  %call41 = call i32 @fol_Implies()
  %call42 = call i32 @symbol_Equal(i32 %29, i32 %call41)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.66

if.then.44:                                       ; preds = %if.end.40
  %30 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %31 = load %struct.term*, %struct.term** %Super, align 8
  %call45 = call %struct.term* @term_FirstArgument(%struct.term* %31)
  %cmp46 = icmp eq %struct.term* %30, %call45
  br i1 %cmp46, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %if.then.44
  %32 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %33 = load %struct.term*, %struct.term** %Super, align 8
  %call48 = call i32 @ren_BExtraFactorOk(%struct.term* %32, %struct.term* %33)
  store i32 %call48, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.44
  %34 = load %struct.term*, %struct.term** %Super, align 8
  %call49 = call %struct.term* @term_FirstArgument(%struct.term* %34)
  store %struct.term* %call49, %struct.term** %T1, align 8
  %35 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %36 = load %struct.term*, %struct.term** %Super, align 8
  %call50 = call i32 @ren_AFactorOk(%struct.term* %35, %struct.term* %36)
  store i32 %call50, i32* %Ok, align 4
  %37 = load %struct.term*, %struct.term** %T1, align 8
  %call51 = call i32 @ren_NotPFactorOk(%struct.term* %37)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %land.lhs.true.53, label %lor.rhs.58

land.lhs.true.53:                                 ; preds = %if.else
  %38 = load i32, i32* %Ok, align 4
  %tobool54 = icmp ne i32 %38, 0
  br i1 %tobool54, label %lor.end.65, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %land.lhs.true.53
  %39 = load %struct.term*, %struct.term** %T1, align 8
  %call56 = call i32 @ren_NotPExtraFactorOk(%struct.term* %39)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %lor.end.65, label %lor.rhs.58

lor.rhs.58:                                       ; preds = %lor.lhs.false.55, %if.else
  %40 = load i32, i32* %Ok, align 4
  %tobool59 = icmp ne i32 %40, 0
  br i1 %tobool59, label %land.rhs.60, label %land.end.63

land.rhs.60:                                      ; preds = %lor.rhs.58
  %41 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %42 = load %struct.term*, %struct.term** %Super, align 8
  %call61 = call i32 @ren_AExtraFactorOk(%struct.term* %41, %struct.term* %42)
  %tobool62 = icmp ne i32 %call61, 0
  br label %land.end.63

land.end.63:                                      ; preds = %land.rhs.60, %lor.rhs.58
  %43 = phi i1 [ false, %lor.rhs.58 ], [ %tobool62, %land.rhs.60 ]
  br label %lor.end.65

lor.end.65:                                       ; preds = %land.end.63, %lor.lhs.false.55, %land.lhs.true.53
  %44 = phi i1 [ true, %lor.lhs.false.55 ], [ true, %land.lhs.true.53 ], [ %43, %land.end.63 ]
  %lor.ext = zext i1 %44 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.end.40
  %45 = load i32, i32* %Top, align 4
  %call67 = call i32 @fol_Equiv()
  %call68 = call i32 @symbol_Equal(i32 %45, i32 %call67)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.128

if.then.70:                                       ; preds = %if.end.66
  %46 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %47 = load %struct.term*, %struct.term** %Super, align 8
  %call71 = call %struct.term* @term_FirstArgument(%struct.term* %47)
  %cmp72 = icmp eq %struct.term* %46, %call71
  br i1 %cmp72, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %if.then.70
  %48 = load %struct.term*, %struct.term** %Super, align 8
  %call74 = call %struct.term* @term_SecondArgument(%struct.term* %48)
  store %struct.term* %call74, %struct.term** %Term2.addr, align 8
  br label %if.end.77

if.else.75:                                       ; preds = %if.then.70
  %49 = load %struct.term*, %struct.term** %Super, align 8
  %call76 = call %struct.term* @term_FirstArgument(%struct.term* %49)
  store %struct.term* %call76, %struct.term** %Term2.addr, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.75, %if.then.73
  %50 = load %struct.term*, %struct.term** %Super, align 8
  %call78 = call i32 @ren_Polarity(%struct.term* %50)
  switch i32 %call78, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.92
    i32 -1, label %sw.bb.110
  ]

sw.bb:                                            ; preds = %if.end.77
  %51 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call79 = call i32 @ren_PFactorOk(%struct.term* %51)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %lor.end.90, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %sw.bb
  %52 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call82 = call i32 @ren_NotPFactorOk(%struct.term* %52)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %lor.end.90, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %lor.lhs.false.81
  %53 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %54 = load %struct.term*, %struct.term** %Super, align 8
  %call85 = call i32 @ren_AFactorOk(%struct.term* %53, %struct.term* %54)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %lor.end.90, label %lor.rhs.87

lor.rhs.87:                                       ; preds = %lor.lhs.false.84
  %55 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %56 = load %struct.term*, %struct.term** %Super, align 8
  %call88 = call i32 @ren_BFactorOk(%struct.term* %55, %struct.term* %56)
  %tobool89 = icmp ne i32 %call88, 0
  br label %lor.end.90

lor.end.90:                                       ; preds = %lor.rhs.87, %lor.lhs.false.84, %lor.lhs.false.81, %sw.bb
  %57 = phi i1 [ true, %lor.lhs.false.84 ], [ true, %lor.lhs.false.81 ], [ true, %sw.bb ], [ %tobool89, %lor.rhs.87 ]
  %lor.ext91 = zext i1 %57 to i32
  store i32 %lor.ext91, i32* %retval
  br label %return

sw.bb.92:                                         ; preds = %if.end.77
  %58 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %59 = load %struct.term*, %struct.term** %Super, align 8
  %call93 = call i32 @ren_AFactorOk(%struct.term* %58, %struct.term* %59)
  store i32 %call93, i32* %Ok, align 4
  %60 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call94 = call i32 @ren_NotPFactorOk(%struct.term* %60)
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %land.lhs.true.96, label %lor.rhs.101

land.lhs.true.96:                                 ; preds = %sw.bb.92
  %61 = load i32, i32* %Ok, align 4
  %tobool97 = icmp ne i32 %61, 0
  br i1 %tobool97, label %lor.end.108, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %land.lhs.true.96
  %62 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call99 = call i32 @ren_NotPExtraFactorOk(%struct.term* %62)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %lor.end.108, label %lor.rhs.101

lor.rhs.101:                                      ; preds = %lor.lhs.false.98, %sw.bb.92
  %63 = load i32, i32* %Ok, align 4
  %tobool102 = icmp ne i32 %63, 0
  br i1 %tobool102, label %land.rhs.103, label %land.end.106

land.rhs.103:                                     ; preds = %lor.rhs.101
  %64 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %65 = load %struct.term*, %struct.term** %Super, align 8
  %call104 = call i32 @ren_AExtraFactorOk(%struct.term* %64, %struct.term* %65)
  %tobool105 = icmp ne i32 %call104, 0
  br label %land.end.106

land.end.106:                                     ; preds = %land.rhs.103, %lor.rhs.101
  %66 = phi i1 [ false, %lor.rhs.101 ], [ %tobool105, %land.rhs.103 ]
  br label %lor.end.108

lor.end.108:                                      ; preds = %land.end.106, %lor.lhs.false.98, %land.lhs.true.96
  %67 = phi i1 [ true, %lor.lhs.false.98 ], [ true, %land.lhs.true.96 ], [ %66, %land.end.106 ]
  %lor.ext109 = zext i1 %67 to i32
  store i32 %lor.ext109, i32* %retval
  br label %return

sw.bb.110:                                        ; preds = %if.end.77
  %68 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %69 = load %struct.term*, %struct.term** %Super, align 8
  %call111 = call i32 @ren_BFactorOk(%struct.term* %68, %struct.term* %69)
  store i32 %call111, i32* %Ok, align 4
  %70 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call112 = call i32 @ren_PFactorOk(%struct.term* %70)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %land.lhs.true.114, label %lor.rhs.119

land.lhs.true.114:                                ; preds = %sw.bb.110
  %71 = load i32, i32* %Ok, align 4
  %tobool115 = icmp ne i32 %71, 0
  br i1 %tobool115, label %lor.end.126, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %land.lhs.true.114
  %72 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call117 = call i32 @ren_PExtraFactorOk(%struct.term* %72)
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %lor.end.126, label %lor.rhs.119

lor.rhs.119:                                      ; preds = %lor.lhs.false.116, %sw.bb.110
  %73 = load i32, i32* %Ok, align 4
  %tobool120 = icmp ne i32 %73, 0
  br i1 %tobool120, label %land.rhs.121, label %land.end.124

land.rhs.121:                                     ; preds = %lor.rhs.119
  %74 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %75 = load %struct.term*, %struct.term** %Super, align 8
  %call122 = call i32 @ren_BExtraFactorOk(%struct.term* %74, %struct.term* %75)
  %tobool123 = icmp ne i32 %call122, 0
  br label %land.end.124

land.end.124:                                     ; preds = %land.rhs.121, %lor.rhs.119
  %76 = phi i1 [ false, %lor.rhs.119 ], [ %tobool123, %land.rhs.121 ]
  br label %lor.end.126

lor.end.126:                                      ; preds = %land.end.124, %lor.lhs.false.116, %land.lhs.true.114
  %77 = phi i1 [ true, %lor.lhs.false.116 ], [ true, %land.lhs.true.114 ], [ %76, %land.end.124 ]
  %lor.ext127 = zext i1 %77 to i32
  store i32 %lor.ext127, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.77
  br label %if.end.128

if.end.128:                                       ; preds = %sw.epilog, %if.end.66
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call129 = call i32 @fflush(%struct._IO_FILE* %78)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i32 0, i32 0), i32 616)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i32 0, i32 0))
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call131 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %80)
  call void @misc_DumpCore()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.128, %lor.end.126, %lor.end.108, %lor.end.90, %lor.end.65, %if.then.47, %land.end, %if.then.31, %if.then.12, %if.then.6, %if.then
  %81 = load i32, i32* %retval
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define internal i32 @ren_NotPExtraFactorOk(%struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %T1 = alloca %struct.term*, align 8
  %T2 = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Ok = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_HasTermStamp(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_IsAtom(%struct.term* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %2)
  store i32 %call3, i32* %Top, align 4
  %3 = load i32, i32* %Top, align 4
  %call4 = call i32 @fol_Not()
  %call5 = call i32 @symbol_Equal(i32 %3, i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call8 = call %struct.term* @term_FirstArgument(%struct.term* %4)
  %call9 = call i32 @ren_PExtraFactorOk(%struct.term* %call8)
  store i32 %call9, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %5 = load i32, i32* %Top, align 4
  %call11 = call i32 @fol_IsQuantifier(i32 %5)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.10
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call14 = call %struct.term* @term_SecondArgument(%struct.term* %6)
  %call15 = call i32 @ren_NotPExtraFactorOk(%struct.term* %call14)
  store i32 %call15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.10
  %7 = load i32, i32* %Top, align 4
  %call17 = call i32 @fol_Equiv()
  %call18 = call i32 @symbol_Equal(i32 %7, i32 %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.33

if.then.20:                                       ; preds = %if.end.16
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call21 = call %struct.term* @term_FirstArgument(%struct.term* %8)
  store %struct.term* %call21, %struct.term** %T1, align 8
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call22 = call %struct.term* @term_SecondArgument(%struct.term* %9)
  store %struct.term* %call22, %struct.term** %T2, align 8
  %10 = load %struct.term*, %struct.term** %T1, align 8
  %call23 = call i32 @ren_PFactorOk(%struct.term* %10)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %lor.end, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %if.then.20
  %11 = load %struct.term*, %struct.term** %T2, align 8
  %call26 = call i32 @ren_PFactorOk(%struct.term* %11)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %lor.end, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.25
  %12 = load %struct.term*, %struct.term** %T1, align 8
  %call29 = call i32 @ren_NotPFactorOk(%struct.term* %12)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.28
  %13 = load %struct.term*, %struct.term** %T2, align 8
  %call31 = call i32 @ren_NotPFactorOk(%struct.term* %13)
  %tobool32 = icmp ne i32 %call31, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.28, %lor.lhs.false.25, %if.then.20
  %14 = phi i1 [ true, %lor.lhs.false.28 ], [ true, %lor.lhs.false.25 ], [ true, %if.then.20 ], [ %tobool32, %lor.rhs ]
  %lor.ext = zext i1 %14 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end.16
  %15 = load i32, i32* %Top, align 4
  %call34 = call i32 @fol_Or()
  %call35 = call i32 @symbol_Equal(i32 %15, i32 %call34)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.49

if.then.37:                                       ; preds = %if.end.33
  %16 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call38 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %16)
  %call39 = call i32 @list_Length(%struct.LIST_HELP* %call38)
  %cmp = icmp ugt i32 %call39, 2
  br i1 %cmp, label %if.then.48, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.then.37
  %17 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call41 = call %struct.term* @term_FirstArgument(%struct.term* %17)
  %call42 = call i32 @ren_NotPFactorOk(%struct.term* %call41)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.48, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false.40
  %18 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call45 = call %struct.term* @term_SecondArgument(%struct.term* %18)
  %call46 = call i32 @ren_NotPFactorOk(%struct.term* %call45)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %lor.lhs.false.44, %lor.lhs.false.40, %if.then.37
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.44
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.end.33
  %19 = load i32, i32* %Top, align 4
  %call50 = call i32 @fol_Implies()
  %call51 = call i32 @symbol_Equal(i32 %19, i32 %call50)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.63

if.then.53:                                       ; preds = %if.end.49
  %20 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call54 = call %struct.term* @term_FirstArgument(%struct.term* %20)
  %call55 = call i32 @ren_PFactorOk(%struct.term* %call54)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.61, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %if.then.53
  %21 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call58 = call %struct.term* @term_SecondArgument(%struct.term* %21)
  %call59 = call i32 @ren_NotPFactorOk(%struct.term* %call58)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %lor.lhs.false.57, %if.then.53
  store i32 1, i32* %retval
  br label %return

if.else.62:                                       ; preds = %lor.lhs.false.57
  store i32 0, i32* %retval
  br label %return

if.end.63:                                        ; preds = %if.end.49
  %22 = load i32, i32* %Top, align 4
  %call64 = call i32 @fol_And()
  %call65 = call i32 @symbol_Equal(i32 %22, i32 %call64)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.84

if.then.67:                                       ; preds = %if.end.63
  store i32 0, i32* %Ok, align 4
  %23 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call68 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %23)
  store %struct.LIST_HELP* %call68, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.67
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call69 = call i32 @list_Empty(%struct.LIST_HELP* %24)
  %tobool70 = icmp ne i32 %call69, 0
  %lnot = xor i1 %tobool70, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call71 = call i8* @list_Car(%struct.LIST_HELP* %25)
  %26 = bitcast i8* %call71 to %struct.term*
  %call72 = call i32 @ren_NotPFactorOk(%struct.term* %26)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.82

if.then.74:                                       ; preds = %for.body
  %27 = load i32, i32* %Ok, align 4
  %tobool75 = icmp ne i32 %27, 0
  br i1 %tobool75, label %if.then.80, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %if.then.74
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call77 = call i8* @list_Car(%struct.LIST_HELP* %28)
  %29 = bitcast i8* %call77 to %struct.term*
  %call78 = call i32 @ren_NotPExtraFactorOk(%struct.term* %29)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %lor.lhs.false.76, %if.then.74
  store i32 1, i32* %retval
  br label %return

if.end.81:                                        ; preds = %lor.lhs.false.76
  store i32 1, i32* %Ok, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.82
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call83 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %30)
  store %struct.LIST_HELP* %call83, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.84

if.end.84:                                        ; preds = %for.end, %if.end.63
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.84, %if.then.80, %if.else.62, %if.then.61, %if.else, %if.then.48, %lor.end, %if.then.13, %if.then.7, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @ren_BExtraFactorOk(%struct.term* %Term1, %struct.term* %Term2) #0 {
entry:
  %retval = alloca i32, align 4
  %Term1.addr = alloca %struct.term*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %Super = alloca %struct.term*, align 8
  %Ok = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Sub = alloca %struct.term*, align 8
  %T2 = alloca %struct.term*, align 8
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %cmp = icmp eq %struct.term* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call = call %struct.term* @term_Superterm(%struct.term* %2)
  store %struct.term* %call, %struct.term** %Super, align 8
  %3 = load %struct.term*, %struct.term** %Super, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %3)
  store i32 %call1, i32* %Top, align 4
  %4 = load i32, i32* %Top, align 4
  %call2 = call i32 @fol_Or()
  %call3 = call i32 @symbol_Equal(i32 %4, i32 %call2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* %Top, align 4
  %call4 = call i32 @fol_IsQuantifier(i32 %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %6 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %7 = load %struct.term*, %struct.term** %Super, align 8
  %call7 = call i32 @ren_BExtraFactorOk(%struct.term* %6, %struct.term* %7)
  store i32 %call7, i32* %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %Top, align 4
  %call9 = call i32 @fol_Not()
  %call10 = call i32 @symbol_Equal(i32 %8, i32 %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.8
  %9 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %10 = load %struct.term*, %struct.term** %Super, align 8
  %call13 = call i32 @ren_AExtraFactorOk(%struct.term* %9, %struct.term* %10)
  store i32 %call13, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %11 = load i32, i32* %Top, align 4
  %call15 = call i32 @fol_And()
  %call16 = call i32 @symbol_Equal(i32 %11, i32 %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.40

if.then.18:                                       ; preds = %if.end.14
  store i32 0, i32* %Ok, align 4
  %12 = load %struct.term*, %struct.term** %Super, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.18
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool21, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call22 to %struct.term*
  store %struct.term* %15, %struct.term** %Sub, align 8
  %16 = load %struct.term*, %struct.term** %Sub, align 8
  %17 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %cmp23 = icmp ne %struct.term* %16, %17
  br i1 %cmp23, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %for.body
  %18 = load %struct.term*, %struct.term** %Sub, align 8
  %call24 = call i32 @ren_NotPFactorOk(%struct.term* %18)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %land.lhs.true
  %19 = load i32, i32* %Ok, align 4
  %tobool27 = icmp ne i32 %19, 0
  br i1 %tobool27, label %if.then.31, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.then.26
  %20 = load %struct.term*, %struct.term** %Sub, align 8
  %call29 = call i32 @ren_NotPExtraFactorOk(%struct.term* %20)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false.28, %if.then.26
  store i32 1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %lor.lhs.false.28
  store i32 1, i32* %Ok, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call34 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %23 = load %struct.term*, %struct.term** %Super, align 8
  %call35 = call i32 @ren_BFactorOk(%struct.term* %22, %struct.term* %23)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end
  %24 = load i32, i32* %Ok, align 4
  %tobool37 = icmp ne i32 %24, 0
  br i1 %tobool37, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %25 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %26 = load %struct.term*, %struct.term** %Super, align 8
  %call38 = call i32 @ren_BExtraFactorOk(%struct.term* %25, %struct.term* %26)
  %tobool39 = icmp ne i32 %call38, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %27 = phi i1 [ true, %land.rhs ], [ %tobool39, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.end
  %28 = phi i1 [ false, %for.end ], [ %27, %lor.end ]
  %land.ext = zext i1 %28 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.14
  %29 = load i32, i32* %Top, align 4
  %call41 = call i32 @fol_Implies()
  %call42 = call i32 @symbol_Equal(i32 %29, i32 %call41)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.66

if.then.44:                                       ; preds = %if.end.40
  %30 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %31 = load %struct.term*, %struct.term** %Super, align 8
  %call45 = call %struct.term* @term_FirstArgument(%struct.term* %31)
  %cmp46 = icmp eq %struct.term* %30, %call45
  br i1 %cmp46, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %if.then.44
  %32 = load %struct.term*, %struct.term** %Super, align 8
  %call48 = call %struct.term* @term_SecondArgument(%struct.term* %32)
  store %struct.term* %call48, %struct.term** %T2, align 8
  %33 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %34 = load %struct.term*, %struct.term** %Super, align 8
  %call49 = call i32 @ren_AFactorOk(%struct.term* %33, %struct.term* %34)
  store i32 %call49, i32* %Ok, align 4
  %35 = load %struct.term*, %struct.term** %T2, align 8
  %call50 = call i32 @ren_PFactorOk(%struct.term* %35)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %land.lhs.true.52, label %lor.rhs.57

land.lhs.true.52:                                 ; preds = %if.then.47
  %36 = load i32, i32* %Ok, align 4
  %tobool53 = icmp ne i32 %36, 0
  br i1 %tobool53, label %lor.end.64, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %land.lhs.true.52
  %37 = load %struct.term*, %struct.term** %T2, align 8
  %call55 = call i32 @ren_PExtraFactorOk(%struct.term* %37)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %lor.end.64, label %lor.rhs.57

lor.rhs.57:                                       ; preds = %lor.lhs.false.54, %if.then.47
  %38 = load i32, i32* %Ok, align 4
  %tobool58 = icmp ne i32 %38, 0
  br i1 %tobool58, label %land.rhs.59, label %land.end.62

land.rhs.59:                                      ; preds = %lor.rhs.57
  %39 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %40 = load %struct.term*, %struct.term** %Super, align 8
  %call60 = call i32 @ren_AExtraFactorOk(%struct.term* %39, %struct.term* %40)
  %tobool61 = icmp ne i32 %call60, 0
  br label %land.end.62

land.end.62:                                      ; preds = %land.rhs.59, %lor.rhs.57
  %41 = phi i1 [ false, %lor.rhs.57 ], [ %tobool61, %land.rhs.59 ]
  br label %lor.end.64

lor.end.64:                                       ; preds = %land.end.62, %lor.lhs.false.54, %land.lhs.true.52
  %42 = phi i1 [ true, %lor.lhs.false.54 ], [ true, %land.lhs.true.52 ], [ %41, %land.end.62 ]
  %lor.ext = zext i1 %42 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.44
  %43 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %44 = load %struct.term*, %struct.term** %Super, align 8
  %call65 = call i32 @ren_BExtraFactorOk(%struct.term* %43, %struct.term* %44)
  store i32 %call65, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.end.40
  %45 = load i32, i32* %Top, align 4
  %call67 = call i32 @fol_Equiv()
  %call68 = call i32 @symbol_Equal(i32 %45, i32 %call67)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.128

if.then.70:                                       ; preds = %if.end.66
  %46 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %47 = load %struct.term*, %struct.term** %Super, align 8
  %call71 = call %struct.term* @term_FirstArgument(%struct.term* %47)
  %cmp72 = icmp eq %struct.term* %46, %call71
  br i1 %cmp72, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %if.then.70
  %48 = load %struct.term*, %struct.term** %Super, align 8
  %call74 = call %struct.term* @term_SecondArgument(%struct.term* %48)
  store %struct.term* %call74, %struct.term** %Term2.addr, align 8
  br label %if.end.77

if.else.75:                                       ; preds = %if.then.70
  %49 = load %struct.term*, %struct.term** %Super, align 8
  %call76 = call %struct.term* @term_FirstArgument(%struct.term* %49)
  store %struct.term* %call76, %struct.term** %Term2.addr, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.75, %if.then.73
  %50 = load %struct.term*, %struct.term** %Super, align 8
  %call78 = call i32 @ren_Polarity(%struct.term* %50)
  switch i32 %call78, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.92
    i32 -1, label %sw.bb.110
  ]

sw.bb:                                            ; preds = %if.end.77
  %51 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call79 = call i32 @ren_PFactorOk(%struct.term* %51)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %lor.end.90, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %sw.bb
  %52 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call82 = call i32 @ren_NotPFactorOk(%struct.term* %52)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %lor.end.90, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %lor.lhs.false.81
  %53 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %54 = load %struct.term*, %struct.term** %Super, align 8
  %call85 = call i32 @ren_AFactorOk(%struct.term* %53, %struct.term* %54)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %lor.end.90, label %lor.rhs.87

lor.rhs.87:                                       ; preds = %lor.lhs.false.84
  %55 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %56 = load %struct.term*, %struct.term** %Super, align 8
  %call88 = call i32 @ren_BFactorOk(%struct.term* %55, %struct.term* %56)
  %tobool89 = icmp ne i32 %call88, 0
  br label %lor.end.90

lor.end.90:                                       ; preds = %lor.rhs.87, %lor.lhs.false.84, %lor.lhs.false.81, %sw.bb
  %57 = phi i1 [ true, %lor.lhs.false.84 ], [ true, %lor.lhs.false.81 ], [ true, %sw.bb ], [ %tobool89, %lor.rhs.87 ]
  %lor.ext91 = zext i1 %57 to i32
  store i32 %lor.ext91, i32* %retval
  br label %return

sw.bb.92:                                         ; preds = %if.end.77
  %58 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %59 = load %struct.term*, %struct.term** %Super, align 8
  %call93 = call i32 @ren_AFactorOk(%struct.term* %58, %struct.term* %59)
  store i32 %call93, i32* %Ok, align 4
  %60 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call94 = call i32 @ren_PFactorOk(%struct.term* %60)
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %land.lhs.true.96, label %lor.rhs.101

land.lhs.true.96:                                 ; preds = %sw.bb.92
  %61 = load i32, i32* %Ok, align 4
  %tobool97 = icmp ne i32 %61, 0
  br i1 %tobool97, label %lor.end.108, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %land.lhs.true.96
  %62 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call99 = call i32 @ren_PExtraFactorOk(%struct.term* %62)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %lor.end.108, label %lor.rhs.101

lor.rhs.101:                                      ; preds = %lor.lhs.false.98, %sw.bb.92
  %63 = load i32, i32* %Ok, align 4
  %tobool102 = icmp ne i32 %63, 0
  br i1 %tobool102, label %land.rhs.103, label %land.end.106

land.rhs.103:                                     ; preds = %lor.rhs.101
  %64 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %65 = load %struct.term*, %struct.term** %Super, align 8
  %call104 = call i32 @ren_AExtraFactorOk(%struct.term* %64, %struct.term* %65)
  %tobool105 = icmp ne i32 %call104, 0
  br label %land.end.106

land.end.106:                                     ; preds = %land.rhs.103, %lor.rhs.101
  %66 = phi i1 [ false, %lor.rhs.101 ], [ %tobool105, %land.rhs.103 ]
  br label %lor.end.108

lor.end.108:                                      ; preds = %land.end.106, %lor.lhs.false.98, %land.lhs.true.96
  %67 = phi i1 [ true, %lor.lhs.false.98 ], [ true, %land.lhs.true.96 ], [ %66, %land.end.106 ]
  %lor.ext109 = zext i1 %67 to i32
  store i32 %lor.ext109, i32* %retval
  br label %return

sw.bb.110:                                        ; preds = %if.end.77
  %68 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %69 = load %struct.term*, %struct.term** %Super, align 8
  %call111 = call i32 @ren_BFactorOk(%struct.term* %68, %struct.term* %69)
  store i32 %call111, i32* %Ok, align 4
  %70 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call112 = call i32 @ren_NotPFactorOk(%struct.term* %70)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %land.lhs.true.114, label %lor.rhs.119

land.lhs.true.114:                                ; preds = %sw.bb.110
  %71 = load i32, i32* %Ok, align 4
  %tobool115 = icmp ne i32 %71, 0
  br i1 %tobool115, label %lor.end.126, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %land.lhs.true.114
  %72 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call117 = call i32 @ren_NotPExtraFactorOk(%struct.term* %72)
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %lor.end.126, label %lor.rhs.119

lor.rhs.119:                                      ; preds = %lor.lhs.false.116, %sw.bb.110
  %73 = load i32, i32* %Ok, align 4
  %tobool120 = icmp ne i32 %73, 0
  br i1 %tobool120, label %land.rhs.121, label %land.end.124

land.rhs.121:                                     ; preds = %lor.rhs.119
  %74 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %75 = load %struct.term*, %struct.term** %Super, align 8
  %call122 = call i32 @ren_BExtraFactorOk(%struct.term* %74, %struct.term* %75)
  %tobool123 = icmp ne i32 %call122, 0
  br label %land.end.124

land.end.124:                                     ; preds = %land.rhs.121, %lor.rhs.119
  %76 = phi i1 [ false, %lor.rhs.119 ], [ %tobool123, %land.rhs.121 ]
  br label %lor.end.126

lor.end.126:                                      ; preds = %land.end.124, %lor.lhs.false.116, %land.lhs.true.114
  %77 = phi i1 [ true, %lor.lhs.false.116 ], [ true, %land.lhs.true.114 ], [ %76, %land.end.124 ]
  %lor.ext127 = zext i1 %77 to i32
  store i32 %lor.ext127, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.77
  br label %if.end.128

if.end.128:                                       ; preds = %sw.epilog, %if.end.66
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call129 = call i32 @fflush(%struct._IO_FILE* %78)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i32 0, i32 0), i32 842)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i32 0, i32 0))
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call131 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %80)
  call void @misc_DumpCore()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.128, %lor.end.126, %lor.end.108, %lor.end.90, %if.else, %lor.end.64, %land.end, %if.then.31, %if.then.12, %if.then.6, %if.then
  %81 = load i32, i32* %retval
  ret i32 %81
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_HasTermStamp(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %stamp = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 3
  %1 = load i32, i32* %stamp, align 4
  %2 = load i32, i32* @term_STAMP, align 4
  %cmp = icmp eq i32 %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @list_Length(%struct.LIST_HELP*) #1

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_PointerMember(%struct.LIST_HELP* %List, i8* %Element) #2 {
entry:
  %retval = alloca i32, align 4
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Element.addr = alloca i8*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i8* %Element, i8** %Element.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %Element.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %cmp = icmp eq i8* %1, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare %struct.LIST_HELP* @fol_Generalizations(%struct.term*, %struct.term*) #1

declare %struct.term* @fol_MostGeneralFormula(%struct.LIST_HELP*) #1

declare %struct.LIST_HELP* @fol_Instances(%struct.term*, %struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Rplaca(%struct.LIST_HELP* %L, i8* %P) #2 {
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

declare %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP*, i8*) #1

declare %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP*) #1

declare i8* @memory_Malloc(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @ren_HasNonZeroBenefit(%struct.term* %Term1, i32 %Pol1, %struct.term* %Term2, i32 %Pol2) #0 {
entry:
  %retval = alloca i32, align 4
  %Term1.addr = alloca %struct.term*, align 8
  %Pol1.addr = alloca i32, align 4
  %Term2.addr = alloca %struct.term*, align 8
  %Pol2.addr = alloca i32, align 4
  %PFacOk = alloca i32, align 4
  %NotPFacOk = alloca i32, align 4
  %AFacOk = alloca i32, align 4
  %BFacOk = alloca i32, align 4
  %PEFacOk = alloca i32, align 4
  %NotPEFacOk = alloca i32, align 4
  %AEFacOk = alloca i32, align 4
  %BEFacOk = alloca i32, align 4
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store i32 %Pol1, i32* %Pol1.addr, align 4
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  store i32 %Pol2, i32* %Pol2.addr, align 4
  %0 = load i32, i32* %Pol2.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.76
    i32 -1, label %sw.bb.94
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call = call i32 @ren_PFactorOk(%struct.term* %1)
  store i32 %call, i32* %PFacOk, align 4
  %2 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call1 = call i32 @ren_NotPFactorOk(%struct.term* %2)
  store i32 %call1, i32* %NotPFacOk, align 4
  %3 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %4 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call2 = call i32 @ren_AFactorOk(%struct.term* %3, %struct.term* %4)
  store i32 %call2, i32* %AFacOk, align 4
  %5 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %6 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call3 = call i32 @ren_BFactorOk(%struct.term* %5, %struct.term* %6)
  store i32 %call3, i32* %BFacOk, align 4
  %7 = load i32, i32* %PFacOk, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb
  %8 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call4 = call i32 @ren_PExtraFactorOk(%struct.term* %8)
  %tobool5 = icmp ne i32 %call4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb
  %9 = phi i1 [ false, %sw.bb ], [ %tobool5, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  store i32 %land.ext, i32* %PEFacOk, align 4
  %10 = load i32, i32* %NotPFacOk, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %land.rhs.7, label %land.end.10

land.rhs.7:                                       ; preds = %land.end
  %11 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call8 = call i32 @ren_NotPExtraFactorOk(%struct.term* %11)
  %tobool9 = icmp ne i32 %call8, 0
  br label %land.end.10

land.end.10:                                      ; preds = %land.rhs.7, %land.end
  %12 = phi i1 [ false, %land.end ], [ %tobool9, %land.rhs.7 ]
  %land.ext11 = zext i1 %12 to i32
  store i32 %land.ext11, i32* %NotPEFacOk, align 4
  %13 = load i32, i32* %AFacOk, align 4
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %land.rhs.13, label %land.end.16

land.rhs.13:                                      ; preds = %land.end.10
  %14 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %15 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call14 = call i32 @ren_AExtraFactorOk(%struct.term* %14, %struct.term* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br label %land.end.16

land.end.16:                                      ; preds = %land.rhs.13, %land.end.10
  %16 = phi i1 [ false, %land.end.10 ], [ %tobool15, %land.rhs.13 ]
  %land.ext17 = zext i1 %16 to i32
  store i32 %land.ext17, i32* %AEFacOk, align 4
  %17 = load i32, i32* %BFacOk, align 4
  %tobool18 = icmp ne i32 %17, 0
  br i1 %tobool18, label %land.rhs.19, label %land.end.22

land.rhs.19:                                      ; preds = %land.end.16
  %18 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %19 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call20 = call i32 @ren_BExtraFactorOk(%struct.term* %18, %struct.term* %19)
  %tobool21 = icmp ne i32 %call20, 0
  br label %land.end.22

land.end.22:                                      ; preds = %land.rhs.19, %land.end.16
  %20 = phi i1 [ false, %land.end.16 ], [ %tobool21, %land.rhs.19 ]
  %land.ext23 = zext i1 %20 to i32
  store i32 %land.ext23, i32* %BEFacOk, align 4
  %21 = load i32, i32* %AFacOk, align 4
  %tobool24 = icmp ne i32 %21, 0
  br i1 %tobool24, label %land.lhs.true, label %lor.lhs.false.37

land.lhs.true:                                    ; preds = %land.end.22
  %22 = load i32, i32* %BFacOk, align 4
  %tobool25 = icmp ne i32 %22, 0
  br i1 %tobool25, label %land.lhs.true.26, label %lor.lhs.false.37

land.lhs.true.26:                                 ; preds = %land.lhs.true
  %23 = load i32, i32* %PFacOk, align 4
  %tobool27 = icmp ne i32 %23, 0
  br i1 %tobool27, label %land.lhs.true.28, label %lor.lhs.false.37

land.lhs.true.28:                                 ; preds = %land.lhs.true.26
  %24 = load i32, i32* %NotPFacOk, align 4
  %tobool29 = icmp ne i32 %24, 0
  br i1 %tobool29, label %land.lhs.true.30, label %lor.lhs.false.37

land.lhs.true.30:                                 ; preds = %land.lhs.true.28
  %25 = load i32, i32* %AEFacOk, align 4
  %tobool31 = icmp ne i32 %25, 0
  br i1 %tobool31, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.30
  %26 = load i32, i32* %BEFacOk, align 4
  %tobool32 = icmp ne i32 %26, 0
  br i1 %tobool32, label %lor.end, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false
  %27 = load i32, i32* %PEFacOk, align 4
  %tobool34 = icmp ne i32 %27, 0
  br i1 %tobool34, label %lor.end, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false.33
  %28 = load i32, i32* %NotPEFacOk, align 4
  %tobool36 = icmp ne i32 %28, 0
  br i1 %tobool36, label %lor.end, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.35, %land.lhs.true.28, %land.lhs.true.26, %land.lhs.true, %land.end.22
  %29 = load i32, i32* %PEFacOk, align 4
  %tobool38 = icmp ne i32 %29, 0
  br i1 %tobool38, label %land.lhs.true.39, label %lor.lhs.false.41

land.lhs.true.39:                                 ; preds = %lor.lhs.false.37
  %30 = load i32, i32* %AEFacOk, align 4
  %tobool40 = icmp ne i32 %30, 0
  br i1 %tobool40, label %lor.end, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %land.lhs.true.39, %lor.lhs.false.37
  %31 = load i32, i32* %NotPEFacOk, align 4
  %tobool42 = icmp ne i32 %31, 0
  br i1 %tobool42, label %land.lhs.true.43, label %lor.lhs.false.45

land.lhs.true.43:                                 ; preds = %lor.lhs.false.41
  %32 = load i32, i32* %BEFacOk, align 4
  %tobool44 = icmp ne i32 %32, 0
  br i1 %tobool44, label %lor.end, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %land.lhs.true.43, %lor.lhs.false.41
  %33 = load i32, i32* %AFacOk, align 4
  %tobool46 = icmp ne i32 %33, 0
  br i1 %tobool46, label %land.lhs.true.47, label %lor.lhs.false.50

land.lhs.true.47:                                 ; preds = %lor.lhs.false.45
  %34 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call48 = call i32 @ren_PFactorBigger3(%struct.term* %34)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %lor.end, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %land.lhs.true.47, %lor.lhs.false.45
  %35 = load i32, i32* %BFacOk, align 4
  %tobool51 = icmp ne i32 %35, 0
  br i1 %tobool51, label %land.lhs.true.52, label %lor.lhs.false.55

land.lhs.true.52:                                 ; preds = %lor.lhs.false.50
  %36 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call53 = call i32 @ren_NotPFactorBigger3(%struct.term* %36)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %lor.end, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %land.lhs.true.52, %lor.lhs.false.50
  %37 = load i32, i32* %PFacOk, align 4
  %tobool56 = icmp ne i32 %37, 0
  br i1 %tobool56, label %land.lhs.true.57, label %lor.lhs.false.60

land.lhs.true.57:                                 ; preds = %lor.lhs.false.55
  %38 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %39 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call58 = call i32 @ren_AFactorBigger3(%struct.term* %38, %struct.term* %39)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %lor.end, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %land.lhs.true.57, %lor.lhs.false.55
  %40 = load i32, i32* %NotPFacOk, align 4
  %tobool61 = icmp ne i32 %40, 0
  br i1 %tobool61, label %land.lhs.true.62, label %lor.lhs.false.65

land.lhs.true.62:                                 ; preds = %lor.lhs.false.60
  %41 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %42 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call63 = call i32 @ren_BFactorBigger3(%struct.term* %41, %struct.term* %42)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %lor.end, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %land.lhs.true.62, %lor.lhs.false.60
  %43 = load i32, i32* %Pol1.addr, align 4
  %cmp = icmp eq i32 %43, 0
  br i1 %cmp, label %land.lhs.true.66, label %lor.rhs

land.lhs.true.66:                                 ; preds = %lor.lhs.false.65
  %44 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call67 = call i32 @term_TopSymbol(%struct.term* %44)
  %call68 = call i32 @fol_Equiv()
  %call69 = call i32 @symbol_Equal(i32 %call67, i32 %call68)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %lor.end, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %land.lhs.true.66
  %45 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %46 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call72 = call i32 @ren_HasNEquivFathers(%struct.term* %45, %struct.term* %46, i32 1)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.71, %lor.lhs.false.65
  %47 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %48 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call74 = call i32 @ren_HasNEquivFathers(%struct.term* %47, %struct.term* %48, i32 2)
  %tobool75 = icmp ne i32 %call74, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.71, %land.lhs.true.66, %land.lhs.true.62, %land.lhs.true.57, %land.lhs.true.52, %land.lhs.true.47, %land.lhs.true.43, %land.lhs.true.39, %lor.lhs.false.35, %lor.lhs.false.33, %lor.lhs.false, %land.lhs.true.30
  %49 = phi i1 [ true, %lor.lhs.false.71 ], [ true, %land.lhs.true.66 ], [ true, %land.lhs.true.62 ], [ true, %land.lhs.true.57 ], [ true, %land.lhs.true.52 ], [ true, %land.lhs.true.47 ], [ true, %land.lhs.true.43 ], [ true, %land.lhs.true.39 ], [ true, %lor.lhs.false.35 ], [ true, %lor.lhs.false.33 ], [ true, %lor.lhs.false ], [ true, %land.lhs.true.30 ], [ %tobool75, %lor.rhs ]
  %lor.ext = zext i1 %49 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

sw.bb.76:                                         ; preds = %entry
  %50 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %51 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call77 = call i32 @ren_AFactorOk(%struct.term* %50, %struct.term* %51)
  store i32 %call77, i32* %AFacOk, align 4
  %52 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call78 = call i32 @ren_PFactorOk(%struct.term* %52)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %land.lhs.true.80, label %lor.rhs.85

land.lhs.true.80:                                 ; preds = %sw.bb.76
  %53 = load i32, i32* %AFacOk, align 4
  %tobool81 = icmp ne i32 %53, 0
  br i1 %tobool81, label %lor.end.92, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %land.lhs.true.80
  %54 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %55 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call83 = call i32 @ren_AFactorOk(%struct.term* %54, %struct.term* %55)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %lor.end.92, label %lor.rhs.85

lor.rhs.85:                                       ; preds = %lor.lhs.false.82, %sw.bb.76
  %56 = load i32, i32* %AFacOk, align 4
  %tobool86 = icmp ne i32 %56, 0
  br i1 %tobool86, label %land.rhs.87, label %land.end.90

land.rhs.87:                                      ; preds = %lor.rhs.85
  %57 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %58 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call88 = call i32 @ren_AExtraFactorOk(%struct.term* %57, %struct.term* %58)
  %tobool89 = icmp ne i32 %call88, 0
  br label %land.end.90

land.end.90:                                      ; preds = %land.rhs.87, %lor.rhs.85
  %59 = phi i1 [ false, %lor.rhs.85 ], [ %tobool89, %land.rhs.87 ]
  br label %lor.end.92

lor.end.92:                                       ; preds = %land.end.90, %lor.lhs.false.82, %land.lhs.true.80
  %60 = phi i1 [ true, %lor.lhs.false.82 ], [ true, %land.lhs.true.80 ], [ %59, %land.end.90 ]
  %lor.ext93 = zext i1 %60 to i32
  store i32 %lor.ext93, i32* %retval
  br label %return

sw.bb.94:                                         ; preds = %entry
  %61 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %62 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call95 = call i32 @ren_BFactorOk(%struct.term* %61, %struct.term* %62)
  store i32 %call95, i32* %BFacOk, align 4
  %63 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call96 = call i32 @ren_NotPFactorOk(%struct.term* %63)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %land.lhs.true.98, label %lor.rhs.103

land.lhs.true.98:                                 ; preds = %sw.bb.94
  %64 = load i32, i32* %BFacOk, align 4
  %tobool99 = icmp ne i32 %64, 0
  br i1 %tobool99, label %lor.end.110, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %land.lhs.true.98
  %65 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call101 = call i32 @ren_NotPExtraFactorOk(%struct.term* %65)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %lor.end.110, label %lor.rhs.103

lor.rhs.103:                                      ; preds = %lor.lhs.false.100, %sw.bb.94
  %66 = load i32, i32* %BFacOk, align 4
  %tobool104 = icmp ne i32 %66, 0
  br i1 %tobool104, label %land.rhs.105, label %land.end.108

land.rhs.105:                                     ; preds = %lor.rhs.103
  %67 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %68 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call106 = call i32 @ren_BExtraFactorOk(%struct.term* %67, %struct.term* %68)
  %tobool107 = icmp ne i32 %call106, 0
  br label %land.end.108

land.end.108:                                     ; preds = %land.rhs.105, %lor.rhs.103
  %69 = phi i1 [ false, %lor.rhs.103 ], [ %tobool107, %land.rhs.105 ]
  br label %lor.end.110

lor.end.110:                                      ; preds = %land.end.108, %lor.lhs.false.100, %land.lhs.true.98
  %70 = phi i1 [ true, %lor.lhs.false.100 ], [ true, %land.lhs.true.98 ], [ %69, %land.end.108 ]
  %lor.ext111 = zext i1 %70 to i32
  store i32 %lor.ext111, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call112 = call i32 @fflush(%struct._IO_FILE* %71)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i32 0, i32 0), i32 1018)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i32 0, i32 0))
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call114 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %73)
  call void @misc_DumpCore()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %lor.end.110, %lor.end.92, %lor.end
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define internal i32 @ren_PFactorBigger3(%struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %T1 = alloca %struct.term*, align 8
  %T2 = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Ok = alloca i32, align 4
  %Limit = alloca i8, align 1
  %T1Limit = alloca i8, align 1
  %T2Limit = alloca i8, align 1
  %NotT1Limit = alloca i8, align 1
  %NotT2Limit = alloca i8, align 1
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_HasTermStamp(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_IsAtom(%struct.term* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %2)
  store i32 %call3, i32* %Top, align 4
  %3 = load i32, i32* %Top, align 4
  %call4 = call i32 @fol_IsQuantifier(i32 %3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call %struct.term* @term_SecondArgument(%struct.term* %4)
  %call8 = call i32 @ren_PFactorBigger3(%struct.term* %call7)
  store i32 %call8, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %5 = load i32, i32* %Top, align 4
  %call10 = call i32 @fol_Not()
  %call11 = call i32 @symbol_Equal(i32 %5, i32 %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.9
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call14 = call %struct.term* @term_FirstArgument(%struct.term* %6)
  %call15 = call i32 @ren_NotPFactorBigger3(%struct.term* %call14)
  store i32 %call15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.9
  %7 = load i32, i32* %Top, align 4
  %call17 = call i32 @fol_And()
  %call18 = call i32 @symbol_Equal(i32 %7, i32 %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.56

if.then.20:                                       ; preds = %if.end.16
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call21 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %8)
  %call22 = call i32 @list_Length(%struct.LIST_HELP* %call21)
  %conv = trunc i32 %call22 to i8
  store i8 %conv, i8* %Limit, align 1
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call23 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %9)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.20
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call24 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %11 = load i8, i8* %Limit, align 1
  %conv26 = zext i8 %11 to i32
  %cmp = icmp sle i32 %conv26, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call28 to %struct.term*
  %call29 = call i32 @ren_PFactorOk(%struct.term* %14)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.51

if.then.31:                                       ; preds = %for.body
  %15 = load i8, i8* %Limit, align 1
  %inc = add i8 %15, 1
  store i8 %inc, i8* %Limit, align 1
  %16 = load i8, i8* %Limit, align 1
  %conv32 = zext i8 %16 to i32
  %cmp33 = icmp sle i32 %conv32, 3
  br i1 %cmp33, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.then.31
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call35 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call35 to %struct.term*
  %call36 = call i32 @ren_PExtraFactorOk(%struct.term* %18)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.50

if.then.38:                                       ; preds = %land.lhs.true
  %19 = load i8, i8* %Limit, align 1
  %inc39 = add i8 %19, 1
  store i8 %inc39, i8* %Limit, align 1
  %20 = load i8, i8* %Limit, align 1
  %conv40 = zext i8 %20 to i32
  %cmp41 = icmp sle i32 %conv40, 3
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.49

land.lhs.true.43:                                 ; preds = %if.then.38
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call44 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %22 = bitcast i8* %call44 to %struct.term*
  %call45 = call i32 @ren_PFactorBigger3(%struct.term* %22)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %land.lhs.true.43
  %23 = load i8, i8* %Limit, align 1
  %inc48 = add i8 %23, 1
  store i8 %inc48, i8* %Limit, align 1
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %land.lhs.true.43, %if.then.38
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %land.lhs.true, %if.then.31
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call52 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call52, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %25 = load i8, i8* %Limit, align 1
  %conv53 = zext i8 %25 to i32
  %cmp54 = icmp sgt i32 %conv53, 3
  %conv55 = zext i1 %cmp54 to i32
  store i32 %conv55, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.end.16
  %26 = load i32, i32* %Top, align 4
  %call57 = call i32 @fol_Or()
  %call58 = call i32 @symbol_Equal(i32 %26, i32 %call57)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.81

if.then.60:                                       ; preds = %if.end.56
  store i32 0, i32* %Ok, align 4
  %27 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call61 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %27)
  store %struct.LIST_HELP* %call61, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.78, %if.then.60
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call63 = call i32 @list_Empty(%struct.LIST_HELP* %28)
  %tobool64 = icmp ne i32 %call63, 0
  %lnot = xor i1 %tobool64, true
  br i1 %lnot, label %for.body.65, label %for.end.80

for.body.65:                                      ; preds = %for.cond.62
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call66 = call i8* @list_Car(%struct.LIST_HELP* %29)
  %30 = bitcast i8* %call66 to %struct.term*
  %call67 = call i32 @ren_PFactorOk(%struct.term* %30)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.77

if.then.69:                                       ; preds = %for.body.65
  %31 = load i32, i32* %Ok, align 4
  %tobool70 = icmp ne i32 %31, 0
  br i1 %tobool70, label %if.then.75, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %if.then.69
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call72 = call i8* @list_Car(%struct.LIST_HELP* %32)
  %33 = bitcast i8* %call72 to %struct.term*
  %call73 = call i32 @ren_PFactorBigger3(%struct.term* %33)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %lor.lhs.false.71, %if.then.69
  store i32 1, i32* %retval
  br label %return

if.end.76:                                        ; preds = %lor.lhs.false.71
  store i32 1, i32* %Ok, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %for.body.65
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.77
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call79 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %34)
  store %struct.LIST_HELP* %call79, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.62

for.end.80:                                       ; preds = %for.cond.62
  store i32 0, i32* %retval
  br label %return

if.end.81:                                        ; preds = %if.end.56
  %35 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call82 = call %struct.term* @term_FirstArgument(%struct.term* %35)
  store %struct.term* %call82, %struct.term** %T1, align 8
  %36 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call83 = call %struct.term* @term_SecondArgument(%struct.term* %36)
  store %struct.term* %call83, %struct.term** %T2, align 8
  %37 = load i32, i32* %Top, align 4
  %call84 = call i32 @fol_Implies()
  %call85 = call i32 @symbol_Equal(i32 %37, i32 %call84)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.then.87, label %if.end.101

if.then.87:                                       ; preds = %if.end.81
  %38 = load %struct.term*, %struct.term** %T2, align 8
  %call88 = call i32 @ren_PFactorOk(%struct.term* %38)
  store i32 %call88, i32* %Ok, align 4
  %39 = load %struct.term*, %struct.term** %T1, align 8
  %call89 = call i32 @ren_NotPFactorOk(%struct.term* %39)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %land.lhs.true.91, label %lor.rhs

land.lhs.true.91:                                 ; preds = %if.then.87
  %40 = load i32, i32* %Ok, align 4
  %tobool92 = icmp ne i32 %40, 0
  br i1 %tobool92, label %lor.end, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %land.lhs.true.91
  %41 = load %struct.term*, %struct.term** %T1, align 8
  %call94 = call i32 @ren_NotPFactorBigger3(%struct.term* %41)
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.93, %if.then.87
  %42 = load i32, i32* %Ok, align 4
  %tobool96 = icmp ne i32 %42, 0
  br i1 %tobool96, label %land.rhs.97, label %land.end.100

land.rhs.97:                                      ; preds = %lor.rhs
  %43 = load %struct.term*, %struct.term** %T2, align 8
  %call98 = call i32 @ren_PFactorBigger3(%struct.term* %43)
  %tobool99 = icmp ne i32 %call98, 0
  br label %land.end.100

land.end.100:                                     ; preds = %land.rhs.97, %lor.rhs
  %44 = phi i1 [ false, %lor.rhs ], [ %tobool99, %land.rhs.97 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.100, %lor.lhs.false.93, %land.lhs.true.91
  %45 = phi i1 [ true, %lor.lhs.false.93 ], [ true, %land.lhs.true.91 ], [ %44, %land.end.100 ]
  %lor.ext = zext i1 %45 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end.101:                                       ; preds = %if.end.81
  %46 = load i32, i32* %Top, align 4
  %call102 = call i32 @fol_Equiv()
  %call103 = call i32 @symbol_Equal(i32 %46, i32 %call102)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.160

if.then.105:                                      ; preds = %if.end.101
  %47 = load %struct.term*, %struct.term** %T1, align 8
  %call106 = call i32 @ren_PFactorOk(%struct.term* %47)
  %tobool107 = icmp ne i32 %call106, 0
  %cond = select i1 %tobool107, i32 1, i32 0
  %conv108 = trunc i32 %cond to i8
  store i8 %conv108, i8* %T1Limit, align 1
  %48 = load %struct.term*, %struct.term** %T1, align 8
  %call109 = call i32 @ren_NotPFactorOk(%struct.term* %48)
  %tobool110 = icmp ne i32 %call109, 0
  %cond111 = select i1 %tobool110, i32 1, i32 0
  %conv112 = trunc i32 %cond111 to i8
  store i8 %conv112, i8* %NotT1Limit, align 1
  %49 = load %struct.term*, %struct.term** %T2, align 8
  %call113 = call i32 @ren_PFactorOk(%struct.term* %49)
  %tobool114 = icmp ne i32 %call113, 0
  %cond115 = select i1 %tobool114, i32 1, i32 0
  %conv116 = trunc i32 %cond115 to i8
  store i8 %conv116, i8* %T2Limit, align 1
  %50 = load %struct.term*, %struct.term** %T2, align 8
  %call117 = call i32 @ren_NotPFactorOk(%struct.term* %50)
  %tobool118 = icmp ne i32 %call117, 0
  %cond119 = select i1 %tobool118, i32 1, i32 0
  %conv120 = trunc i32 %cond119 to i8
  store i8 %conv120, i8* %NotT2Limit, align 1
  %51 = load i8, i8* %T1Limit, align 1
  %conv121 = zext i8 %51 to i32
  %52 = load i8, i8* %NotT2Limit, align 1
  %conv122 = zext i8 %52 to i32
  %add = add nsw i32 %conv121, %conv122
  %53 = load i8, i8* %NotT1Limit, align 1
  %conv123 = zext i8 %53 to i32
  %add124 = add nsw i32 %add, %conv123
  %54 = load i8, i8* %T2Limit, align 1
  %conv125 = zext i8 %54 to i32
  %add126 = add nsw i32 %add124, %conv125
  %cmp127 = icmp sge i32 %add126, 2
  br i1 %cmp127, label %lor.end.158, label %lor.lhs.false.129

lor.lhs.false.129:                                ; preds = %if.then.105
  %55 = load i8, i8* %T1Limit, align 1
  %conv130 = zext i8 %55 to i32
  %cmp131 = icmp ne i32 %conv130, 0
  br i1 %cmp131, label %land.lhs.true.133, label %lor.lhs.false.136

land.lhs.true.133:                                ; preds = %lor.lhs.false.129
  %56 = load %struct.term*, %struct.term** %T1, align 8
  %call134 = call i32 @ren_PExtraFactorOk(%struct.term* %56)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %lor.end.158, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %land.lhs.true.133, %lor.lhs.false.129
  %57 = load i8, i8* %T2Limit, align 1
  %conv137 = zext i8 %57 to i32
  %cmp138 = icmp ne i32 %conv137, 0
  br i1 %cmp138, label %land.lhs.true.140, label %lor.lhs.false.143

land.lhs.true.140:                                ; preds = %lor.lhs.false.136
  %58 = load %struct.term*, %struct.term** %T2, align 8
  %call141 = call i32 @ren_PExtraFactorOk(%struct.term* %58)
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %lor.end.158, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %land.lhs.true.140, %lor.lhs.false.136
  %59 = load i8, i8* %NotT1Limit, align 1
  %conv144 = zext i8 %59 to i32
  %cmp145 = icmp ne i32 %conv144, 0
  br i1 %cmp145, label %land.lhs.true.147, label %lor.rhs.150

land.lhs.true.147:                                ; preds = %lor.lhs.false.143
  %60 = load %struct.term*, %struct.term** %T1, align 8
  %call148 = call i32 @ren_NotPExtraFactorOk(%struct.term* %60)
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %lor.end.158, label %lor.rhs.150

lor.rhs.150:                                      ; preds = %land.lhs.true.147, %lor.lhs.false.143
  %61 = load i8, i8* %NotT2Limit, align 1
  %conv151 = zext i8 %61 to i32
  %cmp152 = icmp ne i32 %conv151, 0
  br i1 %cmp152, label %land.rhs.154, label %land.end.157

land.rhs.154:                                     ; preds = %lor.rhs.150
  %62 = load %struct.term*, %struct.term** %T2, align 8
  %call155 = call i32 @ren_NotPExtraFactorOk(%struct.term* %62)
  %tobool156 = icmp ne i32 %call155, 0
  br label %land.end.157

land.end.157:                                     ; preds = %land.rhs.154, %lor.rhs.150
  %63 = phi i1 [ false, %lor.rhs.150 ], [ %tobool156, %land.rhs.154 ]
  br label %lor.end.158

lor.end.158:                                      ; preds = %land.end.157, %land.lhs.true.147, %land.lhs.true.140, %land.lhs.true.133, %if.then.105
  %64 = phi i1 [ true, %land.lhs.true.147 ], [ true, %land.lhs.true.140 ], [ true, %land.lhs.true.133 ], [ true, %if.then.105 ], [ %63, %land.end.157 ]
  %lor.ext159 = zext i1 %64 to i32
  store i32 %lor.ext159, i32* %retval
  br label %return

if.end.160:                                       ; preds = %if.end.101
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call161 = call i32 @fflush(%struct._IO_FILE* %65)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i32 0, i32 0), i32 399)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i32 0, i32 0))
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call163 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %67)
  call void @misc_DumpCore()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.160, %lor.end.158, %lor.end, %for.end.80, %if.then.75, %for.end, %if.then.13, %if.then.6, %if.then
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @ren_NotPFactorBigger3(%struct.term* %Term) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %T1 = alloca %struct.term*, align 8
  %T2 = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Ok = alloca i32, align 4
  %Limit = alloca i8, align 1
  %T1Limit = alloca i8, align 1
  %T2Limit = alloca i8, align 1
  %NotT1Limit = alloca i8, align 1
  %NotT2Limit = alloca i8, align 1
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_HasTermStamp(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_IsAtom(%struct.term* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %2)
  store i32 %call3, i32* %Top, align 4
  %3 = load i32, i32* %Top, align 4
  %call4 = call i32 @fol_IsQuantifier(i32 %3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call %struct.term* @term_SecondArgument(%struct.term* %4)
  %call8 = call i32 @ren_NotPFactorBigger3(%struct.term* %call7)
  store i32 %call8, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %5 = load i32, i32* %Top, align 4
  %call10 = call i32 @fol_Not()
  %call11 = call i32 @symbol_Equal(i32 %5, i32 %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.9
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call14 = call %struct.term* @term_FirstArgument(%struct.term* %6)
  %call15 = call i32 @ren_PFactorBigger3(%struct.term* %call14)
  store i32 %call15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.9
  %7 = load i32, i32* %Top, align 4
  %call17 = call i32 @fol_Or()
  %call18 = call i32 @symbol_Equal(i32 %7, i32 %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.56

if.then.20:                                       ; preds = %if.end.16
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call21 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %8)
  %call22 = call i32 @list_Length(%struct.LIST_HELP* %call21)
  %conv = trunc i32 %call22 to i8
  store i8 %conv, i8* %Limit, align 1
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call23 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %9)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.20
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call24 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %11 = load i8, i8* %Limit, align 1
  %conv26 = zext i8 %11 to i32
  %cmp = icmp sle i32 %conv26, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call28 to %struct.term*
  %call29 = call i32 @ren_NotPFactorOk(%struct.term* %14)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.51

if.then.31:                                       ; preds = %for.body
  %15 = load i8, i8* %Limit, align 1
  %inc = add i8 %15, 1
  store i8 %inc, i8* %Limit, align 1
  %16 = load i8, i8* %Limit, align 1
  %conv32 = zext i8 %16 to i32
  %cmp33 = icmp sle i32 %conv32, 3
  br i1 %cmp33, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.then.31
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call35 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call35 to %struct.term*
  %call36 = call i32 @ren_NotPExtraFactorOk(%struct.term* %18)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.50

if.then.38:                                       ; preds = %land.lhs.true
  %19 = load i8, i8* %Limit, align 1
  %inc39 = add i8 %19, 1
  store i8 %inc39, i8* %Limit, align 1
  %20 = load i8, i8* %Limit, align 1
  %conv40 = zext i8 %20 to i32
  %cmp41 = icmp sle i32 %conv40, 3
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.49

land.lhs.true.43:                                 ; preds = %if.then.38
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call44 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %22 = bitcast i8* %call44 to %struct.term*
  %call45 = call i32 @ren_NotPFactorBigger3(%struct.term* %22)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %land.lhs.true.43
  %23 = load i8, i8* %Limit, align 1
  %inc48 = add i8 %23, 1
  store i8 %inc48, i8* %Limit, align 1
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %land.lhs.true.43, %if.then.38
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %land.lhs.true, %if.then.31
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call52 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call52, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %25 = load i8, i8* %Limit, align 1
  %conv53 = zext i8 %25 to i32
  %cmp54 = icmp sgt i32 %conv53, 3
  %conv55 = zext i1 %cmp54 to i32
  store i32 %conv55, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.end.16
  %26 = load i32, i32* %Top, align 4
  %call57 = call i32 @fol_And()
  %call58 = call i32 @symbol_Equal(i32 %26, i32 %call57)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.81

if.then.60:                                       ; preds = %if.end.56
  store i32 0, i32* %Ok, align 4
  %27 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call61 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %27)
  store %struct.LIST_HELP* %call61, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.78, %if.then.60
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call63 = call i32 @list_Empty(%struct.LIST_HELP* %28)
  %tobool64 = icmp ne i32 %call63, 0
  %lnot = xor i1 %tobool64, true
  br i1 %lnot, label %for.body.65, label %for.end.80

for.body.65:                                      ; preds = %for.cond.62
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call66 = call i8* @list_Car(%struct.LIST_HELP* %29)
  %30 = bitcast i8* %call66 to %struct.term*
  %call67 = call i32 @ren_NotPFactorOk(%struct.term* %30)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.77

if.then.69:                                       ; preds = %for.body.65
  %31 = load i32, i32* %Ok, align 4
  %tobool70 = icmp ne i32 %31, 0
  br i1 %tobool70, label %if.then.75, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %if.then.69
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call72 = call i8* @list_Car(%struct.LIST_HELP* %32)
  %33 = bitcast i8* %call72 to %struct.term*
  %call73 = call i32 @ren_NotPFactorBigger3(%struct.term* %33)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %lor.lhs.false.71, %if.then.69
  store i32 1, i32* %retval
  br label %return

if.end.76:                                        ; preds = %lor.lhs.false.71
  store i32 1, i32* %Ok, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %for.body.65
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.77
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call79 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %34)
  store %struct.LIST_HELP* %call79, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.62

for.end.80:                                       ; preds = %for.cond.62
  store i32 0, i32* %retval
  br label %return

if.end.81:                                        ; preds = %if.end.56
  %35 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call82 = call %struct.term* @term_FirstArgument(%struct.term* %35)
  store %struct.term* %call82, %struct.term** %T1, align 8
  %36 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call83 = call %struct.term* @term_SecondArgument(%struct.term* %36)
  store %struct.term* %call83, %struct.term** %T2, align 8
  %37 = load i32, i32* %Top, align 4
  %call84 = call i32 @fol_Implies()
  %call85 = call i32 @symbol_Equal(i32 %37, i32 %call84)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.then.87, label %if.end.101

if.then.87:                                       ; preds = %if.end.81
  %38 = load %struct.term*, %struct.term** %T2, align 8
  %call88 = call i32 @ren_NotPFactorOk(%struct.term* %38)
  store i32 %call88, i32* %Ok, align 4
  %39 = load %struct.term*, %struct.term** %T1, align 8
  %call89 = call i32 @ren_PFactorOk(%struct.term* %39)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %land.lhs.true.91, label %lor.rhs

land.lhs.true.91:                                 ; preds = %if.then.87
  %40 = load i32, i32* %Ok, align 4
  %tobool92 = icmp ne i32 %40, 0
  br i1 %tobool92, label %lor.end, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %land.lhs.true.91
  %41 = load %struct.term*, %struct.term** %T1, align 8
  %call94 = call i32 @ren_PExtraFactorOk(%struct.term* %41)
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.93, %if.then.87
  %42 = load i32, i32* %Ok, align 4
  %tobool96 = icmp ne i32 %42, 0
  br i1 %tobool96, label %land.rhs.97, label %land.end.100

land.rhs.97:                                      ; preds = %lor.rhs
  %43 = load %struct.term*, %struct.term** %T2, align 8
  %call98 = call i32 @ren_NotPExtraFactorOk(%struct.term* %43)
  %tobool99 = icmp ne i32 %call98, 0
  br label %land.end.100

land.end.100:                                     ; preds = %land.rhs.97, %lor.rhs
  %44 = phi i1 [ false, %lor.rhs ], [ %tobool99, %land.rhs.97 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.100, %lor.lhs.false.93, %land.lhs.true.91
  %45 = phi i1 [ true, %lor.lhs.false.93 ], [ true, %land.lhs.true.91 ], [ %44, %land.end.100 ]
  %lor.ext = zext i1 %45 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end.101:                                       ; preds = %if.end.81
  %46 = load i32, i32* %Top, align 4
  %call102 = call i32 @fol_Equiv()
  %call103 = call i32 @symbol_Equal(i32 %46, i32 %call102)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.160

if.then.105:                                      ; preds = %if.end.101
  %47 = load %struct.term*, %struct.term** %T1, align 8
  %call106 = call i32 @ren_PFactorOk(%struct.term* %47)
  %tobool107 = icmp ne i32 %call106, 0
  %cond = select i1 %tobool107, i32 1, i32 0
  %conv108 = trunc i32 %cond to i8
  store i8 %conv108, i8* %T1Limit, align 1
  %48 = load %struct.term*, %struct.term** %T1, align 8
  %call109 = call i32 @ren_NotPFactorOk(%struct.term* %48)
  %tobool110 = icmp ne i32 %call109, 0
  %cond111 = select i1 %tobool110, i32 1, i32 0
  %conv112 = trunc i32 %cond111 to i8
  store i8 %conv112, i8* %NotT1Limit, align 1
  %49 = load %struct.term*, %struct.term** %T2, align 8
  %call113 = call i32 @ren_PFactorOk(%struct.term* %49)
  %tobool114 = icmp ne i32 %call113, 0
  %cond115 = select i1 %tobool114, i32 1, i32 0
  %conv116 = trunc i32 %cond115 to i8
  store i8 %conv116, i8* %T2Limit, align 1
  %50 = load %struct.term*, %struct.term** %T2, align 8
  %call117 = call i32 @ren_NotPFactorOk(%struct.term* %50)
  %tobool118 = icmp ne i32 %call117, 0
  %cond119 = select i1 %tobool118, i32 1, i32 0
  %conv120 = trunc i32 %cond119 to i8
  store i8 %conv120, i8* %NotT2Limit, align 1
  %51 = load i8, i8* %T1Limit, align 1
  %conv121 = zext i8 %51 to i32
  %52 = load i8, i8* %NotT2Limit, align 1
  %conv122 = zext i8 %52 to i32
  %add = add nsw i32 %conv121, %conv122
  %53 = load i8, i8* %NotT1Limit, align 1
  %conv123 = zext i8 %53 to i32
  %add124 = add nsw i32 %add, %conv123
  %54 = load i8, i8* %T2Limit, align 1
  %conv125 = zext i8 %54 to i32
  %add126 = add nsw i32 %add124, %conv125
  %cmp127 = icmp sge i32 %add126, 2
  br i1 %cmp127, label %lor.end.158, label %lor.lhs.false.129

lor.lhs.false.129:                                ; preds = %if.then.105
  %55 = load i8, i8* %T1Limit, align 1
  %conv130 = zext i8 %55 to i32
  %cmp131 = icmp ne i32 %conv130, 0
  br i1 %cmp131, label %land.lhs.true.133, label %lor.lhs.false.136

land.lhs.true.133:                                ; preds = %lor.lhs.false.129
  %56 = load %struct.term*, %struct.term** %T1, align 8
  %call134 = call i32 @ren_PExtraFactorOk(%struct.term* %56)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %lor.end.158, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %land.lhs.true.133, %lor.lhs.false.129
  %57 = load i8, i8* %T2Limit, align 1
  %conv137 = zext i8 %57 to i32
  %cmp138 = icmp ne i32 %conv137, 0
  br i1 %cmp138, label %land.lhs.true.140, label %lor.lhs.false.143

land.lhs.true.140:                                ; preds = %lor.lhs.false.136
  %58 = load %struct.term*, %struct.term** %T2, align 8
  %call141 = call i32 @ren_PExtraFactorOk(%struct.term* %58)
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %lor.end.158, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %land.lhs.true.140, %lor.lhs.false.136
  %59 = load i8, i8* %NotT1Limit, align 1
  %conv144 = zext i8 %59 to i32
  %cmp145 = icmp ne i32 %conv144, 0
  br i1 %cmp145, label %land.lhs.true.147, label %lor.rhs.150

land.lhs.true.147:                                ; preds = %lor.lhs.false.143
  %60 = load %struct.term*, %struct.term** %T1, align 8
  %call148 = call i32 @ren_NotPExtraFactorOk(%struct.term* %60)
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %lor.end.158, label %lor.rhs.150

lor.rhs.150:                                      ; preds = %land.lhs.true.147, %lor.lhs.false.143
  %61 = load i8, i8* %NotT2Limit, align 1
  %conv151 = zext i8 %61 to i32
  %cmp152 = icmp ne i32 %conv151, 0
  br i1 %cmp152, label %land.rhs.154, label %land.end.157

land.rhs.154:                                     ; preds = %lor.rhs.150
  %62 = load %struct.term*, %struct.term** %T2, align 8
  %call155 = call i32 @ren_NotPExtraFactorOk(%struct.term* %62)
  %tobool156 = icmp ne i32 %call155, 0
  br label %land.end.157

land.end.157:                                     ; preds = %land.rhs.154, %lor.rhs.150
  %63 = phi i1 [ false, %lor.rhs.150 ], [ %tobool156, %land.rhs.154 ]
  br label %lor.end.158

lor.end.158:                                      ; preds = %land.end.157, %land.lhs.true.147, %land.lhs.true.140, %land.lhs.true.133, %if.then.105
  %64 = phi i1 [ true, %land.lhs.true.147 ], [ true, %land.lhs.true.140 ], [ true, %land.lhs.true.133 ], [ true, %if.then.105 ], [ %63, %land.end.157 ]
  %lor.ext159 = zext i1 %64 to i32
  store i32 %lor.ext159, i32* %retval
  br label %return

if.end.160:                                       ; preds = %if.end.101
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call161 = call i32 @fflush(%struct._IO_FILE* %65)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i32 0, i32 0), i32 479)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i32 0, i32 0))
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call163 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %67)
  call void @misc_DumpCore()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.160, %lor.end.158, %lor.end, %for.end.80, %if.then.75, %for.end, %if.then.13, %if.then.6, %if.then
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @ren_AFactorBigger3(%struct.term* %Term1, %struct.term* %Term2) #0 {
entry:
  %retval = alloca i32, align 4
  %Term1.addr = alloca %struct.term*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %Super = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %Ok = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Sub = alloca %struct.term*, align 8
  %T1 = alloca %struct.term*, align 8
  %ALimit = alloca i32, align 4
  %BLimit = alloca i32, align 4
  %PLimit = alloca i32, align 4
  %NotPLimit = alloca i32, align 4
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %cmp = icmp eq %struct.term* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call = call %struct.term* @term_Superterm(%struct.term* %2)
  store %struct.term* %call, %struct.term** %Super, align 8
  %3 = load %struct.term*, %struct.term** %Super, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %3)
  store i32 %call1, i32* %Top, align 4
  %4 = load i32, i32* %Top, align 4
  %call2 = call i32 @fol_And()
  %call3 = call i32 @symbol_Equal(i32 %4, i32 %call2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* %Top, align 4
  %call4 = call i32 @fol_IsQuantifier(i32 %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %6 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %7 = load %struct.term*, %struct.term** %Super, align 8
  %call7 = call i32 @ren_AFactorBigger3(%struct.term* %6, %struct.term* %7)
  store i32 %call7, i32* %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %Top, align 4
  %call9 = call i32 @fol_Not()
  %call10 = call i32 @symbol_Equal(i32 %8, i32 %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.8
  %9 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %10 = load %struct.term*, %struct.term** %Super, align 8
  %call13 = call i32 @ren_BFactorBigger3(%struct.term* %9, %struct.term* %10)
  store i32 %call13, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %11 = load i32, i32* %Top, align 4
  %call15 = call i32 @fol_Or()
  %call16 = call i32 @symbol_Equal(i32 %11, i32 %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.40

if.then.18:                                       ; preds = %if.end.14
  store i32 0, i32* %Ok, align 4
  %12 = load %struct.term*, %struct.term** %Super, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.18
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool21, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call22 to %struct.term*
  store %struct.term* %15, %struct.term** %Sub, align 8
  %16 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %17 = load %struct.term*, %struct.term** %Sub, align 8
  %cmp23 = icmp ne %struct.term* %16, %17
  br i1 %cmp23, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %for.body
  %18 = load %struct.term*, %struct.term** %Sub, align 8
  %call24 = call i32 @ren_PFactorOk(%struct.term* %18)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %land.lhs.true
  %19 = load i32, i32* %Ok, align 4
  %tobool27 = icmp ne i32 %19, 0
  br i1 %tobool27, label %if.then.31, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.then.26
  %20 = load %struct.term*, %struct.term** %Sub, align 8
  %call29 = call i32 @ren_PFactorBigger3(%struct.term* %20)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false.28, %if.then.26
  store i32 1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %lor.lhs.false.28
  store i32 1, i32* %Ok, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call34 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %23 = load %struct.term*, %struct.term** %Super, align 8
  %call35 = call i32 @ren_AFactorOk(%struct.term* %22, %struct.term* %23)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end
  %24 = load i32, i32* %Ok, align 4
  %tobool37 = icmp ne i32 %24, 0
  br i1 %tobool37, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %25 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %26 = load %struct.term*, %struct.term** %Super, align 8
  %call38 = call i32 @ren_AFactorBigger3(%struct.term* %25, %struct.term* %26)
  %tobool39 = icmp ne i32 %call38, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %27 = phi i1 [ true, %land.rhs ], [ %tobool39, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.end
  %28 = phi i1 [ false, %for.end ], [ %27, %lor.end ]
  %land.ext = zext i1 %28 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.14
  %29 = load i32, i32* %Top, align 4
  %call41 = call i32 @fol_Implies()
  %call42 = call i32 @symbol_Equal(i32 %29, i32 %call41)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.66

if.then.44:                                       ; preds = %if.end.40
  %30 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %31 = load %struct.term*, %struct.term** %Super, align 8
  %call45 = call %struct.term* @term_FirstArgument(%struct.term* %31)
  %cmp46 = icmp eq %struct.term* %30, %call45
  br i1 %cmp46, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %if.then.44
  %32 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %33 = load %struct.term*, %struct.term** %Super, align 8
  %call48 = call i32 @ren_BFactorBigger3(%struct.term* %32, %struct.term* %33)
  store i32 %call48, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.44
  %34 = load %struct.term*, %struct.term** %Super, align 8
  %call49 = call %struct.term* @term_FirstArgument(%struct.term* %34)
  store %struct.term* %call49, %struct.term** %T1, align 8
  %35 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %36 = load %struct.term*, %struct.term** %Super, align 8
  %call50 = call i32 @ren_AFactorOk(%struct.term* %35, %struct.term* %36)
  store i32 %call50, i32* %Ok, align 4
  %37 = load %struct.term*, %struct.term** %T1, align 8
  %call51 = call i32 @ren_NotPFactorOk(%struct.term* %37)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %land.lhs.true.53, label %lor.rhs.58

land.lhs.true.53:                                 ; preds = %if.else
  %38 = load i32, i32* %Ok, align 4
  %tobool54 = icmp ne i32 %38, 0
  br i1 %tobool54, label %lor.end.65, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %land.lhs.true.53
  %39 = load %struct.term*, %struct.term** %T1, align 8
  %call56 = call i32 @ren_NotPFactorBigger3(%struct.term* %39)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %lor.end.65, label %lor.rhs.58

lor.rhs.58:                                       ; preds = %lor.lhs.false.55, %if.else
  %40 = load i32, i32* %Ok, align 4
  %tobool59 = icmp ne i32 %40, 0
  br i1 %tobool59, label %land.rhs.60, label %land.end.63

land.rhs.60:                                      ; preds = %lor.rhs.58
  %41 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %42 = load %struct.term*, %struct.term** %Super, align 8
  %call61 = call i32 @ren_AFactorBigger3(%struct.term* %41, %struct.term* %42)
  %tobool62 = icmp ne i32 %call61, 0
  br label %land.end.63

land.end.63:                                      ; preds = %land.rhs.60, %lor.rhs.58
  %43 = phi i1 [ false, %lor.rhs.58 ], [ %tobool62, %land.rhs.60 ]
  br label %lor.end.65

lor.end.65:                                       ; preds = %land.end.63, %lor.lhs.false.55, %land.lhs.true.53
  %44 = phi i1 [ true, %lor.lhs.false.55 ], [ true, %land.lhs.true.53 ], [ %43, %land.end.63 ]
  %lor.ext = zext i1 %44 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.end.40
  %45 = load i32, i32* %Top, align 4
  %call67 = call i32 @fol_Equiv()
  %call68 = call i32 @symbol_Equal(i32 %45, i32 %call67)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.153

if.then.70:                                       ; preds = %if.end.66
  %46 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %47 = load %struct.term*, %struct.term** %Super, align 8
  %call71 = call %struct.term* @term_FirstArgument(%struct.term* %47)
  %cmp72 = icmp eq %struct.term* %46, %call71
  br i1 %cmp72, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %if.then.70
  %48 = load %struct.term*, %struct.term** %Super, align 8
  %call74 = call %struct.term* @term_SecondArgument(%struct.term* %48)
  store %struct.term* %call74, %struct.term** %Term2.addr, align 8
  br label %if.end.77

if.else.75:                                       ; preds = %if.then.70
  %49 = load %struct.term*, %struct.term** %Super, align 8
  %call76 = call %struct.term* @term_FirstArgument(%struct.term* %49)
  store %struct.term* %call76, %struct.term** %Term2.addr, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.75, %if.then.73
  %50 = load %struct.term*, %struct.term** %Super, align 8
  %call78 = call i32 @ren_Polarity(%struct.term* %50)
  switch i32 %call78, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.117
    i32 -1, label %sw.bb.135
  ]

sw.bb:                                            ; preds = %if.end.77
  %51 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %52 = load %struct.term*, %struct.term** %Super, align 8
  %call79 = call i32 @ren_AFactorOk(%struct.term* %51, %struct.term* %52)
  %tobool80 = icmp ne i32 %call79, 0
  %cond = select i1 %tobool80, i32 1, i32 0
  store i32 %cond, i32* %ALimit, align 4
  %53 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %54 = load %struct.term*, %struct.term** %Super, align 8
  %call81 = call i32 @ren_BFactorOk(%struct.term* %53, %struct.term* %54)
  %tobool82 = icmp ne i32 %call81, 0
  %cond83 = select i1 %tobool82, i32 1, i32 0
  store i32 %cond83, i32* %BLimit, align 4
  %55 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call84 = call i32 @ren_PFactorOk(%struct.term* %55)
  %tobool85 = icmp ne i32 %call84, 0
  %cond86 = select i1 %tobool85, i32 1, i32 0
  store i32 %cond86, i32* %PLimit, align 4
  %56 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call87 = call i32 @ren_NotPFactorOk(%struct.term* %56)
  %tobool88 = icmp ne i32 %call87, 0
  %cond89 = select i1 %tobool88, i32 1, i32 0
  store i32 %cond89, i32* %NotPLimit, align 4
  %57 = load i32, i32* %ALimit, align 4
  %58 = load i32, i32* %BLimit, align 4
  %add = add i32 %57, %58
  %59 = load i32, i32* %PLimit, align 4
  %add90 = add i32 %add, %59
  %60 = load i32, i32* %NotPLimit, align 4
  %add91 = add i32 %add90, %60
  %cmp92 = icmp uge i32 %add91, 2
  br i1 %cmp92, label %lor.end.115, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %sw.bb
  %61 = load i32, i32* %PLimit, align 4
  %cmp94 = icmp ne i32 %61, 0
  br i1 %cmp94, label %land.lhs.true.95, label %lor.lhs.false.98

land.lhs.true.95:                                 ; preds = %lor.lhs.false.93
  %62 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call96 = call i32 @ren_PExtraFactorOk(%struct.term* %62)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %lor.end.115, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %land.lhs.true.95, %lor.lhs.false.93
  %63 = load i32, i32* %NotPLimit, align 4
  %cmp99 = icmp ne i32 %63, 0
  br i1 %cmp99, label %land.lhs.true.100, label %lor.lhs.false.103

land.lhs.true.100:                                ; preds = %lor.lhs.false.98
  %64 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call101 = call i32 @ren_NotPExtraFactorOk(%struct.term* %64)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %lor.end.115, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %land.lhs.true.100, %lor.lhs.false.98
  %65 = load i32, i32* %ALimit, align 4
  %cmp104 = icmp ne i32 %65, 0
  br i1 %cmp104, label %land.lhs.true.105, label %lor.rhs.108

land.lhs.true.105:                                ; preds = %lor.lhs.false.103
  %66 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %67 = load %struct.term*, %struct.term** %Super, align 8
  %call106 = call i32 @ren_AExtraFactorOk(%struct.term* %66, %struct.term* %67)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %lor.end.115, label %lor.rhs.108

lor.rhs.108:                                      ; preds = %land.lhs.true.105, %lor.lhs.false.103
  %68 = load i32, i32* %BLimit, align 4
  %cmp109 = icmp ne i32 %68, 0
  br i1 %cmp109, label %land.rhs.110, label %land.end.113

land.rhs.110:                                     ; preds = %lor.rhs.108
  %69 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %70 = load %struct.term*, %struct.term** %Super, align 8
  %call111 = call i32 @ren_BExtraFactorOk(%struct.term* %69, %struct.term* %70)
  %tobool112 = icmp ne i32 %call111, 0
  br label %land.end.113

land.end.113:                                     ; preds = %land.rhs.110, %lor.rhs.108
  %71 = phi i1 [ false, %lor.rhs.108 ], [ %tobool112, %land.rhs.110 ]
  br label %lor.end.115

lor.end.115:                                      ; preds = %land.end.113, %land.lhs.true.105, %land.lhs.true.100, %land.lhs.true.95, %sw.bb
  %72 = phi i1 [ true, %land.lhs.true.105 ], [ true, %land.lhs.true.100 ], [ true, %land.lhs.true.95 ], [ true, %sw.bb ], [ %71, %land.end.113 ]
  %lor.ext116 = zext i1 %72 to i32
  store i32 %lor.ext116, i32* %retval
  br label %return

sw.bb.117:                                        ; preds = %if.end.77
  %73 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %74 = load %struct.term*, %struct.term** %Super, align 8
  %call118 = call i32 @ren_AFactorOk(%struct.term* %73, %struct.term* %74)
  store i32 %call118, i32* %Ok, align 4
  %75 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call119 = call i32 @ren_NotPFactorOk(%struct.term* %75)
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %land.lhs.true.121, label %lor.rhs.126

land.lhs.true.121:                                ; preds = %sw.bb.117
  %76 = load i32, i32* %Ok, align 4
  %tobool122 = icmp ne i32 %76, 0
  br i1 %tobool122, label %lor.end.133, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %land.lhs.true.121
  %77 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call124 = call i32 @ren_NotPFactorBigger3(%struct.term* %77)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %lor.end.133, label %lor.rhs.126

lor.rhs.126:                                      ; preds = %lor.lhs.false.123, %sw.bb.117
  %78 = load i32, i32* %Ok, align 4
  %tobool127 = icmp ne i32 %78, 0
  br i1 %tobool127, label %land.rhs.128, label %land.end.131

land.rhs.128:                                     ; preds = %lor.rhs.126
  %79 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %80 = load %struct.term*, %struct.term** %Super, align 8
  %call129 = call i32 @ren_AFactorBigger3(%struct.term* %79, %struct.term* %80)
  %tobool130 = icmp ne i32 %call129, 0
  br label %land.end.131

land.end.131:                                     ; preds = %land.rhs.128, %lor.rhs.126
  %81 = phi i1 [ false, %lor.rhs.126 ], [ %tobool130, %land.rhs.128 ]
  br label %lor.end.133

lor.end.133:                                      ; preds = %land.end.131, %lor.lhs.false.123, %land.lhs.true.121
  %82 = phi i1 [ true, %lor.lhs.false.123 ], [ true, %land.lhs.true.121 ], [ %81, %land.end.131 ]
  %lor.ext134 = zext i1 %82 to i32
  store i32 %lor.ext134, i32* %retval
  br label %return

sw.bb.135:                                        ; preds = %if.end.77
  %83 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %84 = load %struct.term*, %struct.term** %Super, align 8
  %call136 = call i32 @ren_BFactorOk(%struct.term* %83, %struct.term* %84)
  store i32 %call136, i32* %Ok, align 4
  %85 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call137 = call i32 @ren_PFactorOk(%struct.term* %85)
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %land.lhs.true.139, label %lor.rhs.144

land.lhs.true.139:                                ; preds = %sw.bb.135
  %86 = load i32, i32* %Ok, align 4
  %tobool140 = icmp ne i32 %86, 0
  br i1 %tobool140, label %lor.end.151, label %lor.lhs.false.141

lor.lhs.false.141:                                ; preds = %land.lhs.true.139
  %87 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call142 = call i32 @ren_PFactorBigger3(%struct.term* %87)
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %lor.end.151, label %lor.rhs.144

lor.rhs.144:                                      ; preds = %lor.lhs.false.141, %sw.bb.135
  %88 = load i32, i32* %Ok, align 4
  %tobool145 = icmp ne i32 %88, 0
  br i1 %tobool145, label %land.rhs.146, label %land.end.149

land.rhs.146:                                     ; preds = %lor.rhs.144
  %89 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %90 = load %struct.term*, %struct.term** %Super, align 8
  %call147 = call i32 @ren_BFactorBigger3(%struct.term* %89, %struct.term* %90)
  %tobool148 = icmp ne i32 %call147, 0
  br label %land.end.149

land.end.149:                                     ; preds = %land.rhs.146, %lor.rhs.144
  %91 = phi i1 [ false, %lor.rhs.144 ], [ %tobool148, %land.rhs.146 ]
  br label %lor.end.151

lor.end.151:                                      ; preds = %land.end.149, %lor.lhs.false.141, %land.lhs.true.139
  %92 = phi i1 [ true, %lor.lhs.false.141 ], [ true, %land.lhs.true.139 ], [ %91, %land.end.149 ]
  %lor.ext152 = zext i1 %92 to i32
  store i32 %lor.ext152, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.77
  br label %if.end.153

if.end.153:                                       ; preds = %sw.epilog, %if.end.66
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call154 = call i32 @fflush(%struct._IO_FILE* %93)
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i32 0, i32 0), i32 705)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.22, i32 0, i32 0))
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call156 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %95)
  call void @misc_DumpCore()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.153, %lor.end.151, %lor.end.133, %lor.end.115, %lor.end.65, %if.then.47, %land.end, %if.then.31, %if.then.12, %if.then.6, %if.then
  %96 = load i32, i32* %retval
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal i32 @ren_BFactorBigger3(%struct.term* %Term1, %struct.term* %Term2) #0 {
entry:
  %retval = alloca i32, align 4
  %Term1.addr = alloca %struct.term*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %Super = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %Ok = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Sub = alloca %struct.term*, align 8
  %T2 = alloca %struct.term*, align 8
  %ALimit = alloca i32, align 4
  %BLimit = alloca i32, align 4
  %PLimit = alloca i32, align 4
  %NotPLimit = alloca i32, align 4
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %cmp = icmp eq %struct.term* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call = call %struct.term* @term_Superterm(%struct.term* %2)
  store %struct.term* %call, %struct.term** %Super, align 8
  %3 = load %struct.term*, %struct.term** %Super, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %3)
  store i32 %call1, i32* %Top, align 4
  %4 = load i32, i32* %Top, align 4
  %call2 = call i32 @fol_IsQuantifier(i32 %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* %Top, align 4
  %call3 = call i32 @fol_Or()
  %call4 = call i32 @symbol_Equal(i32 %5, i32 %call3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %6 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %7 = load %struct.term*, %struct.term** %Super, align 8
  %call7 = call i32 @ren_BFactorBigger3(%struct.term* %6, %struct.term* %7)
  store i32 %call7, i32* %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %Top, align 4
  %call9 = call i32 @fol_Not()
  %call10 = call i32 @symbol_Equal(i32 %8, i32 %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.8
  %9 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %10 = load %struct.term*, %struct.term** %Super, align 8
  %call13 = call i32 @ren_AFactorBigger3(%struct.term* %9, %struct.term* %10)
  store i32 %call13, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %11 = load i32, i32* %Top, align 4
  %call15 = call i32 @fol_And()
  %call16 = call i32 @symbol_Equal(i32 %11, i32 %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.40

if.then.18:                                       ; preds = %if.end.14
  store i32 0, i32* %Ok, align 4
  %12 = load %struct.term*, %struct.term** %Super, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.18
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool21, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call22 to %struct.term*
  store %struct.term* %15, %struct.term** %Sub, align 8
  %16 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %17 = load %struct.term*, %struct.term** %Sub, align 8
  %cmp23 = icmp ne %struct.term* %16, %17
  br i1 %cmp23, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %for.body
  %18 = load %struct.term*, %struct.term** %Sub, align 8
  %call24 = call i32 @ren_NotPFactorOk(%struct.term* %18)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %land.lhs.true
  %19 = load i32, i32* %Ok, align 4
  %tobool27 = icmp ne i32 %19, 0
  br i1 %tobool27, label %if.then.31, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.then.26
  %20 = load %struct.term*, %struct.term** %Sub, align 8
  %call29 = call i32 @ren_NotPFactorBigger3(%struct.term* %20)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false.28, %if.then.26
  store i32 1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %lor.lhs.false.28
  store i32 1, i32* %Ok, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call34 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %23 = load %struct.term*, %struct.term** %Super, align 8
  %call35 = call i32 @ren_BFactorOk(%struct.term* %22, %struct.term* %23)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end
  %24 = load i32, i32* %Ok, align 4
  %tobool37 = icmp ne i32 %24, 0
  br i1 %tobool37, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %25 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %26 = load %struct.term*, %struct.term** %Super, align 8
  %call38 = call i32 @ren_BFactorBigger3(%struct.term* %25, %struct.term* %26)
  %tobool39 = icmp ne i32 %call38, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %27 = phi i1 [ true, %land.rhs ], [ %tobool39, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.end
  %28 = phi i1 [ false, %for.end ], [ %27, %lor.end ]
  %land.ext = zext i1 %28 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.14
  %29 = load i32, i32* %Top, align 4
  %call41 = call i32 @fol_Implies()
  %call42 = call i32 @symbol_Equal(i32 %29, i32 %call41)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.66

if.then.44:                                       ; preds = %if.end.40
  %30 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %31 = load %struct.term*, %struct.term** %Super, align 8
  %call45 = call %struct.term* @term_FirstArgument(%struct.term* %31)
  %cmp46 = icmp eq %struct.term* %30, %call45
  br i1 %cmp46, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %if.then.44
  %32 = load %struct.term*, %struct.term** %Super, align 8
  %call48 = call %struct.term* @term_SecondArgument(%struct.term* %32)
  store %struct.term* %call48, %struct.term** %T2, align 8
  %33 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %34 = load %struct.term*, %struct.term** %Super, align 8
  %call49 = call i32 @ren_AFactorOk(%struct.term* %33, %struct.term* %34)
  store i32 %call49, i32* %Ok, align 4
  %35 = load %struct.term*, %struct.term** %T2, align 8
  %call50 = call i32 @ren_PFactorOk(%struct.term* %35)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %land.lhs.true.52, label %lor.rhs.57

land.lhs.true.52:                                 ; preds = %if.then.47
  %36 = load i32, i32* %Ok, align 4
  %tobool53 = icmp ne i32 %36, 0
  br i1 %tobool53, label %lor.end.64, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %land.lhs.true.52
  %37 = load %struct.term*, %struct.term** %T2, align 8
  %call55 = call i32 @ren_PFactorBigger3(%struct.term* %37)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %lor.end.64, label %lor.rhs.57

lor.rhs.57:                                       ; preds = %lor.lhs.false.54, %if.then.47
  %38 = load i32, i32* %Ok, align 4
  %tobool58 = icmp ne i32 %38, 0
  br i1 %tobool58, label %land.rhs.59, label %land.end.62

land.rhs.59:                                      ; preds = %lor.rhs.57
  %39 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %40 = load %struct.term*, %struct.term** %Super, align 8
  %call60 = call i32 @ren_AFactorBigger3(%struct.term* %39, %struct.term* %40)
  %tobool61 = icmp ne i32 %call60, 0
  br label %land.end.62

land.end.62:                                      ; preds = %land.rhs.59, %lor.rhs.57
  %41 = phi i1 [ false, %lor.rhs.57 ], [ %tobool61, %land.rhs.59 ]
  br label %lor.end.64

lor.end.64:                                       ; preds = %land.end.62, %lor.lhs.false.54, %land.lhs.true.52
  %42 = phi i1 [ true, %lor.lhs.false.54 ], [ true, %land.lhs.true.52 ], [ %41, %land.end.62 ]
  %lor.ext = zext i1 %42 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.44
  %43 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %44 = load %struct.term*, %struct.term** %Super, align 8
  %call65 = call i32 @ren_BFactorBigger3(%struct.term* %43, %struct.term* %44)
  store i32 %call65, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.end.40
  %45 = load i32, i32* %Top, align 4
  %call67 = call i32 @fol_Equiv()
  %call68 = call i32 @symbol_Equal(i32 %45, i32 %call67)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.153

if.then.70:                                       ; preds = %if.end.66
  %46 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %47 = load %struct.term*, %struct.term** %Super, align 8
  %call71 = call %struct.term* @term_FirstArgument(%struct.term* %47)
  %cmp72 = icmp eq %struct.term* %46, %call71
  br i1 %cmp72, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %if.then.70
  %48 = load %struct.term*, %struct.term** %Super, align 8
  %call74 = call %struct.term* @term_SecondArgument(%struct.term* %48)
  store %struct.term* %call74, %struct.term** %Term2.addr, align 8
  br label %if.end.77

if.else.75:                                       ; preds = %if.then.70
  %49 = load %struct.term*, %struct.term** %Super, align 8
  %call76 = call %struct.term* @term_FirstArgument(%struct.term* %49)
  store %struct.term* %call76, %struct.term** %Term2.addr, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.75, %if.then.73
  %50 = load %struct.term*, %struct.term** %Super, align 8
  %call78 = call i32 @ren_Polarity(%struct.term* %50)
  switch i32 %call78, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.117
    i32 -1, label %sw.bb.135
  ]

sw.bb:                                            ; preds = %if.end.77
  %51 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %52 = load %struct.term*, %struct.term** %Super, align 8
  %call79 = call i32 @ren_AFactorOk(%struct.term* %51, %struct.term* %52)
  %tobool80 = icmp ne i32 %call79, 0
  %cond = select i1 %tobool80, i32 1, i32 0
  store i32 %cond, i32* %ALimit, align 4
  %53 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %54 = load %struct.term*, %struct.term** %Super, align 8
  %call81 = call i32 @ren_BFactorOk(%struct.term* %53, %struct.term* %54)
  %tobool82 = icmp ne i32 %call81, 0
  %cond83 = select i1 %tobool82, i32 1, i32 0
  store i32 %cond83, i32* %BLimit, align 4
  %55 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call84 = call i32 @ren_PFactorOk(%struct.term* %55)
  %tobool85 = icmp ne i32 %call84, 0
  %cond86 = select i1 %tobool85, i32 1, i32 0
  store i32 %cond86, i32* %PLimit, align 4
  %56 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call87 = call i32 @ren_NotPFactorOk(%struct.term* %56)
  %tobool88 = icmp ne i32 %call87, 0
  %cond89 = select i1 %tobool88, i32 1, i32 0
  store i32 %cond89, i32* %NotPLimit, align 4
  %57 = load i32, i32* %ALimit, align 4
  %58 = load i32, i32* %BLimit, align 4
  %add = add i32 %57, %58
  %59 = load i32, i32* %PLimit, align 4
  %add90 = add i32 %add, %59
  %60 = load i32, i32* %NotPLimit, align 4
  %add91 = add i32 %add90, %60
  %cmp92 = icmp uge i32 %add91, 2
  br i1 %cmp92, label %lor.end.115, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %sw.bb
  %61 = load i32, i32* %PLimit, align 4
  %cmp94 = icmp ne i32 %61, 0
  br i1 %cmp94, label %land.lhs.true.95, label %lor.lhs.false.98

land.lhs.true.95:                                 ; preds = %lor.lhs.false.93
  %62 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call96 = call i32 @ren_PExtraFactorOk(%struct.term* %62)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %lor.end.115, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %land.lhs.true.95, %lor.lhs.false.93
  %63 = load i32, i32* %NotPLimit, align 4
  %cmp99 = icmp ne i32 %63, 0
  br i1 %cmp99, label %land.lhs.true.100, label %lor.lhs.false.103

land.lhs.true.100:                                ; preds = %lor.lhs.false.98
  %64 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call101 = call i32 @ren_NotPExtraFactorOk(%struct.term* %64)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %lor.end.115, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %land.lhs.true.100, %lor.lhs.false.98
  %65 = load i32, i32* %ALimit, align 4
  %cmp104 = icmp ne i32 %65, 0
  br i1 %cmp104, label %land.lhs.true.105, label %lor.rhs.108

land.lhs.true.105:                                ; preds = %lor.lhs.false.103
  %66 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %67 = load %struct.term*, %struct.term** %Super, align 8
  %call106 = call i32 @ren_AExtraFactorOk(%struct.term* %66, %struct.term* %67)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %lor.end.115, label %lor.rhs.108

lor.rhs.108:                                      ; preds = %land.lhs.true.105, %lor.lhs.false.103
  %68 = load i32, i32* %BLimit, align 4
  %cmp109 = icmp ne i32 %68, 0
  br i1 %cmp109, label %land.rhs.110, label %land.end.113

land.rhs.110:                                     ; preds = %lor.rhs.108
  %69 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %70 = load %struct.term*, %struct.term** %Super, align 8
  %call111 = call i32 @ren_BExtraFactorOk(%struct.term* %69, %struct.term* %70)
  %tobool112 = icmp ne i32 %call111, 0
  br label %land.end.113

land.end.113:                                     ; preds = %land.rhs.110, %lor.rhs.108
  %71 = phi i1 [ false, %lor.rhs.108 ], [ %tobool112, %land.rhs.110 ]
  br label %lor.end.115

lor.end.115:                                      ; preds = %land.end.113, %land.lhs.true.105, %land.lhs.true.100, %land.lhs.true.95, %sw.bb
  %72 = phi i1 [ true, %land.lhs.true.105 ], [ true, %land.lhs.true.100 ], [ true, %land.lhs.true.95 ], [ true, %sw.bb ], [ %71, %land.end.113 ]
  %lor.ext116 = zext i1 %72 to i32
  store i32 %lor.ext116, i32* %retval
  br label %return

sw.bb.117:                                        ; preds = %if.end.77
  %73 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %74 = load %struct.term*, %struct.term** %Super, align 8
  %call118 = call i32 @ren_AFactorOk(%struct.term* %73, %struct.term* %74)
  store i32 %call118, i32* %Ok, align 4
  %75 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call119 = call i32 @ren_PFactorOk(%struct.term* %75)
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %land.lhs.true.121, label %lor.rhs.126

land.lhs.true.121:                                ; preds = %sw.bb.117
  %76 = load i32, i32* %Ok, align 4
  %tobool122 = icmp ne i32 %76, 0
  br i1 %tobool122, label %lor.end.133, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %land.lhs.true.121
  %77 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call124 = call i32 @ren_PFactorBigger3(%struct.term* %77)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %lor.end.133, label %lor.rhs.126

lor.rhs.126:                                      ; preds = %lor.lhs.false.123, %sw.bb.117
  %78 = load i32, i32* %Ok, align 4
  %tobool127 = icmp ne i32 %78, 0
  br i1 %tobool127, label %land.rhs.128, label %land.end.131

land.rhs.128:                                     ; preds = %lor.rhs.126
  %79 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %80 = load %struct.term*, %struct.term** %Super, align 8
  %call129 = call i32 @ren_AFactorBigger3(%struct.term* %79, %struct.term* %80)
  %tobool130 = icmp ne i32 %call129, 0
  br label %land.end.131

land.end.131:                                     ; preds = %land.rhs.128, %lor.rhs.126
  %81 = phi i1 [ false, %lor.rhs.126 ], [ %tobool130, %land.rhs.128 ]
  br label %lor.end.133

lor.end.133:                                      ; preds = %land.end.131, %lor.lhs.false.123, %land.lhs.true.121
  %82 = phi i1 [ true, %lor.lhs.false.123 ], [ true, %land.lhs.true.121 ], [ %81, %land.end.131 ]
  %lor.ext134 = zext i1 %82 to i32
  store i32 %lor.ext134, i32* %retval
  br label %return

sw.bb.135:                                        ; preds = %if.end.77
  %83 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %84 = load %struct.term*, %struct.term** %Super, align 8
  %call136 = call i32 @ren_BFactorOk(%struct.term* %83, %struct.term* %84)
  store i32 %call136, i32* %Ok, align 4
  %85 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call137 = call i32 @ren_NotPFactorOk(%struct.term* %85)
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %land.lhs.true.139, label %lor.rhs.144

land.lhs.true.139:                                ; preds = %sw.bb.135
  %86 = load i32, i32* %Ok, align 4
  %tobool140 = icmp ne i32 %86, 0
  br i1 %tobool140, label %lor.end.151, label %lor.lhs.false.141

lor.lhs.false.141:                                ; preds = %land.lhs.true.139
  %87 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call142 = call i32 @ren_NotPFactorBigger3(%struct.term* %87)
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %lor.end.151, label %lor.rhs.144

lor.rhs.144:                                      ; preds = %lor.lhs.false.141, %sw.bb.135
  %88 = load i32, i32* %Ok, align 4
  %tobool145 = icmp ne i32 %88, 0
  br i1 %tobool145, label %land.rhs.146, label %land.end.149

land.rhs.146:                                     ; preds = %lor.rhs.144
  %89 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %90 = load %struct.term*, %struct.term** %Super, align 8
  %call147 = call i32 @ren_BFactorBigger3(%struct.term* %89, %struct.term* %90)
  %tobool148 = icmp ne i32 %call147, 0
  br label %land.end.149

land.end.149:                                     ; preds = %land.rhs.146, %lor.rhs.144
  %91 = phi i1 [ false, %lor.rhs.144 ], [ %tobool148, %land.rhs.146 ]
  br label %lor.end.151

lor.end.151:                                      ; preds = %land.end.149, %lor.lhs.false.141, %land.lhs.true.139
  %92 = phi i1 [ true, %lor.lhs.false.141 ], [ true, %land.lhs.true.139 ], [ %91, %land.end.149 ]
  %lor.ext152 = zext i1 %92 to i32
  store i32 %lor.ext152, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.77
  br label %if.end.153

if.end.153:                                       ; preds = %sw.epilog, %if.end.66
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call154 = call i32 @fflush(%struct._IO_FILE* %93)
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i32 0, i32 0), i32 930)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.23, i32 0, i32 0))
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call156 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %95)
  call void @misc_DumpCore()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.153, %lor.end.151, %lor.end.133, %lor.end.115, %if.else, %lor.end.64, %land.end, %if.then.31, %if.then.12, %if.then.6, %if.then
  %96 = load i32, i32* %retval
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal i32 @ren_HasNEquivFathers(%struct.term* %Term1, %struct.term* %Term2, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %Term1.addr = alloca %struct.term*, align 8
  %Term2.addr = alloca %struct.term*, align 8
  %n.addr = alloca i32, align 4
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.term* %Term2, %struct.term** %Term2.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call = call %struct.term* @term_Superterm(%struct.term* %0)
  store %struct.term* %call, %struct.term** %Term2.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %entry
  %1 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %2 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %cmp = icmp ne %struct.term* %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %3)
  %call2 = call i32 @fol_Equiv()
  %call3 = call i32 @symbol_Equal(i32 %call1, i32 %call2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %n.addr, align 4
  %dec = add i32 %4, -1
  store i32 %dec, i32* %n.addr, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %while.body
  %6 = load %struct.term*, %struct.term** %Term2.addr, align 8
  %call7 = call %struct.term* @term_Superterm(%struct.term* %6)
  store %struct.term* %call7, %struct.term** %Term2.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.5
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @term_RootDistanceSmaller(%struct.term*, %struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Rplacd(%struct.LIST_HELP* %L1, %struct.LIST_HELP* %L2) #2 {
entry:
  %L1.addr = alloca %struct.LIST_HELP*, align 8
  %L2.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L1, %struct.LIST_HELP** %L1.addr, align 8
  store %struct.LIST_HELP* %L2, %struct.LIST_HELP** %L2.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L2.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L1.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %1, i32 0, i32 0
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %cdr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @ren_RemoveAllSubterms(%struct.term* %Term, %struct.LIST_HELP* %Renamings) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Renamings.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.LIST_HELP* %Renamings, %struct.LIST_HELP** %Renamings.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  %call = call %struct.LIST_HELP* @ren_RemoveTerm(%struct.term* %0, %struct.LIST_HELP* %1)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Renamings.addr, align 8
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %2)
  %call2 = call i32 @symbol_IsPredicate(i32 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.15, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %3)
  %call4 = call i32 @fol_IsQuantifier(i32 %call3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call %struct.term* @term_SecondArgument(%struct.term* %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  %call8 = call %struct.LIST_HELP* @ren_RemoveAllSubterms(%struct.term* %call7, %struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Renamings.addr, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %6)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call12 to %struct.term*
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  %call13 = call %struct.LIST_HELP* @ren_RemoveAllSubterms(%struct.term* %9, %struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Renamings.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.6
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %entry
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  ret %struct.LIST_HELP* %12
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @ren_RemoveTerm(%struct.term* %Term, %struct.LIST_HELP* %Renamings) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Renamings.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Renaming = alloca %struct.RENAMING_NODE*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.LIST_HELP* %Renamings, %struct.LIST_HELP** %Renamings.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call1 to %struct.RENAMING_NODE*
  store %struct.RENAMING_NODE* %3, %struct.RENAMING_NODE** %Renaming, align 8
  %4 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Renaming, align 8
  %call2 = call %struct.term* @ren_Hit(%struct.RENAMING_NODE* %4)
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %cmp = icmp eq %struct.term* %call2, %5
  br i1 %cmp, label %if.then, label %if.else.7

if.then:                                          ; preds = %for.body
  %6 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Renaming, align 8
  %call3 = call %struct.LIST_HELP* @ren_Matches(%struct.RENAMING_NODE* %6)
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %call3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %7 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Renaming, align 8
  call void @ren_Delete(%struct.RENAMING_NODE* %7)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %8, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Renaming, align 8
  call void @ren_SetGeneral(%struct.RENAMING_NODE* %9, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.10

if.else.7:                                        ; preds = %for.body
  %10 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Renaming, align 8
  %11 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %Renaming, align 8
  %call8 = call %struct.LIST_HELP* @ren_Matches(%struct.RENAMING_NODE* %11)
  %12 = load %struct.term*, %struct.term** %Term.addr, align 8
  %13 = bitcast %struct.term* %12 to i8*
  %call9 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call8, i8* %13)
  call void @ren_SetMatches(%struct.RENAMING_NODE* %10, %struct.LIST_HELP* %call9)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.7, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  %call12 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %15, i8* null)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Renamings.addr, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Renamings.addr, align 8
  ret %struct.LIST_HELP* %16
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ren_SetGeneral(%struct.RENAMING_NODE* %ren, i32 %general) #2 {
entry:
  %ren.addr = alloca %struct.RENAMING_NODE*, align 8
  %general.addr = alloca i32, align 4
  store %struct.RENAMING_NODE* %ren, %struct.RENAMING_NODE** %ren.addr, align 8
  store i32 %general, i32* %general.addr, align 4
  %0 = load i32, i32* %general.addr, align 4
  %1 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %ren.addr, align 8
  %general1 = getelementptr inbounds %struct.RENAMING_NODE, %struct.RENAMING_NODE* %1, i32 0, i32 2
  store i32 %0, i32* %general1, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ren_SetMatches(%struct.RENAMING_NODE* %ren, %struct.LIST_HELP* %matches) #2 {
entry:
  %ren.addr = alloca %struct.RENAMING_NODE*, align 8
  %matches.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.RENAMING_NODE* %ren, %struct.RENAMING_NODE** %ren.addr, align 8
  store %struct.LIST_HELP* %matches, %struct.LIST_HELP** %matches.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %matches.addr, align 8
  %1 = load %struct.RENAMING_NODE*, %struct.RENAMING_NODE** %ren.addr, align 8
  %matches1 = getelementptr inbounds %struct.RENAMING_NODE, %struct.RENAMING_NODE* %1, i32 0, i32 1
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %matches1, align 8
  ret void
}

declare %struct.term* @term_Create(i32, %struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_List(i8* %P) #2 {
entry:
  %P.addr = alloca i8*, align 8
  store i8* %P, i8** %P.addr, align 8
  %0 = load i8*, i8** %P.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  %call1 = call %struct.LIST_HELP* @list_Cons(i8* %0, %struct.LIST_HELP* %call)
  ret %struct.LIST_HELP* %call1
}

declare %struct.LIST_HELP* @fol_FreeVariables(%struct.term*) #1

declare i32 @symbol_CreateSkolemPredicate(i32, i32*) #1

declare %struct.term* @term_Copy(%struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %List) #2 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP* %0, i8* (i8*)* bitcast (%struct.term* (%struct.term*)* @term_Copy to i8* (i8*)*))
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_RplacSuperterm(%struct.term* %T1, %struct.term* %T2) #2 {
entry:
  %T1.addr = alloca %struct.term*, align 8
  %T2.addr = alloca %struct.term*, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  %0 = load %struct.term*, %struct.term** %T2.addr, align 8
  %1 = load %struct.term*, %struct.term** %T1.addr, align 8
  %super = getelementptr inbounds %struct.term, %struct.term* %1, i32 0, i32 1
  %term = bitcast %union.anon* %super to %struct.term**
  store %struct.term* %0, %struct.term** %term, align 8
  ret void
}

declare %struct.term* @fol_CreateQuantifier(i32, %struct.LIST_HELP*, %struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_All() #2 {
entry:
  %0 = load i32, i32* @fol_ALL, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_RplacArgumentList(%struct.term* %T, %struct.LIST_HELP* %A) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  %A.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  store %struct.LIST_HELP* %A, %struct.LIST_HELP** %A.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %A.addr, align 8
  %1 = load %struct.term*, %struct.term** %T.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %1, i32 0, i32 2
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %args, align 8
  ret void
}

declare void @term_Delete(%struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_StartBinding() #2 {
entry:
  %0 = load i32, i32* @cont_BINDINGS, align 4
  call void @cont_StackPush(i32 %0)
  store i32 0, i32* @cont_BINDINGS, align 4
  ret void
}

declare i32 @unify_MatchFlexible(%struct.binding*, %struct.term*, %struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_LeftContext() #2 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_LEFTCONTEXT, align 8
  ret %struct.binding* %0
}

declare %struct.term* @cont_ApplyBindingsModuloMatching(%struct.binding*, %struct.term*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_BackTrack() #2 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @cont_BINDINGS, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @cont_BackTrackLastBinding()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call = call i32 @cont_StackEmpty(i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %call1 = call i32 @cont_StackPopResult()
  store i32 %call1, i32* @cont_BINDINGS, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 0
}

declare %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP*, i8* (i8*)*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_StackPush(i32 %Entry) #2 {
entry:
  %Entry.addr = alloca i32, align 4
  store i32 %Entry, i32* %Entry.addr, align 4
  %0 = load i32, i32* %Entry.addr, align 4
  %1 = load i32, i32* @cont_STACKPOINTER, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @cont_STACKPOINTER, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* @cont_STACK, i32 0, i64 %idxprom
  store i32 %0, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_BackTrackLastBinding() #2 {
entry:
  call void @cont_BackTrackLastBindingHelp()
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_StackEmpty(i32 %Pointer) #2 {
entry:
  %Pointer.addr = alloca i32, align 4
  store i32 %Pointer, i32* %Pointer.addr, align 4
  %0 = load i32, i32* @cont_STACKPOINTER, align 4
  %1 = load i32, i32* %Pointer.addr, align 4
  %cmp = icmp eq i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_StackPopResult() #2 {
entry:
  %0 = load i32, i32* @cont_STACKPOINTER, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @cont_STACKPOINTER, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* @cont_STACK, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_BackTrackLastBindingHelp() #2 {
entry:
  %call = call %struct.binding* @cont_LastBinding()
  store %struct.binding* %call, %struct.binding** @cont_CURRENTBINDING, align 8
  %0 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  %call1 = call %struct.binding* @cont_BindingLink(%struct.binding* %0)
  call void @cont_SetLastBinding(%struct.binding* %call1)
  %1 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetBindingTerm(%struct.binding* %1, %struct.term* null)
  %2 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetBindingContext(%struct.binding* %2, %struct.binding* null)
  %3 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  %call2 = call i32 @symbol_Null()
  call void @cont_SetBindingRenaming(%struct.binding* %3, i32 %call2)
  %4 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetBindingLink(%struct.binding* %4, %struct.binding* null)
  %5 = load i32, i32* @cont_BINDINGS, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* @cont_BINDINGS, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_LastBinding() #2 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_LASTBINDING, align 8
  ret %struct.binding* %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_SetLastBinding(%struct.binding* %B) #2 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %B.addr, align 8
  store %struct.binding* %0, %struct.binding** @cont_LASTBINDING, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_BindingLink(%struct.binding* %B) #2 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %B.addr, align 8
  %link = getelementptr inbounds %struct.binding, %struct.binding* %0, i32 0, i32 4
  %1 = load %struct.binding*, %struct.binding** %link, align 8
  ret %struct.binding* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_SetBindingTerm(%struct.binding* %B, %struct.term* %T) #2 {
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
define internal void @cont_SetBindingContext(%struct.binding* %B, %struct.binding* %C) #2 {
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
define internal void @cont_SetBindingRenaming(%struct.binding* %B, i32 %S) #2 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  %S.addr = alloca i32, align 4
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %1 = load %struct.binding*, %struct.binding** %B.addr, align 8
  %renaming = getelementptr inbounds %struct.binding, %struct.binding* %1, i32 0, i32 1
  store i32 %0, i32* %renaming, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Null() #2 {
entry:
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_SetBindingLink(%struct.binding* %B, %struct.binding* %L) #2 {
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
define internal void @memory_Free(i8* %Freepointer, i32 %Size) #2 {
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
  call void @free(i8* %add.ptr24) #6
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
define internal i32 @memory_LookupRealBlockSize(i32 %BlockSize) #2 {
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
declare void @free(i8*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @memory_CalculateRealBlockSize(i32 %BlockSize) #2 {
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
define internal void @list_Free(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %1 = bitcast %struct.LIST_HELP* %0 to i8*
  call void @memory_Free(i8* %1, i32 16)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
