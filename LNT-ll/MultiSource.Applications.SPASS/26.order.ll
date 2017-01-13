; ModuleID = './MultiSource.Applications.SPASS/26.order.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }

@ord_PRECEDENCE = common global i32* null, align 8
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [31 x i8] c"\0A\09Error in file %s at line %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/SPASS/order.c\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"\0A In ord_Compare:\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\0A Illegal ordering type.\00", align 1
@.str.4 = private unnamed_addr constant [133 x i8] c"\0A Please report this error via email to spass@mpi-sb.mpg.de including\0A the SPASS version, input problem, options, operating system.\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\0A In ord_Compare: Illegal ordering type.\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"\0A In ord_ContCompare:\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"\0A In ord_ContGreater:\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c" uncomparable \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" equal \00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c" greater than \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c" smaller than \00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c" Nonsense! \00", align 1
@ord_VARCOUNT = common global [2000 x [2 x i32]] zeroinitializer, align 16
@symbol_TYPEMASK = external constant i32, align 4
@symbol_SIGNATURE = external global %struct.signature**, align 8
@symbol_TYPESTATBITS = external constant i32, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@fol_NOT = external global i32, align 4
@fol_EQUALITY = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @ord_Compare(%struct.term* %T1, %struct.term* %T2, i32* %FlagStore, i32* %P) #0 {
entry:
  %retval = alloca i32, align 4
  %T1.addr = alloca %struct.term*, align 8
  %T2.addr = alloca %struct.term*, align 8
  %FlagStore.addr = alloca i32*, align 8
  %P.addr = alloca i32*, align 8
  %Aux = alloca i32, align 4
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  store i32* %FlagStore, i32** %FlagStore.addr, align 8
  store i32* %P, i32** %P.addr, align 8
  %0 = load %struct.term*, %struct.term** %T1.addr, align 8
  %1 = load %struct.term*, %struct.term** %T2.addr, align 8
  %2 = load i32*, i32** %P.addr, align 8
  %call = call i32 @ord_CheckDomPred(%struct.term* %0, %struct.term* %1, i32* %2)
  store i32 %call, i32* %Aux, align 4
  %3 = load i32, i32* %Aux, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %Aux, align 4
  store i32 %4, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load i32*, i32** %P.addr, align 8
  store i32* %5, i32** @ord_PRECEDENCE, align 8
  %6 = load i32*, i32** %FlagStore.addr, align 8
  %call1 = call i32 @flag_GetFlagValue(i32* %6, i32 52)
  switch i32 %call1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.else
  %7 = load %struct.term*, %struct.term** %T1.addr, align 8
  %8 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call2 = call i32 @kbo_Compare(%struct.term* %7, %struct.term* %8)
  store i32 %call2, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %if.else
  %9 = load %struct.term*, %struct.term** %T1.addr, align 8
  %10 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call4 = call i32 @rpos_Compare(%struct.term* %9, %struct.term* %10)
  store i32 %call4, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.else
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i32 0, i32 0), i32 116)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %13)
  call void @misc_DumpCore()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end

if.end:                                           ; preds = %sw.epilog
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %sw.bb.3, %sw.bb, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @ord_CheckDomPred(%struct.term* %T1, %struct.term* %T2, i32* %P) #0 {
entry:
  %retval = alloca i32, align 4
  %T1.addr = alloca %struct.term*, align 8
  %T2.addr = alloca %struct.term*, align 8
  %P.addr = alloca i32*, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  store i32* %P, i32** %P.addr, align 8
  %0 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call = call i32 @term_IsAtom(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  %call2 = call i32 @symbol_HasProperty(i32 %call1, i32 64)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call4 = call i32 @term_IsAtom(%struct.term* %2)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true.6, label %if.end.40

land.lhs.true.6:                                  ; preds = %lor.lhs.false
  %3 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call7 = call i32 @term_TopSymbol(%struct.term* %3)
  %call8 = call i32 @symbol_HasProperty(i32 %call7, i32 64)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %if.end.40

if.then:                                          ; preds = %land.lhs.true.6, %land.lhs.true
  %4 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call10 = call i32 @term_IsAtom(%struct.term* %4)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.38

if.then.12:                                       ; preds = %if.then
  %5 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call13 = call i32 @term_IsAtom(%struct.term* %5)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.12
  %6 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call16 = call i32 @term_TopSymbol(%struct.term* %6)
  %call17 = call i32 @symbol_HasProperty(i32 %call16, i32 64)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end

land.lhs.true.19:                                 ; preds = %if.then.15
  %7 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call20 = call i32 @term_TopSymbol(%struct.term* %7)
  %call21 = call i32 @symbol_HasProperty(i32 %call20, i32 64)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %lor.lhs.false.23, label %if.then.28

lor.lhs.false.23:                                 ; preds = %land.lhs.true.19
  %8 = load i32*, i32** %P.addr, align 8
  %9 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call24 = call i32 @term_TopSymbol(%struct.term* %9)
  %10 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call25 = call i32 @term_TopSymbol(%struct.term* %10)
  %call26 = call i32 @symbol_PrecedenceGreater(i32* %8, i32 %call24, i32 %call25)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %lor.lhs.false.23, %land.lhs.true.19
  store i32 3, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.23, %if.then.15
  %11 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call29 = call i32 @term_TopSymbol(%struct.term* %11)
  %call30 = call i32 @symbol_HasProperty(i32 %call29, i32 64)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %lor.lhs.false.32, label %if.then.35

lor.lhs.false.32:                                 ; preds = %if.end
  %12 = load %struct.term*, %struct.term** %T1.addr, align 8
  %call33 = call i32 @term_TopSymbol(%struct.term* %12)
  %13 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call34 = call i32 @term_TopSymbol(%struct.term* %13)
  %cmp = icmp ne i32 %call33, %call34
  br i1 %cmp, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %lor.lhs.false.32, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %lor.lhs.false.32
  br label %if.end.37

if.else:                                          ; preds = %if.then.12
  store i32 3, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.36
  br label %if.end.39

if.else.38:                                       ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.37
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true.6, %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.else.38, %if.else, %if.then.35, %if.then.28
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @flag_GetFlagValue(i32* %Store, i32 %FlagId) #1 {
entry:
  %Store.addr = alloca i32*, align 8
  %FlagId.addr = alloca i32, align 4
  %Value = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  store i32 %FlagId, i32* %FlagId.addr, align 4
  %0 = load i32, i32* %FlagId.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %FlagId.addr, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load i32*, i32** %Store.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %Value, align 4
  %4 = load i32, i32* %Value, align 4
  ret i32 %4
}

declare i32 @kbo_Compare(%struct.term*, %struct.term*) #2

declare i32 @rpos_Compare(%struct.term*, %struct.term*) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @misc_ErrorReport(i8*, ...) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_DumpCore() #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %3)
  call void @abort() #4
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ord_CompareEqual(%struct.term* %T1, %struct.term* %T2, i32* %Flags) #0 {
entry:
  %retval = alloca i32, align 4
  %T1.addr = alloca %struct.term*, align 8
  %T2.addr = alloca %struct.term*, align 8
  %Flags.addr = alloca i32*, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  %0 = load i32*, i32** %Flags.addr, align 8
  %call = call i32 @flag_GetFlagValue(i32* %0, i32 52)
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.term*, %struct.term** %T1.addr, align 8
  %2 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call1 = call i32 @term_Equal(%struct.term* %1, %struct.term* %2)
  store i32 %call1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct.term*, %struct.term** %T1.addr, align 8
  %4 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call3 = call i32 @rpos_Equal(%struct.term* %3, %struct.term* %4)
  store i32 %call3, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @fflush(%struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i32 0, i32 0), i32 137)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %7)
  call void @misc_DumpCore()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.2, %sw.bb
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @term_Equal(%struct.term*, %struct.term*) #2

declare i32 @rpos_Equal(%struct.term*, %struct.term*) #2

; Function Attrs: nounwind uwtable
define i32 @ord_ContCompare(%struct.binding* %C1, %struct.term* %T1, %struct.binding* %C2, %struct.term* %T2, i32* %FlagStore, i32* %P) #0 {
entry:
  %retval = alloca i32, align 4
  %C1.addr = alloca %struct.binding*, align 8
  %T1.addr = alloca %struct.term*, align 8
  %C2.addr = alloca %struct.binding*, align 8
  %T2.addr = alloca %struct.term*, align 8
  %FlagStore.addr = alloca i32*, align 8
  %P.addr = alloca i32*, align 8
  %Aux = alloca i32, align 4
  store %struct.binding* %C1, %struct.binding** %C1.addr, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.binding* %C2, %struct.binding** %C2.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  store i32* %FlagStore, i32** %FlagStore.addr, align 8
  store i32* %P, i32** %P.addr, align 8
  %0 = load %struct.term*, %struct.term** %T1.addr, align 8
  %1 = load %struct.term*, %struct.term** %T2.addr, align 8
  %2 = load i32*, i32** %P.addr, align 8
  %call = call i32 @ord_CheckDomPred(%struct.term* %0, %struct.term* %1, i32* %2)
  store i32 %call, i32* %Aux, align 4
  %3 = load i32, i32* %Aux, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %Aux, align 4
  store i32 %4, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load i32*, i32** %P.addr, align 8
  store i32* %5, i32** @ord_PRECEDENCE, align 8
  %6 = load i32*, i32** %FlagStore.addr, align 8
  %call1 = call i32 @flag_GetFlagValue(i32* %6, i32 52)
  switch i32 %call1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.else
  %7 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %8 = load %struct.term*, %struct.term** %T1.addr, align 8
  %9 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %10 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call2 = call i32 @kbo_ContCompare(%struct.binding* %7, %struct.term* %8, %struct.binding* %9, %struct.term* %10)
  store i32 %call2, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %if.else
  %11 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %12 = load %struct.term*, %struct.term** %T1.addr, align 8
  %13 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %14 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call4 = call i32 @rpos_ContCompare(%struct.binding* %11, %struct.term* %12, %struct.binding* %13, %struct.term* %14)
  store i32 %call4, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.else
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i32 0, i32 0), i32 167)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %17)
  call void @misc_DumpCore()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end

if.end:                                           ; preds = %sw.epilog
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %sw.bb.3, %sw.bb, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @kbo_ContCompare(%struct.binding*, %struct.term*, %struct.binding*, %struct.term*) #2

declare i32 @rpos_ContCompare(%struct.binding*, %struct.term*, %struct.binding*, %struct.term*) #2

; Function Attrs: nounwind uwtable
define i32 @ord_ContGreater(%struct.binding* %C1, %struct.term* %T1, %struct.binding* %C2, %struct.term* %T2, i32* %FlagStore, i32* %P) #0 {
entry:
  %retval = alloca i32, align 4
  %C1.addr = alloca %struct.binding*, align 8
  %T1.addr = alloca %struct.term*, align 8
  %C2.addr = alloca %struct.binding*, align 8
  %T2.addr = alloca %struct.term*, align 8
  %FlagStore.addr = alloca i32*, align 8
  %P.addr = alloca i32*, align 8
  %Aux = alloca i32, align 4
  store %struct.binding* %C1, %struct.binding** %C1.addr, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.binding* %C2, %struct.binding** %C2.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  store i32* %FlagStore, i32** %FlagStore.addr, align 8
  store i32* %P, i32** %P.addr, align 8
  %0 = load %struct.term*, %struct.term** %T1.addr, align 8
  %1 = load %struct.term*, %struct.term** %T2.addr, align 8
  %2 = load i32*, i32** %P.addr, align 8
  %call = call i32 @ord_CheckDomPred(%struct.term* %0, %struct.term* %1, i32* %2)
  store i32 %call, i32* %Aux, align 4
  %3 = load i32, i32* %Aux, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %Aux, align 4
  %cmp1 = icmp eq i32 %4, 3
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load i32*, i32** %P.addr, align 8
  store i32* %5, i32** @ord_PRECEDENCE, align 8
  %6 = load i32*, i32** %FlagStore.addr, align 8
  %call2 = call i32 @flag_GetFlagValue(i32* %6, i32 52)
  switch i32 %call2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.else
  %7 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %8 = load %struct.term*, %struct.term** %T1.addr, align 8
  %9 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %10 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call3 = call i32 @kbo_ContGreater(%struct.binding* %7, %struct.term* %8, %struct.binding* %9, %struct.term* %10)
  store i32 %call3, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %if.else
  %11 = load %struct.binding*, %struct.binding** %C1.addr, align 8
  %12 = load %struct.term*, %struct.term** %T1.addr, align 8
  %13 = load %struct.binding*, %struct.binding** %C2.addr, align 8
  %14 = load %struct.term*, %struct.term** %T2.addr, align 8
  %call5 = call i32 @rpos_ContGreater(%struct.binding* %11, %struct.term* %12, %struct.binding* %13, %struct.term* %14)
  store i32 %call5, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.else
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i32 0, i32 0), i32 200)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %17)
  call void @misc_DumpCore()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end

if.end:                                           ; preds = %sw.epilog
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %sw.bb.4, %sw.bb, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @kbo_ContGreater(%struct.binding*, %struct.term*, %struct.binding*, %struct.term*) #2

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
define i32 @ord_Not(i32 %Result) #0 {
entry:
  %retval = alloca i32, align 4
  %Result.addr = alloca i32, align 4
  store i32 %Result, i32* %Result.addr, align 4
  %0 = load i32, i32* %Result.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %Result.addr, align 4
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %Result.addr, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %Result.addr, align 4
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @ord_Print(i32 %Result) #0 {
entry:
  %Result.addr = alloca i32, align 4
  store i32 %Result, i32* %Result.addr, align 4
  %0 = load i32, i32* %Result.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.3
    i32 1, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %1)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %2)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), %struct._IO_FILE* %3)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %4)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %5)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ord_LiteralCompare(%struct.term* %Lit1, i32 %Orient1, %struct.term* %Lit2, i32 %Orient2, i32 %Check, i32* %FlagStore, i32* %Precedence) #0 {
entry:
  %retval = alloca i32, align 4
  %Lit1.addr = alloca %struct.term*, align 8
  %Orient1.addr = alloca i32, align 4
  %Lit2.addr = alloca %struct.term*, align 8
  %Orient2.addr = alloca i32, align 4
  %Check.addr = alloca i32, align 4
  %FlagStore.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %result = alloca i32, align 4
  %auxResult = alloca i32, align 4
  %AuxRl1r2 = alloca i32, align 4
  %AuxRr1r2 = alloca i32, align 4
  %AuxRr1l2 = alloca i32, align 4
  %Comp1 = alloca i32, align 4
  %Comp2 = alloca i32, align 4
  %pos1 = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %l1 = alloca %struct.term*, align 8
  %r1 = alloca %struct.term*, align 8
  %l2 = alloca %struct.term*, align 8
  %r2 = alloca %struct.term*, align 8
  %aux = alloca %struct.term*, align 8
  store %struct.term* %Lit1, %struct.term** %Lit1.addr, align 8
  store i32 %Orient1, i32* %Orient1.addr, align 4
  store %struct.term* %Lit2, %struct.term** %Lit2.addr, align 8
  store i32 %Orient2, i32* %Orient2.addr, align 4
  store i32 %Check, i32* %Check.addr, align 4
  store i32* %FlagStore, i32** %FlagStore.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store i32 1, i32* %pos2, align 4
  store i32 1, i32* %pos1, align 4
  store i32 0, i32* %result, align 4
  store i32 0, i32* %Comp2, align 4
  store i32 0, i32* %Comp1, align 4
  %0 = load %struct.term*, %struct.term** %Lit1.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @fol_Not()
  %call2 = call i32 @symbol_Equal(i32 %call, i32 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Lit1.addr, align 8
  %call3 = call %struct.term* @term_FirstArgument(%struct.term* %1)
  store %struct.term* %call3, %struct.term** %Lit1.addr, align 8
  store i32 0, i32* %pos1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.term*, %struct.term** %Lit2.addr, align 8
  %call4 = call i32 @term_TopSymbol(%struct.term* %2)
  %call5 = call i32 @fol_Not()
  %call6 = call i32 @symbol_Equal(i32 %call4, i32 %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %3 = load %struct.term*, %struct.term** %Lit2.addr, align 8
  %call9 = call %struct.term* @term_FirstArgument(%struct.term* %3)
  store %struct.term* %call9, %struct.term** %Lit2.addr, align 8
  store i32 0, i32* %pos2, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %4 = load %struct.term*, %struct.term** %Lit1.addr, align 8
  %call11 = call i32 @fol_IsEquality(%struct.term* %4)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.else.383

if.then.13:                                       ; preds = %if.end.10
  %5 = load %struct.term*, %struct.term** %Lit2.addr, align 8
  %call14 = call i32 @fol_IsEquality(%struct.term* %5)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.362

if.then.16:                                       ; preds = %if.then.13
  %6 = load %struct.term*, %struct.term** %Lit1.addr, align 8
  %call17 = call %struct.term* @term_FirstArgument(%struct.term* %6)
  store %struct.term* %call17, %struct.term** %l1, align 8
  %7 = load %struct.term*, %struct.term** %Lit1.addr, align 8
  %call18 = call %struct.term* @term_SecondArgument(%struct.term* %7)
  store %struct.term* %call18, %struct.term** %r1, align 8
  %8 = load %struct.term*, %struct.term** %Lit2.addr, align 8
  %call19 = call %struct.term* @term_FirstArgument(%struct.term* %8)
  store %struct.term* %call19, %struct.term** %l2, align 8
  %9 = load %struct.term*, %struct.term** %Lit2.addr, align 8
  %call20 = call %struct.term* @term_SecondArgument(%struct.term* %9)
  store %struct.term* %call20, %struct.term** %r2, align 8
  %10 = load i32, i32* %Orient1.addr, align 4
  %tobool21 = icmp ne i32 %10, 0
  br i1 %tobool21, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.16
  %11 = load i32, i32* %Check.addr, align 4
  %tobool22 = icmp ne i32 %11, 0
  br i1 %tobool22, label %land.lhs.true, label %if.else.115

land.lhs.true:                                    ; preds = %lor.lhs.false
  %12 = load %struct.term*, %struct.term** %l1, align 8
  %13 = load %struct.term*, %struct.term** %r1, align 8
  %14 = load i32*, i32** %FlagStore.addr, align 8
  %15 = load i32*, i32** %Precedence.addr, align 8
  %call23 = call i32 @ord_Compare(%struct.term* %12, %struct.term* %13, i32* %14, i32* %15)
  store i32 %call23, i32* %Comp1, align 4
  %cmp = icmp eq i32 %call23, 3
  br i1 %cmp, label %if.then.26, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %land.lhs.true
  %16 = load i32, i32* %Comp1, align 4
  %cmp25 = icmp eq i32 %16, 1
  br i1 %cmp25, label %if.then.26, label %if.else.115

if.then.26:                                       ; preds = %lor.lhs.false.24, %land.lhs.true, %if.then.16
  %17 = load i32, i32* %Comp1, align 4
  %cmp27 = icmp eq i32 %17, 1
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.26
  %18 = load %struct.term*, %struct.term** %l1, align 8
  store %struct.term* %18, %struct.term** %aux, align 8
  %19 = load %struct.term*, %struct.term** %r1, align 8
  store %struct.term* %19, %struct.term** %l1, align 8
  %20 = load %struct.term*, %struct.term** %aux, align 8
  store %struct.term* %20, %struct.term** %r1, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.then.26
  %21 = load i32, i32* %Orient2.addr, align 4
  %tobool30 = icmp ne i32 %21, 0
  br i1 %tobool30, label %if.then.38, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.end.29
  %22 = load i32, i32* %Check.addr, align 4
  %tobool32 = icmp ne i32 %22, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.56

land.lhs.true.33:                                 ; preds = %lor.lhs.false.31
  %23 = load %struct.term*, %struct.term** %l2, align 8
  %24 = load %struct.term*, %struct.term** %r2, align 8
  %25 = load i32*, i32** %FlagStore.addr, align 8
  %26 = load i32*, i32** %Precedence.addr, align 8
  %call34 = call i32 @ord_Compare(%struct.term* %23, %struct.term* %24, i32* %25, i32* %26)
  store i32 %call34, i32* %Comp2, align 4
  %cmp35 = icmp eq i32 %call34, 3
  br i1 %cmp35, label %if.then.38, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %land.lhs.true.33
  %27 = load i32, i32* %Comp2, align 4
  %cmp37 = icmp eq i32 %27, 1
  br i1 %cmp37, label %if.then.38, label %if.else.56

if.then.38:                                       ; preds = %lor.lhs.false.36, %land.lhs.true.33, %if.end.29
  %28 = load i32, i32* %Comp2, align 4
  %cmp39 = icmp eq i32 %28, 1
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.38
  %29 = load %struct.term*, %struct.term** %l2, align 8
  store %struct.term* %29, %struct.term** %aux, align 8
  %30 = load %struct.term*, %struct.term** %r2, align 8
  store %struct.term* %30, %struct.term** %l2, align 8
  %31 = load %struct.term*, %struct.term** %aux, align 8
  store %struct.term* %31, %struct.term** %r2, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.then.38
  %32 = load %struct.term*, %struct.term** %l1, align 8
  %33 = load %struct.term*, %struct.term** %l2, align 8
  %34 = load i32*, i32** %FlagStore.addr, align 8
  %35 = load i32*, i32** %Precedence.addr, align 8
  %call42 = call i32 @ord_Compare(%struct.term* %32, %struct.term* %33, i32* %34, i32* %35)
  store i32 %call42, i32* %result, align 4
  %36 = load i32, i32* %result, align 4
  %cmp43 = icmp eq i32 %36, 2
  br i1 %cmp43, label %if.then.44, label %if.end.55

if.then.44:                                       ; preds = %if.end.41
  %37 = load i32, i32* %pos1, align 4
  %tobool45 = icmp ne i32 %37, 0
  br i1 %tobool45, label %if.then.46, label %if.else.50

if.then.46:                                       ; preds = %if.then.44
  %38 = load i32, i32* %pos2, align 4
  %tobool47 = icmp ne i32 %38, 0
  br i1 %tobool47, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.then.46
  %39 = load %struct.term*, %struct.term** %r1, align 8
  %40 = load %struct.term*, %struct.term** %r2, align 8
  %41 = load i32*, i32** %FlagStore.addr, align 8
  %42 = load i32*, i32** %Precedence.addr, align 8
  %call49 = call i32 @ord_Compare(%struct.term* %39, %struct.term* %40, i32* %41, i32* %42)
  store i32 %call49, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.46
  store i32 1, i32* %retval
  br label %return

if.else.50:                                       ; preds = %if.then.44
  %43 = load i32, i32* %pos2, align 4
  %tobool51 = icmp ne i32 %43, 0
  br i1 %tobool51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.else.50
  store i32 3, i32* %retval
  br label %return

if.else.53:                                       ; preds = %if.else.50
  %44 = load %struct.term*, %struct.term** %r1, align 8
  %45 = load %struct.term*, %struct.term** %r2, align 8
  %46 = load i32*, i32** %FlagStore.addr, align 8
  %47 = load i32*, i32** %Precedence.addr, align 8
  %call54 = call i32 @ord_Compare(%struct.term* %44, %struct.term* %45, i32* %46, i32* %47)
  store i32 %call54, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.end.41
  %48 = load i32, i32* %result, align 4
  store i32 %48, i32* %retval
  br label %return

if.else.56:                                       ; preds = %lor.lhs.false.36, %lor.lhs.false.31
  %49 = load %struct.term*, %struct.term** %l1, align 8
  %50 = load %struct.term*, %struct.term** %l2, align 8
  %call57 = call i32 @term_Equal(%struct.term* %49, %struct.term* %50)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.75

if.then.59:                                       ; preds = %if.else.56
  %51 = load %struct.term*, %struct.term** %r1, align 8
  %52 = load %struct.term*, %struct.term** %r2, align 8
  %53 = load i32*, i32** %FlagStore.addr, align 8
  %54 = load i32*, i32** %Precedence.addr, align 8
  %call60 = call i32 @ord_Compare(%struct.term* %51, %struct.term* %52, i32* %53, i32* %54)
  store i32 %call60, i32* %result, align 4
  %55 = load i32, i32* %result, align 4
  %cmp61 = icmp eq i32 %55, 2
  br i1 %cmp61, label %if.then.62, label %if.end.74

if.then.62:                                       ; preds = %if.then.59
  %56 = load i32, i32* %pos1, align 4
  %tobool63 = icmp ne i32 %56, 0
  br i1 %tobool63, label %land.lhs.true.64, label %if.else.67

land.lhs.true.64:                                 ; preds = %if.then.62
  %57 = load i32, i32* %pos2, align 4
  %tobool65 = icmp ne i32 %57, 0
  br i1 %tobool65, label %if.else.67, label %if.then.66

if.then.66:                                       ; preds = %land.lhs.true.64
  store i32 1, i32* %retval
  br label %return

if.else.67:                                       ; preds = %land.lhs.true.64, %if.then.62
  %58 = load i32, i32* %pos1, align 4
  %tobool68 = icmp ne i32 %58, 0
  br i1 %tobool68, label %if.end.72, label %land.lhs.true.69

land.lhs.true.69:                                 ; preds = %if.else.67
  %59 = load i32, i32* %pos2, align 4
  %tobool70 = icmp ne i32 %59, 0
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %land.lhs.true.69
  store i32 3, i32* %retval
  br label %return

if.end.72:                                        ; preds = %land.lhs.true.69, %if.else.67
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.59
  %60 = load i32, i32* %result, align 4
  store i32 %60, i32* %retval
  br label %return

if.end.75:                                        ; preds = %if.else.56
  %61 = load %struct.term*, %struct.term** %l1, align 8
  %62 = load %struct.term*, %struct.term** %r2, align 8
  %call76 = call i32 @term_Equal(%struct.term* %61, %struct.term* %62)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.94

if.then.78:                                       ; preds = %if.end.75
  %63 = load %struct.term*, %struct.term** %r1, align 8
  %64 = load %struct.term*, %struct.term** %l2, align 8
  %65 = load i32*, i32** %FlagStore.addr, align 8
  %66 = load i32*, i32** %Precedence.addr, align 8
  %call79 = call i32 @ord_Compare(%struct.term* %63, %struct.term* %64, i32* %65, i32* %66)
  store i32 %call79, i32* %result, align 4
  %67 = load i32, i32* %result, align 4
  %cmp80 = icmp eq i32 %67, 2
  br i1 %cmp80, label %if.then.81, label %if.end.93

if.then.81:                                       ; preds = %if.then.78
  %68 = load i32, i32* %pos1, align 4
  %tobool82 = icmp ne i32 %68, 0
  br i1 %tobool82, label %land.lhs.true.83, label %if.else.86

land.lhs.true.83:                                 ; preds = %if.then.81
  %69 = load i32, i32* %pos2, align 4
  %tobool84 = icmp ne i32 %69, 0
  br i1 %tobool84, label %if.else.86, label %if.then.85

if.then.85:                                       ; preds = %land.lhs.true.83
  store i32 1, i32* %retval
  br label %return

if.else.86:                                       ; preds = %land.lhs.true.83, %if.then.81
  %70 = load i32, i32* %pos1, align 4
  %tobool87 = icmp ne i32 %70, 0
  br i1 %tobool87, label %if.end.91, label %land.lhs.true.88

land.lhs.true.88:                                 ; preds = %if.else.86
  %71 = load i32, i32* %pos2, align 4
  %tobool89 = icmp ne i32 %71, 0
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %land.lhs.true.88
  store i32 3, i32* %retval
  br label %return

if.end.91:                                        ; preds = %land.lhs.true.88, %if.else.86
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.78
  %72 = load i32, i32* %result, align 4
  store i32 %72, i32* %retval
  br label %return

if.end.94:                                        ; preds = %if.end.75
  %73 = load %struct.term*, %struct.term** %l1, align 8
  %74 = load %struct.term*, %struct.term** %l2, align 8
  %75 = load i32*, i32** %FlagStore.addr, align 8
  %76 = load i32*, i32** %Precedence.addr, align 8
  %call95 = call i32 @ord_Compare(%struct.term* %73, %struct.term* %74, i32* %75, i32* %76)
  store i32 %call95, i32* %result, align 4
  %77 = load %struct.term*, %struct.term** %l1, align 8
  %78 = load %struct.term*, %struct.term** %r2, align 8
  %79 = load i32*, i32** %FlagStore.addr, align 8
  %80 = load i32*, i32** %Precedence.addr, align 8
  %call96 = call i32 @ord_Compare(%struct.term* %77, %struct.term* %78, i32* %79, i32* %80)
  store i32 %call96, i32* %AuxRl1r2, align 4
  %81 = load i32, i32* %result, align 4
  %82 = load i32, i32* %AuxRl1r2, align 4
  %cmp97 = icmp eq i32 %81, %82
  br i1 %cmp97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.94
  %83 = load i32, i32* %result, align 4
  store i32 %83, i32* %retval
  br label %return

if.end.99:                                        ; preds = %if.end.94
  %84 = load %struct.term*, %struct.term** %r1, align 8
  %85 = load %struct.term*, %struct.term** %r2, align 8
  %86 = load i32*, i32** %FlagStore.addr, align 8
  %87 = load i32*, i32** %Precedence.addr, align 8
  %call100 = call i32 @ord_Compare(%struct.term* %84, %struct.term* %85, i32* %86, i32* %87)
  store i32 %call100, i32* %AuxRr1r2, align 4
  %88 = load i32, i32* %result, align 4
  %89 = load i32, i32* %AuxRr1r2, align 4
  %cmp101 = icmp eq i32 %88, %89
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.99
  %90 = load i32, i32* %result, align 4
  store i32 %90, i32* %retval
  br label %return

if.end.103:                                       ; preds = %if.end.99
  %91 = load i32, i32* %AuxRl1r2, align 4
  %92 = load i32, i32* %AuxRr1r2, align 4
  %cmp104 = icmp eq i32 %91, %92
  br i1 %cmp104, label %land.lhs.true.105, label %if.end.108

land.lhs.true.105:                                ; preds = %if.end.103
  %93 = load i32, i32* %AuxRl1r2, align 4
  %cmp106 = icmp eq i32 %93, 1
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %land.lhs.true.105
  store i32 1, i32* %retval
  br label %return

if.end.108:                                       ; preds = %land.lhs.true.105, %if.end.103
  %94 = load %struct.term*, %struct.term** %r1, align 8
  %95 = load %struct.term*, %struct.term** %l2, align 8
  %96 = load i32*, i32** %FlagStore.addr, align 8
  %97 = load i32*, i32** %Precedence.addr, align 8
  %call109 = call i32 @ord_Compare(%struct.term* %94, %struct.term* %95, i32* %96, i32* %97)
  store i32 %call109, i32* %AuxRr1l2, align 4
  %98 = load i32, i32* %result, align 4
  %99 = load i32, i32* %AuxRr1l2, align 4
  %cmp110 = icmp eq i32 %98, %99
  br i1 %cmp110, label %land.lhs.true.111, label %if.end.114

land.lhs.true.111:                                ; preds = %if.end.108
  %100 = load i32, i32* %result, align 4
  %cmp112 = icmp eq i32 %100, 1
  br i1 %cmp112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %land.lhs.true.111
  store i32 1, i32* %retval
  br label %return

if.end.114:                                       ; preds = %land.lhs.true.111, %if.end.108
  store i32 0, i32* %retval
  br label %return

if.else.115:                                      ; preds = %lor.lhs.false.24, %lor.lhs.false
  %101 = load i32, i32* %Orient2.addr, align 4
  %tobool116 = icmp ne i32 %101, 0
  br i1 %tobool116, label %if.then.127, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %if.else.115
  %102 = load i32, i32* %Check.addr, align 4
  %tobool118 = icmp ne i32 %102, 0
  br i1 %tobool118, label %land.lhs.true.119, label %if.else.198

land.lhs.true.119:                                ; preds = %lor.lhs.false.117
  %103 = load %struct.term*, %struct.term** %Lit2.addr, align 8
  %call120 = call %struct.term* @term_FirstArgument(%struct.term* %103)
  %104 = load %struct.term*, %struct.term** %Lit2.addr, align 8
  %call121 = call %struct.term* @term_SecondArgument(%struct.term* %104)
  %105 = load i32*, i32** %FlagStore.addr, align 8
  %106 = load i32*, i32** %Precedence.addr, align 8
  %call122 = call i32 @ord_Compare(%struct.term* %call120, %struct.term* %call121, i32* %105, i32* %106)
  %cmp123 = icmp eq i32 %call122, 3
  %conv = zext i1 %cmp123 to i32
  store i32 %conv, i32* %Comp2, align 4
  br i1 %cmp123, label %if.then.127, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %land.lhs.true.119
  %107 = load i32, i32* %Comp2, align 4
  %cmp125 = icmp eq i32 %107, 1
  br i1 %cmp125, label %if.then.127, label %if.else.198

if.then.127:                                      ; preds = %lor.lhs.false.124, %land.lhs.true.119, %if.else.115
  %108 = load i32, i32* %Comp2, align 4
  %cmp128 = icmp eq i32 %108, 1
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.then.127
  %109 = load %struct.term*, %struct.term** %l2, align 8
  store %struct.term* %109, %struct.term** %aux, align 8
  %110 = load %struct.term*, %struct.term** %r2, align 8
  store %struct.term* %110, %struct.term** %l2, align 8
  %111 = load %struct.term*, %struct.term** %aux, align 8
  store %struct.term* %111, %struct.term** %r2, align 8
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %if.then.127
  %112 = load %struct.term*, %struct.term** %l1, align 8
  %113 = load %struct.term*, %struct.term** %l2, align 8
  %call132 = call i32 @term_Equal(%struct.term* %112, %struct.term* %113)
  %tobool133 = icmp ne i32 %call132, 0
  br i1 %tobool133, label %if.then.134, label %if.end.151

if.then.134:                                      ; preds = %if.end.131
  %114 = load %struct.term*, %struct.term** %r1, align 8
  %115 = load %struct.term*, %struct.term** %r2, align 8
  %116 = load i32*, i32** %FlagStore.addr, align 8
  %117 = load i32*, i32** %Precedence.addr, align 8
  %call135 = call i32 @ord_Compare(%struct.term* %114, %struct.term* %115, i32* %116, i32* %117)
  store i32 %call135, i32* %result, align 4
  %118 = load i32, i32* %result, align 4
  %cmp136 = icmp eq i32 %118, 2
  br i1 %cmp136, label %if.then.138, label %if.end.150

if.then.138:                                      ; preds = %if.then.134
  %119 = load i32, i32* %pos1, align 4
  %tobool139 = icmp ne i32 %119, 0
  br i1 %tobool139, label %land.lhs.true.140, label %if.else.143

land.lhs.true.140:                                ; preds = %if.then.138
  %120 = load i32, i32* %pos2, align 4
  %tobool141 = icmp ne i32 %120, 0
  br i1 %tobool141, label %if.else.143, label %if.then.142

if.then.142:                                      ; preds = %land.lhs.true.140
  store i32 1, i32* %retval
  br label %return

if.else.143:                                      ; preds = %land.lhs.true.140, %if.then.138
  %121 = load i32, i32* %pos1, align 4
  %tobool144 = icmp ne i32 %121, 0
  br i1 %tobool144, label %if.end.148, label %land.lhs.true.145

land.lhs.true.145:                                ; preds = %if.else.143
  %122 = load i32, i32* %pos2, align 4
  %tobool146 = icmp ne i32 %122, 0
  br i1 %tobool146, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %land.lhs.true.145
  store i32 3, i32* %retval
  br label %return

if.end.148:                                       ; preds = %land.lhs.true.145, %if.else.143
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.134
  %123 = load i32, i32* %result, align 4
  store i32 %123, i32* %retval
  br label %return

if.end.151:                                       ; preds = %if.end.131
  %124 = load %struct.term*, %struct.term** %r1, align 8
  %125 = load %struct.term*, %struct.term** %l2, align 8
  %call152 = call i32 @term_Equal(%struct.term* %124, %struct.term* %125)
  %tobool153 = icmp ne i32 %call152, 0
  br i1 %tobool153, label %if.then.154, label %if.end.171

if.then.154:                                      ; preds = %if.end.151
  %126 = load %struct.term*, %struct.term** %l1, align 8
  %127 = load %struct.term*, %struct.term** %r2, align 8
  %128 = load i32*, i32** %FlagStore.addr, align 8
  %129 = load i32*, i32** %Precedence.addr, align 8
  %call155 = call i32 @ord_Compare(%struct.term* %126, %struct.term* %127, i32* %128, i32* %129)
  store i32 %call155, i32* %result, align 4
  %130 = load i32, i32* %result, align 4
  %cmp156 = icmp eq i32 %130, 2
  br i1 %cmp156, label %if.then.158, label %if.end.170

if.then.158:                                      ; preds = %if.then.154
  %131 = load i32, i32* %pos1, align 4
  %tobool159 = icmp ne i32 %131, 0
  br i1 %tobool159, label %land.lhs.true.160, label %if.else.163

land.lhs.true.160:                                ; preds = %if.then.158
  %132 = load i32, i32* %pos2, align 4
  %tobool161 = icmp ne i32 %132, 0
  br i1 %tobool161, label %if.else.163, label %if.then.162

if.then.162:                                      ; preds = %land.lhs.true.160
  store i32 1, i32* %retval
  br label %return

if.else.163:                                      ; preds = %land.lhs.true.160, %if.then.158
  %133 = load i32, i32* %pos1, align 4
  %tobool164 = icmp ne i32 %133, 0
  br i1 %tobool164, label %if.end.168, label %land.lhs.true.165

land.lhs.true.165:                                ; preds = %if.else.163
  %134 = load i32, i32* %pos2, align 4
  %tobool166 = icmp ne i32 %134, 0
  br i1 %tobool166, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %land.lhs.true.165
  store i32 3, i32* %retval
  br label %return

if.end.168:                                       ; preds = %land.lhs.true.165, %if.else.163
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.then.154
  %135 = load i32, i32* %result, align 4
  store i32 %135, i32* %retval
  br label %return

if.end.171:                                       ; preds = %if.end.151
  %136 = load %struct.term*, %struct.term** %l1, align 8
  %137 = load %struct.term*, %struct.term** %l2, align 8
  %138 = load i32*, i32** %FlagStore.addr, align 8
  %139 = load i32*, i32** %Precedence.addr, align 8
  %call172 = call i32 @ord_Compare(%struct.term* %136, %struct.term* %137, i32* %138, i32* %139)
  store i32 %call172, i32* %result, align 4
  %140 = load %struct.term*, %struct.term** %r1, align 8
  %141 = load %struct.term*, %struct.term** %l2, align 8
  %142 = load i32*, i32** %FlagStore.addr, align 8
  %143 = load i32*, i32** %Precedence.addr, align 8
  %call173 = call i32 @ord_Compare(%struct.term* %140, %struct.term* %141, i32* %142, i32* %143)
  store i32 %call173, i32* %AuxRr1l2, align 4
  %144 = load i32, i32* %result, align 4
  %145 = load i32, i32* %AuxRr1l2, align 4
  %cmp174 = icmp eq i32 %144, %145
  br i1 %cmp174, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %if.end.171
  %146 = load i32, i32* %result, align 4
  store i32 %146, i32* %retval
  br label %return

if.end.177:                                       ; preds = %if.end.171
  %147 = load %struct.term*, %struct.term** %r1, align 8
  %148 = load %struct.term*, %struct.term** %r2, align 8
  %149 = load i32*, i32** %FlagStore.addr, align 8
  %150 = load i32*, i32** %Precedence.addr, align 8
  %call178 = call i32 @ord_Compare(%struct.term* %147, %struct.term* %148, i32* %149, i32* %150)
  store i32 %call178, i32* %AuxRr1r2, align 4
  %151 = load i32, i32* %result, align 4
  %152 = load i32, i32* %AuxRr1r2, align 4
  %cmp179 = icmp eq i32 %151, %152
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.end.177
  %153 = load i32, i32* %result, align 4
  store i32 %153, i32* %retval
  br label %return

if.end.182:                                       ; preds = %if.end.177
  %154 = load i32, i32* %AuxRr1l2, align 4
  %155 = load i32, i32* %AuxRr1r2, align 4
  %cmp183 = icmp eq i32 %154, %155
  br i1 %cmp183, label %land.lhs.true.185, label %if.end.189

land.lhs.true.185:                                ; preds = %if.end.182
  %156 = load i32, i32* %AuxRr1l2, align 4
  %cmp186 = icmp eq i32 %156, 3
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %land.lhs.true.185
  store i32 3, i32* %retval
  br label %return

if.end.189:                                       ; preds = %land.lhs.true.185, %if.end.182
  %157 = load %struct.term*, %struct.term** %l1, align 8
  %158 = load %struct.term*, %struct.term** %r2, align 8
  %159 = load i32*, i32** %FlagStore.addr, align 8
  %160 = load i32*, i32** %Precedence.addr, align 8
  %call190 = call i32 @ord_Compare(%struct.term* %157, %struct.term* %158, i32* %159, i32* %160)
  store i32 %call190, i32* %AuxRl1r2, align 4
  %161 = load i32, i32* %result, align 4
  %162 = load i32, i32* %AuxRl1r2, align 4
  %cmp191 = icmp eq i32 %161, %162
  br i1 %cmp191, label %land.lhs.true.193, label %if.end.197

land.lhs.true.193:                                ; preds = %if.end.189
  %163 = load i32, i32* %result, align 4
  %cmp194 = icmp eq i32 %163, 3
  br i1 %cmp194, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %land.lhs.true.193
  store i32 3, i32* %retval
  br label %return

if.end.197:                                       ; preds = %land.lhs.true.193, %if.end.189
  store i32 0, i32* %retval
  br label %return

if.else.198:                                      ; preds = %lor.lhs.false.124, %lor.lhs.false.117
  %164 = load %struct.term*, %struct.term** %l1, align 8
  %165 = load %struct.term*, %struct.term** %l2, align 8
  %call199 = call i32 @term_Equal(%struct.term* %164, %struct.term* %165)
  %tobool200 = icmp ne i32 %call199, 0
  br i1 %tobool200, label %if.then.201, label %if.end.218

if.then.201:                                      ; preds = %if.else.198
  %166 = load %struct.term*, %struct.term** %r1, align 8
  %167 = load %struct.term*, %struct.term** %r2, align 8
  %168 = load i32*, i32** %FlagStore.addr, align 8
  %169 = load i32*, i32** %Precedence.addr, align 8
  %call202 = call i32 @ord_Compare(%struct.term* %166, %struct.term* %167, i32* %168, i32* %169)
  store i32 %call202, i32* %result, align 4
  %170 = load i32, i32* %result, align 4
  %cmp203 = icmp eq i32 %170, 2
  br i1 %cmp203, label %if.then.205, label %if.end.217

if.then.205:                                      ; preds = %if.then.201
  %171 = load i32, i32* %pos1, align 4
  %tobool206 = icmp ne i32 %171, 0
  br i1 %tobool206, label %land.lhs.true.207, label %if.else.210

land.lhs.true.207:                                ; preds = %if.then.205
  %172 = load i32, i32* %pos2, align 4
  %tobool208 = icmp ne i32 %172, 0
  br i1 %tobool208, label %if.else.210, label %if.then.209

if.then.209:                                      ; preds = %land.lhs.true.207
  store i32 1, i32* %retval
  br label %return

if.else.210:                                      ; preds = %land.lhs.true.207, %if.then.205
  %173 = load i32, i32* %pos1, align 4
  %tobool211 = icmp ne i32 %173, 0
  br i1 %tobool211, label %if.end.215, label %land.lhs.true.212

land.lhs.true.212:                                ; preds = %if.else.210
  %174 = load i32, i32* %pos2, align 4
  %tobool213 = icmp ne i32 %174, 0
  br i1 %tobool213, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %land.lhs.true.212
  store i32 3, i32* %retval
  br label %return

if.end.215:                                       ; preds = %land.lhs.true.212, %if.else.210
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.then.201
  %175 = load i32, i32* %result, align 4
  store i32 %175, i32* %retval
  br label %return

if.end.218:                                       ; preds = %if.else.198
  %176 = load %struct.term*, %struct.term** %r1, align 8
  %177 = load %struct.term*, %struct.term** %l2, align 8
  %call219 = call i32 @term_Equal(%struct.term* %176, %struct.term* %177)
  %tobool220 = icmp ne i32 %call219, 0
  br i1 %tobool220, label %if.then.221, label %if.end.238

if.then.221:                                      ; preds = %if.end.218
  %178 = load %struct.term*, %struct.term** %l1, align 8
  %179 = load %struct.term*, %struct.term** %r2, align 8
  %180 = load i32*, i32** %FlagStore.addr, align 8
  %181 = load i32*, i32** %Precedence.addr, align 8
  %call222 = call i32 @ord_Compare(%struct.term* %178, %struct.term* %179, i32* %180, i32* %181)
  store i32 %call222, i32* %result, align 4
  %182 = load i32, i32* %result, align 4
  %cmp223 = icmp eq i32 %182, 2
  br i1 %cmp223, label %if.then.225, label %if.end.237

if.then.225:                                      ; preds = %if.then.221
  %183 = load i32, i32* %pos1, align 4
  %tobool226 = icmp ne i32 %183, 0
  br i1 %tobool226, label %land.lhs.true.227, label %if.else.230

land.lhs.true.227:                                ; preds = %if.then.225
  %184 = load i32, i32* %pos2, align 4
  %tobool228 = icmp ne i32 %184, 0
  br i1 %tobool228, label %if.else.230, label %if.then.229

if.then.229:                                      ; preds = %land.lhs.true.227
  store i32 1, i32* %retval
  br label %return

if.else.230:                                      ; preds = %land.lhs.true.227, %if.then.225
  %185 = load i32, i32* %pos1, align 4
  %tobool231 = icmp ne i32 %185, 0
  br i1 %tobool231, label %if.end.235, label %land.lhs.true.232

land.lhs.true.232:                                ; preds = %if.else.230
  %186 = load i32, i32* %pos2, align 4
  %tobool233 = icmp ne i32 %186, 0
  br i1 %tobool233, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %land.lhs.true.232
  store i32 3, i32* %retval
  br label %return

if.end.235:                                       ; preds = %land.lhs.true.232, %if.else.230
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.then.221
  %187 = load i32, i32* %result, align 4
  store i32 %187, i32* %retval
  br label %return

if.end.238:                                       ; preds = %if.end.218
  %188 = load %struct.term*, %struct.term** %l1, align 8
  %189 = load %struct.term*, %struct.term** %r2, align 8
  %call239 = call i32 @term_Equal(%struct.term* %188, %struct.term* %189)
  %tobool240 = icmp ne i32 %call239, 0
  br i1 %tobool240, label %if.then.241, label %if.end.258

if.then.241:                                      ; preds = %if.end.238
  %190 = load %struct.term*, %struct.term** %r1, align 8
  %191 = load %struct.term*, %struct.term** %l2, align 8
  %192 = load i32*, i32** %FlagStore.addr, align 8
  %193 = load i32*, i32** %Precedence.addr, align 8
  %call242 = call i32 @ord_Compare(%struct.term* %190, %struct.term* %191, i32* %192, i32* %193)
  store i32 %call242, i32* %result, align 4
  %194 = load i32, i32* %result, align 4
  %cmp243 = icmp eq i32 %194, 2
  br i1 %cmp243, label %if.then.245, label %if.end.257

if.then.245:                                      ; preds = %if.then.241
  %195 = load i32, i32* %pos1, align 4
  %tobool246 = icmp ne i32 %195, 0
  br i1 %tobool246, label %land.lhs.true.247, label %if.else.250

land.lhs.true.247:                                ; preds = %if.then.245
  %196 = load i32, i32* %pos2, align 4
  %tobool248 = icmp ne i32 %196, 0
  br i1 %tobool248, label %if.else.250, label %if.then.249

if.then.249:                                      ; preds = %land.lhs.true.247
  store i32 1, i32* %retval
  br label %return

if.else.250:                                      ; preds = %land.lhs.true.247, %if.then.245
  %197 = load i32, i32* %pos1, align 4
  %tobool251 = icmp ne i32 %197, 0
  br i1 %tobool251, label %if.end.255, label %land.lhs.true.252

land.lhs.true.252:                                ; preds = %if.else.250
  %198 = load i32, i32* %pos2, align 4
  %tobool253 = icmp ne i32 %198, 0
  br i1 %tobool253, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %land.lhs.true.252
  store i32 3, i32* %retval
  br label %return

if.end.255:                                       ; preds = %land.lhs.true.252, %if.else.250
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.255
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256, %if.then.241
  %199 = load i32, i32* %result, align 4
  store i32 %199, i32* %retval
  br label %return

if.end.258:                                       ; preds = %if.end.238
  %200 = load %struct.term*, %struct.term** %r1, align 8
  %201 = load %struct.term*, %struct.term** %r2, align 8
  %call259 = call i32 @term_Equal(%struct.term* %200, %struct.term* %201)
  %tobool260 = icmp ne i32 %call259, 0
  br i1 %tobool260, label %if.then.261, label %if.end.278

if.then.261:                                      ; preds = %if.end.258
  %202 = load %struct.term*, %struct.term** %l1, align 8
  %203 = load %struct.term*, %struct.term** %l2, align 8
  %204 = load i32*, i32** %FlagStore.addr, align 8
  %205 = load i32*, i32** %Precedence.addr, align 8
  %call262 = call i32 @ord_Compare(%struct.term* %202, %struct.term* %203, i32* %204, i32* %205)
  store i32 %call262, i32* %result, align 4
  %206 = load i32, i32* %result, align 4
  %cmp263 = icmp eq i32 %206, 2
  br i1 %cmp263, label %if.then.265, label %if.end.277

if.then.265:                                      ; preds = %if.then.261
  %207 = load i32, i32* %pos1, align 4
  %tobool266 = icmp ne i32 %207, 0
  br i1 %tobool266, label %land.lhs.true.267, label %if.else.270

land.lhs.true.267:                                ; preds = %if.then.265
  %208 = load i32, i32* %pos2, align 4
  %tobool268 = icmp ne i32 %208, 0
  br i1 %tobool268, label %if.else.270, label %if.then.269

if.then.269:                                      ; preds = %land.lhs.true.267
  store i32 1, i32* %retval
  br label %return

if.else.270:                                      ; preds = %land.lhs.true.267, %if.then.265
  %209 = load i32, i32* %pos1, align 4
  %tobool271 = icmp ne i32 %209, 0
  br i1 %tobool271, label %if.end.275, label %land.lhs.true.272

land.lhs.true.272:                                ; preds = %if.else.270
  %210 = load i32, i32* %pos2, align 4
  %tobool273 = icmp ne i32 %210, 0
  br i1 %tobool273, label %if.then.274, label %if.end.275

if.then.274:                                      ; preds = %land.lhs.true.272
  store i32 3, i32* %retval
  br label %return

if.end.275:                                       ; preds = %land.lhs.true.272, %if.else.270
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.276, %if.then.261
  %211 = load i32, i32* %result, align 4
  store i32 %211, i32* %retval
  br label %return

if.end.278:                                       ; preds = %if.end.258
  %212 = load %struct.term*, %struct.term** %l1, align 8
  %213 = load %struct.term*, %struct.term** %l2, align 8
  %214 = load i32*, i32** %FlagStore.addr, align 8
  %215 = load i32*, i32** %Precedence.addr, align 8
  %call279 = call i32 @ord_Compare(%struct.term* %212, %struct.term* %213, i32* %214, i32* %215)
  store i32 %call279, i32* %result, align 4
  %216 = load i32, i32* %result, align 4
  %cmp280 = icmp eq i32 %216, 0
  br i1 %cmp280, label %if.then.282, label %if.end.319

if.then.282:                                      ; preds = %if.end.278
  %217 = load %struct.term*, %struct.term** %l1, align 8
  %218 = load %struct.term*, %struct.term** %r2, align 8
  %219 = load i32*, i32** %FlagStore.addr, align 8
  %220 = load i32*, i32** %Precedence.addr, align 8
  %call283 = call i32 @ord_Compare(%struct.term* %217, %struct.term* %218, i32* %219, i32* %220)
  store i32 %call283, i32* %result, align 4
  %221 = load i32, i32* %result, align 4
  %cmp284 = icmp eq i32 %221, 0
  br i1 %cmp284, label %if.then.286, label %if.end.296

if.then.286:                                      ; preds = %if.then.282
  %222 = load %struct.term*, %struct.term** %r1, align 8
  %223 = load %struct.term*, %struct.term** %l2, align 8
  %224 = load i32*, i32** %FlagStore.addr, align 8
  %225 = load i32*, i32** %Precedence.addr, align 8
  %call287 = call i32 @ord_Compare(%struct.term* %222, %struct.term* %223, i32* %224, i32* %225)
  %cmp288 = icmp eq i32 %call287, 3
  br i1 %cmp288, label %land.lhs.true.290, label %if.end.295

land.lhs.true.290:                                ; preds = %if.then.286
  %226 = load %struct.term*, %struct.term** %r1, align 8
  %227 = load %struct.term*, %struct.term** %r2, align 8
  %228 = load i32*, i32** %FlagStore.addr, align 8
  %229 = load i32*, i32** %Precedence.addr, align 8
  %call291 = call i32 @ord_Compare(%struct.term* %226, %struct.term* %227, i32* %228, i32* %229)
  %cmp292 = icmp eq i32 %call291, 3
  br i1 %cmp292, label %if.then.294, label %if.end.295

if.then.294:                                      ; preds = %land.lhs.true.290
  store i32 3, i32* %retval
  br label %return

if.end.295:                                       ; preds = %land.lhs.true.290, %if.then.286
  store i32 0, i32* %retval
  br label %return

if.end.296:                                       ; preds = %if.then.282
  %230 = load i32, i32* %result, align 4
  %cmp297 = icmp eq i32 %230, 3
  br i1 %cmp297, label %if.then.299, label %if.end.305

if.then.299:                                      ; preds = %if.end.296
  %231 = load %struct.term*, %struct.term** %r1, align 8
  %232 = load %struct.term*, %struct.term** %l2, align 8
  %233 = load i32*, i32** %FlagStore.addr, align 8
  %234 = load i32*, i32** %Precedence.addr, align 8
  %call300 = call i32 @ord_Compare(%struct.term* %231, %struct.term* %232, i32* %233, i32* %234)
  %cmp301 = icmp eq i32 %call300, 3
  br i1 %cmp301, label %if.then.303, label %if.end.304

if.then.303:                                      ; preds = %if.then.299
  store i32 3, i32* %retval
  br label %return

if.end.304:                                       ; preds = %if.then.299
  store i32 0, i32* %retval
  br label %return

if.end.305:                                       ; preds = %if.end.296
  %235 = load i32, i32* %result, align 4
  %cmp306 = icmp eq i32 %235, 1
  br i1 %cmp306, label %if.then.308, label %if.end.318

if.then.308:                                      ; preds = %if.end.305
  %236 = load %struct.term*, %struct.term** %r1, align 8
  %237 = load %struct.term*, %struct.term** %l2, align 8
  %238 = load i32*, i32** %FlagStore.addr, align 8
  %239 = load i32*, i32** %Precedence.addr, align 8
  %call309 = call i32 @ord_Compare(%struct.term* %236, %struct.term* %237, i32* %238, i32* %239)
  %cmp310 = icmp eq i32 %call309, 1
  br i1 %cmp310, label %if.then.316, label %lor.lhs.false.312

lor.lhs.false.312:                                ; preds = %if.then.308
  %240 = load %struct.term*, %struct.term** %r1, align 8
  %241 = load %struct.term*, %struct.term** %r2, align 8
  %242 = load i32*, i32** %FlagStore.addr, align 8
  %243 = load i32*, i32** %Precedence.addr, align 8
  %call313 = call i32 @ord_Compare(%struct.term* %240, %struct.term* %241, i32* %242, i32* %243)
  %cmp314 = icmp eq i32 %call313, 1
  br i1 %cmp314, label %if.then.316, label %if.end.317

if.then.316:                                      ; preds = %lor.lhs.false.312, %if.then.308
  store i32 1, i32* %retval
  br label %return

if.end.317:                                       ; preds = %lor.lhs.false.312
  store i32 0, i32* %retval
  br label %return

if.end.318:                                       ; preds = %if.end.305
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.318, %if.end.278
  %244 = load i32, i32* %result, align 4
  %cmp320 = icmp eq i32 %244, 3
  br i1 %cmp320, label %if.then.322, label %if.end.339

if.then.322:                                      ; preds = %if.end.319
  %245 = load %struct.term*, %struct.term** %l1, align 8
  %246 = load %struct.term*, %struct.term** %r2, align 8
  %247 = load i32*, i32** %FlagStore.addr, align 8
  %248 = load i32*, i32** %Precedence.addr, align 8
  %call323 = call i32 @ord_Compare(%struct.term* %245, %struct.term* %246, i32* %247, i32* %248)
  store i32 %call323, i32* %result, align 4
  %cmp324 = icmp eq i32 %call323, 3
  br i1 %cmp324, label %if.then.330, label %lor.lhs.false.326

lor.lhs.false.326:                                ; preds = %if.then.322
  %249 = load %struct.term*, %struct.term** %r1, align 8
  %250 = load %struct.term*, %struct.term** %r2, align 8
  %251 = load i32*, i32** %FlagStore.addr, align 8
  %252 = load i32*, i32** %Precedence.addr, align 8
  %call327 = call i32 @ord_Compare(%struct.term* %249, %struct.term* %250, i32* %251, i32* %252)
  store i32 %call327, i32* %auxResult, align 4
  %cmp328 = icmp eq i32 %call327, 3
  br i1 %cmp328, label %if.then.330, label %if.end.331

if.then.330:                                      ; preds = %lor.lhs.false.326, %if.then.322
  store i32 3, i32* %retval
  br label %return

if.end.331:                                       ; preds = %lor.lhs.false.326
  %253 = load i32, i32* %result, align 4
  %cmp332 = icmp eq i32 %253, 0
  br i1 %cmp332, label %if.then.337, label %lor.lhs.false.334

lor.lhs.false.334:                                ; preds = %if.end.331
  %254 = load i32, i32* %auxResult, align 4
  %cmp335 = icmp eq i32 %254, 0
  br i1 %cmp335, label %if.then.337, label %if.end.338

if.then.337:                                      ; preds = %lor.lhs.false.334, %if.end.331
  store i32 0, i32* %retval
  br label %return

if.end.338:                                       ; preds = %lor.lhs.false.334
  store i32 1, i32* %retval
  br label %return

if.end.339:                                       ; preds = %if.end.319
  %255 = load i32, i32* %result, align 4
  %cmp340 = icmp eq i32 %255, 1
  br i1 %cmp340, label %if.then.342, label %if.end.359

if.then.342:                                      ; preds = %if.end.339
  %256 = load %struct.term*, %struct.term** %r1, align 8
  %257 = load %struct.term*, %struct.term** %l2, align 8
  %258 = load i32*, i32** %FlagStore.addr, align 8
  %259 = load i32*, i32** %Precedence.addr, align 8
  %call343 = call i32 @ord_Compare(%struct.term* %256, %struct.term* %257, i32* %258, i32* %259)
  store i32 %call343, i32* %result, align 4
  %cmp344 = icmp eq i32 %call343, 1
  br i1 %cmp344, label %if.then.350, label %lor.lhs.false.346

lor.lhs.false.346:                                ; preds = %if.then.342
  %260 = load %struct.term*, %struct.term** %r1, align 8
  %261 = load %struct.term*, %struct.term** %r2, align 8
  %262 = load i32*, i32** %FlagStore.addr, align 8
  %263 = load i32*, i32** %Precedence.addr, align 8
  %call347 = call i32 @ord_Compare(%struct.term* %260, %struct.term* %261, i32* %262, i32* %263)
  store i32 %call347, i32* %auxResult, align 4
  %cmp348 = icmp eq i32 %call347, 1
  br i1 %cmp348, label %if.then.350, label %if.end.351

if.then.350:                                      ; preds = %lor.lhs.false.346, %if.then.342
  store i32 1, i32* %retval
  br label %return

if.end.351:                                       ; preds = %lor.lhs.false.346
  %264 = load i32, i32* %result, align 4
  %cmp352 = icmp eq i32 %264, 0
  br i1 %cmp352, label %if.then.357, label %lor.lhs.false.354

lor.lhs.false.354:                                ; preds = %if.end.351
  %265 = load i32, i32* %auxResult, align 4
  %cmp355 = icmp eq i32 %265, 0
  br i1 %cmp355, label %if.then.357, label %if.end.358

if.then.357:                                      ; preds = %lor.lhs.false.354, %if.end.351
  store i32 0, i32* %retval
  br label %return

if.end.358:                                       ; preds = %lor.lhs.false.354
  store i32 3, i32* %retval
  br label %return

if.end.359:                                       ; preds = %if.end.339
  br label %if.end.360

if.end.360:                                       ; preds = %if.end.359
  br label %if.end.361

if.end.361:                                       ; preds = %if.end.360
  br label %if.end.382

if.else.362:                                      ; preds = %if.then.13
  %266 = load %struct.term*, %struct.term** %Lit1.addr, align 8
  %call363 = call %struct.term* @term_FirstArgument(%struct.term* %266)
  %267 = load %struct.term*, %struct.term** %Lit2.addr, align 8
  %268 = load i32*, i32** %FlagStore.addr, align 8
  %269 = load i32*, i32** %Precedence.addr, align 8
  %call364 = call i32 @ord_Compare(%struct.term* %call363, %struct.term* %267, i32* %268, i32* %269)
  store i32 %call364, i32* %result, align 4
  %270 = load i32, i32* %Orient1.addr, align 4
  %tobool365 = icmp ne i32 %270, 0
  br i1 %tobool365, label %if.end.381, label %land.lhs.true.366

land.lhs.true.366:                                ; preds = %if.else.362
  %271 = load i32, i32* %result, align 4
  %cmp367 = icmp ne i32 %271, 3
  br i1 %cmp367, label %if.then.369, label %if.end.381

if.then.369:                                      ; preds = %land.lhs.true.366
  %272 = load %struct.term*, %struct.term** %Lit1.addr, align 8
  %call370 = call %struct.term* @term_SecondArgument(%struct.term* %272)
  %273 = load %struct.term*, %struct.term** %Lit2.addr, align 8
  %274 = load i32*, i32** %FlagStore.addr, align 8
  %275 = load i32*, i32** %Precedence.addr, align 8
  %call371 = call i32 @ord_Compare(%struct.term* %call370, %struct.term* %273, i32* %274, i32* %275)
  store i32 %call371, i32* %auxResult, align 4
  %276 = load i32, i32* %auxResult, align 4
  %cmp372 = icmp eq i32 %276, 3
  br i1 %cmp372, label %if.then.374, label %if.else.375

if.then.374:                                      ; preds = %if.then.369
  store i32 3, i32* %result, align 4
  br label %if.end.380

if.else.375:                                      ; preds = %if.then.369
  %277 = load i32, i32* %result, align 4
  %278 = load i32, i32* %auxResult, align 4
  %cmp376 = icmp ne i32 %277, %278
  br i1 %cmp376, label %if.then.378, label %if.end.379

if.then.378:                                      ; preds = %if.else.375
  store i32 0, i32* %result, align 4
  br label %if.end.379

if.end.379:                                       ; preds = %if.then.378, %if.else.375
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.379, %if.then.374
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380, %land.lhs.true.366, %if.else.362
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381, %if.end.361
  br label %if.end.424

if.else.383:                                      ; preds = %if.end.10
  %279 = load %struct.term*, %struct.term** %Lit2.addr, align 8
  %call384 = call i32 @fol_IsEquality(%struct.term* %279)
  %tobool385 = icmp ne i32 %call384, 0
  br i1 %tobool385, label %if.then.386, label %if.else.406

if.then.386:                                      ; preds = %if.else.383
  %280 = load %struct.term*, %struct.term** %Lit1.addr, align 8
  %281 = load %struct.term*, %struct.term** %Lit2.addr, align 8
  %call387 = call %struct.term* @term_FirstArgument(%struct.term* %281)
  %282 = load i32*, i32** %FlagStore.addr, align 8
  %283 = load i32*, i32** %Precedence.addr, align 8
  %call388 = call i32 @ord_Compare(%struct.term* %280, %struct.term* %call387, i32* %282, i32* %283)
  store i32 %call388, i32* %result, align 4
  %284 = load i32, i32* %Orient2.addr, align 4
  %tobool389 = icmp ne i32 %284, 0
  br i1 %tobool389, label %if.end.405, label %land.lhs.true.390

land.lhs.true.390:                                ; preds = %if.then.386
  %285 = load i32, i32* %result, align 4
  %cmp391 = icmp ne i32 %285, 1
  br i1 %cmp391, label %if.then.393, label %if.end.405

if.then.393:                                      ; preds = %land.lhs.true.390
  %286 = load %struct.term*, %struct.term** %Lit1.addr, align 8
  %287 = load %struct.term*, %struct.term** %Lit2.addr, align 8
  %call394 = call %struct.term* @term_SecondArgument(%struct.term* %287)
  %288 = load i32*, i32** %FlagStore.addr, align 8
  %289 = load i32*, i32** %Precedence.addr, align 8
  %call395 = call i32 @ord_Compare(%struct.term* %286, %struct.term* %call394, i32* %288, i32* %289)
  store i32 %call395, i32* %auxResult, align 4
  %290 = load i32, i32* %auxResult, align 4
  %cmp396 = icmp eq i32 %290, 1
  br i1 %cmp396, label %if.then.398, label %if.else.399

if.then.398:                                      ; preds = %if.then.393
  store i32 1, i32* %result, align 4
  br label %if.end.404

if.else.399:                                      ; preds = %if.then.393
  %291 = load i32, i32* %result, align 4
  %292 = load i32, i32* %auxResult, align 4
  %cmp400 = icmp ne i32 %291, %292
  br i1 %cmp400, label %if.then.402, label %if.end.403

if.then.402:                                      ; preds = %if.else.399
  store i32 0, i32* %result, align 4
  br label %if.end.403

if.end.403:                                       ; preds = %if.then.402, %if.else.399
  br label %if.end.404

if.end.404:                                       ; preds = %if.end.403, %if.then.398
  br label %if.end.405

if.end.405:                                       ; preds = %if.end.404, %land.lhs.true.390, %if.then.386
  br label %if.end.423

if.else.406:                                      ; preds = %if.else.383
  %293 = load %struct.term*, %struct.term** %Lit1.addr, align 8
  %294 = load %struct.term*, %struct.term** %Lit2.addr, align 8
  %295 = load i32*, i32** %FlagStore.addr, align 8
  %296 = load i32*, i32** %Precedence.addr, align 8
  %call407 = call i32 @ord_Compare(%struct.term* %293, %struct.term* %294, i32* %295, i32* %296)
  store i32 %call407, i32* %result, align 4
  %297 = load i32, i32* %result, align 4
  %cmp408 = icmp eq i32 %297, 2
  br i1 %cmp408, label %if.then.410, label %if.end.422

if.then.410:                                      ; preds = %if.else.406
  %298 = load i32, i32* %pos1, align 4
  %tobool411 = icmp ne i32 %298, 0
  br i1 %tobool411, label %land.lhs.true.412, label %if.else.415

land.lhs.true.412:                                ; preds = %if.then.410
  %299 = load i32, i32* %pos2, align 4
  %tobool413 = icmp ne i32 %299, 0
  br i1 %tobool413, label %if.else.415, label %if.then.414

if.then.414:                                      ; preds = %land.lhs.true.412
  store i32 1, i32* %result, align 4
  br label %if.end.421

if.else.415:                                      ; preds = %land.lhs.true.412, %if.then.410
  %300 = load i32, i32* %pos1, align 4
  %tobool416 = icmp ne i32 %300, 0
  br i1 %tobool416, label %if.end.420, label %land.lhs.true.417

land.lhs.true.417:                                ; preds = %if.else.415
  %301 = load i32, i32* %pos2, align 4
  %tobool418 = icmp ne i32 %301, 0
  br i1 %tobool418, label %if.then.419, label %if.end.420

if.then.419:                                      ; preds = %land.lhs.true.417
  store i32 3, i32* %result, align 4
  br label %if.end.420

if.end.420:                                       ; preds = %if.then.419, %land.lhs.true.417, %if.else.415
  br label %if.end.421

if.end.421:                                       ; preds = %if.end.420, %if.then.414
  br label %if.end.422

if.end.422:                                       ; preds = %if.end.421, %if.else.406
  br label %if.end.423

if.end.423:                                       ; preds = %if.end.422, %if.end.405
  br label %if.end.424

if.end.424:                                       ; preds = %if.end.423, %if.end.382
  %302 = load i32, i32* %result, align 4
  store i32 %302, i32* %retval
  br label %return

return:                                           ; preds = %if.end.424, %if.end.358, %if.then.357, %if.then.350, %if.end.338, %if.then.337, %if.then.330, %if.end.317, %if.then.316, %if.end.304, %if.then.303, %if.end.295, %if.then.294, %if.end.277, %if.then.274, %if.then.269, %if.end.257, %if.then.254, %if.then.249, %if.end.237, %if.then.234, %if.then.229, %if.end.217, %if.then.214, %if.then.209, %if.end.197, %if.then.196, %if.then.188, %if.then.181, %if.then.176, %if.end.170, %if.then.167, %if.then.162, %if.end.150, %if.then.147, %if.then.142, %if.end.114, %if.then.113, %if.then.107, %if.then.102, %if.then.98, %if.end.93, %if.then.90, %if.then.85, %if.end.74, %if.then.71, %if.then.66, %if.end.55, %if.else.53, %if.then.52, %if.else, %if.then.48
  %303 = load i32, i32* %retval
  ret i32 %303
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
define internal i32 @fol_Not() #1 {
entry:
  %0 = load i32, i32* @fol_NOT, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_FirstArgument(%struct.term* %T) #1 {
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
define internal i32 @fol_IsEquality(%struct.term* %Term) #1 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %1 = load i32, i32* @fol_EQUALITY, align 4
  %cmp = icmp eq i32 %call, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_SecondArgument(%struct.term* %T) #1 {
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
define internal i32 @term_IsAtom(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsPredicate(i32 %call)
  ret i32 %call1
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
define internal i32 @symbol_IsPredicate(i32 %S) #1 {
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
define internal i32 @symbol_IsSignature(i32 %S) #1 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %cmp = icmp slt i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Type(i32 %ActSymbol) #1 {
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
define internal void @symbol_CheckNoVariable(i32 %S) #1 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  ret void
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
define internal void @flag_CheckFlagIdInRange(i32 %FlagId) #1 {
entry:
  %FlagId.addr = alloca i32, align 4
  store i32 %FlagId, i32* %FlagId.addr, align 4
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

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

declare i32 @rpos_ContGreaterEqual(%struct.binding*, %struct.term*, %struct.binding*, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_First(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
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
define internal i8* @list_Second(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %0)
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %call)
  ret i8* %call1
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
