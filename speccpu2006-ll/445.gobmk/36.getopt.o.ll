; ModuleID = 'utils/getopt.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gg_option = type { i8*, i32, i32*, i32 }

@gg_optind = global i32 1, align 4
@gg_opterr = global i32 1, align 4
@gg_optopt = global i32 63, align 4
@gg_optarg = common global i8* null, align 8
@__getopt_initialized = common global i32 0, align 4
@nextchar = internal global i8* null, align 8
@last_nonopt = internal global i32 0, align 4
@first_nonopt = internal global i32 0, align 4
@ordering = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: option `%s' is ambiguous\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: option `--%s' doesn't allow an argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"%s: option `%c%s' doesn't allow an argument\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: option `%s' requires an argument\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: unrecognized option `--%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%s: unrecognized option `%c%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@posixly_correct = internal global i8* null, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"%s: illegal option -- %c\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"%s: invalid option -- %c\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"%s: option requires an argument -- %c\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"%s: option `-W %s' is ambiguous\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"%s: option `-W %s' doesn't allow an argument\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1

; Function Attrs: nounwind uwtable
define i32 @getopt_internal(i32 %argc, i8** %argv, i8* %optstring, %struct.gg_option* %longopts, i32* %longind, i32 %long_only) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %optstring.addr = alloca i8*, align 8
  %longopts.addr = alloca %struct.gg_option*, align 8
  %longind.addr = alloca i32*, align 8
  %long_only.addr = alloca i32, align 4
  %nameend = alloca i8*, align 8
  %p = alloca %struct.gg_option*, align 8
  %pfound = alloca %struct.gg_option*, align 8
  %exact = alloca i32, align 4
  %ambig = alloca i32, align 4
  %indfound = alloca i32, align 4
  %option_index = alloca i32, align 4
  %c = alloca i8, align 1
  %temp = alloca i8*, align 8
  %nameend343 = alloca i8*, align 8
  %p344 = alloca %struct.gg_option*, align 8
  %pfound345 = alloca %struct.gg_option*, align 8
  %exact346 = alloca i32, align 4
  %ambig347 = alloca i32, align 4
  %indfound348 = alloca i32, align 4
  %option_index349 = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* %optstring, i8** %optstring.addr, align 8
  store %struct.gg_option* %longopts, %struct.gg_option** %longopts.addr, align 8
  store i32* %longind, i32** %longind.addr, align 8
  store i32 %long_only, i32* %long_only.addr, align 4
  store i8* null, i8** @gg_optarg, align 8
  %0 = load i32, i32* @gg_optind, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @__getopt_initialized, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.3, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* @gg_optind, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 1, i32* @gg_optind, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %3 = load i32, i32* %argc.addr, align 4
  %4 = load i8**, i8*** %argv.addr, align 8
  %5 = load i8*, i8** %optstring.addr, align 8
  %call = call i8* @_getopt_initialize(i32 %3, i8** %4, i8* %5)
  store i8* %call, i8** %optstring.addr, align 8
  store i32 1, i32* @__getopt_initialized, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %lor.lhs.false
  %6 = load i8*, i8** @nextchar, align 8
  %cmp4 = icmp eq i8* %6, null
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.end.3
  %7 = load i8*, i8** @nextchar, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.then.8, label %if.end.108

if.then.8:                                        ; preds = %lor.lhs.false.5, %if.end.3
  %9 = load i32, i32* @last_nonopt, align 4
  %10 = load i32, i32* @gg_optind, align 4
  %cmp9 = icmp sgt i32 %9, %10
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  %11 = load i32, i32* @gg_optind, align 4
  store i32 %11, i32* @last_nonopt, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.8
  %12 = load i32, i32* @first_nonopt, align 4
  %13 = load i32, i32* @gg_optind, align 4
  %cmp13 = icmp sgt i32 %12, %13
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  %14 = load i32, i32* @gg_optind, align 4
  store i32 %14, i32* @first_nonopt, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.12
  %15 = load i32, i32* @ordering, align 4
  %cmp17 = icmp eq i32 %15, 1
  br i1 %cmp17, label %if.then.19, label %if.end.42

if.then.19:                                       ; preds = %if.end.16
  %16 = load i32, i32* @first_nonopt, align 4
  %17 = load i32, i32* @last_nonopt, align 4
  %cmp20 = icmp ne i32 %16, %17
  br i1 %cmp20, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.19
  %18 = load i32, i32* @last_nonopt, align 4
  %19 = load i32, i32* @gg_optind, align 4
  %cmp22 = icmp ne i32 %18, %19
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %land.lhs.true
  %20 = load i8**, i8*** %argv.addr, align 8
  call void @exchange(i8** %20)
  br label %if.end.29

if.else:                                          ; preds = %land.lhs.true, %if.then.19
  %21 = load i32, i32* @last_nonopt, align 4
  %22 = load i32, i32* @gg_optind, align 4
  %cmp25 = icmp ne i32 %21, %22
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else
  %23 = load i32, i32* @gg_optind, align 4
  store i32 %23, i32* @first_nonopt, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.24
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.29
  %24 = load i32, i32* @gg_optind, align 4
  %25 = load i32, i32* %argc.addr, align 4
  %cmp30 = icmp slt i32 %24, %25
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %26 = load i32, i32* @gg_optind, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %27, i64 %idxprom
  %28 = load i8*, i8** %arrayidx, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %29 to i32
  %cmp34 = icmp ne i32 %conv33, 45
  br i1 %cmp34, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %30 = load i32, i32* @gg_optind, align 4
  %idxprom36 = sext i32 %30 to i64
  %31 = load i8**, i8*** %argv.addr, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %31, i64 %idxprom36
  %32 = load i8*, i8** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %33 to i32
  %cmp40 = icmp eq i32 %conv39, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %34 = phi i1 [ true, %land.rhs ], [ %cmp40, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %35 = phi i1 [ false, %while.cond ], [ %34, %lor.end ]
  br i1 %35, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %36 = load i32, i32* @gg_optind, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* @gg_optind, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %37 = load i32, i32* @gg_optind, align 4
  store i32 %37, i32* @last_nonopt, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %while.end, %if.end.16
  %38 = load i32, i32* @gg_optind, align 4
  %39 = load i32, i32* %argc.addr, align 4
  %cmp43 = icmp ne i32 %38, %39
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.64

land.lhs.true.45:                                 ; preds = %if.end.42
  %40 = load i32, i32* @gg_optind, align 4
  %idxprom46 = sext i32 %40 to i64
  %41 = load i8**, i8*** %argv.addr, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %41, i64 %idxprom46
  %42 = load i8*, i8** %arrayidx47, align 8
  %call48 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #4
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.end.64, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true.45
  %43 = load i32, i32* @gg_optind, align 4
  %inc51 = add nsw i32 %43, 1
  store i32 %inc51, i32* @gg_optind, align 4
  %44 = load i32, i32* @first_nonopt, align 4
  %45 = load i32, i32* @last_nonopt, align 4
  %cmp52 = icmp ne i32 %44, %45
  br i1 %cmp52, label %land.lhs.true.54, label %if.else.58

land.lhs.true.54:                                 ; preds = %if.then.50
  %46 = load i32, i32* @last_nonopt, align 4
  %47 = load i32, i32* @gg_optind, align 4
  %cmp55 = icmp ne i32 %46, %47
  br i1 %cmp55, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.54
  %48 = load i8**, i8*** %argv.addr, align 8
  call void @exchange(i8** %48)
  br label %if.end.63

if.else.58:                                       ; preds = %land.lhs.true.54, %if.then.50
  %49 = load i32, i32* @first_nonopt, align 4
  %50 = load i32, i32* @last_nonopt, align 4
  %cmp59 = icmp eq i32 %49, %50
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.else.58
  %51 = load i32, i32* @gg_optind, align 4
  store i32 %51, i32* @first_nonopt, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.else.58
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.57
  %52 = load i32, i32* %argc.addr, align 4
  store i32 %52, i32* @last_nonopt, align 4
  %53 = load i32, i32* %argc.addr, align 4
  store i32 %53, i32* @gg_optind, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %land.lhs.true.45, %if.end.42
  %54 = load i32, i32* @gg_optind, align 4
  %55 = load i32, i32* %argc.addr, align 4
  %cmp65 = icmp eq i32 %54, %55
  br i1 %cmp65, label %if.then.67, label %if.end.72

if.then.67:                                       ; preds = %if.end.64
  %56 = load i32, i32* @first_nonopt, align 4
  %57 = load i32, i32* @last_nonopt, align 4
  %cmp68 = icmp ne i32 %56, %57
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.then.67
  %58 = load i32, i32* @first_nonopt, align 4
  store i32 %58, i32* @gg_optind, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.then.67
  store i32 -1, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.end.64
  %59 = load i32, i32* @gg_optind, align 4
  %idxprom73 = sext i32 %59 to i64
  %60 = load i8**, i8*** %argv.addr, align 8
  %arrayidx74 = getelementptr inbounds i8*, i8** %60, i64 %idxprom73
  %61 = load i8*, i8** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %61, i64 0
  %62 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %62 to i32
  %cmp77 = icmp ne i32 %conv76, 45
  br i1 %cmp77, label %if.then.86, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %if.end.72
  %63 = load i32, i32* @gg_optind, align 4
  %idxprom80 = sext i32 %63 to i64
  %64 = load i8**, i8*** %argv.addr, align 8
  %arrayidx81 = getelementptr inbounds i8*, i8** %64, i64 %idxprom80
  %65 = load i8*, i8** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %65, i64 1
  %66 = load i8, i8* %arrayidx82, align 1
  %conv83 = sext i8 %66 to i32
  %cmp84 = icmp eq i32 %conv83, 0
  br i1 %cmp84, label %if.then.86, label %if.end.94

if.then.86:                                       ; preds = %lor.lhs.false.79, %if.end.72
  %67 = load i32, i32* @ordering, align 4
  %cmp87 = icmp eq i32 %67, 0
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.then.86
  store i32 -1, i32* %retval
  br label %return

if.end.90:                                        ; preds = %if.then.86
  %68 = load i32, i32* @gg_optind, align 4
  %inc91 = add nsw i32 %68, 1
  store i32 %inc91, i32* @gg_optind, align 4
  %idxprom92 = sext i32 %68 to i64
  %69 = load i8**, i8*** %argv.addr, align 8
  %arrayidx93 = getelementptr inbounds i8*, i8** %69, i64 %idxprom92
  %70 = load i8*, i8** %arrayidx93, align 8
  store i8* %70, i8** @gg_optarg, align 8
  store i32 1, i32* %retval
  br label %return

if.end.94:                                        ; preds = %lor.lhs.false.79
  %71 = load i32, i32* @gg_optind, align 4
  %idxprom95 = sext i32 %71 to i64
  %72 = load i8**, i8*** %argv.addr, align 8
  %arrayidx96 = getelementptr inbounds i8*, i8** %72, i64 %idxprom95
  %73 = load i8*, i8** %arrayidx96, align 8
  %add.ptr = getelementptr inbounds i8, i8* %73, i64 1
  %74 = load %struct.gg_option*, %struct.gg_option** %longopts.addr, align 8
  %cmp97 = icmp ne %struct.gg_option* %74, null
  br i1 %cmp97, label %land.rhs.99, label %land.end.106

land.rhs.99:                                      ; preds = %if.end.94
  %75 = load i32, i32* @gg_optind, align 4
  %idxprom100 = sext i32 %75 to i64
  %76 = load i8**, i8*** %argv.addr, align 8
  %arrayidx101 = getelementptr inbounds i8*, i8** %76, i64 %idxprom100
  %77 = load i8*, i8** %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %77, i64 1
  %78 = load i8, i8* %arrayidx102, align 1
  %conv103 = sext i8 %78 to i32
  %cmp104 = icmp eq i32 %conv103, 45
  br label %land.end.106

land.end.106:                                     ; preds = %land.rhs.99, %if.end.94
  %79 = phi i1 [ false, %if.end.94 ], [ %cmp104, %land.rhs.99 ]
  %land.ext = zext i1 %79 to i32
  %idx.ext = sext i32 %land.ext to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  store i8* %add.ptr107, i8** @nextchar, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %land.end.106, %lor.lhs.false.5
  %80 = load %struct.gg_option*, %struct.gg_option** %longopts.addr, align 8
  %cmp109 = icmp ne %struct.gg_option* %80, null
  br i1 %cmp109, label %land.lhs.true.111, label %if.end.301

land.lhs.true.111:                                ; preds = %if.end.108
  %81 = load i32, i32* @gg_optind, align 4
  %idxprom112 = sext i32 %81 to i64
  %82 = load i8**, i8*** %argv.addr, align 8
  %arrayidx113 = getelementptr inbounds i8*, i8** %82, i64 %idxprom112
  %83 = load i8*, i8** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %83, i64 1
  %84 = load i8, i8* %arrayidx114, align 1
  %conv115 = sext i8 %84 to i32
  %cmp116 = icmp eq i32 %conv115, 45
  br i1 %cmp116, label %if.then.133, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %land.lhs.true.111
  %85 = load i32, i32* %long_only.addr, align 4
  %tobool119 = icmp ne i32 %85, 0
  br i1 %tobool119, label %land.lhs.true.120, label %if.end.301

land.lhs.true.120:                                ; preds = %lor.lhs.false.118
  %86 = load i32, i32* @gg_optind, align 4
  %idxprom121 = sext i32 %86 to i64
  %87 = load i8**, i8*** %argv.addr, align 8
  %arrayidx122 = getelementptr inbounds i8*, i8** %87, i64 %idxprom121
  %88 = load i8*, i8** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %88, i64 2
  %89 = load i8, i8* %arrayidx123, align 1
  %conv124 = sext i8 %89 to i32
  %tobool125 = icmp ne i32 %conv124, 0
  br i1 %tobool125, label %if.then.133, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %land.lhs.true.120
  %90 = load i8*, i8** %optstring.addr, align 8
  %91 = load i32, i32* @gg_optind, align 4
  %idxprom127 = sext i32 %91 to i64
  %92 = load i8**, i8*** %argv.addr, align 8
  %arrayidx128 = getelementptr inbounds i8*, i8** %92, i64 %idxprom127
  %93 = load i8*, i8** %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %93, i64 1
  %94 = load i8, i8* %arrayidx129, align 1
  %conv130 = sext i8 %94 to i32
  %call131 = call i8* @strchr(i8* %90, i32 %conv130) #4
  %tobool132 = icmp ne i8* %call131, null
  br i1 %tobool132, label %if.end.301, label %if.then.133

if.then.133:                                      ; preds = %lor.lhs.false.126, %land.lhs.true.120, %land.lhs.true.111
  store %struct.gg_option* null, %struct.gg_option** %pfound, align 8
  store i32 0, i32* %exact, align 4
  store i32 0, i32* %ambig, align 4
  store i32 -1, i32* %indfound, align 4
  %95 = load i8*, i8** @nextchar, align 8
  store i8* %95, i8** %nameend, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.133
  %96 = load i8*, i8** %nameend, align 8
  %97 = load i8, i8* %96, align 1
  %conv134 = sext i8 %97 to i32
  %tobool135 = icmp ne i32 %conv134, 0
  br i1 %tobool135, label %land.rhs.136, label %land.end.140

land.rhs.136:                                     ; preds = %for.cond
  %98 = load i8*, i8** %nameend, align 8
  %99 = load i8, i8* %98, align 1
  %conv137 = sext i8 %99 to i32
  %cmp138 = icmp ne i32 %conv137, 61
  br label %land.end.140

land.end.140:                                     ; preds = %land.rhs.136, %for.cond
  %100 = phi i1 [ false, %for.cond ], [ %cmp138, %land.rhs.136 ]
  br i1 %100, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.140
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %101 = load i8*, i8** %nameend, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr, i8** %nameend, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end.140
  %102 = load %struct.gg_option*, %struct.gg_option** %longopts.addr, align 8
  store %struct.gg_option* %102, %struct.gg_option** %p, align 8
  store i32 0, i32* %option_index, align 4
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.167, %for.end
  %103 = load %struct.gg_option*, %struct.gg_option** %p, align 8
  %name = getelementptr inbounds %struct.gg_option, %struct.gg_option* %103, i32 0, i32 0
  %104 = load i8*, i8** %name, align 8
  %tobool143 = icmp ne i8* %104, null
  br i1 %tobool143, label %for.body.144, label %for.end.170

for.body.144:                                     ; preds = %for.cond.142
  %105 = load %struct.gg_option*, %struct.gg_option** %p, align 8
  %name145 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %105, i32 0, i32 0
  %106 = load i8*, i8** %name145, align 8
  %107 = load i8*, i8** @nextchar, align 8
  %108 = load i8*, i8** %nameend, align 8
  %109 = load i8*, i8** @nextchar, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %108 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %109 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call146 = call i32 @strncmp(i8* %106, i8* %107, i64 %sub.ptr.sub) #4
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %if.end.166, label %if.then.148

if.then.148:                                      ; preds = %for.body.144
  %110 = load i8*, i8** %nameend, align 8
  %111 = load i8*, i8** @nextchar, align 8
  %sub.ptr.lhs.cast149 = ptrtoint i8* %110 to i64
  %sub.ptr.rhs.cast150 = ptrtoint i8* %111 to i64
  %sub.ptr.sub151 = sub i64 %sub.ptr.lhs.cast149, %sub.ptr.rhs.cast150
  %conv152 = trunc i64 %sub.ptr.sub151 to i32
  %112 = load %struct.gg_option*, %struct.gg_option** %p, align 8
  %name153 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %112, i32 0, i32 0
  %113 = load i8*, i8** %name153, align 8
  %call154 = call i64 @strlen(i8* %113) #4
  %conv155 = trunc i64 %call154 to i32
  %cmp156 = icmp eq i32 %conv152, %conv155
  br i1 %cmp156, label %if.then.158, label %if.else.159

if.then.158:                                      ; preds = %if.then.148
  %114 = load %struct.gg_option*, %struct.gg_option** %p, align 8
  store %struct.gg_option* %114, %struct.gg_option** %pfound, align 8
  %115 = load i32, i32* %option_index, align 4
  store i32 %115, i32* %indfound, align 4
  store i32 1, i32* %exact, align 4
  br label %for.end.170

if.else.159:                                      ; preds = %if.then.148
  %116 = load %struct.gg_option*, %struct.gg_option** %pfound, align 8
  %cmp160 = icmp eq %struct.gg_option* %116, null
  br i1 %cmp160, label %if.then.162, label %if.else.163

if.then.162:                                      ; preds = %if.else.159
  %117 = load %struct.gg_option*, %struct.gg_option** %p, align 8
  store %struct.gg_option* %117, %struct.gg_option** %pfound, align 8
  %118 = load i32, i32* %option_index, align 4
  store i32 %118, i32* %indfound, align 4
  br label %if.end.164

if.else.163:                                      ; preds = %if.else.159
  store i32 1, i32* %ambig, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.163, %if.then.162
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %for.body.144
  br label %for.inc.167

for.inc.167:                                      ; preds = %if.end.166
  %119 = load %struct.gg_option*, %struct.gg_option** %p, align 8
  %incdec.ptr168 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %119, i32 1
  store %struct.gg_option* %incdec.ptr168, %struct.gg_option** %p, align 8
  %120 = load i32, i32* %option_index, align 4
  %inc169 = add nsw i32 %120, 1
  store i32 %inc169, i32* %option_index, align 4
  br label %for.cond.142

for.end.170:                                      ; preds = %if.then.158, %for.cond.142
  %121 = load i32, i32* %ambig, align 4
  %tobool171 = icmp ne i32 %121, 0
  br i1 %tobool171, label %land.lhs.true.172, label %if.end.185

land.lhs.true.172:                                ; preds = %for.end.170
  %122 = load i32, i32* %exact, align 4
  %tobool173 = icmp ne i32 %122, 0
  br i1 %tobool173, label %if.end.185, label %if.then.174

if.then.174:                                      ; preds = %land.lhs.true.172
  %123 = load i32, i32* @gg_opterr, align 4
  %tobool175 = icmp ne i32 %123, 0
  br i1 %tobool175, label %if.then.176, label %if.end.181

if.then.176:                                      ; preds = %if.then.174
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %125 = load i8**, i8*** %argv.addr, align 8
  %arrayidx177 = getelementptr inbounds i8*, i8** %125, i64 0
  %126 = load i8*, i8** %arrayidx177, align 8
  %127 = load i32, i32* @gg_optind, align 4
  %idxprom178 = sext i32 %127 to i64
  %128 = load i8**, i8*** %argv.addr, align 8
  %arrayidx179 = getelementptr inbounds i8*, i8** %128, i64 %idxprom178
  %129 = load i8*, i8** %arrayidx179, align 8
  %call180 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8* %126, i8* %129)
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.176, %if.then.174
  %130 = load i8*, i8** @nextchar, align 8
  %call182 = call i64 @strlen(i8* %130) #4
  %131 = load i8*, i8** @nextchar, align 8
  %add.ptr183 = getelementptr inbounds i8, i8* %131, i64 %call182
  store i8* %add.ptr183, i8** @nextchar, align 8
  %132 = load i32, i32* @gg_optind, align 4
  %inc184 = add nsw i32 %132, 1
  store i32 %inc184, i32* @gg_optind, align 4
  store i32 0, i32* @gg_optopt, align 4
  store i32 63, i32* %retval
  br label %return

if.end.185:                                       ; preds = %land.lhs.true.172, %for.end.170
  %133 = load %struct.gg_option*, %struct.gg_option** %pfound, align 8
  %cmp186 = icmp ne %struct.gg_option* %133, null
  br i1 %cmp186, label %if.then.188, label %if.end.264

if.then.188:                                      ; preds = %if.end.185
  %134 = load i32, i32* %indfound, align 4
  store i32 %134, i32* %option_index, align 4
  %135 = load i32, i32* @gg_optind, align 4
  %inc189 = add nsw i32 %135, 1
  store i32 %inc189, i32* @gg_optind, align 4
  %136 = load i8*, i8** %nameend, align 8
  %137 = load i8, i8* %136, align 1
  %tobool190 = icmp ne i8 %137, 0
  br i1 %tobool190, label %if.then.191, label %if.else.222

if.then.191:                                      ; preds = %if.then.188
  %138 = load %struct.gg_option*, %struct.gg_option** %pfound, align 8
  %has_arg = getelementptr inbounds %struct.gg_option, %struct.gg_option* %138, i32 0, i32 1
  %139 = load i32, i32* %has_arg, align 4
  %tobool192 = icmp ne i32 %139, 0
  br i1 %tobool192, label %if.then.193, label %if.else.195

if.then.193:                                      ; preds = %if.then.191
  %140 = load i8*, i8** %nameend, align 8
  %add.ptr194 = getelementptr inbounds i8, i8* %140, i64 1
  store i8* %add.ptr194, i8** @gg_optarg, align 8
  br label %if.end.221

if.else.195:                                      ; preds = %if.then.191
  %141 = load i32, i32* @gg_opterr, align 4
  %tobool196 = icmp ne i32 %141, 0
  br i1 %tobool196, label %if.then.197, label %if.end.218

if.then.197:                                      ; preds = %if.else.195
  %142 = load i32, i32* @gg_optind, align 4
  %sub = sub nsw i32 %142, 1
  %idxprom198 = sext i32 %sub to i64
  %143 = load i8**, i8*** %argv.addr, align 8
  %arrayidx199 = getelementptr inbounds i8*, i8** %143, i64 %idxprom198
  %144 = load i8*, i8** %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds i8, i8* %144, i64 1
  %145 = load i8, i8* %arrayidx200, align 1
  %conv201 = sext i8 %145 to i32
  %cmp202 = icmp eq i32 %conv201, 45
  br i1 %cmp202, label %if.then.204, label %if.else.208

if.then.204:                                      ; preds = %if.then.197
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %147 = load i8**, i8*** %argv.addr, align 8
  %arrayidx205 = getelementptr inbounds i8*, i8** %147, i64 0
  %148 = load i8*, i8** %arrayidx205, align 8
  %149 = load %struct.gg_option*, %struct.gg_option** %pfound, align 8
  %name206 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %149, i32 0, i32 0
  %150 = load i8*, i8** %name206, align 8
  %call207 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0), i8* %148, i8* %150)
  br label %if.end.217

if.else.208:                                      ; preds = %if.then.197
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %152 = load i8**, i8*** %argv.addr, align 8
  %arrayidx209 = getelementptr inbounds i8*, i8** %152, i64 0
  %153 = load i8*, i8** %arrayidx209, align 8
  %154 = load i32, i32* @gg_optind, align 4
  %sub210 = sub nsw i32 %154, 1
  %idxprom211 = sext i32 %sub210 to i64
  %155 = load i8**, i8*** %argv.addr, align 8
  %arrayidx212 = getelementptr inbounds i8*, i8** %155, i64 %idxprom211
  %156 = load i8*, i8** %arrayidx212, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %156, i64 0
  %157 = load i8, i8* %arrayidx213, align 1
  %conv214 = sext i8 %157 to i32
  %158 = load %struct.gg_option*, %struct.gg_option** %pfound, align 8
  %name215 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %158, i32 0, i32 0
  %159 = load i8*, i8** %name215, align 8
  %call216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %151, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0), i8* %153, i32 %conv214, i8* %159)
  br label %if.end.217

if.end.217:                                       ; preds = %if.else.208, %if.then.204
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.else.195
  %160 = load i8*, i8** @nextchar, align 8
  %call219 = call i64 @strlen(i8* %160) #4
  %161 = load i8*, i8** @nextchar, align 8
  %add.ptr220 = getelementptr inbounds i8, i8* %161, i64 %call219
  store i8* %add.ptr220, i8** @nextchar, align 8
  %162 = load %struct.gg_option*, %struct.gg_option** %pfound, align 8
  %val = getelementptr inbounds %struct.gg_option, %struct.gg_option* %162, i32 0, i32 3
  %163 = load i32, i32* %val, align 4
  store i32 %163, i32* @gg_optopt, align 4
  store i32 63, i32* %retval
  br label %return

if.end.221:                                       ; preds = %if.then.193
  br label %if.end.251

if.else.222:                                      ; preds = %if.then.188
  %164 = load %struct.gg_option*, %struct.gg_option** %pfound, align 8
  %has_arg223 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %164, i32 0, i32 1
  %165 = load i32, i32* %has_arg223, align 4
  %cmp224 = icmp eq i32 %165, 1
  br i1 %cmp224, label %if.then.226, label %if.end.250

if.then.226:                                      ; preds = %if.else.222
  %166 = load i32, i32* @gg_optind, align 4
  %167 = load i32, i32* %argc.addr, align 4
  %cmp227 = icmp slt i32 %166, %167
  br i1 %cmp227, label %if.then.229, label %if.else.233

if.then.229:                                      ; preds = %if.then.226
  %168 = load i32, i32* @gg_optind, align 4
  %inc230 = add nsw i32 %168, 1
  store i32 %inc230, i32* @gg_optind, align 4
  %idxprom231 = sext i32 %168 to i64
  %169 = load i8**, i8*** %argv.addr, align 8
  %arrayidx232 = getelementptr inbounds i8*, i8** %169, i64 %idxprom231
  %170 = load i8*, i8** %arrayidx232, align 8
  store i8* %170, i8** @gg_optarg, align 8
  br label %if.end.249

if.else.233:                                      ; preds = %if.then.226
  %171 = load i32, i32* @gg_opterr, align 4
  %tobool234 = icmp ne i32 %171, 0
  br i1 %tobool234, label %if.then.235, label %if.end.241

if.then.235:                                      ; preds = %if.else.233
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %173 = load i8**, i8*** %argv.addr, align 8
  %arrayidx236 = getelementptr inbounds i8*, i8** %173, i64 0
  %174 = load i8*, i8** %arrayidx236, align 8
  %175 = load i32, i32* @gg_optind, align 4
  %sub237 = sub nsw i32 %175, 1
  %idxprom238 = sext i32 %sub237 to i64
  %176 = load i8**, i8*** %argv.addr, align 8
  %arrayidx239 = getelementptr inbounds i8*, i8** %176, i64 %idxprom238
  %177 = load i8*, i8** %arrayidx239, align 8
  %call240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %172, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* %174, i8* %177)
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.235, %if.else.233
  %178 = load i8*, i8** @nextchar, align 8
  %call242 = call i64 @strlen(i8* %178) #4
  %179 = load i8*, i8** @nextchar, align 8
  %add.ptr243 = getelementptr inbounds i8, i8* %179, i64 %call242
  store i8* %add.ptr243, i8** @nextchar, align 8
  %180 = load %struct.gg_option*, %struct.gg_option** %pfound, align 8
  %val244 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %180, i32 0, i32 3
  %181 = load i32, i32* %val244, align 4
  store i32 %181, i32* @gg_optopt, align 4
  %182 = load i8*, i8** %optstring.addr, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %182, i64 0
  %183 = load i8, i8* %arrayidx245, align 1
  %conv246 = sext i8 %183 to i32
  %cmp247 = icmp eq i32 %conv246, 58
  %cond = select i1 %cmp247, i32 58, i32 63
  store i32 %cond, i32* %retval
  br label %return

if.end.249:                                       ; preds = %if.then.229
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %if.else.222
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.end.221
  %184 = load i8*, i8** @nextchar, align 8
  %call252 = call i64 @strlen(i8* %184) #4
  %185 = load i8*, i8** @nextchar, align 8
  %add.ptr253 = getelementptr inbounds i8, i8* %185, i64 %call252
  store i8* %add.ptr253, i8** @nextchar, align 8
  %186 = load i32*, i32** %longind.addr, align 8
  %cmp254 = icmp ne i32* %186, null
  br i1 %cmp254, label %if.then.256, label %if.end.257

if.then.256:                                      ; preds = %if.end.251
  %187 = load i32, i32* %option_index, align 4
  %188 = load i32*, i32** %longind.addr, align 8
  store i32 %187, i32* %188, align 4
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.256, %if.end.251
  %189 = load %struct.gg_option*, %struct.gg_option** %pfound, align 8
  %flag = getelementptr inbounds %struct.gg_option, %struct.gg_option* %189, i32 0, i32 2
  %190 = load i32*, i32** %flag, align 8
  %tobool258 = icmp ne i32* %190, null
  br i1 %tobool258, label %if.then.259, label %if.end.262

if.then.259:                                      ; preds = %if.end.257
  %191 = load %struct.gg_option*, %struct.gg_option** %pfound, align 8
  %val260 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %191, i32 0, i32 3
  %192 = load i32, i32* %val260, align 4
  %193 = load %struct.gg_option*, %struct.gg_option** %pfound, align 8
  %flag261 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %193, i32 0, i32 2
  %194 = load i32*, i32** %flag261, align 8
  store i32 %192, i32* %194, align 4
  store i32 0, i32* %retval
  br label %return

if.end.262:                                       ; preds = %if.end.257
  %195 = load %struct.gg_option*, %struct.gg_option** %pfound, align 8
  %val263 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %195, i32 0, i32 3
  %196 = load i32, i32* %val263, align 4
  store i32 %196, i32* %retval
  br label %return

if.end.264:                                       ; preds = %if.end.185
  %197 = load i32, i32* %long_only.addr, align 4
  %tobool265 = icmp ne i32 %197, 0
  br i1 %tobool265, label %lor.lhs.false.266, label %if.then.278

lor.lhs.false.266:                                ; preds = %if.end.264
  %198 = load i32, i32* @gg_optind, align 4
  %idxprom267 = sext i32 %198 to i64
  %199 = load i8**, i8*** %argv.addr, align 8
  %arrayidx268 = getelementptr inbounds i8*, i8** %199, i64 %idxprom267
  %200 = load i8*, i8** %arrayidx268, align 8
  %arrayidx269 = getelementptr inbounds i8, i8* %200, i64 1
  %201 = load i8, i8* %arrayidx269, align 1
  %conv270 = sext i8 %201 to i32
  %cmp271 = icmp eq i32 %conv270, 45
  br i1 %cmp271, label %if.then.278, label %lor.lhs.false.273

lor.lhs.false.273:                                ; preds = %lor.lhs.false.266
  %202 = load i8*, i8** %optstring.addr, align 8
  %203 = load i8*, i8** @nextchar, align 8
  %204 = load i8, i8* %203, align 1
  %conv274 = sext i8 %204 to i32
  %call275 = call i8* @strchr(i8* %202, i32 %conv274) #4
  %cmp276 = icmp eq i8* %call275, null
  br i1 %cmp276, label %if.then.278, label %if.end.300

if.then.278:                                      ; preds = %lor.lhs.false.273, %lor.lhs.false.266, %if.end.264
  %205 = load i32, i32* @gg_opterr, align 4
  %tobool279 = icmp ne i32 %205, 0
  br i1 %tobool279, label %if.then.280, label %if.end.298

if.then.280:                                      ; preds = %if.then.278
  %206 = load i32, i32* @gg_optind, align 4
  %idxprom281 = sext i32 %206 to i64
  %207 = load i8**, i8*** %argv.addr, align 8
  %arrayidx282 = getelementptr inbounds i8*, i8** %207, i64 %idxprom281
  %208 = load i8*, i8** %arrayidx282, align 8
  %arrayidx283 = getelementptr inbounds i8, i8* %208, i64 1
  %209 = load i8, i8* %arrayidx283, align 1
  %conv284 = sext i8 %209 to i32
  %cmp285 = icmp eq i32 %conv284, 45
  br i1 %cmp285, label %if.then.287, label %if.else.290

if.then.287:                                      ; preds = %if.then.280
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %211 = load i8**, i8*** %argv.addr, align 8
  %arrayidx288 = getelementptr inbounds i8*, i8** %211, i64 0
  %212 = load i8*, i8** %arrayidx288, align 8
  %213 = load i8*, i8** @nextchar, align 8
  %call289 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %210, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i8* %212, i8* %213)
  br label %if.end.297

if.else.290:                                      ; preds = %if.then.280
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %215 = load i8**, i8*** %argv.addr, align 8
  %arrayidx291 = getelementptr inbounds i8*, i8** %215, i64 0
  %216 = load i8*, i8** %arrayidx291, align 8
  %217 = load i32, i32* @gg_optind, align 4
  %idxprom292 = sext i32 %217 to i64
  %218 = load i8**, i8*** %argv.addr, align 8
  %arrayidx293 = getelementptr inbounds i8*, i8** %218, i64 %idxprom292
  %219 = load i8*, i8** %arrayidx293, align 8
  %arrayidx294 = getelementptr inbounds i8, i8* %219, i64 0
  %220 = load i8, i8* %arrayidx294, align 1
  %conv295 = sext i8 %220 to i32
  %221 = load i8*, i8** @nextchar, align 8
  %call296 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0), i8* %216, i32 %conv295, i8* %221)
  br label %if.end.297

if.end.297:                                       ; preds = %if.else.290, %if.then.287
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %if.then.278
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), i8** @nextchar, align 8
  %222 = load i32, i32* @gg_optind, align 4
  %inc299 = add nsw i32 %222, 1
  store i32 %inc299, i32* @gg_optind, align 4
  store i32 0, i32* @gg_optopt, align 4
  store i32 63, i32* %retval
  br label %return

if.end.300:                                       ; preds = %lor.lhs.false.273
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.300, %lor.lhs.false.126, %lor.lhs.false.118, %if.end.108
  %223 = load i8*, i8** @nextchar, align 8
  %incdec.ptr302 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %incdec.ptr302, i8** @nextchar, align 8
  %224 = load i8, i8* %223, align 1
  store i8 %224, i8* %c, align 1
  %225 = load i8*, i8** %optstring.addr, align 8
  %226 = load i8, i8* %c, align 1
  %conv303 = sext i8 %226 to i32
  %call304 = call i8* @strchr(i8* %225, i32 %conv303) #4
  store i8* %call304, i8** %temp, align 8
  %227 = load i8*, i8** @nextchar, align 8
  %228 = load i8, i8* %227, align 1
  %conv305 = sext i8 %228 to i32
  %cmp306 = icmp eq i32 %conv305, 0
  br i1 %cmp306, label %if.then.308, label %if.end.310

if.then.308:                                      ; preds = %if.end.301
  %229 = load i32, i32* @gg_optind, align 4
  %inc309 = add nsw i32 %229, 1
  store i32 %inc309, i32* @gg_optind, align 4
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.308, %if.end.301
  %230 = load i8*, i8** %temp, align 8
  %cmp311 = icmp eq i8* %230, null
  br i1 %cmp311, label %if.then.317, label %lor.lhs.false.313

lor.lhs.false.313:                                ; preds = %if.end.310
  %231 = load i8, i8* %c, align 1
  %conv314 = sext i8 %231 to i32
  %cmp315 = icmp eq i32 %conv314, 58
  br i1 %cmp315, label %if.then.317, label %if.end.332

if.then.317:                                      ; preds = %lor.lhs.false.313, %if.end.310
  %232 = load i32, i32* @gg_opterr, align 4
  %tobool318 = icmp ne i32 %232, 0
  br i1 %tobool318, label %if.then.319, label %if.end.330

if.then.319:                                      ; preds = %if.then.317
  %233 = load i8*, i8** @posixly_correct, align 8
  %tobool320 = icmp ne i8* %233, null
  br i1 %tobool320, label %if.then.321, label %if.else.325

if.then.321:                                      ; preds = %if.then.319
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %235 = load i8**, i8*** %argv.addr, align 8
  %arrayidx322 = getelementptr inbounds i8*, i8** %235, i64 0
  %236 = load i8*, i8** %arrayidx322, align 8
  %237 = load i8, i8* %c, align 1
  %conv323 = sext i8 %237 to i32
  %call324 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %234, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i8* %236, i32 %conv323)
  br label %if.end.329

if.else.325:                                      ; preds = %if.then.319
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %239 = load i8**, i8*** %argv.addr, align 8
  %arrayidx326 = getelementptr inbounds i8*, i8** %239, i64 0
  %240 = load i8*, i8** %arrayidx326, align 8
  %241 = load i8, i8* %c, align 1
  %conv327 = sext i8 %241 to i32
  %call328 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %238, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i8* %240, i32 %conv327)
  br label %if.end.329

if.end.329:                                       ; preds = %if.else.325, %if.then.321
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %if.then.317
  %242 = load i8, i8* %c, align 1
  %conv331 = sext i8 %242 to i32
  store i32 %conv331, i32* @gg_optopt, align 4
  store i32 63, i32* %retval
  br label %return

if.end.332:                                       ; preds = %lor.lhs.false.313
  %243 = load i8*, i8** %temp, align 8
  %arrayidx333 = getelementptr inbounds i8, i8* %243, i64 0
  %244 = load i8, i8* %arrayidx333, align 1
  %conv334 = sext i8 %244 to i32
  %cmp335 = icmp eq i32 %conv334, 87
  br i1 %cmp335, label %land.lhs.true.337, label %if.end.504

land.lhs.true.337:                                ; preds = %if.end.332
  %245 = load i8*, i8** %temp, align 8
  %arrayidx338 = getelementptr inbounds i8, i8* %245, i64 1
  %246 = load i8, i8* %arrayidx338, align 1
  %conv339 = sext i8 %246 to i32
  %cmp340 = icmp eq i32 %conv339, 59
  br i1 %cmp340, label %if.then.342, label %if.end.504

if.then.342:                                      ; preds = %land.lhs.true.337
  store %struct.gg_option* null, %struct.gg_option** %pfound345, align 8
  store i32 0, i32* %exact346, align 4
  store i32 0, i32* %ambig347, align 4
  store i32 0, i32* %indfound348, align 4
  %247 = load i8*, i8** @nextchar, align 8
  %248 = load i8, i8* %247, align 1
  %conv350 = sext i8 %248 to i32
  %cmp351 = icmp ne i32 %conv350, 0
  br i1 %cmp351, label %if.then.353, label %if.else.355

if.then.353:                                      ; preds = %if.then.342
  %249 = load i8*, i8** @nextchar, align 8
  store i8* %249, i8** @gg_optarg, align 8
  %250 = load i32, i32* @gg_optind, align 4
  %inc354 = add nsw i32 %250, 1
  store i32 %inc354, i32* @gg_optind, align 4
  br label %if.end.379

if.else.355:                                      ; preds = %if.then.342
  %251 = load i32, i32* @gg_optind, align 4
  %252 = load i32, i32* %argc.addr, align 4
  %cmp356 = icmp eq i32 %251, %252
  br i1 %cmp356, label %if.then.358, label %if.else.374

if.then.358:                                      ; preds = %if.else.355
  %253 = load i32, i32* @gg_opterr, align 4
  %tobool359 = icmp ne i32 %253, 0
  br i1 %tobool359, label %if.then.360, label %if.end.364

if.then.360:                                      ; preds = %if.then.358
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %255 = load i8**, i8*** %argv.addr, align 8
  %arrayidx361 = getelementptr inbounds i8*, i8** %255, i64 0
  %256 = load i8*, i8** %arrayidx361, align 8
  %257 = load i8, i8* %c, align 1
  %conv362 = sext i8 %257 to i32
  %call363 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %254, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0), i8* %256, i32 %conv362)
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.360, %if.then.358
  %258 = load i8, i8* %c, align 1
  %conv365 = sext i8 %258 to i32
  store i32 %conv365, i32* @gg_optopt, align 4
  %259 = load i8*, i8** %optstring.addr, align 8
  %arrayidx366 = getelementptr inbounds i8, i8* %259, i64 0
  %260 = load i8, i8* %arrayidx366, align 1
  %conv367 = sext i8 %260 to i32
  %cmp368 = icmp eq i32 %conv367, 58
  br i1 %cmp368, label %if.then.370, label %if.else.371

if.then.370:                                      ; preds = %if.end.364
  store i8 58, i8* %c, align 1
  br label %if.end.372

if.else.371:                                      ; preds = %if.end.364
  store i8 63, i8* %c, align 1
  br label %if.end.372

if.end.372:                                       ; preds = %if.else.371, %if.then.370
  %261 = load i8, i8* %c, align 1
  %conv373 = sext i8 %261 to i32
  store i32 %conv373, i32* %retval
  br label %return

if.else.374:                                      ; preds = %if.else.355
  %262 = load i32, i32* @gg_optind, align 4
  %inc375 = add nsw i32 %262, 1
  store i32 %inc375, i32* @gg_optind, align 4
  %idxprom376 = sext i32 %262 to i64
  %263 = load i8**, i8*** %argv.addr, align 8
  %arrayidx377 = getelementptr inbounds i8*, i8** %263, i64 %idxprom376
  %264 = load i8*, i8** %arrayidx377, align 8
  store i8* %264, i8** @gg_optarg, align 8
  br label %if.end.378

if.end.378:                                       ; preds = %if.else.374
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %if.then.353
  %265 = load i8*, i8** @gg_optarg, align 8
  store i8* %265, i8** %nameend343, align 8
  store i8* %265, i8** @nextchar, align 8
  br label %for.cond.380

for.cond.380:                                     ; preds = %for.inc.390, %if.end.379
  %266 = load i8*, i8** %nameend343, align 8
  %267 = load i8, i8* %266, align 1
  %conv381 = sext i8 %267 to i32
  %tobool382 = icmp ne i32 %conv381, 0
  br i1 %tobool382, label %land.rhs.383, label %land.end.387

land.rhs.383:                                     ; preds = %for.cond.380
  %268 = load i8*, i8** %nameend343, align 8
  %269 = load i8, i8* %268, align 1
  %conv384 = sext i8 %269 to i32
  %cmp385 = icmp ne i32 %conv384, 61
  br label %land.end.387

land.end.387:                                     ; preds = %land.rhs.383, %for.cond.380
  %270 = phi i1 [ false, %for.cond.380 ], [ %cmp385, %land.rhs.383 ]
  br i1 %270, label %for.body.389, label %for.end.392

for.body.389:                                     ; preds = %land.end.387
  br label %for.inc.390

for.inc.390:                                      ; preds = %for.body.389
  %271 = load i8*, i8** %nameend343, align 8
  %incdec.ptr391 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %incdec.ptr391, i8** %nameend343, align 8
  br label %for.cond.380

for.end.392:                                      ; preds = %land.end.387
  %272 = load %struct.gg_option*, %struct.gg_option** %longopts.addr, align 8
  store %struct.gg_option* %272, %struct.gg_option** %p344, align 8
  store i32 0, i32* %option_index349, align 4
  br label %for.cond.393

for.cond.393:                                     ; preds = %for.inc.422, %for.end.392
  %273 = load %struct.gg_option*, %struct.gg_option** %p344, align 8
  %name394 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %273, i32 0, i32 0
  %274 = load i8*, i8** %name394, align 8
  %tobool395 = icmp ne i8* %274, null
  br i1 %tobool395, label %for.body.396, label %for.end.425

for.body.396:                                     ; preds = %for.cond.393
  %275 = load %struct.gg_option*, %struct.gg_option** %p344, align 8
  %name397 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %275, i32 0, i32 0
  %276 = load i8*, i8** %name397, align 8
  %277 = load i8*, i8** @nextchar, align 8
  %278 = load i8*, i8** %nameend343, align 8
  %279 = load i8*, i8** @nextchar, align 8
  %sub.ptr.lhs.cast398 = ptrtoint i8* %278 to i64
  %sub.ptr.rhs.cast399 = ptrtoint i8* %279 to i64
  %sub.ptr.sub400 = sub i64 %sub.ptr.lhs.cast398, %sub.ptr.rhs.cast399
  %call401 = call i32 @strncmp(i8* %276, i8* %277, i64 %sub.ptr.sub400) #4
  %tobool402 = icmp ne i32 %call401, 0
  br i1 %tobool402, label %if.end.421, label %if.then.403

if.then.403:                                      ; preds = %for.body.396
  %280 = load i8*, i8** %nameend343, align 8
  %281 = load i8*, i8** @nextchar, align 8
  %sub.ptr.lhs.cast404 = ptrtoint i8* %280 to i64
  %sub.ptr.rhs.cast405 = ptrtoint i8* %281 to i64
  %sub.ptr.sub406 = sub i64 %sub.ptr.lhs.cast404, %sub.ptr.rhs.cast405
  %conv407 = trunc i64 %sub.ptr.sub406 to i32
  %conv408 = zext i32 %conv407 to i64
  %282 = load %struct.gg_option*, %struct.gg_option** %p344, align 8
  %name409 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %282, i32 0, i32 0
  %283 = load i8*, i8** %name409, align 8
  %call410 = call i64 @strlen(i8* %283) #4
  %cmp411 = icmp eq i64 %conv408, %call410
  br i1 %cmp411, label %if.then.413, label %if.else.414

if.then.413:                                      ; preds = %if.then.403
  %284 = load %struct.gg_option*, %struct.gg_option** %p344, align 8
  store %struct.gg_option* %284, %struct.gg_option** %pfound345, align 8
  %285 = load i32, i32* %option_index349, align 4
  store i32 %285, i32* %indfound348, align 4
  store i32 1, i32* %exact346, align 4
  br label %for.end.425

if.else.414:                                      ; preds = %if.then.403
  %286 = load %struct.gg_option*, %struct.gg_option** %pfound345, align 8
  %cmp415 = icmp eq %struct.gg_option* %286, null
  br i1 %cmp415, label %if.then.417, label %if.else.418

if.then.417:                                      ; preds = %if.else.414
  %287 = load %struct.gg_option*, %struct.gg_option** %p344, align 8
  store %struct.gg_option* %287, %struct.gg_option** %pfound345, align 8
  %288 = load i32, i32* %option_index349, align 4
  store i32 %288, i32* %indfound348, align 4
  br label %if.end.419

if.else.418:                                      ; preds = %if.else.414
  store i32 1, i32* %ambig347, align 4
  br label %if.end.419

if.end.419:                                       ; preds = %if.else.418, %if.then.417
  br label %if.end.420

if.end.420:                                       ; preds = %if.end.419
  br label %if.end.421

if.end.421:                                       ; preds = %if.end.420, %for.body.396
  br label %for.inc.422

for.inc.422:                                      ; preds = %if.end.421
  %289 = load %struct.gg_option*, %struct.gg_option** %p344, align 8
  %incdec.ptr423 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %289, i32 1
  store %struct.gg_option* %incdec.ptr423, %struct.gg_option** %p344, align 8
  %290 = load i32, i32* %option_index349, align 4
  %inc424 = add nsw i32 %290, 1
  store i32 %inc424, i32* %option_index349, align 4
  br label %for.cond.393

for.end.425:                                      ; preds = %if.then.413, %for.cond.393
  %291 = load i32, i32* %ambig347, align 4
  %tobool426 = icmp ne i32 %291, 0
  br i1 %tobool426, label %land.lhs.true.427, label %if.end.440

land.lhs.true.427:                                ; preds = %for.end.425
  %292 = load i32, i32* %exact346, align 4
  %tobool428 = icmp ne i32 %292, 0
  br i1 %tobool428, label %if.end.440, label %if.then.429

if.then.429:                                      ; preds = %land.lhs.true.427
  %293 = load i32, i32* @gg_opterr, align 4
  %tobool430 = icmp ne i32 %293, 0
  br i1 %tobool430, label %if.then.431, label %if.end.436

if.then.431:                                      ; preds = %if.then.429
  %294 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %295 = load i8**, i8*** %argv.addr, align 8
  %arrayidx432 = getelementptr inbounds i8*, i8** %295, i64 0
  %296 = load i8*, i8** %arrayidx432, align 8
  %297 = load i32, i32* @gg_optind, align 4
  %idxprom433 = sext i32 %297 to i64
  %298 = load i8**, i8*** %argv.addr, align 8
  %arrayidx434 = getelementptr inbounds i8*, i8** %298, i64 %idxprom433
  %299 = load i8*, i8** %arrayidx434, align 8
  %call435 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %294, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0), i8* %296, i8* %299)
  br label %if.end.436

if.end.436:                                       ; preds = %if.then.431, %if.then.429
  %300 = load i8*, i8** @nextchar, align 8
  %call437 = call i64 @strlen(i8* %300) #4
  %301 = load i8*, i8** @nextchar, align 8
  %add.ptr438 = getelementptr inbounds i8, i8* %301, i64 %call437
  store i8* %add.ptr438, i8** @nextchar, align 8
  %302 = load i32, i32* @gg_optind, align 4
  %inc439 = add nsw i32 %302, 1
  store i32 %inc439, i32* @gg_optind, align 4
  store i32 63, i32* %retval
  br label %return

if.end.440:                                       ; preds = %land.lhs.true.427, %for.end.425
  %303 = load %struct.gg_option*, %struct.gg_option** %pfound345, align 8
  %cmp441 = icmp ne %struct.gg_option* %303, null
  br i1 %cmp441, label %if.then.443, label %if.end.503

if.then.443:                                      ; preds = %if.end.440
  %304 = load i32, i32* %indfound348, align 4
  store i32 %304, i32* %option_index349, align 4
  %305 = load i8*, i8** %nameend343, align 8
  %306 = load i8, i8* %305, align 1
  %tobool444 = icmp ne i8 %306, 0
  br i1 %tobool444, label %if.then.445, label %if.else.460

if.then.445:                                      ; preds = %if.then.443
  %307 = load %struct.gg_option*, %struct.gg_option** %pfound345, align 8
  %has_arg446 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %307, i32 0, i32 1
  %308 = load i32, i32* %has_arg446, align 4
  %tobool447 = icmp ne i32 %308, 0
  br i1 %tobool447, label %if.then.448, label %if.else.450

if.then.448:                                      ; preds = %if.then.445
  %309 = load i8*, i8** %nameend343, align 8
  %add.ptr449 = getelementptr inbounds i8, i8* %309, i64 1
  store i8* %add.ptr449, i8** @gg_optarg, align 8
  br label %if.end.459

if.else.450:                                      ; preds = %if.then.445
  %310 = load i32, i32* @gg_opterr, align 4
  %tobool451 = icmp ne i32 %310, 0
  br i1 %tobool451, label %if.then.452, label %if.end.456

if.then.452:                                      ; preds = %if.else.450
  %311 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %312 = load i8**, i8*** %argv.addr, align 8
  %arrayidx453 = getelementptr inbounds i8*, i8** %312, i64 0
  %313 = load i8*, i8** %arrayidx453, align 8
  %314 = load %struct.gg_option*, %struct.gg_option** %pfound345, align 8
  %name454 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %314, i32 0, i32 0
  %315 = load i8*, i8** %name454, align 8
  %call455 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %311, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i32 0, i32 0), i8* %313, i8* %315)
  br label %if.end.456

if.end.456:                                       ; preds = %if.then.452, %if.else.450
  %316 = load i8*, i8** @nextchar, align 8
  %call457 = call i64 @strlen(i8* %316) #4
  %317 = load i8*, i8** @nextchar, align 8
  %add.ptr458 = getelementptr inbounds i8, i8* %317, i64 %call457
  store i8* %add.ptr458, i8** @nextchar, align 8
  store i32 63, i32* %retval
  br label %return

if.end.459:                                       ; preds = %if.then.448
  br label %if.end.489

if.else.460:                                      ; preds = %if.then.443
  %318 = load %struct.gg_option*, %struct.gg_option** %pfound345, align 8
  %has_arg461 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %318, i32 0, i32 1
  %319 = load i32, i32* %has_arg461, align 4
  %cmp462 = icmp eq i32 %319, 1
  br i1 %cmp462, label %if.then.464, label %if.end.488

if.then.464:                                      ; preds = %if.else.460
  %320 = load i32, i32* @gg_optind, align 4
  %321 = load i32, i32* %argc.addr, align 4
  %cmp465 = icmp slt i32 %320, %321
  br i1 %cmp465, label %if.then.467, label %if.else.471

if.then.467:                                      ; preds = %if.then.464
  %322 = load i32, i32* @gg_optind, align 4
  %inc468 = add nsw i32 %322, 1
  store i32 %inc468, i32* @gg_optind, align 4
  %idxprom469 = sext i32 %322 to i64
  %323 = load i8**, i8*** %argv.addr, align 8
  %arrayidx470 = getelementptr inbounds i8*, i8** %323, i64 %idxprom469
  %324 = load i8*, i8** %arrayidx470, align 8
  store i8* %324, i8** @gg_optarg, align 8
  br label %if.end.487

if.else.471:                                      ; preds = %if.then.464
  %325 = load i32, i32* @gg_opterr, align 4
  %tobool472 = icmp ne i32 %325, 0
  br i1 %tobool472, label %if.then.473, label %if.end.479

if.then.473:                                      ; preds = %if.else.471
  %326 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %327 = load i8**, i8*** %argv.addr, align 8
  %arrayidx474 = getelementptr inbounds i8*, i8** %327, i64 0
  %328 = load i8*, i8** %arrayidx474, align 8
  %329 = load i32, i32* @gg_optind, align 4
  %sub475 = sub nsw i32 %329, 1
  %idxprom476 = sext i32 %sub475 to i64
  %330 = load i8**, i8*** %argv.addr, align 8
  %arrayidx477 = getelementptr inbounds i8*, i8** %330, i64 %idxprom476
  %331 = load i8*, i8** %arrayidx477, align 8
  %call478 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %326, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* %328, i8* %331)
  br label %if.end.479

if.end.479:                                       ; preds = %if.then.473, %if.else.471
  %332 = load i8*, i8** @nextchar, align 8
  %call480 = call i64 @strlen(i8* %332) #4
  %333 = load i8*, i8** @nextchar, align 8
  %add.ptr481 = getelementptr inbounds i8, i8* %333, i64 %call480
  store i8* %add.ptr481, i8** @nextchar, align 8
  %334 = load i8*, i8** %optstring.addr, align 8
  %arrayidx482 = getelementptr inbounds i8, i8* %334, i64 0
  %335 = load i8, i8* %arrayidx482, align 1
  %conv483 = sext i8 %335 to i32
  %cmp484 = icmp eq i32 %conv483, 58
  %cond486 = select i1 %cmp484, i32 58, i32 63
  store i32 %cond486, i32* %retval
  br label %return

if.end.487:                                       ; preds = %if.then.467
  br label %if.end.488

if.end.488:                                       ; preds = %if.end.487, %if.else.460
  br label %if.end.489

if.end.489:                                       ; preds = %if.end.488, %if.end.459
  %336 = load i8*, i8** @nextchar, align 8
  %call490 = call i64 @strlen(i8* %336) #4
  %337 = load i8*, i8** @nextchar, align 8
  %add.ptr491 = getelementptr inbounds i8, i8* %337, i64 %call490
  store i8* %add.ptr491, i8** @nextchar, align 8
  %338 = load i32*, i32** %longind.addr, align 8
  %cmp492 = icmp ne i32* %338, null
  br i1 %cmp492, label %if.then.494, label %if.end.495

if.then.494:                                      ; preds = %if.end.489
  %339 = load i32, i32* %option_index349, align 4
  %340 = load i32*, i32** %longind.addr, align 8
  store i32 %339, i32* %340, align 4
  br label %if.end.495

if.end.495:                                       ; preds = %if.then.494, %if.end.489
  %341 = load %struct.gg_option*, %struct.gg_option** %pfound345, align 8
  %flag496 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %341, i32 0, i32 2
  %342 = load i32*, i32** %flag496, align 8
  %tobool497 = icmp ne i32* %342, null
  br i1 %tobool497, label %if.then.498, label %if.end.501

if.then.498:                                      ; preds = %if.end.495
  %343 = load %struct.gg_option*, %struct.gg_option** %pfound345, align 8
  %val499 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %343, i32 0, i32 3
  %344 = load i32, i32* %val499, align 4
  %345 = load %struct.gg_option*, %struct.gg_option** %pfound345, align 8
  %flag500 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %345, i32 0, i32 2
  %346 = load i32*, i32** %flag500, align 8
  store i32 %344, i32* %346, align 4
  store i32 0, i32* %retval
  br label %return

if.end.501:                                       ; preds = %if.end.495
  %347 = load %struct.gg_option*, %struct.gg_option** %pfound345, align 8
  %val502 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %347, i32 0, i32 3
  %348 = load i32, i32* %val502, align 4
  store i32 %348, i32* %retval
  br label %return

if.end.503:                                       ; preds = %if.end.440
  store i8* null, i8** @nextchar, align 8
  store i32 87, i32* %retval
  br label %return

if.end.504:                                       ; preds = %land.lhs.true.337, %if.end.332
  %349 = load i8*, i8** %temp, align 8
  %arrayidx505 = getelementptr inbounds i8, i8* %349, i64 1
  %350 = load i8, i8* %arrayidx505, align 1
  %conv506 = sext i8 %350 to i32
  %cmp507 = icmp eq i32 %conv506, 58
  br i1 %cmp507, label %if.then.509, label %if.end.553

if.then.509:                                      ; preds = %if.end.504
  %351 = load i8*, i8** %temp, align 8
  %arrayidx510 = getelementptr inbounds i8, i8* %351, i64 2
  %352 = load i8, i8* %arrayidx510, align 1
  %conv511 = sext i8 %352 to i32
  %cmp512 = icmp eq i32 %conv511, 58
  br i1 %cmp512, label %if.then.514, label %if.else.522

if.then.514:                                      ; preds = %if.then.509
  %353 = load i8*, i8** @nextchar, align 8
  %354 = load i8, i8* %353, align 1
  %conv515 = sext i8 %354 to i32
  %cmp516 = icmp ne i32 %conv515, 0
  br i1 %cmp516, label %if.then.518, label %if.else.520

if.then.518:                                      ; preds = %if.then.514
  %355 = load i8*, i8** @nextchar, align 8
  store i8* %355, i8** @gg_optarg, align 8
  %356 = load i32, i32* @gg_optind, align 4
  %inc519 = add nsw i32 %356, 1
  store i32 %inc519, i32* @gg_optind, align 4
  br label %if.end.521

if.else.520:                                      ; preds = %if.then.514
  store i8* null, i8** @gg_optarg, align 8
  br label %if.end.521

if.end.521:                                       ; preds = %if.else.520, %if.then.518
  store i8* null, i8** @nextchar, align 8
  br label %if.end.552

if.else.522:                                      ; preds = %if.then.509
  %357 = load i8*, i8** @nextchar, align 8
  %358 = load i8, i8* %357, align 1
  %conv523 = sext i8 %358 to i32
  %cmp524 = icmp ne i32 %conv523, 0
  br i1 %cmp524, label %if.then.526, label %if.else.528

if.then.526:                                      ; preds = %if.else.522
  %359 = load i8*, i8** @nextchar, align 8
  store i8* %359, i8** @gg_optarg, align 8
  %360 = load i32, i32* @gg_optind, align 4
  %inc527 = add nsw i32 %360, 1
  store i32 %inc527, i32* @gg_optind, align 4
  br label %if.end.551

if.else.528:                                      ; preds = %if.else.522
  %361 = load i32, i32* @gg_optind, align 4
  %362 = load i32, i32* %argc.addr, align 4
  %cmp529 = icmp eq i32 %361, %362
  br i1 %cmp529, label %if.then.531, label %if.else.546

if.then.531:                                      ; preds = %if.else.528
  %363 = load i32, i32* @gg_opterr, align 4
  %tobool532 = icmp ne i32 %363, 0
  br i1 %tobool532, label %if.then.533, label %if.end.537

if.then.533:                                      ; preds = %if.then.531
  %364 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %365 = load i8**, i8*** %argv.addr, align 8
  %arrayidx534 = getelementptr inbounds i8*, i8** %365, i64 0
  %366 = load i8*, i8** %arrayidx534, align 8
  %367 = load i8, i8* %c, align 1
  %conv535 = sext i8 %367 to i32
  %call536 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %364, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0), i8* %366, i32 %conv535)
  br label %if.end.537

if.end.537:                                       ; preds = %if.then.533, %if.then.531
  %368 = load i8, i8* %c, align 1
  %conv538 = sext i8 %368 to i32
  store i32 %conv538, i32* @gg_optopt, align 4
  %369 = load i8*, i8** %optstring.addr, align 8
  %arrayidx539 = getelementptr inbounds i8, i8* %369, i64 0
  %370 = load i8, i8* %arrayidx539, align 1
  %conv540 = sext i8 %370 to i32
  %cmp541 = icmp eq i32 %conv540, 58
  br i1 %cmp541, label %if.then.543, label %if.else.544

if.then.543:                                      ; preds = %if.end.537
  store i8 58, i8* %c, align 1
  br label %if.end.545

if.else.544:                                      ; preds = %if.end.537
  store i8 63, i8* %c, align 1
  br label %if.end.545

if.end.545:                                       ; preds = %if.else.544, %if.then.543
  br label %if.end.550

if.else.546:                                      ; preds = %if.else.528
  %371 = load i32, i32* @gg_optind, align 4
  %inc547 = add nsw i32 %371, 1
  store i32 %inc547, i32* @gg_optind, align 4
  %idxprom548 = sext i32 %371 to i64
  %372 = load i8**, i8*** %argv.addr, align 8
  %arrayidx549 = getelementptr inbounds i8*, i8** %372, i64 %idxprom548
  %373 = load i8*, i8** %arrayidx549, align 8
  store i8* %373, i8** @gg_optarg, align 8
  br label %if.end.550

if.end.550:                                       ; preds = %if.else.546, %if.end.545
  br label %if.end.551

if.end.551:                                       ; preds = %if.end.550, %if.then.526
  store i8* null, i8** @nextchar, align 8
  br label %if.end.552

if.end.552:                                       ; preds = %if.end.551, %if.end.521
  br label %if.end.553

if.end.553:                                       ; preds = %if.end.552, %if.end.504
  %374 = load i8, i8* %c, align 1
  %conv554 = sext i8 %374 to i32
  store i32 %conv554, i32* %retval
  br label %return

return:                                           ; preds = %if.end.553, %if.end.503, %if.end.501, %if.then.498, %if.end.479, %if.end.456, %if.end.436, %if.end.372, %if.end.330, %if.end.298, %if.end.262, %if.then.259, %if.end.241, %if.end.218, %if.end.181, %if.end.90, %if.then.89, %if.end.71
  %375 = load i32, i32* %retval
  ret i32 %375
}

; Function Attrs: nounwind uwtable
define internal i8* @_getopt_initialize(i32 %argc, i8** %argv, i8* %optstring) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %optstring.addr = alloca i8*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* %optstring, i8** %optstring.addr, align 8
  %0 = load i32, i32* @gg_optind, align 4
  store i32 %0, i32* @last_nonopt, align 4
  store i32 %0, i32* @first_nonopt, align 4
  store i8* null, i8** @nextchar, align 8
  %call = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0)) #5
  store i8* %call, i8** @posixly_correct, align 8
  %1 = load i8*, i8** %optstring.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, i32* @ordering, align 4
  %3 = load i8*, i8** %optstring.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %optstring.addr, align 8
  br label %if.end.14

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %optstring.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 43
  br i1 %cmp4, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* @ordering, align 4
  %6 = load i8*, i8** %optstring.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr7, i8** %optstring.addr, align 8
  br label %if.end.13

if.else.8:                                        ; preds = %if.else
  %7 = load i8*, i8** @posixly_correct, align 8
  %cmp9 = icmp ne i8* %7, null
  br i1 %cmp9, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.8
  store i32 0, i32* @ordering, align 4
  br label %if.end

if.else.12:                                       ; preds = %if.else.8
  store i32 1, i32* @ordering, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.11
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.6
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then
  %8 = load i8*, i8** %optstring.addr, align 8
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define internal void @exchange(i8** %argv) #0 {
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
  %0 = load i32, i32* @first_nonopt, align 4
  store i32 %0, i32* %bottom, align 4
  %1 = load i32, i32* @last_nonopt, align 4
  store i32 %1, i32* %middle, align 4
  %2 = load i32, i32* @gg_optind, align 4
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
  %60 = load i32, i32* @gg_optind, align 4
  %61 = load i32, i32* @last_nonopt, align 4
  %sub42 = sub nsw i32 %60, %61
  %62 = load i32, i32* @first_nonopt, align 4
  %add43 = add nsw i32 %62, %sub42
  store i32 %add43, i32* @first_nonopt, align 4
  %63 = load i32, i32* @gg_optind, align 4
  store i32 %63, i32* @last_nonopt, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @gg_getopt(i32 %argc, i8** %argv, i8* %optstring) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %optstring.addr = alloca i8*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* %optstring, i8** %optstring.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %2 = load i8*, i8** %optstring.addr, align 8
  %call = call i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.gg_option* null, i32* null, i32 0)
  ret i32 %call
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
