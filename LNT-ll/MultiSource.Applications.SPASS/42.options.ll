; ModuleID = './MultiSource.Applications.SPASS/42.options.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.OPTDECL = type { i8*, i32 }
%struct.OPTION = type { i8*, i32, i32*, i32 }

@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [31 x i8] c"\0A\09Error in file %s at line %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/SPASS/options.c\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"internal error: option with command line name '%s' redeclared.\0A\00", align 1
@.str.3 = private unnamed_addr constant [133 x i8] c"\0A Please report this error via email to spass@mpi-sb.mpg.de including\0A the SPASS version, input problem, options, operating system.\0A\00", align 1
@opts_DECLARATIONS = internal global %struct.LIST_HELP* null, align 8
@opts_PARAMETERS = internal global %struct.LIST_HELP* null, align 8
@opts_Err = internal global i32 1, align 4
@opts_IdNextAvailable = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"%-18s \00", align 1
@opts_Arg = internal global i8* null, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"\0Aerror, option %s requires argument.\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"\0Ainternal error: option %c not found.\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"\0Aerror: option %c requires argument.\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"\0Aerror: option %c has delimiter -- as argument.\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"\0Aerror: argument of option %s must be integer.\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"\0Aerror: argument '%s' of option '%s' must be integer.\0A\00", align 1
@opts_Ind = internal global i32 1, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [2 x i8] c":\00", align 1
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@.str.16 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too small for flag %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too large for flag %s.\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"error: option %s is multiply defined.\0A\00", align 1
@opts_GetOptInitialized = internal global i32 0, align 4
@opts_NextChar = internal global i8* null, align 8
@opts_LastNonOpt = internal global i32 0, align 4
@opts_FirstNonOpt = internal global i32 0, align 4
@opts_Ordering = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [30 x i8] c"%s: option `%s' is ambiguous\0A\00", align 1
@opts_Opt = internal global i32 63, align 4
@.str.20 = private unnamed_addr constant [45 x i8] c"%s: option `--%s' doesn't allow an argument\0A\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"%s: option `%c%s' doesn't allow an argument\0A\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"%s: option `%s' requires an argument\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"%s: unrecognized option `--%s'\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"%s: unrecognized option `%c%s'\0A\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@opts_PosixlyCorrect = internal global i8* null, align 8
@.str.26 = private unnamed_addr constant [26 x i8] c"%s: illegal option -- %c\0A\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"%s: invalid option -- %c\0A\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"%s: option requires an argument -- %c\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"%s: option `-W %s' is ambiguous\0A\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"%s: option `-W %s' doesn't allow an argument\0A\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@opts_NonOptionFlagslen = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @opts_IdFirst() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @opts_IdIsNull(i32 %Id) #0 {
entry:
  %Id.addr = alloca i32, align 4
  store i32 %Id, i32* %Id.addr, align 4
  %call = call i32 @opts_IdNull()
  %0 = load i32, i32* %Id.addr, align 4
  %call1 = call i32 @opts_IdEqual(i32 %call, i32 %0)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @opts_IdEqual(i32 %Id1, i32 %Id2) #0 {
entry:
  %Id1.addr = alloca i32, align 4
  %Id2.addr = alloca i32, align 4
  store i32 %Id1, i32* %Id1.addr, align 4
  store i32 %Id2, i32* %Id2.addr, align 4
  %0 = load i32, i32* %Id1.addr, align 4
  %1 = load i32, i32* %Id2.addr, align 4
  %call = call i32 @opts_IdCmp(i32 %0, i32 %1)
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opts_IdNull() #1 {
entry:
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @opts_Declare(i8* %ClName, i32 %OptType) #0 {
entry:
  %ClName.addr = alloca i8*, align 8
  %OptType.addr = alloca i32, align 4
  %D = alloca %struct.OPTDECL*, align 8
  %Id = alloca i32, align 4
  store i8* %ClName, i8** %ClName.addr, align 8
  store i32 %OptType, i32* %OptType.addr, align 4
  %0 = load i8*, i8** %ClName.addr, align 8
  %call = call i32 @opts_Id(i8* %0)
  %call1 = call i32 @opts_IdIsNull(i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i32 0, i32 0), i32 375)
  %3 = load i8*, i8** %ClName.addr, align 8
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i32 0, i32 0), i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %4)
  call void @misc_DumpCore()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call5 = call i8* @memory_Malloc(i32 16)
  %5 = bitcast i8* %call5 to %struct.OPTDECL*
  store %struct.OPTDECL* %5, %struct.OPTDECL** %D, align 8
  %6 = load %struct.OPTDECL*, %struct.OPTDECL** %D, align 8
  %7 = load i8*, i8** %ClName.addr, align 8
  %call6 = call i8* @string_StringCopy(i8* %7)
  call void @opts_DeclSetClName(%struct.OPTDECL* %6, i8* %call6)
  %8 = load %struct.OPTDECL*, %struct.OPTDECL** %D, align 8
  %9 = load i32, i32* %OptType.addr, align 4
  call void @opts_DeclSetType(%struct.OPTDECL* %8, i32 %9)
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** @opts_DECLARATIONS, align 8
  %11 = load %struct.OPTDECL*, %struct.OPTDECL** %D, align 8
  %12 = bitcast %struct.OPTDECL* %11 to i8*
  %call7 = call %struct.LIST_HELP* @list_List(i8* %12)
  %call8 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %10, %struct.LIST_HELP* %call7)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** @opts_DECLARATIONS, align 8
  %call9 = call i32 @opts_IdGetNextAvailable()
  store i32 %call9, i32* %Id, align 4
  call void @opts_IdIncAvailable()
  %13 = load i32, i32* %Id, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @opts_Id(i8* %ClName) #0 {
entry:
  %ClName.addr = alloca i8*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %found = alloca i32, align 4
  %Id = alloca i32, align 4
  store i8* %ClName, i8** %ClName.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @opts_DECLARATIONS, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @opts_IdFirst()
  store i32 %call, i32* %Id, align 4
  store i32 0, i32* %found, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %found, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool2 = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call3 to %struct.OPTDECL*
  %call4 = call i8* @opts_DeclGetClName(%struct.OPTDECL* %5)
  %6 = load i8*, i8** %ClName.addr, align 8
  %call5 = call i32 @string_Equal(i8* %call4, i8* %6)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 1, i32* %found, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan, align 8
  %8 = load i32, i32* %Id, align 4
  %call8 = call i32 @opts_IdNext(i32 %8)
  store i32 %call8, i32* %Id, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %found, align 4
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %while.end
  %call11 = call i32 @opts_IdNull()
  store i32 %call11, i32* %Id, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %while.end
  %10 = load i32, i32* %Id, align 4
  ret i32 %10
}

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
  call void @abort() #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i8* @memory_Malloc(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @opts_DeclSetClName(%struct.OPTDECL* %D, i8* %s) #1 {
entry:
  %D.addr = alloca %struct.OPTDECL*, align 8
  %s.addr = alloca i8*, align 8
  store %struct.OPTDECL* %D, %struct.OPTDECL** %D.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load %struct.OPTDECL*, %struct.OPTDECL** %D.addr, align 8
  %clname = getelementptr inbounds %struct.OPTDECL, %struct.OPTDECL* %1, i32 0, i32 0
  store i8* %0, i8** %clname, align 8
  ret void
}

declare i8* @string_StringCopy(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @opts_DeclSetType(%struct.OPTDECL* %D, i32 %type) #1 {
entry:
  %D.addr = alloca %struct.OPTDECL*, align 8
  %type.addr = alloca i32, align 4
  store %struct.OPTDECL* %D, %struct.OPTDECL** %D.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %1 = load %struct.OPTDECL*, %struct.OPTDECL** %D.addr, align 8
  %type1 = getelementptr inbounds %struct.OPTDECL, %struct.OPTDECL* %1, i32 0, i32 1
  store i32 %0, i32* %type1, align 4
  ret void
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opts_IdGetNextAvailable() #1 {
entry:
  %0 = load i32, i32* @opts_IdNextAvailable, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @opts_IdIncAvailable() #1 {
entry:
  %0 = load i32, i32* @opts_IdNextAvailable, align 4
  %call = call i32 @opts_IdNext(i32 %0)
  store i32 %call, i32* @opts_IdNextAvailable, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @opts_DeclareVector(%struct.OPTDECL* %Decls) #0 {
entry:
  %Decls.addr = alloca %struct.OPTDECL*, align 8
  %i = alloca i32, align 4
  store %struct.OPTDECL* %Decls, %struct.OPTDECL** %Decls.addr, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.OPTDECL*, %struct.OPTDECL** %Decls.addr, align 8
  %arrayidx = getelementptr inbounds %struct.OPTDECL, %struct.OPTDECL* %1, i64 %idxprom
  %call = call i8* @opts_DeclGetClName(%struct.OPTDECL* %arrayidx)
  %call1 = call i64 @strlen(i8* %call) #7
  %cmp = icmp ne i64 %call1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %2 to i64
  %3 = load %struct.OPTDECL*, %struct.OPTDECL** %Decls.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.OPTDECL, %struct.OPTDECL* %3, i64 %idxprom2
  %call4 = call i8* @opts_DeclGetClName(%struct.OPTDECL* %arrayidx3)
  %4 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %4 to i64
  %5 = load %struct.OPTDECL*, %struct.OPTDECL** %Decls.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.OPTDECL, %struct.OPTDECL* %5, i64 %idxprom5
  %call7 = call i32 @opts_DeclGetType(%struct.OPTDECL* %arrayidx6)
  %call8 = call i32 @opts_Declare(i8* %call4, i32 %call7)
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call9 = call i32 @opts_IdGetNextAvailable()
  ret i32 %call9
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @opts_DeclGetClName(%struct.OPTDECL* %D) #1 {
entry:
  %D.addr = alloca %struct.OPTDECL*, align 8
  store %struct.OPTDECL* %D, %struct.OPTDECL** %D.addr, align 8
  %0 = load %struct.OPTDECL*, %struct.OPTDECL** %D.addr, align 8
  %clname = getelementptr inbounds %struct.OPTDECL, %struct.OPTDECL* %0, i32 0, i32 0
  %1 = load i8*, i8** %clname, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opts_DeclGetType(%struct.OPTDECL* %D) #1 {
entry:
  %D.addr = alloca %struct.OPTDECL*, align 8
  store %struct.OPTDECL* %D, %struct.OPTDECL** %D.addr, align 8
  %0 = load %struct.OPTDECL*, %struct.OPTDECL** %D.addr, align 8
  %type = getelementptr inbounds %struct.OPTDECL, %struct.OPTDECL* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i8* @opts_ClName(i32 %Id) #0 {
entry:
  %Id.addr = alloca i32, align 4
  %Decl = alloca %struct.OPTDECL*, align 8
  store i32 %Id, i32* %Id.addr, align 4
  %0 = load i32, i32* %Id.addr, align 4
  %call = call %struct.OPTDECL* @opts_DeclGetById(i32 %0)
  store %struct.OPTDECL* %call, %struct.OPTDECL** %Decl, align 8
  %1 = load %struct.OPTDECL*, %struct.OPTDECL** %Decl, align 8
  %call1 = call i8* @opts_DeclGetClName(%struct.OPTDECL* %1)
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct.OPTDECL* @opts_DeclGetById(i32 %Id) #0 {
entry:
  %retval = alloca %struct.OPTDECL*, align 8
  %Id.addr = alloca i32, align 4
  %ScanId = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store i32 %Id, i32* %Id.addr, align 4
  %call = call i32 @opts_IdFirst()
  store i32 %call, i32* %ScanId, align 4
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @opts_DECLARATIONS, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %Id.addr, align 4
  %3 = load i32, i32* %ScanId, align 4
  %call2 = call i32 @opts_IdEqual(i32 %2, i32 %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call4 to %struct.OPTDECL*
  store %struct.OPTDECL* %5, %struct.OPTDECL** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  %7 = load i32, i32* %ScanId, align 4
  %call6 = call i32 @opts_IdNext(i32 %7)
  store i32 %call6, i32* %ScanId, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.OPTDECL* null, %struct.OPTDECL** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load %struct.OPTDECL*, %struct.OPTDECL** %retval
  ret %struct.OPTDECL* %8
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
define internal i32 @string_Equal(i8* %S1, i8* %S2) #1 {
entry:
  %S1.addr = alloca i8*, align 8
  %S2.addr = alloca i8*, align 8
  store i8* %S1, i8** %S1.addr, align 8
  store i8* %S2, i8** %S2.addr, align 8
  %0 = load i8*, i8** %S1.addr, align 8
  %1 = load i8*, i8** %S2.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #7
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
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
define internal i32 @opts_IdNext(i32 %Id) #0 {
entry:
  %Id.addr = alloca i32, align 4
  store i32 %Id, i32* %Id.addr, align 4
  %0 = load i32, i32* %Id.addr, align 4
  %add = add nsw i32 %0, 1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define void @opts_Init() #0 {
entry:
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** @opts_DECLARATIONS, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** @opts_PARAMETERS, align 8
  store i32 1, i32* @opts_Err, align 4
  %call2 = call i32 @opts_IdFirst()
  store i32 %call2, i32* @opts_IdNextAvailable, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #1 {
entry:
  ret %struct.LIST_HELP* null
}

; Function Attrs: nounwind uwtable
define void @opts_DeclareSPASSFlagsAsOptions() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 96
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call i8* @flag_Name(i32 %1)
  %call1 = call i32 @opts_Declare(i8* %call, i32 2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i8* @flag_Name(i32) #2

; Function Attrs: nounwind uwtable
define void @opts_Free() #0 {
entry:
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @opts_PARAMETERS, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %0, void (i8*)* bitcast (void (%struct.LIST_HELP*)* @opts_FreeParameterPair to void (i8*)*))
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** @opts_DECLARATIONS, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %1, void (i8*)* bitcast (void (%struct.OPTDECL*)* @opts_FreeDecl to void (i8*)*))
  ret void
}

declare void @list_DeleteWithElement(%struct.LIST_HELP*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal void @opts_FreeParameterPair(%struct.LIST_HELP* %Pair) #0 {
entry:
  %Pair.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Pair, %struct.LIST_HELP** %Pair.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %call = call i8* @list_PairSecond(%struct.LIST_HELP* %0)
  call void @string_StringFree(i8* %call)
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  call void @list_PairFree(%struct.LIST_HELP* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opts_FreeDecl(%struct.OPTDECL* %D) #0 {
entry:
  %D.addr = alloca %struct.OPTDECL*, align 8
  store %struct.OPTDECL* %D, %struct.OPTDECL** %D.addr, align 8
  %0 = load %struct.OPTDECL*, %struct.OPTDECL** %D.addr, align 8
  %call = call i8* @opts_DeclGetClName(%struct.OPTDECL* %0)
  call void @string_StringFree(i8* %call)
  %1 = load %struct.OPTDECL*, %struct.OPTDECL** %D.addr, align 8
  %2 = bitcast %struct.OPTDECL* %1 to i8*
  call void @memory_Free(i8* %2, i32 16)
  ret void
}

; Function Attrs: nounwind uwtable
define void @opts_PrintSPASSNames() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 96
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp sle i32 %1, 3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %j, align 4
  %add = add nsw i32 %2, %3
  %cmp4 = icmp slt i32 %add, 96
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %j, align 4
  %add5 = add nsw i32 %4, %5
  %call = call i8* @flag_Name(i32 %add5)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %call7 = call i32 @putchar(i32 10)
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %7 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %7, 4
  store i32 %add9, i32* %i, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #2

declare i32 @putchar(i32) #2

; Function Attrs: nounwind uwtable
define %struct.OPTDECL* @opts_DeclGetByClName(i8* %ClName) #0 {
entry:
  %retval = alloca %struct.OPTDECL*, align 8
  %ClName.addr = alloca i8*, align 8
  %Id = alloca i32, align 4
  store i8* %ClName, i8** %ClName.addr, align 8
  %0 = load i8*, i8** %ClName.addr, align 8
  %call = call i32 @opts_Id(i8* %0)
  store i32 %call, i32* %Id, align 4
  %1 = load i32, i32* %Id, align 4
  %call1 = call i32 @opts_IdIsNull(i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.OPTDECL* null, %struct.OPTDECL** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %Id, align 4
  %call2 = call %struct.OPTDECL* @opts_DeclGetById(i32 %2)
  store %struct.OPTDECL* %call2, %struct.OPTDECL** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.OPTDECL*, %struct.OPTDECL** %retval
  ret %struct.OPTDECL* %3
}

; Function Attrs: nounwind uwtable
define i32 @opts_Read(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %OptIndex = alloca i32, align 4
  %c = alloca i32, align 4
  %ShortOpts = alloca i8*, align 8
  %Ok = alloca i32, align 4
  %OptId = alloca i32, align 4
  %OptDecl = alloca %struct.OPTDECL*, align 8
  %OptName = alloca i8*, align 8
  %LongOpts = alloca %struct.OPTION*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %Ok, align 4
  %call = call i8* @opts_TranslateShortOptDeclarations()
  store i8* %call, i8** %ShortOpts, align 8
  %call1 = call %struct.OPTION* @opts_TranslateLongOptDeclarations()
  store %struct.OPTION* %call1, %struct.OPTION** %LongOpts, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.68, %entry
  %0 = load i32, i32* %Ok, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %argc.addr, align 4
  %2 = load i8**, i8*** %argv.addr, align 8
  %3 = load i8*, i8** %ShortOpts, align 8
  %4 = load %struct.OPTION*, %struct.OPTION** %LongOpts, align 8
  %call2 = call i32 @opts_GetOptLongOnly(i32 %1, i8** %2, i8* %3, %struct.OPTION* %4, i32* %OptIndex)
  store i32 %call2, i32* %c, align 4
  %cmp = icmp ne i32 %call2, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %6, 63
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %while.body
  %7 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.else.18

if.then.5:                                        ; preds = %if.else
  %8 = load i32, i32* %OptIndex, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.OPTION*, %struct.OPTION** %LongOpts, align 8
  %arrayidx = getelementptr inbounds %struct.OPTION, %struct.OPTION* %9, i64 %idxprom
  %name = getelementptr inbounds %struct.OPTION, %struct.OPTION* %arrayidx, i32 0, i32 0
  %10 = load i8*, i8** %name, align 8
  store i8* %10, i8** %OptName, align 8
  %11 = load i8*, i8** %OptName, align 8
  %call6 = call i32 @opts_Id(i8* %11)
  store i32 %call6, i32* %OptId, align 4
  %12 = load i32, i32* %OptId, align 4
  %call7 = call %struct.OPTDECL* @opts_DeclGetById(i32 %12)
  store %struct.OPTDECL* %call7, %struct.OPTDECL** %OptDecl, align 8
  %13 = load i8*, i8** @opts_Arg, align 8
  %cmp8 = icmp eq i8* %13, null
  br i1 %cmp8, label %if.then.9, label %if.else.15

if.then.9:                                        ; preds = %if.then.5
  %14 = load %struct.OPTDECL*, %struct.OPTDECL** %OptDecl, align 8
  %call10 = call i32 @opts_DeclHasReqArg(%struct.OPTDECL* %14)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.9
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 @fflush(%struct._IO_FILE* %15)
  %16 = load i8*, i8** %OptName, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* %16)
  call void @misc_Error()
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.9
  %17 = load i32, i32* %OptId, align 4
  %call14 = call i32 @opts_AddParamCheck(i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store i32 %call14, i32* %Ok, align 4
  br label %if.end.17

if.else.15:                                       ; preds = %if.then.5
  %18 = load i32, i32* %OptId, align 4
  %19 = load i8*, i8** @opts_Arg, align 8
  %call16 = call i32 @opts_AddParamCheck(i32 %18, i8* %19)
  store i32 %call16, i32* %Ok, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.end
  br label %if.end.67

if.else.18:                                       ; preds = %if.else
  %20 = load i32, i32* %c, align 4
  %cmp19 = icmp eq i32 %20, 58
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.18
  store i32 0, i32* %retval
  br label %return

if.else.21:                                       ; preds = %if.else.18
  %21 = load i32, i32* %c, align 4
  %conv = trunc i32 %21 to i8
  %call22 = call i32 @opts_ShortOptId(i8 signext %conv)
  store i32 %call22, i32* %OptId, align 4
  %22 = load i32, i32* %OptId, align 4
  %call23 = call i32 @opts_IdIsNull(i32 %22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.else.21
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call26 = call i32 @fflush(%struct._IO_FILE* %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i32 0, i32 0), i32 928)
  %25 = load i32, i32* %c, align 4
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), i32 %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call28 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %26)
  call void @misc_DumpCore()
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.else.21
  %27 = load i32, i32* %OptId, align 4
  %call30 = call %struct.OPTDECL* @opts_DeclGetById(i32 %27)
  store %struct.OPTDECL* %call30, %struct.OPTDECL** %OptDecl, align 8
  %28 = load %struct.OPTDECL*, %struct.OPTDECL** %OptDecl, align 8
  %call31 = call i32 @opts_DeclHasReqArg(%struct.OPTDECL* %28)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.else.46

if.then.33:                                       ; preds = %if.end.29
  %29 = load i8*, i8** @opts_Arg, align 8
  %tobool34 = icmp ne i8* %29, null
  br i1 %tobool34, label %if.else.37, label %if.then.35

if.then.35:                                       ; preds = %if.then.33
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call36 = call i32 @fflush(%struct._IO_FILE* %30)
  %31 = load i32, i32* %c, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0), i32 %31)
  call void @misc_Error()
  store i32 0, i32* %Ok, align 4
  br label %if.end.45

if.else.37:                                       ; preds = %if.then.33
  %32 = load i8*, i8** @opts_Arg, align 8
  %call38 = call i32 @string_Equal(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %if.else.37
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call41 = call i32 @fflush(%struct._IO_FILE* %33)
  %34 = load i32, i32* %c, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i32 0, i32 0), i32 %34)
  call void @misc_Error()
  store i32 0, i32* %Ok, align 4
  br label %if.end.44

if.else.42:                                       ; preds = %if.else.37
  %35 = load i32, i32* %OptId, align 4
  %36 = load i8*, i8** @opts_Arg, align 8
  %call43 = call i32 @opts_AddParamCheck(i32 %35, i8* %36)
  store i32 %call43, i32* %Ok, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.35
  br label %if.end.65

if.else.46:                                       ; preds = %if.end.29
  %37 = load %struct.OPTDECL*, %struct.OPTDECL** %OptDecl, align 8
  %call47 = call i32 @opts_DeclHasOptArg(%struct.OPTDECL* %37)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.else.62

if.then.49:                                       ; preds = %if.else.46
  %38 = load i8*, i8** @opts_Arg, align 8
  %tobool50 = icmp ne i8* %38, null
  br i1 %tobool50, label %if.then.51, label %if.else.59

if.then.51:                                       ; preds = %if.then.49
  %39 = load i8*, i8** @opts_Arg, align 8
  %call52 = call i32 @string_Equal(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.else.56

if.then.54:                                       ; preds = %if.then.51
  %40 = load i32, i32* %OptId, align 4
  %call55 = call i32 @opts_AddParamCheck(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store i32 %call55, i32* %Ok, align 4
  br label %if.end.58

if.else.56:                                       ; preds = %if.then.51
  %41 = load i32, i32* %OptId, align 4
  %42 = load i8*, i8** @opts_Arg, align 8
  %call57 = call i32 @opts_AddParamCheck(i32 %41, i8* %42)
  store i32 %call57, i32* %Ok, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.54
  br label %if.end.61

if.else.59:                                       ; preds = %if.then.49
  %43 = load i32, i32* %OptId, align 4
  %call60 = call i32 @opts_AddParamCheck(i32 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store i32 %call60, i32* %Ok, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.end.58
  br label %if.end.64

if.else.62:                                       ; preds = %if.else.46
  %44 = load i32, i32* %OptId, align 4
  %call63 = call i32 @opts_AddParamCheck(i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store i32 %call63, i32* %Ok, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.62, %if.end.61
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.45
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.17
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67
  br label %while.cond

while.end:                                        ; preds = %land.end
  %45 = load i8*, i8** %ShortOpts, align 8
  call void @string_StringFree(i8* %45)
  %46 = load %struct.OPTION*, %struct.OPTION** %LongOpts, align 8
  call void @opts_FreeLongOptsArray(%struct.OPTION* %46)
  %47 = load i32, i32* %Ok, align 4
  store i32 %47, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.20, %if.then.12, %if.then
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal i8* @opts_TranslateShortOptDeclarations() #0 {
entry:
  %Scan = alloca %struct.LIST_HELP*, align 8
  %ShortDecl = alloca i8*, align 8
  %Decl = alloca %struct.OPTDECL*, align 8
  %call = call i8* @string_StringCopy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  store i8* %call, i8** %ShortDecl, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @opts_DECLARATIONS, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %tobool = icmp ne %struct.LIST_HELP* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call1 to %struct.OPTDECL*
  store %struct.OPTDECL* %3, %struct.OPTDECL** %Decl, align 8
  %4 = load %struct.OPTDECL*, %struct.OPTDECL** %Decl, align 8
  %call2 = call i32 @opts_DeclIsShortOpt(%struct.OPTDECL* %4)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end.14

if.then:                                          ; preds = %while.body
  %5 = load i8*, i8** %ShortDecl, align 8
  %6 = load %struct.OPTDECL*, %struct.OPTDECL** %Decl, align 8
  %call4 = call i8* @opts_DeclGetClName(%struct.OPTDECL* %6)
  %call5 = call i8* @string_StringCopy(i8* %call4)
  %call6 = call i8* @string_Nconc(i8* %5, i8* %call5)
  store i8* %call6, i8** %ShortDecl, align 8
  %7 = load %struct.OPTDECL*, %struct.OPTDECL** %Decl, align 8
  %call7 = call i32 @opts_DeclHasReqArg(%struct.OPTDECL* %7)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load %struct.OPTDECL*, %struct.OPTDECL** %Decl, align 8
  %call9 = call i32 @opts_DeclHasOptArg(%struct.OPTDECL* %8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %lor.lhs.false, %if.then
  %9 = load i8*, i8** %ShortDecl, align 8
  %call12 = call i8* @string_StringCopy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  %call13 = call i8* @string_Nconc(i8* %9, i8* %call12)
  store i8* %call13, i8** %ShortDecl, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %lor.lhs.false
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %while.body
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i8*, i8** %ShortDecl, align 8
  %call16 = call i64 @strlen(i8* %11) #7
  %cmp = icmp ne i64 %call16, 0
  br i1 %cmp, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %while.end
  %call18 = call i8* @string_StringCopy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  %12 = load i8*, i8** %ShortDecl, align 8
  %call19 = call i8* @string_Nconc(i8* %call18, i8* %12)
  store i8* %call19, i8** %ShortDecl, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %while.end
  %13 = load i8*, i8** %ShortDecl, align 8
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define internal %struct.OPTION* @opts_TranslateLongOptDeclarations() #0 {
entry:
  %Scan = alloca %struct.LIST_HELP*, align 8
  %LongDeclarations = alloca %struct.LIST_HELP*, align 8
  %OptNum = alloca i32, align 4
  %OptCnt = alloca i32, align 4
  %LongOpts = alloca %struct.OPTION*, align 8
  %Decl = alloca %struct.OPTDECL*, align 8
  %call = call %struct.LIST_HELP* @opts_GetLongOptDeclarations()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %LongDeclarations, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LongDeclarations, align 8
  %call1 = call i32 @list_Length(%struct.LIST_HELP* %0)
  store i32 %call1, i32* %OptNum, align 4
  %1 = load i32, i32* %OptNum, align 4
  %call2 = call %struct.OPTION* @opts_GetLongOptsArray(i32 %1)
  store %struct.OPTION* %call2, %struct.OPTION** %LongOpts, align 8
  store i32 0, i32* %OptCnt, align 4
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LongDeclarations, align 8
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call4 to %struct.OPTDECL*
  store %struct.OPTDECL* %5, %struct.OPTDECL** %Decl, align 8
  %6 = load %struct.OPTDECL*, %struct.OPTDECL** %Decl, align 8
  %call5 = call i8* @opts_DeclGetClName(%struct.OPTDECL* %6)
  %7 = load i32, i32* %OptCnt, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.OPTION*, %struct.OPTION** %LongOpts, align 8
  %arrayidx = getelementptr inbounds %struct.OPTION, %struct.OPTION* %8, i64 %idxprom
  %name = getelementptr inbounds %struct.OPTION, %struct.OPTION* %arrayidx, i32 0, i32 0
  store i8* %call5, i8** %name, align 8
  %9 = load %struct.OPTDECL*, %struct.OPTDECL** %Decl, align 8
  %call6 = call i32 @opts_DeclHasOptArg(%struct.OPTDECL* %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %10 = load i32, i32* %OptCnt, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load %struct.OPTION*, %struct.OPTION** %LongOpts, align 8
  %arrayidx9 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %11, i64 %idxprom8
  %has_arg = getelementptr inbounds %struct.OPTION, %struct.OPTION* %arrayidx9, i32 0, i32 1
  store i32 2, i32* %has_arg, align 4
  br label %if.end.20

if.else:                                          ; preds = %while.body
  %12 = load %struct.OPTDECL*, %struct.OPTDECL** %Decl, align 8
  %call10 = call i32 @opts_DeclHasReqArg(%struct.OPTDECL* %12)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.16

if.then.12:                                       ; preds = %if.else
  %13 = load i32, i32* %OptCnt, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load %struct.OPTION*, %struct.OPTION** %LongOpts, align 8
  %arrayidx14 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %14, i64 %idxprom13
  %has_arg15 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %arrayidx14, i32 0, i32 1
  store i32 1, i32* %has_arg15, align 4
  br label %if.end

if.else.16:                                       ; preds = %if.else
  %15 = load i32, i32* %OptCnt, align 4
  %idxprom17 = sext i32 %15 to i64
  %16 = load %struct.OPTION*, %struct.OPTION** %LongOpts, align 8
  %arrayidx18 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %16, i64 %idxprom17
  %has_arg19 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %arrayidx18, i32 0, i32 1
  store i32 0, i32* %has_arg19, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.16, %if.then.12
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then
  %17 = load i32, i32* %OptCnt, align 4
  %idxprom21 = sext i32 %17 to i64
  %18 = load %struct.OPTION*, %struct.OPTION** %LongOpts, align 8
  %arrayidx22 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %18, i64 %idxprom21
  %flag = getelementptr inbounds %struct.OPTION, %struct.OPTION* %arrayidx22, i32 0, i32 2
  store i32* null, i32** %flag, align 8
  %19 = load i32, i32* %OptCnt, align 4
  %idxprom23 = sext i32 %19 to i64
  %20 = load %struct.OPTION*, %struct.OPTION** %LongOpts, align 8
  %arrayidx24 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %20, i64 %idxprom23
  %val = getelementptr inbounds %struct.OPTION, %struct.OPTION* %arrayidx24, i32 0, i32 3
  store i32 0, i32* %val, align 4
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call25 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %Scan, align 8
  %22 = load i32, i32* %OptCnt, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %OptCnt, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %OptCnt, align 4
  %idxprom26 = sext i32 %23 to i64
  %24 = load %struct.OPTION*, %struct.OPTION** %LongOpts, align 8
  %arrayidx27 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %24, i64 %idxprom26
  %name28 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %arrayidx27, i32 0, i32 0
  store i8* null, i8** %name28, align 8
  %25 = load i32, i32* %OptCnt, align 4
  %idxprom29 = sext i32 %25 to i64
  %26 = load %struct.OPTION*, %struct.OPTION** %LongOpts, align 8
  %arrayidx30 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %26, i64 %idxprom29
  %has_arg31 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %arrayidx30, i32 0, i32 1
  store i32 0, i32* %has_arg31, align 4
  %27 = load i32, i32* %OptCnt, align 4
  %idxprom32 = sext i32 %27 to i64
  %28 = load %struct.OPTION*, %struct.OPTION** %LongOpts, align 8
  %arrayidx33 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %28, i64 %idxprom32
  %flag34 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %arrayidx33, i32 0, i32 2
  store i32* null, i32** %flag34, align 8
  %29 = load i32, i32* %OptCnt, align 4
  %idxprom35 = sext i32 %29 to i64
  %30 = load %struct.OPTION*, %struct.OPTION** %LongOpts, align 8
  %arrayidx36 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %30, i64 %idxprom35
  %val37 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %arrayidx36, i32 0, i32 3
  store i32 0, i32* %val37, align 4
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LongDeclarations, align 8
  call void @list_Delete(%struct.LIST_HELP* %31)
  %32 = load %struct.OPTION*, %struct.OPTION** %LongOpts, align 8
  ret %struct.OPTION* %32
}

; Function Attrs: nounwind uwtable
define internal i32 @opts_GetOptLongOnly(i32 %argc, i8** %argv, i8* %options, %struct.OPTION* %long_options, i32* %opt_index) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %options.addr = alloca i8*, align 8
  %long_options.addr = alloca %struct.OPTION*, align 8
  %opt_index.addr = alloca i32*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* %options, i8** %options.addr, align 8
  store %struct.OPTION* %long_options, %struct.OPTION** %long_options.addr, align 8
  store i32* %opt_index, i32** %opt_index.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %2 = load i8*, i8** %options.addr, align 8
  %3 = load %struct.OPTION*, %struct.OPTION** %long_options.addr, align 8
  %4 = load i32*, i32** %opt_index.addr, align 8
  %call = call i32 @opts_GetOptInternal(i32 %0, i8** %1, i8* %2, %struct.OPTION* %3, i32* %4, i32 1)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opts_DeclHasReqArg(%struct.OPTDECL* %D) #1 {
entry:
  %D.addr = alloca %struct.OPTDECL*, align 8
  store %struct.OPTDECL* %D, %struct.OPTDECL** %D.addr, align 8
  %0 = load %struct.OPTDECL*, %struct.OPTDECL** %D.addr, align 8
  %call = call i32 @opts_DeclGetType(%struct.OPTDECL* %0)
  %cmp = icmp eq i32 %call, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare void @misc_UserErrorReport(i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_Error() #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  call void @exit(i32 1) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @opts_AddParamCheck(i32 %Id, i8* %ValueString) #0 {
entry:
  %retval = alloca i32, align 4
  %Id.addr = alloca i32, align 4
  %ValueString.addr = alloca i8*, align 8
  %Dummy = alloca i8*, align 8
  store i32 %Id, i32* %Id.addr, align 4
  store i8* %ValueString, i8** %ValueString.addr, align 8
  %0 = load i32, i32* %Id.addr, align 4
  %call = call i32 @opts_GetValue(i32 %0, i8** %Dummy)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load i32, i32* %Id.addr, align 4
  %call2 = call i8* @opts_ClName(i32 %2)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i32 0, i32 0), i8* %call2)
  call void @misc_Error()
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %Id.addr, align 4
  %4 = load i8*, i8** %ValueString.addr, align 8
  call void @opts_AddParam(i32 %3, i8* %4)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @opts_ShortOptId(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  %Str = alloca [2 x i8], align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %Str, i32 0, i64 0
  store i8 %0, i8* %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [2 x i8], [2 x i8]* %Str, i32 0, i64 1
  store i8 0, i8* %arrayidx1, align 1
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %Str, i32 0, i32 0
  %call = call i32 @opts_Id(i8* %arraydecay)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opts_DeclHasOptArg(%struct.OPTDECL* %D) #1 {
entry:
  %D.addr = alloca %struct.OPTDECL*, align 8
  store %struct.OPTDECL* %D, %struct.OPTDECL** %D.addr, align 8
  %0 = load %struct.OPTDECL*, %struct.OPTDECL** %D.addr, align 8
  %call = call i32 @opts_DeclGetType(%struct.OPTDECL* %0)
  %cmp = icmp eq i32 %call, 2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare void @string_StringFree(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @opts_FreeLongOptsArray(%struct.OPTION* %LongOpts) #0 {
entry:
  %LongOpts.addr = alloca %struct.OPTION*, align 8
  %i = alloca i32, align 4
  store %struct.OPTION* %LongOpts, %struct.OPTION** %LongOpts.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.OPTION*, %struct.OPTION** %LongOpts.addr, align 8
  %arrayidx = getelementptr inbounds %struct.OPTION, %struct.OPTION* %1, i64 %idxprom
  %name = getelementptr inbounds %struct.OPTION, %struct.OPTION* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load %struct.OPTION*, %struct.OPTION** %LongOpts.addr, align 8
  %5 = bitcast %struct.OPTION* %4 to i8*
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 32
  %conv1 = trunc i64 %mul to i32
  call void @memory_Free(i8* %5, i32 %conv1)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @opts_ReadOptionsFromString(i8* %Options) #0 {
entry:
  %Options.addr = alloca i8*, align 8
  %argv = alloca i8**, align 8
  %Copy = alloca i8*, align 8
  %argc = alloca i32, align 4
  %i = alloca i32, align 4
  %Result = alloca i32, align 4
  store i8* %Options, i8** %Options.addr, align 8
  %0 = load i8*, i8** %Options.addr, align 8
  %call = call i8* @string_StringCopy(i8* %0)
  store i8* %call, i8** %Copy, align 8
  %1 = load i8*, i8** %Copy, align 8
  %call1 = call i8** @string_Tokens(i8* %1, i32* %argc)
  store i8** %call1, i8*** %argv, align 8
  %2 = load i32, i32* %argc, align 4
  %3 = load i8**, i8*** %argv, align 8
  %call2 = call i32 @opts_Read(i32 %2, i8** %3)
  store i32 %call2, i32* %Result, align 4
  %call3 = call i32 @opts_Indicator()
  %4 = load i32, i32* %argc, align 4
  %cmp = icmp slt i32 %call3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %Result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %argc, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %cmp4 = icmp sge i32 %6, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** %argv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  call void @string_StringFree(i8* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i8**, i8*** %argv, align 8
  %12 = bitcast i8** %11 to i8*
  %13 = load i32, i32* %argc, align 4
  %add = add nsw i32 %13, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 1, %conv
  %conv5 = trunc i64 %mul to i32
  call void @memory_Free(i8* %12, i32 %conv5)
  %14 = load i8*, i8** %Copy, align 8
  call void @string_StringFree(i8* %14)
  %15 = load i32, i32* %Result, align 4
  ret i32 %15
}

declare i8** @string_Tokens(i8*, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @opts_Indicator() #0 {
entry:
  %0 = load i32, i32* @opts_Ind, align 4
  ret i32 %0
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
  call void @free(i8* %add.ptr24) #8
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

; Function Attrs: nounwind uwtable
define i32 @opts_GetValueByName(i8* %Name, i8** %Value) #0 {
entry:
  %Name.addr = alloca i8*, align 8
  %Value.addr = alloca i8**, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Pair = alloca %struct.LIST_HELP*, align 8
  %found = alloca i32, align 4
  store i8* %Name, i8** %Name.addr, align 8
  store i8** %Value, i8*** %Value.addr, align 8
  store i32 0, i32* %found, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Pair, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @opts_PARAMETERS, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %found, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool2 = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call3 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %Pair, align 8
  %6 = load i8*, i8** %Name.addr, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call4 = call i8* @list_PairFirst(%struct.LIST_HELP* %7)
  %8 = ptrtoint i8* %call4 to i32
  %call5 = call i8* @opts_ClName(i32 %8)
  %call6 = call i32 @string_Equal(i8* %6, i8* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %found, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %10 = load i32, i32* %found, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %for.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call11 = call i8* @list_PairSecond(%struct.LIST_HELP* %11)
  %12 = load i8**, i8*** %Value.addr, align 8
  store i8* %call11, i8** %12, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %for.end
  %13 = load i32, i32* %found, align 4
  ret i32 %13
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_PairFirst(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_PairSecond(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %0)
  %1 = bitcast %struct.LIST_HELP* %call to i8*
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i32 @opts_GetValue(i32 %Id, i8** %s) #0 {
entry:
  %Id.addr = alloca i32, align 4
  %s.addr = alloca i8**, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Pair = alloca %struct.LIST_HELP*, align 8
  %found = alloca i32, align 4
  store i32 %Id, i32* %Id.addr, align 4
  store i8** %s, i8*** %s.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Pair, align 8
  store i32 0, i32* %found, align 4
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @opts_PARAMETERS, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %found, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool2 = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call3 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %Pair, align 8
  %6 = load i32, i32* %Id.addr, align 4
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call4 = call i8* @list_PairFirst(%struct.LIST_HELP* %7)
  %8 = ptrtoint i8* %call4 to i32
  %call5 = call i32 @opts_IdEqual(i32 %6, i32 %8)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %found, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %10 = load i32, i32* %found, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %for.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call10 = call i8* @list_PairSecond(%struct.LIST_HELP* %11)
  %12 = load i8**, i8*** %s.addr, align 8
  store i8* %call10, i8** %12, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %for.end
  %13 = load i32, i32* %found, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @opts_GetIntValueByName(i8* %Name, i32* %Val) #0 {
entry:
  %retval = alloca i32, align 4
  %Name.addr = alloca i8*, align 8
  %Val.addr = alloca i32*, align 8
  %ValStr = alloca i8*, align 8
  store i8* %Name, i8** %Name.addr, align 8
  store i32* %Val, i32** %Val.addr, align 8
  %0 = load i8*, i8** %Name.addr, align 8
  %call = call i32 @opts_GetValueByName(i8* %0, i8** %ValStr)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %ValStr, align 8
  %2 = load i32*, i32** %Val.addr, align 8
  %call1 = call i32 @string_StringToInt(i8* %1, i32 0, i32* %2)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare i32 @string_StringToInt(i8*, i32, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @opts_GetIntValue(i32 %Id, i32* %i) #0 {
entry:
  %Id.addr = alloca i32, align 4
  %i.addr = alloca i32*, align 8
  store i32 %Id, i32* %Id.addr, align 4
  store i32* %i, i32** %i.addr, align 8
  %0 = load i32, i32* %Id.addr, align 4
  %call = call i8* @opts_ClName(i32 %0)
  %1 = load i32*, i32** %i.addr, align 8
  %call1 = call i32 @opts_GetIntValueByName(i8* %call, i32* %1)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @opts_IsSet(i32 %Id) #0 {
entry:
  %Id.addr = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Pair = alloca %struct.LIST_HELP*, align 8
  %found = alloca i32, align 4
  store i32 %Id, i32* %Id.addr, align 4
  store i32 0, i32* %found, align 4
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @opts_PARAMETERS, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %found, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool1 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call2 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %Pair, align 8
  %6 = load i32, i32* %Id.addr, align 4
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = ptrtoint i8* %call3 to i32
  %call4 = call i32 @opts_IdEqual(i32 %6, i32 %8)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %found, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %10 = load i32, i32* %found, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @opts_IsSetByName(i8* %Name) #0 {
entry:
  %Name.addr = alloca i8*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Pair = alloca %struct.LIST_HELP*, align 8
  %found = alloca i32, align 4
  store i8* %Name, i8** %Name.addr, align 8
  store i32 0, i32* %found, align 4
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @opts_PARAMETERS, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %found, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool1 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call2 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %Pair, align 8
  %6 = load i8*, i8** %Name.addr, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call3 = call i8* @list_PairFirst(%struct.LIST_HELP* %7)
  %8 = ptrtoint i8* %call3 to i32
  %call4 = call i8* @opts_ClName(i32 %8)
  %call5 = call i32 @string_Equal(i8* %6, i8* %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %found, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %10 = load i32, i32* %found, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @opts_SetFlags(i32* %Store) #0 {
entry:
  %Store.addr = alloca i32*, align 8
  %IntValue = alloca i32, align 4
  %Id = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 96
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call i8* @flag_Name(i32 %1)
  %call1 = call i32 @opts_Id(i8* %call)
  store i32 %call1, i32* %Id, align 4
  %2 = load i32, i32* %Id, align 4
  %call2 = call i32 @opts_IsSet(i32 %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %Id, align 4
  %call3 = call i32 @opts_GetIntValue(i32 %3, i32* %IntValue)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %4 = load i32*, i32** %Store.addr, align 8
  %5 = load i32, i32* %Id, align 4
  %6 = load i32, i32* %IntValue, align 4
  call void @flag_SetFlagValue(i32* %4, i32 %5, i32 %6)
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* %7)
  %8 = load i32, i32* %i, align 4
  %call7 = call i8* @flag_Name(i32 %8)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0), i8* %call7)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_SetFlagValue(i32* %Store, i32 %FlagId, i32 %Value) #1 {
entry:
  %Store.addr = alloca i32*, align 8
  %FlagId.addr = alloca i32, align 4
  %Value.addr = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  store i32 %FlagId, i32* %FlagId.addr, align 4
  store i32 %Value, i32* %Value.addr, align 4
  %0 = load i32, i32* %FlagId.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %FlagId.addr, align 4
  %2 = load i32, i32* %Value.addr, align 4
  call void @flag_CheckFlagValueInRange(i32 %1, i32 %2)
  %3 = load i32, i32* %Value.addr, align 4
  %4 = load i32, i32* %FlagId.addr, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load i32*, i32** %Store.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @opts_Transfer(i32* %Store) #0 {
entry:
  %Store.addr = alloca i32*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Pair = alloca %struct.LIST_HELP*, align 8
  %IntValue = alloca i32, align 4
  %Name = alloca i8*, align 8
  %ValStr = alloca i8*, align 8
  %Id = alloca i32, align 4
  %ok = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @opts_PARAMETERS, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call1 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %Pair, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call2 = call i8* @list_PairFirst(%struct.LIST_HELP* %4)
  %5 = ptrtoint i8* %call2 to i32
  store i32 %5, i32* %Id, align 4
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call3 = call i8* @list_PairSecond(%struct.LIST_HELP* %6)
  store i8* %call3, i8** %ValStr, align 8
  %7 = load i32, i32* %Id, align 4
  %call4 = call i8* @opts_ClName(i32 %7)
  store i8* %call4, i8** %Name, align 8
  %8 = load i8*, i8** %ValStr, align 8
  %call5 = call i32 @string_StringToInt(i8* %8, i32 0, i32* %IntValue)
  store i32 %call5, i32* %ok, align 4
  %9 = load i32, i32* %ok, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fflush(%struct._IO_FILE* %10)
  %11 = load i8*, i8** %ValStr, align 8
  %12 = load i8*, i8** %Name, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i32 0, i32 0), i8* %11, i8* %12)
  call void @misc_Error()
  br label %if.end

if.else:                                          ; preds = %while.body
  %13 = load i32*, i32** %Store.addr, align 8
  %14 = load i8*, i8** %Name, align 8
  %call8 = call i32 @flag_Id(i8* %14)
  %15 = load i32, i32* %IntValue, align 4
  call void @flag_SetFlagValue(i32* %13, i32 %call8, i32 %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @flag_Id(i8*) #2

; Function Attrs: noreturn nounwind
declare void @abort() #4

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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opts_IdCmp(i32 %Id1, i32 %Id2) #1 {
entry:
  %Id1.addr = alloca i32, align 4
  %Id2.addr = alloca i32, align 4
  store i32 %Id1, i32* %Id1.addr, align 4
  store i32 %Id2, i32* %Id2.addr, align 4
  %0 = load i32, i32* %Id1.addr, align 4
  %1 = load i32, i32* %Id2.addr, align 4
  %sub = sub nsw i32 %0, %1
  ret i32 %sub
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_PairFree(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  call void @list_Free(%struct.LIST_HELP* %0)
  ret void
}

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
define internal i32 @opts_DeclIsShortOpt(%struct.OPTDECL* %D) #1 {
entry:
  %D.addr = alloca %struct.OPTDECL*, align 8
  store %struct.OPTDECL* %D, %struct.OPTDECL** %D.addr, align 8
  %0 = load %struct.OPTDECL*, %struct.OPTDECL** %D.addr, align 8
  %call = call i8* @opts_DeclGetClName(%struct.OPTDECL* %0)
  %call1 = call i64 @strlen(i8* %call) #7
  %cmp = icmp eq i64 %call1, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i8* @string_Nconc(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @opts_GetLongOptDeclarations() #0 {
entry:
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Long = alloca %struct.LIST_HELP*, align 8
  %Decl = alloca %struct.OPTDECL*, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @opts_DECLARATIONS, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Long, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call2 to %struct.OPTDECL*
  store %struct.OPTDECL* %3, %struct.OPTDECL** %Decl, align 8
  %4 = load %struct.OPTDECL*, %struct.OPTDECL** %Decl, align 8
  %call3 = call i32 @opts_DeclIsShortOpt(%struct.OPTDECL* %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %5 = load %struct.OPTDECL*, %struct.OPTDECL** %Decl, align 8
  %6 = bitcast %struct.OPTDECL* %5 to i8*
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Long, align 8
  %call5 = call %struct.LIST_HELP* @list_Cons(i8* %6, %struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Long, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Long, align 8
  ret %struct.LIST_HELP* %9
}

declare i32 @list_Length(%struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.OPTION* @opts_GetLongOptsArray(i32 %OptNum) #1 {
entry:
  %OptNum.addr = alloca i32, align 4
  store i32 %OptNum, i32* %OptNum.addr, align 4
  %0 = load i32, i32* %OptNum.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 32, %conv
  %conv1 = trunc i64 %mul to i32
  %call = call i8* @memory_Malloc(i32 %conv1)
  %1 = bitcast i8* %call to %struct.OPTION*
  ret %struct.OPTION* %1
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

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

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
declare void @free(i8*) #5

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
define internal void @flag_CheckFlagIdInRange(i32 %FlagId) #1 {
entry:
  %FlagId.addr = alloca i32, align 4
  store i32 %FlagId, i32* %FlagId.addr, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CheckFlagValueInRange(i32 %FlagId, i32 %Value) #1 {
entry:
  %FlagId.addr = alloca i32, align 4
  %Value.addr = alloca i32, align 4
  store i32 %FlagId, i32* %FlagId.addr, align 4
  store i32 %Value, i32* %Value.addr, align 4
  %0 = load i32, i32* %FlagId.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %Value.addr, align 4
  %2 = load i32, i32* %FlagId.addr, align 4
  %call = call i32 @flag_Minimum(i32 %2)
  %cmp = icmp sle i32 %1, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %3)
  %4 = load i32, i32* %Value.addr, align 4
  %5 = load i32, i32* %FlagId.addr, align 4
  %call2 = call i8* @flag_Name(i32 %5)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i32 0, i32 0), i32 %4, i8* %call2)
  call void @misc_Error()
  br label %if.end.8

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %Value.addr, align 4
  %7 = load i32, i32* %FlagId.addr, align 4
  %call3 = call i32 @flag_Maximum(i32 %7)
  %cmp4 = icmp sge i32 %6, %call3
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* %8)
  %9 = load i32, i32* %Value.addr, align 4
  %10 = load i32, i32* %FlagId.addr, align 4
  %call7 = call i8* @flag_Name(i32 %10)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i32 0, i32 0), i32 %9, i8* %call7)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  ret void
}

declare i32 @flag_Minimum(i32) #2

declare i32 @flag_Maximum(i32) #2

; Function Attrs: nounwind uwtable
define internal void @opts_AddParam(i32 %Id, i8* %ValueString) #0 {
entry:
  %Id.addr = alloca i32, align 4
  %ValueString.addr = alloca i8*, align 8
  %Pair = alloca %struct.LIST_HELP*, align 8
  store i32 %Id, i32* %Id.addr, align 4
  store i8* %ValueString, i8** %ValueString.addr, align 8
  %0 = load i32, i32* %Id.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = inttoptr i64 %conv to i8*
  %2 = load i8*, i8** %ValueString.addr, align 8
  %call = call i8* @string_StringCopy(i8* %2)
  %call1 = call %struct.LIST_HELP* @list_PairCreate(i8* %1, i8* %call)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Pair, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %4 = bitcast %struct.LIST_HELP* %3 to i8*
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** @opts_PARAMETERS, align 8
  %call2 = call %struct.LIST_HELP* @list_Cons(i8* %4, %struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** @opts_PARAMETERS, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_PairCreate(i8* %P1, i8* %P2) #1 {
entry:
  %P1.addr = alloca i8*, align 8
  %P2.addr = alloca i8*, align 8
  store i8* %P1, i8** %P1.addr, align 8
  store i8* %P2, i8** %P2.addr, align 8
  %0 = load i8*, i8** %P1.addr, align 8
  %1 = load i8*, i8** %P2.addr, align 8
  %2 = bitcast i8* %1 to %struct.LIST_HELP*
  %call = call %struct.LIST_HELP* @list_Cons(i8* %0, %struct.LIST_HELP* %2)
  ret %struct.LIST_HELP* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @opts_GetOptInternal(i32 %argc, i8** %argv, i8* %optstring, %struct.OPTION* %longopts, i32* %longind, i32 %long_only) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %optstring.addr = alloca i8*, align 8
  %longopts.addr = alloca %struct.OPTION*, align 8
  %longind.addr = alloca i32*, align 8
  %long_only.addr = alloca i32, align 4
  %nameend = alloca i8*, align 8
  %p = alloca %struct.OPTION*, align 8
  %pfound = alloca %struct.OPTION*, align 8
  %exact = alloca i32, align 4
  %ambig = alloca i32, align 4
  %indfound = alloca i32, align 4
  %option_index = alloca i32, align 4
  %c = alloca i8, align 1
  %temp = alloca i8*, align 8
  %nameend340 = alloca i8*, align 8
  %p341 = alloca %struct.OPTION*, align 8
  %pfound342 = alloca %struct.OPTION*, align 8
  %exact343 = alloca i32, align 4
  %ambig344 = alloca i32, align 4
  %indfound345 = alloca i32, align 4
  %option_index346 = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* %optstring, i8** %optstring.addr, align 8
  store %struct.OPTION* %longopts, %struct.OPTION** %longopts.addr, align 8
  store i32* %longind, i32** %longind.addr, align 8
  store i32 %long_only, i32* %long_only.addr, align 4
  store i8* null, i8** @opts_Arg, align 8
  %0 = load i32, i32* @opts_GetOptInitialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @opts_Ind, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %argc.addr, align 4
  %3 = load i8**, i8*** %argv.addr, align 8
  %4 = load i8*, i8** %optstring.addr, align 8
  %call = call i8* @opts_GetOptInitialize(i32 %2, i8** %3, i8* %4)
  store i8* %call, i8** %optstring.addr, align 8
  store i32 1, i32* @opts_Ind, align 4
  store i32 1, i32* @opts_GetOptInitialized, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %5 = load i8*, i8** @opts_NextChar, align 8
  %cmp1 = icmp eq i8* %5, null
  br i1 %cmp1, label %if.then.5, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %if.end
  %6 = load i8*, i8** @opts_NextChar, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then.5, label %if.end.105

if.then.5:                                        ; preds = %lor.lhs.false.2, %if.end
  %8 = load i32, i32* @opts_LastNonOpt, align 4
  %9 = load i32, i32* @opts_Ind, align 4
  %cmp6 = icmp sgt i32 %8, %9
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  %10 = load i32, i32* @opts_Ind, align 4
  store i32 %10, i32* @opts_LastNonOpt, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.5
  %11 = load i32, i32* @opts_FirstNonOpt, align 4
  %12 = load i32, i32* @opts_Ind, align 4
  %cmp10 = icmp sgt i32 %11, %12
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %13 = load i32, i32* @opts_Ind, align 4
  store i32 %13, i32* @opts_FirstNonOpt, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.9
  %14 = load i32, i32* @opts_Ordering, align 4
  %cmp14 = icmp eq i32 %14, 1
  br i1 %cmp14, label %if.then.16, label %if.end.39

if.then.16:                                       ; preds = %if.end.13
  %15 = load i32, i32* @opts_FirstNonOpt, align 4
  %16 = load i32, i32* @opts_LastNonOpt, align 4
  %cmp17 = icmp ne i32 %15, %16
  br i1 %cmp17, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.16
  %17 = load i32, i32* @opts_LastNonOpt, align 4
  %18 = load i32, i32* @opts_Ind, align 4
  %cmp19 = icmp ne i32 %17, %18
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %land.lhs.true
  %19 = load i8**, i8*** %argv.addr, align 8
  call void @opts_Exchange(i8** %19)
  br label %if.end.26

if.else:                                          ; preds = %land.lhs.true, %if.then.16
  %20 = load i32, i32* @opts_LastNonOpt, align 4
  %21 = load i32, i32* @opts_Ind, align 4
  %cmp22 = icmp ne i32 %20, %21
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else
  %22 = load i32, i32* @opts_Ind, align 4
  store i32 %22, i32* @opts_FirstNonOpt, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.21
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.26
  %23 = load i32, i32* @opts_Ind, align 4
  %24 = load i32, i32* %argc.addr, align 4
  %cmp27 = icmp slt i32 %23, %24
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %25 = load i32, i32* @opts_Ind, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %26, i64 %idxprom
  %27 = load i8*, i8** %arrayidx, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %28 to i32
  %cmp31 = icmp ne i32 %conv30, 45
  br i1 %cmp31, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %29 = load i32, i32* @opts_Ind, align 4
  %idxprom33 = sext i32 %29 to i64
  %30 = load i8**, i8*** %argv.addr, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %30, i64 %idxprom33
  %31 = load i8*, i8** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %32 to i32
  %cmp37 = icmp eq i32 %conv36, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %33 = phi i1 [ true, %land.rhs ], [ %cmp37, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %34 = phi i1 [ false, %while.cond ], [ %33, %lor.end ]
  br i1 %34, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %35 = load i32, i32* @opts_Ind, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* @opts_Ind, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %36 = load i32, i32* @opts_Ind, align 4
  store i32 %36, i32* @opts_LastNonOpt, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %while.end, %if.end.13
  %37 = load i32, i32* @opts_Ind, align 4
  %38 = load i32, i32* %argc.addr, align 4
  %cmp40 = icmp ne i32 %37, %38
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.61

land.lhs.true.42:                                 ; preds = %if.end.39
  %39 = load i32, i32* @opts_Ind, align 4
  %idxprom43 = sext i32 %39 to i64
  %40 = load i8**, i8*** %argv.addr, align 8
  %arrayidx44 = getelementptr inbounds i8*, i8** %40, i64 %idxprom43
  %41 = load i8*, i8** %arrayidx44, align 8
  %call45 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)) #7
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.61, label %if.then.47

if.then.47:                                       ; preds = %land.lhs.true.42
  %42 = load i32, i32* @opts_Ind, align 4
  %inc48 = add nsw i32 %42, 1
  store i32 %inc48, i32* @opts_Ind, align 4
  %43 = load i32, i32* @opts_FirstNonOpt, align 4
  %44 = load i32, i32* @opts_LastNonOpt, align 4
  %cmp49 = icmp ne i32 %43, %44
  br i1 %cmp49, label %land.lhs.true.51, label %if.else.55

land.lhs.true.51:                                 ; preds = %if.then.47
  %45 = load i32, i32* @opts_LastNonOpt, align 4
  %46 = load i32, i32* @opts_Ind, align 4
  %cmp52 = icmp ne i32 %45, %46
  br i1 %cmp52, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %land.lhs.true.51
  %47 = load i8**, i8*** %argv.addr, align 8
  call void @opts_Exchange(i8** %47)
  br label %if.end.60

if.else.55:                                       ; preds = %land.lhs.true.51, %if.then.47
  %48 = load i32, i32* @opts_FirstNonOpt, align 4
  %49 = load i32, i32* @opts_LastNonOpt, align 4
  %cmp56 = icmp eq i32 %48, %49
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.else.55
  %50 = load i32, i32* @opts_Ind, align 4
  store i32 %50, i32* @opts_FirstNonOpt, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.else.55
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.54
  %51 = load i32, i32* %argc.addr, align 4
  store i32 %51, i32* @opts_LastNonOpt, align 4
  %52 = load i32, i32* %argc.addr, align 4
  store i32 %52, i32* @opts_Ind, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %land.lhs.true.42, %if.end.39
  %53 = load i32, i32* @opts_Ind, align 4
  %54 = load i32, i32* %argc.addr, align 4
  %cmp62 = icmp eq i32 %53, %54
  br i1 %cmp62, label %if.then.64, label %if.end.69

if.then.64:                                       ; preds = %if.end.61
  %55 = load i32, i32* @opts_FirstNonOpt, align 4
  %56 = load i32, i32* @opts_LastNonOpt, align 4
  %cmp65 = icmp ne i32 %55, %56
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.then.64
  %57 = load i32, i32* @opts_FirstNonOpt, align 4
  store i32 %57, i32* @opts_Ind, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.then.64
  store i32 -1, i32* %retval
  br label %return

if.end.69:                                        ; preds = %if.end.61
  %58 = load i32, i32* @opts_Ind, align 4
  %idxprom70 = sext i32 %58 to i64
  %59 = load i8**, i8*** %argv.addr, align 8
  %arrayidx71 = getelementptr inbounds i8*, i8** %59, i64 %idxprom70
  %60 = load i8*, i8** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %60, i64 0
  %61 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %61 to i32
  %cmp74 = icmp ne i32 %conv73, 45
  br i1 %cmp74, label %if.then.83, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %if.end.69
  %62 = load i32, i32* @opts_Ind, align 4
  %idxprom77 = sext i32 %62 to i64
  %63 = load i8**, i8*** %argv.addr, align 8
  %arrayidx78 = getelementptr inbounds i8*, i8** %63, i64 %idxprom77
  %64 = load i8*, i8** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %64, i64 1
  %65 = load i8, i8* %arrayidx79, align 1
  %conv80 = sext i8 %65 to i32
  %cmp81 = icmp eq i32 %conv80, 0
  br i1 %cmp81, label %if.then.83, label %if.end.91

if.then.83:                                       ; preds = %lor.lhs.false.76, %if.end.69
  %66 = load i32, i32* @opts_Ordering, align 4
  %cmp84 = icmp eq i32 %66, 0
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.then.83
  store i32 -1, i32* %retval
  br label %return

if.end.87:                                        ; preds = %if.then.83
  %67 = load i32, i32* @opts_Ind, align 4
  %inc88 = add nsw i32 %67, 1
  store i32 %inc88, i32* @opts_Ind, align 4
  %idxprom89 = sext i32 %67 to i64
  %68 = load i8**, i8*** %argv.addr, align 8
  %arrayidx90 = getelementptr inbounds i8*, i8** %68, i64 %idxprom89
  %69 = load i8*, i8** %arrayidx90, align 8
  store i8* %69, i8** @opts_Arg, align 8
  store i32 1, i32* %retval
  br label %return

if.end.91:                                        ; preds = %lor.lhs.false.76
  %70 = load i32, i32* @opts_Ind, align 4
  %idxprom92 = sext i32 %70 to i64
  %71 = load i8**, i8*** %argv.addr, align 8
  %arrayidx93 = getelementptr inbounds i8*, i8** %71, i64 %idxprom92
  %72 = load i8*, i8** %arrayidx93, align 8
  %add.ptr = getelementptr inbounds i8, i8* %72, i64 1
  %73 = load %struct.OPTION*, %struct.OPTION** %longopts.addr, align 8
  %cmp94 = icmp ne %struct.OPTION* %73, null
  br i1 %cmp94, label %land.rhs.96, label %land.end.103

land.rhs.96:                                      ; preds = %if.end.91
  %74 = load i32, i32* @opts_Ind, align 4
  %idxprom97 = sext i32 %74 to i64
  %75 = load i8**, i8*** %argv.addr, align 8
  %arrayidx98 = getelementptr inbounds i8*, i8** %75, i64 %idxprom97
  %76 = load i8*, i8** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %76, i64 1
  %77 = load i8, i8* %arrayidx99, align 1
  %conv100 = sext i8 %77 to i32
  %cmp101 = icmp eq i32 %conv100, 45
  br label %land.end.103

land.end.103:                                     ; preds = %land.rhs.96, %if.end.91
  %78 = phi i1 [ false, %if.end.91 ], [ %cmp101, %land.rhs.96 ]
  %land.ext = zext i1 %78 to i32
  %idx.ext = sext i32 %land.ext to i64
  %add.ptr104 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  store i8* %add.ptr104, i8** @opts_NextChar, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %land.end.103, %lor.lhs.false.2
  %79 = load %struct.OPTION*, %struct.OPTION** %longopts.addr, align 8
  %cmp106 = icmp ne %struct.OPTION* %79, null
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.298

land.lhs.true.108:                                ; preds = %if.end.105
  %80 = load i32, i32* @opts_Ind, align 4
  %idxprom109 = sext i32 %80 to i64
  %81 = load i8**, i8*** %argv.addr, align 8
  %arrayidx110 = getelementptr inbounds i8*, i8** %81, i64 %idxprom109
  %82 = load i8*, i8** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %82, i64 1
  %83 = load i8, i8* %arrayidx111, align 1
  %conv112 = sext i8 %83 to i32
  %cmp113 = icmp eq i32 %conv112, 45
  br i1 %cmp113, label %if.then.130, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %land.lhs.true.108
  %84 = load i32, i32* %long_only.addr, align 4
  %tobool116 = icmp ne i32 %84, 0
  br i1 %tobool116, label %land.lhs.true.117, label %if.end.298

land.lhs.true.117:                                ; preds = %lor.lhs.false.115
  %85 = load i32, i32* @opts_Ind, align 4
  %idxprom118 = sext i32 %85 to i64
  %86 = load i8**, i8*** %argv.addr, align 8
  %arrayidx119 = getelementptr inbounds i8*, i8** %86, i64 %idxprom118
  %87 = load i8*, i8** %arrayidx119, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %87, i64 2
  %88 = load i8, i8* %arrayidx120, align 1
  %conv121 = sext i8 %88 to i32
  %tobool122 = icmp ne i32 %conv121, 0
  br i1 %tobool122, label %if.then.130, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %land.lhs.true.117
  %89 = load i8*, i8** %optstring.addr, align 8
  %90 = load i32, i32* @opts_Ind, align 4
  %idxprom124 = sext i32 %90 to i64
  %91 = load i8**, i8*** %argv.addr, align 8
  %arrayidx125 = getelementptr inbounds i8*, i8** %91, i64 %idxprom124
  %92 = load i8*, i8** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %92, i64 1
  %93 = load i8, i8* %arrayidx126, align 1
  %conv127 = sext i8 %93 to i32
  %call128 = call i8* @strchr(i8* %89, i32 %conv127) #7
  %tobool129 = icmp ne i8* %call128, null
  br i1 %tobool129, label %if.end.298, label %if.then.130

if.then.130:                                      ; preds = %lor.lhs.false.123, %land.lhs.true.117, %land.lhs.true.108
  store %struct.OPTION* null, %struct.OPTION** %pfound, align 8
  store i32 0, i32* %exact, align 4
  store i32 0, i32* %ambig, align 4
  store i32 -1, i32* %indfound, align 4
  %94 = load i8*, i8** @opts_NextChar, align 8
  store i8* %94, i8** %nameend, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.130
  %95 = load i8*, i8** %nameend, align 8
  %96 = load i8, i8* %95, align 1
  %conv131 = sext i8 %96 to i32
  %tobool132 = icmp ne i32 %conv131, 0
  br i1 %tobool132, label %land.rhs.133, label %land.end.137

land.rhs.133:                                     ; preds = %for.cond
  %97 = load i8*, i8** %nameend, align 8
  %98 = load i8, i8* %97, align 1
  %conv134 = sext i8 %98 to i32
  %cmp135 = icmp ne i32 %conv134, 61
  br label %land.end.137

land.end.137:                                     ; preds = %land.rhs.133, %for.cond
  %99 = phi i1 [ false, %for.cond ], [ %cmp135, %land.rhs.133 ]
  br i1 %99, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.137
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %100 = load i8*, i8** %nameend, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr, i8** %nameend, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end.137
  %101 = load %struct.OPTION*, %struct.OPTION** %longopts.addr, align 8
  store %struct.OPTION* %101, %struct.OPTION** %p, align 8
  store i32 0, i32* %option_index, align 4
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc.164, %for.end
  %102 = load %struct.OPTION*, %struct.OPTION** %p, align 8
  %name = getelementptr inbounds %struct.OPTION, %struct.OPTION* %102, i32 0, i32 0
  %103 = load i8*, i8** %name, align 8
  %tobool140 = icmp ne i8* %103, null
  br i1 %tobool140, label %for.body.141, label %for.end.167

for.body.141:                                     ; preds = %for.cond.139
  %104 = load %struct.OPTION*, %struct.OPTION** %p, align 8
  %name142 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %104, i32 0, i32 0
  %105 = load i8*, i8** %name142, align 8
  %106 = load i8*, i8** @opts_NextChar, align 8
  %107 = load i8*, i8** %nameend, align 8
  %108 = load i8*, i8** @opts_NextChar, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %107 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %108 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call143 = call i32 @strncmp(i8* %105, i8* %106, i64 %sub.ptr.sub) #7
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %if.end.163, label %if.then.145

if.then.145:                                      ; preds = %for.body.141
  %109 = load i8*, i8** %nameend, align 8
  %110 = load i8*, i8** @opts_NextChar, align 8
  %sub.ptr.lhs.cast146 = ptrtoint i8* %109 to i64
  %sub.ptr.rhs.cast147 = ptrtoint i8* %110 to i64
  %sub.ptr.sub148 = sub i64 %sub.ptr.lhs.cast146, %sub.ptr.rhs.cast147
  %conv149 = trunc i64 %sub.ptr.sub148 to i32
  %111 = load %struct.OPTION*, %struct.OPTION** %p, align 8
  %name150 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %111, i32 0, i32 0
  %112 = load i8*, i8** %name150, align 8
  %call151 = call i64 @strlen(i8* %112) #7
  %conv152 = trunc i64 %call151 to i32
  %cmp153 = icmp eq i32 %conv149, %conv152
  br i1 %cmp153, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %if.then.145
  %113 = load %struct.OPTION*, %struct.OPTION** %p, align 8
  store %struct.OPTION* %113, %struct.OPTION** %pfound, align 8
  %114 = load i32, i32* %option_index, align 4
  store i32 %114, i32* %indfound, align 4
  store i32 1, i32* %exact, align 4
  br label %for.end.167

if.else.156:                                      ; preds = %if.then.145
  %115 = load %struct.OPTION*, %struct.OPTION** %pfound, align 8
  %cmp157 = icmp eq %struct.OPTION* %115, null
  br i1 %cmp157, label %if.then.159, label %if.else.160

if.then.159:                                      ; preds = %if.else.156
  %116 = load %struct.OPTION*, %struct.OPTION** %p, align 8
  store %struct.OPTION* %116, %struct.OPTION** %pfound, align 8
  %117 = load i32, i32* %option_index, align 4
  store i32 %117, i32* %indfound, align 4
  br label %if.end.161

if.else.160:                                      ; preds = %if.else.156
  store i32 1, i32* %ambig, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.160, %if.then.159
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %for.body.141
  br label %for.inc.164

for.inc.164:                                      ; preds = %if.end.163
  %118 = load %struct.OPTION*, %struct.OPTION** %p, align 8
  %incdec.ptr165 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %118, i32 1
  store %struct.OPTION* %incdec.ptr165, %struct.OPTION** %p, align 8
  %119 = load i32, i32* %option_index, align 4
  %inc166 = add nsw i32 %119, 1
  store i32 %inc166, i32* %option_index, align 4
  br label %for.cond.139

for.end.167:                                      ; preds = %if.then.155, %for.cond.139
  %120 = load i32, i32* %ambig, align 4
  %tobool168 = icmp ne i32 %120, 0
  br i1 %tobool168, label %land.lhs.true.169, label %if.end.182

land.lhs.true.169:                                ; preds = %for.end.167
  %121 = load i32, i32* %exact, align 4
  %tobool170 = icmp ne i32 %121, 0
  br i1 %tobool170, label %if.end.182, label %if.then.171

if.then.171:                                      ; preds = %land.lhs.true.169
  %122 = load i32, i32* @opts_Err, align 4
  %tobool172 = icmp ne i32 %122, 0
  br i1 %tobool172, label %if.then.173, label %if.end.178

if.then.173:                                      ; preds = %if.then.171
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call174 = call i32 @fflush(%struct._IO_FILE* %123)
  %124 = load i8**, i8*** %argv.addr, align 8
  %arrayidx175 = getelementptr inbounds i8*, i8** %124, i64 0
  %125 = load i8*, i8** %arrayidx175, align 8
  %126 = load i32, i32* @opts_Ind, align 4
  %idxprom176 = sext i32 %126 to i64
  %127 = load i8**, i8*** %argv.addr, align 8
  %arrayidx177 = getelementptr inbounds i8*, i8** %127, i64 %idxprom176
  %128 = load i8*, i8** %arrayidx177, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0), i8* %125, i8* %128)
  call void @misc_Error()
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.173, %if.then.171
  %129 = load i8*, i8** @opts_NextChar, align 8
  %call179 = call i64 @strlen(i8* %129) #7
  %130 = load i8*, i8** @opts_NextChar, align 8
  %add.ptr180 = getelementptr inbounds i8, i8* %130, i64 %call179
  store i8* %add.ptr180, i8** @opts_NextChar, align 8
  %131 = load i32, i32* @opts_Ind, align 4
  %inc181 = add nsw i32 %131, 1
  store i32 %inc181, i32* @opts_Ind, align 4
  store i32 0, i32* @opts_Opt, align 4
  store i32 63, i32* %retval
  br label %return

if.end.182:                                       ; preds = %land.lhs.true.169, %for.end.167
  %132 = load %struct.OPTION*, %struct.OPTION** %pfound, align 8
  %cmp183 = icmp ne %struct.OPTION* %132, null
  br i1 %cmp183, label %if.then.185, label %if.end.261

if.then.185:                                      ; preds = %if.end.182
  %133 = load i32, i32* %indfound, align 4
  store i32 %133, i32* %option_index, align 4
  %134 = load i32, i32* @opts_Ind, align 4
  %inc186 = add nsw i32 %134, 1
  store i32 %inc186, i32* @opts_Ind, align 4
  %135 = load i8*, i8** %nameend, align 8
  %136 = load i8, i8* %135, align 1
  %tobool187 = icmp ne i8 %136, 0
  br i1 %tobool187, label %if.then.188, label %if.else.219

if.then.188:                                      ; preds = %if.then.185
  %137 = load %struct.OPTION*, %struct.OPTION** %pfound, align 8
  %has_arg = getelementptr inbounds %struct.OPTION, %struct.OPTION* %137, i32 0, i32 1
  %138 = load i32, i32* %has_arg, align 4
  %tobool189 = icmp ne i32 %138, 0
  br i1 %tobool189, label %if.then.190, label %if.else.192

if.then.190:                                      ; preds = %if.then.188
  %139 = load i8*, i8** %nameend, align 8
  %add.ptr191 = getelementptr inbounds i8, i8* %139, i64 1
  store i8* %add.ptr191, i8** @opts_Arg, align 8
  br label %if.end.218

if.else.192:                                      ; preds = %if.then.188
  %140 = load i32, i32* @opts_Err, align 4
  %tobool193 = icmp ne i32 %140, 0
  br i1 %tobool193, label %if.then.194, label %if.end.215

if.then.194:                                      ; preds = %if.else.192
  %141 = load i32, i32* @opts_Ind, align 4
  %sub = sub nsw i32 %141, 1
  %idxprom195 = sext i32 %sub to i64
  %142 = load i8**, i8*** %argv.addr, align 8
  %arrayidx196 = getelementptr inbounds i8*, i8** %142, i64 %idxprom195
  %143 = load i8*, i8** %arrayidx196, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %143, i64 1
  %144 = load i8, i8* %arrayidx197, align 1
  %conv198 = sext i8 %144 to i32
  %cmp199 = icmp eq i32 %conv198, 45
  br i1 %cmp199, label %if.then.201, label %if.else.205

if.then.201:                                      ; preds = %if.then.194
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call202 = call i32 @fflush(%struct._IO_FILE* %145)
  %146 = load i8**, i8*** %argv.addr, align 8
  %arrayidx203 = getelementptr inbounds i8*, i8** %146, i64 0
  %147 = load i8*, i8** %arrayidx203, align 8
  %148 = load %struct.OPTION*, %struct.OPTION** %pfound, align 8
  %name204 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %148, i32 0, i32 0
  %149 = load i8*, i8** %name204, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i32 0, i32 0), i8* %147, i8* %149)
  call void @misc_Error()
  br label %if.end.214

if.else.205:                                      ; preds = %if.then.194
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call206 = call i32 @fflush(%struct._IO_FILE* %150)
  %151 = load i8**, i8*** %argv.addr, align 8
  %arrayidx207 = getelementptr inbounds i8*, i8** %151, i64 0
  %152 = load i8*, i8** %arrayidx207, align 8
  %153 = load i32, i32* @opts_Ind, align 4
  %sub208 = sub nsw i32 %153, 1
  %idxprom209 = sext i32 %sub208 to i64
  %154 = load i8**, i8*** %argv.addr, align 8
  %arrayidx210 = getelementptr inbounds i8*, i8** %154, i64 %idxprom209
  %155 = load i8*, i8** %arrayidx210, align 8
  %arrayidx211 = getelementptr inbounds i8, i8* %155, i64 0
  %156 = load i8, i8* %arrayidx211, align 1
  %conv212 = sext i8 %156 to i32
  %157 = load %struct.OPTION*, %struct.OPTION** %pfound, align 8
  %name213 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %157, i32 0, i32 0
  %158 = load i8*, i8** %name213, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i32 0, i32 0), i8* %152, i32 %conv212, i8* %158)
  call void @misc_Error()
  br label %if.end.214

if.end.214:                                       ; preds = %if.else.205, %if.then.201
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.else.192
  %159 = load i8*, i8** @opts_NextChar, align 8
  %call216 = call i64 @strlen(i8* %159) #7
  %160 = load i8*, i8** @opts_NextChar, align 8
  %add.ptr217 = getelementptr inbounds i8, i8* %160, i64 %call216
  store i8* %add.ptr217, i8** @opts_NextChar, align 8
  %161 = load %struct.OPTION*, %struct.OPTION** %pfound, align 8
  %val = getelementptr inbounds %struct.OPTION, %struct.OPTION* %161, i32 0, i32 3
  %162 = load i32, i32* %val, align 4
  store i32 %162, i32* @opts_Opt, align 4
  store i32 63, i32* %retval
  br label %return

if.end.218:                                       ; preds = %if.then.190
  br label %if.end.248

if.else.219:                                      ; preds = %if.then.185
  %163 = load %struct.OPTION*, %struct.OPTION** %pfound, align 8
  %has_arg220 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %163, i32 0, i32 1
  %164 = load i32, i32* %has_arg220, align 4
  %cmp221 = icmp eq i32 %164, 1
  br i1 %cmp221, label %if.then.223, label %if.end.247

if.then.223:                                      ; preds = %if.else.219
  %165 = load i32, i32* @opts_Ind, align 4
  %166 = load i32, i32* %argc.addr, align 4
  %cmp224 = icmp slt i32 %165, %166
  br i1 %cmp224, label %if.then.226, label %if.else.230

if.then.226:                                      ; preds = %if.then.223
  %167 = load i32, i32* @opts_Ind, align 4
  %inc227 = add nsw i32 %167, 1
  store i32 %inc227, i32* @opts_Ind, align 4
  %idxprom228 = sext i32 %167 to i64
  %168 = load i8**, i8*** %argv.addr, align 8
  %arrayidx229 = getelementptr inbounds i8*, i8** %168, i64 %idxprom228
  %169 = load i8*, i8** %arrayidx229, align 8
  store i8* %169, i8** @opts_Arg, align 8
  br label %if.end.246

if.else.230:                                      ; preds = %if.then.223
  %170 = load i32, i32* @opts_Err, align 4
  %tobool231 = icmp ne i32 %170, 0
  br i1 %tobool231, label %if.then.232, label %if.end.238

if.then.232:                                      ; preds = %if.else.230
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call233 = call i32 @fflush(%struct._IO_FILE* %171)
  %172 = load i8**, i8*** %argv.addr, align 8
  %arrayidx234 = getelementptr inbounds i8*, i8** %172, i64 0
  %173 = load i8*, i8** %arrayidx234, align 8
  %174 = load i32, i32* @opts_Ind, align 4
  %sub235 = sub nsw i32 %174, 1
  %idxprom236 = sext i32 %sub235 to i64
  %175 = load i8**, i8*** %argv.addr, align 8
  %arrayidx237 = getelementptr inbounds i8*, i8** %175, i64 %idxprom236
  %176 = load i8*, i8** %arrayidx237, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i32 0, i32 0), i8* %173, i8* %176)
  call void @misc_Error()
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.232, %if.else.230
  %177 = load i8*, i8** @opts_NextChar, align 8
  %call239 = call i64 @strlen(i8* %177) #7
  %178 = load i8*, i8** @opts_NextChar, align 8
  %add.ptr240 = getelementptr inbounds i8, i8* %178, i64 %call239
  store i8* %add.ptr240, i8** @opts_NextChar, align 8
  %179 = load %struct.OPTION*, %struct.OPTION** %pfound, align 8
  %val241 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %179, i32 0, i32 3
  %180 = load i32, i32* %val241, align 4
  store i32 %180, i32* @opts_Opt, align 4
  %181 = load i8*, i8** %optstring.addr, align 8
  %arrayidx242 = getelementptr inbounds i8, i8* %181, i64 0
  %182 = load i8, i8* %arrayidx242, align 1
  %conv243 = sext i8 %182 to i32
  %cmp244 = icmp eq i32 %conv243, 58
  %cond = select i1 %cmp244, i32 58, i32 63
  store i32 %cond, i32* %retval
  br label %return

if.end.246:                                       ; preds = %if.then.226
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %if.else.219
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %if.end.218
  %183 = load i8*, i8** @opts_NextChar, align 8
  %call249 = call i64 @strlen(i8* %183) #7
  %184 = load i8*, i8** @opts_NextChar, align 8
  %add.ptr250 = getelementptr inbounds i8, i8* %184, i64 %call249
  store i8* %add.ptr250, i8** @opts_NextChar, align 8
  %185 = load i32*, i32** %longind.addr, align 8
  %cmp251 = icmp ne i32* %185, null
  br i1 %cmp251, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %if.end.248
  %186 = load i32, i32* %option_index, align 4
  %187 = load i32*, i32** %longind.addr, align 8
  store i32 %186, i32* %187, align 4
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.253, %if.end.248
  %188 = load %struct.OPTION*, %struct.OPTION** %pfound, align 8
  %flag = getelementptr inbounds %struct.OPTION, %struct.OPTION* %188, i32 0, i32 2
  %189 = load i32*, i32** %flag, align 8
  %tobool255 = icmp ne i32* %189, null
  br i1 %tobool255, label %if.then.256, label %if.end.259

if.then.256:                                      ; preds = %if.end.254
  %190 = load %struct.OPTION*, %struct.OPTION** %pfound, align 8
  %val257 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %190, i32 0, i32 3
  %191 = load i32, i32* %val257, align 4
  %192 = load %struct.OPTION*, %struct.OPTION** %pfound, align 8
  %flag258 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %192, i32 0, i32 2
  %193 = load i32*, i32** %flag258, align 8
  store i32 %191, i32* %193, align 4
  store i32 0, i32* %retval
  br label %return

if.end.259:                                       ; preds = %if.end.254
  %194 = load %struct.OPTION*, %struct.OPTION** %pfound, align 8
  %val260 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %194, i32 0, i32 3
  %195 = load i32, i32* %val260, align 4
  store i32 %195, i32* %retval
  br label %return

if.end.261:                                       ; preds = %if.end.182
  %196 = load i32, i32* %long_only.addr, align 4
  %tobool262 = icmp ne i32 %196, 0
  br i1 %tobool262, label %lor.lhs.false.263, label %if.then.275

lor.lhs.false.263:                                ; preds = %if.end.261
  %197 = load i32, i32* @opts_Ind, align 4
  %idxprom264 = sext i32 %197 to i64
  %198 = load i8**, i8*** %argv.addr, align 8
  %arrayidx265 = getelementptr inbounds i8*, i8** %198, i64 %idxprom264
  %199 = load i8*, i8** %arrayidx265, align 8
  %arrayidx266 = getelementptr inbounds i8, i8* %199, i64 1
  %200 = load i8, i8* %arrayidx266, align 1
  %conv267 = sext i8 %200 to i32
  %cmp268 = icmp eq i32 %conv267, 45
  br i1 %cmp268, label %if.then.275, label %lor.lhs.false.270

lor.lhs.false.270:                                ; preds = %lor.lhs.false.263
  %201 = load i8*, i8** %optstring.addr, align 8
  %202 = load i8*, i8** @opts_NextChar, align 8
  %203 = load i8, i8* %202, align 1
  %conv271 = sext i8 %203 to i32
  %call272 = call i8* @strchr(i8* %201, i32 %conv271) #7
  %cmp273 = icmp eq i8* %call272, null
  br i1 %cmp273, label %if.then.275, label %if.end.297

if.then.275:                                      ; preds = %lor.lhs.false.270, %lor.lhs.false.263, %if.end.261
  %204 = load i32, i32* @opts_Err, align 4
  %tobool276 = icmp ne i32 %204, 0
  br i1 %tobool276, label %if.then.277, label %if.end.295

if.then.277:                                      ; preds = %if.then.275
  %205 = load i32, i32* @opts_Ind, align 4
  %idxprom278 = sext i32 %205 to i64
  %206 = load i8**, i8*** %argv.addr, align 8
  %arrayidx279 = getelementptr inbounds i8*, i8** %206, i64 %idxprom278
  %207 = load i8*, i8** %arrayidx279, align 8
  %arrayidx280 = getelementptr inbounds i8, i8* %207, i64 1
  %208 = load i8, i8* %arrayidx280, align 1
  %conv281 = sext i8 %208 to i32
  %cmp282 = icmp eq i32 %conv281, 45
  br i1 %cmp282, label %if.then.284, label %if.else.287

if.then.284:                                      ; preds = %if.then.277
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call285 = call i32 @fflush(%struct._IO_FILE* %209)
  %210 = load i8**, i8*** %argv.addr, align 8
  %arrayidx286 = getelementptr inbounds i8*, i8** %210, i64 0
  %211 = load i8*, i8** %arrayidx286, align 8
  %212 = load i8*, i8** @opts_NextChar, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i32 0, i32 0), i8* %211, i8* %212)
  call void @misc_Error()
  br label %if.end.294

if.else.287:                                      ; preds = %if.then.277
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call288 = call i32 @fflush(%struct._IO_FILE* %213)
  %214 = load i8**, i8*** %argv.addr, align 8
  %arrayidx289 = getelementptr inbounds i8*, i8** %214, i64 0
  %215 = load i8*, i8** %arrayidx289, align 8
  %216 = load i32, i32* @opts_Ind, align 4
  %idxprom290 = sext i32 %216 to i64
  %217 = load i8**, i8*** %argv.addr, align 8
  %arrayidx291 = getelementptr inbounds i8*, i8** %217, i64 %idxprom290
  %218 = load i8*, i8** %arrayidx291, align 8
  %arrayidx292 = getelementptr inbounds i8, i8* %218, i64 0
  %219 = load i8, i8* %arrayidx292, align 1
  %conv293 = sext i8 %219 to i32
  %220 = load i8*, i8** @opts_NextChar, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i32 0, i32 0), i8* %215, i32 %conv293, i8* %220)
  call void @misc_Error()
  br label %if.end.294

if.end.294:                                       ; preds = %if.else.287, %if.then.284
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294, %if.then.275
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i32 0, i32 0), i8** @opts_NextChar, align 8
  %221 = load i32, i32* @opts_Ind, align 4
  %inc296 = add nsw i32 %221, 1
  store i32 %inc296, i32* @opts_Ind, align 4
  store i32 0, i32* @opts_Opt, align 4
  store i32 63, i32* %retval
  br label %return

if.end.297:                                       ; preds = %lor.lhs.false.270
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %lor.lhs.false.123, %lor.lhs.false.115, %if.end.105
  %222 = load i8*, i8** @opts_NextChar, align 8
  %incdec.ptr299 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %incdec.ptr299, i8** @opts_NextChar, align 8
  %223 = load i8, i8* %222, align 1
  store i8 %223, i8* %c, align 1
  %224 = load i8*, i8** %optstring.addr, align 8
  %225 = load i8, i8* %c, align 1
  %conv300 = sext i8 %225 to i32
  %call301 = call i8* @strchr(i8* %224, i32 %conv300) #7
  store i8* %call301, i8** %temp, align 8
  %226 = load i8*, i8** @opts_NextChar, align 8
  %227 = load i8, i8* %226, align 1
  %conv302 = sext i8 %227 to i32
  %cmp303 = icmp eq i32 %conv302, 0
  br i1 %cmp303, label %if.then.305, label %if.end.307

if.then.305:                                      ; preds = %if.end.298
  %228 = load i32, i32* @opts_Ind, align 4
  %inc306 = add nsw i32 %228, 1
  store i32 %inc306, i32* @opts_Ind, align 4
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.305, %if.end.298
  %229 = load i8*, i8** %temp, align 8
  %cmp308 = icmp eq i8* %229, null
  br i1 %cmp308, label %if.then.314, label %lor.lhs.false.310

lor.lhs.false.310:                                ; preds = %if.end.307
  %230 = load i8, i8* %c, align 1
  %conv311 = sext i8 %230 to i32
  %cmp312 = icmp eq i32 %conv311, 58
  br i1 %cmp312, label %if.then.314, label %if.end.329

if.then.314:                                      ; preds = %lor.lhs.false.310, %if.end.307
  %231 = load i32, i32* @opts_Err, align 4
  %tobool315 = icmp ne i32 %231, 0
  br i1 %tobool315, label %if.then.316, label %if.end.327

if.then.316:                                      ; preds = %if.then.314
  %232 = load i8*, i8** @opts_PosixlyCorrect, align 8
  %tobool317 = icmp ne i8* %232, null
  br i1 %tobool317, label %if.then.318, label %if.else.322

if.then.318:                                      ; preds = %if.then.316
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call319 = call i32 @fflush(%struct._IO_FILE* %233)
  %234 = load i8**, i8*** %argv.addr, align 8
  %arrayidx320 = getelementptr inbounds i8*, i8** %234, i64 0
  %235 = load i8*, i8** %arrayidx320, align 8
  %236 = load i8, i8* %c, align 1
  %conv321 = sext i8 %236 to i32
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0), i8* %235, i32 %conv321)
  call void @misc_Error()
  br label %if.end.326

if.else.322:                                      ; preds = %if.then.316
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call323 = call i32 @fflush(%struct._IO_FILE* %237)
  %238 = load i8**, i8*** %argv.addr, align 8
  %arrayidx324 = getelementptr inbounds i8*, i8** %238, i64 0
  %239 = load i8*, i8** %arrayidx324, align 8
  %240 = load i8, i8* %c, align 1
  %conv325 = sext i8 %240 to i32
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0), i8* %239, i32 %conv325)
  call void @misc_Error()
  br label %if.end.326

if.end.326:                                       ; preds = %if.else.322, %if.then.318
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.then.314
  %241 = load i8, i8* %c, align 1
  %conv328 = sext i8 %241 to i32
  store i32 %conv328, i32* @opts_Opt, align 4
  store i32 63, i32* %retval
  br label %return

if.end.329:                                       ; preds = %lor.lhs.false.310
  %242 = load i8*, i8** %temp, align 8
  %arrayidx330 = getelementptr inbounds i8, i8* %242, i64 0
  %243 = load i8, i8* %arrayidx330, align 1
  %conv331 = sext i8 %243 to i32
  %cmp332 = icmp eq i32 %conv331, 87
  br i1 %cmp332, label %land.lhs.true.334, label %if.end.501

land.lhs.true.334:                                ; preds = %if.end.329
  %244 = load i8*, i8** %temp, align 8
  %arrayidx335 = getelementptr inbounds i8, i8* %244, i64 1
  %245 = load i8, i8* %arrayidx335, align 1
  %conv336 = sext i8 %245 to i32
  %cmp337 = icmp eq i32 %conv336, 59
  br i1 %cmp337, label %if.then.339, label %if.end.501

if.then.339:                                      ; preds = %land.lhs.true.334
  store %struct.OPTION* null, %struct.OPTION** %pfound342, align 8
  store i32 0, i32* %exact343, align 4
  store i32 0, i32* %ambig344, align 4
  store i32 0, i32* %indfound345, align 4
  %246 = load i8*, i8** @opts_NextChar, align 8
  %247 = load i8, i8* %246, align 1
  %conv347 = sext i8 %247 to i32
  %cmp348 = icmp ne i32 %conv347, 0
  br i1 %cmp348, label %if.then.350, label %if.else.352

if.then.350:                                      ; preds = %if.then.339
  %248 = load i8*, i8** @opts_NextChar, align 8
  store i8* %248, i8** @opts_Arg, align 8
  %249 = load i32, i32* @opts_Ind, align 4
  %inc351 = add nsw i32 %249, 1
  store i32 %inc351, i32* @opts_Ind, align 4
  br label %if.end.376

if.else.352:                                      ; preds = %if.then.339
  %250 = load i32, i32* @opts_Ind, align 4
  %251 = load i32, i32* %argc.addr, align 4
  %cmp353 = icmp eq i32 %250, %251
  br i1 %cmp353, label %if.then.355, label %if.else.371

if.then.355:                                      ; preds = %if.else.352
  %252 = load i32, i32* @opts_Err, align 4
  %tobool356 = icmp ne i32 %252, 0
  br i1 %tobool356, label %if.then.357, label %if.end.361

if.then.357:                                      ; preds = %if.then.355
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call358 = call i32 @fflush(%struct._IO_FILE* %253)
  %254 = load i8**, i8*** %argv.addr, align 8
  %arrayidx359 = getelementptr inbounds i8*, i8** %254, i64 0
  %255 = load i8*, i8** %arrayidx359, align 8
  %256 = load i8, i8* %c, align 1
  %conv360 = sext i8 %256 to i32
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i32 0, i32 0), i8* %255, i32 %conv360)
  call void @misc_Error()
  br label %if.end.361

if.end.361:                                       ; preds = %if.then.357, %if.then.355
  %257 = load i8, i8* %c, align 1
  %conv362 = sext i8 %257 to i32
  store i32 %conv362, i32* @opts_Opt, align 4
  %258 = load i8*, i8** %optstring.addr, align 8
  %arrayidx363 = getelementptr inbounds i8, i8* %258, i64 0
  %259 = load i8, i8* %arrayidx363, align 1
  %conv364 = sext i8 %259 to i32
  %cmp365 = icmp eq i32 %conv364, 58
  br i1 %cmp365, label %if.then.367, label %if.else.368

if.then.367:                                      ; preds = %if.end.361
  store i8 58, i8* %c, align 1
  br label %if.end.369

if.else.368:                                      ; preds = %if.end.361
  store i8 63, i8* %c, align 1
  br label %if.end.369

if.end.369:                                       ; preds = %if.else.368, %if.then.367
  %260 = load i8, i8* %c, align 1
  %conv370 = sext i8 %260 to i32
  store i32 %conv370, i32* %retval
  br label %return

if.else.371:                                      ; preds = %if.else.352
  %261 = load i32, i32* @opts_Ind, align 4
  %inc372 = add nsw i32 %261, 1
  store i32 %inc372, i32* @opts_Ind, align 4
  %idxprom373 = sext i32 %261 to i64
  %262 = load i8**, i8*** %argv.addr, align 8
  %arrayidx374 = getelementptr inbounds i8*, i8** %262, i64 %idxprom373
  %263 = load i8*, i8** %arrayidx374, align 8
  store i8* %263, i8** @opts_Arg, align 8
  br label %if.end.375

if.end.375:                                       ; preds = %if.else.371
  br label %if.end.376

if.end.376:                                       ; preds = %if.end.375, %if.then.350
  %264 = load i8*, i8** @opts_Arg, align 8
  store i8* %264, i8** %nameend340, align 8
  store i8* %264, i8** @opts_NextChar, align 8
  br label %for.cond.377

for.cond.377:                                     ; preds = %for.inc.387, %if.end.376
  %265 = load i8*, i8** %nameend340, align 8
  %266 = load i8, i8* %265, align 1
  %conv378 = sext i8 %266 to i32
  %tobool379 = icmp ne i32 %conv378, 0
  br i1 %tobool379, label %land.rhs.380, label %land.end.384

land.rhs.380:                                     ; preds = %for.cond.377
  %267 = load i8*, i8** %nameend340, align 8
  %268 = load i8, i8* %267, align 1
  %conv381 = sext i8 %268 to i32
  %cmp382 = icmp ne i32 %conv381, 61
  br label %land.end.384

land.end.384:                                     ; preds = %land.rhs.380, %for.cond.377
  %269 = phi i1 [ false, %for.cond.377 ], [ %cmp382, %land.rhs.380 ]
  br i1 %269, label %for.body.386, label %for.end.389

for.body.386:                                     ; preds = %land.end.384
  br label %for.inc.387

for.inc.387:                                      ; preds = %for.body.386
  %270 = load i8*, i8** %nameend340, align 8
  %incdec.ptr388 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %incdec.ptr388, i8** %nameend340, align 8
  br label %for.cond.377

for.end.389:                                      ; preds = %land.end.384
  %271 = load %struct.OPTION*, %struct.OPTION** %longopts.addr, align 8
  store %struct.OPTION* %271, %struct.OPTION** %p341, align 8
  store i32 0, i32* %option_index346, align 4
  br label %for.cond.390

for.cond.390:                                     ; preds = %for.inc.419, %for.end.389
  %272 = load %struct.OPTION*, %struct.OPTION** %p341, align 8
  %name391 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %272, i32 0, i32 0
  %273 = load i8*, i8** %name391, align 8
  %tobool392 = icmp ne i8* %273, null
  br i1 %tobool392, label %for.body.393, label %for.end.422

for.body.393:                                     ; preds = %for.cond.390
  %274 = load %struct.OPTION*, %struct.OPTION** %p341, align 8
  %name394 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %274, i32 0, i32 0
  %275 = load i8*, i8** %name394, align 8
  %276 = load i8*, i8** @opts_NextChar, align 8
  %277 = load i8*, i8** %nameend340, align 8
  %278 = load i8*, i8** @opts_NextChar, align 8
  %sub.ptr.lhs.cast395 = ptrtoint i8* %277 to i64
  %sub.ptr.rhs.cast396 = ptrtoint i8* %278 to i64
  %sub.ptr.sub397 = sub i64 %sub.ptr.lhs.cast395, %sub.ptr.rhs.cast396
  %call398 = call i32 @strncmp(i8* %275, i8* %276, i64 %sub.ptr.sub397) #7
  %tobool399 = icmp ne i32 %call398, 0
  br i1 %tobool399, label %if.end.418, label %if.then.400

if.then.400:                                      ; preds = %for.body.393
  %279 = load i8*, i8** %nameend340, align 8
  %280 = load i8*, i8** @opts_NextChar, align 8
  %sub.ptr.lhs.cast401 = ptrtoint i8* %279 to i64
  %sub.ptr.rhs.cast402 = ptrtoint i8* %280 to i64
  %sub.ptr.sub403 = sub i64 %sub.ptr.lhs.cast401, %sub.ptr.rhs.cast402
  %conv404 = trunc i64 %sub.ptr.sub403 to i32
  %conv405 = zext i32 %conv404 to i64
  %281 = load %struct.OPTION*, %struct.OPTION** %p341, align 8
  %name406 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %281, i32 0, i32 0
  %282 = load i8*, i8** %name406, align 8
  %call407 = call i64 @strlen(i8* %282) #7
  %cmp408 = icmp eq i64 %conv405, %call407
  br i1 %cmp408, label %if.then.410, label %if.else.411

if.then.410:                                      ; preds = %if.then.400
  %283 = load %struct.OPTION*, %struct.OPTION** %p341, align 8
  store %struct.OPTION* %283, %struct.OPTION** %pfound342, align 8
  %284 = load i32, i32* %option_index346, align 4
  store i32 %284, i32* %indfound345, align 4
  store i32 1, i32* %exact343, align 4
  br label %for.end.422

if.else.411:                                      ; preds = %if.then.400
  %285 = load %struct.OPTION*, %struct.OPTION** %pfound342, align 8
  %cmp412 = icmp eq %struct.OPTION* %285, null
  br i1 %cmp412, label %if.then.414, label %if.else.415

if.then.414:                                      ; preds = %if.else.411
  %286 = load %struct.OPTION*, %struct.OPTION** %p341, align 8
  store %struct.OPTION* %286, %struct.OPTION** %pfound342, align 8
  %287 = load i32, i32* %option_index346, align 4
  store i32 %287, i32* %indfound345, align 4
  br label %if.end.416

if.else.415:                                      ; preds = %if.else.411
  store i32 1, i32* %ambig344, align 4
  br label %if.end.416

if.end.416:                                       ; preds = %if.else.415, %if.then.414
  br label %if.end.417

if.end.417:                                       ; preds = %if.end.416
  br label %if.end.418

if.end.418:                                       ; preds = %if.end.417, %for.body.393
  br label %for.inc.419

for.inc.419:                                      ; preds = %if.end.418
  %288 = load %struct.OPTION*, %struct.OPTION** %p341, align 8
  %incdec.ptr420 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %288, i32 1
  store %struct.OPTION* %incdec.ptr420, %struct.OPTION** %p341, align 8
  %289 = load i32, i32* %option_index346, align 4
  %inc421 = add nsw i32 %289, 1
  store i32 %inc421, i32* %option_index346, align 4
  br label %for.cond.390

for.end.422:                                      ; preds = %if.then.410, %for.cond.390
  %290 = load i32, i32* %ambig344, align 4
  %tobool423 = icmp ne i32 %290, 0
  br i1 %tobool423, label %land.lhs.true.424, label %if.end.437

land.lhs.true.424:                                ; preds = %for.end.422
  %291 = load i32, i32* %exact343, align 4
  %tobool425 = icmp ne i32 %291, 0
  br i1 %tobool425, label %if.end.437, label %if.then.426

if.then.426:                                      ; preds = %land.lhs.true.424
  %292 = load i32, i32* @opts_Err, align 4
  %tobool427 = icmp ne i32 %292, 0
  br i1 %tobool427, label %if.then.428, label %if.end.433

if.then.428:                                      ; preds = %if.then.426
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call429 = call i32 @fflush(%struct._IO_FILE* %293)
  %294 = load i8**, i8*** %argv.addr, align 8
  %arrayidx430 = getelementptr inbounds i8*, i8** %294, i64 0
  %295 = load i8*, i8** %arrayidx430, align 8
  %296 = load i32, i32* @opts_Ind, align 4
  %idxprom431 = sext i32 %296 to i64
  %297 = load i8**, i8*** %argv.addr, align 8
  %arrayidx432 = getelementptr inbounds i8*, i8** %297, i64 %idxprom431
  %298 = load i8*, i8** %arrayidx432, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i32 0, i32 0), i8* %295, i8* %298)
  call void @misc_Error()
  br label %if.end.433

if.end.433:                                       ; preds = %if.then.428, %if.then.426
  %299 = load i8*, i8** @opts_NextChar, align 8
  %call434 = call i64 @strlen(i8* %299) #7
  %300 = load i8*, i8** @opts_NextChar, align 8
  %add.ptr435 = getelementptr inbounds i8, i8* %300, i64 %call434
  store i8* %add.ptr435, i8** @opts_NextChar, align 8
  %301 = load i32, i32* @opts_Ind, align 4
  %inc436 = add nsw i32 %301, 1
  store i32 %inc436, i32* @opts_Ind, align 4
  store i32 63, i32* %retval
  br label %return

if.end.437:                                       ; preds = %land.lhs.true.424, %for.end.422
  %302 = load %struct.OPTION*, %struct.OPTION** %pfound342, align 8
  %cmp438 = icmp ne %struct.OPTION* %302, null
  br i1 %cmp438, label %if.then.440, label %if.end.500

if.then.440:                                      ; preds = %if.end.437
  %303 = load i32, i32* %indfound345, align 4
  store i32 %303, i32* %option_index346, align 4
  %304 = load i8*, i8** %nameend340, align 8
  %305 = load i8, i8* %304, align 1
  %tobool441 = icmp ne i8 %305, 0
  br i1 %tobool441, label %if.then.442, label %if.else.457

if.then.442:                                      ; preds = %if.then.440
  %306 = load %struct.OPTION*, %struct.OPTION** %pfound342, align 8
  %has_arg443 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %306, i32 0, i32 1
  %307 = load i32, i32* %has_arg443, align 4
  %tobool444 = icmp ne i32 %307, 0
  br i1 %tobool444, label %if.then.445, label %if.else.447

if.then.445:                                      ; preds = %if.then.442
  %308 = load i8*, i8** %nameend340, align 8
  %add.ptr446 = getelementptr inbounds i8, i8* %308, i64 1
  store i8* %add.ptr446, i8** @opts_Arg, align 8
  br label %if.end.456

if.else.447:                                      ; preds = %if.then.442
  %309 = load i32, i32* @opts_Err, align 4
  %tobool448 = icmp ne i32 %309, 0
  br i1 %tobool448, label %if.then.449, label %if.end.453

if.then.449:                                      ; preds = %if.else.447
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call450 = call i32 @fflush(%struct._IO_FILE* %310)
  %311 = load i8**, i8*** %argv.addr, align 8
  %arrayidx451 = getelementptr inbounds i8*, i8** %311, i64 0
  %312 = load i8*, i8** %arrayidx451, align 8
  %313 = load %struct.OPTION*, %struct.OPTION** %pfound342, align 8
  %name452 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %313, i32 0, i32 0
  %314 = load i8*, i8** %name452, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i32 0, i32 0), i8* %312, i8* %314)
  call void @misc_Error()
  br label %if.end.453

if.end.453:                                       ; preds = %if.then.449, %if.else.447
  %315 = load i8*, i8** @opts_NextChar, align 8
  %call454 = call i64 @strlen(i8* %315) #7
  %316 = load i8*, i8** @opts_NextChar, align 8
  %add.ptr455 = getelementptr inbounds i8, i8* %316, i64 %call454
  store i8* %add.ptr455, i8** @opts_NextChar, align 8
  store i32 63, i32* %retval
  br label %return

if.end.456:                                       ; preds = %if.then.445
  br label %if.end.486

if.else.457:                                      ; preds = %if.then.440
  %317 = load %struct.OPTION*, %struct.OPTION** %pfound342, align 8
  %has_arg458 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %317, i32 0, i32 1
  %318 = load i32, i32* %has_arg458, align 4
  %cmp459 = icmp eq i32 %318, 1
  br i1 %cmp459, label %if.then.461, label %if.end.485

if.then.461:                                      ; preds = %if.else.457
  %319 = load i32, i32* @opts_Ind, align 4
  %320 = load i32, i32* %argc.addr, align 4
  %cmp462 = icmp slt i32 %319, %320
  br i1 %cmp462, label %if.then.464, label %if.else.468

if.then.464:                                      ; preds = %if.then.461
  %321 = load i32, i32* @opts_Ind, align 4
  %inc465 = add nsw i32 %321, 1
  store i32 %inc465, i32* @opts_Ind, align 4
  %idxprom466 = sext i32 %321 to i64
  %322 = load i8**, i8*** %argv.addr, align 8
  %arrayidx467 = getelementptr inbounds i8*, i8** %322, i64 %idxprom466
  %323 = load i8*, i8** %arrayidx467, align 8
  store i8* %323, i8** @opts_Arg, align 8
  br label %if.end.484

if.else.468:                                      ; preds = %if.then.461
  %324 = load i32, i32* @opts_Err, align 4
  %tobool469 = icmp ne i32 %324, 0
  br i1 %tobool469, label %if.then.470, label %if.end.476

if.then.470:                                      ; preds = %if.else.468
  %325 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call471 = call i32 @fflush(%struct._IO_FILE* %325)
  %326 = load i8**, i8*** %argv.addr, align 8
  %arrayidx472 = getelementptr inbounds i8*, i8** %326, i64 0
  %327 = load i8*, i8** %arrayidx472, align 8
  %328 = load i32, i32* @opts_Ind, align 4
  %sub473 = sub nsw i32 %328, 1
  %idxprom474 = sext i32 %sub473 to i64
  %329 = load i8**, i8*** %argv.addr, align 8
  %arrayidx475 = getelementptr inbounds i8*, i8** %329, i64 %idxprom474
  %330 = load i8*, i8** %arrayidx475, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i32 0, i32 0), i8* %327, i8* %330)
  call void @misc_Error()
  br label %if.end.476

if.end.476:                                       ; preds = %if.then.470, %if.else.468
  %331 = load i8*, i8** @opts_NextChar, align 8
  %call477 = call i64 @strlen(i8* %331) #7
  %332 = load i8*, i8** @opts_NextChar, align 8
  %add.ptr478 = getelementptr inbounds i8, i8* %332, i64 %call477
  store i8* %add.ptr478, i8** @opts_NextChar, align 8
  %333 = load i8*, i8** %optstring.addr, align 8
  %arrayidx479 = getelementptr inbounds i8, i8* %333, i64 0
  %334 = load i8, i8* %arrayidx479, align 1
  %conv480 = sext i8 %334 to i32
  %cmp481 = icmp eq i32 %conv480, 58
  %cond483 = select i1 %cmp481, i32 58, i32 63
  store i32 %cond483, i32* %retval
  br label %return

if.end.484:                                       ; preds = %if.then.464
  br label %if.end.485

if.end.485:                                       ; preds = %if.end.484, %if.else.457
  br label %if.end.486

if.end.486:                                       ; preds = %if.end.485, %if.end.456
  %335 = load i8*, i8** @opts_NextChar, align 8
  %call487 = call i64 @strlen(i8* %335) #7
  %336 = load i8*, i8** @opts_NextChar, align 8
  %add.ptr488 = getelementptr inbounds i8, i8* %336, i64 %call487
  store i8* %add.ptr488, i8** @opts_NextChar, align 8
  %337 = load i32*, i32** %longind.addr, align 8
  %cmp489 = icmp ne i32* %337, null
  br i1 %cmp489, label %if.then.491, label %if.end.492

if.then.491:                                      ; preds = %if.end.486
  %338 = load i32, i32* %option_index346, align 4
  %339 = load i32*, i32** %longind.addr, align 8
  store i32 %338, i32* %339, align 4
  br label %if.end.492

if.end.492:                                       ; preds = %if.then.491, %if.end.486
  %340 = load %struct.OPTION*, %struct.OPTION** %pfound342, align 8
  %flag493 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %340, i32 0, i32 2
  %341 = load i32*, i32** %flag493, align 8
  %tobool494 = icmp ne i32* %341, null
  br i1 %tobool494, label %if.then.495, label %if.end.498

if.then.495:                                      ; preds = %if.end.492
  %342 = load %struct.OPTION*, %struct.OPTION** %pfound342, align 8
  %val496 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %342, i32 0, i32 3
  %343 = load i32, i32* %val496, align 4
  %344 = load %struct.OPTION*, %struct.OPTION** %pfound342, align 8
  %flag497 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %344, i32 0, i32 2
  %345 = load i32*, i32** %flag497, align 8
  store i32 %343, i32* %345, align 4
  store i32 0, i32* %retval
  br label %return

if.end.498:                                       ; preds = %if.end.492
  %346 = load %struct.OPTION*, %struct.OPTION** %pfound342, align 8
  %val499 = getelementptr inbounds %struct.OPTION, %struct.OPTION* %346, i32 0, i32 3
  %347 = load i32, i32* %val499, align 4
  store i32 %347, i32* %retval
  br label %return

if.end.500:                                       ; preds = %if.end.437
  store i8* null, i8** @opts_NextChar, align 8
  store i32 87, i32* %retval
  br label %return

if.end.501:                                       ; preds = %land.lhs.true.334, %if.end.329
  %348 = load i8*, i8** %temp, align 8
  %arrayidx502 = getelementptr inbounds i8, i8* %348, i64 1
  %349 = load i8, i8* %arrayidx502, align 1
  %conv503 = sext i8 %349 to i32
  %cmp504 = icmp eq i32 %conv503, 58
  br i1 %cmp504, label %if.then.506, label %if.end.550

if.then.506:                                      ; preds = %if.end.501
  %350 = load i8*, i8** %temp, align 8
  %arrayidx507 = getelementptr inbounds i8, i8* %350, i64 2
  %351 = load i8, i8* %arrayidx507, align 1
  %conv508 = sext i8 %351 to i32
  %cmp509 = icmp eq i32 %conv508, 58
  br i1 %cmp509, label %if.then.511, label %if.else.519

if.then.511:                                      ; preds = %if.then.506
  %352 = load i8*, i8** @opts_NextChar, align 8
  %353 = load i8, i8* %352, align 1
  %conv512 = sext i8 %353 to i32
  %cmp513 = icmp ne i32 %conv512, 0
  br i1 %cmp513, label %if.then.515, label %if.else.517

if.then.515:                                      ; preds = %if.then.511
  %354 = load i8*, i8** @opts_NextChar, align 8
  store i8* %354, i8** @opts_Arg, align 8
  %355 = load i32, i32* @opts_Ind, align 4
  %inc516 = add nsw i32 %355, 1
  store i32 %inc516, i32* @opts_Ind, align 4
  br label %if.end.518

if.else.517:                                      ; preds = %if.then.511
  store i8* null, i8** @opts_Arg, align 8
  br label %if.end.518

if.end.518:                                       ; preds = %if.else.517, %if.then.515
  store i8* null, i8** @opts_NextChar, align 8
  br label %if.end.549

if.else.519:                                      ; preds = %if.then.506
  %356 = load i8*, i8** @opts_NextChar, align 8
  %357 = load i8, i8* %356, align 1
  %conv520 = sext i8 %357 to i32
  %cmp521 = icmp ne i32 %conv520, 0
  br i1 %cmp521, label %if.then.523, label %if.else.525

if.then.523:                                      ; preds = %if.else.519
  %358 = load i8*, i8** @opts_NextChar, align 8
  store i8* %358, i8** @opts_Arg, align 8
  %359 = load i32, i32* @opts_Ind, align 4
  %inc524 = add nsw i32 %359, 1
  store i32 %inc524, i32* @opts_Ind, align 4
  br label %if.end.548

if.else.525:                                      ; preds = %if.else.519
  %360 = load i32, i32* @opts_Ind, align 4
  %361 = load i32, i32* %argc.addr, align 4
  %cmp526 = icmp eq i32 %360, %361
  br i1 %cmp526, label %if.then.528, label %if.else.543

if.then.528:                                      ; preds = %if.else.525
  %362 = load i32, i32* @opts_Err, align 4
  %tobool529 = icmp ne i32 %362, 0
  br i1 %tobool529, label %if.then.530, label %if.end.534

if.then.530:                                      ; preds = %if.then.528
  %363 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call531 = call i32 @fflush(%struct._IO_FILE* %363)
  %364 = load i8**, i8*** %argv.addr, align 8
  %arrayidx532 = getelementptr inbounds i8*, i8** %364, i64 0
  %365 = load i8*, i8** %arrayidx532, align 8
  %366 = load i8, i8* %c, align 1
  %conv533 = sext i8 %366 to i32
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i32 0, i32 0), i8* %365, i32 %conv533)
  call void @misc_Error()
  br label %if.end.534

if.end.534:                                       ; preds = %if.then.530, %if.then.528
  %367 = load i8, i8* %c, align 1
  %conv535 = sext i8 %367 to i32
  store i32 %conv535, i32* @opts_Opt, align 4
  %368 = load i8*, i8** %optstring.addr, align 8
  %arrayidx536 = getelementptr inbounds i8, i8* %368, i64 0
  %369 = load i8, i8* %arrayidx536, align 1
  %conv537 = sext i8 %369 to i32
  %cmp538 = icmp eq i32 %conv537, 58
  br i1 %cmp538, label %if.then.540, label %if.else.541

if.then.540:                                      ; preds = %if.end.534
  store i8 58, i8* %c, align 1
  br label %if.end.542

if.else.541:                                      ; preds = %if.end.534
  store i8 63, i8* %c, align 1
  br label %if.end.542

if.end.542:                                       ; preds = %if.else.541, %if.then.540
  br label %if.end.547

if.else.543:                                      ; preds = %if.else.525
  %370 = load i32, i32* @opts_Ind, align 4
  %inc544 = add nsw i32 %370, 1
  store i32 %inc544, i32* @opts_Ind, align 4
  %idxprom545 = sext i32 %370 to i64
  %371 = load i8**, i8*** %argv.addr, align 8
  %arrayidx546 = getelementptr inbounds i8*, i8** %371, i64 %idxprom545
  %372 = load i8*, i8** %arrayidx546, align 8
  store i8* %372, i8** @opts_Arg, align 8
  br label %if.end.547

if.end.547:                                       ; preds = %if.else.543, %if.end.542
  br label %if.end.548

if.end.548:                                       ; preds = %if.end.547, %if.then.523
  store i8* null, i8** @opts_NextChar, align 8
  br label %if.end.549

if.end.549:                                       ; preds = %if.end.548, %if.end.518
  br label %if.end.550

if.end.550:                                       ; preds = %if.end.549, %if.end.501
  %373 = load i8, i8* %c, align 1
  %conv551 = sext i8 %373 to i32
  store i32 %conv551, i32* %retval
  br label %return

return:                                           ; preds = %if.end.550, %if.end.500, %if.end.498, %if.then.495, %if.end.476, %if.end.453, %if.end.433, %if.end.369, %if.end.327, %if.end.295, %if.end.259, %if.then.256, %if.end.238, %if.end.215, %if.end.178, %if.end.87, %if.then.86, %if.end.68
  %374 = load i32, i32* %retval
  ret i32 %374
}

; Function Attrs: nounwind uwtable
define internal i8* @opts_GetOptInitialize(i32 %argc, i8** %argv, i8* %optstring) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %optstring.addr = alloca i8*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* %optstring, i8** %optstring.addr, align 8
  store i32 1, i32* @opts_Ind, align 4
  store i32 1, i32* @opts_LastNonOpt, align 4
  store i32 1, i32* @opts_FirstNonOpt, align 4
  store i8* null, i8** @opts_NextChar, align 8
  %call = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0)) #8
  store i8* %call, i8** @opts_PosixlyCorrect, align 8
  %0 = load i8*, i8** %optstring.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, i32* @opts_Ordering, align 4
  %2 = load i8*, i8** %optstring.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %optstring.addr, align 8
  br label %if.end.14

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %optstring.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 43
  br i1 %cmp4, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* @opts_Ordering, align 4
  %5 = load i8*, i8** %optstring.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr7, i8** %optstring.addr, align 8
  br label %if.end.13

if.else.8:                                        ; preds = %if.else
  %6 = load i8*, i8** @opts_PosixlyCorrect, align 8
  %cmp9 = icmp ne i8* %6, null
  br i1 %cmp9, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.8
  store i32 0, i32* @opts_Ordering, align 4
  br label %if.end

if.else.12:                                       ; preds = %if.else.8
  store i32 1, i32* @opts_Ordering, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.11
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.6
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then
  store i32 0, i32* @opts_NonOptionFlagslen, align 4
  %7 = load i8*, i8** %optstring.addr, align 8
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define internal void @opts_Exchange(i8** %argv) #0 {
entry:
  %argv.addr = alloca i8**, align 8
  %bottom = alloca i32, align 4
  %middle = alloca i32, align 4
  %top = alloca i32, align 4
  %tem = alloca i8*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %len20 = alloca i32, align 4
  %i22 = alloca i32, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* @opts_FirstNonOpt, align 4
  store i32 %0, i32* %bottom, align 4
  %1 = load i32, i32* @opts_LastNonOpt, align 4
  store i32 %1, i32* %middle, align 4
  %2 = load i32, i32* @opts_Ind, align 4
  store i32 %2, i32* %top, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32, i32* %top, align 4
  %4 = load i32, i32* %middle, align 4
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, i32* %middle, align 4
  %6 = load i32, i32* %bottom, align 4
  %cmp1 = icmp sgt i32 %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32, i32* %top, align 4
  %9 = load i32, i32* %middle, align 4
  %sub = sub nsw i32 %8, %9
  %10 = load i32, i32* %middle, align 4
  %11 = load i32, i32* %bottom, align 4
  %sub2 = sub nsw i32 %10, %11
  %cmp3 = icmp sgt i32 %sub, %sub2
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %12 = load i32, i32* %middle, align 4
  %13 = load i32, i32* %bottom, align 4
  %sub4 = sub nsw i32 %12, %13
  store i32 %sub4, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %len, align 4
  %cmp5 = icmp slt i32 %14, %15
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %bottom, align 4
  %17 = load i32, i32* %i, align 4
  %add = add nsw i32 %16, %17
  %idxprom = sext i32 %add to i64
  %18 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %18, i64 %idxprom
  %19 = load i8*, i8** %arrayidx, align 8
  store i8* %19, i8** %tem, align 8
  %20 = load i32, i32* %top, align 4
  %21 = load i32, i32* %middle, align 4
  %22 = load i32, i32* %bottom, align 4
  %sub6 = sub nsw i32 %21, %22
  %sub7 = sub nsw i32 %20, %sub6
  %23 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %sub7, %23
  %idxprom9 = sext i32 %add8 to i64
  %24 = load i8**, i8*** %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %24, i64 %idxprom9
  %25 = load i8*, i8** %arrayidx10, align 8
  %26 = load i32, i32* %bottom, align 4
  %27 = load i32, i32* %i, align 4
  %add11 = add nsw i32 %26, %27
  %idxprom12 = sext i32 %add11 to i64
  %28 = load i8**, i8*** %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %28, i64 %idxprom12
  store i8* %25, i8** %arrayidx13, align 8
  %29 = load i8*, i8** %tem, align 8
  %30 = load i32, i32* %top, align 4
  %31 = load i32, i32* %middle, align 4
  %32 = load i32, i32* %bottom, align 4
  %sub14 = sub nsw i32 %31, %32
  %sub15 = sub nsw i32 %30, %sub14
  %33 = load i32, i32* %i, align 4
  %add16 = add nsw i32 %sub15, %33
  %idxprom17 = sext i32 %add16 to i64
  %34 = load i8**, i8*** %argv.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %34, i64 %idxprom17
  store i8* %29, i8** %arrayidx18, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i32, i32* %len, align 4
  %37 = load i32, i32* %top, align 4
  %sub19 = sub nsw i32 %37, %36
  store i32 %sub19, i32* %top, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %38 = load i32, i32* %top, align 4
  %39 = load i32, i32* %middle, align 4
  %sub21 = sub nsw i32 %38, %39
  store i32 %sub21, i32* %len20, align 4
  store i32 0, i32* %i22, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.38, %if.else
  %40 = load i32, i32* %i22, align 4
  %41 = load i32, i32* %len20, align 4
  %cmp24 = icmp slt i32 %40, %41
  br i1 %cmp24, label %for.body.25, label %for.end.40

for.body.25:                                      ; preds = %for.cond.23
  %42 = load i32, i32* %bottom, align 4
  %43 = load i32, i32* %i22, align 4
  %add26 = add nsw i32 %42, %43
  %idxprom27 = sext i32 %add26 to i64
  %44 = load i8**, i8*** %argv.addr, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %44, i64 %idxprom27
  %45 = load i8*, i8** %arrayidx28, align 8
  store i8* %45, i8** %tem, align 8
  %46 = load i32, i32* %middle, align 4
  %47 = load i32, i32* %i22, align 4
  %add29 = add nsw i32 %46, %47
  %idxprom30 = sext i32 %add29 to i64
  %48 = load i8**, i8*** %argv.addr, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %48, i64 %idxprom30
  %49 = load i8*, i8** %arrayidx31, align 8
  %50 = load i32, i32* %bottom, align 4
  %51 = load i32, i32* %i22, align 4
  %add32 = add nsw i32 %50, %51
  %idxprom33 = sext i32 %add32 to i64
  %52 = load i8**, i8*** %argv.addr, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %52, i64 %idxprom33
  store i8* %49, i8** %arrayidx34, align 8
  %53 = load i8*, i8** %tem, align 8
  %54 = load i32, i32* %middle, align 4
  %55 = load i32, i32* %i22, align 4
  %add35 = add nsw i32 %54, %55
  %idxprom36 = sext i32 %add35 to i64
  %56 = load i8**, i8*** %argv.addr, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %56, i64 %idxprom36
  store i8* %53, i8** %arrayidx37, align 8
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.25
  %57 = load i32, i32* %i22, align 4
  %inc39 = add nsw i32 %57, 1
  store i32 %inc39, i32* %i22, align 4
  br label %for.cond.23

for.end.40:                                       ; preds = %for.cond.23
  %58 = load i32, i32* %len20, align 4
  %59 = load i32, i32* %bottom, align 4
  %add41 = add nsw i32 %59, %58
  store i32 %add41, i32* %bottom, align 4
  br label %if.end

if.end:                                           ; preds = %for.end.40, %for.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %60 = load i32, i32* @opts_Ind, align 4
  %61 = load i32, i32* @opts_LastNonOpt, align 4
  %sub42 = sub nsw i32 %60, %61
  %62 = load i32, i32* @opts_FirstNonOpt, align 4
  %add43 = add nsw i32 %62, %sub42
  store i32 %add43, i32* @opts_FirstNonOpt, align 4
  %63 = load i32, i32* @opts_Ind, align 4
  store i32 %63, i32* @opts_LastNonOpt, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @getenv(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
