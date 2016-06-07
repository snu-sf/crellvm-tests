; ModuleID = 'dayhoff.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@squid_errno = external global i32, align 4
@.str = private unnamed_addr constant [32 x i8] c"BLOSUM Clustered Scoring Matrix\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"substitution matrix,\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"Failed to parse PAM matrix scale factor. Defaulting to ln(2)/2!\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ParsePAMFile(%struct._IO_FILE* %fp, i32*** %ret_pam, float* %ret_scale) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %ret_pam.addr = alloca i32***, align 8
  %ret_scale.addr = alloca float*, align 8
  %pam = alloca i32**, align 8
  %buffer = alloca [512 x i8], align 16
  %order = alloca [27 x i32], align 16
  %nsymbols = alloca i32, align 4
  %sptr = alloca i8*, align 8
  %idx = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %scale = alloca float, align 4
  %gotscale = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32*** %ret_pam, i32**** %ret_pam.addr, align 8
  store float* %ret_scale, float** %ret_scale.addr, align 8
  store i32 0, i32* %gotscale, align 4
  store float 0.000000e+00, float* %scale, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp = icmp eq %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* @squid_errno, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.end
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 512, %struct._IO_FILE* %1)
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.body
  store i32 2, i32* @squid_errno, align 4
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %do.body
  %arraydecay4 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call5 = call i8* @strstr(i8* %arraydecay4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0)) #5
  %cmp6 = icmp ne i8* %call5, null
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.3
  %arraydecay7 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call8 = call i8* @strchr(i8* %arraydecay7, i32 47) #5
  store i8* %call8, i8** %sptr, align 8
  %cmp9 = icmp ne i8* %call8, null
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %land.lhs.true
  %2 = load i8*, i8** %sptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8
  %3 = load i8*, i8** %sptr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %idxprom = sext i32 %conv to i64
  %call11 = call i16** @__ctype_b_loc() #6
  %5 = load i16*, i16** %call11, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv12 = zext i16 %6 to i32
  %and = and i32 %conv12, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.then.10
  store i32 5, i32* @squid_errno, align 4
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.10
  %call15 = call double @log(double 2.000000e+00) #7
  %7 = load i8*, i8** %sptr, align 8
  %call16 = call double @atof(i8* %7) #5
  %div = fdiv double %call15, %call16
  %conv17 = fptrunc double %div to float
  store float %conv17, float* %scale, align 4
  store i32 1, i32* %gotscale, align 4
  br label %if.end.34

if.else:                                          ; preds = %land.lhs.true, %if.end.3
  %arraydecay18 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call19 = call i8* @strstr(i8* %arraydecay18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0)) #5
  %cmp20 = icmp ne i8* %call19, null
  br i1 %cmp20, label %if.then.22, label %if.end.33

if.then.22:                                       ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %if.then.22
  %arraydecay23 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call24 = call i8* @strrchr(i8* %arraydecay23, i32 61) #5
  store i8* %call24, i8** %sptr, align 8
  %cmp25 = icmp ne i8* %call24, null
  br i1 %cmp25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %sptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 2
  store i8* %add.ptr, i8** %sptr, align 8
  %9 = load i8*, i8** %sptr, align 8
  %call27 = call i32 @IsReal(i8* %9)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %while.body
  %10 = load i8*, i8** %sptr, align 8
  %call30 = call double @atof(i8* %10) #5
  %conv31 = fptrunc double %call30 to float
  store float %conv31, float* %scale, align 4
  store i32 1, i32* %gotscale, align 4
  br label %while.end

if.end.32:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.29, %while.cond
  br label %if.end.33

if.end.33:                                        ; preds = %while.end, %if.else
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.14
  br label %do.cond

do.cond:                                          ; preds = %if.end.34
  %arraydecay35 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call36 = call i8* @strtok(i8* %arraydecay35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #7
  store i8* %call36, i8** %sptr, align 8
  %cmp37 = icmp eq i8* %call36, null
  br i1 %cmp37, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %11 = load i8*, i8** %sptr, align 8
  %12 = load i8, i8* %11, align 1
  %conv39 = sext i8 %12 to i32
  %cmp40 = icmp eq i32 %conv39, 35
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %13 = phi i1 [ true, %do.cond ], [ %cmp40, %lor.rhs ]
  br i1 %13, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  store i32 0, i32* %idx, align 4
  br label %do.body.42

do.body.42:                                       ; preds = %do.cond.58, %do.end
  %14 = load i8*, i8** %sptr, align 8
  %15 = load i8, i8* %14, align 1
  %conv43 = sext i8 %15 to i32
  %sub = sub nsw i32 %conv43, 65
  %16 = load i32, i32* %idx, align 4
  %idxprom44 = sext i32 %16 to i64
  %arrayidx45 = getelementptr inbounds [27 x i32], [27 x i32]* %order, i32 0, i64 %idxprom44
  store i32 %sub, i32* %arrayidx45, align 4
  %17 = load i32, i32* %idx, align 4
  %idxprom46 = sext i32 %17 to i64
  %arrayidx47 = getelementptr inbounds [27 x i32], [27 x i32]* %order, i32 0, i64 %idxprom46
  %18 = load i32, i32* %arrayidx47, align 4
  %cmp48 = icmp slt i32 %18, 0
  br i1 %cmp48, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.42
  %19 = load i32, i32* %idx, align 4
  %idxprom50 = sext i32 %19 to i64
  %arrayidx51 = getelementptr inbounds [27 x i32], [27 x i32]* %order, i32 0, i64 %idxprom50
  %20 = load i32, i32* %arrayidx51, align 4
  %cmp52 = icmp sgt i32 %20, 25
  br i1 %cmp52, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %lor.lhs.false, %do.body.42
  %21 = load i32, i32* %idx, align 4
  %idxprom55 = sext i32 %21 to i64
  %arrayidx56 = getelementptr inbounds [27 x i32], [27 x i32]* %order, i32 0, i64 %idxprom55
  store i32 26, i32* %arrayidx56, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %lor.lhs.false
  %22 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %idx, align 4
  br label %do.cond.58

do.cond.58:                                       ; preds = %if.end.57
  %call59 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #7
  store i8* %call59, i8** %sptr, align 8
  %cmp60 = icmp ne i8* %call59, null
  br i1 %cmp60, label %do.body.42, label %do.end.62

do.end.62:                                        ; preds = %do.cond.58
  %23 = load i32, i32* %idx, align 4
  store i32 %23, i32* %nsymbols, align 4
  %call63 = call noalias i8* @calloc(i64 27, i64 8) #7
  %24 = bitcast i8* %call63 to i32**
  store i32** %24, i32*** %pam, align 8
  %cmp64 = icmp eq i32** %24, null
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %do.end.62
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %do.end.62
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.67
  %25 = load i32, i32* %idx, align 4
  %cmp68 = icmp slt i32 %25, 27
  br i1 %cmp68, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call70 = call noalias i8* @calloc(i64 27, i64 4) #7
  %26 = bitcast i8* %call70 to i32*
  %27 = load i32, i32* %idx, align 4
  %idxprom71 = sext i32 %27 to i64
  %28 = load i32**, i32*** %pam, align 8
  %arrayidx72 = getelementptr inbounds i32*, i32** %28, i64 %idxprom71
  store i32* %26, i32** %arrayidx72, align 8
  %cmp73 = icmp eq i32* %26, null
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %for.body
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.76
  %29 = load i32, i32* %idx, align 4
  %inc77 = add nsw i32 %29, 1
  store i32 %inc77, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %row, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.129, %for.end
  %30 = load i32, i32* %row, align 4
  %31 = load i32, i32* %nsymbols, align 4
  %cmp79 = icmp slt i32 %30, %31
  br i1 %cmp79, label %for.body.81, label %for.end.131

for.body.81:                                      ; preds = %for.cond.78
  %arraydecay82 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call83 = call i8* @fgets(i8* %arraydecay82, i32 512, %struct._IO_FILE* %32)
  %cmp84 = icmp eq i8* %call83, null
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %for.body.81
  store i32 2, i32* @squid_errno, align 4
  store i32 0, i32* %retval
  br label %return

if.end.87:                                        ; preds = %for.body.81
  %arraydecay88 = getelementptr inbounds [512 x i8], [512 x i8]* %buffer, i32 0, i32 0
  %call89 = call i8* @strtok(i8* %arraydecay88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #7
  store i8* %call89, i8** %sptr, align 8
  %cmp90 = icmp eq i8* %call89, null
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.87
  store i32 2, i32* @squid_errno, align 4
  store i32 0, i32* %retval
  br label %return

if.end.93:                                        ; preds = %if.end.87
  store i32 0, i32* %col, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.126, %if.end.93
  %33 = load i32, i32* %col, align 4
  %34 = load i32, i32* %nsymbols, align 4
  %cmp95 = icmp slt i32 %33, %34
  br i1 %cmp95, label %for.body.97, label %for.end.128

for.body.97:                                      ; preds = %for.cond.94
  %35 = load i8*, i8** %sptr, align 8
  %cmp98 = icmp eq i8* %35, null
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %for.body.97
  store i32 2, i32* @squid_errno, align 4
  store i32 0, i32* %retval
  br label %return

if.end.101:                                       ; preds = %for.body.97
  %36 = load i8*, i8** %sptr, align 8
  %37 = load i8, i8* %36, align 1
  %conv102 = sext i8 %37 to i32
  %cmp103 = icmp eq i32 %conv102, 42
  br i1 %cmp103, label %if.then.113, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %if.end.101
  %38 = load i8*, i8** %sptr, align 8
  %39 = load i8, i8* %38, align 1
  %conv106 = sext i8 %39 to i32
  %idxprom107 = sext i32 %conv106 to i64
  %call108 = call i16** @__ctype_b_loc() #6
  %40 = load i16*, i16** %call108, align 8
  %arrayidx109 = getelementptr inbounds i16, i16* %40, i64 %idxprom107
  %41 = load i16, i16* %arrayidx109, align 2
  %conv110 = zext i16 %41 to i32
  %and111 = and i32 %conv110, 1024
  %tobool112 = icmp ne i32 %and111, 0
  br i1 %tobool112, label %if.then.113, label %if.else.114

if.then.113:                                      ; preds = %lor.lhs.false.105, %if.end.101
  %42 = load i32, i32* %col, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %col, align 4
  br label %if.end.124

if.else.114:                                      ; preds = %lor.lhs.false.105
  %43 = load i8*, i8** %sptr, align 8
  %call115 = call i32 @atoi(i8* %43) #5
  %44 = load i32, i32* %col, align 4
  %idxprom116 = sext i32 %44 to i64
  %arrayidx117 = getelementptr inbounds [27 x i32], [27 x i32]* %order, i32 0, i64 %idxprom116
  %45 = load i32, i32* %arrayidx117, align 4
  %idxprom118 = sext i32 %45 to i64
  %46 = load i32, i32* %row, align 4
  %idxprom119 = sext i32 %46 to i64
  %arrayidx120 = getelementptr inbounds [27 x i32], [27 x i32]* %order, i32 0, i64 %idxprom119
  %47 = load i32, i32* %arrayidx120, align 4
  %idxprom121 = sext i32 %47 to i64
  %48 = load i32**, i32*** %pam, align 8
  %arrayidx122 = getelementptr inbounds i32*, i32** %48, i64 %idxprom121
  %49 = load i32*, i32** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %49, i64 %idxprom118
  store i32 %call115, i32* %arrayidx123, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.114, %if.then.113
  %call125 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #7
  store i8* %call125, i8** %sptr, align 8
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.124
  %50 = load i32, i32* %col, align 4
  %inc127 = add nsw i32 %50, 1
  store i32 %inc127, i32* %col, align 4
  br label %for.cond.94

for.end.128:                                      ; preds = %for.cond.94
  br label %for.inc.129

for.inc.129:                                      ; preds = %for.end.128
  %51 = load i32, i32* %row, align 4
  %inc130 = add nsw i32 %51, 1
  store i32 %inc130, i32* %row, align 4
  br label %for.cond.78

for.end.131:                                      ; preds = %for.cond.78
  %52 = load float*, float** %ret_scale.addr, align 8
  %cmp132 = icmp ne float* %52, null
  br i1 %cmp132, label %if.then.134, label %if.end.142

if.then.134:                                      ; preds = %for.end.131
  %53 = load i32, i32* %gotscale, align 4
  %tobool135 = icmp ne i32 %53, 0
  br i1 %tobool135, label %if.then.136, label %if.else.137

if.then.136:                                      ; preds = %if.then.134
  %54 = load float, float* %scale, align 4
  %55 = load float*, float** %ret_scale.addr, align 8
  store float %54, float* %55, align 4
  br label %if.end.141

if.else.137:                                      ; preds = %if.then.134
  call void (i8*, ...) @Warn(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i32 0, i32 0))
  %call138 = call double @log(double 2.000000e+00) #7
  %div139 = fdiv double %call138, 2.000000e+00
  %conv140 = fptrunc double %div139 to float
  %56 = load float*, float** %ret_scale.addr, align 8
  store float %conv140, float* %56, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.137, %if.then.136
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %for.end.131
  %57 = load i32**, i32*** %pam, align 8
  %58 = load i32***, i32**** %ret_pam.addr, align 8
  store i32** %57, i32*** %58, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.142, %if.then.100, %if.then.92, %if.then.86, %if.then.13, %if.then.2, %if.then
  %59 = load i32, i32* %retval
  ret i32 %59
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind readonly
declare double @atof(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

declare i32 @IsReal(i8*) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #4

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #4

declare void @Die(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare void @Warn(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
