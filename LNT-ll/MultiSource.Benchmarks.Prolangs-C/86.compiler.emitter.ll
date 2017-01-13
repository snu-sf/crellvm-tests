; ModuleID = './MultiSource.Benchmarks.Prolangs-C/86.compiler.emitter.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i8*, i32, i32, i32, i32, i32 }

@ErrorFlag = common global i32 0, align 4
@NumberC = common global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"RADD, \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ADD, \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"RSUB, \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SUB, \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"RMUL, \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"MUL, \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"RDIV, \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"DIV, \00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"'%s#%d, \00", align 1
@LocalTable = common global [100 x %struct.entry] zeroinitializer, align 16
@Scope = common global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"'%s#0, \00", align 1
@GlobalTable = common global [100 x %struct.entry] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [9 x i8] c"WRITEI, \00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"WRITER, \00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"NEWLINE, \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"ST, \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"IST, \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"STH, \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"VAL, \00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"VALB, \00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"@%s#0, \00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c">%s#%d, \00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"READ, \00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"%16.4e, \00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"%s#0 = %d, \00", align 1
@DecCount = common global i32 0, align 4
@.str.25 = private unnamed_addr constant [13 x i8] c"%s#%d = %d, \00", align 1
@offset = common global i32 0, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"NEG, \00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"RNEG, \00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"FIX, \00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"FLOAT, \00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"POP, \00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"$%d: \00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"$%d, \00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"COMP, \00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"SWAP, \00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"BEQ, \00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"BNE, \00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"B, \00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"STHB, \00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"ISTB, \00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"RA%s = 0, \00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"'RA%s, \00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"istb, \00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"frame%s = %d, \00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"'frame%s, \00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"IB, \00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"DB, \00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c">RA%s, \00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"\0A%%%d, START: $3, sb, $2, $1, b,\0A\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"\0A$2: STOP, $3: ->START.\0A\00", align 1
@.str.51 = private unnamed_addr constant [38 x i8] c"\0A Function %s called but not parsed.\0A\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"token %d, tval %d, rval %f\0A\00", align 1
@lookahead = common global i32 0, align 4
@tokenval = common global i32 0, align 4
@ftokenval = common global float 0.000000e+00, align 4
@FloatFlag = common global i32 0, align 4
@lineno = common global i32 0, align 4
@LabelCounter = common global i32 0, align 4
@lexbuf = common global [128 x i8] zeroinitializer, align 16
@LocalIndex = common global i32 0, align 4
@GlobalIndex = common global i32 0, align 4
@NextLookahead = common global i32 0, align 4
@NextTokenval = common global i32 0, align 4
@NextFtokenval = common global float 0.000000e+00, align 4
@PreviousLookahead = common global i32 0, align 4
@PreviousTokenval = common global i32 0, align 4
@PreviousFtokenval = common global float 0.000000e+00, align 4
@ReturnLabel = common global i32 0, align 4
@CallReturnAddr = common global i32 0, align 4
@FuncNameIndex = common global i32 0, align 4
@ArrayParsed = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @emit(i32 %t, i32 %tval, float %rval) #0 {
entry:
  %t.addr = alloca i32, align 4
  %tval.addr = alloca i32, align 4
  %rval.addr = alloca float, align 4
  store i32 %t, i32* %t.addr, align 4
  store i32 %tval, i32* %tval.addr, align 4
  store float %rval, float* %rval.addr, align 4
  %0 = load i32, i32* @ErrorFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @NumberC, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @NumberC, align 4
  %2 = load i32, i32* @NumberC, align 4
  %cmp = icmp sge i32 %2, 8
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* @NumberC, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %3 = load i32, i32* %t.addr, align 4
  switch i32 %3, label %sw.default [
    i32 2030, label %sw.bb
    i32 2029, label %sw.bb.4
    i32 2032, label %sw.bb.6
    i32 2031, label %sw.bb.8
    i32 2034, label %sw.bb.10
    i32 2033, label %sw.bb.12
    i32 2036, label %sw.bb.14
    i32 2035, label %sw.bb.16
    i32 2049, label %sw.bb.18
    i32 2050, label %sw.bb.20
    i32 2046, label %sw.bb.25
    i32 2045, label %sw.bb.27
    i32 2011, label %sw.bb.29
    i32 2020, label %sw.bb.31
    i32 2028, label %sw.bb.33
    i32 2022, label %sw.bb.35
    i32 2023, label %sw.bb.37
    i32 2063, label %sw.bb.39
    i32 2052, label %sw.bb.41
    i32 2051, label %sw.bb.46
    i32 2009, label %sw.bb.51
    i32 256, label %sw.bb.53
    i32 2001, label %sw.bb.55
    i32 2048, label %sw.bb.57
    i32 2047, label %sw.bb.62
    i32 2038, label %sw.bb.67
    i32 2039, label %sw.bb.69
    i32 2002, label %sw.bb.71
    i32 2003, label %sw.bb.73
    i32 2004, label %sw.bb.75
    i32 2014, label %sw.bb.77
    i32 2015, label %sw.bb.79
    i32 2016, label %sw.bb.81
    i32 2037, label %sw.bb.83
    i32 2017, label %sw.bb.85
    i32 2025, label %sw.bb.87
    i32 2018, label %sw.bb.89
    i32 2053, label %sw.bb.91
    i32 2054, label %sw.bb.93
    i32 2055, label %sw.bb.98
    i32 2056, label %sw.bb.100
    i32 2057, label %sw.bb.110
    i32 2059, label %sw.bb.115
    i32 2060, label %sw.bb.120
    i32 2061, label %sw.bb.122
    i32 2058, label %sw.bb.124
    i32 2026, label %sw.bb.129
    i32 2027, label %sw.bb.131
    i32 2062, label %sw.bb.133
  ]

sw.bb:                                            ; preds = %if.end.2
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end.2
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end.2
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end.2
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end.2
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end.2
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end.2
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end.2
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end.2
  %4 = load i32, i32* %tval.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom
  %lexptr = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx, i32 0, i32 0
  %5 = load i8*, i8** %lexptr, align 8
  %6 = load i32, i32* @Scope, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* %5, i32 %6)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end.2
  %7 = load i32, i32* %tval.addr, align 4
  %idxprom21 = sext i32 %7 to i64
  %arrayidx22 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom21
  %lexptr23 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx22, i32 0, i32 0
  %8 = load i8*, i8** %lexptr23, align 8
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* %8)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end.2
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0))
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end.2
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.end.2
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0))
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end.2
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0))
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end.2
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0))
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.2
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.end.2
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0))
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.end.2
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0))
  br label %sw.epilog

sw.bb.41:                                         ; preds = %if.end.2
  %9 = load i32, i32* %tval.addr, align 4
  %idxprom42 = sext i32 %9 to i64
  %arrayidx43 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom42
  %lexptr44 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx43, i32 0, i32 0
  %10 = load i8*, i8** %lexptr44, align 8
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* %10)
  br label %sw.epilog

sw.bb.46:                                         ; preds = %if.end.2
  %11 = load i32, i32* %tval.addr, align 4
  %idxprom47 = sext i32 %11 to i64
  %arrayidx48 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom47
  %lexptr49 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx48, i32 0, i32 0
  %12 = load i8*, i8** %lexptr49, align 8
  %13 = load i32, i32* @Scope, align 4
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* %12, i32 %13)
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.end.2
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0))
  br label %sw.epilog

sw.bb.53:                                         ; preds = %if.end.2
  %14 = load i32, i32* %tval.addr, align 4
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 %14)
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end.2
  %15 = load float, float* %rval.addr, align 4
  %conv = fpext float %15 to double
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), double %conv)
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.end.2
  %16 = load i32, i32* %tval.addr, align 4
  %idxprom58 = sext i32 %16 to i64
  %arrayidx59 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom58
  %lexptr60 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx59, i32 0, i32 0
  %17 = load i8*, i8** %lexptr60, align 8
  %18 = load i32, i32* @DecCount, align 4
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* %17, i32 %18)
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.end.2
  %19 = load i32, i32* %tval.addr, align 4
  %idxprom63 = sext i32 %19 to i64
  %arrayidx64 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @LocalTable, i32 0, i64 %idxprom63
  %lexptr65 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx64, i32 0, i32 0
  %20 = load i8*, i8** %lexptr65, align 8
  %21 = load i32, i32* @Scope, align 4
  %22 = load i32, i32* @offset, align 4
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i8* %20, i32 %21, i32 %22)
  br label %sw.epilog

sw.bb.67:                                         ; preds = %if.end.2
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0))
  br label %sw.epilog

sw.bb.69:                                         ; preds = %if.end.2
  %call70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0))
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.end.2
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0))
  br label %sw.epilog

sw.bb.73:                                         ; preds = %if.end.2
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.end.2
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0))
  br label %sw.epilog

sw.bb.77:                                         ; preds = %if.end.2
  %23 = load i32, i32* %tval.addr, align 4
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %23)
  br label %sw.epilog

sw.bb.79:                                         ; preds = %if.end.2
  %24 = load i32, i32* %tval.addr, align 4
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %24)
  br label %sw.epilog

sw.bb.81:                                         ; preds = %if.end.2
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0))
  br label %sw.epilog

sw.bb.83:                                         ; preds = %if.end.2
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0))
  br label %sw.epilog

sw.bb.85:                                         ; preds = %if.end.2
  %call86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0))
  br label %sw.epilog

sw.bb.87:                                         ; preds = %if.end.2
  %call88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  br label %sw.epilog

sw.bb.89:                                         ; preds = %if.end.2
  %call90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0))
  br label %sw.epilog

sw.bb.91:                                         ; preds = %if.end.2
  %call92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0))
  br label %sw.epilog

sw.bb.93:                                         ; preds = %if.end.2
  %25 = load i32, i32* %tval.addr, align 4
  %idxprom94 = sext i32 %25 to i64
  %arrayidx95 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom94
  %lexptr96 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx95, i32 0, i32 0
  %26 = load i8*, i8** %lexptr96, align 8
  %call97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* %26)
  br label %sw.epilog

sw.bb.98:                                         ; preds = %if.end.2
  %call99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0))
  br label %sw.epilog

sw.bb.100:                                        ; preds = %if.end.2
  %27 = load i32, i32* %tval.addr, align 4
  %idxprom101 = sext i32 %27 to i64
  %arrayidx102 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom101
  %lexptr103 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx102, i32 0, i32 0
  %28 = load i8*, i8** %lexptr103, align 8
  %call104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i8* %28)
  %29 = load i32, i32* %tval.addr, align 4
  %idxprom105 = sext i32 %29 to i64
  %arrayidx106 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom105
  %lexptr107 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx106, i32 0, i32 0
  %30 = load i8*, i8** %lexptr107, align 8
  %call108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8* %30)
  %call109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0))
  br label %sw.epilog

sw.bb.110:                                        ; preds = %if.end.2
  %31 = load i32, i32* %tval.addr, align 4
  %idxprom111 = sext i32 %31 to i64
  %arrayidx112 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom111
  %lexptr113 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx112, i32 0, i32 0
  %32 = load i8*, i8** %lexptr113, align 8
  %33 = load i32, i32* @offset, align 4
  %call114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i8* %32, i32 %33)
  br label %sw.epilog

sw.bb.115:                                        ; preds = %if.end.2
  %34 = load i32, i32* %tval.addr, align 4
  %idxprom116 = sext i32 %34 to i64
  %arrayidx117 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom116
  %lexptr118 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx117, i32 0, i32 0
  %35 = load i8*, i8** %lexptr118, align 8
  %call119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8* %35)
  br label %sw.epilog

sw.bb.120:                                        ; preds = %if.end.2
  %call121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0))
  br label %sw.epilog

sw.bb.122:                                        ; preds = %if.end.2
  %call123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0))
  br label %sw.epilog

sw.bb.124:                                        ; preds = %if.end.2
  %36 = load i32, i32* %tval.addr, align 4
  %idxprom125 = sext i32 %36 to i64
  %arrayidx126 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom125
  %lexptr127 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx126, i32 0, i32 0
  %37 = load i8*, i8** %lexptr127, align 8
  %call128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* %37)
  br label %sw.epilog

sw.bb.129:                                        ; preds = %if.end.2
  %38 = load i32, i32* @DecCount, align 4
  %call130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i32 0, i32 0), i32 %38)
  store i32 0, i32* @NumberC, align 4
  br label %sw.epilog

sw.bb.131:                                        ; preds = %if.end.2
  %call132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i32 0, i32 0))
  br label %sw.epilog

sw.bb.133:                                        ; preds = %if.end.2
  %39 = load i32, i32* %tval.addr, align 4
  %idxprom134 = sext i32 %39 to i64
  %arrayidx135 = getelementptr inbounds [100 x %struct.entry], [100 x %struct.entry]* @GlobalTable, i32 0, i64 %idxprom134
  %lexptr136 = getelementptr inbounds %struct.entry, %struct.entry* %arrayidx135, i32 0, i32 0
  %40 = load i8*, i8** %lexptr136, align 8
  %call137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.51, i32 0, i32 0), i8* %40)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.2
  %41 = load i32, i32* %t.addr, align 4
  %42 = load i32, i32* %tval.addr, align 4
  %43 = load float, float* %rval.addr, align 4
  %conv138 = fpext float %43 to double
  %call139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.52, i32 0, i32 0), i32 %41, i32 %42, double %conv138)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb.133, %sw.bb.131, %sw.bb.129, %sw.bb.124, %sw.bb.122, %sw.bb.120, %sw.bb.115, %sw.bb.110, %sw.bb.100, %sw.bb.98, %sw.bb.93, %sw.bb.91, %sw.bb.89, %sw.bb.87, %sw.bb.85, %sw.bb.83, %sw.bb.81, %sw.bb.79, %sw.bb.77, %sw.bb.75, %sw.bb.73, %sw.bb.71, %sw.bb.69, %sw.bb.67, %sw.bb.62, %sw.bb.57, %sw.bb.55, %sw.bb.53, %sw.bb.51, %sw.bb.46, %sw.bb.41, %sw.bb.39, %sw.bb.37, %sw.bb.35, %sw.bb.33, %sw.bb.31, %sw.bb.29, %sw.bb.27, %sw.bb.25, %sw.bb.20, %sw.bb.18, %sw.bb.16, %sw.bb.14, %sw.bb.12, %sw.bb.10, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
