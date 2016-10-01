; ModuleID = './MultiSource.Benchmarks.Prolangs-C/279.bison.getopt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@optarg = global i8* null, align 8
@optind = global i32 0, align 4
@opterr = global i32 1, align 4
@last_nonopt = internal global i32 0, align 4
@first_nonopt = internal global i32 0, align 4
@nextchar = internal global i8* null, align 8
@ordering = internal global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"_POSIX_OPTION_ORDER\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: unrecognized option, character code 0%o\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: unrecognized option `-%c'\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"%s: no argument for `-%c' option\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @getopt(i32 %argc, i8** %argv, i8* %optstring) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %optstring.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  %temp = alloca i8*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* %optstring, i8** %optstring.addr, align 8
  %0 = load i32, i32* @optind, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  store i32 1, i32* @optind, align 4
  store i32 1, i32* @last_nonopt, align 4
  store i32 1, i32* @first_nonopt, align 4
  store i8* null, i8** @nextchar, align 8
  %1 = load i8*, i8** %optstring.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 45
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  store i32 2, i32* @ordering, align 4
  br label %if.end.8

if.else:                                          ; preds = %if.then
  %call = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0)) #4
  %cmp4 = icmp ne i8* %call, null
  br i1 %cmp4, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* @ordering, align 4
  br label %if.end

if.else.7:                                        ; preds = %if.else
  store i32 1, i32* @ordering, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %3 = load i8*, i8** @nextchar, align 8
  %cmp10 = icmp eq i8* %3, null
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %4 = load i8*, i8** @nextchar, align 8
  %5 = load i8, i8* %4, align 1
  %conv12 = sext i8 %5 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.97

if.then.15:                                       ; preds = %lor.lhs.false, %if.end.9
  %6 = load i32, i32* @ordering, align 4
  %cmp16 = icmp eq i32 %6, 1
  br i1 %cmp16, label %if.then.18, label %if.end.43

if.then.18:                                       ; preds = %if.then.15
  %7 = load i32, i32* @first_nonopt, align 4
  %8 = load i32, i32* @last_nonopt, align 4
  %cmp19 = icmp ne i32 %7, %8
  br i1 %cmp19, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %if.then.18
  %9 = load i32, i32* @last_nonopt, align 4
  %10 = load i32, i32* @optind, align 4
  %cmp21 = icmp ne i32 %9, %10
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true
  %11 = load i8**, i8*** %argv.addr, align 8
  call void @exchange(i8** %11)
  br label %if.end.29

if.else.24:                                       ; preds = %land.lhs.true, %if.then.18
  %12 = load i32, i32* @last_nonopt, align 4
  %13 = load i32, i32* @optind, align 4
  %cmp25 = icmp ne i32 %12, %13
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else.24
  %14 = load i32, i32* @optind, align 4
  store i32 %14, i32* @first_nonopt, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.else.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.23
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.29
  %15 = load i32, i32* @optind, align 4
  %16 = load i32, i32* %argc.addr, align 4
  %cmp30 = icmp slt i32 %15, %16
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load i32, i32* @optind, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i8**, i8*** %argv.addr, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %18, i64 %idxprom
  %19 = load i8*, i8** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %20 to i32
  %cmp35 = icmp ne i32 %conv34, 45
  br i1 %cmp35, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %21 = load i32, i32* @optind, align 4
  %idxprom37 = sext i32 %21 to i64
  %22 = load i8**, i8*** %argv.addr, align 8
  %arrayidx38 = getelementptr inbounds i8*, i8** %22, i64 %idxprom37
  %23 = load i8*, i8** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %24 to i32
  %cmp41 = icmp eq i32 %conv40, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %25 = phi i1 [ true, %land.rhs ], [ %cmp41, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %26 = phi i1 [ false, %while.cond ], [ %25, %lor.end ]
  br i1 %26, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %27 = load i32, i32* @optind, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* @optind, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %28 = load i32, i32* @optind, align 4
  store i32 %28, i32* @last_nonopt, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %while.end, %if.then.15
  %29 = load i32, i32* @optind, align 4
  %30 = load i32, i32* %argc.addr, align 4
  %cmp44 = icmp ne i32 %29, %30
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.64

land.lhs.true.46:                                 ; preds = %if.end.43
  %31 = load i32, i32* @optind, align 4
  %idxprom47 = sext i32 %31 to i64
  %32 = load i8**, i8*** %argv.addr, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %32, i64 %idxprom47
  %33 = load i8*, i8** %arrayidx48, align 8
  %call49 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #5
  %tobool = icmp ne i32 %call49, 0
  br i1 %tobool, label %if.end.64, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true.46
  %34 = load i32, i32* @optind, align 4
  %inc51 = add nsw i32 %34, 1
  store i32 %inc51, i32* @optind, align 4
  %35 = load i32, i32* @first_nonopt, align 4
  %36 = load i32, i32* @last_nonopt, align 4
  %cmp52 = icmp ne i32 %35, %36
  br i1 %cmp52, label %land.lhs.true.54, label %if.else.58

land.lhs.true.54:                                 ; preds = %if.then.50
  %37 = load i32, i32* @last_nonopt, align 4
  %38 = load i32, i32* @optind, align 4
  %cmp55 = icmp ne i32 %37, %38
  br i1 %cmp55, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.54
  %39 = load i8**, i8*** %argv.addr, align 8
  call void @exchange(i8** %39)
  br label %if.end.63

if.else.58:                                       ; preds = %land.lhs.true.54, %if.then.50
  %40 = load i32, i32* @first_nonopt, align 4
  %41 = load i32, i32* @last_nonopt, align 4
  %cmp59 = icmp eq i32 %40, %41
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.else.58
  %42 = load i32, i32* @optind, align 4
  store i32 %42, i32* @first_nonopt, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.else.58
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.57
  %43 = load i32, i32* %argc.addr, align 4
  store i32 %43, i32* @last_nonopt, align 4
  %44 = load i32, i32* %argc.addr, align 4
  store i32 %44, i32* @optind, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %land.lhs.true.46, %if.end.43
  %45 = load i32, i32* @optind, align 4
  %46 = load i32, i32* %argc.addr, align 4
  %cmp65 = icmp eq i32 %45, %46
  br i1 %cmp65, label %if.then.67, label %if.end.72

if.then.67:                                       ; preds = %if.end.64
  %47 = load i32, i32* @first_nonopt, align 4
  %48 = load i32, i32* @last_nonopt, align 4
  %cmp68 = icmp ne i32 %47, %48
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.then.67
  %49 = load i32, i32* @first_nonopt, align 4
  store i32 %49, i32* @optind, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.then.67
  store i32 -1, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.end.64
  %50 = load i32, i32* @optind, align 4
  %idxprom73 = sext i32 %50 to i64
  %51 = load i8**, i8*** %argv.addr, align 8
  %arrayidx74 = getelementptr inbounds i8*, i8** %51, i64 %idxprom73
  %52 = load i8*, i8** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %52, i64 0
  %53 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %53 to i32
  %cmp77 = icmp ne i32 %conv76, 45
  br i1 %cmp77, label %if.then.86, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %if.end.72
  %54 = load i32, i32* @optind, align 4
  %idxprom80 = sext i32 %54 to i64
  %55 = load i8**, i8*** %argv.addr, align 8
  %arrayidx81 = getelementptr inbounds i8*, i8** %55, i64 %idxprom80
  %56 = load i8*, i8** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %56, i64 1
  %57 = load i8, i8* %arrayidx82, align 1
  %conv83 = sext i8 %57 to i32
  %cmp84 = icmp eq i32 %conv83, 0
  br i1 %cmp84, label %if.then.86, label %if.end.94

if.then.86:                                       ; preds = %lor.lhs.false.79, %if.end.72
  %58 = load i32, i32* @ordering, align 4
  %cmp87 = icmp eq i32 %58, 0
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.then.86
  store i32 -1, i32* %retval
  br label %return

if.end.90:                                        ; preds = %if.then.86
  %59 = load i32, i32* @optind, align 4
  %inc91 = add nsw i32 %59, 1
  store i32 %inc91, i32* @optind, align 4
  %idxprom92 = sext i32 %59 to i64
  %60 = load i8**, i8*** %argv.addr, align 8
  %arrayidx93 = getelementptr inbounds i8*, i8** %60, i64 %idxprom92
  %61 = load i8*, i8** %arrayidx93, align 8
  store i8* %61, i8** @optarg, align 8
  store i32 0, i32* %retval
  br label %return

if.end.94:                                        ; preds = %lor.lhs.false.79
  %62 = load i32, i32* @optind, align 4
  %idxprom95 = sext i32 %62 to i64
  %63 = load i8**, i8*** %argv.addr, align 8
  %arrayidx96 = getelementptr inbounds i8*, i8** %63, i64 %idxprom95
  %64 = load i8*, i8** %arrayidx96, align 8
  %add.ptr = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %add.ptr, i8** @nextchar, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.94, %lor.lhs.false
  %65 = load i8*, i8** @nextchar, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr, i8** @nextchar, align 8
  %66 = load i8, i8* %65, align 1
  store i8 %66, i8* %c, align 1
  %67 = load i8*, i8** %optstring.addr, align 8
  %68 = load i8, i8* %c, align 1
  %conv98 = sext i8 %68 to i32
  %call99 = call i8* @strchr(i8* %67, i32 %conv98) #5
  store i8* %call99, i8** %temp, align 8
  %69 = load i8*, i8** @nextchar, align 8
  %70 = load i8, i8* %69, align 1
  %conv100 = sext i8 %70 to i32
  %cmp101 = icmp eq i32 %conv100, 0
  br i1 %cmp101, label %if.then.103, label %if.end.105

if.then.103:                                      ; preds = %if.end.97
  %71 = load i32, i32* @optind, align 4
  %inc104 = add nsw i32 %71, 1
  store i32 %inc104, i32* @optind, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.103, %if.end.97
  %72 = load i8*, i8** %temp, align 8
  %cmp106 = icmp eq i8* %72, null
  br i1 %cmp106, label %if.then.112, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %if.end.105
  %73 = load i8, i8* %c, align 1
  %conv109 = sext i8 %73 to i32
  %cmp110 = icmp eq i32 %conv109, 58
  br i1 %cmp110, label %if.then.112, label %if.end.133

if.then.112:                                      ; preds = %lor.lhs.false.108, %if.end.105
  %74 = load i32, i32* @opterr, align 4
  %cmp113 = icmp ne i32 %74, 0
  br i1 %cmp113, label %if.then.115, label %if.end.132

if.then.115:                                      ; preds = %if.then.112
  %75 = load i8, i8* %c, align 1
  %conv116 = sext i8 %75 to i32
  %cmp117 = icmp slt i32 %conv116, 32
  br i1 %cmp117, label %if.then.123, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %if.then.115
  %76 = load i8, i8* %c, align 1
  %conv120 = sext i8 %76 to i32
  %cmp121 = icmp sge i32 %conv120, 127
  br i1 %cmp121, label %if.then.123, label %if.else.127

if.then.123:                                      ; preds = %lor.lhs.false.119, %if.then.115
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = load i8**, i8*** %argv.addr, align 8
  %arrayidx124 = getelementptr inbounds i8*, i8** %78, i64 0
  %79 = load i8*, i8** %arrayidx124, align 8
  %80 = load i8, i8* %c, align 1
  %conv125 = sext i8 %80 to i32
  %call126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0), i8* %79, i32 %conv125)
  br label %if.end.131

if.else.127:                                      ; preds = %lor.lhs.false.119
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %82 = load i8**, i8*** %argv.addr, align 8
  %arrayidx128 = getelementptr inbounds i8*, i8** %82, i64 0
  %83 = load i8*, i8** %arrayidx128, align 8
  %84 = load i8, i8* %c, align 1
  %conv129 = sext i8 %84 to i32
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* %83, i32 %conv129)
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.127, %if.then.123
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.112
  store i32 63, i32* %retval
  br label %return

if.end.133:                                       ; preds = %lor.lhs.false.108
  %85 = load i8*, i8** %temp, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %85, i64 1
  %86 = load i8, i8* %arrayidx134, align 1
  %conv135 = sext i8 %86 to i32
  %cmp136 = icmp eq i32 %conv135, 58
  br i1 %cmp136, label %if.then.138, label %if.end.175

if.then.138:                                      ; preds = %if.end.133
  %87 = load i8*, i8** %temp, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %87, i64 2
  %88 = load i8, i8* %arrayidx139, align 1
  %conv140 = sext i8 %88 to i32
  %cmp141 = icmp eq i32 %conv140, 58
  br i1 %cmp141, label %if.then.143, label %if.else.151

if.then.143:                                      ; preds = %if.then.138
  %89 = load i8*, i8** @nextchar, align 8
  %90 = load i8, i8* %89, align 1
  %conv144 = sext i8 %90 to i32
  %cmp145 = icmp ne i32 %conv144, 0
  br i1 %cmp145, label %if.then.147, label %if.else.149

if.then.147:                                      ; preds = %if.then.143
  %91 = load i8*, i8** @nextchar, align 8
  store i8* %91, i8** @optarg, align 8
  %92 = load i32, i32* @optind, align 4
  %inc148 = add nsw i32 %92, 1
  store i32 %inc148, i32* @optind, align 4
  br label %if.end.150

if.else.149:                                      ; preds = %if.then.143
  store i8* null, i8** @optarg, align 8
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.149, %if.then.147
  store i8* null, i8** @nextchar, align 8
  br label %if.end.174

if.else.151:                                      ; preds = %if.then.138
  %93 = load i8*, i8** @nextchar, align 8
  %94 = load i8, i8* %93, align 1
  %conv152 = sext i8 %94 to i32
  %cmp153 = icmp ne i32 %conv152, 0
  br i1 %cmp153, label %if.then.155, label %if.else.157

if.then.155:                                      ; preds = %if.else.151
  %95 = load i8*, i8** @nextchar, align 8
  store i8* %95, i8** @optarg, align 8
  %96 = load i32, i32* @optind, align 4
  %inc156 = add nsw i32 %96, 1
  store i32 %inc156, i32* @optind, align 4
  br label %if.end.173

if.else.157:                                      ; preds = %if.else.151
  %97 = load i32, i32* @optind, align 4
  %98 = load i32, i32* %argc.addr, align 4
  %cmp158 = icmp eq i32 %97, %98
  br i1 %cmp158, label %if.then.160, label %if.else.168

if.then.160:                                      ; preds = %if.else.157
  %99 = load i32, i32* @opterr, align 4
  %cmp161 = icmp ne i32 %99, 0
  br i1 %cmp161, label %if.then.163, label %if.end.167

if.then.163:                                      ; preds = %if.then.160
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %101 = load i8**, i8*** %argv.addr, align 8
  %arrayidx164 = getelementptr inbounds i8*, i8** %101, i64 0
  %102 = load i8*, i8** %arrayidx164, align 8
  %103 = load i8, i8* %c, align 1
  %conv165 = sext i8 %103 to i32
  %call166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i8* %102, i32 %conv165)
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.163, %if.then.160
  store i8* null, i8** @optarg, align 8
  br label %if.end.172

if.else.168:                                      ; preds = %if.else.157
  %104 = load i32, i32* @optind, align 4
  %inc169 = add nsw i32 %104, 1
  store i32 %inc169, i32* @optind, align 4
  %idxprom170 = sext i32 %104 to i64
  %105 = load i8**, i8*** %argv.addr, align 8
  %arrayidx171 = getelementptr inbounds i8*, i8** %105, i64 %idxprom170
  %106 = load i8*, i8** %arrayidx171, align 8
  store i8* %106, i8** @optarg, align 8
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.168, %if.end.167
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.then.155
  store i8* null, i8** @nextchar, align 8
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end.150
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.end.133
  %107 = load i8, i8* %c, align 1
  %conv176 = sext i8 %107 to i32
  store i32 %conv176, i32* %retval
  br label %return

return:                                           ; preds = %if.end.175, %if.end.132, %if.end.90, %if.then.89, %if.end.71
  %108 = load i32, i32* %retval
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @exchange(i8** %argv) #0 {
entry:
  %argv.addr = alloca i8**, align 8
  %nonopts_size = alloca i32, align 4
  %temp = alloca i8**, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* @last_nonopt, align 4
  %1 = load i32, i32* @first_nonopt, align 4
  %sub = sub nsw i32 %0, %1
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %nonopts_size, align 4
  %2 = load i32, i32* %nonopts_size, align 4
  %conv2 = sext i32 %2 to i64
  %call = call noalias i8* @malloc(i64 %conv2) #4
  %3 = bitcast i8* %call to i8**
  store i8** %3, i8*** %temp, align 8
  %4 = load i8**, i8*** %temp, align 8
  %5 = bitcast i8** %4 to i8*
  %6 = load i32, i32* @first_nonopt, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = bitcast i8** %arrayidx to i8*
  %9 = load i32, i32* %nonopts_size, align 4
  %conv3 = sext i32 %9 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %8, i64 %conv3, i32 8, i1 false)
  %10 = load i32, i32* @first_nonopt, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %11, i64 %idxprom4
  %12 = bitcast i8** %arrayidx5 to i8*
  %13 = load i32, i32* @last_nonopt, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load i8**, i8*** %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %14, i64 %idxprom6
  %15 = bitcast i8** %arrayidx7 to i8*
  %16 = load i32, i32* @optind, align 4
  %17 = load i32, i32* @last_nonopt, align 4
  %sub8 = sub nsw i32 %16, %17
  %conv9 = sext i32 %sub8 to i64
  %mul10 = mul i64 %conv9, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %15, i64 %mul10, i32 8, i1 false)
  %18 = load i32, i32* @first_nonopt, align 4
  %19 = load i32, i32* @optind, align 4
  %add = add nsw i32 %18, %19
  %20 = load i32, i32* @last_nonopt, align 4
  %sub11 = sub nsw i32 %add, %20
  %idxprom12 = sext i32 %sub11 to i64
  %21 = load i8**, i8*** %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %21, i64 %idxprom12
  %22 = bitcast i8** %arrayidx13 to i8*
  %23 = load i8**, i8*** %temp, align 8
  %24 = bitcast i8** %23 to i8*
  %25 = load i32, i32* %nonopts_size, align 4
  %conv14 = sext i32 %25 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %24, i64 %conv14, i32 8, i1 false)
  %26 = load i32, i32* @optind, align 4
  %27 = load i32, i32* @last_nonopt, align 4
  %sub15 = sub nsw i32 %26, %27
  %28 = load i32, i32* @first_nonopt, align 4
  %add16 = add nsw i32 %28, %sub15
  store i32 %add16, i32* @first_nonopt, align 4
  %29 = load i32, i32* @optind, align 4
  store i32 %29, i32* @last_nonopt, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
