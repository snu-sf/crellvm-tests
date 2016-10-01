; ModuleID = './MultiSource.Benchmarks.Prolangs-C/85.compiler.lexer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.entry = type { i8*, i32, i32, i32, i32, i32 }

@stdin = external global %struct._IO_FILE*, align 8
@lineno = common global i32 0, align 4
@NextTokenval = common global i32 0, align 4
@lexbuf = common global [128 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [50 x i8] c"Indentifier cannot begin with a double underscore\00", align 1
@lookahead = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"improperly formed indentifier\00", align 1
@LocalIndex = common global i32 0, align 4
@GlobalIndex = common global i32 0, align 4
@LocalTable = common global [100 x %struct.entry] zeroinitializer, align 16
@GlobalTable = common global [100 x %struct.entry] zeroinitializer, align 16
@NextFtokenval = common global float 0.000000e+00, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Exponents must be integer values\00", align 1
@tokenval = common global i32 0, align 4
@ftokenval = common global float 0.000000e+00, align 4
@FloatFlag = common global i32 0, align 4
@ErrorFlag = common global i32 0, align 4
@DecCount = common global i32 0, align 4
@offset = common global i32 0, align 4
@LabelCounter = common global i32 0, align 4
@NumberC = common global i32 0, align 4
@NextLookahead = common global i32 0, align 4
@PreviousLookahead = common global i32 0, align 4
@PreviousTokenval = common global i32 0, align 4
@PreviousFtokenval = common global float 0.000000e+00, align 4
@Scope = common global i32 0, align 4
@ReturnLabel = common global i32 0, align 4
@CallReturnAddr = common global i32 0, align 4
@FuncNameIndex = common global i32 0, align 4
@ArrayParsed = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @lexan() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca i32, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.38
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %t, align 4
  %1 = load i32, i32* %t, align 4
  %cmp = icmp eq i32 %1, 32
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %2 = load i32, i32* %t, align 4
  %cmp1 = icmp eq i32 %2, 9
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %if.end.38

if.else:                                          ; preds = %lor.lhs.false
  %3 = load i32, i32* %t, align 4
  %cmp2 = icmp eq i32 %3, 10
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %4 = load i32, i32* @lineno, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @lineno, align 4
  br label %if.end

if.else.4:                                        ; preds = %if.else
  %5 = load i32, i32* %t, align 4
  %idxprom = sext i32 %5 to i64
  %call5 = call i16** @__ctype_b_loc() #3
  %6 = load i16*, i16** %call5, align 8
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.9, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %if.else.4
  %8 = load i32, i32* %t, align 4
  %cmp7 = icmp eq i32 %8, 46
  br i1 %cmp7, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %lor.lhs.false.6, %if.else.4
  %9 = load i32, i32* %t, align 4
  %call10 = call i32 @Number(i32 %9)
  store i32 %call10, i32* %retval
  br label %return

if.else.11:                                       ; preds = %lor.lhs.false.6
  %10 = load i32, i32* %t, align 4
  %idxprom12 = sext i32 %10 to i64
  %call13 = call i16** @__ctype_b_loc() #3
  %11 = load i16*, i16** %call13, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %11, i64 %idxprom12
  %12 = load i16, i16* %arrayidx14, align 2
  %conv15 = zext i16 %12 to i32
  %and16 = and i32 %conv15, 1024
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.21, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %if.else.11
  %13 = load i32, i32* %t, align 4
  %cmp19 = icmp eq i32 %13, 95
  br i1 %cmp19, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %lor.lhs.false.18, %if.else.11
  %14 = load i32, i32* %t, align 4
  %call22 = call i32 @Indentifier(i32 %14)
  store i32 %call22, i32* %retval
  br label %return

if.else.23:                                       ; preds = %lor.lhs.false.18
  %15 = load i32, i32* %t, align 4
  %cmp24 = icmp eq i32 %15, 61
  br i1 %cmp24, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.else.23
  %16 = load i32, i32* %t, align 4
  %call27 = call i32 @Equal(i32 %16)
  store i32 %call27, i32* %retval
  br label %return

if.else.28:                                       ; preds = %if.else.23
  %17 = load i32, i32* %t, align 4
  %cmp29 = icmp eq i32 %17, 33
  br i1 %cmp29, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.else.28
  %18 = load i32, i32* %t, align 4
  %call32 = call i32 @Nequal(i32 %18)
  store i32 %call32, i32* %retval
  br label %return

if.else.33:                                       ; preds = %if.else.28
  %19 = load i32, i32* %t, align 4
  %cmp34 = icmp eq i32 %19, -1
  br i1 %cmp34, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.else.33
  store i32 260, i32* %retval
  br label %return

if.else.37:                                       ; preds = %if.else.33
  store i32 -1, i32* @NextTokenval, align 4
  %20 = load i32, i32* %t, align 4
  store i32 %20, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.3
  br label %if.end.38

if.end.38:                                        ; preds = %if.end, %if.then
  br label %while.body

return:                                           ; preds = %if.else.37, %if.then.36, %if.then.31, %if.then.26, %if.then.21, %if.then.9
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind uwtable
define i32 @Number(i32 %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %DecimalAsInt = alloca i32, align 4
  %Exponent = alloca i32, align 4
  %NumOfZeros = alloca i32, align 4
  store i32 %t, i32* %t.addr, align 4
  store float 0.000000e+00, float* @NextFtokenval, align 4
  store i32 0, i32* @NextTokenval, align 4
  %0 = load i32, i32* %t.addr, align 4
  %idxprom = sext i32 %0 to i64
  %call = call i16** @__ctype_b_loc() #3
  %1 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %t.addr, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call1 = call i32 @ungetc(i32 %3, %struct._IO_FILE* %4)
  %call2 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* @NextTokenval)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call3 = call i32 @_IO_getc(%struct._IO_FILE* %5)
  store i32 %call3, i32* %t.addr, align 4
  %6 = load i32, i32* %t.addr, align 4
  %cmp = icmp ne i32 %6, 46
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load i32, i32* %t.addr, align 4
  %cmp5 = icmp ne i32 %7, 101
  br i1 %cmp5, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %8 = load i32, i32* %t.addr, align 4
  %cmp8 = icmp ne i32 %8, 69
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %land.lhs.true.7
  %9 = load i32, i32* %t.addr, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call11 = call i32 @ungetc(i32 %9, %struct._IO_FILE* %10)
  store i32 256, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.7, %land.lhs.true, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %11 = load i32, i32* %t.addr, align 4
  %cmp13 = icmp eq i32 %11, 46
  br i1 %cmp13, label %if.then.15, label %if.end.48

if.then.15:                                       ; preds = %if.end.12
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call16 = call i32 @_IO_getc(%struct._IO_FILE* %12)
  store i32 %call16, i32* %t.addr, align 4
  store i32 0, i32* %NumOfZeros, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.15
  %13 = load i32, i32* %t.addr, align 4
  %cmp17 = icmp eq i32 %13, 48
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %NumOfZeros, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %NumOfZeros, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call19 = call i32 @_IO_getc(%struct._IO_FILE* %15)
  store i32 %call19, i32* %t.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %t.addr, align 4
  %idxprom20 = sext i32 %16 to i64
  %call21 = call i16** @__ctype_b_loc() #3
  %17 = load i16*, i16** %call21, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %17, i64 %idxprom20
  %18 = load i16, i16* %arrayidx22, align 2
  %conv23 = zext i16 %18 to i32
  %and24 = and i32 %conv23, 2048
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.47

if.then.26:                                       ; preds = %while.end
  %19 = load i32, i32* %t.addr, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call27 = call i32 @ungetc(i32 %19, %struct._IO_FILE* %20)
  %call28 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %DecimalAsInt)
  %21 = load i32, i32* %DecimalAsInt, align 4
  %conv29 = sitofp i32 %21 to float
  store float %conv29, float* @NextFtokenval, align 4
  br label %while.cond.30

while.cond.30:                                    ; preds = %while.body.34, %if.then.26
  %22 = load float, float* @NextFtokenval, align 4
  %conv31 = fpext float %22 to double
  %cmp32 = fcmp oge double %conv31, 1.000000e+00
  br i1 %cmp32, label %while.body.34, label %while.end.35

while.body.34:                                    ; preds = %while.cond.30
  %23 = load float, float* @NextFtokenval, align 4
  %div = fdiv float %23, 1.000000e+01
  store float %div, float* @NextFtokenval, align 4
  br label %while.cond.30

while.end.35:                                     ; preds = %while.cond.30
  %24 = load i32, i32* %NumOfZeros, align 4
  %cmp36 = icmp sgt i32 %24, 0
  br i1 %cmp36, label %if.then.38, label %if.end.45

if.then.38:                                       ; preds = %while.end.35
  br label %while.cond.39

while.cond.39:                                    ; preds = %while.body.42, %if.then.38
  %25 = load i32, i32* %NumOfZeros, align 4
  %cmp40 = icmp sgt i32 %25, 0
  br i1 %cmp40, label %while.body.42, label %while.end.44

while.body.42:                                    ; preds = %while.cond.39
  %26 = load float, float* @NextFtokenval, align 4
  %div43 = fdiv float %26, 1.000000e+01
  store float %div43, float* @NextFtokenval, align 4
  %27 = load i32, i32* %NumOfZeros, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %NumOfZeros, align 4
  br label %while.cond.39

while.end.44:                                     ; preds = %while.cond.39
  br label %if.end.45

if.end.45:                                        ; preds = %while.end.44, %while.end.35
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call46 = call i32 @_IO_getc(%struct._IO_FILE* %28)
  store i32 %call46, i32* %t.addr, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.45, %while.end
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.12
  %29 = load i32, i32* @NextTokenval, align 4
  %conv49 = sitofp i32 %29 to float
  %30 = load float, float* @NextFtokenval, align 4
  %add = fadd float %30, %conv49
  store float %add, float* @NextFtokenval, align 4
  %31 = load i32, i32* %t.addr, align 4
  %cmp50 = icmp eq i32 %31, 101
  br i1 %cmp50, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.48
  %32 = load i32, i32* %t.addr, align 4
  %cmp52 = icmp eq i32 %32, 69
  br i1 %cmp52, label %if.then.54, label %if.end.94

if.then.54:                                       ; preds = %lor.lhs.false, %if.end.48
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call55 = call i32 @_IO_getc(%struct._IO_FILE* %33)
  store i32 %call55, i32* %t.addr, align 4
  %34 = load i32, i32* %t.addr, align 4
  %cmp56 = icmp eq i32 %34, 43
  br i1 %cmp56, label %if.then.68, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %if.then.54
  %35 = load i32, i32* %t.addr, align 4
  %cmp59 = icmp eq i32 %35, 45
  br i1 %cmp59, label %if.then.68, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %lor.lhs.false.58
  %36 = load i32, i32* %t.addr, align 4
  %idxprom62 = sext i32 %36 to i64
  %call63 = call i16** @__ctype_b_loc() #3
  %37 = load i16*, i16** %call63, align 8
  %arrayidx64 = getelementptr inbounds i16, i16* %37, i64 %idxprom62
  %38 = load i16, i16* %arrayidx64, align 2
  %conv65 = zext i16 %38 to i32
  %and66 = and i32 %conv65, 2048
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.93

if.then.68:                                       ; preds = %lor.lhs.false.61, %lor.lhs.false.58, %if.then.54
  %39 = load i32, i32* %t.addr, align 4
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call69 = call i32 @ungetc(i32 %39, %struct._IO_FILE* %40)
  %call70 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %Exponent)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call71 = call i32 @_IO_getc(%struct._IO_FILE* %41)
  store i32 %call71, i32* %t.addr, align 4
  %42 = load i32, i32* %t.addr, align 4
  %cmp72 = icmp eq i32 %42, 46
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.then.68
  call void @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0))
  %43 = load i32, i32* @lookahead, align 4
  store i32 %43, i32* %retval
  br label %return

if.end.75:                                        ; preds = %if.then.68
  %44 = load i32, i32* %Exponent, align 4
  %cmp76 = icmp sgt i32 %44, 0
  br i1 %cmp76, label %if.then.78, label %if.else

if.then.78:                                       ; preds = %if.end.75
  br label %while.cond.79

while.cond.79:                                    ; preds = %while.body.82, %if.then.78
  %45 = load i32, i32* %Exponent, align 4
  %cmp80 = icmp sgt i32 %45, 0
  br i1 %cmp80, label %while.body.82, label %while.end.84

while.body.82:                                    ; preds = %while.cond.79
  %46 = load float, float* @NextFtokenval, align 4
  %mul = fmul float %46, 1.000000e+01
  store float %mul, float* @NextFtokenval, align 4
  %47 = load i32, i32* %Exponent, align 4
  %dec83 = add nsw i32 %47, -1
  store i32 %dec83, i32* %Exponent, align 4
  br label %while.cond.79

while.end.84:                                     ; preds = %while.cond.79
  br label %if.end.92

if.else:                                          ; preds = %if.end.75
  br label %while.cond.85

while.cond.85:                                    ; preds = %while.body.88, %if.else
  %48 = load i32, i32* %Exponent, align 4
  %cmp86 = icmp slt i32 %48, 0
  br i1 %cmp86, label %while.body.88, label %while.end.91

while.body.88:                                    ; preds = %while.cond.85
  %49 = load float, float* @NextFtokenval, align 4
  %div89 = fdiv float %49, 1.000000e+01
  store float %div89, float* @NextFtokenval, align 4
  %50 = load i32, i32* %Exponent, align 4
  %inc90 = add nsw i32 %50, 1
  store i32 %inc90, i32* %Exponent, align 4
  br label %while.cond.85

while.end.91:                                     ; preds = %while.cond.85
  br label %if.end.92

if.end.92:                                        ; preds = %while.end.91, %while.end.84
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %lor.lhs.false.61
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %lor.lhs.false
  %51 = load i32, i32* %t.addr, align 4
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call95 = call i32 @ungetc(i32 %51, %struct._IO_FILE* %52)
  store i32 2001, i32* %retval
  br label %return

return:                                           ; preds = %if.end.94, %if.then.74, %if.then.10
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define i32 @Indentifier(i32 %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 %t, i32* %t.addr, align 4
  store i32 0, i32* %b, align 4
  %0 = load i32, i32* %t.addr, align 4
  %cmp = icmp eq i32 %0, 95
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %t.addr, align 4
  %conv = trunc i32 %1 to i8
  %2 = load i32, i32* %b, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* @lexbuf, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %3 = load i32, i32* %b, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %b, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %4)
  store i32 %call, i32* %t.addr, align 4
  %5 = load i32, i32* %t.addr, align 4
  %cmp1 = icmp eq i32 %5, 95
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0))
  %6 = load i32, i32* @lookahead, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %7 = load i32, i32* %t.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %call6 = call i16** @__ctype_b_loc() #3
  %8 = load i16*, i16** %call6, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %8, i64 %idxprom5
  %9 = load i16, i16* %arrayidx7, align 2
  %conv8 = zext i16 %9 to i32
  %and = and i32 %conv8, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.4
  %10 = load i32, i32* %t.addr, align 4
  %conv10 = trunc i32 %10 to i8
  %11 = load i32, i32* %b, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [128 x i8], [128 x i8]* @lexbuf, i32 0, i64 %idxprom11
  store i8 %conv10, i8* %arrayidx12, align 1
  %12 = load i32, i32* %b, align 4
  %inc13 = add nsw i32 %12, 1
  store i32 %inc13, i32* %b, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call14 = call i32 @_IO_getc(%struct._IO_FILE* %13)
  store i32 %call14, i32* %t.addr, align 4
  br label %if.end.15

if.else:                                          ; preds = %if.end.4
  call void @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  %14 = load i32, i32* @lookahead, align 4
  store i32 %14, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.15
  %15 = load i32, i32* %t.addr, align 4
  %idxprom16 = sext i32 %15 to i64
  %call17 = call i16** @__ctype_b_loc() #3
  %16 = load i16*, i16** %call17, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %16, i64 %idxprom16
  %17 = load i16, i16* %arrayidx18, align 2
  %conv19 = zext i16 %17 to i32
  %and20 = and i32 %conv19, 1024
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %18 = load i32, i32* %t.addr, align 4
  %idxprom22 = sext i32 %18 to i64
  %call23 = call i16** @__ctype_b_loc() #3
  %19 = load i16*, i16** %call23, align 8
  %arrayidx24 = getelementptr inbounds i16, i16* %19, i64 %idxprom22
  %20 = load i16, i16* %arrayidx24, align 2
  %conv25 = zext i16 %20 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %21 = load i32, i32* %t.addr, align 4
  %cmp28 = icmp eq i32 %21, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %22 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp28, %lor.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %23 = load i32, i32* %t.addr, align 4
  %conv30 = trunc i32 %23 to i8
  %24 = load i32, i32* %b, align 4
  %idxprom31 = sext i32 %24 to i64
  %arrayidx32 = getelementptr inbounds [128 x i8], [128 x i8]* @lexbuf, i32 0, i64 %idxprom31
  store i8 %conv30, i8* %arrayidx32, align 1
  %25 = load i32, i32* %b, align 4
  %inc33 = add nsw i32 %25, 1
  store i32 %inc33, i32* %b, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call34 = call i32 @_IO_getc(%struct._IO_FILE* %26)
  store i32 %call34, i32* %t.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %27 = load i32, i32* %t.addr, align 4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call35 = call i32 @ungetc(i32 %27, %struct._IO_FILE* %28)
  %29 = load i32, i32* %b, align 4
  %idxprom36 = sext i32 %29 to i64
  %arrayidx37 = getelementptr inbounds [128 x i8], [128 x i8]* @lexbuf, i32 0, i64 %idxprom36
  store i8 0, i8* %arrayidx37, align 1
  %call38 = call i32 @LocalLookup(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @lexbuf, i32 0, i32 0))
  store i32 %call38, i32* @LocalIndex, align 4
  %call39 = call i32 @GlobalLookup(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @lexbuf, i32 0, i32 0))
  store i32 %call39, i32* @GlobalIndex, align 4
  %30 = load i32, i32* @LocalIndex, align 4
  %tobool40 = icmp ne i32 %30, 0
  br i1 %tobool40, label %if.then.41, label %if.else.44

if.then.41:                                       ; preds = %while.end
  %31 = load i32, i32* @LocalIndex, align 4
  %idxprom42 = sext i32 %31 to i64
  %arrayidx43 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom42
  %token = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx43, i32 0, i32 1
  %32 = load i32, i32* %token, align 4
  store i32 %32, i32* %retval
  br label %return

if.else.44:                                       ; preds = %while.end
  %33 = load i32, i32* @GlobalIndex, align 4
  %tobool45 = icmp ne i32 %33, 0
  br i1 %tobool45, label %if.then.46, label %if.else.50

if.then.46:                                       ; preds = %if.else.44
  %34 = load i32, i32* @GlobalIndex, align 4
  %idxprom47 = sext i32 %34 to i64
  %arrayidx48 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom47
  %token49 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx48, i32 0, i32 1
  %35 = load i32, i32* %token49, align 4
  store i32 %35, i32* %retval
  br label %return

if.else.50:                                       ; preds = %if.else.44
  store i32 259, i32* %retval
  br label %return

return:                                           ; preds = %if.else.50, %if.then.46, %if.then.41, %if.else, %if.then.3
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define i32 @Equal(i32 %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca i32, align 4
  store i32 %t, i32* %t.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %t.addr, align 4
  %1 = load i32, i32* %t.addr, align 4
  %cmp = icmp eq i32 %1, 61
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2012, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %t.addr, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call1 = call i32 @ungetc(i32 %2, %struct._IO_FILE* %3)
  store i32 -1, i32* @NextTokenval, align 4
  store i32 61, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @Nequal(i32 %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca i32, align 4
  store i32 %t, i32* %t.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %t.addr, align 4
  %1 = load i32, i32* %t.addr, align 4
  %cmp = icmp eq i32 %1, 61
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2013, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %t.addr, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call1 = call i32 @ungetc(i32 %2, %struct._IO_FILE* %3)
  store i32 -1, i32* @NextTokenval, align 4
  store i32 33, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare void @error(i8*) #1

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

declare i32 @LocalLookup(i8*) #1

declare i32 @GlobalLookup(i8*) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
