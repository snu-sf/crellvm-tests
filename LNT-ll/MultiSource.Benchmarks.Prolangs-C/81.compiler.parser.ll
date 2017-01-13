; ModuleID = './MultiSource.Benchmarks.Prolangs-C/81.compiler.parser.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i8*, i32, i32, i32, i32, i32 }

@ErrorFlag = common global i32 0, align 4
@lookahead = common global i32 0, align 4
@FloatFlag = common global i32 0, align 4
@PreviousLookahead = common global i32 0, align 4
@tokenval = common global i32 0, align 4
@PreviousTokenval = common global i32 0, align 4
@ftokenval = common global float 0.000000e+00, align 4
@PreviousFtokenval = common global float 0.000000e+00, align 4
@NextLookahead = common global i32 0, align 4
@NextTokenval = common global i32 0, align 4
@NextFtokenval = common global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [39 x i8] c"Missing ; at end of previous statement\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Missing right parenthesis or illegal operator\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\0A In default of match lookahead = %d\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@ArrayParsed = common global i32 0, align 4
@LocalIndex = common global i32 0, align 4
@GlobalIndex = common global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"Compiler error, array lexeme not found in any table\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Missing ']'\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Array index must be an integer value\00", align 1
@Scope = common global i32 0, align 4
@LabelCounter = common global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@lexbuf = common global [128 x i8] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [58 x i8] c"Compiler error! global lexeme found in local symbol table\00", align 1
@GlobalTable = common global [100 x %struct.entry] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [54 x i8] c"Attempting to define a function name as an identifier\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"Attempting to define a global variable twice\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Improperly formed array definition\00", align 1
@DecCount = common global i32 0, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"Expected an identifier or array\00", align 1
@LocalTable = common global [100 x %struct.entry] zeroinitializer, align 16
@.str.13 = private unnamed_addr constant [55 x i8] c"Compiler error, variable lexeme not found in any table\00", align 1
@FuncNameIndex = common global i32 0, align 4
@ReturnLabel = common global i32 0, align 4
@CallReturnAddr = common global i32 0, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"Function called is to a local variable\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"Function called is to a global variable\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"attempting to use an undefined variable\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"Compiler error, lexeme was not found in any table\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"using an undefined array referance\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"Illegal operator\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Unexpected token found\00", align 1
@offset = common global i32 0, align 4
@.str.21 = private unnamed_addr constant [50 x i8] c"Invalid function defintion structure. Expected ID\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"Compiler error, function name in local symbol table\00", align 1
@.str.23 = private unnamed_addr constant [60 x i8] c"Attempting to redefine a global variable as a function name\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Redefining a function.\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"Compiler error, functiondef is confused\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"Function main cannot have parameters.\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"Improperly formed parameter list\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"Cannot use a function name as parameter\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Trying to use a prameter twice\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"Trying to use a parameter twice\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"Cannot use a function name as a parameter\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"Cannot pass an array as a parameter\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"Trying to redefine a variable\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"Array declarations requires an integer within []\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"badly formed declarations\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"can only use ID  or ARRAAY\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"Unexpected end of file\00", align 1
@lineno = common global i32 0, align 4
@NumberC = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @term() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca i32, align 4
  %leftExpr = alloca i32, align 4
  %rightExpr = alloca i32, align 4
  %call = call i32 @factor()
  store i32 %call, i32* %leftExpr, align 4
  %0 = load i32, i32* @ErrorFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -99, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.35, %if.end
  %1 = load i32, i32* @lookahead, align 4
  %cmp = icmp eq i32 %1, 42
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %2 = load i32, i32* @lookahead, align 4
  %cmp1 = icmp eq i32 %2, 47
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %3 = phi i1 [ true, %while.cond ], [ %cmp1, %lor.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %4 = load i32, i32* @lookahead, align 4
  store i32 %4, i32* %t, align 4
  %5 = load i32, i32* @lookahead, align 4
  call void @match(i32 %5)
  %6 = load i32, i32* @ErrorFlag, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %while.body
  store i32 -99, i32* %retval
  br label %return

if.end.4:                                         ; preds = %while.body
  %call5 = call i32 @factor()
  store i32 %call5, i32* %rightExpr, align 4
  %7 = load i32, i32* @ErrorFlag, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 -99, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %8 = load i32, i32* %leftExpr, align 4
  %9 = load i32, i32* %rightExpr, align 4
  %cmp9 = icmp eq i32 %8, %9
  br i1 %cmp9, label %if.then.10, label %if.else.22

if.then.10:                                       ; preds = %if.end.8
  %10 = load i32, i32* %leftExpr, align 4
  %tobool11 = icmp ne i32 %10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.16

if.then.12:                                       ; preds = %if.then.10
  %11 = load i32, i32* %t, align 4
  %cmp13 = icmp eq i32 %11, 42
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.12
  call void @emit(i32 2034, i32 0, float 0.000000e+00)
  br label %if.end.15

if.else:                                          ; preds = %if.then.12
  call void @emit(i32 2036, i32 0, float 0.000000e+00)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  store i32 1, i32* %leftExpr, align 4
  br label %if.end.21

if.else.16:                                       ; preds = %if.then.10
  %12 = load i32, i32* %t, align 4
  %cmp17 = icmp eq i32 %12, 42
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else.16
  call void @emit(i32 2033, i32 0, float 0.000000e+00)
  br label %if.end.20

if.else.19:                                       ; preds = %if.else.16
  call void @emit(i32 2035, i32 0, float 0.000000e+00)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.18
  store i32 0, i32* %leftExpr, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.15
  br label %if.end.35

if.else.22:                                       ; preds = %if.end.8
  %13 = load i32, i32* %leftExpr, align 4
  %tobool23 = icmp ne i32 %13, 0
  br i1 %tobool23, label %if.then.24, label %if.else.29

if.then.24:                                       ; preds = %if.else.22
  call void @emit(i32 2003, i32 0, float 0.000000e+00)
  %14 = load i32, i32* %t, align 4
  %cmp25 = icmp eq i32 %14, 42
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.then.24
  call void @emit(i32 2034, i32 0, float 0.000000e+00)
  br label %if.end.28

if.else.27:                                       ; preds = %if.then.24
  call void @emit(i32 2036, i32 0, float 0.000000e+00)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.26
  br label %if.end.34

if.else.29:                                       ; preds = %if.else.22
  call void @emit(i32 256, i32 1, float 0.000000e+00)
  call void @emit(i32 2028, i32 0, float 0.000000e+00)
  call void @emit(i32 2003, i32 0, float 0.000000e+00)
  call void @emit(i32 256, i32 1, float 0.000000e+00)
  call void @emit(i32 2023, i32 0, float 0.000000e+00)
  %15 = load i32, i32* %t, align 4
  %cmp30 = icmp eq i32 %15, 42
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.else.29
  call void @emit(i32 2034, i32 0, float 0.000000e+00)
  br label %if.end.33

if.else.32:                                       ; preds = %if.else.29
  call void @emit(i32 2036, i32 0, float 0.000000e+00)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.28
  store i32 1, i32* %leftExpr, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.21
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %16 = load i32, i32* @FloatFlag, align 4
  %tobool36 = icmp ne i32 %16, 0
  br i1 %tobool36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %while.end
  store i32 1, i32* %retval
  br label %return

if.else.38:                                       ; preds = %while.end
  %17 = load i32, i32* %leftExpr, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %if.else.38, %if.then.37, %if.then.7, %if.then.3, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @factor() #0 {
entry:
  %retval = alloca i32, align 4
  %temp = alloca i32, align 4
  %tempLocalIndex = alloca i32, align 4
  %tempGlobalIndex = alloca i32, align 4
  %templexbuf = alloca [30 x i8], align 16
  %0 = load i32, i32* @lookahead, align 4
  switch i32 %0, label %sw.default.229 [
    i32 40, label %sw.bb
    i32 256, label %sw.bb.36
    i32 2001, label %sw.bb.40
    i32 259, label %sw.bb.44
    i32 2006, label %sw.bb.125
    i32 45, label %sw.bb.155
    i32 2043, label %sw.bb.167
    i32 2044, label %sw.bb.177
    i32 2045, label %sw.bb.187
    i32 2046, label %sw.bb.203
    i32 2011, label %sw.bb.219
  ]

sw.bb:                                            ; preds = %entry
  call void @match(i32 40)
  %1 = load i32, i32* @ErrorFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -99, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %2 = load i32, i32* @lookahead, align 4
  switch i32 %2, label %sw.default [
    i32 2002, label %sw.bb.1
    i32 2003, label %sw.bb.14
  ]

sw.bb.1:                                          ; preds = %if.end
  call void @match(i32 2002)
  %3 = load i32, i32* @ErrorFlag, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %sw.bb.1
  store i32 -99, i32* %retval
  br label %return

if.end.4:                                         ; preds = %sw.bb.1
  call void @match(i32 41)
  %4 = load i32, i32* @ErrorFlag, align 4
  %tobool5 = icmp ne i32 %4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 -99, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %call = call i32 @factor()
  store i32 %call, i32* %temp, align 4
  %5 = load i32, i32* @ErrorFlag, align 4
  %tobool8 = icmp ne i32 %5, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store i32 -99, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %6 = load i32, i32* %temp, align 4
  %tobool11 = icmp ne i32 %6, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  call void @emit(i32 2002, i32 0, float 0.000000e+00)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  store i32 0, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %if.end
  call void @match(i32 2003)
  %7 = load i32, i32* @ErrorFlag, align 4
  %tobool15 = icmp ne i32 %7, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %sw.bb.14
  store i32 -99, i32* %retval
  br label %return

if.end.17:                                        ; preds = %sw.bb.14
  call void @match(i32 41)
  %8 = load i32, i32* @ErrorFlag, align 4
  %tobool18 = icmp ne i32 %8, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  store i32 -99, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.17
  %call21 = call i32 @factor()
  store i32 %call21, i32* %temp, align 4
  %9 = load i32, i32* @ErrorFlag, align 4
  %tobool22 = icmp ne i32 %9, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  store i32 -99, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  %10 = load i32, i32* %temp, align 4
  %tobool25 = icmp ne i32 %10, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.end.24
  call void @emit(i32 2003, i32 0, float 0.000000e+00)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.24
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 0, i32* @FloatFlag, align 4
  call void @exprAssg()
  %11 = load i32, i32* @ErrorFlag, align 4
  %tobool28 = icmp ne i32 %11, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %sw.default
  store i32 -99, i32* %retval
  br label %return

if.end.30:                                        ; preds = %sw.default
  call void @match(i32 41)
  %12 = load i32, i32* @ErrorFlag, align 4
  %tobool31 = icmp ne i32 %12, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.30
  store i32 -99, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end.30
  %13 = load i32, i32* @FloatFlag, align 4
  %tobool34 = icmp ne i32 %13, 0
  br i1 %tobool34, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.end.33
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.33
  store i32 0, i32* %retval
  br label %return

sw.bb.36:                                         ; preds = %entry
  %14 = load i32, i32* @tokenval, align 4
  call void @emit(i32 256, i32 %14, float 0.000000e+00)
  call void @match(i32 256)
  %15 = load i32, i32* @ErrorFlag, align 4
  %tobool37 = icmp ne i32 %15, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %sw.bb.36
  store i32 -99, i32* %retval
  br label %return

if.end.39:                                        ; preds = %sw.bb.36
  store i32 0, i32* %retval
  br label %return

sw.bb.40:                                         ; preds = %entry
  %16 = load i32, i32* @tokenval, align 4
  %17 = load float, float* @ftokenval, align 4
  call void @emit(i32 2001, i32 %16, float %17)
  call void @match(i32 2001)
  %18 = load i32, i32* @ErrorFlag, align 4
  %tobool41 = icmp ne i32 %18, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %sw.bb.40
  store i32 -99, i32* %retval
  br label %return

if.end.43:                                        ; preds = %sw.bb.40
  store i32 1, i32* %retval
  br label %return

sw.bb.44:                                         ; preds = %entry
  %19 = load i32, i32* @NextLookahead, align 4
  %cmp = icmp eq i32 %19, 40
  br i1 %cmp, label %if.then.45, label %if.else.93

if.then.45:                                       ; preds = %sw.bb.44
  %20 = load i32, i32* @LocalIndex, align 4
  store i32 %20, i32* %tempLocalIndex, align 4
  %21 = load i32, i32* @GlobalIndex, align 4
  store i32 %21, i32* %tempGlobalIndex, align 4
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %templexbuf, i32 0, i32 0
  %call46 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @lexbuf, i32 0, i32 0)) #4
  call void @match(i32 259)
  %22 = load i32, i32* @ErrorFlag, align 4
  %tobool47 = icmp ne i32 %22, 0
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.45
  store i32 -99, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.then.45
  call void @match(i32 40)
  %23 = load i32, i32* @ErrorFlag, align 4
  %tobool50 = icmp ne i32 %23, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.49
  store i32 -99, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.49
  call void @ExprList()
  %24 = load i32, i32* @ErrorFlag, align 4
  %tobool53 = icmp ne i32 %24, 0
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.52
  store i32 -99, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.end.52
  call void @match(i32 41)
  %25 = load i32, i32* @ErrorFlag, align 4
  %tobool56 = icmp ne i32 %25, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.55
  store i32 -99, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.end.55
  %26 = load i32, i32* @LabelCounter, align 4
  store i32 %26, i32* @CallReturnAddr, align 4
  %27 = load i32, i32* @LabelCounter, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* @LabelCounter, align 4
  %28 = load i32, i32* @CallReturnAddr, align 4
  call void @emit(i32 2015, i32 %28, float 0.000000e+00)
  %29 = load i32, i32* @FuncNameIndex, align 4
  call void @emit(i32 2059, i32 %29, float 0.000000e+00)
  call void @emit(i32 2060, i32 0, float 0.000000e+00)
  %30 = load i32, i32* %tempLocalIndex, align 4
  %tobool59 = icmp ne i32 %30, 0
  br i1 %tobool59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %if.end.58
  call void @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i32 0, i32 0))
  store i32 -99, i32* %retval
  br label %return

if.else.61:                                       ; preds = %if.end.58
  %31 = load i32, i32* %tempGlobalIndex, align 4
  %tobool62 = icmp ne i32 %31, 0
  br i1 %tobool62, label %if.then.63, label %if.else.70

if.then.63:                                       ; preds = %if.else.61
  %32 = load i32, i32* %tempGlobalIndex, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom
  %function = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx, i32 0, i32 4
  %33 = load i32, i32* %function, align 4
  %tobool64 = icmp ne i32 %33, 0
  br i1 %tobool64, label %if.else.66, label %if.then.65

if.then.65:                                       ; preds = %if.then.63
  call void @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i32 0, i32 0))
  store i32 -99, i32* %retval
  br label %return

if.else.66:                                       ; preds = %if.then.63
  %34 = load i32, i32* %tempGlobalIndex, align 4
  %idxprom67 = sext i32 %34 to i64
  %arrayidx68 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom67
  %functionlabel = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx68, i32 0, i32 5
  %35 = load i32, i32* %functionlabel, align 4
  call void @emit(i32 2015, i32 %35, float 0.000000e+00)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66
  br label %if.end.80

if.else.70:                                       ; preds = %if.else.61
  %arraydecay71 = getelementptr inbounds [30 x i8], [30 x i8]* %templexbuf, i32 0, i32 0
  %36 = load i32, i32* @LabelCounter, align 4
  %call72 = call i32 @GlobalInsert(i8* %arraydecay71, i32 259, i32 2002, i32 0, i32 1, i32 %36)
  store i32 %call72, i32* %tempGlobalIndex, align 4
  %37 = load i32, i32* @ErrorFlag, align 4
  %tobool73 = icmp ne i32 %37, 0
  br i1 %tobool73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.else.70
  store i32 0, i32* @ErrorFlag, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %if.else.70
  %38 = load i32, i32* @LabelCounter, align 4
  %inc76 = add nsw i32 %38, 1
  store i32 %inc76, i32* @LabelCounter, align 4
  %39 = load i32, i32* %tempGlobalIndex, align 4
  %idxprom77 = sext i32 %39 to i64
  %arrayidx78 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom77
  %functionlabel79 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx78, i32 0, i32 5
  %40 = load i32, i32* %functionlabel79, align 4
  call void @emit(i32 2015, i32 %40, float 0.000000e+00)
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.75, %if.end.69
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80
  call void @emit(i32 2018, i32 0, float 0.000000e+00)
  %41 = load i32, i32* @CallReturnAddr, align 4
  call void @emit(i32 2014, i32 %41, float 0.000000e+00)
  %42 = load i32, i32* @FuncNameIndex, align 4
  call void @emit(i32 2059, i32 %42, float 0.000000e+00)
  call void @emit(i32 2061, i32 0, float 0.000000e+00)
  %43 = load i32, i32* %tempGlobalIndex, align 4
  %idxprom82 = sext i32 %43 to i64
  %arrayidx83 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom82
  %function84 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx83, i32 0, i32 4
  %44 = load i32, i32* %function84, align 4
  %cmp85 = icmp slt i32 %44, 0
  br i1 %cmp85, label %if.then.86, label %if.else.92

if.then.86:                                       ; preds = %if.end.81
  %45 = load i32, i32* %tempGlobalIndex, align 4
  %idxprom87 = sext i32 %45 to i64
  %arrayidx88 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom87
  %type = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx88, i32 0, i32 2
  %46 = load i32, i32* %type, align 4
  %cmp89 = icmp eq i32 %46, 2002
  br i1 %cmp89, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %if.then.86
  store i32 0, i32* %retval
  br label %return

if.else.91:                                       ; preds = %if.then.86
  store i32 1, i32* %retval
  br label %return

if.else.92:                                       ; preds = %if.end.81
  store i32 0, i32* %retval
  br label %return

if.else.93:                                       ; preds = %sw.bb.44
  %47 = load i32, i32* @LocalIndex, align 4
  %tobool94 = icmp ne i32 %47, 0
  br i1 %tobool94, label %if.end.97, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.93
  %48 = load i32, i32* @GlobalIndex, align 4
  %tobool95 = icmp ne i32 %48, 0
  br i1 %tobool95, label %if.end.97, label %if.then.96

if.then.96:                                       ; preds = %lor.lhs.false
  call void @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0))
  store i32 -99, i32* %retval
  br label %return

if.end.97:                                        ; preds = %lor.lhs.false, %if.else.93
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97
  %49 = load i32, i32* @LocalIndex, align 4
  %tobool99 = icmp ne i32 %49, 0
  br i1 %tobool99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %if.end.98
  %50 = load i32, i32* @LocalIndex, align 4
  call void @emit(i32 2051, i32 %50, float 0.000000e+00)
  br label %if.end.106

if.else.101:                                      ; preds = %if.end.98
  %51 = load i32, i32* @GlobalIndex, align 4
  %tobool102 = icmp ne i32 %51, 0
  br i1 %tobool102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %if.else.101
  %52 = load i32, i32* @GlobalIndex, align 4
  call void @emit(i32 2052, i32 %52, float 0.000000e+00)
  br label %if.end.105

if.else.104:                                      ; preds = %if.else.101
  call void @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i32 0, i32 0))
  br label %sw.epilog

if.end.105:                                       ; preds = %if.then.103
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.100
  %53 = load i32, i32* @LocalIndex, align 4
  store i32 %53, i32* %tempLocalIndex, align 4
  %54 = load i32, i32* @GlobalIndex, align 4
  store i32 %54, i32* %tempGlobalIndex, align 4
  call void @match(i32 259)
  %55 = load i32, i32* @ErrorFlag, align 4
  %tobool107 = icmp ne i32 %55, 0
  br i1 %tobool107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.106
  store i32 -99, i32* %retval
  br label %return

if.end.109:                                       ; preds = %if.end.106
  %56 = load i32, i32* %tempLocalIndex, align 4
  %tobool110 = icmp ne i32 %56, 0
  br i1 %tobool110, label %if.then.111, label %if.else.118

if.then.111:                                      ; preds = %if.end.109
  %57 = load i32, i32* %tempLocalIndex, align 4
  %idxprom112 = sext i32 %57 to i64
  %arrayidx113 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom112
  %type114 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx113, i32 0, i32 2
  %58 = load i32, i32* %type114, align 4
  %cmp115 = icmp eq i32 %58, 2003
  br i1 %cmp115, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %if.then.111
  store i32 1, i32* %retval
  br label %return

if.else.117:                                      ; preds = %if.then.111
  store i32 0, i32* %retval
  br label %return

if.else.118:                                      ; preds = %if.end.109
  %59 = load i32, i32* %tempGlobalIndex, align 4
  %idxprom119 = sext i32 %59 to i64
  %arrayidx120 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom119
  %type121 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx120, i32 0, i32 2
  %60 = load i32, i32* %type121, align 4
  %cmp122 = icmp eq i32 %60, 2003
  br i1 %cmp122, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %if.else.118
  store i32 1, i32* %retval
  br label %return

if.else.124:                                      ; preds = %if.else.118
  store i32 0, i32* %retval
  br label %return

sw.bb.125:                                        ; preds = %entry
  %61 = load i32, i32* @LocalIndex, align 4
  store i32 %61, i32* %tempLocalIndex, align 4
  %62 = load i32, i32* @GlobalIndex, align 4
  store i32 %62, i32* %tempGlobalIndex, align 4
  call void @PushArrayCellAddr()
  %63 = load i32, i32* @ErrorFlag, align 4
  %tobool126 = icmp ne i32 %63, 0
  br i1 %tobool126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %sw.bb.125
  store i32 -99, i32* %retval
  br label %return

if.end.128:                                       ; preds = %sw.bb.125
  store i32 0, i32* @ArrayParsed, align 4
  call void @match(i32 2006)
  %64 = load i32, i32* @ErrorFlag, align 4
  %tobool129 = icmp ne i32 %64, 0
  br i1 %tobool129, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.end.128
  store i32 -99, i32* %retval
  br label %return

if.end.131:                                       ; preds = %if.end.128
  %65 = load i32, i32* %tempLocalIndex, align 4
  %tobool132 = icmp ne i32 %65, 0
  br i1 %tobool132, label %if.then.133, label %if.else.134

if.then.133:                                      ; preds = %if.end.131
  call void @emit(i32 2063, i32 0, float 0.000000e+00)
  br label %if.end.139

if.else.134:                                      ; preds = %if.end.131
  %66 = load i32, i32* %tempGlobalIndex, align 4
  %tobool135 = icmp ne i32 %66, 0
  br i1 %tobool135, label %if.then.136, label %if.else.137

if.then.136:                                      ; preds = %if.else.134
  call void @emit(i32 2023, i32 0, float 0.000000e+00)
  br label %if.end.138

if.else.137:                                      ; preds = %if.else.134
  call void @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0))
  store i32 -99, i32* %retval
  br label %return

if.end.138:                                       ; preds = %if.then.136
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.then.133
  %67 = load i32, i32* %tempLocalIndex, align 4
  %tobool140 = icmp ne i32 %67, 0
  br i1 %tobool140, label %if.then.141, label %if.else.148

if.then.141:                                      ; preds = %if.end.139
  %68 = load i32, i32* %tempLocalIndex, align 4
  %idxprom142 = sext i32 %68 to i64
  %arrayidx143 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom142
  %type144 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx143, i32 0, i32 2
  %69 = load i32, i32* %type144, align 4
  %cmp145 = icmp eq i32 %69, 2003
  br i1 %cmp145, label %if.then.146, label %if.else.147

if.then.146:                                      ; preds = %if.then.141
  store i32 1, i32* %retval
  br label %return

if.else.147:                                      ; preds = %if.then.141
  store i32 0, i32* %retval
  br label %return

if.else.148:                                      ; preds = %if.end.139
  %70 = load i32, i32* %tempGlobalIndex, align 4
  %idxprom149 = sext i32 %70 to i64
  %arrayidx150 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom149
  %type151 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx150, i32 0, i32 2
  %71 = load i32, i32* %type151, align 4
  %cmp152 = icmp eq i32 %71, 2003
  br i1 %cmp152, label %if.then.153, label %if.else.154

if.then.153:                                      ; preds = %if.else.148
  store i32 1, i32* %retval
  br label %return

if.else.154:                                      ; preds = %if.else.148
  store i32 0, i32* %retval
  br label %return

sw.bb.155:                                        ; preds = %entry
  call void @match(i32 45)
  %72 = load i32, i32* @ErrorFlag, align 4
  %tobool156 = icmp ne i32 %72, 0
  br i1 %tobool156, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %sw.bb.155
  store i32 -99, i32* %retval
  br label %return

if.end.158:                                       ; preds = %sw.bb.155
  %call159 = call i32 @factor()
  store i32 %call159, i32* %temp, align 4
  %73 = load i32, i32* @ErrorFlag, align 4
  %tobool160 = icmp ne i32 %73, 0
  br i1 %tobool160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.end.158
  store i32 -99, i32* %retval
  br label %return

if.end.162:                                       ; preds = %if.end.158
  %74 = load i32, i32* %temp, align 4
  %tobool163 = icmp ne i32 %74, 0
  br i1 %tobool163, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %if.end.162
  call void @emit(i32 2039, i32 0, float 0.000000e+00)
  br label %if.end.166

if.else.165:                                      ; preds = %if.end.162
  call void @emit(i32 2038, i32 0, float 0.000000e+00)
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.165, %if.then.164
  %75 = load i32, i32* %temp, align 4
  store i32 %75, i32* %retval
  br label %return

sw.bb.167:                                        ; preds = %entry
  call void @match(i32 2043)
  %76 = load i32, i32* @ErrorFlag, align 4
  %tobool168 = icmp ne i32 %76, 0
  br i1 %tobool168, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %sw.bb.167
  store i32 -99, i32* %retval
  br label %return

if.end.170:                                       ; preds = %sw.bb.167
  call void @match(i32 40)
  %77 = load i32, i32* @ErrorFlag, align 4
  %tobool171 = icmp ne i32 %77, 0
  br i1 %tobool171, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.end.170
  store i32 -99, i32* %retval
  br label %return

if.end.173:                                       ; preds = %if.end.170
  call void @match(i32 41)
  %78 = load i32, i32* @ErrorFlag, align 4
  %tobool174 = icmp ne i32 %78, 0
  br i1 %tobool174, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %if.end.173
  store i32 -99, i32* %retval
  br label %return

if.end.176:                                       ; preds = %if.end.173
  call void @emit(i32 2009, i32 0, float 0.000000e+00)
  call void @emit(i32 2003, i32 0, float 0.000000e+00)
  store i32 1, i32* %retval
  br label %return

sw.bb.177:                                        ; preds = %entry
  call void @match(i32 2044)
  %79 = load i32, i32* @ErrorFlag, align 4
  %tobool178 = icmp ne i32 %79, 0
  br i1 %tobool178, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %sw.bb.177
  store i32 -99, i32* %retval
  br label %return

if.end.180:                                       ; preds = %sw.bb.177
  call void @match(i32 40)
  %80 = load i32, i32* @ErrorFlag, align 4
  %tobool181 = icmp ne i32 %80, 0
  br i1 %tobool181, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.end.180
  store i32 -99, i32* %retval
  br label %return

if.end.183:                                       ; preds = %if.end.180
  call void @match(i32 41)
  %81 = load i32, i32* @ErrorFlag, align 4
  %tobool184 = icmp ne i32 %81, 0
  br i1 %tobool184, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %if.end.183
  store i32 -99, i32* %retval
  br label %return

if.end.186:                                       ; preds = %if.end.183
  call void @emit(i32 2009, i32 0, float 0.000000e+00)
  call void @emit(i32 2002, i32 0, float 0.000000e+00)
  store i32 0, i32* %retval
  br label %return

sw.bb.187:                                        ; preds = %entry
  call void @match(i32 2045)
  %82 = load i32, i32* @ErrorFlag, align 4
  %tobool188 = icmp ne i32 %82, 0
  br i1 %tobool188, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %sw.bb.187
  store i32 -99, i32* %retval
  br label %return

if.end.190:                                       ; preds = %sw.bb.187
  call void @match(i32 40)
  %83 = load i32, i32* @ErrorFlag, align 4
  %tobool191 = icmp ne i32 %83, 0
  br i1 %tobool191, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %if.end.190
  store i32 -99, i32* %retval
  br label %return

if.end.193:                                       ; preds = %if.end.190
  store i32 0, i32* @FloatFlag, align 4
  call void @exprAssg()
  %84 = load i32, i32* @ErrorFlag, align 4
  %tobool194 = icmp ne i32 %84, 0
  br i1 %tobool194, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.end.193
  store i32 -99, i32* %retval
  br label %return

if.end.196:                                       ; preds = %if.end.193
  %85 = load i32, i32* @FloatFlag, align 4
  %tobool197 = icmp ne i32 %85, 0
  br i1 %tobool197, label %if.end.199, label %if.then.198

if.then.198:                                      ; preds = %if.end.196
  call void @emit(i32 2003, i32 0, float 0.000000e+00)
  store i32 1, i32* @FloatFlag, align 4
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.198, %if.end.196
  call void @match(i32 41)
  %86 = load i32, i32* @ErrorFlag, align 4
  %tobool200 = icmp ne i32 %86, 0
  br i1 %tobool200, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %if.end.199
  store i32 -99, i32* %retval
  br label %return

if.end.202:                                       ; preds = %if.end.199
  call void @emit(i32 2045, i32 0, float 0.000000e+00)
  call void @emit(i32 2001, i32 1, float 1.000000e+00)
  store i32 1, i32* %retval
  br label %return

sw.bb.203:                                        ; preds = %entry
  call void @match(i32 2046)
  %87 = load i32, i32* @ErrorFlag, align 4
  %tobool204 = icmp ne i32 %87, 0
  br i1 %tobool204, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %sw.bb.203
  store i32 -99, i32* %retval
  br label %return

if.end.206:                                       ; preds = %sw.bb.203
  call void @match(i32 40)
  %88 = load i32, i32* @ErrorFlag, align 4
  %tobool207 = icmp ne i32 %88, 0
  br i1 %tobool207, label %if.then.208, label %if.end.209

if.then.208:                                      ; preds = %if.end.206
  store i32 -99, i32* %retval
  br label %return

if.end.209:                                       ; preds = %if.end.206
  store i32 0, i32* @FloatFlag, align 4
  call void @exprAssg()
  %89 = load i32, i32* @ErrorFlag, align 4
  %tobool210 = icmp ne i32 %89, 0
  br i1 %tobool210, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %if.end.209
  store i32 -99, i32* %retval
  br label %return

if.end.212:                                       ; preds = %if.end.209
  %90 = load i32, i32* @FloatFlag, align 4
  %tobool213 = icmp ne i32 %90, 0
  br i1 %tobool213, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %if.end.212
  call void @emit(i32 2002, i32 0, float 0.000000e+00)
  store i32 0, i32* @FloatFlag, align 4
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.214, %if.end.212
  call void @match(i32 41)
  %91 = load i32, i32* @ErrorFlag, align 4
  %tobool216 = icmp ne i32 %91, 0
  br i1 %tobool216, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %if.end.215
  store i32 -99, i32* %retval
  br label %return

if.end.218:                                       ; preds = %if.end.215
  call void @emit(i32 2046, i32 0, float 0.000000e+00)
  call void @emit(i32 256, i32 1, float 0.000000e+00)
  store i32 0, i32* %retval
  br label %return

sw.bb.219:                                        ; preds = %entry
  call void @match(i32 2011)
  %92 = load i32, i32* @ErrorFlag, align 4
  %tobool220 = icmp ne i32 %92, 0
  br i1 %tobool220, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %sw.bb.219
  store i32 -99, i32* %retval
  br label %return

if.end.222:                                       ; preds = %sw.bb.219
  call void @match(i32 40)
  %93 = load i32, i32* @ErrorFlag, align 4
  %tobool223 = icmp ne i32 %93, 0
  br i1 %tobool223, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %if.end.222
  store i32 -99, i32* %retval
  br label %return

if.end.225:                                       ; preds = %if.end.222
  call void @match(i32 41)
  %94 = load i32, i32* @ErrorFlag, align 4
  %tobool226 = icmp ne i32 %94, 0
  br i1 %tobool226, label %if.then.227, label %if.end.228

if.then.227:                                      ; preds = %if.end.225
  store i32 -99, i32* %retval
  br label %return

if.end.228:                                       ; preds = %if.end.225
  call void @emit(i32 2011, i32 0, float 0.000000e+00)
  call void @emit(i32 256, i32 1, float 0.000000e+00)
  store i32 0, i32* %retval
  br label %return

sw.default.229:                                   ; preds = %entry
  call void @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.else.104
  store i32 -99, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default.229, %if.end.228, %if.then.227, %if.then.224, %if.then.221, %if.end.218, %if.then.217, %if.then.211, %if.then.208, %if.then.205, %if.end.202, %if.then.201, %if.then.195, %if.then.192, %if.then.189, %if.end.186, %if.then.185, %if.then.182, %if.then.179, %if.end.176, %if.then.175, %if.then.172, %if.then.169, %if.end.166, %if.then.161, %if.then.157, %if.else.154, %if.then.153, %if.else.147, %if.then.146, %if.else.137, %if.then.130, %if.then.127, %if.else.124, %if.then.123, %if.else.117, %if.then.116, %if.then.108, %if.then.96, %if.else.92, %if.else.91, %if.then.90, %if.then.65, %if.then.60, %if.then.57, %if.then.54, %if.then.51, %if.then.48, %if.end.43, %if.then.42, %if.end.39, %if.then.38, %if.else, %if.then.35, %if.then.32, %if.then.29, %if.end.27, %if.then.23, %if.then.19, %if.then.16, %if.end.13, %if.then.9, %if.then.6, %if.then.3, %if.then
  %95 = load i32, i32* %retval
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define void @match(i32 %t) #0 {
entry:
  %t.addr = alloca i32, align 4
  store i32 %t, i32* %t.addr, align 4
  %0 = load i32, i32* @lookahead, align 4
  %1 = load i32, i32* %t.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @lookahead, align 4
  store i32 %2, i32* @PreviousLookahead, align 4
  %3 = load i32, i32* @tokenval, align 4
  store i32 %3, i32* @PreviousTokenval, align 4
  %4 = load float, float* @ftokenval, align 4
  store float %4, float* @PreviousFtokenval, align 4
  %5 = load i32, i32* @NextLookahead, align 4
  store i32 %5, i32* @lookahead, align 4
  %6 = load i32, i32* @NextTokenval, align 4
  store i32 %6, i32* @tokenval, align 4
  %7 = load float, float* @NextFtokenval, align 4
  store float %7, float* @ftokenval, align 4
  %8 = load i32, i32* @NextLookahead, align 4
  %cmp1 = icmp ne i32 %8, 260
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call = call i32 @lexan()
  store i32 %call, i32* @NextLookahead, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.8

if.else:                                          ; preds = %entry
  %9 = load i32, i32* @lookahead, align 4
  switch i32 %9, label %sw.epilog [
    i32 2007, label %sw.bb
    i32 2008, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.else, %if.else
  call void @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb
  %10 = load i32, i32* @ErrorFlag, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %sw.epilog
  br label %if.end.8

if.end.4:                                         ; preds = %sw.epilog
  %11 = load i32, i32* %t.addr, align 4
  switch i32 %11, label %sw.default [
    i32 41, label %sw.bb.5
  ]

sw.bb.5:                                          ; preds = %if.end.4
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0))
  br label %sw.epilog.7

sw.default:                                       ; preds = %if.end.4
  %12 = load i32, i32* @lookahead, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i32 %12)
  call void @error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog.7

sw.epilog.7:                                      ; preds = %sw.default, %sw.bb.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.3, %sw.epilog.7, %if.end
  ret void
}

declare void @emit(i32, i32, float) #1

declare i32 @lexan() #1

declare void @error(i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @expr() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca i32, align 4
  %leftExpr = alloca i32, align 4
  %rightExpr = alloca i32, align 4
  %call = call i32 @term()
  store i32 %call, i32* %leftExpr, align 4
  %0 = load i32, i32* @ErrorFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -99, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.35, %if.end
  %1 = load i32, i32* @lookahead, align 4
  %cmp = icmp eq i32 %1, 43
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %2 = load i32, i32* @lookahead, align 4
  %cmp1 = icmp eq i32 %2, 45
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %3 = phi i1 [ true, %while.cond ], [ %cmp1, %lor.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %4 = load i32, i32* @lookahead, align 4
  store i32 %4, i32* %t, align 4
  %5 = load i32, i32* @lookahead, align 4
  call void @match(i32 %5)
  %6 = load i32, i32* @ErrorFlag, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %while.body
  store i32 -99, i32* %retval
  br label %return

if.end.4:                                         ; preds = %while.body
  %call5 = call i32 @term()
  store i32 %call5, i32* %rightExpr, align 4
  %7 = load i32, i32* @ErrorFlag, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 -99, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %8 = load i32, i32* %leftExpr, align 4
  %9 = load i32, i32* %rightExpr, align 4
  %cmp9 = icmp eq i32 %8, %9
  br i1 %cmp9, label %if.then.10, label %if.else.22

if.then.10:                                       ; preds = %if.end.8
  %10 = load i32, i32* %leftExpr, align 4
  %tobool11 = icmp ne i32 %10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.16

if.then.12:                                       ; preds = %if.then.10
  %11 = load i32, i32* %t, align 4
  %cmp13 = icmp eq i32 %11, 43
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.12
  call void @emit(i32 2030, i32 0, float 0.000000e+00)
  br label %if.end.15

if.else:                                          ; preds = %if.then.12
  call void @emit(i32 2032, i32 0, float 0.000000e+00)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  store i32 1, i32* %leftExpr, align 4
  br label %if.end.21

if.else.16:                                       ; preds = %if.then.10
  %12 = load i32, i32* %t, align 4
  %cmp17 = icmp eq i32 %12, 43
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else.16
  call void @emit(i32 2029, i32 0, float 0.000000e+00)
  br label %if.end.20

if.else.19:                                       ; preds = %if.else.16
  call void @emit(i32 2031, i32 0, float 0.000000e+00)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.18
  store i32 0, i32* %leftExpr, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.15
  br label %if.end.35

if.else.22:                                       ; preds = %if.end.8
  %13 = load i32, i32* %leftExpr, align 4
  %tobool23 = icmp ne i32 %13, 0
  br i1 %tobool23, label %if.then.24, label %if.else.29

if.then.24:                                       ; preds = %if.else.22
  call void @emit(i32 2003, i32 0, float 0.000000e+00)
  %14 = load i32, i32* %t, align 4
  %cmp25 = icmp eq i32 %14, 43
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.then.24
  call void @emit(i32 2030, i32 0, float 0.000000e+00)
  br label %if.end.28

if.else.27:                                       ; preds = %if.then.24
  call void @emit(i32 2032, i32 0, float 0.000000e+00)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.26
  br label %if.end.34

if.else.29:                                       ; preds = %if.else.22
  call void @emit(i32 256, i32 1, float 0.000000e+00)
  call void @emit(i32 2028, i32 0, float 0.000000e+00)
  call void @emit(i32 2003, i32 0, float 0.000000e+00)
  call void @emit(i32 256, i32 1, float 0.000000e+00)
  call void @emit(i32 2023, i32 0, float 0.000000e+00)
  %15 = load i32, i32* %t, align 4
  %cmp30 = icmp eq i32 %15, 43
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.else.29
  call void @emit(i32 2030, i32 0, float 0.000000e+00)
  br label %if.end.33

if.else.32:                                       ; preds = %if.else.29
  call void @emit(i32 2032, i32 0, float 0.000000e+00)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.28
  store i32 1, i32* %leftExpr, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.21
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %16 = load i32, i32* @FloatFlag, align 4
  %tobool36 = icmp ne i32 %16, 0
  br i1 %tobool36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %while.end
  store i32 1, i32* %retval
  br label %return

if.else.38:                                       ; preds = %while.end
  %17 = load i32, i32* %leftExpr, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %if.else.38, %if.then.37, %if.then.7, %if.then.3, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @PushArrayCellAddr() #0 {
entry:
  %tempTokenval = alloca i32, align 4
  %0 = load i32, i32* @ArrayParsed, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else.21, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* @ArrayParsed, align 4
  %1 = load i32, i32* @tokenval, align 4
  store i32 %1, i32* %tempTokenval, align 4
  %2 = load i32, i32* @LocalIndex, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %3 = load i32, i32* @LocalIndex, align 4
  call void @emit(i32 2049, i32 %3, float 0.000000e+00)
  br label %if.end.6

if.else:                                          ; preds = %if.then
  %4 = load i32, i32* @GlobalIndex, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  %5 = load i32, i32* @GlobalIndex, align 4
  call void @emit(i32 2050, i32 %5, float 0.000000e+00)
  br label %if.end

if.else.5:                                        ; preds = %if.else
  call void @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.22

if.end:                                           ; preds = %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then.2
  call void @match(i32 2006)
  %6 = load i32, i32* @ErrorFlag, align 4
  %tobool7 = icmp ne i32 %6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.22

if.end.9:                                         ; preds = %if.end.6
  call void @match(i32 91)
  %7 = load i32, i32* @ErrorFlag, align 4
  %tobool10 = icmp ne i32 %7, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  br label %if.end.22

if.end.12:                                        ; preds = %if.end.9
  store i32 0, i32* @FloatFlag, align 4
  %call = call i32 @expr()
  store i32 %call, i32* @FloatFlag, align 4
  %8 = load i32, i32* @ErrorFlag, align 4
  %tobool13 = icmp ne i32 %8, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  br label %if.end.22

if.end.15:                                        ; preds = %if.end.12
  %9 = load i32, i32* @lookahead, align 4
  %cmp = icmp ne i32 %9, 93
  br i1 %cmp, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.15
  call void @error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.22

if.end.17:                                        ; preds = %if.end.15
  %10 = load i32, i32* @FloatFlag, align 4
  %tobool18 = icmp ne i32 %10, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  call void @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.22

if.end.20:                                        ; preds = %if.end.17
  call void @emit(i32 2029, i32 0, float 0.000000e+00)
  store i32 2006, i32* @lookahead, align 4
  %11 = load i32, i32* %tempTokenval, align 4
  store i32 %11, i32* @tokenval, align 4
  br label %if.end.22

if.else.21:                                       ; preds = %entry
  store i32 0, i32* @ArrayParsed, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.5, %if.then.8, %if.then.11, %if.then.14, %if.then.16, %if.then.19, %if.else.21, %if.end.20
  ret void
}

; Function Attrs: nounwind uwtable
define void @DeclOrF() #0 {
entry:
  %type = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 0, i32* @Scope, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.43
  %0 = load i32, i32* @lookahead, align 4
  %cmp = icmp eq i32 %0, 259
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @emit(i32 2026, i32 0, float 0.000000e+00)
  store i32 4, i32* @LabelCounter, align 4
  %call = call i32 @GlobalInsert(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 259, i32 2002, i32 0, i32 1, i32 1)
  store i32 %call, i32* %temp, align 4
  %1 = load i32, i32* @ErrorFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %call2 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @lexbuf, i32 0, i32 0)) #5
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %2 = load i32, i32* %temp, align 4
  store i32 %2, i32* @GlobalIndex, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  call void @FunctionDef(i32 2002)
  %3 = load i32, i32* @ErrorFlag, align 4
  %tobool6 = icmp ne i32 %3, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  br label %return

if.end.8:                                         ; preds = %if.end.5
  br label %return

if.else:                                          ; preds = %while.body
  %4 = load i32, i32* @lookahead, align 4
  %cmp9 = icmp eq i32 %4, 2002
  br i1 %cmp9, label %if.then.10, label %if.else.14

if.then.10:                                       ; preds = %if.else
  call void @match(i32 2002)
  %5 = load i32, i32* @ErrorFlag, align 4
  %tobool11 = icmp ne i32 %5, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  br label %return

if.end.13:                                        ; preds = %if.then.10
  br label %if.end.18

if.else.14:                                       ; preds = %if.else
  call void @match(i32 2003)
  %6 = load i32, i32* @ErrorFlag, align 4
  %tobool15 = icmp ne i32 %6, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else.14
  br label %return

if.end.17:                                        ; preds = %if.else.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.13
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18
  %7 = load i32, i32* @NextLookahead, align 4
  %cmp20 = icmp eq i32 %7, 40
  br i1 %cmp20, label %if.then.21, label %if.else.33

if.then.21:                                       ; preds = %if.end.19
  call void @emit(i32 2026, i32 0, float 0.000000e+00)
  store i32 4, i32* @LabelCounter, align 4
  %call22 = call i32 @GlobalInsert(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 259, i32 2002, i32 0, i32 1, i32 1)
  store i32 %call22, i32* %temp, align 4
  %8 = load i32, i32* @ErrorFlag, align 4
  %tobool23 = icmp ne i32 %8, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.21
  br label %return

if.end.25:                                        ; preds = %if.then.21
  %call26 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @lexbuf, i32 0, i32 0)) #5
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  %9 = load i32, i32* %temp, align 4
  store i32 %9, i32* @GlobalIndex, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.25
  %10 = load i32, i32* @PreviousLookahead, align 4
  call void @FunctionDef(i32 %10)
  %11 = load i32, i32* @ErrorFlag, align 4
  %tobool30 = icmp ne i32 %11, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  br label %return

if.end.32:                                        ; preds = %if.end.29
  br label %return

if.else.33:                                       ; preds = %if.end.19
  %12 = load i32, i32* @PreviousLookahead, align 4
  store i32 %12, i32* %type, align 4
  %13 = load i32, i32* %type, align 4
  call void @GlobalScopeAndInsert(i32 %13)
  %14 = load i32, i32* @ErrorFlag, align 4
  %tobool34 = icmp ne i32 %14, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.else.33
  br label %return

if.end.36:                                        ; preds = %if.else.33
  %15 = load i32, i32* %type, align 4
  call void @GlobalVarList(i32 %15)
  %16 = load i32, i32* @ErrorFlag, align 4
  %tobool37 = icmp ne i32 %16, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.36
  br label %return

if.end.39:                                        ; preds = %if.end.36
  call void @match(i32 59)
  %17 = load i32, i32* @ErrorFlag, align 4
  %tobool40 = icmp ne i32 %17, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.39
  br label %return

if.end.42:                                        ; preds = %if.end.39
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42
  br label %while.body

return:                                           ; preds = %if.then.41, %if.then.38, %if.then.35, %if.end.32, %if.then.31, %if.then.24, %if.then.16, %if.then.12, %if.end.8, %if.then.7, %if.then.1
  ret void
}

declare i32 @GlobalInsert(i8*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @FunctionDef(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 1, i32* @offset, align 4
  %0 = load i32, i32* @lookahead, align 4
  %cmp = icmp ne i32 %0, 259
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @LocalIndex, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  call void @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.22, i32 0, i32 0))
  br label %return

if.else:                                          ; preds = %if.end
  %2 = load i32, i32* @GlobalIndex, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then.3, label %if.else.28

if.then.3:                                        ; preds = %if.else
  %3 = load i32, i32* @GlobalIndex, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom
  %function = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx, i32 0, i32 4
  %4 = load i32, i32* %function, align 4
  %tobool4 = icmp ne i32 %4, 0
  br i1 %tobool4, label %if.else.6, label %if.then.5

if.then.5:                                        ; preds = %if.then.3
  call void @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.23, i32 0, i32 0))
  br label %return

if.else.6:                                        ; preds = %if.then.3
  %5 = load i32, i32* @GlobalIndex, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom7
  %function9 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx8, i32 0, i32 4
  %6 = load i32, i32* %function9, align 4
  %cmp10 = icmp slt i32 %6, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.6
  call void @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0))
  br label %return

if.else.12:                                       ; preds = %if.else.6
  %7 = load i32, i32* @GlobalIndex, align 4
  %idxprom13 = sext i32 %7 to i64
  %arrayidx14 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom13
  %function15 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx14, i32 0, i32 4
  %8 = load i32, i32* %function15, align 4
  %cmp16 = icmp sgt i32 %8, 0
  br i1 %cmp16, label %if.then.17, label %if.else.24

if.then.17:                                       ; preds = %if.else.12
  %9 = load i32, i32* %type.addr, align 4
  %10 = load i32, i32* @GlobalIndex, align 4
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom18
  %type20 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx19, i32 0, i32 2
  store i32 %9, i32* %type20, align 4
  %11 = load i32, i32* @GlobalIndex, align 4
  store i32 %11, i32* @FuncNameIndex, align 4
  %12 = load i32, i32* @GlobalIndex, align 4
  %idxprom21 = sext i32 %12 to i64
  %arrayidx22 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom21
  %function23 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx22, i32 0, i32 4
  store i32 -1, i32* %function23, align 4
  br label %if.end.25

if.else.24:                                       ; preds = %if.else.12
  call void @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i32 0, i32 0))
  br label %return

if.end.25:                                        ; preds = %if.then.17
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26
  br label %if.end.32

if.else.28:                                       ; preds = %if.else
  %13 = load i32, i32* %type.addr, align 4
  %14 = load i32, i32* @LabelCounter, align 4
  %call = call i32 @GlobalInsert(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @lexbuf, i32 0, i32 0), i32 259, i32 %13, i32 0, i32 -1, i32 %14)
  store i32 %call, i32* @GlobalIndex, align 4
  %15 = load i32, i32* @ErrorFlag, align 4
  %tobool29 = icmp ne i32 %15, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.else.28
  store i32 0, i32* @ErrorFlag, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.else.28
  %16 = load i32, i32* @GlobalIndex, align 4
  store i32 %16, i32* @FuncNameIndex, align 4
  %17 = load i32, i32* @LabelCounter, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* @LabelCounter, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.27
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32
  %18 = load i32, i32* @GlobalIndex, align 4
  %idxprom34 = sext i32 %18 to i64
  %arrayidx35 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom34
  %functionlabel = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx35, i32 0, i32 5
  %19 = load i32, i32* %functionlabel, align 4
  store i32 %19, i32* @Scope, align 4
  %20 = load i32, i32* @GlobalIndex, align 4
  call void @emit(i32 2054, i32 %20, float 0.000000e+00)
  %21 = load i32, i32* @Scope, align 4
  call void @emit(i32 2014, i32 %21, float 0.000000e+00)
  %22 = load i32, i32* @FuncNameIndex, align 4
  call void @emit(i32 2056, i32 %22, float 0.000000e+00)
  %23 = load i32, i32* @LabelCounter, align 4
  store i32 %23, i32* @ReturnLabel, align 4
  %24 = load i32, i32* @LabelCounter, align 4
  %inc36 = add nsw i32 %24, 1
  store i32 %inc36, i32* @LabelCounter, align 4
  call void @match(i32 259)
  %25 = load i32, i32* @ErrorFlag, align 4
  %tobool37 = icmp ne i32 %25, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.33
  store i32 0, i32* @ErrorFlag, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.33
  call void @match(i32 40)
  %26 = load i32, i32* @ErrorFlag, align 4
  %tobool40 = icmp ne i32 %26, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.39
  store i32 0, i32* @ErrorFlag, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.39
  %27 = load i32, i32* @FuncNameIndex, align 4
  %idxprom43 = sext i32 %27 to i64
  %arrayidx44 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom43
  %lexptr = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx44, i32 0, i32 0
  %28 = load i8*, i8** %lexptr, align 8
  %call45 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #5
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.55

if.then.47:                                       ; preds = %if.end.42
  %29 = load i32, i32* @lookahead, align 4
  %cmp48 = icmp eq i32 %29, 41
  br i1 %cmp48, label %if.then.49, label %if.else.53

if.then.49:                                       ; preds = %if.then.47
  call void @match(i32 41)
  %30 = load i32, i32* @ErrorFlag, align 4
  %tobool50 = icmp ne i32 %30, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.then.49
  br label %return

if.end.52:                                        ; preds = %if.then.49
  br label %if.end.54

if.else.53:                                       ; preds = %if.then.47
  call void @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i32 0, i32 0))
  br label %return

if.end.54:                                        ; preds = %if.end.52
  br label %if.end.62

if.else.55:                                       ; preds = %if.end.42
  call void @ParamList()
  %31 = load i32, i32* @ErrorFlag, align 4
  %tobool56 = icmp ne i32 %31, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.else.55
  store i32 0, i32* @ErrorFlag, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.else.55
  call void @match(i32 41)
  %32 = load i32, i32* @ErrorFlag, align 4
  %tobool59 = icmp ne i32 %32, 0
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.58
  store i32 0, i32* @ErrorFlag, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.58
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.54
  call void @DecList()
  %33 = load i32, i32* @ErrorFlag, align 4
  %tobool63 = icmp ne i32 %33, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.62
  store i32 0, i32* @ErrorFlag, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.62
  %34 = load i32, i32* @FuncNameIndex, align 4
  call void @emit(i32 2057, i32 %34, float 0.000000e+00)
  call void @FstmtList()
  %35 = load i32, i32* @ErrorFlag, align 4
  %tobool66 = icmp ne i32 %35, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.65
  br label %return

if.end.68:                                        ; preds = %if.end.65
  %36 = load i32, i32* @FuncNameIndex, align 4
  %idxprom69 = sext i32 %36 to i64
  %arrayidx70 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom69
  %type71 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx70, i32 0, i32 2
  %37 = load i32, i32* %type71, align 4
  %cmp72 = icmp eq i32 %37, 2002
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %if.end.68
  call void @emit(i32 256, i32 1, float 0.000000e+00)
  br label %if.end.75

if.else.74:                                       ; preds = %if.end.68
  call void @emit(i32 2001, i32 0, float 1.000000e+00)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.74, %if.then.73
  %38 = load i32, i32* @ReturnLabel, align 4
  call void @emit(i32 2014, i32 %38, float 0.000000e+00)
  %39 = load i32, i32* @FuncNameIndex, align 4
  call void @emit(i32 2058, i32 %39, float 0.000000e+00)
  call void @emit(i32 2018, i32 0, float 0.000000e+00)
  br label %return

return:                                           ; preds = %if.end.75, %if.then.67, %if.else.53, %if.then.51, %if.else.24, %if.then.11, %if.then.5, %if.then.1, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @GlobalScopeAndInsert(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  %tempGlobalIndex = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* @LocalIndex, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.38

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @GlobalIndex, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.else.6

if.then.2:                                        ; preds = %if.else
  %2 = load i32, i32* @GlobalIndex, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom
  %function = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx, i32 0, i32 4
  %3 = load i32, i32* %function, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.then.2
  call void @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.38

if.else.5:                                        ; preds = %if.then.2
  call void @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.38

if.else.6:                                        ; preds = %if.else
  %4 = load i32, i32* @NextLookahead, align 4
  %cmp = icmp eq i32 %4, 91
  br i1 %cmp, label %if.then.7, label %if.else.28

if.then.7:                                        ; preds = %if.else.6
  %5 = load i32, i32* %type.addr, align 4
  %call = call i32 @GlobalInsert(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @lexbuf, i32 0, i32 0), i32 2006, i32 %5, i32 0, i32 0, i32 0)
  store i32 %call, i32* @GlobalIndex, align 4
  store i32 %call, i32* %tempGlobalIndex, align 4
  %6 = load i32, i32* @ErrorFlag, align 4
  %tobool8 = icmp ne i32 %6, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.7
  br label %if.end.38

if.end:                                           ; preds = %if.then.7
  call void @match(i32 259)
  %7 = load i32, i32* @ErrorFlag, align 4
  %tobool10 = icmp ne i32 %7, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  br label %if.end.38

if.end.12:                                        ; preds = %if.end
  call void @match(i32 91)
  %8 = load i32, i32* @ErrorFlag, align 4
  %tobool13 = icmp ne i32 %8, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  br label %if.end.38

if.end.15:                                        ; preds = %if.end.12
  %9 = load i32, i32* @lookahead, align 4
  %cmp16 = icmp eq i32 %9, 256
  br i1 %cmp16, label %if.then.17, label %if.else.20

if.then.17:                                       ; preds = %if.end.15
  %10 = load i32, i32* @tokenval, align 4
  %11 = load i32, i32* %tempGlobalIndex, align 4
  %idxprom18 = sext i32 %11 to i64
  %arrayidx19 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom18
  %size = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx19, i32 0, i32 3
  store i32 %10, i32* %size, align 4
  call void @match(i32 256)
  br label %if.end.21

if.else.20:                                       ; preds = %if.end.15
  call void @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.38

if.end.21:                                        ; preds = %if.then.17
  call void @match(i32 93)
  %12 = load i32, i32* @ErrorFlag, align 4
  %tobool22 = icmp ne i32 %12, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  br label %if.end.38

if.end.24:                                        ; preds = %if.end.21
  %13 = load i32, i32* %tempGlobalIndex, align 4
  call void @emit(i32 2048, i32 %13, float 0.000000e+00)
  %14 = load i32, i32* %tempGlobalIndex, align 4
  %idxprom25 = sext i32 %14 to i64
  %arrayidx26 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom25
  %size27 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx26, i32 0, i32 3
  %15 = load i32, i32* %size27, align 4
  %16 = load i32, i32* @DecCount, align 4
  %add = add nsw i32 %16, %15
  store i32 %add, i32* @DecCount, align 4
  br label %if.end.36

if.else.28:                                       ; preds = %if.else.6
  %17 = load i32, i32* %type.addr, align 4
  %call29 = call i32 @GlobalInsert(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @lexbuf, i32 0, i32 0), i32 259, i32 %17, i32 1, i32 0, i32 0)
  store i32 %call29, i32* @GlobalIndex, align 4
  %18 = load i32, i32* @ErrorFlag, align 4
  %tobool30 = icmp ne i32 %18, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.else.28
  br label %if.end.38

if.end.32:                                        ; preds = %if.else.28
  %19 = load i32, i32* @GlobalIndex, align 4
  call void @emit(i32 2048, i32 %19, float 0.000000e+00)
  %20 = load i32, i32* @DecCount, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* @DecCount, align 4
  call void @match(i32 259)
  %21 = load i32, i32* @ErrorFlag, align 4
  %tobool33 = icmp ne i32 %21, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.32
  br label %if.end.38

if.end.35:                                        ; preds = %if.end.32
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.24
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %if.then, %if.then.4, %if.else.5, %if.then.9, %if.then.11, %if.then.14, %if.else.20, %if.then.23, %if.then.31, %if.then.34, %if.end.37
  ret void
}

; Function Attrs: nounwind uwtable
define void @GlobalVarList(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %entry
  %0 = load i32, i32* @lookahead, align 4
  %cmp = icmp eq i32 %0, 44
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @match(i32 44)
  %1 = load i32, i32* @ErrorFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %2 = load i32, i32* @lookahead, align 4
  %cmp1 = icmp eq i32 %2, 259
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* @lookahead, align 4
  %cmp2 = icmp eq i32 %3, 2006
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %4 = load i32, i32* %type.addr, align 4
  call void @GlobalScopeAndInsert(i32 %4)
  %5 = load i32, i32* @ErrorFlag, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  br label %while.end

if.end.6:                                         ; preds = %if.then.3
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  call void @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0))
  br label %while.end

if.end.7:                                         ; preds = %if.end.6
  br label %while.cond

while.end:                                        ; preds = %if.then, %if.then.5, %if.else, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @exprTest() #0 {
entry:
  %tempTrue = alloca i32, align 4
  %tempDone = alloca i32, align 4
  %tempOperation = alloca i32, align 4
  %TempFloatFlag = alloca i32, align 4
  store i32 0, i32* @FloatFlag, align 4
  %call = call i32 @expr()
  store i32 %call, i32* @FloatFlag, align 4
  %0 = load i32, i32* @ErrorFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.27, %if.end
  %1 = load i32, i32* @lookahead, align 4
  %cmp = icmp eq i32 %1, 2012
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %2 = load i32, i32* @lookahead, align 4
  %cmp1 = icmp eq i32 %2, 2013
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %3 = phi i1 [ true, %while.cond ], [ %cmp1, %lor.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %4 = load i32, i32* @lookahead, align 4
  store i32 %4, i32* %tempOperation, align 4
  %5 = load i32, i32* @lookahead, align 4
  %cmp2 = icmp eq i32 %5, 2012
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %while.body
  call void @match(i32 2012)
  br label %if.end.4

if.else:                                          ; preds = %while.body
  call void @match(i32 2013)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %6 = load i32, i32* @ErrorFlag, align 4
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  br label %while.end

if.end.7:                                         ; preds = %if.end.4
  %7 = load i32, i32* @FloatFlag, align 4
  store i32 %7, i32* %TempFloatFlag, align 4
  %8 = load i32, i32* %TempFloatFlag, align 4
  %tobool8 = icmp ne i32 %8, 0
  br i1 %tobool8, label %if.then.9, label %if.else.14

if.then.9:                                        ; preds = %if.end.7
  store i32 0, i32* @FloatFlag, align 4
  %call10 = call i32 @expr()
  store i32 %call10, i32* @FloatFlag, align 4
  %9 = load i32, i32* @FloatFlag, align 4
  %tobool11 = icmp ne i32 %9, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.then.9
  call void @emit(i32 2003, i32 0, float 0.000000e+00)
  store i32 1, i32* @FloatFlag, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.9
  br label %if.end.19

if.else.14:                                       ; preds = %if.end.7
  %call15 = call i32 @expr()
  store i32 %call15, i32* @FloatFlag, align 4
  %10 = load i32, i32* @FloatFlag, align 4
  %tobool16 = icmp ne i32 %10, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else.14
  call void @emit(i32 256, i32 1, float 0.000000e+00)
  call void @emit(i32 2028, i32 0, float 0.000000e+00)
  call void @emit(i32 2003, i32 0, float 0.000000e+00)
  call void @emit(i32 256, i32 1, float 0.000000e+00)
  call void @emit(i32 2023, i32 0, float 0.000000e+00)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.13
  %11 = load i32, i32* @ErrorFlag, align 4
  %tobool20 = icmp ne i32 %11, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  br label %while.end

if.end.22:                                        ; preds = %if.end.19
  call void @emit(i32 2016, i32 0, float 0.000000e+00)
  %12 = load i32, i32* @LabelCounter, align 4
  store i32 %12, i32* %tempTrue, align 4
  %13 = load i32, i32* @LabelCounter, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* @LabelCounter, align 4
  %14 = load i32, i32* @LabelCounter, align 4
  store i32 %14, i32* %tempDone, align 4
  %15 = load i32, i32* @LabelCounter, align 4
  %inc23 = add nsw i32 %15, 1
  store i32 %inc23, i32* @LabelCounter, align 4
  %16 = load i32, i32* %tempTrue, align 4
  call void @emit(i32 2015, i32 %16, float 0.000000e+00)
  %17 = load i32, i32* %tempOperation, align 4
  %cmp24 = icmp eq i32 %17, 2012
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.end.22
  call void @emit(i32 2017, i32 0, float 0.000000e+00)
  br label %if.end.27

if.else.26:                                       ; preds = %if.end.22
  call void @emit(i32 2025, i32 0, float 0.000000e+00)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.then.25
  call void @emit(i32 256, i32 0, float 0.000000e+00)
  %18 = load i32, i32* %tempDone, align 4
  call void @emit(i32 2015, i32 %18, float 0.000000e+00)
  call void @emit(i32 2018, i32 0, float 0.000000e+00)
  %19 = load i32, i32* %tempTrue, align 4
  call void @emit(i32 2014, i32 %19, float 0.000000e+00)
  call void @emit(i32 256, i32 1, float 0.000000e+00)
  %20 = load i32, i32* %tempDone, align 4
  call void @emit(i32 2014, i32 %20, float 0.000000e+00)
  br label %while.cond

while.end:                                        ; preds = %if.then, %if.then.6, %if.then.21, %lor.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @exprAssg() #0 {
entry:
  %tempLocalIndex = alloca i32, align 4
  %tempGlobalIndex = alloca i32, align 4
  %0 = load i32, i32* @lookahead, align 4
  switch i32 %0, label %sw.default [
    i32 2006, label %sw.bb
    i32 259, label %sw.bb.52
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* @LocalIndex, align 4
  store i32 %1, i32* %tempLocalIndex, align 4
  %2 = load i32, i32* @GlobalIndex, align 4
  store i32 %2, i32* %tempGlobalIndex, align 4
  call void @PushArrayCellAddr()
  %3 = load i32, i32* @ErrorFlag, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  %4 = load i32, i32* @NextLookahead, align 4
  %cmp = icmp eq i32 %4, 61
  br i1 %cmp, label %if.then.1, label %if.else.47

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* @ArrayParsed, align 4
  call void @match(i32 2006)
  %5 = load i32, i32* @ErrorFlag, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.then.1
  br label %return

if.end.4:                                         ; preds = %if.then.1
  call void @match(i32 61)
  %6 = load i32, i32* @ErrorFlag, align 4
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  br label %return

if.end.7:                                         ; preds = %if.end.4
  store i32 0, i32* @FloatFlag, align 4
  call void @exprAssg()
  %7 = load i32, i32* @ErrorFlag, align 4
  %tobool8 = icmp ne i32 %7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %8 = load i32, i32* %tempLocalIndex, align 4
  %tobool11 = icmp ne i32 %8, 0
  br i1 %tobool11, label %if.then.12, label %if.else.25

if.then.12:                                       ; preds = %if.end.10
  %9 = load i32, i32* %tempLocalIndex, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx, i32 0, i32 2
  %10 = load i32, i32* %type, align 4
  %cmp13 = icmp eq i32 %10, 2002
  br i1 %cmp13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.12
  %11 = load i32, i32* @FloatFlag, align 4
  %tobool14 = icmp ne i32 %11, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %land.lhs.true
  call void @emit(i32 2002, i32 0, float 0.000000e+00)
  store i32 0, i32* @FloatFlag, align 4
  br label %if.end.24

if.else:                                          ; preds = %land.lhs.true, %if.then.12
  %12 = load i32, i32* %tempLocalIndex, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom16
  %type18 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx17, i32 0, i32 2
  %13 = load i32, i32* %type18, align 4
  %cmp19 = icmp eq i32 %13, 2003
  br i1 %cmp19, label %land.lhs.true.20, label %if.end.23

land.lhs.true.20:                                 ; preds = %if.else
  %14 = load i32, i32* @FloatFlag, align 4
  %tobool21 = icmp ne i32 %14, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %land.lhs.true.20
  call void @emit(i32 2003, i32 0, float 0.000000e+00)
  store i32 1, i32* @FloatFlag, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %land.lhs.true.20, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.15
  call void @emit(i32 2053, i32 0, float 0.000000e+00)
  br label %if.end.46

if.else.25:                                       ; preds = %if.end.10
  %15 = load i32, i32* %tempGlobalIndex, align 4
  %tobool26 = icmp ne i32 %15, 0
  br i1 %tobool26, label %if.then.27, label %if.end.45

if.then.27:                                       ; preds = %if.else.25
  %16 = load i32, i32* %tempGlobalIndex, align 4
  %idxprom28 = sext i32 %16 to i64
  %arrayidx29 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom28
  %type30 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx29, i32 0, i32 2
  %17 = load i32, i32* %type30, align 4
  %cmp31 = icmp eq i32 %17, 2002
  br i1 %cmp31, label %land.lhs.true.32, label %if.else.35

land.lhs.true.32:                                 ; preds = %if.then.27
  %18 = load i32, i32* @FloatFlag, align 4
  %tobool33 = icmp ne i32 %18, 0
  br i1 %tobool33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.32
  call void @emit(i32 2002, i32 0, float 0.000000e+00)
  store i32 0, i32* @FloatFlag, align 4
  br label %if.end.44

if.else.35:                                       ; preds = %land.lhs.true.32, %if.then.27
  %19 = load i32, i32* %tempGlobalIndex, align 4
  %idxprom36 = sext i32 %19 to i64
  %arrayidx37 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom36
  %type38 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx37, i32 0, i32 2
  %20 = load i32, i32* %type38, align 4
  %cmp39 = icmp eq i32 %20, 2003
  br i1 %cmp39, label %land.lhs.true.40, label %if.end.43

land.lhs.true.40:                                 ; preds = %if.else.35
  %21 = load i32, i32* @FloatFlag, align 4
  %tobool41 = icmp ne i32 %21, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %land.lhs.true.40
  call void @emit(i32 2003, i32 0, float 0.000000e+00)
  store i32 1, i32* @FloatFlag, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %land.lhs.true.40, %if.else.35
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.34
  call void @emit(i32 2022, i32 0, float 0.000000e+00)
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.else.25
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.24
  call void @emit(i32 2037, i32 0, float 0.000000e+00)
  call void @emit(i32 2004, i32 0, float 0.000000e+00)
  br label %if.end.51

if.else.47:                                       ; preds = %if.end
  call void @exprTest()
  %22 = load i32, i32* @ErrorFlag, align 4
  %tobool48 = icmp ne i32 %22, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.else.47
  br label %return

if.end.50:                                        ; preds = %if.else.47
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.46
  br label %sw.epilog

sw.bb.52:                                         ; preds = %entry
  %23 = load i32, i32* @LocalIndex, align 4
  store i32 %23, i32* %tempLocalIndex, align 4
  %24 = load i32, i32* @GlobalIndex, align 4
  store i32 %24, i32* %tempGlobalIndex, align 4
  %25 = load i32, i32* @NextLookahead, align 4
  %cmp53 = icmp eq i32 %25, 61
  br i1 %cmp53, label %if.then.54, label %if.else.113

if.then.54:                                       ; preds = %sw.bb.52
  %26 = load i32, i32* @LocalIndex, align 4
  %tobool55 = icmp ne i32 %26, 0
  br i1 %tobool55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.then.54
  %27 = load i32, i32* @LocalIndex, align 4
  call void @emit(i32 2049, i32 %27, float 0.000000e+00)
  br label %if.end.62

if.else.57:                                       ; preds = %if.then.54
  %28 = load i32, i32* @GlobalIndex, align 4
  %tobool58 = icmp ne i32 %28, 0
  br i1 %tobool58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.else.57
  %29 = load i32, i32* @GlobalIndex, align 4
  call void @emit(i32 2050, i32 %29, float 0.000000e+00)
  br label %if.end.61

if.else.60:                                       ; preds = %if.else.57
  call void @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.61:                                        ; preds = %if.then.59
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.56
  call void @match(i32 259)
  %30 = load i32, i32* @ErrorFlag, align 4
  %tobool63 = icmp ne i32 %30, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.62
  br label %return

if.end.65:                                        ; preds = %if.end.62
  call void @match(i32 61)
  %31 = load i32, i32* @ErrorFlag, align 4
  %tobool66 = icmp ne i32 %31, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.65
  br label %return

if.end.68:                                        ; preds = %if.end.65
  store i32 0, i32* @FloatFlag, align 4
  call void @exprAssg()
  %32 = load i32, i32* @ErrorFlag, align 4
  %tobool69 = icmp ne i32 %32, 0
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.68
  br label %return

if.end.71:                                        ; preds = %if.end.68
  %33 = load i32, i32* %tempLocalIndex, align 4
  %tobool72 = icmp ne i32 %33, 0
  br i1 %tobool72, label %if.then.73, label %if.else.91

if.then.73:                                       ; preds = %if.end.71
  %34 = load i32, i32* %tempLocalIndex, align 4
  %idxprom74 = sext i32 %34 to i64
  %arrayidx75 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom74
  %type76 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx75, i32 0, i32 2
  %35 = load i32, i32* %type76, align 4
  %cmp77 = icmp eq i32 %35, 2002
  br i1 %cmp77, label %land.lhs.true.78, label %if.else.81

land.lhs.true.78:                                 ; preds = %if.then.73
  %36 = load i32, i32* @FloatFlag, align 4
  %tobool79 = icmp ne i32 %36, 0
  br i1 %tobool79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %land.lhs.true.78
  call void @emit(i32 2002, i32 0, float 0.000000e+00)
  store i32 0, i32* @FloatFlag, align 4
  br label %if.end.90

if.else.81:                                       ; preds = %land.lhs.true.78, %if.then.73
  %37 = load i32, i32* %tempLocalIndex, align 4
  %idxprom82 = sext i32 %37 to i64
  %arrayidx83 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom82
  %type84 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx83, i32 0, i32 2
  %38 = load i32, i32* %type84, align 4
  %cmp85 = icmp eq i32 %38, 2003
  br i1 %cmp85, label %land.lhs.true.86, label %if.end.89

land.lhs.true.86:                                 ; preds = %if.else.81
  %39 = load i32, i32* @FloatFlag, align 4
  %tobool87 = icmp ne i32 %39, 0
  br i1 %tobool87, label %if.end.89, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true.86
  call void @emit(i32 2003, i32 0, float 0.000000e+00)
  store i32 1, i32* @FloatFlag, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %land.lhs.true.86, %if.else.81
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.80
  call void @emit(i32 2053, i32 0, float 0.000000e+00)
  br label %if.end.112

if.else.91:                                       ; preds = %if.end.71
  %40 = load i32, i32* %tempGlobalIndex, align 4
  %tobool92 = icmp ne i32 %40, 0
  br i1 %tobool92, label %if.then.93, label %if.end.111

if.then.93:                                       ; preds = %if.else.91
  %41 = load i32, i32* %tempGlobalIndex, align 4
  %idxprom94 = sext i32 %41 to i64
  %arrayidx95 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom94
  %type96 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx95, i32 0, i32 2
  %42 = load i32, i32* %type96, align 4
  %cmp97 = icmp eq i32 %42, 2002
  br i1 %cmp97, label %land.lhs.true.98, label %if.else.101

land.lhs.true.98:                                 ; preds = %if.then.93
  %43 = load i32, i32* @FloatFlag, align 4
  %tobool99 = icmp ne i32 %43, 0
  br i1 %tobool99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %land.lhs.true.98
  call void @emit(i32 2002, i32 0, float 0.000000e+00)
  store i32 0, i32* @FloatFlag, align 4
  br label %if.end.110

if.else.101:                                      ; preds = %land.lhs.true.98, %if.then.93
  %44 = load i32, i32* %tempGlobalIndex, align 4
  %idxprom102 = sext i32 %44 to i64
  %arrayidx103 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom102
  %type104 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx103, i32 0, i32 2
  %45 = load i32, i32* %type104, align 4
  %cmp105 = icmp eq i32 %45, 2003
  br i1 %cmp105, label %land.lhs.true.106, label %if.end.109

land.lhs.true.106:                                ; preds = %if.else.101
  %46 = load i32, i32* @FloatFlag, align 4
  %tobool107 = icmp ne i32 %46, 0
  br i1 %tobool107, label %if.end.109, label %if.then.108

if.then.108:                                      ; preds = %land.lhs.true.106
  call void @emit(i32 2003, i32 0, float 0.000000e+00)
  store i32 1, i32* @FloatFlag, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %land.lhs.true.106, %if.else.101
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.100
  call void @emit(i32 2022, i32 0, float 0.000000e+00)
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.else.91
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.end.90
  call void @emit(i32 2037, i32 0, float 0.000000e+00)
  call void @emit(i32 2004, i32 0, float 0.000000e+00)
  br label %if.end.117

if.else.113:                                      ; preds = %sw.bb.52
  call void @exprTest()
  %47 = load i32, i32* @ErrorFlag, align 4
  %tobool114 = icmp ne i32 %47, 0
  br i1 %tobool114, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.else.113
  br label %return

if.end.116:                                       ; preds = %if.else.113
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.112
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @exprTest()
  %48 = load i32, i32* @ErrorFlag, align 4
  %tobool118 = icmp ne i32 %48, 0
  br i1 %tobool118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %sw.default
  br label %return

if.end.120:                                       ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.120, %if.end.117, %if.end.51
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.119, %if.then.115, %if.then.70, %if.then.67, %if.then.64, %if.else.60, %if.then.49, %if.then.9, %if.then.6, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @parseAStmt() #0 {
entry:
  %tempLabel1 = alloca i32, align 4
  %tempLabel2 = alloca i32, align 4
  %0 = load i32, i32* @lookahead, align 4
  switch i32 %0, label %sw.default [
    i32 2007, label %sw.bb
    i32 2008, label %sw.bb.17
    i32 123, label %sw.bb.48
    i32 2042, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %entry
  call void @match(i32 2007)
  %1 = load i32, i32* @ErrorFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  %2 = load i32, i32* @LabelCounter, align 4
  store i32 %2, i32* %tempLabel1, align 4
  %3 = load i32, i32* @LabelCounter, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @LabelCounter, align 4
  %4 = load i32, i32* @LabelCounter, align 4
  store i32 %4, i32* %tempLabel2, align 4
  %5 = load i32, i32* @LabelCounter, align 4
  %inc1 = add nsw i32 %5, 1
  store i32 %inc1, i32* @LabelCounter, align 4
  %6 = load i32, i32* %tempLabel1, align 4
  call void @emit(i32 2014, i32 %6, float 0.000000e+00)
  %7 = load i32, i32* %tempLabel2, align 4
  call void @emit(i32 2015, i32 %7, float 0.000000e+00)
  call void @match(i32 40)
  %8 = load i32, i32* @ErrorFlag, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* @FloatFlag, align 4
  call void @exprAssg()
  %9 = load i32, i32* @ErrorFlag, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  br label %return

if.end.7:                                         ; preds = %if.end.4
  call void @match(i32 41)
  %10 = load i32, i32* @ErrorFlag, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %11 = load i32, i32* @FloatFlag, align 4
  %tobool11 = icmp ne i32 %11, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.10
  call void @emit(i32 2001, i32 0, float 0.000000e+00)
  br label %if.end.13

if.else:                                          ; preds = %if.end.10
  call void @emit(i32 256, i32 0, float 0.000000e+00)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  call void @emit(i32 2016, i32 0, float 0.000000e+00)
  call void @emit(i32 2017, i32 0, float 0.000000e+00)
  call void @parseAStmt()
  %12 = load i32, i32* @ErrorFlag, align 4
  %tobool14 = icmp ne i32 %12, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  br label %return

if.end.16:                                        ; preds = %if.end.13
  %13 = load i32, i32* %tempLabel1, align 4
  call void @emit(i32 2015, i32 %13, float 0.000000e+00)
  call void @emit(i32 2018, i32 0, float 0.000000e+00)
  %14 = load i32, i32* %tempLabel2, align 4
  call void @emit(i32 2014, i32 %14, float 0.000000e+00)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  call void @match(i32 2008)
  %15 = load i32, i32* @ErrorFlag, align 4
  %tobool18 = icmp ne i32 %15, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %sw.bb.17
  br label %return

if.end.20:                                        ; preds = %sw.bb.17
  %16 = load i32, i32* @LabelCounter, align 4
  store i32 %16, i32* %tempLabel1, align 4
  %17 = load i32, i32* @LabelCounter, align 4
  %inc21 = add nsw i32 %17, 1
  store i32 %inc21, i32* @LabelCounter, align 4
  %18 = load i32, i32* %tempLabel1, align 4
  call void @emit(i32 2015, i32 %18, float 0.000000e+00)
  call void @match(i32 40)
  %19 = load i32, i32* @ErrorFlag, align 4
  %tobool22 = icmp ne i32 %19, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  br label %return

if.end.24:                                        ; preds = %if.end.20
  store i32 0, i32* @FloatFlag, align 4
  call void @exprAssg()
  %20 = load i32, i32* @ErrorFlag, align 4
  %tobool25 = icmp ne i32 %20, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.24
  br label %return

if.end.27:                                        ; preds = %if.end.24
  call void @match(i32 41)
  %21 = load i32, i32* @ErrorFlag, align 4
  %tobool28 = icmp ne i32 %21, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.27
  br label %return

if.end.30:                                        ; preds = %if.end.27
  %22 = load i32, i32* @FloatFlag, align 4
  %tobool31 = icmp ne i32 %22, 0
  br i1 %tobool31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.end.30
  call void @emit(i32 2001, i32 0, float 0.000000e+00)
  br label %if.end.34

if.else.33:                                       ; preds = %if.end.30
  call void @emit(i32 256, i32 0, float 0.000000e+00)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.32
  call void @emit(i32 2016, i32 0, float 0.000000e+00)
  call void @emit(i32 2017, i32 0, float 0.000000e+00)
  call void @parseAStmt()
  %23 = load i32, i32* @ErrorFlag, align 4
  %tobool35 = icmp ne i32 %23, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  br label %return

if.end.37:                                        ; preds = %if.end.34
  %24 = load i32, i32* @lookahead, align 4
  %cmp = icmp eq i32 %24, 2024
  br i1 %cmp, label %if.then.38, label %if.else.46

if.then.38:                                       ; preds = %if.end.37
  call void @match(i32 2024)
  %25 = load i32, i32* @ErrorFlag, align 4
  %tobool39 = icmp ne i32 %25, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.38
  br label %return

if.end.41:                                        ; preds = %if.then.38
  %26 = load i32, i32* @LabelCounter, align 4
  store i32 %26, i32* %tempLabel2, align 4
  %27 = load i32, i32* @LabelCounter, align 4
  %inc42 = add nsw i32 %27, 1
  store i32 %inc42, i32* @LabelCounter, align 4
  %28 = load i32, i32* %tempLabel2, align 4
  call void @emit(i32 2015, i32 %28, float 0.000000e+00)
  call void @emit(i32 2018, i32 0, float 0.000000e+00)
  %29 = load i32, i32* %tempLabel1, align 4
  call void @emit(i32 2014, i32 %29, float 0.000000e+00)
  call void @parseAStmt()
  %30 = load i32, i32* @ErrorFlag, align 4
  %tobool43 = icmp ne i32 %30, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  br label %return

if.end.45:                                        ; preds = %if.end.41
  %31 = load i32, i32* %tempLabel2, align 4
  call void @emit(i32 2014, i32 %31, float 0.000000e+00)
  br label %if.end.47

if.else.46:                                       ; preds = %if.end.37
  %32 = load i32, i32* %tempLabel1, align 4
  call void @emit(i32 2014, i32 %32, float 0.000000e+00)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.end.45
  br label %sw.epilog

sw.bb.48:                                         ; preds = %entry
  call void @match(i32 123)
  br label %do.body

do.body:                                          ; preds = %land.end, %sw.bb.48
  call void @parseAStmt()
  %33 = load i32, i32* @ErrorFlag, align 4
  %tobool49 = icmp ne i32 %33, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %do.body
  store i32 0, i32* @ErrorFlag, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.51
  %34 = load i32, i32* @lookahead, align 4
  %cmp52 = icmp ne i32 %34, 125
  br i1 %cmp52, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %35 = load i32, i32* @lookahead, align 4
  %cmp53 = icmp ne i32 %35, 260
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %36 = phi i1 [ false, %do.cond ], [ %cmp53, %land.rhs ]
  br i1 %36, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  call void @match(i32 125)
  %37 = load i32, i32* @ErrorFlag, align 4
  %tobool54 = icmp ne i32 %37, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %do.end
  br label %return

if.end.56:                                        ; preds = %do.end
  br label %sw.epilog

sw.bb.57:                                         ; preds = %entry
  %38 = load i32, i32* @NextLookahead, align 4
  %cmp58 = icmp eq i32 %38, 59
  br i1 %cmp58, label %if.then.59, label %if.else.70

if.then.59:                                       ; preds = %sw.bb.57
  call void @match(i32 2042)
  %39 = load i32, i32* @ErrorFlag, align 4
  %tobool60 = icmp ne i32 %39, 0
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.59
  br label %return

if.end.62:                                        ; preds = %if.then.59
  call void @match(i32 59)
  %40 = load i32, i32* @ErrorFlag, align 4
  %tobool63 = icmp ne i32 %40, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.62
  br label %return

if.end.65:                                        ; preds = %if.end.62
  %41 = load i32, i32* @FuncNameIndex, align 4
  %idxprom = sext i32 %41 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx, i32 0, i32 2
  %42 = load i32, i32* %type, align 4
  %cmp66 = icmp eq i32 %42, 2002
  br i1 %cmp66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %if.end.65
  call void @emit(i32 256, i32 1, float 0.000000e+00)
  br label %if.end.69

if.else.68:                                       ; preds = %if.end.65
  call void @emit(i32 2001, i32 0, float 1.000000e+00)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.68, %if.then.67
  br label %if.end.80

if.else.70:                                       ; preds = %sw.bb.57
  call void @match(i32 2042)
  %43 = load i32, i32* @ErrorFlag, align 4
  %tobool71 = icmp ne i32 %43, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.else.70
  br label %return

if.end.73:                                        ; preds = %if.else.70
  call void @exprAssg()
  %44 = load i32, i32* @ErrorFlag, align 4
  %tobool74 = icmp ne i32 %44, 0
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.73
  br label %return

if.end.76:                                        ; preds = %if.end.73
  call void @match(i32 59)
  %45 = load i32, i32* @ErrorFlag, align 4
  %tobool77 = icmp ne i32 %45, 0
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.76
  br label %return

if.end.79:                                        ; preds = %if.end.76
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.end.69
  %46 = load i32, i32* @ReturnLabel, align 4
  call void @emit(i32 2015, i32 %46, float 0.000000e+00)
  call void @emit(i32 2018, i32 0, float 0.000000e+00)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @exprAssg()
  %47 = load i32, i32* @ErrorFlag, align 4
  %tobool81 = icmp ne i32 %47, 0
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %sw.default
  br label %return

if.end.83:                                        ; preds = %sw.default
  call void @emit(i32 2004, i32 0, float 0.000000e+00)
  call void @match(i32 59)
  br label %return

sw.epilog:                                        ; preds = %if.end.80, %if.end.56, %if.end.47, %if.end.16
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.83, %if.then.82, %if.then.78, %if.then.75, %if.then.72, %if.then.64, %if.then.61, %if.then.55, %if.then.44, %if.then.40, %if.then.36, %if.then.29, %if.then.26, %if.then.23, %if.then.19, %if.then.15, %if.then.9, %if.then.6, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @parse() #0 {
entry:
  store i32 1, i32* @lookahead, align 4
  %0 = load i32, i32* @lookahead, align 4
  call void @match(i32 %0)
  %1 = load i32, i32* @ErrorFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @ErrorFlag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @lookahead, align 4
  %2 = load i32, i32* @lookahead, align 4
  call void @match(i32 %2)
  %3 = load i32, i32* @ErrorFlag, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* @ErrorFlag, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  call void @DeclOrF()
  %4 = load i32, i32* @ErrorFlag, align 4
  %tobool4 = icmp ne i32 %4, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  br label %return

if.end.6:                                         ; preds = %if.end.3
  call void @FunctionList()
  %5 = load i32, i32* @ErrorFlag, align 4
  %tobool7 = icmp ne i32 %5, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  br label %return

if.end.9:                                         ; preds = %if.end.6
  call void @CheckMain()
  call void @AllBodsParsed()
  %6 = load i32, i32* @ErrorFlag, align 4
  %tobool10 = icmp ne i32 %6, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  br label %return

if.end.12:                                        ; preds = %if.end.9
  call void @emit(i32 2027, i32 0, float 0.000000e+00)
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then.8, %if.then.5
  ret void
}

; Function Attrs: nounwind uwtable
define void @FunctionList() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, i32* @ErrorFlag, align 4
  store i32 0, i32* @FloatFlag, align 4
  call void @LocalReset()
  %0 = load i32, i32* @lookahead, align 4
  switch i32 %0, label %sw.default [
    i32 259, label %sw.bb
    i32 2002, label %sw.bb.1
    i32 2003, label %sw.bb.8
    i32 260, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %do.body
  call void @FunctionDef(i32 2002)
  %1 = load i32, i32* @ErrorFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %do.end

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.1:                                          ; preds = %do.body
  call void @match(i32 2002)
  %2 = load i32, i32* @ErrorFlag, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %sw.bb.1
  br label %do.end

if.end.4:                                         ; preds = %sw.bb.1
  call void @FunctionDef(i32 2002)
  %3 = load i32, i32* @ErrorFlag, align 4
  %tobool5 = icmp ne i32 %3, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  br label %do.end

if.end.7:                                         ; preds = %if.end.4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %do.body
  call void @match(i32 2003)
  %4 = load i32, i32* @ErrorFlag, align 4
  %tobool9 = icmp ne i32 %4, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.8
  br label %do.end

if.end.11:                                        ; preds = %sw.bb.8
  call void @FunctionDef(i32 2003)
  %5 = load i32, i32* @ErrorFlag, align 4
  %tobool12 = icmp ne i32 %5, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  br label %do.end

if.end.14:                                        ; preds = %if.end.11
  br label %sw.bb.15

sw.bb.15:                                         ; preds = %do.body, %if.end.14
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  call void @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0))
  br label %do.end

sw.epilog:                                        ; preds = %sw.bb.15, %if.end.7, %if.end
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %6 = load i32, i32* @lookahead, align 4
  %cmp = icmp ne i32 %6, 260
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %if.then, %if.then.3, %if.then.6, %if.then.10, %if.then.13, %sw.default, %do.cond
  ret void
}

declare void @CheckMain() #1

declare void @AllBodsParsed() #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @ExprList() #0 {
entry:
  %0 = load i32, i32* @lookahead, align 4
  %cmp = icmp ne i32 %0, 41
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  call void @exprAssg()
  %1 = load i32, i32* @ErrorFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  br label %if.end.9

if.end:                                           ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %if.end
  %2 = load i32, i32* @lookahead, align 4
  %cmp2 = icmp eq i32 %2, 44
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @match(i32 44)
  %3 = load i32, i32* @ErrorFlag, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  br label %if.end.9

if.end.5:                                         ; preds = %while.body
  call void @exprAssg()
  %4 = load i32, i32* @ErrorFlag, align 4
  %tobool6 = icmp ne i32 %4, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  br label %if.end.9

if.end.8:                                         ; preds = %if.end.5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.1, %if.then.4, %if.then.7, %while.end, %entry
  ret void
}

declare void @LocalReset() #1

; Function Attrs: nounwind uwtable
define void @ParamList() #0 {
entry:
  %tempLocalIndex = alloca i32, align 4
  %0 = load i32, i32* @lookahead, align 4
  %cmp = icmp eq i32 %0, 259
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @GlobalIndex, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %if.then
  %2 = load i32, i32* @GlobalIndex, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom
  %function = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx, i32 0, i32 4
  %3 = load i32, i32* %function, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then.1
  call void @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.17

if.end:                                           ; preds = %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %4 = load i32, i32* @LocalIndex, align 4
  %tobool5 = icmp ne i32 %4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  call void @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.17

if.else:                                          ; preds = %if.end.4
  %call = call i32 @LocalInsert(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @lexbuf, i32 0, i32 0), i32 259, i32 2041, i32 1, i32 0, i32 0)
  store i32 %call, i32* @LocalIndex, align 4
  store i32 %call, i32* %tempLocalIndex, align 4
  %5 = load i32, i32* @ErrorFlag, align 4
  %tobool7 = icmp ne i32 %5, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.else
  br label %if.end.17

if.end.9:                                         ; preds = %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9
  call void @match(i32 259)
  %6 = load i32, i32* @ErrorFlag, align 4
  %tobool11 = icmp ne i32 %6, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  br label %if.end.17

if.end.13:                                        ; preds = %if.end.10
  call void @MoreParams()
  %7 = load i32, i32* @ErrorFlag, align 4
  %tobool14 = icmp ne i32 %7, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  br label %if.end.17

if.end.16:                                        ; preds = %if.end.13
  %8 = load i32, i32* %tempLocalIndex, align 4
  call void @emit(i32 2047, i32 %8, float 0.000000e+00)
  %9 = load i32, i32* %tempLocalIndex, align 4
  call void @emit(i32 2049, i32 %9, float 0.000000e+00)
  call void @emit(i32 2055, i32 0, float 0.000000e+00)
  %10 = load i32, i32* @offset, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* @offset, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.3, %if.then.6, %if.then.8, %if.then.12, %if.then.15, %if.end.16, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @DecList() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %if.end.4, %entry
  %0 = load i32, i32* @lookahead, align 4
  %cmp = icmp eq i32 %0, 2002
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %1 = load i32, i32* @lookahead, align 4
  %cmp1 = icmp eq i32 %1, 2003
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %2 = phi i1 [ true, %while.cond ], [ %cmp1, %lor.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %3 = load i32, i32* @lookahead, align 4
  call void @match(i32 %3)
  %4 = load i32, i32* @ErrorFlag, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %return

if.end:                                           ; preds = %while.body
  %5 = load i32, i32* @PreviousLookahead, align 4
  call void @VarList(i32 %5)
  %6 = load i32, i32* @ErrorFlag, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  br label %while.cond

while.end:                                        ; preds = %lor.end
  call void @ParamInt()
  br label %return

return:                                           ; preds = %while.end, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @FstmtList() #0 {
entry:
  call void @match(i32 123)
  %0 = load i32, i32* @ErrorFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @ErrorFlag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  call void @parseAStmt()
  %1 = load i32, i32* @ErrorFlag, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.body
  store i32 0, i32* @ErrorFlag, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.3
  %2 = load i32, i32* @lookahead, align 4
  %cmp = icmp ne i32 %2, 125
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %3 = load i32, i32* @lookahead, align 4
  %cmp4 = icmp ne i32 %3, 260
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %4 = phi i1 [ false, %do.cond ], [ %cmp4, %land.rhs ]
  br i1 %4, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %5 = load i32, i32* @lookahead, align 4
  %cmp5 = icmp eq i32 %5, 260
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.end
  call void @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.10

if.else:                                          ; preds = %do.end
  call void @match(i32 125)
  %6 = load i32, i32* @ErrorFlag, align 4
  %tobool7 = icmp ne i32 %6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.else
  br label %if.end.10

if.end.9:                                         ; preds = %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.then.8, %if.end.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @MoreParams() #0 {
entry:
  %tempLocalIndex = alloca i32, align 4
  %0 = load i32, i32* @lookahead, align 4
  %cmp = icmp eq i32 %0, 44
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  call void @match(i32 44)
  %1 = load i32, i32* @ErrorFlag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  br label %if.end.23

if.end:                                           ; preds = %if.then
  %2 = load i32, i32* @lookahead, align 4
  %cmp2 = icmp ne i32 %2, 259
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.23

if.end.4:                                         ; preds = %if.end
  %3 = load i32, i32* @GlobalIndex, align 4
  %tobool5 = icmp ne i32 %3, 0
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.4
  %4 = load i32, i32* @GlobalIndex, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom
  %function = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx, i32 0, i32 4
  %5 = load i32, i32* %function, align 4
  %tobool7 = icmp ne i32 %5, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.6
  call void @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.23

if.end.9:                                         ; preds = %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end.4
  %6 = load i32, i32* @LocalIndex, align 4
  %tobool11 = icmp ne i32 %6, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.10
  call void @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.23

if.else:                                          ; preds = %if.end.10
  %call = call i32 @LocalInsert(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @lexbuf, i32 0, i32 0), i32 259, i32 2041, i32 1, i32 0, i32 0)
  store i32 %call, i32* @LocalIndex, align 4
  store i32 %call, i32* %tempLocalIndex, align 4
  %7 = load i32, i32* @ErrorFlag, align 4
  %tobool13 = icmp ne i32 %7, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.else
  br label %if.end.23

if.end.15:                                        ; preds = %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15
  call void @match(i32 259)
  %8 = load i32, i32* @ErrorFlag, align 4
  %tobool17 = icmp ne i32 %8, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  br label %if.end.23

if.end.19:                                        ; preds = %if.end.16
  call void @MoreParams()
  %9 = load i32, i32* @ErrorFlag, align 4
  %tobool20 = icmp ne i32 %9, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  br label %if.end.23

if.end.22:                                        ; preds = %if.end.19
  %10 = load i32, i32* %tempLocalIndex, align 4
  call void @emit(i32 2047, i32 %10, float 0.000000e+00)
  %11 = load i32, i32* %tempLocalIndex, align 4
  call void @emit(i32 2049, i32 %11, float 0.000000e+00)
  call void @emit(i32 2055, i32 0, float 0.000000e+00)
  %12 = load i32, i32* @offset, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* @offset, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.1, %if.then.3, %if.then.8, %if.then.12, %if.then.14, %if.then.18, %if.then.21, %if.end.22, %entry
  ret void
}

declare i32 @LocalInsert(i8*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @VarList(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  %tempLocalIndex = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  %0 = load i32, i32* @GlobalIndex, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %do.body
  %1 = load i32, i32* @GlobalIndex, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom
  %function = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx, i32 0, i32 4
  %2 = load i32, i32* %function, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.31, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %do.body
  %3 = load i32, i32* @LocalIndex, align 4
  %tobool4 = icmp ne i32 %3, 0
  br i1 %tobool4, label %if.then.5, label %if.else.21

if.then.5:                                        ; preds = %if.end.3
  %4 = load i32, i32* @LocalIndex, align 4
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom6
  %type8 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx7, i32 0, i32 2
  %5 = load i32, i32* %type8, align 4
  %cmp = icmp eq i32 %5, 2041
  br i1 %cmp, label %if.then.9, label %if.else.19

if.then.9:                                        ; preds = %if.then.5
  %6 = load i32, i32* @NextLookahead, align 4
  %cmp10 = icmp eq i32 %6, 91
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.9
  call void @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.18

if.else:                                          ; preds = %if.then.9
  %7 = load i32, i32* %type.addr, align 4
  %8 = load i32, i32* @LocalIndex, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom12
  %type14 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx13, i32 0, i32 2
  store i32 %7, i32* %type14, align 4
  call void @match(i32 259)
  %9 = load i32, i32* @ErrorFlag, align 4
  %tobool15 = icmp ne i32 %9, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else
  br label %return

if.end.17:                                        ; preds = %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.11
  br label %if.end.20

if.else.19:                                       ; preds = %if.then.5
  call void @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i32 0, i32 0))
  br label %return

if.end.20:                                        ; preds = %if.end.18
  br label %if.end.60

if.else.21:                                       ; preds = %if.end.3
  %10 = load i32, i32* @NextLookahead, align 4
  %cmp22 = icmp eq i32 %10, 91
  br i1 %cmp22, label %if.then.23, label %if.else.51

if.then.23:                                       ; preds = %if.else.21
  %11 = load i32, i32* %type.addr, align 4
  %call = call i32 @LocalInsert(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @lexbuf, i32 0, i32 0), i32 2006, i32 %11, i32 0, i32 0, i32 0)
  store i32 %call, i32* @LocalIndex, align 4
  store i32 %call, i32* %tempLocalIndex, align 4
  %12 = load i32, i32* @ErrorFlag, align 4
  %tobool24 = icmp ne i32 %12, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.23
  br label %return

if.end.26:                                        ; preds = %if.then.23
  store i32 2006, i32* @lookahead, align 4
  call void @match(i32 2006)
  %13 = load i32, i32* @ErrorFlag, align 4
  %tobool27 = icmp ne i32 %13, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  br label %return

if.end.29:                                        ; preds = %if.end.26
  call void @match(i32 91)
  %14 = load i32, i32* @ErrorFlag, align 4
  %tobool30 = icmp ne i32 %14, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  br label %return

if.end.32:                                        ; preds = %if.end.29
  %15 = load i32, i32* @lookahead, align 4
  %cmp33 = icmp eq i32 %15, 256
  br i1 %cmp33, label %if.then.34, label %if.else.40

if.then.34:                                       ; preds = %if.end.32
  %16 = load i32, i32* @tokenval, align 4
  %17 = load i32, i32* %tempLocalIndex, align 4
  %idxprom35 = sext i32 %17 to i64
  %arrayidx36 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom35
  %size = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx36, i32 0, i32 3
  store i32 %16, i32* %size, align 4
  %18 = load i32, i32* @ErrorFlag, align 4
  %tobool37 = icmp ne i32 %18, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.34
  br label %return

if.end.39:                                        ; preds = %if.then.34
  br label %if.end.41

if.else.40:                                       ; preds = %if.end.32
  call void @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i32 0, i32 0))
  br label %return

if.end.41:                                        ; preds = %if.end.39
  call void @match(i32 256)
  %19 = load i32, i32* @ErrorFlag, align 4
  %tobool42 = icmp ne i32 %19, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.41
  br label %return

if.end.44:                                        ; preds = %if.end.41
  call void @match(i32 93)
  %20 = load i32, i32* @ErrorFlag, align 4
  %tobool45 = icmp ne i32 %20, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.44
  br label %return

if.end.47:                                        ; preds = %if.end.44
  %21 = load i32, i32* %tempLocalIndex, align 4
  call void @emit(i32 2047, i32 %21, float 0.000000e+00)
  %22 = load i32, i32* %tempLocalIndex, align 4
  %idxprom48 = sext i32 %22 to i64
  %arrayidx49 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom48
  %size50 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx49, i32 0, i32 3
  %23 = load i32, i32* %size50, align 4
  %24 = load i32, i32* @offset, align 4
  %add = add nsw i32 %24, %23
  store i32 %add, i32* @offset, align 4
  br label %if.end.59

if.else.51:                                       ; preds = %if.else.21
  %25 = load i32, i32* %type.addr, align 4
  %call52 = call i32 @LocalInsert(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @lexbuf, i32 0, i32 0), i32 259, i32 %25, i32 1, i32 0, i32 0)
  store i32 %call52, i32* @LocalIndex, align 4
  %26 = load i32, i32* @ErrorFlag, align 4
  %tobool53 = icmp ne i32 %26, 0
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.else.51
  br label %return

if.end.55:                                        ; preds = %if.else.51
  %27 = load i32, i32* @LocalIndex, align 4
  call void @emit(i32 2047, i32 %27, float 0.000000e+00)
  %28 = load i32, i32* @offset, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* @offset, align 4
  call void @match(i32 259)
  %29 = load i32, i32* @ErrorFlag, align 4
  %tobool56 = icmp ne i32 %29, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.55
  br label %return

if.end.58:                                        ; preds = %if.end.55
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.47
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.20
  %30 = load i32, i32* @lookahead, align 4
  switch i32 %30, label %sw.default [
    i32 44, label %sw.bb
    i32 59, label %sw.bb.64
  ]

sw.bb:                                            ; preds = %if.end.60
  call void @match(i32 44)
  %31 = load i32, i32* @ErrorFlag, align 4
  %tobool61 = icmp ne i32 %31, 0
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %sw.bb
  br label %return

if.end.63:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.64:                                         ; preds = %if.end.60
  call void @match(i32 59)
  %32 = load i32, i32* @ErrorFlag, align 4
  %tobool65 = icmp ne i32 %32, 0
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %sw.bb.64
  br label %return

if.end.67:                                        ; preds = %sw.bb.64
  br label %return

sw.default:                                       ; preds = %if.end.60
  call void @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0))
  br label %return

sw.epilog:                                        ; preds = %if.end.63
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %33 = load i32, i32* @lookahead, align 4
  %cmp68 = icmp eq i32 %33, 259
  br i1 %cmp68, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %34 = load i32, i32* @lookahead, align 4
  %cmp69 = icmp eq i32 %34, 2006
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %35 = phi i1 [ true, %do.cond ], [ %cmp69, %lor.rhs ]
  br i1 %35, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  call void @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i32 0, i32 0))
  br label %return

return:                                           ; preds = %do.end, %sw.default, %if.end.67, %if.then.66, %if.then.62, %if.then.57, %if.then.54, %if.then.46, %if.then.43, %if.else.40, %if.then.38, %if.then.31, %if.then.28, %if.then.25, %if.else.19, %if.then.16, %if.then.2
  ret void
}

declare void @ParamInt() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
