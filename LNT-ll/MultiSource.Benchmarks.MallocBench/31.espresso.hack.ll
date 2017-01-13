; ModuleID = './MultiSource.Benchmarks.MallocBench/31.espresso.hack.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PLA_t = type { %struct.set_family*, %struct.set_family*, %struct.set_family*, i8*, i32, i32*, %struct.pair_struct*, i8**, %struct.symbolic_struct*, %struct.symbolic_struct* }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.pair_struct = type { i32, i32*, i32* }
%struct.symbolic_struct = type { %struct.symbolic_list_struct*, i32, %struct.symbolic_label_struct*, i32, %struct.symbolic_struct* }
%struct.symbolic_list_struct = type { i32, i32, %struct.symbolic_list_struct* }
%struct.symbolic_label_struct = type { i8*, %struct.symbolic_label_struct* }

@cube = external global %struct.cube_struct, align 8
@.str = private unnamed_addr constant [10 x i8] c"DONT_CARE\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"DONTCARE\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"dont_care\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"dontcare\00", align 1
@trace = external global i32, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"simpcomp+\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"simpcomp-\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"term1    \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"term2    \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"union     \00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"simplify\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"separate  \00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"symbolic-output index out of range\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c".symbolic requires binary variables\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"bad cube in form_bitvector\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"X%d\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [47 x i8] c"use .symbolic and .symbolic-output to specify\0A\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"the present state and next state field information\0A\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"disassemble_pla: need two multiple-valued variables\0A\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"disassemble_pla: # outputs < # states\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"# state EVERY to %d, before=%d after=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"# state ANY to NOWHERE, before=%d after=%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"# state %d to %d, before=%d after=%d\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.23 = private unnamed_addr constant [3 x i8] c"~1\00", align 1

; Function Attrs: nounwind uwtable
define i32 @map_dcset(%struct.PLA_t* %PLA) #0 {
entry:
  %retval = alloca i32, align 4
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %var = alloca i32, align 4
  %i = alloca i32, align 4
  %Tplus = alloca %struct.set_family*, align 8
  %Tminus = alloca %struct.set_family*, align 8
  %Tplusbar = alloca %struct.set_family*, align 8
  %Tminusbar = alloca %struct.set_family*, align 8
  %newf = alloca %struct.set_family*, align 8
  %term1 = alloca %struct.set_family*, align 8
  %term2 = alloca %struct.set_family*, align 8
  %dcset = alloca %struct.set_family*, align 8
  %dcsetbar = alloca %struct.set_family*, align 8
  %cplus = alloca i32*, align 8
  %cminus = alloca i32*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %t = alloca i64, align 8
  %t87 = alloca i64, align 8
  %t97 = alloca i64, align 8
  %t105 = alloca i64, align 8
  %t113 = alloca i64, align 8
  %t121 = alloca i64, align 8
  %t130 = alloca i64, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  %0 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %0, i32 0, i32 7
  %1 = load i8**, i8*** %label, align 8
  %cmp = icmp eq i8** %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label1 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %2, i32 0, i32 7
  %3 = load i8**, i8*** %label1, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  %cmp2 = icmp eq i8* %4, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 -1, i32* %var, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %mul = mul nsw i32 %6, 2
  %cmp3 = icmp slt i32 %5, %mul
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label4 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %8, i32 0, i32 7
  %9 = load i8**, i8*** %label4, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  %10 = load i8*, i8** %arrayidx5, align 8
  %call = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 9) #4
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %if.then.25, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label9 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %12, i32 0, i32 7
  %13 = load i8**, i8*** %label9, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %13, i64 %idxprom8
  %14 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 8) #4
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.25, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.7
  %15 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label15 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %16, i32 0, i32 7
  %17 = load i8**, i8*** %label15, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %17, i64 %idxprom14
  %18 = load i8*, i8** %arrayidx16, align 8
  %call17 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i64 9) #4
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.25, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.13
  %19 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label21 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %20, i32 0, i32 7
  %21 = load i8**, i8*** %label21, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %21, i64 %idxprom20
  %22 = load i8*, i8** %arrayidx22, align 8
  %call23 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i64 8) #4
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false.19, %lor.lhs.false.13, %lor.lhs.false.7, %for.body
  %23 = load i32, i32* %i, align 4
  %div = sdiv i32 %23, 2
  store i32 %div, i32* %var, align 4
  br label %for.end

if.end.26:                                        ; preds = %lor.lhs.false.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.25, %for.cond
  %25 = load i32, i32* %var, align 4
  %cmp27 = icmp eq i32 %25, -1
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %for.end
  %26 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %26, i64 0
  %27 = load i32, i32* %arrayidx30, align 4
  %and = and i32 %27, 1023
  %mul31 = mul i32 32, %and
  %cmp32 = icmp ule i32 %mul31, 32
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.29
  br label %cond.end

cond.false:                                       ; preds = %if.end.29
  %28 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %28, i64 0
  %29 = load i32, i32* %arrayidx33, align 4
  %and34 = and i32 %29, 1023
  %mul35 = mul i32 32, %and34
  %sub = sub i32 %mul35, 1
  %shr = lshr i32 %sub, 5
  %add = add i32 %shr, 1
  %add36 = add i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add36, %cond.false ]
  %conv = zext i32 %cond to i64
  %mul37 = mul i64 4, %conv
  %call38 = call i8* @malloc(i64 %mul37)
  %30 = bitcast i8* %call38 to i32*
  %31 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call39 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %30, i32* %31)
  store i32* %call39, i32** %cplus, align 8
  %32 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %32, i64 0
  %33 = load i32, i32* %arrayidx40, align 4
  %and41 = and i32 %33, 1023
  %mul42 = mul i32 32, %and41
  %cmp43 = icmp ule i32 %mul42, 32
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %cond.end
  br label %cond.end.54

cond.false.46:                                    ; preds = %cond.end
  %34 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %34, i64 0
  %35 = load i32, i32* %arrayidx47, align 4
  %and48 = and i32 %35, 1023
  %mul49 = mul i32 32, %and48
  %sub50 = sub i32 %mul49, 1
  %shr51 = lshr i32 %sub50, 5
  %add52 = add i32 %shr51, 1
  %add53 = add i32 %add52, 1
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.46, %cond.true.45
  %cond55 = phi i32 [ 2, %cond.true.45 ], [ %add53, %cond.false.46 ]
  %conv56 = zext i32 %cond55 to i64
  %mul57 = mul i64 4, %conv56
  %call58 = call i8* @malloc(i64 %mul57)
  %36 = bitcast i8* %call58 to i32*
  %37 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call59 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %36, i32* %37)
  store i32* %call59, i32** %cminus, align 8
  %38 = load i32, i32* %var, align 4
  %mul60 = mul nsw i32 %38, 2
  %and61 = and i32 %mul60, 31
  %shl = shl i32 1, %and61
  %neg = xor i32 %shl, -1
  %39 = load i32, i32* %var, align 4
  %mul62 = mul nsw i32 %39, 2
  %shr63 = ashr i32 %mul62, 5
  %add64 = add nsw i32 %shr63, 1
  %idxprom65 = sext i32 %add64 to i64
  %40 = load i32*, i32** %cplus, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %40, i64 %idxprom65
  %41 = load i32, i32* %arrayidx66, align 4
  %and67 = and i32 %41, %neg
  store i32 %and67, i32* %arrayidx66, align 4
  %42 = load i32, i32* %var, align 4
  %mul68 = mul nsw i32 %42, 2
  %add69 = add nsw i32 %mul68, 1
  %and70 = and i32 %add69, 31
  %shl71 = shl i32 1, %and70
  %neg72 = xor i32 %shl71, -1
  %43 = load i32, i32* %var, align 4
  %mul73 = mul nsw i32 %43, 2
  %add74 = add nsw i32 %mul73, 1
  %shr75 = ashr i32 %add74, 5
  %add76 = add nsw i32 %shr75, 1
  %idxprom77 = sext i32 %add76 to i64
  %44 = load i32*, i32** %cminus, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %44, i64 %idxprom77
  %45 = load i32, i32* %arrayidx78, align 4
  %and79 = and i32 %45, %neg72
  store i32 %and79, i32* %arrayidx78, align 4
  %call80 = call i64 (...) @util_cpu_time()
  store i64 %call80, i64* %t, align 8
  %46 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %46, i32 0, i32 0
  %47 = load %struct.set_family*, %struct.set_family** %F, align 8
  %call81 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* %47)
  %48 = load i32*, i32** %cplus, align 8
  %call82 = call i32** (i32**, i32*, ...) bitcast (i32** (...)* @cofactor to i32** (i32**, i32*, ...)*)(i32** %call81, i32* %48)
  call void (i32**, %struct.set_family**, %struct.set_family**, ...) bitcast (void (...)* @simp_comp to void (i32**, %struct.set_family**, %struct.set_family**, ...)*)(i32** %call82, %struct.set_family** %Tplus, %struct.set_family** %Tplusbar)
  %49 = load i32, i32* @trace, align 4
  %tobool = icmp ne i32 %49, 0
  br i1 %tobool, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %cond.end.54
  %50 = load %struct.set_family*, %struct.set_family** %Tplus, align 8
  %call84 = call i64 (...) @util_cpu_time()
  %51 = load i64, i64* %t, align 8
  %sub85 = sub nsw i64 %call84, %51
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i64 %sub85)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %cond.end.54
  %call88 = call i64 (...) @util_cpu_time()
  store i64 %call88, i64* %t87, align 8
  %52 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F89 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %52, i32 0, i32 0
  %53 = load %struct.set_family*, %struct.set_family** %F89, align 8
  %call90 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* %53)
  %54 = load i32*, i32** %cminus, align 8
  %call91 = call i32** (i32**, i32*, ...) bitcast (i32** (...)* @cofactor to i32** (i32**, i32*, ...)*)(i32** %call90, i32* %54)
  call void (i32**, %struct.set_family**, %struct.set_family**, ...) bitcast (void (...)* @simp_comp to void (i32**, %struct.set_family**, %struct.set_family**, ...)*)(i32** %call91, %struct.set_family** %Tminus, %struct.set_family** %Tminusbar)
  %55 = load i32, i32* @trace, align 4
  %tobool92 = icmp ne i32 %55, 0
  br i1 %tobool92, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %if.end.86
  %56 = load %struct.set_family*, %struct.set_family** %Tminus, align 8
  %call94 = call i64 (...) @util_cpu_time()
  %57 = load i64, i64* %t87, align 8
  %sub95 = sub nsw i64 %call94, %57
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i64 %sub95)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.93, %if.end.86
  %call98 = call i64 (...) @util_cpu_time()
  store i64 %call98, i64* %t97, align 8
  %58 = load %struct.set_family*, %struct.set_family** %Tplus, align 8
  %59 = load %struct.set_family*, %struct.set_family** %Tminusbar, align 8
  %call99 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @cv_intersect to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %58, %struct.set_family* %59)
  store %struct.set_family* %call99, %struct.set_family** %term1, align 8
  %60 = load i32, i32* @trace, align 4
  %tobool100 = icmp ne i32 %60, 0
  br i1 %tobool100, label %if.then.101, label %if.end.104

if.then.101:                                      ; preds = %if.end.96
  %61 = load %struct.set_family*, %struct.set_family** %term1, align 8
  %call102 = call i64 (...) @util_cpu_time()
  %62 = load i64, i64* %t97, align 8
  %sub103 = sub nsw i64 %call102, %62
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i64 %sub103)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.101, %if.end.96
  %call106 = call i64 (...) @util_cpu_time()
  store i64 %call106, i64* %t105, align 8
  %63 = load %struct.set_family*, %struct.set_family** %Tminus, align 8
  %64 = load %struct.set_family*, %struct.set_family** %Tplusbar, align 8
  %call107 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @cv_intersect to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %63, %struct.set_family* %64)
  store %struct.set_family* %call107, %struct.set_family** %term2, align 8
  %65 = load i32, i32* @trace, align 4
  %tobool108 = icmp ne i32 %65, 0
  br i1 %tobool108, label %if.then.109, label %if.end.112

if.then.109:                                      ; preds = %if.end.104
  %66 = load %struct.set_family*, %struct.set_family** %term2, align 8
  %call110 = call i64 (...) @util_cpu_time()
  %67 = load i64, i64* %t105, align 8
  %sub111 = sub nsw i64 %call110, %67
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i64 %sub111)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.109, %if.end.104
  %call114 = call i64 (...) @util_cpu_time()
  store i64 %call114, i64* %t113, align 8
  %68 = load %struct.set_family*, %struct.set_family** %term1, align 8
  %69 = load %struct.set_family*, %struct.set_family** %term2, align 8
  %call115 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %68, %struct.set_family* %69)
  store %struct.set_family* %call115, %struct.set_family** %dcset, align 8
  %70 = load i32, i32* @trace, align 4
  %tobool116 = icmp ne i32 %70, 0
  br i1 %tobool116, label %if.then.117, label %if.end.120

if.then.117:                                      ; preds = %if.end.112
  %71 = load %struct.set_family*, %struct.set_family** %dcset, align 8
  %call118 = call i64 (...) @util_cpu_time()
  %72 = load i64, i64* %t113, align 8
  %sub119 = sub nsw i64 %call118, %72
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i64 %sub119)
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.117, %if.end.112
  %call122 = call i64 (...) @util_cpu_time()
  store i64 %call122, i64* %t121, align 8
  %73 = load %struct.set_family*, %struct.set_family** %dcset, align 8
  %call123 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* %73)
  %74 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %74, i32 0, i32 1
  call void (i32**, %struct.set_family**, %struct.set_family**, ...) bitcast (void (...)* @simp_comp to void (i32**, %struct.set_family**, %struct.set_family**, ...)*)(i32** %call123, %struct.set_family** %D, %struct.set_family** %dcsetbar)
  %75 = load i32, i32* @trace, align 4
  %tobool124 = icmp ne i32 %75, 0
  br i1 %tobool124, label %if.then.125, label %if.end.129

if.then.125:                                      ; preds = %if.end.120
  %76 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D126 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %76, i32 0, i32 1
  %77 = load %struct.set_family*, %struct.set_family** %D126, align 8
  %call127 = call i64 (...) @util_cpu_time()
  %78 = load i64, i64* %t121, align 8
  %sub128 = sub nsw i64 %call127, %78
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i64 %sub128)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.125, %if.end.120
  %call131 = call i64 (...) @util_cpu_time()
  store i64 %call131, i64* %t130, align 8
  %79 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F132 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %79, i32 0, i32 0
  %80 = load %struct.set_family*, %struct.set_family** %F132, align 8
  %81 = load %struct.set_family*, %struct.set_family** %dcsetbar, align 8
  %call133 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @cv_intersect to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %80, %struct.set_family* %81)
  store %struct.set_family* %call133, %struct.set_family** %newf, align 8
  %82 = load i32, i32* @trace, align 4
  %tobool134 = icmp ne i32 %82, 0
  br i1 %tobool134, label %if.then.135, label %if.end.139

if.then.135:                                      ; preds = %if.end.129
  %83 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F136 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %83, i32 0, i32 0
  %84 = load %struct.set_family*, %struct.set_family** %F136, align 8
  %call137 = call i64 (...) @util_cpu_time()
  %85 = load i64, i64* %t130, align 8
  %sub138 = sub nsw i64 %call137, %85
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i64 %sub138)
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.135, %if.end.129
  %86 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F140 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %86, i32 0, i32 0
  %87 = load %struct.set_family*, %struct.set_family** %F140, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %87)
  %88 = load %struct.set_family*, %struct.set_family** %newf, align 8
  %89 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F141 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %89, i32 0, i32 0
  store %struct.set_family* %88, %struct.set_family** %F141, align 8
  %90 = load %struct.set_family*, %struct.set_family** %Tplus, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %90)
  %91 = load %struct.set_family*, %struct.set_family** %Tminus, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %91)
  %92 = load %struct.set_family*, %struct.set_family** %Tplusbar, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %92)
  %93 = load %struct.set_family*, %struct.set_family** %Tminusbar, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %93)
  %94 = load %struct.set_family*, %struct.set_family** %dcsetbar, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %94)
  %95 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F142 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %95, i32 0, i32 0
  %96 = load %struct.set_family*, %struct.set_family** %F142, align 8
  %call143 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_active to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %96)
  %97 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F144 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %97, i32 0, i32 0
  %98 = load %struct.set_family*, %struct.set_family** %F144, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %98, i32 0, i32 5
  %99 = load i32*, i32** %data, align 8
  store i32* %99, i32** %p, align 8
  %100 = load i32*, i32** %p, align 8
  %101 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F145 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %101, i32 0, i32 0
  %102 = load %struct.set_family*, %struct.set_family** %F145, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %102, i32 0, i32 3
  %103 = load i32, i32* %count, align 4
  %104 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F146 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %104, i32 0, i32 0
  %105 = load %struct.set_family*, %struct.set_family** %F146, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %105, i32 0, i32 0
  %106 = load i32, i32* %wsize, align 4
  %mul147 = mul nsw i32 %103, %106
  %idx.ext = sext i32 %mul147 to i64
  %add.ptr = getelementptr inbounds i32, i32* %100, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.179, %if.end.139
  %107 = load i32*, i32** %p, align 8
  %108 = load i32*, i32** %last, align 8
  %cmp149 = icmp ult i32* %107, %108
  br i1 %cmp149, label %for.body.151, label %for.end.184

for.body.151:                                     ; preds = %for.cond.148
  %109 = load i32, i32* %var, align 4
  %mul152 = mul nsw i32 %109, 2
  %shr153 = ashr i32 %mul152, 5
  %add154 = add nsw i32 %shr153, 1
  %idxprom155 = sext i32 %add154 to i64
  %110 = load i32*, i32** %p, align 8
  %arrayidx156 = getelementptr inbounds i32, i32* %110, i64 %idxprom155
  %111 = load i32, i32* %arrayidx156, align 4
  %112 = load i32, i32* %var, align 4
  %mul157 = mul nsw i32 %112, 2
  %and158 = and i32 %mul157, 31
  %shl159 = shl i32 1, %and158
  %and160 = and i32 %111, %shl159
  %tobool161 = icmp ne i32 %and160, 0
  br i1 %tobool161, label %lor.lhs.false.162, label %if.then.175

lor.lhs.false.162:                                ; preds = %for.body.151
  %113 = load i32, i32* %var, align 4
  %mul163 = mul nsw i32 %113, 2
  %add164 = add nsw i32 %mul163, 1
  %shr165 = ashr i32 %add164, 5
  %add166 = add nsw i32 %shr165, 1
  %idxprom167 = sext i32 %add166 to i64
  %114 = load i32*, i32** %p, align 8
  %arrayidx168 = getelementptr inbounds i32, i32* %114, i64 %idxprom167
  %115 = load i32, i32* %arrayidx168, align 4
  %116 = load i32, i32* %var, align 4
  %mul169 = mul nsw i32 %116, 2
  %add170 = add nsw i32 %mul169, 1
  %and171 = and i32 %add170, 31
  %shl172 = shl i32 1, %and171
  %and173 = and i32 %115, %shl172
  %tobool174 = icmp ne i32 %and173, 0
  br i1 %tobool174, label %if.end.178, label %if.then.175

if.then.175:                                      ; preds = %lor.lhs.false.162, %for.body.151
  %117 = load i32*, i32** %p, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %117, i64 0
  %118 = load i32, i32* %arrayidx176, align 4
  %and177 = and i32 %118, -8193
  store i32 %and177, i32* %arrayidx176, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.175, %lor.lhs.false.162
  br label %for.inc.179

for.inc.179:                                      ; preds = %if.end.178
  %119 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F180 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %119, i32 0, i32 0
  %120 = load %struct.set_family*, %struct.set_family** %F180, align 8
  %wsize181 = getelementptr inbounds %struct.set_family, %struct.set_family* %120, i32 0, i32 0
  %121 = load i32, i32* %wsize181, align 4
  %122 = load i32*, i32** %p, align 8
  %idx.ext182 = sext i32 %121 to i64
  %add.ptr183 = getelementptr inbounds i32, i32* %122, i64 %idx.ext182
  store i32* %add.ptr183, i32** %p, align 8
  br label %for.cond.148

for.end.184:                                      ; preds = %for.cond.148
  %123 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F185 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %123, i32 0, i32 0
  %124 = load %struct.set_family*, %struct.set_family** %F185, align 8
  %call186 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_inactive to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %124)
  %125 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F187 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %125, i32 0, i32 0
  store %struct.set_family* %call186, %struct.set_family** %F187, align 8
  call void (...) @setdown_cube()
  %126 = load i32, i32* %var, align 4
  %mul188 = mul nsw i32 2, %126
  %add189 = add nsw i32 %mul188, 2
  store i32 %add189, i32* %i, align 4
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.201, %for.end.184
  %127 = load i32, i32* %i, align 4
  %128 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp191 = icmp slt i32 %127, %128
  br i1 %cmp191, label %for.body.193, label %for.end.203

for.body.193:                                     ; preds = %for.cond.190
  %129 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %129 to i64
  %130 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label195 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %130, i32 0, i32 7
  %131 = load i8**, i8*** %label195, align 8
  %arrayidx196 = getelementptr inbounds i8*, i8** %131, i64 %idxprom194
  %132 = load i8*, i8** %arrayidx196, align 8
  %133 = load i32, i32* %i, align 4
  %sub197 = sub nsw i32 %133, 2
  %idxprom198 = sext i32 %sub197 to i64
  %134 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label199 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %134, i32 0, i32 7
  %135 = load i8**, i8*** %label199, align 8
  %arrayidx200 = getelementptr inbounds i8*, i8** %135, i64 %idxprom198
  store i8* %132, i8** %arrayidx200, align 8
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.body.193
  %136 = load i32, i32* %i, align 4
  %inc202 = add nsw i32 %136, 1
  store i32 %inc202, i32* %i, align 4
  br label %for.cond.190

for.end.203:                                      ; preds = %for.cond.190
  %137 = load i32, i32* %var, align 4
  %add204 = add nsw i32 %137, 1
  store i32 %add204, i32* %i, align 4
  br label %for.cond.205

for.cond.205:                                     ; preds = %for.inc.214, %for.end.203
  %138 = load i32, i32* %i, align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp206 = icmp slt i32 %138, %139
  br i1 %cmp206, label %for.body.208, label %for.end.216

for.body.208:                                     ; preds = %for.cond.205
  %140 = load i32, i32* %i, align 4
  %idxprom209 = sext i32 %140 to i64
  %141 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx210 = getelementptr inbounds i32, i32* %141, i64 %idxprom209
  %142 = load i32, i32* %arrayidx210, align 4
  %143 = load i32, i32* %i, align 4
  %sub211 = sub nsw i32 %143, 1
  %idxprom212 = sext i32 %sub211 to i64
  %144 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx213 = getelementptr inbounds i32, i32* %144, i64 %idxprom212
  store i32 %142, i32* %arrayidx213, align 4
  br label %for.inc.214

for.inc.214:                                      ; preds = %for.body.208
  %145 = load i32, i32* %i, align 4
  %inc215 = add nsw i32 %145, 1
  store i32 %inc215, i32* %i, align 4
  br label %for.cond.205

for.end.216:                                      ; preds = %for.cond.205
  %146 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %dec = add nsw i32 %146, -1
  store i32 %dec, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %147 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %dec217 = add nsw i32 %147, -1
  store i32 %dec217, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  call void (...) @cube_setup()
  %148 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F218 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %148, i32 0, i32 0
  %149 = load %struct.set_family*, %struct.set_family** %F218, align 8
  %150 = load i32, i32* %var, align 4
  %mul219 = mul nsw i32 2, %150
  %151 = load i32, i32* %var, align 4
  %mul220 = mul nsw i32 2, %151
  %add221 = add nsw i32 %mul220, 1
  %call222 = call %struct.set_family* (%struct.set_family*, i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_delc to %struct.set_family* (%struct.set_family*, i32, i32, ...)*)(%struct.set_family* %149, i32 %mul219, i32 %add221)
  %152 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F223 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %152, i32 0, i32 0
  store %struct.set_family* %call222, %struct.set_family** %F223, align 8
  %153 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D224 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %153, i32 0, i32 1
  %154 = load %struct.set_family*, %struct.set_family** %D224, align 8
  %155 = load i32, i32* %var, align 4
  %mul225 = mul nsw i32 2, %155
  %156 = load i32, i32* %var, align 4
  %mul226 = mul nsw i32 2, %156
  %add227 = add nsw i32 %mul226, 1
  %call228 = call %struct.set_family* (%struct.set_family*, i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_delc to %struct.set_family* (%struct.set_family*, i32, i32, ...)*)(%struct.set_family* %154, i32 %mul225, i32 %add227)
  %157 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D229 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %157, i32 0, i32 1
  store %struct.set_family* %call228, %struct.set_family** %D229, align 8
  br label %return

return:                                           ; preds = %for.end.216, %if.then.28, %if.then
  %158 = load i32, i32* %retval
  ret i32 %158
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

declare i32* @set_copy(...) #2

declare i8* @malloc(i64) #2

declare i64 @util_cpu_time(...) #2

declare void @simp_comp(...) #2

declare i32** @cofactor(...) #2

declare i32** @cube1list(...) #2

declare void @print_trace(...) #2

declare %struct.set_family* @cv_intersect(...) #2

declare %struct.set_family* @sf_union(...) #2

declare void @sf_free(...) #2

declare %struct.set_family* @sf_active(...) #2

declare %struct.set_family* @sf_inactive(...) #2

declare void @setdown_cube(...) #2

declare void @cube_setup(...) #2

declare %struct.set_family* @sf_delc(...) #2

; Function Attrs: nounwind uwtable
define i32 @map_output_symbolic(%struct.PLA_t* %PLA) #0 {
entry:
  %retval = alloca i32, align 4
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %newF = alloca %struct.set_family*, align 8
  %newD = alloca %struct.set_family*, align 8
  %compress = alloca i32*, align 8
  %p1 = alloca %struct.symbolic_struct*, align 8
  %p2 = alloca %struct.symbolic_list_struct*, align 8
  %i = alloca i32, align 4
  %bit = alloca i32, align 4
  %tot_size = alloca i32, align 4
  %base = alloca i32, align 4
  %old_size = alloca i32, align 4
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  %0 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %0, i32 0, i32 1
  %1 = load %struct.set_family*, %struct.set_family** %D, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i32 0, i32 3
  %2 = load i32, i32* %count, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %3, i32 0, i32 0
  %4 = load %struct.set_family*, %struct.set_family** %F, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %4)
  %5 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D1 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %5, i32 0, i32 1
  %6 = load %struct.set_family*, %struct.set_family** %D1, align 8
  %7 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %7, i32 0, i32 2
  %8 = load %struct.set_family*, %struct.set_family** %R, align 8
  %call = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %6, %struct.set_family* %8)
  %call2 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @complement to %struct.set_family* (i32**, ...)*)(i32** %call)
  %9 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F3 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %9, i32 0, i32 0
  store %struct.set_family* %call2, %struct.set_family** %F3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %tot_size, align 4
  %10 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic_output = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %10, i32 0, i32 9
  %11 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic_output, align 8
  store %struct.symbolic_struct* %11, %struct.symbolic_struct** %p1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %if.end
  %12 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %cmp4 = icmp ne %struct.symbolic_struct* %12, null
  br i1 %cmp4, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %13 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %13, i32 0, i32 0
  %14 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %symbolic_list, align 8
  store %struct.symbolic_list_struct* %14, %struct.symbolic_list_struct** %p2, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %15 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %cmp6 = icmp ne %struct.symbolic_list_struct* %15, null
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %16 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %pos = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %16, i32 0, i32 1
  %17 = load i32, i32* %pos, align 4
  %cmp8 = icmp slt i32 %17, 0
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.7
  %18 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %pos9 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %18, i32 0, i32 1
  %19 = load i32, i32* %pos9, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom = sext i32 %20 to i64
  %21 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i32, i32* %21, i64 %idxprom
  %22 = load i32, i32* %arrayidx, align 4
  %cmp10 = icmp sge i32 %19, %22
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %for.body.7
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %23 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %next = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %23, i32 0, i32 2
  %24 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %next, align 8
  store %struct.symbolic_list_struct* %24, %struct.symbolic_list_struct** %p2, align 8
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %25 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list_length = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %25, i32 0, i32 1
  %26 = load i32, i32* %symbolic_list_length, align 4
  %shl = shl i32 1, %26
  %27 = load i32, i32* %tot_size, align 4
  %add = add nsw i32 %27, %shl
  store i32 %add, i32* %tot_size, align 4
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %28 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %next14 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %28, i32 0, i32 4
  %29 = load %struct.symbolic_struct*, %struct.symbolic_struct** %next14, align 8
  store %struct.symbolic_struct* %29, %struct.symbolic_struct** %p1, align 8
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  %30 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic_output16 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %30, i32 0, i32 9
  %31 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic_output16, align 8
  store %struct.symbolic_struct* %31, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.29, %for.end.15
  %32 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %cmp18 = icmp ne %struct.symbolic_struct* %32, null
  br i1 %cmp18, label %for.body.19, label %for.end.31

for.body.19:                                      ; preds = %for.cond.17
  %33 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list20 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %33, i32 0, i32 0
  %34 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %symbolic_list20, align 8
  store %struct.symbolic_list_struct* %34, %struct.symbolic_list_struct** %p2, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.26, %for.body.19
  %35 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %cmp22 = icmp ne %struct.symbolic_list_struct* %35, null
  br i1 %cmp22, label %for.body.23, label %for.end.28

for.body.23:                                      ; preds = %for.cond.21
  %36 = load i32, i32* %tot_size, align 4
  %37 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %pos24 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %37, i32 0, i32 1
  %38 = load i32, i32* %pos24, align 4
  %add25 = add nsw i32 %38, %36
  store i32 %add25, i32* %pos24, align 4
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.23
  %39 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %next27 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %39, i32 0, i32 2
  %40 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %next27, align 8
  store %struct.symbolic_list_struct* %40, %struct.symbolic_list_struct** %p2, align 8
  br label %for.cond.21

for.end.28:                                       ; preds = %for.cond.21
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end.28
  %41 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %next30 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %41, i32 0, i32 4
  %42 = load %struct.symbolic_struct*, %struct.symbolic_struct** %next30, align 8
  store %struct.symbolic_struct* %42, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.17

for.end.31:                                       ; preds = %for.cond.17
  %43 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  store i32 %43, i32* %old_size, align 4
  %44 = load i32, i32* %tot_size, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom32 = sext i32 %45 to i64
  %46 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %46, i64 %idxprom32
  %47 = load i32, i32* %arrayidx33, align 4
  %add34 = add nsw i32 %47, %44
  store i32 %add34, i32* %arrayidx33, align 4
  call void (...) @setdown_cube()
  call void (...) @cube_setup()
  %48 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom35 = sext i32 %48 to i64
  %49 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %49, i64 %idxprom35
  %50 = load i32, i32* %arrayidx36, align 4
  store i32 %50, i32* %base, align 4
  %51 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F37 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %51, i32 0, i32 0
  %52 = load %struct.set_family*, %struct.set_family** %F37, align 8
  %53 = load i32, i32* %base, align 4
  %54 = load i32, i32* %tot_size, align 4
  %call38 = call %struct.set_family* (%struct.set_family*, i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_addcol to %struct.set_family* (%struct.set_family*, i32, i32, ...)*)(%struct.set_family* %52, i32 %53, i32 %54)
  %55 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F39 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %55, i32 0, i32 0
  store %struct.set_family* %call38, %struct.set_family** %F39, align 8
  %56 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D40 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %56, i32 0, i32 1
  %57 = load %struct.set_family*, %struct.set_family** %D40, align 8
  %58 = load i32, i32* %base, align 4
  %59 = load i32, i32* %tot_size, align 4
  %call41 = call %struct.set_family* (%struct.set_family*, i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_addcol to %struct.set_family* (%struct.set_family*, i32, i32, ...)*)(%struct.set_family* %57, i32 %58, i32 %59)
  %60 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D42 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %60, i32 0, i32 1
  store %struct.set_family* %call41, %struct.set_family** %D42, align 8
  %61 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R43 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %61, i32 0, i32 2
  %62 = load %struct.set_family*, %struct.set_family** %R43, align 8
  %63 = load i32, i32* %base, align 4
  %64 = load i32, i32* %tot_size, align 4
  %call44 = call %struct.set_family* (%struct.set_family*, i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_addcol to %struct.set_family* (%struct.set_family*, i32, i32, ...)*)(%struct.set_family* %62, i32 %63, i32 %64)
  %65 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R45 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %65, i32 0, i32 2
  store %struct.set_family* %call44, %struct.set_family** %R45, align 8
  %66 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic_output46 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %66, i32 0, i32 9
  %67 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic_output46, align 8
  store %struct.symbolic_struct* %67, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.59, %for.end.31
  %68 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %cmp48 = icmp ne %struct.symbolic_struct* %68, null
  br i1 %cmp48, label %for.body.49, label %for.end.61

for.body.49:                                      ; preds = %for.cond.47
  %69 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call50 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 100, i32 %69)
  store %struct.set_family* %call50, %struct.set_family** %newF, align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call51 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 100, i32 %70)
  store %struct.set_family* %call51, %struct.set_family** %newD, align 8
  %71 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %72 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list52 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %72, i32 0, i32 0
  %73 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %symbolic_list52, align 8
  %74 = load i32, i32* %base, align 4
  %call53 = call i32 @find_inputs(%struct.set_family* null, %struct.PLA_t* %71, %struct.symbolic_list_struct* %73, i32 %74, i32 0, %struct.set_family** %newF, %struct.set_family** %newD)
  %75 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F54 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %75, i32 0, i32 0
  %76 = load %struct.set_family*, %struct.set_family** %F54, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %76)
  %77 = load %struct.set_family*, %struct.set_family** %newF, align 8
  %78 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F55 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %78, i32 0, i32 0
  store %struct.set_family* %77, %struct.set_family** %F55, align 8
  %79 = load %struct.set_family*, %struct.set_family** %newD, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %79)
  %80 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list_length56 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %80, i32 0, i32 1
  %81 = load i32, i32* %symbolic_list_length56, align 4
  %shl57 = shl i32 1, %81
  %82 = load i32, i32* %base, align 4
  %add58 = add nsw i32 %82, %shl57
  store i32 %add58, i32* %base, align 4
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.49
  %83 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %next60 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %83, i32 0, i32 4
  %84 = load %struct.symbolic_struct*, %struct.symbolic_struct** %next60, align 8
  store %struct.symbolic_struct* %84, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.47

for.end.61:                                       ; preds = %for.cond.47
  %85 = load %struct.set_family*, %struct.set_family** %newF, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %85, i32 0, i32 1
  %86 = load i32, i32* %sf_size, align 4
  %cmp62 = icmp sle i32 %86, 32
  br i1 %cmp62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.61
  br label %cond.end

cond.false:                                       ; preds = %for.end.61
  %87 = load %struct.set_family*, %struct.set_family** %newF, align 8
  %sf_size63 = getelementptr inbounds %struct.set_family, %struct.set_family* %87, i32 0, i32 1
  %88 = load i32, i32* %sf_size63, align 4
  %sub = sub nsw i32 %88, 1
  %shr = ashr i32 %sub, 5
  %add64 = add nsw i32 %shr, 1
  %add65 = add nsw i32 %add64, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add65, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 4, %conv
  %call66 = call i8* @malloc(i64 %mul)
  %89 = bitcast i8* %call66 to i32*
  %90 = load %struct.set_family*, %struct.set_family** %newF, align 8
  %sf_size67 = getelementptr inbounds %struct.set_family, %struct.set_family* %90, i32 0, i32 1
  %91 = load i32, i32* %sf_size67, align 4
  %call68 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_fill to i32* (i32*, i32, ...)*)(i32* %89, i32 %91)
  store i32* %call68, i32** %compress, align 8
  %92 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic_output69 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %92, i32 0, i32 9
  %93 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic_output69, align 8
  store %struct.symbolic_struct* %93, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.92, %cond.end
  %94 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %cmp71 = icmp ne %struct.symbolic_struct* %94, null
  br i1 %cmp71, label %for.body.73, label %for.end.94

for.body.73:                                      ; preds = %for.cond.70
  %95 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list74 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %95, i32 0, i32 0
  %96 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %symbolic_list74, align 8
  store %struct.symbolic_list_struct* %96, %struct.symbolic_list_struct** %p2, align 8
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.89, %for.body.73
  %97 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %cmp76 = icmp ne %struct.symbolic_list_struct* %97, null
  br i1 %cmp76, label %for.body.78, label %for.end.91

for.body.78:                                      ; preds = %for.cond.75
  %98 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom79 = sext i32 %98 to i64
  %99 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %99, i64 %idxprom79
  %100 = load i32, i32* %arrayidx80, align 4
  %101 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %pos81 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %101, i32 0, i32 1
  %102 = load i32, i32* %pos81, align 4
  %add82 = add nsw i32 %100, %102
  store i32 %add82, i32* %bit, align 4
  %103 = load i32, i32* %bit, align 4
  %and = and i32 %103, 31
  %shl83 = shl i32 1, %and
  %neg = xor i32 %shl83, -1
  %104 = load i32, i32* %bit, align 4
  %shr84 = ashr i32 %104, 5
  %add85 = add nsw i32 %shr84, 1
  %idxprom86 = sext i32 %add85 to i64
  %105 = load i32*, i32** %compress, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %105, i64 %idxprom86
  %106 = load i32, i32* %arrayidx87, align 4
  %and88 = and i32 %106, %neg
  store i32 %and88, i32* %arrayidx87, align 4
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.body.78
  %107 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %next90 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %107, i32 0, i32 2
  %108 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %next90, align 8
  store %struct.symbolic_list_struct* %108, %struct.symbolic_list_struct** %p2, align 8
  br label %for.cond.75

for.end.91:                                       ; preds = %for.cond.75
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.end.91
  %109 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %next93 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %109, i32 0, i32 4
  %110 = load %struct.symbolic_struct*, %struct.symbolic_struct** %next93, align 8
  store %struct.symbolic_struct* %110, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.70

for.end.94:                                       ; preds = %for.cond.70
  %111 = load %struct.set_family*, %struct.set_family** %newF, align 8
  %sf_size95 = getelementptr inbounds %struct.set_family, %struct.set_family* %111, i32 0, i32 1
  %112 = load i32, i32* %sf_size95, align 4
  %113 = load i32*, i32** %compress, align 8
  %call96 = call i32 (i32*, ...) bitcast (i32 (...)* @set_ord to i32 (i32*, ...)*)(i32* %113)
  %sub97 = sub nsw i32 %112, %call96
  %114 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom98 = sext i32 %114 to i64
  %115 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %115, i64 %idxprom98
  %116 = load i32, i32* %arrayidx99, align 4
  %sub100 = sub nsw i32 %116, %sub97
  store i32 %sub100, i32* %arrayidx99, align 4
  call void (...) @setdown_cube()
  call void (...) @cube_setup()
  %117 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F101 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %117, i32 0, i32 0
  %118 = load %struct.set_family*, %struct.set_family** %F101, align 8
  %119 = load i32*, i32** %compress, align 8
  %call102 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_compress to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %118, i32* %119)
  %120 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F103 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %120, i32 0, i32 0
  store %struct.set_family* %call102, %struct.set_family** %F103, align 8
  %121 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D104 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %121, i32 0, i32 1
  %122 = load %struct.set_family*, %struct.set_family** %D104, align 8
  %123 = load i32*, i32** %compress, align 8
  %call105 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_compress to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %122, i32* %123)
  %124 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D106 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %124, i32 0, i32 1
  store %struct.set_family* %call105, %struct.set_family** %D106, align 8
  %125 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %126 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F107 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %126, i32 0, i32 0
  %127 = load %struct.set_family*, %struct.set_family** %F107, align 8
  %sf_size108 = getelementptr inbounds %struct.set_family, %struct.set_family* %127, i32 0, i32 1
  %128 = load i32, i32* %sf_size108, align 4
  %cmp109 = icmp ne i32 %125, %128
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %for.end.94
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %for.end.94
  %129 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F113 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %129, i32 0, i32 0
  %130 = load %struct.set_family*, %struct.set_family** %F113, align 8
  %call114 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %130)
  %131 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F115 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %131, i32 0, i32 0
  store %struct.set_family* %call114, %struct.set_family** %F115, align 8
  %132 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D116 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %132, i32 0, i32 1
  %133 = load %struct.set_family*, %struct.set_family** %D116, align 8
  %call117 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %133)
  %134 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D118 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %134, i32 0, i32 1
  store %struct.set_family* %call117, %struct.set_family** %D118, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.129, %if.end.112
  %135 = load i32, i32* %i, align 4
  %136 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp120 = icmp slt i32 %135, %136
  br i1 %cmp120, label %for.body.122, label %for.end.130

for.body.122:                                     ; preds = %for.cond.119
  %137 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F123 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %137, i32 0, i32 0
  %138 = load %struct.set_family*, %struct.set_family** %F123, align 8
  %139 = load i32, i32* %i, align 4
  %call124 = call %struct.set_family* (%struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @d1merge to %struct.set_family* (%struct.set_family*, i32, ...)*)(%struct.set_family* %138, i32 %139)
  %140 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F125 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %140, i32 0, i32 0
  store %struct.set_family* %call124, %struct.set_family** %F125, align 8
  %141 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D126 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %141, i32 0, i32 1
  %142 = load %struct.set_family*, %struct.set_family** %D126, align 8
  %143 = load i32, i32* %i, align 4
  %call127 = call %struct.set_family* (%struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @d1merge to %struct.set_family* (%struct.set_family*, i32, ...)*)(%struct.set_family* %142, i32 %143)
  %144 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D128 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %144, i32 0, i32 1
  store %struct.set_family* %call127, %struct.set_family** %D128, align 8
  br label %for.inc.129

for.inc.129:                                      ; preds = %for.body.122
  %145 = load i32, i32* %i, align 4
  %inc = add nsw i32 %145, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.119

for.end.130:                                      ; preds = %for.cond.119
  %146 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F131 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %146, i32 0, i32 0
  %147 = load %struct.set_family*, %struct.set_family** %F131, align 8
  %call132 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %147)
  %148 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F133 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %148, i32 0, i32 0
  store %struct.set_family* %call132, %struct.set_family** %F133, align 8
  %149 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D134 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %149, i32 0, i32 1
  %150 = load %struct.set_family*, %struct.set_family** %D134, align 8
  %call135 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %150)
  %151 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D136 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %151, i32 0, i32 1
  store %struct.set_family* %call135, %struct.set_family** %D136, align 8
  %152 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R137 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %152, i32 0, i32 2
  %153 = load %struct.set_family*, %struct.set_family** %R137, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %153)
  %154 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call138 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 0, i32 %154)
  %155 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R139 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %155, i32 0, i32 2
  store %struct.set_family* %call138, %struct.set_family** %R139, align 8
  %156 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %157 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic_output140 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %157, i32 0, i32 9
  %158 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic_output140, align 8
  %159 = load i32*, i32** %compress, align 8
  %160 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %161 = load i32, i32* %old_size, align 4
  %162 = load i32, i32* %tot_size, align 4
  %call141 = call i32 @symbolic_hack_labels(%struct.PLA_t* %156, %struct.symbolic_struct* %158, i32* %159, i32 %160, i32 %161, i32 %162)
  %163 = load i32*, i32** %compress, align 8
  %tobool = icmp ne i32* %163, null
  br i1 %tobool, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %for.end.130
  %164 = load i32*, i32** %compress, align 8
  %165 = bitcast i32* %164 to i8*
  call void @free(i8* %165)
  store i32* null, i32** %compress, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %for.end.130
  %166 = load i32, i32* %retval
  ret i32 %166
}

declare %struct.set_family* @complement(...) #2

declare i32** @cube2list(...) #2

declare void @fatal(...) #2

declare %struct.set_family* @sf_addcol(...) #2

declare %struct.set_family* @sf_new(...) #2

declare i32* @set_fill(...) #2

declare i32 @set_ord(...) #2

declare %struct.set_family* @sf_compress(...) #2

declare %struct.set_family* @sf_contain(...) #2

declare %struct.set_family* @d1merge(...) #2

declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @find_inputs(%struct.set_family* %A, %struct.PLA_t* %PLA, %struct.symbolic_list_struct* %list, i32 %base, i32 %value, %struct.set_family** %newF, %struct.set_family** %newD) #0 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca %struct.set_family*, align 8
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %list.addr = alloca %struct.symbolic_list_struct*, align 8
  %base.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %newF.addr = alloca %struct.set_family**, align 8
  %newD.addr = alloca %struct.set_family**, align 8
  %S = alloca %struct.set_family*, align 8
  %S1 = alloca %struct.set_family*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store %struct.symbolic_list_struct* %list, %struct.symbolic_list_struct** %list.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  store %struct.set_family** %newF, %struct.set_family*** %newF.addr, align 8
  store %struct.set_family** %newD, %struct.set_family*** %newD.addr, align 8
  %0 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %list.addr, align 8
  %cmp = icmp eq %struct.symbolic_list_struct* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %2 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %2, i32 0, i32 0
  %3 = load %struct.set_family*, %struct.set_family** %F, align 8
  %call = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @cv_intersect to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %1, %struct.set_family* %3)
  store %struct.set_family* %call, %struct.set_family** %S, align 8
  %4 = load %struct.set_family*, %struct.set_family** %S, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 5
  %5 = load i32*, i32** %data, align 8
  store i32* %5, i32** %p, align 8
  %6 = load i32*, i32** %p, align 8
  %7 = load %struct.set_family*, %struct.set_family** %S, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 3
  %8 = load i32, i32* %count, align 4
  %9 = load %struct.set_family*, %struct.set_family** %S, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 0
  %10 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %8, %10
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %6, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32*, i32** %p, align 8
  %12 = load i32*, i32** %last, align 8
  %cmp1 = icmp ult i32* %11, %12
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %base.addr, align 4
  %14 = load i32, i32* %value.addr, align 4
  %add = add nsw i32 %13, %14
  %and = and i32 %add, 31
  %shl = shl i32 1, %and
  %15 = load i32, i32* %base.addr, align 4
  %16 = load i32, i32* %value.addr, align 4
  %add2 = add nsw i32 %15, %16
  %shr = ashr i32 %add2, 5
  %add3 = add nsw i32 %shr, 1
  %idxprom = sext i32 %add3 to i64
  %17 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %17, i64 %idxprom
  %18 = load i32, i32* %arrayidx, align 4
  %or = or i32 %18, %shl
  store i32 %or, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load %struct.set_family*, %struct.set_family** %S, align 8
  %wsize4 = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i32 0, i32 0
  %20 = load i32, i32* %wsize4, align 4
  %21 = load i32*, i32** %p, align 8
  %idx.ext5 = sext i32 %20 to i64
  %add.ptr6 = getelementptr inbounds i32, i32* %21, i64 %idx.ext5
  store i32* %add.ptr6, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.set_family**, %struct.set_family*** %newF.addr, align 8
  %23 = load %struct.set_family*, %struct.set_family** %22, align 8
  %24 = load %struct.set_family*, %struct.set_family** %S, align 8
  %call7 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %23, %struct.set_family* %24)
  %25 = load %struct.set_family**, %struct.set_family*** %newF.addr, align 8
  store %struct.set_family* %call7, %struct.set_family** %25, align 8
  br label %if.end.31

if.else:                                          ; preds = %entry
  %26 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %26, i32 0, i32 2
  %27 = load %struct.set_family*, %struct.set_family** %R, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom8 = sext i32 %28 to i64
  %29 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %29, i64 %idxprom8
  %30 = load i32, i32* %arrayidx9, align 4
  %31 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %list.addr, align 8
  %pos = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %31, i32 0, i32 1
  %32 = load i32, i32* %pos, align 4
  %add10 = add nsw i32 %30, %32
  %call11 = call %struct.set_family* (%struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @cof_output to %struct.set_family* (%struct.set_family*, i32, ...)*)(%struct.set_family* %27, i32 %add10)
  store %struct.set_family* %call11, %struct.set_family** %S, align 8
  %33 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %cmp12 = icmp ne %struct.set_family* %33, null
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else
  %34 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %35 = load %struct.set_family*, %struct.set_family** %S, align 8
  %call14 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @cv_intersect to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %34, %struct.set_family* %35)
  store %struct.set_family* %call14, %struct.set_family** %S1, align 8
  %36 = load %struct.set_family*, %struct.set_family** %S, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %36)
  %37 = load %struct.set_family*, %struct.set_family** %S1, align 8
  store %struct.set_family* %37, %struct.set_family** %S, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.else
  %38 = load %struct.set_family*, %struct.set_family** %S, align 8
  %39 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %40 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %list.addr, align 8
  %next = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %40, i32 0, i32 2
  %41 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %next, align 8
  %42 = load i32, i32* %base.addr, align 4
  %43 = load i32, i32* %value.addr, align 4
  %mul15 = mul nsw i32 %43, 2
  %44 = load %struct.set_family**, %struct.set_family*** %newF.addr, align 8
  %45 = load %struct.set_family**, %struct.set_family*** %newD.addr, align 8
  %call16 = call i32 @find_inputs(%struct.set_family* %38, %struct.PLA_t* %39, %struct.symbolic_list_struct* %41, i32 %42, i32 %mul15, %struct.set_family** %44, %struct.set_family** %45)
  %46 = load %struct.set_family*, %struct.set_family** %S, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %46)
  %47 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F17 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %47, i32 0, i32 0
  %48 = load %struct.set_family*, %struct.set_family** %F17, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom18 = sext i32 %49 to i64
  %50 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %50, i64 %idxprom18
  %51 = load i32, i32* %arrayidx19, align 4
  %52 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %list.addr, align 8
  %pos20 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %52, i32 0, i32 1
  %53 = load i32, i32* %pos20, align 4
  %add21 = add nsw i32 %51, %53
  %call22 = call %struct.set_family* (%struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @cof_output to %struct.set_family* (%struct.set_family*, i32, ...)*)(%struct.set_family* %48, i32 %add21)
  store %struct.set_family* %call22, %struct.set_family** %S, align 8
  %54 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %cmp23 = icmp ne %struct.set_family* %54, null
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end
  %55 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %56 = load %struct.set_family*, %struct.set_family** %S, align 8
  %call25 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @cv_intersect to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %55, %struct.set_family* %56)
  store %struct.set_family* %call25, %struct.set_family** %S1, align 8
  %57 = load %struct.set_family*, %struct.set_family** %S, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %57)
  %58 = load %struct.set_family*, %struct.set_family** %S1, align 8
  store %struct.set_family* %58, %struct.set_family** %S, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end
  %59 = load %struct.set_family*, %struct.set_family** %S, align 8
  %60 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %61 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %list.addr, align 8
  %next27 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %61, i32 0, i32 2
  %62 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %next27, align 8
  %63 = load i32, i32* %base.addr, align 4
  %64 = load i32, i32* %value.addr, align 4
  %mul28 = mul nsw i32 %64, 2
  %add29 = add nsw i32 %mul28, 1
  %65 = load %struct.set_family**, %struct.set_family*** %newF.addr, align 8
  %66 = load %struct.set_family**, %struct.set_family*** %newD.addr, align 8
  %call30 = call i32 @find_inputs(%struct.set_family* %59, %struct.PLA_t* %60, %struct.symbolic_list_struct* %62, i32 %63, i32 %add29, %struct.set_family** %65, %struct.set_family** %66)
  %67 = load %struct.set_family*, %struct.set_family** %S, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %67)
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.26, %for.end
  %68 = load i32, i32* %retval
  ret i32 %68
}

declare %struct.set_family* @sf_append(...) #2

declare %struct.set_family* @cof_output(...) #2

; Function Attrs: nounwind uwtable
define i32 @map_symbolic(%struct.PLA_t* %PLA) #0 {
entry:
  %retval = alloca i32, align 4
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %p1 = alloca %struct.symbolic_struct*, align 8
  %p2 = alloca %struct.symbolic_list_struct*, align 8
  %var = alloca i32, align 4
  %base = alloca i32, align 4
  %num_vars = alloca i32, align 4
  %num_binary_vars = alloca i32, align 4
  %new_part_size = alloca i32*, align 8
  %new_size = alloca i32, align 4
  %size_added = alloca i32, align 4
  %num_deleted_vars = alloca i32, align 4
  %num_added_vars = alloca i32, align 4
  %newvar = alloca i32, align 4
  %compress = alloca i32*, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  %0 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %0, i32 0, i32 8
  %1 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic, align 8
  store %struct.symbolic_struct* %1, %struct.symbolic_struct** %p1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %2 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %cmp = icmp ne %struct.symbolic_struct* %2, null
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  %3 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %3, i32 0, i32 0
  %4 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %symbolic_list, align 8
  store %struct.symbolic_list_struct* %4, %struct.symbolic_list_struct** %p2, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %cmp2 = icmp ne %struct.symbolic_list_struct* %5, null
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %variable = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %6, i32 0, i32 0
  %7 = load i32, i32* %variable, align 4
  %cmp4 = icmp slt i32 %7, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.3
  %8 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %variable5 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %8, i32 0, i32 0
  %9 = load i32, i32* %variable5, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp6 = icmp sge i32 %9, %10
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body.3
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %next = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %11, i32 0, i32 2
  %12 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %next, align 8
  store %struct.symbolic_list_struct* %12, %struct.symbolic_list_struct** %p2, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %13 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %next8 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %13, i32 0, i32 4
  %14 = load %struct.symbolic_struct*, %struct.symbolic_struct** %next8, align 8
  store %struct.symbolic_struct* %14, %struct.symbolic_struct** %p1, align 8
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  store i32 0, i32* %size_added, align 4
  store i32 0, i32* %num_added_vars, align 4
  %15 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic10 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %15, i32 0, i32 8
  %16 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic10, align 8
  store %struct.symbolic_struct* %16, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.14, %for.end.9
  %17 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %cmp12 = icmp ne %struct.symbolic_struct* %17, null
  br i1 %cmp12, label %for.body.13, label %for.end.16

for.body.13:                                      ; preds = %for.cond.11
  %18 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list_length = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %18, i32 0, i32 1
  %19 = load i32, i32* %symbolic_list_length, align 4
  %shl = shl i32 1, %19
  %20 = load i32, i32* %size_added, align 4
  %add = add nsw i32 %20, %shl
  store i32 %add, i32* %size_added, align 4
  %21 = load i32, i32* %num_added_vars, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %num_added_vars, align 4
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.13
  %22 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %next15 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %22, i32 0, i32 4
  %23 = load %struct.symbolic_struct*, %struct.symbolic_struct** %next15, align 8
  store %struct.symbolic_struct* %23, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.11

for.end.16:                                       ; preds = %for.cond.11
  %24 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %24, i32 0, i32 0
  %25 = load %struct.set_family*, %struct.set_family** %F, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 1
  %26 = load i32, i32* %sf_size, align 4
  %27 = load i32, i32* %size_added, align 4
  %add17 = add nsw i32 %26, %27
  %cmp18 = icmp sle i32 %add17, 32
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.16
  br label %cond.end

cond.false:                                       ; preds = %for.end.16
  %28 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F19 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %28, i32 0, i32 0
  %29 = load %struct.set_family*, %struct.set_family** %F19, align 8
  %sf_size20 = getelementptr inbounds %struct.set_family, %struct.set_family* %29, i32 0, i32 1
  %30 = load i32, i32* %sf_size20, align 4
  %31 = load i32, i32* %size_added, align 4
  %add21 = add nsw i32 %30, %31
  %sub = sub nsw i32 %add21, 1
  %shr = ashr i32 %sub, 5
  %add22 = add nsw i32 %shr, 1
  %add23 = add nsw i32 %add22, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add23, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 4, %conv
  %call = call i8* @malloc(i64 %mul)
  %32 = bitcast i8* %call to i32*
  %33 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F24 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %33, i32 0, i32 0
  %34 = load %struct.set_family*, %struct.set_family** %F24, align 8
  %sf_size25 = getelementptr inbounds %struct.set_family, %struct.set_family* %34, i32 0, i32 1
  %35 = load i32, i32* %sf_size25, align 4
  %36 = load i32, i32* %size_added, align 4
  %add26 = add nsw i32 %35, %36
  %call27 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_fill to i32* (i32*, i32, ...)*)(i32* %32, i32 %add26)
  store i32* %call27, i32** %compress, align 8
  %37 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic28 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %37, i32 0, i32 8
  %38 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic28, align 8
  store %struct.symbolic_struct* %38, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.63, %cond.end
  %39 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %cmp30 = icmp ne %struct.symbolic_struct* %39, null
  br i1 %cmp30, label %for.body.32, label %for.end.65

for.body.32:                                      ; preds = %for.cond.29
  %40 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list33 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %40, i32 0, i32 0
  %41 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %symbolic_list33, align 8
  store %struct.symbolic_list_struct* %41, %struct.symbolic_list_struct** %p2, align 8
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.60, %for.body.32
  %42 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %cmp35 = icmp ne %struct.symbolic_list_struct* %42, null
  br i1 %cmp35, label %for.body.37, label %for.end.62

for.body.37:                                      ; preds = %for.cond.34
  %43 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %variable38 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %43, i32 0, i32 0
  %44 = load i32, i32* %variable38, align 4
  %mul39 = mul nsw i32 %44, 2
  %and = and i32 %mul39, 31
  %shl40 = shl i32 1, %and
  %neg = xor i32 %shl40, -1
  %45 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %variable41 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %45, i32 0, i32 0
  %46 = load i32, i32* %variable41, align 4
  %mul42 = mul nsw i32 %46, 2
  %shr43 = ashr i32 %mul42, 5
  %add44 = add nsw i32 %shr43, 1
  %idxprom = sext i32 %add44 to i64
  %47 = load i32*, i32** %compress, align 8
  %arrayidx = getelementptr inbounds i32, i32* %47, i64 %idxprom
  %48 = load i32, i32* %arrayidx, align 4
  %and45 = and i32 %48, %neg
  store i32 %and45, i32* %arrayidx, align 4
  %49 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %variable46 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %49, i32 0, i32 0
  %50 = load i32, i32* %variable46, align 4
  %mul47 = mul nsw i32 %50, 2
  %add48 = add nsw i32 %mul47, 1
  %and49 = and i32 %add48, 31
  %shl50 = shl i32 1, %and49
  %neg51 = xor i32 %shl50, -1
  %51 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %variable52 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %51, i32 0, i32 0
  %52 = load i32, i32* %variable52, align 4
  %mul53 = mul nsw i32 %52, 2
  %add54 = add nsw i32 %mul53, 1
  %shr55 = ashr i32 %add54, 5
  %add56 = add nsw i32 %shr55, 1
  %idxprom57 = sext i32 %add56 to i64
  %53 = load i32*, i32** %compress, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %53, i64 %idxprom57
  %54 = load i32, i32* %arrayidx58, align 4
  %and59 = and i32 %54, %neg51
  store i32 %and59, i32* %arrayidx58, align 4
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.37
  %55 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %next61 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %55, i32 0, i32 2
  %56 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %next61, align 8
  store %struct.symbolic_list_struct* %56, %struct.symbolic_list_struct** %p2, align 8
  br label %for.cond.34

for.end.62:                                       ; preds = %for.cond.34
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.end.62
  %57 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %next64 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %57, i32 0, i32 4
  %58 = load %struct.symbolic_struct*, %struct.symbolic_struct** %next64, align 8
  store %struct.symbolic_struct* %58, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.29

for.end.65:                                       ; preds = %for.cond.29
  %59 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F66 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %59, i32 0, i32 0
  %60 = load %struct.set_family*, %struct.set_family** %F66, align 8
  %sf_size67 = getelementptr inbounds %struct.set_family, %struct.set_family* %60, i32 0, i32 1
  %61 = load i32, i32* %sf_size67, align 4
  %62 = load i32, i32* %size_added, align 4
  %add68 = add nsw i32 %61, %62
  %63 = load i32*, i32** %compress, align 8
  %call69 = call i32 (i32*, ...) bitcast (i32 (...)* @set_ord to i32 (i32*, ...)*)(i32* %63)
  %sub70 = sub nsw i32 %add68, %call69
  %div = sdiv i32 %sub70, 2
  store i32 %div, i32* %num_deleted_vars, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %65 = load i32, i32* %num_deleted_vars, align 4
  %sub71 = sub nsw i32 %64, %65
  %66 = load i32, i32* %num_added_vars, align 4
  %add72 = add nsw i32 %sub71, %66
  store i32 %add72, i32* %num_vars, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %68 = load i32, i32* %num_deleted_vars, align 4
  %sub73 = sub nsw i32 %67, %68
  store i32 %sub73, i32* %num_binary_vars, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %70 = load i32, i32* %num_deleted_vars, align 4
  %mul74 = mul nsw i32 %70, 2
  %sub75 = sub nsw i32 %69, %mul74
  %71 = load i32, i32* %size_added, align 4
  %add76 = add nsw i32 %sub75, %71
  store i32 %add76, i32* %new_size, align 4
  %72 = load i32, i32* %num_vars, align 4
  %conv77 = sext i32 %72 to i64
  %mul78 = mul i64 4, %conv77
  %call79 = call i8* @malloc(i64 %mul78)
  %73 = bitcast i8* %call79 to i32*
  store i32* %73, i32** %new_part_size, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub80 = sub nsw i32 %74, 1
  %idxprom81 = sext i32 %sub80 to i64
  %75 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %75, i64 %idxprom81
  %76 = load i32, i32* %arrayidx82, align 4
  %77 = load i32, i32* %num_vars, align 4
  %sub83 = sub nsw i32 %77, 1
  %idxprom84 = sext i32 %sub83 to i64
  %78 = load i32*, i32** %new_part_size, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %78, i64 %idxprom84
  store i32 %76, i32* %arrayidx85, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %79, i32* %var, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.96, %for.end.65
  %80 = load i32, i32* %var, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub87 = sub nsw i32 %81, 1
  %cmp88 = icmp slt i32 %80, %sub87
  br i1 %cmp88, label %for.body.90, label %for.end.98

for.body.90:                                      ; preds = %for.cond.86
  %82 = load i32, i32* %var, align 4
  %idxprom91 = sext i32 %82 to i64
  %83 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %83, i64 %idxprom91
  %84 = load i32, i32* %arrayidx92, align 4
  %85 = load i32, i32* %var, align 4
  %86 = load i32, i32* %num_deleted_vars, align 4
  %sub93 = sub nsw i32 %85, %86
  %idxprom94 = sext i32 %sub93 to i64
  %87 = load i32*, i32** %new_part_size, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %87, i64 %idxprom94
  store i32 %84, i32* %arrayidx95, align 4
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.90
  %88 = load i32, i32* %var, align 4
  %inc97 = add nsw i32 %88, 1
  store i32 %inc97, i32* %var, align 4
  br label %for.cond.86

for.end.98:                                       ; preds = %for.cond.86
  %89 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom99 = sext i32 %89 to i64
  %90 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %90, i64 %idxprom99
  %91 = load i32, i32* %arrayidx100, align 4
  store i32 %91, i32* %base, align 4
  %92 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F101 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %92, i32 0, i32 0
  %93 = load %struct.set_family*, %struct.set_family** %F101, align 8
  %94 = load i32, i32* %base, align 4
  %95 = load i32, i32* %size_added, align 4
  %call102 = call %struct.set_family* (%struct.set_family*, i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_addcol to %struct.set_family* (%struct.set_family*, i32, i32, ...)*)(%struct.set_family* %93, i32 %94, i32 %95)
  %96 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F103 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %96, i32 0, i32 0
  store %struct.set_family* %call102, %struct.set_family** %F103, align 8
  %97 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %97, i32 0, i32 1
  %98 = load %struct.set_family*, %struct.set_family** %D, align 8
  %99 = load i32, i32* %base, align 4
  %100 = load i32, i32* %size_added, align 4
  %call104 = call %struct.set_family* (%struct.set_family*, i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_addcol to %struct.set_family* (%struct.set_family*, i32, i32, ...)*)(%struct.set_family* %98, i32 %99, i32 %100)
  %101 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D105 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %101, i32 0, i32 1
  store %struct.set_family* %call104, %struct.set_family** %D105, align 8
  %102 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %102, i32 0, i32 2
  %103 = load %struct.set_family*, %struct.set_family** %R, align 8
  %104 = load i32, i32* %base, align 4
  %105 = load i32, i32* %size_added, align 4
  %call106 = call %struct.set_family* (%struct.set_family*, i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_addcol to %struct.set_family* (%struct.set_family*, i32, i32, ...)*)(%struct.set_family* %103, i32 %104, i32 %105)
  %106 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R107 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %106, i32 0, i32 2
  store %struct.set_family* %call106, %struct.set_family** %R107, align 8
  %107 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub108 = sub nsw i32 %107, 1
  %108 = load i32, i32* %num_deleted_vars, align 4
  %sub109 = sub nsw i32 %sub108, %108
  store i32 %sub109, i32* %newvar, align 4
  %109 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic110 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %109, i32 0, i32 8
  %110 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic110, align 8
  store %struct.symbolic_struct* %110, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.135, %for.end.98
  %111 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %cmp112 = icmp ne %struct.symbolic_struct* %111, null
  br i1 %cmp112, label %for.body.114, label %for.end.137

for.body.114:                                     ; preds = %for.cond.111
  %112 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F115 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %112, i32 0, i32 0
  %113 = load %struct.set_family*, %struct.set_family** %F115, align 8
  %114 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list116 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %114, i32 0, i32 0
  %115 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %symbolic_list116, align 8
  %116 = load i32, i32* %base, align 4
  %call117 = call %struct.set_family* @map_symbolic_cover(%struct.set_family* %113, %struct.symbolic_list_struct* %115, i32 %116)
  %117 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F118 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %117, i32 0, i32 0
  store %struct.set_family* %call117, %struct.set_family** %F118, align 8
  %118 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D119 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %118, i32 0, i32 1
  %119 = load %struct.set_family*, %struct.set_family** %D119, align 8
  %120 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list120 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %120, i32 0, i32 0
  %121 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %symbolic_list120, align 8
  %122 = load i32, i32* %base, align 4
  %call121 = call %struct.set_family* @map_symbolic_cover(%struct.set_family* %119, %struct.symbolic_list_struct* %121, i32 %122)
  %123 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D122 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %123, i32 0, i32 1
  store %struct.set_family* %call121, %struct.set_family** %D122, align 8
  %124 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R123 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %124, i32 0, i32 2
  %125 = load %struct.set_family*, %struct.set_family** %R123, align 8
  %126 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list124 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %126, i32 0, i32 0
  %127 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %symbolic_list124, align 8
  %128 = load i32, i32* %base, align 4
  %call125 = call %struct.set_family* @map_symbolic_cover(%struct.set_family* %125, %struct.symbolic_list_struct* %127, i32 %128)
  %129 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R126 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %129, i32 0, i32 2
  store %struct.set_family* %call125, %struct.set_family** %R126, align 8
  %130 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list_length127 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %130, i32 0, i32 1
  %131 = load i32, i32* %symbolic_list_length127, align 4
  %shl128 = shl i32 1, %131
  %132 = load i32, i32* %base, align 4
  %add129 = add nsw i32 %132, %shl128
  store i32 %add129, i32* %base, align 4
  %133 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list_length130 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %133, i32 0, i32 1
  %134 = load i32, i32* %symbolic_list_length130, align 4
  %shl131 = shl i32 1, %134
  %135 = load i32, i32* %newvar, align 4
  %inc132 = add nsw i32 %135, 1
  store i32 %inc132, i32* %newvar, align 4
  %idxprom133 = sext i32 %135 to i64
  %136 = load i32*, i32** %new_part_size, align 8
  %arrayidx134 = getelementptr inbounds i32, i32* %136, i64 %idxprom133
  store i32 %shl131, i32* %arrayidx134, align 4
  br label %for.inc.135

for.inc.135:                                      ; preds = %for.body.114
  %137 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %next136 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %137, i32 0, i32 4
  %138 = load %struct.symbolic_struct*, %struct.symbolic_struct** %next136, align 8
  store %struct.symbolic_struct* %138, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.111

for.end.137:                                      ; preds = %for.cond.111
  %139 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F138 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %139, i32 0, i32 0
  %140 = load %struct.set_family*, %struct.set_family** %F138, align 8
  %141 = load i32*, i32** %compress, align 8
  %call139 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_compress to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %140, i32* %141)
  %142 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F140 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %142, i32 0, i32 0
  store %struct.set_family* %call139, %struct.set_family** %F140, align 8
  %143 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D141 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %143, i32 0, i32 1
  %144 = load %struct.set_family*, %struct.set_family** %D141, align 8
  %145 = load i32*, i32** %compress, align 8
  %call142 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_compress to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %144, i32* %145)
  %146 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D143 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %146, i32 0, i32 1
  store %struct.set_family* %call142, %struct.set_family** %D143, align 8
  %147 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R144 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %147, i32 0, i32 2
  %148 = load %struct.set_family*, %struct.set_family** %R144, align 8
  %149 = load i32*, i32** %compress, align 8
  %call145 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_compress to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %148, i32* %149)
  %150 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R146 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %150, i32 0, i32 2
  store %struct.set_family* %call145, %struct.set_family** %R146, align 8
  %151 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %152 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic147 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %152, i32 0, i32 8
  %153 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic147, align 8
  %154 = load i32*, i32** %compress, align 8
  %155 = load i32, i32* %new_size, align 4
  %156 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %157 = load i32, i32* %size_added, align 4
  %call148 = call i32 @symbolic_hack_labels(%struct.PLA_t* %151, %struct.symbolic_struct* %153, i32* %154, i32 %155, i32 %156, i32 %157)
  call void (...) @setdown_cube()
  %158 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %tobool = icmp ne i32* %158, null
  br i1 %tobool, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %for.end.137
  %159 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %160 = bitcast i32* %159 to i8*
  call void @free(i8* %160)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %for.end.137
  %161 = load i32, i32* %num_vars, align 4
  store i32 %161, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %162 = load i32, i32* %num_binary_vars, align 4
  store i32 %162, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %163 = load i32*, i32** %new_part_size, align 8
  store i32* %163, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  call void (...) @cube_setup()
  %164 = load i32*, i32** %compress, align 8
  %tobool151 = icmp ne i32* %164, null
  br i1 %tobool151, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.end.150
  %165 = load i32*, i32** %compress, align 8
  %166 = bitcast i32* %165 to i8*
  call void @free(i8* %166)
  store i32* null, i32** %compress, align 8
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %if.end.150
  %167 = load i32, i32* %retval
  ret i32 %167
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @map_symbolic_cover(%struct.set_family* %T, %struct.symbolic_list_struct* %list, i32 %base) #0 {
entry:
  %T.addr = alloca %struct.set_family*, align 8
  %list.addr = alloca %struct.symbolic_list_struct*, align 8
  %base.addr = alloca i32, align 4
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  store %struct.symbolic_list_struct* %list, %struct.symbolic_list_struct** %list.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  %0 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 5
  %1 = load i32*, i32** %data, align 8
  store i32* %1, i32** %p, align 8
  %2 = load i32*, i32** %p, align 8
  %3 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 3
  %4 = load i32, i32* %count, align 4
  %5 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 0
  %6 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %4, %6
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32*, i32** %p, align 8
  %8 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32*, i32** %p, align 8
  %10 = load i32, i32* %base.addr, align 4
  %11 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %list.addr, align 8
  %call = call i32 @form_bitvector(i32* %9, i32 %10, i32 0, %struct.symbolic_list_struct* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize1 = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 0
  %13 = load i32, i32* %wsize1, align 4
  %14 = load i32*, i32** %p, align 8
  %idx.ext2 = sext i32 %13 to i64
  %add.ptr3 = getelementptr inbounds i32, i32* %14, i64 %idx.ext2
  store i32* %add.ptr3, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  ret %struct.set_family* %15
}

; Function Attrs: nounwind uwtable
define i32 @form_bitvector(i32* %p, i32 %base, i32 %value, %struct.symbolic_list_struct* %list) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i32*, align 8
  %base.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %list.addr = alloca %struct.symbolic_list_struct*, align 8
  store i32* %p, i32** %p.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  store %struct.symbolic_list_struct* %list, %struct.symbolic_list_struct** %list.addr, align 8
  %0 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %list.addr, align 8
  %cmp = icmp eq %struct.symbolic_list_struct* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %base.addr, align 4
  %2 = load i32, i32* %value.addr, align 4
  %add = add nsw i32 %1, %2
  %and = and i32 %add, 31
  %shl = shl i32 1, %and
  %3 = load i32, i32* %base.addr, align 4
  %4 = load i32, i32* %value.addr, align 4
  %add1 = add nsw i32 %3, %4
  %shr = ashr i32 %add1, 5
  %add2 = add nsw i32 %shr, 1
  %idxprom = sext i32 %add2 to i64
  %5 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %or = or i32 %6, %shl
  store i32 %or, i32* %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %list.addr, align 8
  %variable = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %variable, align 4
  %mul = mul nsw i32 2, %8
  %shr3 = ashr i32 %mul, 5
  %add4 = add nsw i32 %shr3, 1
  %idxprom5 = sext i32 %add4 to i64
  %9 = load i32*, i32** %p.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %idxprom5
  %10 = load i32, i32* %arrayidx6, align 4
  %11 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %list.addr, align 8
  %variable7 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %11, i32 0, i32 0
  %12 = load i32, i32* %variable7, align 4
  %mul8 = mul nsw i32 2, %12
  %and9 = and i32 %mul8, 31
  %shr10 = lshr i32 %10, %and9
  %and11 = and i32 %shr10, 3
  switch i32 %and11, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.13
    i32 3, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.else
  %13 = load i32*, i32** %p.addr, align 8
  %14 = load i32, i32* %base.addr, align 4
  %15 = load i32, i32* %value.addr, align 4
  %mul12 = mul nsw i32 %15, 2
  %16 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %list.addr, align 8
  %next = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %16, i32 0, i32 2
  %17 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %next, align 8
  %call = call i32 @form_bitvector(i32* %13, i32 %14, i32 %mul12, %struct.symbolic_list_struct* %17)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.else
  %18 = load i32*, i32** %p.addr, align 8
  %19 = load i32, i32* %base.addr, align 4
  %20 = load i32, i32* %value.addr, align 4
  %mul14 = mul nsw i32 %20, 2
  %add15 = add nsw i32 %mul14, 1
  %21 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %list.addr, align 8
  %next16 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %21, i32 0, i32 2
  %22 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %next16, align 8
  %call17 = call i32 @form_bitvector(i32* %18, i32 %19, i32 %add15, %struct.symbolic_list_struct* %22)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.else
  %23 = load i32*, i32** %p.addr, align 8
  %24 = load i32, i32* %base.addr, align 4
  %25 = load i32, i32* %value.addr, align 4
  %mul19 = mul nsw i32 %25, 2
  %26 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %list.addr, align 8
  %next20 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %26, i32 0, i32 2
  %27 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %next20, align 8
  %call21 = call i32 @form_bitvector(i32* %23, i32 %24, i32 %mul19, %struct.symbolic_list_struct* %27)
  %28 = load i32*, i32** %p.addr, align 8
  %29 = load i32, i32* %base.addr, align 4
  %30 = load i32, i32* %value.addr, align 4
  %mul22 = mul nsw i32 %30, 2
  %add23 = add nsw i32 %mul22, 1
  %31 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %list.addr, align 8
  %next24 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %31, i32 0, i32 2
  %32 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %next24, align 8
  %call25 = call i32 @form_bitvector(i32* %28, i32 %29, i32 %add23, %struct.symbolic_list_struct* %32)
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.18, %sw.bb.13, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @symbolic_hack_labels(%struct.PLA_t* %PLA, %struct.symbolic_struct* %list, i32* %compress, i32 %new_size, i32 %old_size, i32 %size_added) #0 {
entry:
  %retval = alloca i32, align 4
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %list.addr = alloca %struct.symbolic_struct*, align 8
  %compress.addr = alloca i32*, align 8
  %new_size.addr = alloca i32, align 4
  %old_size.addr = alloca i32, align 4
  %size_added.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %base = alloca i32, align 4
  %oldlabel = alloca i8**, align 8
  %p1 = alloca %struct.symbolic_struct*, align 8
  %p3 = alloca %struct.symbolic_label_struct*, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store %struct.symbolic_struct* %list, %struct.symbolic_struct** %list.addr, align 8
  store i32* %compress, i32** %compress.addr, align 8
  store i32 %new_size, i32* %new_size.addr, align 4
  store i32 %old_size, i32* %old_size.addr, align 4
  store i32 %size_added, i32* %size_added.addr, align 4
  %0 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %0, i32 0, i32 7
  %1 = load i8**, i8*** %label, align 8
  store i8** %1, i8*** %oldlabel, align 8
  %cmp = icmp eq i8** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %if.end.123

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %new_size.addr, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @malloc(i64 %mul)
  %3 = bitcast i8* %call to i8**
  %4 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label1 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %4, i32 0, i32 7
  store i8** %3, i8*** %label1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %new_size.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label4 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %8, i32 0, i32 7
  %9 = load i8**, i8*** %label4, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %base, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.37, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %13, i64 %idxprom6
  %14 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp slt i32 %11, %14
  br i1 %cmp8, label %for.body.10, label %for.end.39

for.body.10:                                      ; preds = %for.cond.5
  %15 = load i32, i32* %i, align 4
  %shr = ashr i32 %15, 5
  %add = add nsw i32 %shr, 1
  %idxprom11 = sext i32 %add to i64
  %16 = load i32*, i32** %compress.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %16, i64 %idxprom11
  %17 = load i32, i32* %arrayidx12, align 4
  %18 = load i32, i32* %i, align 4
  %and = and i32 %18, 31
  %shl = shl i32 1, %and
  %and13 = and i32 %17, %shl
  %tobool = icmp ne i32 %and13, 0
  br i1 %tobool, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %for.body.10
  %19 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %19 to i64
  %20 = load i8**, i8*** %oldlabel, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %20, i64 %idxprom15
  %21 = load i8*, i8** %arrayidx16, align 8
  %22 = load i32, i32* %base, align 4
  %inc17 = add nsw i32 %22, 1
  store i32 %inc17, i32* %base, align 4
  %idxprom18 = sext i32 %22 to i64
  %23 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label19 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %23, i32 0, i32 7
  %24 = load i8**, i8*** %label19, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %24, i64 %idxprom18
  store i8* %21, i8** %arrayidx20, align 8
  br label %if.end.36

if.else:                                          ; preds = %for.body.10
  %25 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %25 to i64
  %26 = load i8**, i8*** %oldlabel, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %26, i64 %idxprom21
  %27 = load i8*, i8** %arrayidx22, align 8
  %cmp23 = icmp ne i8* %27, null
  br i1 %cmp23, label %if.then.25, label %if.end.35

if.then.25:                                       ; preds = %if.else
  %28 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %28 to i64
  %29 = load i8**, i8*** %oldlabel, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %29, i64 %idxprom26
  %30 = load i8*, i8** %arrayidx27, align 8
  %tobool28 = icmp ne i8* %30, null
  br i1 %tobool28, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.then.25
  %31 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %31 to i64
  %32 = load i8**, i8*** %oldlabel, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %32, i64 %idxprom30
  %33 = load i8*, i8** %arrayidx31, align 8
  call void @free(i8* %33)
  %34 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %34 to i64
  %35 = load i8**, i8*** %oldlabel, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %35, i64 %idxprom32
  store i8* null, i8** %arrayidx33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.then.25
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.14
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %36 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %36, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.5

for.end.39:                                       ; preds = %for.cond.5
  %37 = load %struct.symbolic_struct*, %struct.symbolic_struct** %list.addr, align 8
  store %struct.symbolic_struct* %37, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.75, %for.end.39
  %38 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %cmp41 = icmp ne %struct.symbolic_struct* %38, null
  br i1 %cmp41, label %for.body.43, label %for.end.77

for.body.43:                                      ; preds = %for.cond.40
  %39 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_label = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %39, i32 0, i32 2
  %40 = load %struct.symbolic_label_struct*, %struct.symbolic_label_struct** %symbolic_label, align 8
  store %struct.symbolic_label_struct* %40, %struct.symbolic_label_struct** %p3, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.69, %for.body.43
  %41 = load i32, i32* %i, align 4
  %42 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list_length = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %42, i32 0, i32 1
  %43 = load i32, i32* %symbolic_list_length, align 4
  %shl45 = shl i32 1, %43
  %cmp46 = icmp slt i32 %41, %shl45
  br i1 %cmp46, label %for.body.48, label %for.end.71

for.body.48:                                      ; preds = %for.cond.44
  %44 = load %struct.symbolic_label_struct*, %struct.symbolic_label_struct** %p3, align 8
  %cmp49 = icmp eq %struct.symbolic_label_struct* %44, null
  br i1 %cmp49, label %if.then.51, label %if.else.62

if.then.51:                                       ; preds = %for.body.48
  %call52 = call i8* @malloc(i64 10)
  %45 = load i32, i32* %base, align 4
  %46 = load i32, i32* %i, align 4
  %add53 = add nsw i32 %45, %46
  %idxprom54 = sext i32 %add53 to i64
  %47 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label55 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %47, i32 0, i32 7
  %48 = load i8**, i8*** %label55, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %48, i64 %idxprom54
  store i8* %call52, i8** %arrayidx56, align 8
  %49 = load i32, i32* %base, align 4
  %50 = load i32, i32* %i, align 4
  %add57 = add nsw i32 %49, %50
  %idxprom58 = sext i32 %add57 to i64
  %51 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label59 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %51, i32 0, i32 7
  %52 = load i8**, i8*** %label59, align 8
  %arrayidx60 = getelementptr inbounds i8*, i8** %52, i64 %idxprom58
  %53 = load i8*, i8** %arrayidx60, align 8
  %54 = load i32, i32* %i, align 4
  %call61 = call i32 (i8*, i8*, ...) @sprintf(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 %54) #5
  br label %if.end.68

if.else.62:                                       ; preds = %for.body.48
  %55 = load %struct.symbolic_label_struct*, %struct.symbolic_label_struct** %p3, align 8
  %label63 = getelementptr inbounds %struct.symbolic_label_struct, %struct.symbolic_label_struct* %55, i32 0, i32 0
  %56 = load i8*, i8** %label63, align 8
  %57 = load i32, i32* %base, align 4
  %58 = load i32, i32* %i, align 4
  %add64 = add nsw i32 %57, %58
  %idxprom65 = sext i32 %add64 to i64
  %59 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label66 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %59, i32 0, i32 7
  %60 = load i8**, i8*** %label66, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %60, i64 %idxprom65
  store i8* %56, i8** %arrayidx67, align 8
  %61 = load %struct.symbolic_label_struct*, %struct.symbolic_label_struct** %p3, align 8
  %next = getelementptr inbounds %struct.symbolic_label_struct, %struct.symbolic_label_struct* %61, i32 0, i32 1
  %62 = load %struct.symbolic_label_struct*, %struct.symbolic_label_struct** %next, align 8
  store %struct.symbolic_label_struct* %62, %struct.symbolic_label_struct** %p3, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.62, %if.then.51
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %63 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %63, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond.44

for.end.71:                                       ; preds = %for.cond.44
  %64 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list_length72 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %64, i32 0, i32 1
  %65 = load i32, i32* %symbolic_list_length72, align 4
  %shl73 = shl i32 1, %65
  %66 = load i32, i32* %base, align 4
  %add74 = add nsw i32 %66, %shl73
  store i32 %add74, i32* %base, align 4
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.71
  %67 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %next76 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %67, i32 0, i32 4
  %68 = load %struct.symbolic_struct*, %struct.symbolic_struct** %next76, align 8
  store %struct.symbolic_struct* %68, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.40

for.end.77:                                       ; preds = %for.cond.40
  %69 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom78 = sext i32 %69 to i64
  %70 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %70, i64 %idxprom78
  %71 = load i32, i32* %arrayidx79, align 4
  store i32 %71, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.118, %for.end.77
  %72 = load i32, i32* %i, align 4
  %73 = load i32, i32* %old_size.addr, align 4
  %cmp81 = icmp slt i32 %72, %73
  br i1 %cmp81, label %for.body.83, label %for.end.120

for.body.83:                                      ; preds = %for.cond.80
  %74 = load i32, i32* %i, align 4
  %75 = load i32, i32* %size_added.addr, align 4
  %add84 = add nsw i32 %74, %75
  %shr85 = ashr i32 %add84, 5
  %add86 = add nsw i32 %shr85, 1
  %idxprom87 = sext i32 %add86 to i64
  %76 = load i32*, i32** %compress.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %76, i64 %idxprom87
  %77 = load i32, i32* %arrayidx88, align 4
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %size_added.addr, align 4
  %add89 = add nsw i32 %78, %79
  %and90 = and i32 %add89, 31
  %shl91 = shl i32 1, %and90
  %and92 = and i32 %77, %shl91
  %tobool93 = icmp ne i32 %and92, 0
  br i1 %tobool93, label %if.then.94, label %if.else.101

if.then.94:                                       ; preds = %for.body.83
  %80 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %80 to i64
  %81 = load i8**, i8*** %oldlabel, align 8
  %arrayidx96 = getelementptr inbounds i8*, i8** %81, i64 %idxprom95
  %82 = load i8*, i8** %arrayidx96, align 8
  %83 = load i32, i32* %base, align 4
  %inc97 = add nsw i32 %83, 1
  store i32 %inc97, i32* %base, align 4
  %idxprom98 = sext i32 %83 to i64
  %84 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label99 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %84, i32 0, i32 7
  %85 = load i8**, i8*** %label99, align 8
  %arrayidx100 = getelementptr inbounds i8*, i8** %85, i64 %idxprom98
  store i8* %82, i8** %arrayidx100, align 8
  br label %if.end.117

if.else.101:                                      ; preds = %for.body.83
  %86 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %86 to i64
  %87 = load i8**, i8*** %oldlabel, align 8
  %arrayidx103 = getelementptr inbounds i8*, i8** %87, i64 %idxprom102
  %88 = load i8*, i8** %arrayidx103, align 8
  %cmp104 = icmp ne i8* %88, null
  br i1 %cmp104, label %if.then.106, label %if.end.116

if.then.106:                                      ; preds = %if.else.101
  %89 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %89 to i64
  %90 = load i8**, i8*** %oldlabel, align 8
  %arrayidx108 = getelementptr inbounds i8*, i8** %90, i64 %idxprom107
  %91 = load i8*, i8** %arrayidx108, align 8
  %tobool109 = icmp ne i8* %91, null
  br i1 %tobool109, label %if.then.110, label %if.end.115

if.then.110:                                      ; preds = %if.then.106
  %92 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %92 to i64
  %93 = load i8**, i8*** %oldlabel, align 8
  %arrayidx112 = getelementptr inbounds i8*, i8** %93, i64 %idxprom111
  %94 = load i8*, i8** %arrayidx112, align 8
  call void @free(i8* %94)
  %95 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %95 to i64
  %96 = load i8**, i8*** %oldlabel, align 8
  %arrayidx114 = getelementptr inbounds i8*, i8** %96, i64 %idxprom113
  store i8* null, i8** %arrayidx114, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.110, %if.then.106
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.else.101
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.then.94
  br label %for.inc.118

for.inc.118:                                      ; preds = %if.end.117
  %97 = load i32, i32* %i, align 4
  %inc119 = add nsw i32 %97, 1
  store i32 %inc119, i32* %i, align 4
  br label %for.cond.80

for.end.120:                                      ; preds = %for.cond.80
  %98 = load i8**, i8*** %oldlabel, align 8
  %tobool121 = icmp ne i8** %98, null
  br i1 %tobool121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %for.end.120
  %99 = load i8**, i8*** %oldlabel, align 8
  %100 = bitcast i8** %99 to i8*
  call void @free(i8* %100)
  store i8** null, i8*** %oldlabel, align 8
  br label %if.end.123

if.end.123:                                       ; preds = %if.then, %if.then.122, %for.end.120
  %101 = load i32, i32* %retval
  ret i32 %101
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @disassemble_fsm(%struct.PLA_t* %PLA, i32 %verbose_mode) #0 {
entry:
  %retval = alloca i32, align 4
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %verbose_mode.addr = alloca i32, align 4
  %nin = alloca i32, align 4
  %nstates = alloca i32, align 4
  %nout = alloca i32, align 4
  %before = alloca i32, align 4
  %after = alloca i32, align 4
  %present_state = alloca i32, align 4
  %next_state = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %next_state_mask = alloca i32*, align 8
  %present_state_mask = alloca i32*, align 8
  %state_mask = alloca i32*, align 8
  %p = alloca i32*, align 8
  %p1 = alloca i32*, align 8
  %last = alloca i32*, align 8
  %go_nowhere = alloca %struct.set_family*, align 8
  %F = alloca %struct.set_family*, align 8
  %tF = alloca %struct.set_family*, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %verbose_mode, i32* %verbose_mode.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %sub = sub nsw i32 %0, %1
  %cmp = icmp ne i32 %sub, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %4, i32* %nin, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  store i32 %7, i32* %nstates, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub2 = sub nsw i32 %8, 1
  %idxprom3 = sext i32 %sub2 to i64
  %9 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 %idxprom3
  %10 = load i32, i32* %arrayidx4, align 4
  store i32 %10, i32* %nout, align 4
  %11 = load i32, i32* %nout, align 4
  %12 = load i32, i32* %nstates, align 4
  %cmp5 = icmp slt i32 %11, %12
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i32 0, i32 0))
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %15 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 %idxprom10
  %17 = load i32, i32* %arrayidx11, align 4
  store i32 %17, i32* %present_state, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp12 = icmp sle i32 %18, 32
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  %19 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub13 = sub nsw i32 %19, 1
  %shr = ashr i32 %sub13, 5
  %add = add nsw i32 %shr, 1
  %add14 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add14, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 4, %conv
  %call15 = call i8* @malloc(i64 %mul)
  %20 = bitcast i8* %call15 to i32*
  %21 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call16 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %20, i32 %21)
  store i32* %call16, i32** %present_state_mask, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %nstates, align 4
  %cmp17 = icmp slt i32 %22, %23
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %present_state, align 4
  %add19 = add nsw i32 %24, %25
  %and = and i32 %add19, 31
  %shl = shl i32 1, %and
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %present_state, align 4
  %add20 = add nsw i32 %26, %27
  %shr21 = ashr i32 %add20, 5
  %add22 = add nsw i32 %shr21, 1
  %idxprom23 = sext i32 %add22 to i64
  %28 = load i32*, i32** %present_state_mask, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %28, i64 %idxprom23
  %29 = load i32, i32* %arrayidx24, align 4
  %or = or i32 %29, %shl
  store i32 %or, i32* %arrayidx24, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %add25 = add nsw i32 %31, 1
  %idxprom26 = sext i32 %add25 to i64
  %32 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %32, i64 %idxprom26
  %33 = load i32, i32* %arrayidx27, align 4
  store i32 %33, i32* %next_state, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp28 = icmp sle i32 %34, 32
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %for.end
  br label %cond.end.36

cond.false.31:                                    ; preds = %for.end
  %35 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub32 = sub nsw i32 %35, 1
  %shr33 = ashr i32 %sub32, 5
  %add34 = add nsw i32 %shr33, 1
  %add35 = add nsw i32 %add34, 1
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.31, %cond.true.30
  %cond37 = phi i32 [ 2, %cond.true.30 ], [ %add35, %cond.false.31 ]
  %conv38 = sext i32 %cond37 to i64
  %mul39 = mul i64 4, %conv38
  %call40 = call i8* @malloc(i64 %mul39)
  %36 = bitcast i8* %call40 to i32*
  %37 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call41 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %36, i32 %37)
  store i32* %call41, i32** %next_state_mask, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.55, %cond.end.36
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %nstates, align 4
  %cmp43 = icmp slt i32 %38, %39
  br i1 %cmp43, label %for.body.45, label %for.end.57

for.body.45:                                      ; preds = %for.cond.42
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %next_state, align 4
  %add46 = add nsw i32 %40, %41
  %and47 = and i32 %add46, 31
  %shl48 = shl i32 1, %and47
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %next_state, align 4
  %add49 = add nsw i32 %42, %43
  %shr50 = ashr i32 %add49, 5
  %add51 = add nsw i32 %shr50, 1
  %idxprom52 = sext i32 %add51 to i64
  %44 = load i32*, i32** %next_state_mask, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %44, i64 %idxprom52
  %45 = load i32, i32* %arrayidx53, align 4
  %or54 = or i32 %45, %shl48
  store i32 %or54, i32* %arrayidx53, align 4
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.45
  %46 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %46, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.42

for.end.57:                                       ; preds = %for.cond.42
  %47 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp58 = icmp sle i32 %47, 32
  br i1 %cmp58, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %for.end.57
  br label %cond.end.66

cond.false.61:                                    ; preds = %for.end.57
  %48 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub62 = sub nsw i32 %48, 1
  %shr63 = ashr i32 %sub62, 5
  %add64 = add nsw i32 %shr63, 1
  %add65 = add nsw i32 %add64, 1
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.61, %cond.true.60
  %cond67 = phi i32 [ 2, %cond.true.60 ], [ %add65, %cond.false.61 ]
  %conv68 = sext i32 %cond67 to i64
  %mul69 = mul i64 4, %conv68
  %call70 = call i8* @malloc(i64 %mul69)
  %49 = bitcast i8* %call70 to i32*
  %50 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call71 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %49, i32 %50)
  %51 = load i32*, i32** %next_state_mask, align 8
  %52 = load i32*, i32** %present_state_mask, align 8
  %call72 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %call71, i32* %51, i32* %52)
  store i32* %call72, i32** %state_mask, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call73 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 10, i32 %53)
  store %struct.set_family* %call73, %struct.set_family** %F, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.145, %cond.end.66
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %nstates, align 4
  %cmp75 = icmp slt i32 %54, %55
  br i1 %cmp75, label %for.body.77, label %for.end.147

for.body.77:                                      ; preds = %for.cond.74
  %56 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call78 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 10, i32 %56)
  store %struct.set_family* %call78, %struct.set_family** %tF, align 8
  %57 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F79 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %57, i32 0, i32 0
  %58 = load %struct.set_family*, %struct.set_family** %F79, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %58, i32 0, i32 5
  %59 = load i32*, i32** %data, align 8
  store i32* %59, i32** %p, align 8
  %60 = load i32*, i32** %p, align 8
  %61 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F80 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %61, i32 0, i32 0
  %62 = load %struct.set_family*, %struct.set_family** %F80, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %62, i32 0, i32 3
  %63 = load i32, i32* %count, align 4
  %64 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F81 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %64, i32 0, i32 0
  %65 = load %struct.set_family*, %struct.set_family** %F81, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %65, i32 0, i32 0
  %66 = load i32, i32* %wsize, align 4
  %mul82 = mul nsw i32 %63, %66
  %idx.ext = sext i32 %mul82 to i64
  %add.ptr = getelementptr inbounds i32, i32* %60, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.103, %for.body.77
  %67 = load i32*, i32** %p, align 8
  %68 = load i32*, i32** %last, align 8
  %cmp84 = icmp ult i32* %67, %68
  br i1 %cmp84, label %for.body.86, label %for.end.108

for.body.86:                                      ; preds = %for.cond.83
  %69 = load i32*, i32** %present_state_mask, align 8
  %70 = load i32*, i32** %p, align 8
  %call87 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_implies to i32 (i32*, i32*, ...)*)(i32* %69, i32* %70)
  %tobool = icmp ne i32 %call87, 0
  br i1 %tobool, label %if.then.88, label %if.end.102

if.then.88:                                       ; preds = %for.body.86
  %71 = load i32, i32* %next_state, align 4
  %72 = load i32, i32* %i, align 4
  %add89 = add nsw i32 %71, %72
  %shr90 = ashr i32 %add89, 5
  %add91 = add nsw i32 %shr90, 1
  %idxprom92 = sext i32 %add91 to i64
  %73 = load i32*, i32** %p, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %73, i64 %idxprom92
  %74 = load i32, i32* %arrayidx93, align 4
  %75 = load i32, i32* %next_state, align 4
  %76 = load i32, i32* %i, align 4
  %add94 = add nsw i32 %75, %76
  %and95 = and i32 %add94, 31
  %shl96 = shl i32 1, %and95
  %and97 = and i32 %74, %shl96
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %if.then.88
  %77 = load %struct.set_family*, %struct.set_family** %tF, align 8
  %78 = load i32*, i32** %p, align 8
  %call100 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %77, i32* %78)
  store %struct.set_family* %call100, %struct.set_family** %tF, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %if.then.88
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %for.body.86
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %79 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F104 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %79, i32 0, i32 0
  %80 = load %struct.set_family*, %struct.set_family** %F104, align 8
  %wsize105 = getelementptr inbounds %struct.set_family, %struct.set_family* %80, i32 0, i32 0
  %81 = load i32, i32* %wsize105, align 4
  %82 = load i32*, i32** %p, align 8
  %idx.ext106 = sext i32 %81 to i64
  %add.ptr107 = getelementptr inbounds i32, i32* %82, i64 %idx.ext106
  store i32* %add.ptr107, i32** %p, align 8
  br label %for.cond.83

for.end.108:                                      ; preds = %for.cond.83
  %83 = load %struct.set_family*, %struct.set_family** %tF, align 8
  %count109 = getelementptr inbounds %struct.set_family, %struct.set_family* %83, i32 0, i32 3
  %84 = load i32, i32* %count109, align 4
  store i32 %84, i32* %before, align 4
  %85 = load i32, i32* %before, align 4
  %cmp110 = icmp sgt i32 %85, 0
  br i1 %cmp110, label %if.then.112, label %if.end.144

if.then.112:                                      ; preds = %for.end.108
  %86 = load %struct.set_family*, %struct.set_family** %tF, align 8
  %call113 = call %struct.set_family* @fsm_simplify(%struct.set_family* %86)
  store %struct.set_family* %call113, %struct.set_family** %tF, align 8
  %87 = load %struct.set_family*, %struct.set_family** %tF, align 8
  %data114 = getelementptr inbounds %struct.set_family, %struct.set_family* %87, i32 0, i32 5
  %88 = load i32*, i32** %data114, align 8
  store i32* %88, i32** %p, align 8
  %89 = load i32*, i32** %p, align 8
  %90 = load %struct.set_family*, %struct.set_family** %tF, align 8
  %count115 = getelementptr inbounds %struct.set_family, %struct.set_family* %90, i32 0, i32 3
  %91 = load i32, i32* %count115, align 4
  %92 = load %struct.set_family*, %struct.set_family** %tF, align 8
  %wsize116 = getelementptr inbounds %struct.set_family, %struct.set_family* %92, i32 0, i32 0
  %93 = load i32, i32* %wsize116, align 4
  %mul117 = mul nsw i32 %91, %93
  %idx.ext118 = sext i32 %mul117 to i64
  %add.ptr119 = getelementptr inbounds i32, i32* %89, i64 %idx.ext118
  store i32* %add.ptr119, i32** %last, align 8
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.133, %if.then.112
  %94 = load i32*, i32** %p, align 8
  %95 = load i32*, i32** %last, align 8
  %cmp121 = icmp ult i32* %94, %95
  br i1 %cmp121, label %for.body.123, label %for.end.137

for.body.123:                                     ; preds = %for.cond.120
  %96 = load i32, i32* %next_state, align 4
  %97 = load i32, i32* %i, align 4
  %add124 = add nsw i32 %96, %97
  %and125 = and i32 %add124, 31
  %shl126 = shl i32 1, %and125
  %98 = load i32, i32* %next_state, align 4
  %99 = load i32, i32* %i, align 4
  %add127 = add nsw i32 %98, %99
  %shr128 = ashr i32 %add127, 5
  %add129 = add nsw i32 %shr128, 1
  %idxprom130 = sext i32 %add129 to i64
  %100 = load i32*, i32** %p, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %100, i64 %idxprom130
  %101 = load i32, i32* %arrayidx131, align 4
  %or132 = or i32 %101, %shl126
  store i32 %or132, i32* %arrayidx131, align 4
  br label %for.inc.133

for.inc.133:                                      ; preds = %for.body.123
  %102 = load %struct.set_family*, %struct.set_family** %tF, align 8
  %wsize134 = getelementptr inbounds %struct.set_family, %struct.set_family* %102, i32 0, i32 0
  %103 = load i32, i32* %wsize134, align 4
  %104 = load i32*, i32** %p, align 8
  %idx.ext135 = sext i32 %103 to i64
  %add.ptr136 = getelementptr inbounds i32, i32* %104, i64 %idx.ext135
  store i32* %add.ptr136, i32** %p, align 8
  br label %for.cond.120

for.end.137:                                      ; preds = %for.cond.120
  %105 = load %struct.set_family*, %struct.set_family** %tF, align 8
  %count138 = getelementptr inbounds %struct.set_family, %struct.set_family* %105, i32 0, i32 3
  %106 = load i32, i32* %count138, align 4
  store i32 %106, i32* %after, align 4
  %107 = load %struct.set_family*, %struct.set_family** %F, align 8
  %108 = load %struct.set_family*, %struct.set_family** %tF, align 8
  %call139 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %107, %struct.set_family* %108)
  store %struct.set_family* %call139, %struct.set_family** %F, align 8
  %109 = load i32, i32* %verbose_mode.addr, align 4
  %tobool140 = icmp ne i32 %109, 0
  br i1 %tobool140, label %if.then.141, label %if.end.143

if.then.141:                                      ; preds = %for.end.137
  %110 = load i32, i32* %i, align 4
  %111 = load i32, i32* %before, align 4
  %112 = load i32, i32* %after, align 4
  %call142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0), i32 %110, i32 %111, i32 %112)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.141, %for.end.137
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %for.end.108
  br label %for.inc.145

for.inc.145:                                      ; preds = %if.end.144
  %113 = load i32, i32* %i, align 4
  %inc146 = add nsw i32 %113, 1
  store i32 %inc146, i32* %i, align 4
  br label %for.cond.74

for.end.147:                                      ; preds = %for.cond.74
  %114 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call148 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 10, i32 %114)
  store %struct.set_family* %call148, %struct.set_family** %go_nowhere, align 8
  %115 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F149 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %115, i32 0, i32 0
  %116 = load %struct.set_family*, %struct.set_family** %F149, align 8
  %data150 = getelementptr inbounds %struct.set_family, %struct.set_family* %116, i32 0, i32 5
  %117 = load i32*, i32** %data150, align 8
  store i32* %117, i32** %p, align 8
  %118 = load i32*, i32** %p, align 8
  %119 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F151 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %119, i32 0, i32 0
  %120 = load %struct.set_family*, %struct.set_family** %F151, align 8
  %count152 = getelementptr inbounds %struct.set_family, %struct.set_family* %120, i32 0, i32 3
  %121 = load i32, i32* %count152, align 4
  %122 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F153 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %122, i32 0, i32 0
  %123 = load %struct.set_family*, %struct.set_family** %F153, align 8
  %wsize154 = getelementptr inbounds %struct.set_family, %struct.set_family* %123, i32 0, i32 0
  %124 = load i32, i32* %wsize154, align 4
  %mul155 = mul nsw i32 %121, %124
  %idx.ext156 = sext i32 %mul155 to i64
  %add.ptr157 = getelementptr inbounds i32, i32* %118, i64 %idx.ext156
  store i32* %add.ptr157, i32** %last, align 8
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.167, %for.end.147
  %125 = load i32*, i32** %p, align 8
  %126 = load i32*, i32** %last, align 8
  %cmp159 = icmp ult i32* %125, %126
  br i1 %cmp159, label %for.body.161, label %for.end.172

for.body.161:                                     ; preds = %for.cond.158
  %127 = load i32*, i32** %p, align 8
  %128 = load i32*, i32** %next_state_mask, align 8
  %call162 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_disjoint to i32 (i32*, i32*, ...)*)(i32* %127, i32* %128)
  %tobool163 = icmp ne i32 %call162, 0
  br i1 %tobool163, label %if.then.164, label %if.end.166

if.then.164:                                      ; preds = %for.body.161
  %129 = load %struct.set_family*, %struct.set_family** %go_nowhere, align 8
  %130 = load i32*, i32** %p, align 8
  %call165 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %129, i32* %130)
  store %struct.set_family* %call165, %struct.set_family** %go_nowhere, align 8
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.164, %for.body.161
  br label %for.inc.167

for.inc.167:                                      ; preds = %if.end.166
  %131 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F168 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %131, i32 0, i32 0
  %132 = load %struct.set_family*, %struct.set_family** %F168, align 8
  %wsize169 = getelementptr inbounds %struct.set_family, %struct.set_family* %132, i32 0, i32 0
  %133 = load i32, i32* %wsize169, align 4
  %134 = load i32*, i32** %p, align 8
  %idx.ext170 = sext i32 %133 to i64
  %add.ptr171 = getelementptr inbounds i32, i32* %134, i64 %idx.ext170
  store i32* %add.ptr171, i32** %p, align 8
  br label %for.cond.158

for.end.172:                                      ; preds = %for.cond.158
  %135 = load %struct.set_family*, %struct.set_family** %go_nowhere, align 8
  %count173 = getelementptr inbounds %struct.set_family, %struct.set_family* %135, i32 0, i32 3
  %136 = load i32, i32* %count173, align 4
  store i32 %136, i32* %before, align 4
  %137 = load %struct.set_family*, %struct.set_family** %go_nowhere, align 8
  %138 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %call174 = call %struct.set_family* (%struct.set_family*, i32, i32, ...) bitcast (%struct.set_family* (...)* @unravel_range to %struct.set_family* (%struct.set_family*, i32, i32, ...)*)(%struct.set_family* %137, i32 %138, i32 %139)
  store %struct.set_family* %call174, %struct.set_family** %go_nowhere, align 8
  %140 = load %struct.set_family*, %struct.set_family** %go_nowhere, align 8
  %count175 = getelementptr inbounds %struct.set_family, %struct.set_family* %140, i32 0, i32 3
  %141 = load i32, i32* %count175, align 4
  store i32 %141, i32* %after, align 4
  %142 = load %struct.set_family*, %struct.set_family** %F, align 8
  %143 = load %struct.set_family*, %struct.set_family** %go_nowhere, align 8
  %call176 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %142, %struct.set_family* %143)
  store %struct.set_family* %call176, %struct.set_family** %F, align 8
  %144 = load i32, i32* %verbose_mode.addr, align 4
  %tobool177 = icmp ne i32 %144, 0
  br i1 %tobool177, label %if.then.178, label %if.end.180

if.then.178:                                      ; preds = %for.end.172
  %145 = load i32, i32* %before, align 4
  %146 = load i32, i32* %after, align 4
  %call179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i32 0, i32 0), i32 %145, i32 %146)
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.178, %for.end.172
  store i32 0, i32* %i, align 4
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.319, %if.end.180
  %147 = load i32, i32* %i, align 4
  %148 = load i32, i32* %nstates, align 4
  %cmp182 = icmp slt i32 %147, %148
  br i1 %cmp182, label %for.body.184, label %for.end.321

for.body.184:                                     ; preds = %for.cond.181
  store i32 0, i32* %j, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.316, %for.body.184
  %149 = load i32, i32* %j, align 4
  %150 = load i32, i32* %nstates, align 4
  %cmp186 = icmp slt i32 %149, %150
  br i1 %cmp186, label %for.body.188, label %for.end.318

for.body.188:                                     ; preds = %for.cond.185
  %151 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call189 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 10, i32 %151)
  store %struct.set_family* %call189, %struct.set_family** %tF, align 8
  %152 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F190 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %152, i32 0, i32 0
  %153 = load %struct.set_family*, %struct.set_family** %F190, align 8
  %data191 = getelementptr inbounds %struct.set_family, %struct.set_family* %153, i32 0, i32 5
  %154 = load i32*, i32** %data191, align 8
  store i32* %154, i32** %p, align 8
  %155 = load i32*, i32** %p, align 8
  %156 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F192 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %156, i32 0, i32 0
  %157 = load %struct.set_family*, %struct.set_family** %F192, align 8
  %count193 = getelementptr inbounds %struct.set_family, %struct.set_family* %157, i32 0, i32 3
  %158 = load i32, i32* %count193, align 4
  %159 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F194 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %159, i32 0, i32 0
  %160 = load %struct.set_family*, %struct.set_family** %F194, align 8
  %wsize195 = getelementptr inbounds %struct.set_family, %struct.set_family* %160, i32 0, i32 0
  %161 = load i32, i32* %wsize195, align 4
  %mul196 = mul nsw i32 %158, %161
  %idx.ext197 = sext i32 %mul196 to i64
  %add.ptr198 = getelementptr inbounds i32, i32* %155, i64 %idx.ext197
  store i32* %add.ptr198, i32** %last, align 8
  br label %for.cond.199

for.cond.199:                                     ; preds = %for.inc.274, %for.body.188
  %162 = load i32*, i32** %p, align 8
  %163 = load i32*, i32** %last, align 8
  %cmp200 = icmp ult i32* %162, %163
  br i1 %cmp200, label %for.body.202, label %for.end.279

for.body.202:                                     ; preds = %for.cond.199
  %164 = load i32*, i32** %present_state_mask, align 8
  %165 = load i32*, i32** %p, align 8
  %call203 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_implies to i32 (i32*, i32*, ...)*)(i32* %164, i32* %165)
  %tobool204 = icmp ne i32 %call203, 0
  br i1 %tobool204, label %if.end.273, label %if.then.205

if.then.205:                                      ; preds = %for.body.202
  %166 = load i32, i32* %present_state, align 4
  %167 = load i32, i32* %i, align 4
  %add206 = add nsw i32 %166, %167
  %shr207 = ashr i32 %add206, 5
  %add208 = add nsw i32 %shr207, 1
  %idxprom209 = sext i32 %add208 to i64
  %168 = load i32*, i32** %p, align 8
  %arrayidx210 = getelementptr inbounds i32, i32* %168, i64 %idxprom209
  %169 = load i32, i32* %arrayidx210, align 4
  %170 = load i32, i32* %present_state, align 4
  %171 = load i32, i32* %i, align 4
  %add211 = add nsw i32 %170, %171
  %and212 = and i32 %add211, 31
  %shl213 = shl i32 1, %and212
  %and214 = and i32 %169, %shl213
  %tobool215 = icmp ne i32 %and214, 0
  br i1 %tobool215, label %if.then.216, label %if.end.272

if.then.216:                                      ; preds = %if.then.205
  %172 = load i32, i32* %next_state, align 4
  %173 = load i32, i32* %j, align 4
  %add217 = add nsw i32 %172, %173
  %shr218 = ashr i32 %add217, 5
  %add219 = add nsw i32 %shr218, 1
  %idxprom220 = sext i32 %add219 to i64
  %174 = load i32*, i32** %p, align 8
  %arrayidx221 = getelementptr inbounds i32, i32* %174, i64 %idxprom220
  %175 = load i32, i32* %arrayidx221, align 4
  %176 = load i32, i32* %next_state, align 4
  %177 = load i32, i32* %j, align 4
  %add222 = add nsw i32 %176, %177
  %and223 = and i32 %add222, 31
  %shl224 = shl i32 1, %and223
  %and225 = and i32 %175, %shl224
  %tobool226 = icmp ne i32 %and225, 0
  br i1 %tobool226, label %if.then.227, label %if.end.271

if.then.227:                                      ; preds = %if.then.216
  %178 = load i32*, i32** %p, align 8
  %arrayidx228 = getelementptr inbounds i32, i32* %178, i64 0
  %179 = load i32, i32* %arrayidx228, align 4
  %and229 = and i32 %179, 1023
  %mul230 = mul i32 32, %and229
  %cmp231 = icmp ule i32 %mul230, 32
  br i1 %cmp231, label %cond.true.233, label %cond.false.234

cond.true.233:                                    ; preds = %if.then.227
  br label %cond.end.242

cond.false.234:                                   ; preds = %if.then.227
  %180 = load i32*, i32** %p, align 8
  %arrayidx235 = getelementptr inbounds i32, i32* %180, i64 0
  %181 = load i32, i32* %arrayidx235, align 4
  %and236 = and i32 %181, 1023
  %mul237 = mul i32 32, %and236
  %sub238 = sub i32 %mul237, 1
  %shr239 = lshr i32 %sub238, 5
  %add240 = add i32 %shr239, 1
  %add241 = add i32 %add240, 1
  br label %cond.end.242

cond.end.242:                                     ; preds = %cond.false.234, %cond.true.233
  %cond243 = phi i32 [ 2, %cond.true.233 ], [ %add241, %cond.false.234 ]
  %conv244 = zext i32 %cond243 to i64
  %mul245 = mul i64 4, %conv244
  %call246 = call i8* @malloc(i64 %mul245)
  %182 = bitcast i8* %call246 to i32*
  %183 = load i32*, i32** %p, align 8
  %call247 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %182, i32* %183)
  store i32* %call247, i32** %p1, align 8
  %184 = load i32*, i32** %p1, align 8
  %185 = load i32*, i32** %p1, align 8
  %186 = load i32*, i32** %state_mask, align 8
  %call248 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %184, i32* %185, i32* %186)
  %187 = load i32, i32* %present_state, align 4
  %188 = load i32, i32* %i, align 4
  %add249 = add nsw i32 %187, %188
  %and250 = and i32 %add249, 31
  %shl251 = shl i32 1, %and250
  %189 = load i32, i32* %present_state, align 4
  %190 = load i32, i32* %i, align 4
  %add252 = add nsw i32 %189, %190
  %shr253 = ashr i32 %add252, 5
  %add254 = add nsw i32 %shr253, 1
  %idxprom255 = sext i32 %add254 to i64
  %191 = load i32*, i32** %p1, align 8
  %arrayidx256 = getelementptr inbounds i32, i32* %191, i64 %idxprom255
  %192 = load i32, i32* %arrayidx256, align 4
  %or257 = or i32 %192, %shl251
  store i32 %or257, i32* %arrayidx256, align 4
  %193 = load i32, i32* %next_state, align 4
  %194 = load i32, i32* %j, align 4
  %add258 = add nsw i32 %193, %194
  %and259 = and i32 %add258, 31
  %shl260 = shl i32 1, %and259
  %195 = load i32, i32* %next_state, align 4
  %196 = load i32, i32* %j, align 4
  %add261 = add nsw i32 %195, %196
  %shr262 = ashr i32 %add261, 5
  %add263 = add nsw i32 %shr262, 1
  %idxprom264 = sext i32 %add263 to i64
  %197 = load i32*, i32** %p1, align 8
  %arrayidx265 = getelementptr inbounds i32, i32* %197, i64 %idxprom264
  %198 = load i32, i32* %arrayidx265, align 4
  %or266 = or i32 %198, %shl260
  store i32 %or266, i32* %arrayidx265, align 4
  %199 = load %struct.set_family*, %struct.set_family** %tF, align 8
  %200 = load i32*, i32** %p1, align 8
  %call267 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %199, i32* %200)
  store %struct.set_family* %call267, %struct.set_family** %tF, align 8
  %201 = load i32*, i32** %p1, align 8
  %tobool268 = icmp ne i32* %201, null
  br i1 %tobool268, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %cond.end.242
  %202 = load i32*, i32** %p1, align 8
  %203 = bitcast i32* %202 to i8*
  call void @free(i8* %203)
  store i32* null, i32** %p1, align 8
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.269, %cond.end.242
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %if.then.216
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.then.205
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %for.body.202
  br label %for.inc.274

for.inc.274:                                      ; preds = %if.end.273
  %204 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F275 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %204, i32 0, i32 0
  %205 = load %struct.set_family*, %struct.set_family** %F275, align 8
  %wsize276 = getelementptr inbounds %struct.set_family, %struct.set_family* %205, i32 0, i32 0
  %206 = load i32, i32* %wsize276, align 4
  %207 = load i32*, i32** %p, align 8
  %idx.ext277 = sext i32 %206 to i64
  %add.ptr278 = getelementptr inbounds i32, i32* %207, i64 %idx.ext277
  store i32* %add.ptr278, i32** %p, align 8
  br label %for.cond.199

for.end.279:                                      ; preds = %for.cond.199
  %208 = load %struct.set_family*, %struct.set_family** %tF, align 8
  %count280 = getelementptr inbounds %struct.set_family, %struct.set_family* %208, i32 0, i32 3
  %209 = load i32, i32* %count280, align 4
  store i32 %209, i32* %before, align 4
  %210 = load i32, i32* %before, align 4
  %cmp281 = icmp sgt i32 %210, 0
  br i1 %cmp281, label %if.then.283, label %if.end.315

if.then.283:                                      ; preds = %for.end.279
  %211 = load %struct.set_family*, %struct.set_family** %tF, align 8
  %call284 = call %struct.set_family* @fsm_simplify(%struct.set_family* %211)
  store %struct.set_family* %call284, %struct.set_family** %tF, align 8
  %212 = load %struct.set_family*, %struct.set_family** %tF, align 8
  %data285 = getelementptr inbounds %struct.set_family, %struct.set_family* %212, i32 0, i32 5
  %213 = load i32*, i32** %data285, align 8
  store i32* %213, i32** %p, align 8
  %214 = load i32*, i32** %p, align 8
  %215 = load %struct.set_family*, %struct.set_family** %tF, align 8
  %count286 = getelementptr inbounds %struct.set_family, %struct.set_family* %215, i32 0, i32 3
  %216 = load i32, i32* %count286, align 4
  %217 = load %struct.set_family*, %struct.set_family** %tF, align 8
  %wsize287 = getelementptr inbounds %struct.set_family, %struct.set_family* %217, i32 0, i32 0
  %218 = load i32, i32* %wsize287, align 4
  %mul288 = mul nsw i32 %216, %218
  %idx.ext289 = sext i32 %mul288 to i64
  %add.ptr290 = getelementptr inbounds i32, i32* %214, i64 %idx.ext289
  store i32* %add.ptr290, i32** %last, align 8
  br label %for.cond.291

for.cond.291:                                     ; preds = %for.inc.304, %if.then.283
  %219 = load i32*, i32** %p, align 8
  %220 = load i32*, i32** %last, align 8
  %cmp292 = icmp ult i32* %219, %220
  br i1 %cmp292, label %for.body.294, label %for.end.308

for.body.294:                                     ; preds = %for.cond.291
  %221 = load i32, i32* %next_state, align 4
  %222 = load i32, i32* %j, align 4
  %add295 = add nsw i32 %221, %222
  %and296 = and i32 %add295, 31
  %shl297 = shl i32 1, %and296
  %223 = load i32, i32* %next_state, align 4
  %224 = load i32, i32* %j, align 4
  %add298 = add nsw i32 %223, %224
  %shr299 = ashr i32 %add298, 5
  %add300 = add nsw i32 %shr299, 1
  %idxprom301 = sext i32 %add300 to i64
  %225 = load i32*, i32** %p, align 8
  %arrayidx302 = getelementptr inbounds i32, i32* %225, i64 %idxprom301
  %226 = load i32, i32* %arrayidx302, align 4
  %or303 = or i32 %226, %shl297
  store i32 %or303, i32* %arrayidx302, align 4
  br label %for.inc.304

for.inc.304:                                      ; preds = %for.body.294
  %227 = load %struct.set_family*, %struct.set_family** %tF, align 8
  %wsize305 = getelementptr inbounds %struct.set_family, %struct.set_family* %227, i32 0, i32 0
  %228 = load i32, i32* %wsize305, align 4
  %229 = load i32*, i32** %p, align 8
  %idx.ext306 = sext i32 %228 to i64
  %add.ptr307 = getelementptr inbounds i32, i32* %229, i64 %idx.ext306
  store i32* %add.ptr307, i32** %p, align 8
  br label %for.cond.291

for.end.308:                                      ; preds = %for.cond.291
  %230 = load %struct.set_family*, %struct.set_family** %tF, align 8
  %count309 = getelementptr inbounds %struct.set_family, %struct.set_family* %230, i32 0, i32 3
  %231 = load i32, i32* %count309, align 4
  store i32 %231, i32* %after, align 4
  %232 = load %struct.set_family*, %struct.set_family** %F, align 8
  %233 = load %struct.set_family*, %struct.set_family** %tF, align 8
  %call310 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %232, %struct.set_family* %233)
  store %struct.set_family* %call310, %struct.set_family** %F, align 8
  %234 = load i32, i32* %verbose_mode.addr, align 4
  %tobool311 = icmp ne i32 %234, 0
  br i1 %tobool311, label %if.then.312, label %if.end.314

if.then.312:                                      ; preds = %for.end.308
  %235 = load i32, i32* %i, align 4
  %236 = load i32, i32* %j, align 4
  %237 = load i32, i32* %before, align 4
  %238 = load i32, i32* %after, align 4
  %call313 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i32 0, i32 0), i32 %235, i32 %236, i32 %237, i32 %238)
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.312, %for.end.308
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %for.end.279
  br label %for.inc.316

for.inc.316:                                      ; preds = %if.end.315
  %239 = load i32, i32* %j, align 4
  %inc317 = add nsw i32 %239, 1
  store i32 %inc317, i32* %j, align 4
  br label %for.cond.185

for.end.318:                                      ; preds = %for.cond.185
  br label %for.inc.319

for.inc.319:                                      ; preds = %for.end.318
  %240 = load i32, i32* %i, align 4
  %inc320 = add nsw i32 %240, 1
  store i32 %inc320, i32* %i, align 4
  br label %for.cond.181

for.end.321:                                      ; preds = %for.cond.181
  %241 = load i32*, i32** %state_mask, align 8
  %tobool322 = icmp ne i32* %241, null
  br i1 %tobool322, label %if.then.323, label %if.end.324

if.then.323:                                      ; preds = %for.end.321
  %242 = load i32*, i32** %state_mask, align 8
  %243 = bitcast i32* %242 to i8*
  call void @free(i8* %243)
  store i32* null, i32** %state_mask, align 8
  br label %if.end.324

if.end.324:                                       ; preds = %if.then.323, %for.end.321
  %244 = load i32*, i32** %present_state_mask, align 8
  %tobool325 = icmp ne i32* %244, null
  br i1 %tobool325, label %if.then.326, label %if.end.327

if.then.326:                                      ; preds = %if.end.324
  %245 = load i32*, i32** %present_state_mask, align 8
  %246 = bitcast i32* %245 to i8*
  call void @free(i8* %246)
  store i32* null, i32** %present_state_mask, align 8
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.326, %if.end.324
  %247 = load i32*, i32** %next_state_mask, align 8
  %tobool328 = icmp ne i32* %247, null
  br i1 %tobool328, label %if.then.329, label %if.end.330

if.then.329:                                      ; preds = %if.end.327
  %248 = load i32*, i32** %next_state_mask, align 8
  %249 = bitcast i32* %248 to i8*
  call void @free(i8* %249)
  store i32* null, i32** %next_state_mask, align 8
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.329, %if.end.327
  %250 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F331 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %250, i32 0, i32 0
  %251 = load %struct.set_family*, %struct.set_family** %F331, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %251)
  %252 = load %struct.set_family*, %struct.set_family** %F, align 8
  %253 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F332 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %253, i32 0, i32 0
  store %struct.set_family* %252, %struct.set_family** %F332, align 8
  %254 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %254, i32 0, i32 1
  %255 = load %struct.set_family*, %struct.set_family** %D, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %255)
  %256 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call333 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 0, i32 %256)
  %257 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D334 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %257, i32 0, i32 1
  store %struct.set_family* %call333, %struct.set_family** %D334, align 8
  call void (...) @setdown_cube()
  %258 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %tobool335 = icmp ne i32* %258, null
  br i1 %tobool335, label %if.then.336, label %if.end.337

if.then.336:                                      ; preds = %if.end.330
  %259 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %260 = bitcast i32* %259 to i8*
  call void @free(i8* %260)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.336, %if.end.330
  %261 = load i32, i32* %nin, align 4
  store i32 %261, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %262 = load i32, i32* %nin, align 4
  %add338 = add nsw i32 %262, 3
  store i32 %add338, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %263 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %conv339 = sext i32 %263 to i64
  %mul340 = mul i64 4, %conv339
  %call341 = call i8* @malloc(i64 %mul340)
  %264 = bitcast i8* %call341 to i32*
  store i32* %264, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %265 = load i32, i32* %nstates, align 4
  %266 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %idxprom342 = sext i32 %266 to i64
  %267 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx343 = getelementptr inbounds i32, i32* %267, i64 %idxprom342
  store i32 %265, i32* %arrayidx343, align 4
  %268 = load i32, i32* %nstates, align 4
  %269 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %add344 = add nsw i32 %269, 1
  %idxprom345 = sext i32 %add344 to i64
  %270 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx346 = getelementptr inbounds i32, i32* %270, i64 %idxprom345
  store i32 %268, i32* %arrayidx346, align 4
  %271 = load i32, i32* %nout, align 4
  %272 = load i32, i32* %nstates, align 4
  %sub347 = sub nsw i32 %271, %272
  %273 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %add348 = add nsw i32 %273, 2
  %idxprom349 = sext i32 %add348 to i64
  %274 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx350 = getelementptr inbounds i32, i32* %274, i64 %idxprom349
  store i32 %sub347, i32* %arrayidx350, align 4
  call void (...) @cube_setup()
  %275 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F351 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %275, i32 0, i32 0
  %276 = load %struct.set_family*, %struct.set_family** %F351, align 8
  %data352 = getelementptr inbounds %struct.set_family, %struct.set_family* %276, i32 0, i32 5
  %277 = load i32*, i32** %data352, align 8
  store i32* %277, i32** %p, align 8
  %278 = load i32*, i32** %p, align 8
  %279 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F353 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %279, i32 0, i32 0
  %280 = load %struct.set_family*, %struct.set_family** %F353, align 8
  %count354 = getelementptr inbounds %struct.set_family, %struct.set_family* %280, i32 0, i32 3
  %281 = load i32, i32* %count354, align 4
  %282 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F355 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %282, i32 0, i32 0
  %283 = load %struct.set_family*, %struct.set_family** %F355, align 8
  %wsize356 = getelementptr inbounds %struct.set_family, %struct.set_family* %283, i32 0, i32 0
  %284 = load i32, i32* %wsize356, align 4
  %mul357 = mul nsw i32 %281, %284
  %idx.ext358 = sext i32 %mul357 to i64
  %add.ptr359 = getelementptr inbounds i32, i32* %278, i64 %idx.ext358
  store i32* %add.ptr359, i32** %last, align 8
  br label %for.cond.360

for.cond.360:                                     ; preds = %for.inc.365, %if.end.337
  %285 = load i32*, i32** %p, align 8
  %286 = load i32*, i32** %last, align 8
  %cmp361 = icmp ult i32* %285, %286
  br i1 %cmp361, label %for.body.363, label %for.end.370

for.body.363:                                     ; preds = %for.cond.360
  %287 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %288 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %289 = load i32*, i32** %p, align 8
  %call364 = call i32 (%struct._IO_FILE*, %struct.PLA_t*, i32*, i8*, ...) bitcast (i32 (...)* @kiss_print_cube to i32 (%struct._IO_FILE*, %struct.PLA_t*, i32*, i8*, ...)*)(%struct._IO_FILE* %287, %struct.PLA_t* %288, i32* %289, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0))
  br label %for.inc.365

for.inc.365:                                      ; preds = %for.body.363
  %290 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F366 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %290, i32 0, i32 0
  %291 = load %struct.set_family*, %struct.set_family** %F366, align 8
  %wsize367 = getelementptr inbounds %struct.set_family, %struct.set_family* %291, i32 0, i32 0
  %292 = load i32, i32* %wsize367, align 4
  %293 = load i32*, i32** %p, align 8
  %idx.ext368 = sext i32 %292 to i64
  %add.ptr369 = getelementptr inbounds i32, i32* %293, i64 %idx.ext368
  store i32* %add.ptr369, i32** %p, align 8
  br label %for.cond.360

for.end.370:                                      ; preds = %for.cond.360
  %294 = load i32, i32* %retval
  ret i32 %294
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32* @set_clear(...) #2

declare i32* @set_or(...) #2

declare i32 @setp_implies(...) #2

declare %struct.set_family* @sf_addset(...) #2

; Function Attrs: nounwind uwtable
define internal %struct.set_family* @fsm_simplify(%struct.set_family* %F) #0 {
entry:
  %F.addr = alloca %struct.set_family*, align 8
  %D = alloca %struct.set_family*, align 8
  %R = alloca %struct.set_family*, align 8
  store %struct.set_family* %F, %struct.set_family** %F.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 0, i32 %0)
  store %struct.set_family* %call, %struct.set_family** %D, align 8
  %1 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %call1 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* %1)
  %call2 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @complement to %struct.set_family* (i32**, ...)*)(i32** %call1)
  store %struct.set_family* %call2, %struct.set_family** %R, align 8
  %2 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  %3 = load %struct.set_family*, %struct.set_family** %D, align 8
  %4 = load %struct.set_family*, %struct.set_family** %R, align 8
  %call3 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @espresso to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %2, %struct.set_family* %3, %struct.set_family* %4)
  store %struct.set_family* %call3, %struct.set_family** %F.addr, align 8
  %5 = load %struct.set_family*, %struct.set_family** %D, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %5)
  %6 = load %struct.set_family*, %struct.set_family** %R, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %6)
  %7 = load %struct.set_family*, %struct.set_family** %F.addr, align 8
  ret %struct.set_family* %7
}

declare i32 @printf(i8*, ...) #2

declare i32 @setp_disjoint(...) #2

declare %struct.set_family* @unravel_range(...) #2

declare i32* @set_diff(...) #2

declare i32 @kiss_print_cube(...) #2

declare %struct.set_family* @espresso(...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
