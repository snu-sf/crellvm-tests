; ModuleID = 'getopt.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt_s = type { i8*, i32, i32 }

@Getopt.optind = internal global i32 1, align 4
@Getopt.optptr = internal global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Option \22%s\22 is ambiguous; please be more specific.\0A%s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"No such option \22%s\22.\0A%s\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Option %s requires an argument\0A%s\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Option %s does not take an argument\0A%s\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"No such option \22%c\22.\0A%s\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Option %s requires an integer argument\0A%s\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Option %s requires a numerical argument\0A%s\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Option %s requires a single-character argument\0A%s\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Getopt(i32 %argc, i8** %argv, %struct.opt_s* %opt, i32 %nopts, i8* %usage, i32* %ret_optind, i8** %ret_optname, i8** %ret_optarg) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %opt.addr = alloca %struct.opt_s*, align 8
  %nopts.addr = alloca i32, align 4
  %usage.addr = alloca i8*, align 8
  %ret_optind.addr = alloca i32*, align 8
  %ret_optname.addr = alloca i8**, align 8
  %ret_optarg.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %arglen = alloca i32, align 4
  %nmatch = alloca i32, align 4
  %opti = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct.opt_s* %opt, %struct.opt_s** %opt.addr, align 8
  store i32 %nopts, i32* %nopts.addr, align 4
  store i8* %usage, i8** %usage.addr, align 8
  store i32* %ret_optind, i32** %ret_optind.addr, align 8
  store i8** %ret_optname, i8*** %ret_optname.addr, align 8
  store i8** %ret_optarg, i8*** %ret_optarg.addr, align 8
  store i32 0, i32* %opti, align 4
  %0 = load i32, i32* @Getopt.optind, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @Getopt.optind, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %5 to i32
  %cmp2 = icmp ne i32 %conv, 45
  br i1 %cmp2, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* @Getopt.optind, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %7, i64 %idxprom5
  %8 = load i8*, i8** %arrayidx6, align 8
  %call = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #3
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %entry
  %9 = load i32, i32* @Getopt.optind, align 4
  %10 = load i32*, i32** %ret_optind.addr, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i8**, i8*** %ret_optarg.addr, align 8
  store i8* null, i8** %11, align 8
  %12 = load i8**, i8*** %ret_optname.addr, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.4
  %13 = load i32, i32* @Getopt.optind, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load i8**, i8*** %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %14, i64 %idxprom9
  %15 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #3
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  %16 = load i32, i32* @Getopt.optind, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* @Getopt.optind, align 4
  %17 = load i32, i32* @Getopt.optind, align 4
  %18 = load i32*, i32** %ret_optind.addr, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i8**, i8*** %ret_optname.addr, align 8
  store i8* null, i8** %19, align 8
  %20 = load i8**, i8*** %ret_optarg.addr, align 8
  store i8* null, i8** %20, align 8
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %21 = load i8*, i8** @Getopt.optptr, align 8
  %cmp16 = icmp eq i8* %21, null
  br i1 %cmp16, label %land.lhs.true, label %if.else.118

land.lhs.true:                                    ; preds = %if.end.15
  %22 = load i32, i32* @Getopt.optind, align 4
  %idxprom18 = sext i32 %22 to i64
  %23 = load i8**, i8*** %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %23, i64 %idxprom18
  %24 = load i8*, i8** %arrayidx19, align 8
  %call20 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i64 2) #3
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.else.118

if.then.23:                                       ; preds = %land.lhs.true
  %25 = load i32, i32* @Getopt.optind, align 4
  %idxprom24 = sext i32 %25 to i64
  %26 = load i8**, i8*** %argv.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %26, i64 %idxprom24
  %27 = load i8*, i8** %arrayidx25, align 8
  %call26 = call i8* @strchr(i8* %27, i32 61) #3
  store i8* %call26, i8** @Getopt.optptr, align 8
  %cmp27 = icmp ne i8* %call26, null
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.23
  %28 = load i8*, i8** @Getopt.optptr, align 8
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** @Getopt.optptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** @Getopt.optptr, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.then.23
  %30 = load i32, i32* @Getopt.optind, align 4
  %idxprom31 = sext i32 %30 to i64
  %31 = load i8**, i8*** %argv.addr, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %31, i64 %idxprom31
  %32 = load i8*, i8** %arrayidx32, align 8
  %call33 = call i64 @strlen(i8* %32) #3
  %conv34 = trunc i64 %call33 to i32
  store i32 %conv34, i32* %arglen, align 4
  store i32 0, i32* %nmatch, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.30
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %nopts.addr, align 4
  %cmp35 = icmp slt i32 %33, %34
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %35 to i64
  %36 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %36, i64 %idxprom37
  %single = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx38, i32 0, i32 1
  %37 = load i32, i32* %single, align 4
  %cmp39 = icmp eq i32 %37, 0
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.61

land.lhs.true.41:                                 ; preds = %for.body
  %38 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %38 to i64
  %39 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %39, i64 %idxprom42
  %name = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx43, i32 0, i32 0
  %40 = load i8*, i8** %name, align 8
  %41 = load i32, i32* @Getopt.optind, align 4
  %idxprom44 = sext i32 %41 to i64
  %42 = load i8**, i8*** %argv.addr, align 8
  %arrayidx45 = getelementptr inbounds i8*, i8** %42, i64 %idxprom44
  %43 = load i8*, i8** %arrayidx45, align 8
  %44 = load i32, i32* %arglen, align 4
  %conv46 = sext i32 %44 to i64
  %call47 = call i32 @strncmp(i8* %40, i8* %43, i64 %conv46) #3
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.61

if.then.50:                                       ; preds = %land.lhs.true.41
  %45 = load i32, i32* %nmatch, align 4
  %inc51 = add nsw i32 %45, 1
  store i32 %inc51, i32* %nmatch, align 4
  %46 = load i32, i32* %i, align 4
  store i32 %46, i32* %opti, align 4
  %47 = load i32, i32* %arglen, align 4
  %conv52 = sext i32 %47 to i64
  %48 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %48 to i64
  %49 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx54 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %49, i64 %idxprom53
  %name55 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx54, i32 0, i32 0
  %50 = load i8*, i8** %name55, align 8
  %call56 = call i64 @strlen(i8* %50) #3
  %cmp57 = icmp eq i64 %conv52, %call56
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.then.50
  br label %for.end

if.end.60:                                        ; preds = %if.then.50
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %land.lhs.true.41, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.61
  %51 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %51, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.59, %for.cond
  %52 = load i32, i32* %nmatch, align 4
  %cmp63 = icmp sgt i32 %52, 1
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.76

land.lhs.true.65:                                 ; preds = %for.end
  %53 = load i32, i32* %arglen, align 4
  %conv66 = sext i32 %53 to i64
  %54 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %54 to i64
  %55 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx68 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %55, i64 %idxprom67
  %name69 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx68, i32 0, i32 0
  %56 = load i8*, i8** %name69, align 8
  %call70 = call i64 @strlen(i8* %56) #3
  %cmp71 = icmp ne i64 %conv66, %call70
  br i1 %cmp71, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %land.lhs.true.65
  %57 = load i32, i32* @Getopt.optind, align 4
  %idxprom74 = sext i32 %57 to i64
  %58 = load i8**, i8*** %argv.addr, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %58, i64 %idxprom74
  %59 = load i8*, i8** %arrayidx75, align 8
  %60 = load i8*, i8** %usage.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0), i8* %59, i8* %60)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %land.lhs.true.65, %for.end
  %61 = load i32, i32* %nmatch, align 4
  %cmp77 = icmp eq i32 %61, 0
  br i1 %cmp77, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %if.end.76
  %62 = load i32, i32* @Getopt.optind, align 4
  %idxprom80 = sext i32 %62 to i64
  %63 = load i8**, i8*** %argv.addr, align 8
  %arrayidx81 = getelementptr inbounds i8*, i8** %63, i64 %idxprom80
  %64 = load i8*, i8** %arrayidx81, align 8
  %65 = load i8*, i8** %usage.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* %64, i8* %65)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %if.end.76
  %66 = load i32, i32* %opti, align 4
  %idxprom83 = sext i32 %66 to i64
  %67 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx84 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %67, i64 %idxprom83
  %name85 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx84, i32 0, i32 0
  %68 = load i8*, i8** %name85, align 8
  %69 = load i8**, i8*** %ret_optname.addr, align 8
  store i8* %68, i8** %69, align 8
  %70 = load i32, i32* %opti, align 4
  %idxprom86 = sext i32 %70 to i64
  %71 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx87 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %71, i64 %idxprom86
  %argtype = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx87, i32 0, i32 2
  %72 = load i32, i32* %argtype, align 4
  %cmp88 = icmp ne i32 %72, 0
  br i1 %cmp88, label %if.then.90, label %if.else.108

if.then.90:                                       ; preds = %if.end.82
  %73 = load i8*, i8** @Getopt.optptr, align 8
  %cmp91 = icmp ne i8* %73, null
  br i1 %cmp91, label %if.then.93, label %if.else

if.then.93:                                       ; preds = %if.then.90
  %74 = load i8*, i8** @Getopt.optptr, align 8
  %75 = load i8**, i8*** %ret_optarg.addr, align 8
  store i8* %74, i8** %75, align 8
  store i8* null, i8** @Getopt.optptr, align 8
  %76 = load i32, i32* @Getopt.optind, align 4
  %inc94 = add nsw i32 %76, 1
  store i32 %inc94, i32* @Getopt.optind, align 4
  br label %if.end.107

if.else:                                          ; preds = %if.then.90
  %77 = load i32, i32* @Getopt.optind, align 4
  %add = add nsw i32 %77, 1
  %78 = load i32, i32* %argc.addr, align 4
  %cmp95 = icmp sge i32 %add, %78
  br i1 %cmp95, label %if.then.97, label %if.else.101

if.then.97:                                       ; preds = %if.else
  %79 = load i32, i32* %opti, align 4
  %idxprom98 = sext i32 %79 to i64
  %80 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx99 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %80, i64 %idxprom98
  %name100 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx99, i32 0, i32 0
  %81 = load i8*, i8** %name100, align 8
  %82 = load i8*, i8** %usage.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i8* %81, i8* %82)
  br label %if.end.106

if.else.101:                                      ; preds = %if.else
  %83 = load i32, i32* @Getopt.optind, align 4
  %add102 = add nsw i32 %83, 1
  %idxprom103 = sext i32 %add102 to i64
  %84 = load i8**, i8*** %argv.addr, align 8
  %arrayidx104 = getelementptr inbounds i8*, i8** %84, i64 %idxprom103
  %85 = load i8*, i8** %arrayidx104, align 8
  %86 = load i8**, i8*** %ret_optarg.addr, align 8
  store i8* %85, i8** %86, align 8
  %87 = load i32, i32* @Getopt.optind, align 4
  %add105 = add nsw i32 %87, 2
  store i32 %add105, i32* @Getopt.optind, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.101, %if.then.97
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.93
  br label %if.end.117

if.else.108:                                      ; preds = %if.end.82
  %88 = load i8*, i8** @Getopt.optptr, align 8
  %cmp109 = icmp ne i8* %88, null
  br i1 %cmp109, label %if.then.111, label %if.end.115

if.then.111:                                      ; preds = %if.else.108
  %89 = load i32, i32* %opti, align 4
  %idxprom112 = sext i32 %89 to i64
  %90 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx113 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %90, i64 %idxprom112
  %name114 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx113, i32 0, i32 0
  %91 = load i8*, i8** %name114, align 8
  %92 = load i8*, i8** %usage.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0), i8* %91, i8* %92)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.111, %if.else.108
  %93 = load i8**, i8*** %ret_optarg.addr, align 8
  store i8* null, i8** %93, align 8
  %94 = load i32, i32* @Getopt.optind, align 4
  %inc116 = add nsw i32 %94, 1
  store i32 %inc116, i32* @Getopt.optind, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.115, %if.end.107
  br label %if.end.195

if.else.118:                                      ; preds = %land.lhs.true, %if.end.15
  %95 = load i8*, i8** @Getopt.optptr, align 8
  %cmp119 = icmp eq i8* %95, null
  br i1 %cmp119, label %if.then.121, label %if.end.124

if.then.121:                                      ; preds = %if.else.118
  %96 = load i32, i32* @Getopt.optind, align 4
  %idxprom122 = sext i32 %96 to i64
  %97 = load i8**, i8*** %argv.addr, align 8
  %arrayidx123 = getelementptr inbounds i8*, i8** %97, i64 %idxprom122
  %98 = load i8*, i8** %arrayidx123, align 8
  %add.ptr = getelementptr inbounds i8, i8* %98, i64 1
  store i8* %add.ptr, i8** @Getopt.optptr, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.121, %if.else.118
  store i32 -1, i32* %opti, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.145, %if.end.124
  %99 = load i32, i32* %i, align 4
  %100 = load i32, i32* %nopts.addr, align 4
  %cmp126 = icmp slt i32 %99, %100
  br i1 %cmp126, label %for.body.128, label %for.end.147

for.body.128:                                     ; preds = %for.cond.125
  %101 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %101 to i64
  %102 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx130 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %102, i64 %idxprom129
  %single131 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx130, i32 0, i32 1
  %103 = load i32, i32* %single131, align 4
  %cmp132 = icmp eq i32 %103, 1
  br i1 %cmp132, label %land.lhs.true.134, label %if.end.144

land.lhs.true.134:                                ; preds = %for.body.128
  %104 = load i8*, i8** @Getopt.optptr, align 8
  %105 = load i8, i8* %104, align 1
  %conv135 = sext i8 %105 to i32
  %106 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %106 to i64
  %107 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx137 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %107, i64 %idxprom136
  %name138 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx137, i32 0, i32 0
  %108 = load i8*, i8** %name138, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %108, i64 1
  %109 = load i8, i8* %arrayidx139, align 1
  %conv140 = sext i8 %109 to i32
  %cmp141 = icmp eq i32 %conv135, %conv140
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %land.lhs.true.134
  %110 = load i32, i32* %i, align 4
  store i32 %110, i32* %opti, align 4
  br label %for.end.147

if.end.144:                                       ; preds = %land.lhs.true.134, %for.body.128
  br label %for.inc.145

for.inc.145:                                      ; preds = %if.end.144
  %111 = load i32, i32* %i, align 4
  %inc146 = add nsw i32 %111, 1
  store i32 %inc146, i32* %i, align 4
  br label %for.cond.125

for.end.147:                                      ; preds = %if.then.143, %for.cond.125
  %112 = load i32, i32* %opti, align 4
  %cmp148 = icmp eq i32 %112, -1
  br i1 %cmp148, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %for.end.147
  %113 = load i8*, i8** @Getopt.optptr, align 8
  %114 = load i8, i8* %113, align 1
  %conv151 = sext i8 %114 to i32
  %115 = load i8*, i8** %usage.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i32 %conv151, i8* %115)
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.150, %for.end.147
  %116 = load i32, i32* %opti, align 4
  %idxprom153 = sext i32 %116 to i64
  %117 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx154 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %117, i64 %idxprom153
  %name155 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx154, i32 0, i32 0
  %118 = load i8*, i8** %name155, align 8
  %119 = load i8**, i8*** %ret_optname.addr, align 8
  store i8* %118, i8** %119, align 8
  %120 = load i32, i32* %opti, align 4
  %idxprom156 = sext i32 %120 to i64
  %121 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx157 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %121, i64 %idxprom156
  %argtype158 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx157, i32 0, i32 2
  %122 = load i32, i32* %argtype158, align 4
  %cmp159 = icmp ne i32 %122, 0
  br i1 %cmp159, label %if.then.161, label %if.else.184

if.then.161:                                      ; preds = %if.end.152
  %123 = load i8*, i8** @Getopt.optptr, align 8
  %add.ptr162 = getelementptr inbounds i8, i8* %123, i64 1
  %124 = load i8, i8* %add.ptr162, align 1
  %conv163 = sext i8 %124 to i32
  %cmp164 = icmp ne i32 %conv163, 0
  br i1 %cmp164, label %if.then.166, label %if.else.169

if.then.166:                                      ; preds = %if.then.161
  %125 = load i8*, i8** @Getopt.optptr, align 8
  %add.ptr167 = getelementptr inbounds i8, i8* %125, i64 1
  %126 = load i8**, i8*** %ret_optarg.addr, align 8
  store i8* %add.ptr167, i8** %126, align 8
  %127 = load i32, i32* @Getopt.optind, align 4
  %inc168 = add nsw i32 %127, 1
  store i32 %inc168, i32* @Getopt.optind, align 4
  br label %if.end.183

if.else.169:                                      ; preds = %if.then.161
  %128 = load i32, i32* @Getopt.optind, align 4
  %add170 = add nsw i32 %128, 1
  %129 = load i32, i32* %argc.addr, align 4
  %cmp171 = icmp slt i32 %add170, %129
  br i1 %cmp171, label %if.then.173, label %if.else.178

if.then.173:                                      ; preds = %if.else.169
  %130 = load i32, i32* @Getopt.optind, align 4
  %add174 = add nsw i32 %130, 1
  %idxprom175 = sext i32 %add174 to i64
  %131 = load i8**, i8*** %argv.addr, align 8
  %arrayidx176 = getelementptr inbounds i8*, i8** %131, i64 %idxprom175
  %132 = load i8*, i8** %arrayidx176, align 8
  %133 = load i8**, i8*** %ret_optarg.addr, align 8
  store i8* %132, i8** %133, align 8
  %134 = load i32, i32* @Getopt.optind, align 4
  %add177 = add nsw i32 %134, 2
  store i32 %add177, i32* @Getopt.optind, align 4
  br label %if.end.182

if.else.178:                                      ; preds = %if.else.169
  %135 = load i32, i32* %opti, align 4
  %idxprom179 = sext i32 %135 to i64
  %136 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx180 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %136, i64 %idxprom179
  %name181 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx180, i32 0, i32 0
  %137 = load i8*, i8** %name181, align 8
  %138 = load i8*, i8** %usage.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i8* %137, i8* %138)
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.178, %if.then.173
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.then.166
  store i8* null, i8** @Getopt.optptr, align 8
  br label %if.end.194

if.else.184:                                      ; preds = %if.end.152
  %139 = load i8**, i8*** %ret_optarg.addr, align 8
  store i8* null, i8** %139, align 8
  %140 = load i8*, i8** @Getopt.optptr, align 8
  %add.ptr185 = getelementptr inbounds i8, i8* %140, i64 1
  %141 = load i8, i8* %add.ptr185, align 1
  %conv186 = sext i8 %141 to i32
  %cmp187 = icmp ne i32 %conv186, 0
  br i1 %cmp187, label %if.then.189, label %if.else.191

if.then.189:                                      ; preds = %if.else.184
  %142 = load i8*, i8** @Getopt.optptr, align 8
  %incdec.ptr190 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %incdec.ptr190, i8** @Getopt.optptr, align 8
  br label %if.end.193

if.else.191:                                      ; preds = %if.else.184
  %143 = load i32, i32* @Getopt.optind, align 4
  %inc192 = add nsw i32 %143, 1
  store i32 %inc192, i32* @Getopt.optind, align 4
  store i8* null, i8** @Getopt.optptr, align 8
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.191, %if.then.189
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.end.183
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.end.117
  %144 = load i32, i32* %opti, align 4
  %idxprom196 = sext i32 %144 to i64
  %145 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx197 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %145, i64 %idxprom196
  %argtype198 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx197, i32 0, i32 2
  %146 = load i32, i32* %argtype198, align 4
  %cmp199 = icmp ne i32 %146, 0
  br i1 %cmp199, label %if.then.201, label %if.end.243

if.then.201:                                      ; preds = %if.end.195
  %147 = load i32, i32* %opti, align 4
  %idxprom202 = sext i32 %147 to i64
  %148 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx203 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %148, i64 %idxprom202
  %argtype204 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx203, i32 0, i32 2
  %149 = load i32, i32* %argtype204, align 4
  %cmp205 = icmp eq i32 %149, 1
  br i1 %cmp205, label %land.lhs.true.207, label %if.else.213

land.lhs.true.207:                                ; preds = %if.then.201
  %150 = load i8**, i8*** %ret_optarg.addr, align 8
  %151 = load i8*, i8** %150, align 8
  %call208 = call i32 @IsInt(i8* %151)
  %tobool = icmp ne i32 %call208, 0
  br i1 %tobool, label %if.else.213, label %if.then.209

if.then.209:                                      ; preds = %land.lhs.true.207
  %152 = load i32, i32* %opti, align 4
  %idxprom210 = sext i32 %152 to i64
  %153 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx211 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %153, i64 %idxprom210
  %name212 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx211, i32 0, i32 0
  %154 = load i8*, i8** %name212, align 8
  %155 = load i8*, i8** %usage.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0), i8* %154, i8* %155)
  br label %if.end.242

if.else.213:                                      ; preds = %land.lhs.true.207, %if.then.201
  %156 = load i32, i32* %opti, align 4
  %idxprom214 = sext i32 %156 to i64
  %157 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx215 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %157, i64 %idxprom214
  %argtype216 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx215, i32 0, i32 2
  %158 = load i32, i32* %argtype216, align 4
  %cmp217 = icmp eq i32 %158, 2
  br i1 %cmp217, label %land.lhs.true.219, label %if.else.226

land.lhs.true.219:                                ; preds = %if.else.213
  %159 = load i8**, i8*** %ret_optarg.addr, align 8
  %160 = load i8*, i8** %159, align 8
  %call220 = call i32 @IsReal(i8* %160)
  %tobool221 = icmp ne i32 %call220, 0
  br i1 %tobool221, label %if.else.226, label %if.then.222

if.then.222:                                      ; preds = %land.lhs.true.219
  %161 = load i32, i32* %opti, align 4
  %idxprom223 = sext i32 %161 to i64
  %162 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx224 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %162, i64 %idxprom223
  %name225 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx224, i32 0, i32 0
  %163 = load i8*, i8** %name225, align 8
  %164 = load i8*, i8** %usage.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0), i8* %163, i8* %164)
  br label %if.end.241

if.else.226:                                      ; preds = %land.lhs.true.219, %if.else.213
  %165 = load i32, i32* %opti, align 4
  %idxprom227 = sext i32 %165 to i64
  %166 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx228 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %166, i64 %idxprom227
  %argtype229 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx228, i32 0, i32 2
  %167 = load i32, i32* %argtype229, align 4
  %cmp230 = icmp eq i32 %167, 3
  br i1 %cmp230, label %land.lhs.true.232, label %if.end.240

land.lhs.true.232:                                ; preds = %if.else.226
  %168 = load i8**, i8*** %ret_optarg.addr, align 8
  %169 = load i8*, i8** %168, align 8
  %call233 = call i64 @strlen(i8* %169) #3
  %cmp234 = icmp ne i64 %call233, 1
  br i1 %cmp234, label %if.then.236, label %if.end.240

if.then.236:                                      ; preds = %land.lhs.true.232
  %170 = load i32, i32* %opti, align 4
  %idxprom237 = sext i32 %170 to i64
  %171 = load %struct.opt_s*, %struct.opt_s** %opt.addr, align 8
  %arrayidx238 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %171, i64 %idxprom237
  %name239 = getelementptr inbounds %struct.opt_s, %struct.opt_s* %arrayidx238, i32 0, i32 0
  %172 = load i8*, i8** %name239, align 8
  %173 = load i8*, i8** %usage.addr, align 8
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0), i8* %172, i8* %173)
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.236, %land.lhs.true.232, %if.else.226
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.then.222
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.then.209
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.end.195
  %174 = load i32, i32* @Getopt.optind, align 4
  %175 = load i32*, i32** %ret_optind.addr, align 8
  store i32 %174, i32* %175, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.243, %if.then.14, %if.then
  %176 = load i32, i32* %retval
  ret i32 %176
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare void @Die(i8*, ...) #2

declare i32 @IsInt(i8*) #2

declare i32 @IsReal(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
