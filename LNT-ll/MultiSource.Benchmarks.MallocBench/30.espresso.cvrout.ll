; ModuleID = './MultiSource.Benchmarks.MallocBench/30.espresso.cvrout.bc'
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

@.str = private unnamed_addr constant [7 x i8] c".p %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"01\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".e\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"~1\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"~2\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"~0\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c".end\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c".type \00", align 1
@cube = external global %struct.cube_struct, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c".i %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c".o %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c".mv %d %d\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c".ilb\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c".ob\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c".label var=%d\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"#.phase \00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c".option unmerged\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [8 x i8] c"\0A.group\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" \5C\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c".label\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"Cannot have no-output function for EQNTOTT output mode\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"Must have binary-valued function for EQNTOTT output mode\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"%s = \00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c" | (\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c";\0A\0A\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"?01-\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"1~\00", align 1
@pc1.s1 = internal global [256 x i8] zeroinitializer, align 16
@pc2.s2 = internal global [256 x i8] zeroinitializer, align 16
@verbose_debug = external global i32, align 4
@.str.36 = private unnamed_addr constant [19 x i8] c"%s[%d]: ord(T)=%d\0A\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"cofactor=%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"%4d. %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"v%d.bar\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"v%d\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"v%d.%d\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c"more than 1 part in a symbolic variable\0A\00", align 1
@.str.44 = private unnamed_addr constant [55 x i8] c"# Symbolic constraints for variable %d (Numeric form)\0A\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"# unconstrained weight = %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"num_codes=%d\0A\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"weight=%d: \00", align 1
@.str.48 = private unnamed_addr constant [56 x i8] c"# Symbolic constraints for variable %d (Symbolic form)\0A\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"#   w=%d: (\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c" )\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @fprint_pla(%struct._IO_FILE* %fp, %struct.PLA_t* %PLA, i32 %output_type) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %output_type.addr = alloca i32, align 4
  %num = alloca i32, align 4
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %output_type, i32* %output_type.addr, align 4
  %0 = load i32, i32* %output_type.addr, align 4
  %and = and i32 %0, 256
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %2 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call = call i32 @output_symbolic_constraints(%struct._IO_FILE* %1, %struct.PLA_t* %2, i32 0)
  %3 = load i32, i32* %output_type.addr, align 4
  %and1 = and i32 %3, -257
  store i32 %and1, i32* %output_type.addr, align 4
  %4 = load i32, i32* %output_type.addr, align 4
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %if.end.122

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %5 = load i32, i32* %output_type.addr, align 4
  %and5 = and i32 %5, 512
  %cmp6 = icmp ne i32 %and5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.end.4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %7 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call8 = call i32 @output_symbolic_constraints(%struct._IO_FILE* %6, %struct.PLA_t* %7, i32 1)
  %8 = load i32, i32* %output_type.addr, align 4
  %and9 = and i32 %8, -513
  store i32 %and9, i32* %output_type.addr, align 4
  %9 = load i32, i32* %output_type.addr, align 4
  %cmp10 = icmp eq i32 %9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.7
  br label %if.end.122

if.end.12:                                        ; preds = %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end.4
  %10 = load i32, i32* %output_type.addr, align 4
  %cmp14 = icmp eq i32 %10, 8
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.13
  %11 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  call void @pls_output(%struct.PLA_t* %11)
  br label %if.end.122

if.else:                                          ; preds = %if.end.13
  %12 = load i32, i32* %output_type.addr, align 4
  %cmp16 = icmp eq i32 %12, 16
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else
  %13 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  call void @eqn_output(%struct.PLA_t* %13)
  br label %if.end.121

if.else.18:                                       ; preds = %if.else
  %14 = load i32, i32* %output_type.addr, align 4
  %cmp19 = icmp eq i32 %14, 128
  br i1 %cmp19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.else.18
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %16 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call21 = call i32 @kiss_output(%struct._IO_FILE* %15, %struct.PLA_t* %16)
  br label %if.end.120

if.else.22:                                       ; preds = %if.else.18
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %18 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %19 = load i32, i32* %output_type.addr, align 4
  call void @fpr_header(%struct._IO_FILE* %17, %struct.PLA_t* %18, i32 %19)
  store i32 0, i32* %num, align 4
  %20 = load i32, i32* %output_type.addr, align 4
  %and23 = and i32 %20, 1
  %tobool = icmp ne i32 %and23, 0
  br i1 %tobool, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else.22
  %21 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %21, i32 0, i32 0
  %22 = load %struct.set_family*, %struct.set_family** %F, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i32 0, i32 3
  %23 = load i32, i32* %count, align 4
  %24 = load i32, i32* %num, align 4
  %add = add nsw i32 %24, %23
  store i32 %add, i32* %num, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.else.22
  %25 = load i32, i32* %output_type.addr, align 4
  %and26 = and i32 %25, 2
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end.25
  %26 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %26, i32 0, i32 1
  %27 = load %struct.set_family*, %struct.set_family** %D, align 8
  %count29 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 3
  %28 = load i32, i32* %count29, align 4
  %29 = load i32, i32* %num, align 4
  %add30 = add nsw i32 %29, %28
  store i32 %add30, i32* %num, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.end.25
  %30 = load i32, i32* %output_type.addr, align 4
  %and32 = and i32 %30, 4
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end.31
  %31 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %31, i32 0, i32 2
  %32 = load %struct.set_family*, %struct.set_family** %R, align 8
  %count35 = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 3
  %33 = load i32, i32* %count35, align 4
  %34 = load i32, i32* %num, align 4
  %add36 = add nsw i32 %34, %33
  store i32 %add36, i32* %num, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end.31
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %36 = load i32, i32* %num, align 4
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %36)
  %37 = load i32, i32* %output_type.addr, align 4
  %cmp39 = icmp eq i32 %37, 1
  br i1 %cmp39, label %if.then.40, label %if.else.51

if.then.40:                                       ; preds = %if.end.37
  %38 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F41 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %38, i32 0, i32 0
  %39 = load %struct.set_family*, %struct.set_family** %F41, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %39, i32 0, i32 5
  %40 = load i32*, i32** %data, align 8
  store i32* %40, i32** %p, align 8
  %41 = load i32*, i32** %p, align 8
  %42 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F42 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %42, i32 0, i32 0
  %43 = load %struct.set_family*, %struct.set_family** %F42, align 8
  %count43 = getelementptr inbounds %struct.set_family, %struct.set_family* %43, i32 0, i32 3
  %44 = load i32, i32* %count43, align 4
  %45 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F44 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %45, i32 0, i32 0
  %46 = load %struct.set_family*, %struct.set_family** %F44, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %46, i32 0, i32 0
  %47 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %44, %47
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %41, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.40
  %48 = load i32*, i32** %p, align 8
  %49 = load i32*, i32** %last, align 8
  %cmp45 = icmp ult i32* %48, %49
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %51 = load i32*, i32** %p, align 8
  call void @print_cube(%struct._IO_FILE* %50, i32* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F46 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %52, i32 0, i32 0
  %53 = load %struct.set_family*, %struct.set_family** %F46, align 8
  %wsize47 = getelementptr inbounds %struct.set_family, %struct.set_family* %53, i32 0, i32 0
  %54 = load i32, i32* %wsize47, align 4
  %55 = load i32*, i32** %p, align 8
  %idx.ext48 = sext i32 %54 to i64
  %add.ptr49 = getelementptr inbounds i32, i32* %55, i64 %idx.ext48
  store i32* %add.ptr49, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.119

if.else.51:                                       ; preds = %if.end.37
  %57 = load i32, i32* %output_type.addr, align 4
  %and52 = and i32 %57, 1
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.73

if.then.54:                                       ; preds = %if.else.51
  %58 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F55 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %58, i32 0, i32 0
  %59 = load %struct.set_family*, %struct.set_family** %F55, align 8
  %data56 = getelementptr inbounds %struct.set_family, %struct.set_family* %59, i32 0, i32 5
  %60 = load i32*, i32** %data56, align 8
  store i32* %60, i32** %p, align 8
  %61 = load i32*, i32** %p, align 8
  %62 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F57 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %62, i32 0, i32 0
  %63 = load %struct.set_family*, %struct.set_family** %F57, align 8
  %count58 = getelementptr inbounds %struct.set_family, %struct.set_family* %63, i32 0, i32 3
  %64 = load i32, i32* %count58, align 4
  %65 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F59 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %65, i32 0, i32 0
  %66 = load %struct.set_family*, %struct.set_family** %F59, align 8
  %wsize60 = getelementptr inbounds %struct.set_family, %struct.set_family* %66, i32 0, i32 0
  %67 = load i32, i32* %wsize60, align 4
  %mul61 = mul nsw i32 %64, %67
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds i32, i32* %61, i64 %idx.ext62
  store i32* %add.ptr63, i32** %last, align 8
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.67, %if.then.54
  %68 = load i32*, i32** %p, align 8
  %69 = load i32*, i32** %last, align 8
  %cmp65 = icmp ult i32* %68, %69
  br i1 %cmp65, label %for.body.66, label %for.end.72

for.body.66:                                      ; preds = %for.cond.64
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %71 = load i32*, i32** %p, align 8
  call void @print_cube(%struct._IO_FILE* %70, i32* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.66
  %72 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F68 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %72, i32 0, i32 0
  %73 = load %struct.set_family*, %struct.set_family** %F68, align 8
  %wsize69 = getelementptr inbounds %struct.set_family, %struct.set_family* %73, i32 0, i32 0
  %74 = load i32, i32* %wsize69, align 4
  %75 = load i32*, i32** %p, align 8
  %idx.ext70 = sext i32 %74 to i64
  %add.ptr71 = getelementptr inbounds i32, i32* %75, i64 %idx.ext70
  store i32* %add.ptr71, i32** %p, align 8
  br label %for.cond.64

for.end.72:                                       ; preds = %for.cond.64
  br label %if.end.73

if.end.73:                                        ; preds = %for.end.72, %if.else.51
  %76 = load i32, i32* %output_type.addr, align 4
  %and74 = and i32 %76, 2
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.95

if.then.76:                                       ; preds = %if.end.73
  %77 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D77 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %77, i32 0, i32 1
  %78 = load %struct.set_family*, %struct.set_family** %D77, align 8
  %data78 = getelementptr inbounds %struct.set_family, %struct.set_family* %78, i32 0, i32 5
  %79 = load i32*, i32** %data78, align 8
  store i32* %79, i32** %p, align 8
  %80 = load i32*, i32** %p, align 8
  %81 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D79 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %81, i32 0, i32 1
  %82 = load %struct.set_family*, %struct.set_family** %D79, align 8
  %count80 = getelementptr inbounds %struct.set_family, %struct.set_family* %82, i32 0, i32 3
  %83 = load i32, i32* %count80, align 4
  %84 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D81 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %84, i32 0, i32 1
  %85 = load %struct.set_family*, %struct.set_family** %D81, align 8
  %wsize82 = getelementptr inbounds %struct.set_family, %struct.set_family* %85, i32 0, i32 0
  %86 = load i32, i32* %wsize82, align 4
  %mul83 = mul nsw i32 %83, %86
  %idx.ext84 = sext i32 %mul83 to i64
  %add.ptr85 = getelementptr inbounds i32, i32* %80, i64 %idx.ext84
  store i32* %add.ptr85, i32** %last, align 8
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.89, %if.then.76
  %87 = load i32*, i32** %p, align 8
  %88 = load i32*, i32** %last, align 8
  %cmp87 = icmp ult i32* %87, %88
  br i1 %cmp87, label %for.body.88, label %for.end.94

for.body.88:                                      ; preds = %for.cond.86
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %90 = load i32*, i32** %p, align 8
  call void @print_cube(%struct._IO_FILE* %89, i32* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.body.88
  %91 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D90 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %91, i32 0, i32 1
  %92 = load %struct.set_family*, %struct.set_family** %D90, align 8
  %wsize91 = getelementptr inbounds %struct.set_family, %struct.set_family* %92, i32 0, i32 0
  %93 = load i32, i32* %wsize91, align 4
  %94 = load i32*, i32** %p, align 8
  %idx.ext92 = sext i32 %93 to i64
  %add.ptr93 = getelementptr inbounds i32, i32* %94, i64 %idx.ext92
  store i32* %add.ptr93, i32** %p, align 8
  br label %for.cond.86

for.end.94:                                       ; preds = %for.cond.86
  br label %if.end.95

if.end.95:                                        ; preds = %for.end.94, %if.end.73
  %95 = load i32, i32* %output_type.addr, align 4
  %and96 = and i32 %95, 4
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.117

if.then.98:                                       ; preds = %if.end.95
  %96 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R99 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %96, i32 0, i32 2
  %97 = load %struct.set_family*, %struct.set_family** %R99, align 8
  %data100 = getelementptr inbounds %struct.set_family, %struct.set_family* %97, i32 0, i32 5
  %98 = load i32*, i32** %data100, align 8
  store i32* %98, i32** %p, align 8
  %99 = load i32*, i32** %p, align 8
  %100 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R101 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %100, i32 0, i32 2
  %101 = load %struct.set_family*, %struct.set_family** %R101, align 8
  %count102 = getelementptr inbounds %struct.set_family, %struct.set_family* %101, i32 0, i32 3
  %102 = load i32, i32* %count102, align 4
  %103 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R103 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %103, i32 0, i32 2
  %104 = load %struct.set_family*, %struct.set_family** %R103, align 8
  %wsize104 = getelementptr inbounds %struct.set_family, %struct.set_family* %104, i32 0, i32 0
  %105 = load i32, i32* %wsize104, align 4
  %mul105 = mul nsw i32 %102, %105
  %idx.ext106 = sext i32 %mul105 to i64
  %add.ptr107 = getelementptr inbounds i32, i32* %99, i64 %idx.ext106
  store i32* %add.ptr107, i32** %last, align 8
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.111, %if.then.98
  %106 = load i32*, i32** %p, align 8
  %107 = load i32*, i32** %last, align 8
  %cmp109 = icmp ult i32* %106, %107
  br i1 %cmp109, label %for.body.110, label %for.end.116

for.body.110:                                     ; preds = %for.cond.108
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %109 = load i32*, i32** %p, align 8
  call void @print_cube(%struct._IO_FILE* %108, i32* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.body.110
  %110 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R112 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %110, i32 0, i32 2
  %111 = load %struct.set_family*, %struct.set_family** %R112, align 8
  %wsize113 = getelementptr inbounds %struct.set_family, %struct.set_family* %111, i32 0, i32 0
  %112 = load i32, i32* %wsize113, align 4
  %113 = load i32*, i32** %p, align 8
  %idx.ext114 = sext i32 %112 to i64
  %add.ptr115 = getelementptr inbounds i32, i32* %113, i64 %idx.ext114
  store i32* %add.ptr115, i32** %p, align 8
  br label %for.cond.108

for.end.116:                                      ; preds = %for.cond.108
  br label %if.end.117

if.end.117:                                       ; preds = %for.end.116, %if.end.95
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.117, %for.end
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.20
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.17
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.3, %if.then.11, %if.end.121, %if.then.15
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @fpr_header(%struct._IO_FILE* %fp, %struct.PLA_t* %PLA, i32 %output_type) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %output_type.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %var = alloca i32, align 4
  %first = alloca i32, align 4
  %last = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %output_type, i32* %output_type.addr, align 4
  %0 = load i32, i32* %output_type.addr, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  %2 = load i32, i32* %output_type.addr, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 @_IO_putc(i32 102, %struct._IO_FILE* %3)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %4 = load i32, i32* %output_type.addr, align 4
  %and3 = and i32 %4, 2
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i32 @_IO_putc(i32 100, %struct._IO_FILE* %5)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %6 = load i32, i32* %output_type.addr, align 4
  %and8 = and i32 %6, 4
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.7
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call11 = call i32 @_IO_putc(i32 114, %struct._IO_FILE* %7)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.7
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call13 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %8)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.12, %entry
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 17), align 4
  %cmp15 = icmp sle i32 %9, 1
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.14
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 %11)
  %12 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %cmp18 = icmp ne i32 %12, -1
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.16
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 %idxprom
  %16 = load i32, i32* %arrayidx, align 4
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 %16)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.16
  br label %if.end.28

if.else:                                          ; preds = %if.end.14
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 %18, i32 %19)
  %20 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %20, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %21 = load i32, i32* %var, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp23 = icmp slt i32 %21, %22
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %24 = load i32, i32* %var, align 4
  %idxprom24 = sext i32 %24 to i64
  %25 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %25, i64 %idxprom24
  %26 = load i32, i32* %arrayidx25, align 4
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %26)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %var, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %for.end, %if.end.21
  %29 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %29, i32 0, i32 7
  %30 = load i8**, i8*** %label, align 8
  %cmp29 = icmp ne i8** %30, null
  br i1 %cmp29, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.end.28
  %31 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label30 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %31, i32 0, i32 7
  %32 = load i8**, i8*** %label30, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %32, i64 1
  %33 = load i8*, i8** %arrayidx31, align 8
  %cmp32 = icmp ne i8* %33, null
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.50

land.lhs.true.33:                                 ; preds = %land.lhs.true
  %34 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp34 = icmp sgt i32 %34, 0
  br i1 %cmp34, label %if.then.35, label %if.end.50

if.then.35:                                       ; preds = %land.lhs.true.33
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %var, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.46, %if.then.35
  %36 = load i32, i32* %var, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp38 = icmp slt i32 %36, %37
  br i1 %cmp38, label %for.body.39, label %for.end.48

for.body.39:                                      ; preds = %for.cond.37
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %39 = load i32, i32* %var, align 4
  %idxprom40 = sext i32 %39 to i64
  %40 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %40, i64 %idxprom40
  %41 = load i32, i32* %arrayidx41, align 4
  %add = add nsw i32 %41, 1
  %idxprom42 = sext i32 %add to i64
  %42 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label43 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %42, i32 0, i32 7
  %43 = load i8**, i8*** %label43, align 8
  %arrayidx44 = getelementptr inbounds i8*, i8** %43, i64 %idxprom42
  %44 = load i8*, i8** %arrayidx44, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %44)
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.39
  %45 = load i32, i32* %var, align 4
  %inc47 = add nsw i32 %45, 1
  store i32 %inc47, i32* %var, align 4
  br label %for.cond.37

for.end.48:                                       ; preds = %for.cond.37
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call49 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %46)
  br label %if.end.50

if.end.50:                                        ; preds = %for.end.48, %land.lhs.true.33, %land.lhs.true, %if.end.28
  %47 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label51 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %47, i32 0, i32 7
  %48 = load i8**, i8*** %label51, align 8
  %cmp52 = icmp ne i8** %48, null
  br i1 %cmp52, label %land.lhs.true.53, label %if.end.80

land.lhs.true.53:                                 ; preds = %if.end.50
  %49 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom54 = sext i32 %49 to i64
  %50 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %50, i64 %idxprom54
  %51 = load i32, i32* %arrayidx55, align 4
  %idxprom56 = sext i32 %51 to i64
  %52 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label57 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %52, i32 0, i32 7
  %53 = load i8**, i8*** %label57, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %53, i64 %idxprom56
  %54 = load i8*, i8** %arrayidx58, align 8
  %cmp59 = icmp ne i8* %54, null
  br i1 %cmp59, label %land.lhs.true.60, label %if.end.80

land.lhs.true.60:                                 ; preds = %land.lhs.true.53
  %55 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %cmp61 = icmp ne i32 %55, -1
  br i1 %cmp61, label %if.then.62, label %if.end.80

if.then.62:                                       ; preds = %land.lhs.true.60
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.76, %if.then.62
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom65 = sext i32 %58 to i64
  %59 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %59, i64 %idxprom65
  %60 = load i32, i32* %arrayidx66, align 4
  %cmp67 = icmp slt i32 %57, %60
  br i1 %cmp67, label %for.body.68, label %for.end.78

for.body.68:                                      ; preds = %for.cond.64
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom69 = sext i32 %62 to i64
  %63 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %63, i64 %idxprom69
  %64 = load i32, i32* %arrayidx70, align 4
  %65 = load i32, i32* %i, align 4
  %add71 = add nsw i32 %64, %65
  %idxprom72 = sext i32 %add71 to i64
  %66 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label73 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %66, i32 0, i32 7
  %67 = load i8**, i8*** %label73, align 8
  %arrayidx74 = getelementptr inbounds i8*, i8** %67, i64 %idxprom72
  %68 = load i8*, i8** %arrayidx74, align 8
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %68)
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.68
  %69 = load i32, i32* %i, align 4
  %inc77 = add nsw i32 %69, 1
  store i32 %inc77, i32* %i, align 4
  br label %for.cond.64

for.end.78:                                       ; preds = %for.cond.64
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call79 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %70)
  br label %if.end.80

if.end.80:                                        ; preds = %for.end.78, %land.lhs.true.60, %land.lhs.true.53, %if.end.50
  %71 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %71, i32* %var, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.109, %if.end.80
  %72 = load i32, i32* %var, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub = sub nsw i32 %73, 1
  %cmp82 = icmp slt i32 %72, %sub
  br i1 %cmp82, label %for.body.83, label %for.end.111

for.body.83:                                      ; preds = %for.cond.81
  %74 = load i32, i32* %var, align 4
  %idxprom84 = sext i32 %74 to i64
  %75 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %75, i64 %idxprom84
  %76 = load i32, i32* %arrayidx85, align 4
  store i32 %76, i32* %first, align 4
  %77 = load i32, i32* %var, align 4
  %idxprom86 = sext i32 %77 to i64
  %78 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %78, i64 %idxprom86
  %79 = load i32, i32* %arrayidx87, align 4
  store i32 %79, i32* %last, align 4
  %80 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label88 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %80, i32 0, i32 7
  %81 = load i8**, i8*** %label88, align 8
  %cmp89 = icmp ne i8** %81, null
  br i1 %cmp89, label %land.lhs.true.90, label %if.end.108

land.lhs.true.90:                                 ; preds = %for.body.83
  %82 = load i32, i32* %first, align 4
  %idxprom91 = sext i32 %82 to i64
  %83 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label92 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %83, i32 0, i32 7
  %84 = load i8**, i8*** %label92, align 8
  %arrayidx93 = getelementptr inbounds i8*, i8** %84, i64 %idxprom91
  %85 = load i8*, i8** %arrayidx93, align 8
  %cmp94 = icmp ne i8* %85, null
  br i1 %cmp94, label %if.then.95, label %if.end.108

if.then.95:                                       ; preds = %land.lhs.true.90
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %87 = load i32, i32* %var, align 4
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 %87)
  %88 = load i32, i32* %first, align 4
  store i32 %88, i32* %i, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.104, %if.then.95
  %89 = load i32, i32* %i, align 4
  %90 = load i32, i32* %last, align 4
  %cmp98 = icmp sle i32 %89, %90
  br i1 %cmp98, label %for.body.99, label %for.end.106

for.body.99:                                      ; preds = %for.cond.97
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %92 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %92 to i64
  %93 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label101 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %93, i32 0, i32 7
  %94 = load i8**, i8*** %label101, align 8
  %arrayidx102 = getelementptr inbounds i8*, i8** %94, i64 %idxprom100
  %95 = load i8*, i8** %arrayidx102, align 8
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %95)
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.99
  %96 = load i32, i32* %i, align 4
  %inc105 = add nsw i32 %96, 1
  store i32 %inc105, i32* %i, align 4
  br label %for.cond.97

for.end.106:                                      ; preds = %for.cond.97
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call107 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %97)
  br label %if.end.108

if.end.108:                                       ; preds = %for.end.106, %land.lhs.true.90, %for.body.83
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.108
  %98 = load i32, i32* %var, align 4
  %inc110 = add nsw i32 %98, 1
  store i32 %inc110, i32* %var, align 4
  br label %for.cond.81

for.end.111:                                      ; preds = %for.cond.81
  %99 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %99, i32 0, i32 5
  %100 = load i32*, i32** %phase, align 8
  %cmp112 = icmp ne i32* %100, null
  br i1 %cmp112, label %if.then.113, label %if.end.134

if.then.113:                                      ; preds = %for.end.111
  %101 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom114 = sext i32 %101 to i64
  %102 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %102, i64 %idxprom114
  %103 = load i32, i32* %arrayidx115, align 4
  store i32 %103, i32* %first, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom116 = sext i32 %104 to i64
  %105 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %105, i64 %idxprom116
  %106 = load i32, i32* %arrayidx117, align 4
  store i32 %106, i32* %last, align 4
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0))
  %108 = load i32, i32* %first, align 4
  store i32 %108, i32* %i, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.130, %if.then.113
  %109 = load i32, i32* %i, align 4
  %110 = load i32, i32* %last, align 4
  %cmp120 = icmp sle i32 %109, %110
  br i1 %cmp120, label %for.body.121, label %for.end.132

for.body.121:                                     ; preds = %for.cond.119
  %111 = load i32, i32* %i, align 4
  %shr = ashr i32 %111, 5
  %add122 = add nsw i32 %shr, 1
  %idxprom123 = sext i32 %add122 to i64
  %112 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase124 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %112, i32 0, i32 5
  %113 = load i32*, i32** %phase124, align 8
  %arrayidx125 = getelementptr inbounds i32, i32* %113, i64 %idxprom123
  %114 = load i32, i32* %arrayidx125, align 4
  %115 = load i32, i32* %i, align 4
  %and126 = and i32 %115, 31
  %shl = shl i32 1, %and126
  %and127 = and i32 %114, %shl
  %tobool128 = icmp ne i32 %and127, 0
  %cond = select i1 %tobool128, i32 49, i32 48
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call129 = call i32 @_IO_putc(i32 %cond, %struct._IO_FILE* %116)
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.body.121
  %117 = load i32, i32* %i, align 4
  %inc131 = add nsw i32 %117, 1
  store i32 %inc131, i32* %i, align 4
  br label %for.cond.119

for.end.132:                                      ; preds = %for.cond.119
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.134

if.end.134:                                       ; preds = %for.end.132, %for.end.111
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @pls_output(%struct.PLA_t* %PLA) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0))
  %0 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call1 = call i32 @makeup_labels(%struct.PLA_t* %0)
  %1 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @pls_label(%struct.PLA_t* %1, %struct._IO_FILE* %2)
  %3 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @pls_group(%struct.PLA_t* %3, %struct._IO_FILE* %4)
  %5 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %5, i32 0, i32 0
  %6 = load %struct.set_family*, %struct.set_family** %F, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 3
  %7 = load i32, i32* %count, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %7)
  %8 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F3 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %8, i32 0, i32 0
  %9 = load %struct.set_family*, %struct.set_family** %F3, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 5
  %10 = load i32*, i32** %data, align 8
  store i32* %10, i32** %p, align 8
  %11 = load i32*, i32** %p, align 8
  %12 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F4 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %12, i32 0, i32 0
  %13 = load %struct.set_family*, %struct.set_family** %F4, align 8
  %count5 = getelementptr inbounds %struct.set_family, %struct.set_family* %13, i32 0, i32 3
  %14 = load i32, i32* %count5, align 4
  %15 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F6 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %15, i32 0, i32 0
  %16 = load %struct.set_family*, %struct.set_family** %F6, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 0
  %17 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %14, %17
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %11, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32*, i32** %p, align 8
  %19 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %18, %19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %21 = load i32*, i32** %p, align 8
  %22 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %22, i32 0, i32 5
  %23 = load i32*, i32** %phase, align 8
  call void @print_expanded_cube(%struct._IO_FILE* %20, i32* %21, i32* %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F7 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %24, i32 0, i32 0
  %25 = load %struct.set_family*, %struct.set_family** %F7, align 8
  %wsize8 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 0
  %26 = load i32, i32* %wsize8, align 4
  %27 = load i32*, i32** %p, align 8
  %idx.ext9 = sext i32 %26 to i64
  %add.ptr10 = getelementptr inbounds i32, i32* %27, i64 %idx.ext9
  store i32* %add.ptr10, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @pls_group(%struct.PLA_t* %PLA, %struct._IO_FILE* %fp) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %var = alloca i32, align 4
  %i = alloca i32, align 4
  %col = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0))
  store i32 6, i32* %col, align 4
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %entry
  %1 = load i32, i32* %var, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub = sub nsw i32 %2, 1
  %cmp = icmp slt i32 %1, %sub
  br i1 %cmp, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  %4 = load i32, i32* %col, align 4
  %add = add nsw i32 %4, 2
  store i32 %add, i32* %col, align 4
  %5 = load i32, i32* %var, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  store i32 %7, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %var, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 %idxprom3
  %11 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp sle i32 %8, %11
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.2
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %13, i32 0, i32 7
  %14 = load i8**, i8*** %label, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %14, i64 %idxprom7
  %15 = load i8*, i8** %arrayidx8, align 8
  %call9 = call i64 @strlen(i8* %15) #4
  %conv = trunc i64 %call9 to i32
  store i32 %conv, i32* %len, align 4
  %16 = load i32, i32* %col, align 4
  %17 = load i32, i32* %len, align 4
  %add10 = add nsw i32 %16, %17
  %cmp11 = icmp sgt i32 %add10, 75
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.6
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0))
  store i32 0, i32* %col, align 4
  br label %if.end.19

if.else:                                          ; preds = %for.body.6
  %19 = load i32, i32* %i, align 4
  %cmp14 = icmp ne i32 %19, 0
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.else
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call17 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %20)
  %21 = load i32, i32* %col, align 4
  %add18 = add nsw i32 %21, 1
  store i32 %add18, i32* %col, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %23 to i64
  %24 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label21 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %24, i32 0, i32 7
  %25 = load i8**, i8*** %label21, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %25, i64 %idxprom20
  %26 = load i8*, i8** %arrayidx22, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* %26)
  %27 = load i32, i32* %len, align 4
  %28 = load i32, i32* %col, align 4
  %add24 = add nsw i32 %28, %27
  store i32 %add24, i32* %col, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0))
  %31 = load i32, i32* %col, align 4
  %add26 = add nsw i32 %31, 1
  store i32 %add26, i32* %col, align 4
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end
  %32 = load i32, i32* %var, align 4
  %inc28 = add nsw i32 %32, 1
  store i32 %inc28, i32* %var, align 4
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define void @pls_label(%struct.PLA_t* %PLA, %struct._IO_FILE* %fp) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %var = alloca i32, align 4
  %i = alloca i32, align 4
  %col = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0))
  store i32 6, i32* %col, align 4
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %1 = load i32, i32* %var, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %var, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %var, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom2
  %9 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp sle i32 %6, %9
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.1
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %11, i32 0, i32 7
  %12 = load i8**, i8*** %label, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %12, i64 %idxprom6
  %13 = load i8*, i8** %arrayidx7, align 8
  %call8 = call i64 @strlen(i8* %13) #4
  %conv = trunc i64 %call8 to i32
  store i32 %conv, i32* %len, align 4
  %14 = load i32, i32* %col, align 4
  %15 = load i32, i32* %len, align 4
  %add = add nsw i32 %14, %15
  %cmp9 = icmp sgt i32 %add, 75
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.5
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0))
  store i32 0, i32* %col, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.5
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call12 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %17)
  %18 = load i32, i32* %col, align 4
  %add13 = add nsw i32 %18, 1
  store i32 %add13, i32* %col, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label15 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %21, i32 0, i32 7
  %22 = load i8**, i8*** %label15, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %22, i64 %idxprom14
  %23 = load i8*, i8** %arrayidx16, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* %23)
  %24 = load i32, i32* %len, align 4
  %25 = load i32, i32* %col, align 4
  %add18 = add nsw i32 %25, %24
  store i32 %add18, i32* %col, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %27 = load i32, i32* %var, align 4
  %inc20 = add nsw i32 %27, 1
  store i32 %inc20, i32* %var, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @eqn_output(%struct.PLA_t* %PLA) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %i = alloca i32, align 4
  %var = alloca i32, align 4
  %col = alloca i32, align 4
  %len = alloca i32, align 4
  %x = alloca i32, align 4
  %firstand = alloca i32, align 4
  %firstor = alloca i32, align 4
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 17), align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call = call i32 @makeup_labels(%struct.PLA_t* %2)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.102, %if.end.3
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %cmp4 = icmp slt i32 %3, %6
  br i1 %cmp4, label %for.body, label %for.end.104

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %8, i64 %idxprom5
  %9 = load i32, i32* %arrayidx6, align 4
  %10 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, %10
  %idxprom7 = sext i32 %add to i64
  %11 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %11, i32 0, i32 7
  %12 = load i8**, i8*** %label, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %12, i64 %idxprom7
  %13 = load i8*, i8** %arrayidx8, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* %13)
  %14 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %15, i64 %idxprom10
  %16 = load i32, i32* %arrayidx11, align 4
  %17 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %16, %17
  %idxprom13 = sext i32 %add12 to i64
  %18 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label14 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %18, i32 0, i32 7
  %19 = load i8**, i8*** %label14, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %19, i64 %idxprom13
  %20 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i64 @strlen(i8* %20) #4
  %add17 = add i64 %call16, 3
  %conv = trunc i64 %add17 to i32
  store i32 %conv, i32* %col, align 4
  store i32 1, i32* %firstor, align 4
  %21 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %21, i32 0, i32 0
  %22 = load %struct.set_family*, %struct.set_family** %F, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i32 0, i32 5
  %23 = load i32*, i32** %data, align 8
  store i32* %23, i32** %p, align 8
  %24 = load i32*, i32** %p, align 8
  %25 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F18 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %25, i32 0, i32 0
  %26 = load %struct.set_family*, %struct.set_family** %F18, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %26, i32 0, i32 3
  %27 = load i32, i32* %count, align 4
  %28 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F19 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %28, i32 0, i32 0
  %29 = load %struct.set_family*, %struct.set_family** %F19, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %29, i32 0, i32 0
  %30 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %27, %30
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %24, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.95, %for.body
  %31 = load i32*, i32** %p, align 8
  %32 = load i32*, i32** %last, align 8
  %cmp21 = icmp ult i32* %31, %32
  br i1 %cmp21, label %for.body.23, label %for.end.100

for.body.23:                                      ; preds = %for.cond.20
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom24 = sext i32 %34 to i64
  %35 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %35, i64 %idxprom24
  %36 = load i32, i32* %arrayidx25, align 4
  %add26 = add nsw i32 %33, %36
  %shr = ashr i32 %add26, 5
  %add27 = add nsw i32 %shr, 1
  %idxprom28 = sext i32 %add27 to i64
  %37 = load i32*, i32** %p, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %37, i64 %idxprom28
  %38 = load i32, i32* %arrayidx29, align 4
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom30 = sext i32 %40 to i64
  %41 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %41, i64 %idxprom30
  %42 = load i32, i32* %arrayidx31, align 4
  %add32 = add nsw i32 %39, %42
  %and = and i32 %add32, 31
  %shl = shl i32 1, %and
  %and33 = and i32 %38, %shl
  %tobool = icmp ne i32 %and33, 0
  br i1 %tobool, label %if.then.34, label %if.end.94

if.then.34:                                       ; preds = %for.body.23
  %43 = load i32, i32* %firstor, align 4
  %tobool35 = icmp ne i32 %43, 0
  br i1 %tobool35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.then.34
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0))
  %44 = load i32, i32* %col, align 4
  %add38 = add nsw i32 %44, 1
  store i32 %add38, i32* %col, align 4
  br label %if.end.41

if.else:                                          ; preds = %if.then.34
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0))
  %45 = load i32, i32* %col, align 4
  %add40 = add nsw i32 %45, 4
  store i32 %add40, i32* %col, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.then.36
  store i32 0, i32* %firstor, align 4
  store i32 1, i32* %firstand, align 4
  store i32 0, i32* %var, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc, %if.end.41
  %46 = load i32, i32* %var, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp43 = icmp slt i32 %46, %47
  br i1 %cmp43, label %for.body.45, label %for.end

for.body.45:                                      ; preds = %for.cond.42
  %48 = load i32, i32* %var, align 4
  %mul46 = mul nsw i32 2, %48
  %shr47 = ashr i32 %mul46, 5
  %add48 = add nsw i32 %shr47, 1
  %idxprom49 = sext i32 %add48 to i64
  %49 = load i32*, i32** %p, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %49, i64 %idxprom49
  %50 = load i32, i32* %arrayidx50, align 4
  %51 = load i32, i32* %var, align 4
  %mul51 = mul nsw i32 2, %51
  %and52 = and i32 %mul51, 31
  %shr53 = lshr i32 %50, %and52
  %and54 = and i32 %shr53, 3
  store i32 %and54, i32* %x, align 4
  %cmp55 = icmp ne i32 %and54, 3
  br i1 %cmp55, label %if.then.57, label %if.end.91

if.then.57:                                       ; preds = %for.body.45
  %52 = load i32, i32* %var, align 4
  %idxprom58 = sext i32 %52 to i64
  %53 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %53, i64 %idxprom58
  %54 = load i32, i32* %arrayidx59, align 4
  %add60 = add nsw i32 %54, 1
  %idxprom61 = sext i32 %add60 to i64
  %55 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label62 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %55, i32 0, i32 7
  %56 = load i8**, i8*** %label62, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %56, i64 %idxprom61
  %57 = load i8*, i8** %arrayidx63, align 8
  %call64 = call i64 @strlen(i8* %57) #4
  %conv65 = trunc i64 %call64 to i32
  store i32 %conv65, i32* %len, align 4
  %58 = load i32, i32* %col, align 4
  %59 = load i32, i32* %len, align 4
  %add66 = add nsw i32 %58, %59
  %cmp67 = icmp sgt i32 %add66, 72
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.then.57
  %call70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0))
  store i32 4, i32* %col, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.then.57
  %60 = load i32, i32* %firstand, align 4
  %tobool72 = icmp ne i32 %60, 0
  br i1 %tobool72, label %if.end.76, label %if.then.73

if.then.73:                                       ; preds = %if.end.71
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  %61 = load i32, i32* %col, align 4
  %add75 = add nsw i32 %61, 1
  store i32 %add75, i32* %col, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %if.end.71
  store i32 0, i32* %firstand, align 4
  %62 = load i32, i32* %x, align 4
  %cmp77 = icmp eq i32 %62, 1
  br i1 %cmp77, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %if.end.76
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0))
  %63 = load i32, i32* %col, align 4
  %add81 = add nsw i32 %63, 1
  store i32 %add81, i32* %col, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %if.end.76
  %64 = load i32, i32* %var, align 4
  %idxprom83 = sext i32 %64 to i64
  %65 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %65, i64 %idxprom83
  %66 = load i32, i32* %arrayidx84, align 4
  %add85 = add nsw i32 %66, 1
  %idxprom86 = sext i32 %add85 to i64
  %67 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label87 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %67, i32 0, i32 7
  %68 = load i8**, i8*** %label87, align 8
  %arrayidx88 = getelementptr inbounds i8*, i8** %68, i64 %idxprom86
  %69 = load i8*, i8** %arrayidx88, align 8
  %call89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* %69)
  %70 = load i32, i32* %len, align 4
  %71 = load i32, i32* %col, align 4
  %add90 = add nsw i32 %71, %70
  store i32 %add90, i32* %col, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.82, %for.body.45
  br label %for.inc

for.inc:                                          ; preds = %if.end.91
  %72 = load i32, i32* %var, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %var, align 4
  br label %for.cond.42

for.end:                                          ; preds = %for.cond.42
  %call92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0))
  %73 = load i32, i32* %col, align 4
  %add93 = add nsw i32 %73, 1
  store i32 %add93, i32* %col, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %for.end, %for.body.23
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94
  %74 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F96 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %74, i32 0, i32 0
  %75 = load %struct.set_family*, %struct.set_family** %F96, align 8
  %wsize97 = getelementptr inbounds %struct.set_family, %struct.set_family* %75, i32 0, i32 0
  %76 = load i32, i32* %wsize97, align 4
  %77 = load i32*, i32** %p, align 8
  %idx.ext98 = sext i32 %76 to i64
  %add.ptr99 = getelementptr inbounds i32, i32* %77, i64 %idx.ext98
  store i32* %add.ptr99, i32** %p, align 8
  br label %for.cond.20

for.end.100:                                      ; preds = %for.cond.20
  %call101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0))
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.end.100
  %78 = load i32, i32* %i, align 4
  %inc103 = add nsw i32 %78, 1
  store i32 %inc103, i32* %i, align 4
  br label %for.cond

for.end.104:                                      ; preds = %for.cond
  ret void
}

declare void @fatal(...) #1

; Function Attrs: nounwind uwtable
define i8* @fmt_cube(i32* %c, i8* %out_map, i8* %s) #0 {
entry:
  %c.addr = alloca i32*, align 8
  %out_map.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %var = alloca i32, align 4
  %last = alloca i32, align 4
  %len = alloca i32, align 4
  store i32* %c, i32** %c.addr, align 8
  store i8* %out_map, i8** %out_map.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %len, align 4
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %var, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %var, align 4
  %mul = mul nsw i32 2, %2
  %shr = ashr i32 %mul, 5
  %add = add nsw i32 %shr, 1
  %idxprom = sext i32 %add to i64
  %3 = load i32*, i32** %c.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %var, align 4
  %mul1 = mul nsw i32 2, %5
  %and = and i32 %mul1, 31
  %shr2 = lshr i32 %4, %and
  %and3 = and i32 %shr2, 3
  %idxprom4 = zext i32 %and3 to i64
  %arrayidx5 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.34, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %7 = load i32, i32* %len, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %len, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load i8*, i8** %s.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 %idxprom6
  store i8 %6, i8* %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %var, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %10, i32* %var, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.37, %for.end
  %11 = load i32, i32* %var, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub = sub nsw i32 %12, 1
  %cmp10 = icmp slt i32 %11, %sub
  br i1 %cmp10, label %for.body.11, label %for.end.39

for.body.11:                                      ; preds = %for.cond.9
  %13 = load i32, i32* %len, align 4
  %inc12 = add nsw i32 %13, 1
  store i32 %inc12, i32* %len, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load i8*, i8** %s.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 %idxprom13
  store i8 32, i8* %arrayidx14, align 1
  %15 = load i32, i32* %var, align 4
  %idxprom15 = sext i32 %15 to i64
  %16 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %16, i64 %idxprom15
  %17 = load i32, i32* %arrayidx16, align 4
  store i32 %17, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.34, %for.body.11
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %var, align 4
  %idxprom18 = sext i32 %19 to i64
  %20 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %20, i64 %idxprom18
  %21 = load i32, i32* %arrayidx19, align 4
  %cmp20 = icmp sle i32 %18, %21
  br i1 %cmp20, label %for.body.21, label %for.end.36

for.body.21:                                      ; preds = %for.cond.17
  %22 = load i32, i32* %i, align 4
  %shr22 = ashr i32 %22, 5
  %add23 = add nsw i32 %shr22, 1
  %idxprom24 = sext i32 %add23 to i64
  %23 = load i32*, i32** %c.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %23, i64 %idxprom24
  %24 = load i32, i32* %arrayidx25, align 4
  %25 = load i32, i32* %i, align 4
  %and26 = and i32 %25, 31
  %shl = shl i32 1, %and26
  %and27 = and i32 %24, %shl
  %cmp28 = icmp ne i32 %and27, 0
  %conv = zext i1 %cmp28 to i32
  %idxprom29 = sext i32 %conv to i64
  %arrayidx30 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.1, i32 0, i64 %idxprom29
  %26 = load i8, i8* %arrayidx30, align 1
  %27 = load i32, i32* %len, align 4
  %inc31 = add nsw i32 %27, 1
  store i32 %inc31, i32* %len, align 4
  %idxprom32 = sext i32 %27 to i64
  %28 = load i8*, i8** %s.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %28, i64 %idxprom32
  store i8 %26, i8* %arrayidx33, align 1
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.21
  %29 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %29, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.17

for.end.36:                                       ; preds = %for.cond.17
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.36
  %30 = load i32, i32* %var, align 4
  %inc38 = add nsw i32 %30, 1
  store i32 %inc38, i32* %var, align 4
  br label %for.cond.9

for.end.39:                                       ; preds = %for.cond.9
  %31 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %cmp40 = icmp ne i32 %31, -1
  br i1 %cmp40, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.39
  %32 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom42 = sext i32 %32 to i64
  %33 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %33, i64 %idxprom42
  %34 = load i32, i32* %arrayidx43, align 4
  store i32 %34, i32* %last, align 4
  %35 = load i32, i32* %len, align 4
  %inc44 = add nsw i32 %35, 1
  store i32 %inc44, i32* %len, align 4
  %idxprom45 = sext i32 %35 to i64
  %36 = load i8*, i8** %s.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %36, i64 %idxprom45
  store i8 32, i8* %arrayidx46, align 1
  %37 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom47 = sext i32 %37 to i64
  %38 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %38, i64 %idxprom47
  %39 = load i32, i32* %arrayidx48, align 4
  store i32 %39, i32* %i, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.67, %if.then
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %last, align 4
  %cmp50 = icmp sle i32 %40, %41
  br i1 %cmp50, label %for.body.52, label %for.end.69

for.body.52:                                      ; preds = %for.cond.49
  %42 = load i32, i32* %i, align 4
  %shr53 = ashr i32 %42, 5
  %add54 = add nsw i32 %shr53, 1
  %idxprom55 = sext i32 %add54 to i64
  %43 = load i32*, i32** %c.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %43, i64 %idxprom55
  %44 = load i32, i32* %arrayidx56, align 4
  %45 = load i32, i32* %i, align 4
  %and57 = and i32 %45, 31
  %shl58 = shl i32 1, %and57
  %and59 = and i32 %44, %shl58
  %cmp60 = icmp ne i32 %and59, 0
  %conv61 = zext i1 %cmp60 to i32
  %idxprom62 = sext i32 %conv61 to i64
  %46 = load i8*, i8** %out_map.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %46, i64 %idxprom62
  %47 = load i8, i8* %arrayidx63, align 1
  %48 = load i32, i32* %len, align 4
  %inc64 = add nsw i32 %48, 1
  store i32 %inc64, i32* %len, align 4
  %idxprom65 = sext i32 %48 to i64
  %49 = load i8*, i8** %s.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %49, i64 %idxprom65
  store i8 %47, i8* %arrayidx66, align 1
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.52
  %50 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %50, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond.49

for.end.69:                                       ; preds = %for.cond.49
  br label %if.end

if.end:                                           ; preds = %for.end.69, %for.end.39
  %51 = load i32, i32* %len, align 4
  %idxprom70 = sext i32 %51 to i64
  %52 = load i8*, i8** %s.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %52, i64 %idxprom70
  store i8 0, i8* %arrayidx71, align 1
  %53 = load i8*, i8** %s.addr, align 8
  ret i8* %53
}

; Function Attrs: nounwind uwtable
define void @print_cube(%struct._IO_FILE* %fp, i32* %c, i8* %out_map) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %c.addr = alloca i32*, align 8
  %out_map.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %var = alloca i32, align 4
  %ch = alloca i32, align 4
  %last = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  store i8* %out_map, i8** %out_map.addr, align 8
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %var, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %var, align 4
  %mul = mul nsw i32 2, %2
  %shr = ashr i32 %mul, 5
  %add = add nsw i32 %shr, 1
  %idxprom = sext i32 %add to i64
  %3 = load i32*, i32** %c.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %var, align 4
  %mul1 = mul nsw i32 2, %5
  %and = and i32 %mul1, 31
  %shr2 = lshr i32 %4, %and
  %and3 = and i32 %shr2, 3
  %idxprom4 = zext i32 %and3 to i64
  %arrayidx5 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.34, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %6 to i32
  store i32 %conv, i32* %ch, align 4
  %7 = load i32, i32* %ch, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_putc(i32 %7, %struct._IO_FILE* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %var, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %10, i32* %var, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.34, %for.end
  %11 = load i32, i32* %var, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub = sub nsw i32 %12, 1
  %cmp7 = icmp slt i32 %11, %sub
  br i1 %cmp7, label %for.body.9, label %for.end.36

for.body.9:                                       ; preds = %for.cond.6
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call10 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %13)
  %14 = load i32, i32* %var, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %15, i64 %idxprom11
  %16 = load i32, i32* %arrayidx12, align 4
  store i32 %16, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.31, %for.body.9
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %var, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %19, i64 %idxprom14
  %20 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp sle i32 %17, %20
  br i1 %cmp16, label %for.body.18, label %for.end.33

for.body.18:                                      ; preds = %for.cond.13
  %21 = load i32, i32* %i, align 4
  %shr19 = ashr i32 %21, 5
  %add20 = add nsw i32 %shr19, 1
  %idxprom21 = sext i32 %add20 to i64
  %22 = load i32*, i32** %c.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %22, i64 %idxprom21
  %23 = load i32, i32* %arrayidx22, align 4
  %24 = load i32, i32* %i, align 4
  %and23 = and i32 %24, 31
  %shl = shl i32 1, %and23
  %and24 = and i32 %23, %shl
  %cmp25 = icmp ne i32 %and24, 0
  %conv26 = zext i1 %cmp25 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.1, i32 0, i64 %idxprom27
  %25 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %25 to i32
  store i32 %conv29, i32* %ch, align 4
  %26 = load i32, i32* %ch, align 4
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call30 = call i32 @_IO_putc(i32 %26, %struct._IO_FILE* %27)
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.18
  %28 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %28, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond.13

for.end.33:                                       ; preds = %for.cond.13
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end.33
  %29 = load i32, i32* %var, align 4
  %inc35 = add nsw i32 %29, 1
  store i32 %inc35, i32* %var, align 4
  br label %for.cond.6

for.end.36:                                       ; preds = %for.cond.6
  %30 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %cmp37 = icmp ne i32 %30, -1
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.36
  %31 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom39 = sext i32 %31 to i64
  %32 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %32, i64 %idxprom39
  %33 = load i32, i32* %arrayidx40, align 4
  store i32 %33, i32* %last, align 4
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call41 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %34)
  %35 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom42 = sext i32 %35 to i64
  %36 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %36, i64 %idxprom42
  %37 = load i32, i32* %arrayidx43, align 4
  store i32 %37, i32* %i, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.61, %if.then
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %last, align 4
  %cmp45 = icmp sle i32 %38, %39
  br i1 %cmp45, label %for.body.47, label %for.end.63

for.body.47:                                      ; preds = %for.cond.44
  %40 = load i32, i32* %i, align 4
  %shr48 = ashr i32 %40, 5
  %add49 = add nsw i32 %shr48, 1
  %idxprom50 = sext i32 %add49 to i64
  %41 = load i32*, i32** %c.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %41, i64 %idxprom50
  %42 = load i32, i32* %arrayidx51, align 4
  %43 = load i32, i32* %i, align 4
  %and52 = and i32 %43, 31
  %shl53 = shl i32 1, %and52
  %and54 = and i32 %42, %shl53
  %cmp55 = icmp ne i32 %and54, 0
  %conv56 = zext i1 %cmp55 to i32
  %idxprom57 = sext i32 %conv56 to i64
  %44 = load i8*, i8** %out_map.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %44, i64 %idxprom57
  %45 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %45 to i32
  store i32 %conv59, i32* %ch, align 4
  %46 = load i32, i32* %ch, align 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call60 = call i32 @_IO_putc(i32 %46, %struct._IO_FILE* %47)
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.body.47
  %48 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %48, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond.44

for.end.63:                                       ; preds = %for.cond.44
  br label %if.end

if.end:                                           ; preds = %for.end.63, %for.end.36
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call64 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %49)
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_expanded_cube(%struct._IO_FILE* %fp, i32* %c, i32* %phase) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %c.addr = alloca i32*, align 8
  %phase.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %var = alloca i32, align 4
  %ch = alloca i32, align 4
  %out_map = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  store i32* %phase, i32** %phase.addr, align 8
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %0 = load i32, i32* %var, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %var, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %var, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp sle i32 %5, %8
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.1
  %9 = load i32, i32* %i, align 4
  %shr = ashr i32 %9, 5
  %add = add nsw i32 %shr, 1
  %idxprom6 = sext i32 %add to i64
  %10 = load i32*, i32** %c.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  %12 = load i32, i32* %i, align 4
  %and = and i32 %12, 31
  %shl = shl i32 1, %and
  %and8 = and i32 %11, %shl
  %cmp9 = icmp ne i32 %and8, 0
  %conv = zext i1 %cmp9 to i32
  %idxprom10 = sext i32 %conv to i64
  %arrayidx11 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.3, i32 0, i64 %idxprom10
  %13 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %13 to i32
  store i32 %conv12, i32* %ch, align 4
  %14 = load i32, i32* %ch, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_putc(i32 %14, %struct._IO_FILE* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %17 = load i32, i32* %var, align 4
  %inc14 = add nsw i32 %17, 1
  store i32 %inc14, i32* %var, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  %18 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %18, i32* %var, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.44, %for.end.15
  %19 = load i32, i32* %var, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub = sub nsw i32 %20, 1
  %cmp17 = icmp slt i32 %19, %sub
  br i1 %cmp17, label %for.body.19, label %for.end.46

for.body.19:                                      ; preds = %for.cond.16
  %21 = load i32, i32* %var, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %22, i64 %idxprom20
  %23 = load i32, i32* %arrayidx21, align 4
  store i32 %23, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.41, %for.body.19
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %var, align 4
  %idxprom23 = sext i32 %25 to i64
  %26 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %26, i64 %idxprom23
  %27 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp sle i32 %24, %27
  br i1 %cmp25, label %for.body.27, label %for.end.43

for.body.27:                                      ; preds = %for.cond.22
  %28 = load i32, i32* %i, align 4
  %shr28 = ashr i32 %28, 5
  %add29 = add nsw i32 %shr28, 1
  %idxprom30 = sext i32 %add29 to i64
  %29 = load i32*, i32** %c.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %29, i64 %idxprom30
  %30 = load i32, i32* %arrayidx31, align 4
  %31 = load i32, i32* %i, align 4
  %and32 = and i32 %31, 31
  %shl33 = shl i32 1, %and32
  %and34 = and i32 %30, %shl33
  %cmp35 = icmp ne i32 %and34, 0
  %conv36 = zext i1 %cmp35 to i32
  %idxprom37 = sext i32 %conv36 to i64
  %arrayidx38 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.35, i32 0, i64 %idxprom37
  %32 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %32 to i32
  store i32 %conv39, i32* %ch, align 4
  %33 = load i32, i32* %ch, align 4
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call40 = call i32 @_IO_putc(i32 %33, %struct._IO_FILE* %34)
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.27
  %35 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %35, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond.22

for.end.43:                                       ; preds = %for.cond.22
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end.43
  %36 = load i32, i32* %var, align 4
  %inc45 = add nsw i32 %36, 1
  store i32 %inc45, i32* %var, align 4
  br label %for.cond.16

for.end.46:                                       ; preds = %for.cond.16
  %37 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %cmp47 = icmp ne i32 %37, -1
  br i1 %cmp47, label %if.then, label %if.end.85

if.then:                                          ; preds = %for.end.46
  %38 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub49 = sub nsw i32 %38, 1
  store i32 %sub49, i32* %var, align 4
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call50 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %39)
  %40 = load i32, i32* %var, align 4
  %idxprom51 = sext i32 %40 to i64
  %41 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %41, i64 %idxprom51
  %42 = load i32, i32* %arrayidx52, align 4
  store i32 %42, i32* %i, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.82, %if.then
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %var, align 4
  %idxprom54 = sext i32 %44 to i64
  %45 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %45, i64 %idxprom54
  %46 = load i32, i32* %arrayidx55, align 4
  %cmp56 = icmp sle i32 %43, %46
  br i1 %cmp56, label %for.body.58, label %for.end.84

for.body.58:                                      ; preds = %for.cond.53
  %47 = load i32*, i32** %phase.addr, align 8
  %cmp59 = icmp eq i32* %47, null
  br i1 %cmp59, label %if.then.68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.58
  %48 = load i32, i32* %i, align 4
  %shr61 = ashr i32 %48, 5
  %add62 = add nsw i32 %shr61, 1
  %idxprom63 = sext i32 %add62 to i64
  %49 = load i32*, i32** %phase.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %49, i64 %idxprom63
  %50 = load i32, i32* %arrayidx64, align 4
  %51 = load i32, i32* %i, align 4
  %and65 = and i32 %51, 31
  %shl66 = shl i32 1, %and65
  %and67 = and i32 %50, %shl66
  %tobool = icmp ne i32 %and67, 0
  br i1 %tobool, label %if.then.68, label %if.else

if.then.68:                                       ; preds = %lor.lhs.false, %for.body.58
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8** %out_map, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8** %out_map, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.68
  %52 = load i32, i32* %i, align 4
  %shr69 = ashr i32 %52, 5
  %add70 = add nsw i32 %shr69, 1
  %idxprom71 = sext i32 %add70 to i64
  %53 = load i32*, i32** %c.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %53, i64 %idxprom71
  %54 = load i32, i32* %arrayidx72, align 4
  %55 = load i32, i32* %i, align 4
  %and73 = and i32 %55, 31
  %shl74 = shl i32 1, %and73
  %and75 = and i32 %54, %shl74
  %cmp76 = icmp ne i32 %and75, 0
  %conv77 = zext i1 %cmp76 to i32
  %idxprom78 = sext i32 %conv77 to i64
  %56 = load i8*, i8** %out_map, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %56, i64 %idxprom78
  %57 = load i8, i8* %arrayidx79, align 1
  %conv80 = sext i8 %57 to i32
  store i32 %conv80, i32* %ch, align 4
  %58 = load i32, i32* %ch, align 4
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call81 = call i32 @_IO_putc(i32 %58, %struct._IO_FILE* %59)
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end
  %60 = load i32, i32* %i, align 4
  %inc83 = add nsw i32 %60, 1
  store i32 %inc83, i32* %i, align 4
  br label %for.cond.53

for.end.84:                                       ; preds = %for.cond.53
  br label %if.end.85

if.end.85:                                        ; preds = %for.end.84, %for.end.46
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call86 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %61)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @pc1(i32* %c) #0 {
entry:
  %c.addr = alloca i32*, align 8
  store i32* %c, i32** %c.addr, align 8
  %0 = load i32*, i32** %c.addr, align 8
  %call = call i8* @fmt_cube(i32* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @pc1.s1, i32 0, i32 0))
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @pc2(i32* %c) #0 {
entry:
  %c.addr = alloca i32*, align 8
  store i32* %c, i32** %c.addr, align 8
  %0 = load i32*, i32** %c.addr, align 8
  %call = call i8* @fmt_cube(i32* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @pc2.s2, i32 0, i32 0))
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @debug_print(i32** %T, i8* %name, i32 %level) #0 {
entry:
  %T.addr = alloca i32**, align 8
  %name.addr = alloca i8*, align 8
  %level.addr = alloca i32, align 4
  %T1 = alloca i32**, align 8
  %p = alloca i32*, align 8
  %temp = alloca i32*, align 8
  %cnt = alloca i32, align 4
  store i32** %T, i32*** %T.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load i32**, i32*** %T.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 1
  %1 = load i32*, i32** %arrayidx, align 8
  %2 = bitcast i32* %1 to i32**
  %3 = load i32**, i32*** %T.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32** %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i32** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub nsw i64 %sub.ptr.div, 3
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %cnt, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp = icmp sle i32 %4, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub2 = sub nsw i32 %5, 1
  %shr = ashr i32 %sub2, 5
  %add = add nsw i32 %shr, 1
  %add3 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add3, %cond.false ]
  %conv4 = sext i32 %cond to i64
  %mul = mul i64 4, %conv4
  %call = call i8* @malloc(i64 %mul)
  %6 = bitcast i8* %call to i32*
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call5 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %6, i32 %7)
  store i32* %call5, i32** %temp, align 8
  %8 = load i32, i32* @verbose_debug, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %9 = load i32, i32* %level.addr, align 4
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end
  %10 = load i8*, i8** %name.addr, align 8
  %11 = load i32, i32* %level.addr, align 4
  %12 = load i32, i32* %cnt, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0), i8* %10, i32 %11, i32 %12)
  %13 = load i32, i32* @verbose_debug, align 4
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.then.11, label %if.end.21

if.then.11:                                       ; preds = %if.end
  %14 = load i32**, i32*** %T.addr, align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %14, i64 0
  %15 = load i32*, i32** %arrayidx12, align 8
  %call13 = call i8* @pc1(i32* %15)
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i8* %call13)
  %16 = load i32**, i32*** %T.addr, align 8
  %add.ptr = getelementptr inbounds i32*, i32** %16, i64 2
  store i32** %add.ptr, i32*** %T1, align 8
  store i32 1, i32* %cnt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %17 = load i32**, i32*** %T1, align 8
  %incdec.ptr = getelementptr inbounds i32*, i32** %17, i32 1
  store i32** %incdec.ptr, i32*** %T1, align 8
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %p, align 8
  %cmp15 = icmp ne i32* %18, null
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %cnt, align 4
  %20 = load i32*, i32** %temp, align 8
  %21 = load i32*, i32** %p, align 8
  %22 = load i32**, i32*** %T.addr, align 8
  %arrayidx17 = getelementptr inbounds i32*, i32** %22, i64 0
  %23 = load i32*, i32** %arrayidx17, align 8
  %call18 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %20, i32* %21, i32* %23)
  %call19 = call i8* @pc1(i32* %call18)
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %19, i8* %call19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %cnt, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.21

if.end.21:                                        ; preds = %for.end, %if.end
  %25 = load i32*, i32** %temp, align 8
  %tobool22 = icmp ne i32* %25, null
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  %26 = load i32*, i32** %temp, align 8
  %27 = bitcast i32* %26 to i8*
  call void @free(i8* %27)
  store i32* null, i32** %temp, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.21
  ret void
}

declare i32* @set_clear(...) #1

declare i8* @malloc(i64) #1

declare i32* @set_or(...) #1

declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @debug1_print(%struct.set_family* %T, i8* %name, i32 %num) #0 {
entry:
  %T.addr = alloca %struct.set_family*, align 8
  %name.addr = alloca i8*, align 8
  %num.addr = alloca i32, align 4
  %cnt = alloca i32, align 4
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32 1, i32* %cnt, align 4
  %0 = load i32, i32* @verbose_debug, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %num.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i32, i32* %num.addr, align 4
  %4 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 3
  %5 = load i32, i32* %count, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0), i8* %2, i32 %3, i32 %5)
  %6 = load i32, i32* @verbose_debug, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end.11

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 5
  %8 = load i32*, i32** %data, align 8
  store i32* %8, i32** %p, align 8
  %9 = load i32*, i32** %p, align 8
  %10 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count4 = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 3
  %11 = load i32, i32* %count4, align 4
  %12 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 0
  %13 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %11, %13
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %9, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %14 = load i32*, i32** %p, align 8
  %15 = load i32*, i32** %last, align 8
  %cmp5 = icmp ult i32* %14, %15
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %cnt, align 4
  %17 = load i32*, i32** %p, align 8
  %call6 = call i8* @pc1(i32* %17)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %16, i8* %call6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize8 = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 0
  %19 = load i32, i32* %wsize8, align 4
  %20 = load i32*, i32** %p, align 8
  %idx.ext9 = sext i32 %19 to i64
  %add.ptr10 = getelementptr inbounds i32, i32* %20, i64 %idx.ext9
  store i32* %add.ptr10, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.11

if.end.11:                                        ; preds = %for.end, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @cprint(%struct.set_family* %T) #0 {
entry:
  %T.addr = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
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
  %call = call i8* @pc1(i32* %9)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8* %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize2 = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 0
  %11 = load i32, i32* %wsize2, align 4
  %12 = load i32*, i32** %p, align 8
  %idx.ext3 = sext i32 %11 to i64
  %add.ptr4 = getelementptr inbounds i32, i32* %12, i64 %idx.ext3
  store i32* %add.ptr4, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @makeup_labels(%struct.PLA_t* %PLA) #0 {
entry:
  %retval = alloca i32, align 4
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %var = alloca i32, align 4
  %i = alloca i32, align 4
  %ind = alloca i32, align 4
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  %0 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %0, i32 0, i32 7
  %1 = load i8**, i8*** %label, align 8
  %cmp = icmp eq i8** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call = call i32 (%struct.PLA_t*, ...) bitcast (i32 (...)* @PLA_labels to i32 (%struct.PLA_t*, ...)*)(%struct.PLA_t* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %if.end
  %3 = load i32, i32* %var, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %var, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp slt i32 %5, %8
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %9 = load i32, i32* %var, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %10, i64 %idxprom5
  %11 = load i32, i32* %arrayidx6, align 4
  %12 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, %12
  store i32 %add, i32* %ind, align 4
  %13 = load i32, i32* %ind, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label8 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %14, i32 0, i32 7
  %15 = load i8**, i8*** %label8, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %15, i64 %idxprom7
  %16 = load i8*, i8** %arrayidx9, align 8
  %cmp10 = icmp eq i8* %16, null
  br i1 %cmp10, label %if.then.11, label %if.end.35

if.then.11:                                       ; preds = %for.body.4
  %call12 = call i8* @malloc(i64 15)
  %17 = load i32, i32* %ind, align 4
  %idxprom13 = sext i32 %17 to i64
  %18 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label14 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %18, i32 0, i32 7
  %19 = load i8**, i8*** %label14, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %19, i64 %idxprom13
  store i8* %call12, i8** %arrayidx15, align 8
  %20 = load i32, i32* %var, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp16 = icmp slt i32 %20, %21
  br i1 %cmp16, label %if.then.17, label %if.else.29

if.then.17:                                       ; preds = %if.then.11
  %22 = load i32, i32* %i, align 4
  %rem = srem i32 %22, 2
  %cmp18 = icmp eq i32 %rem, 0
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.17
  %23 = load i32, i32* %ind, align 4
  %idxprom20 = sext i32 %23 to i64
  %24 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label21 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %24, i32 0, i32 7
  %25 = load i8**, i8*** %label21, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %25, i64 %idxprom20
  %26 = load i8*, i8** %arrayidx22, align 8
  %27 = load i32, i32* %var, align 4
  %call23 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 %27) #5
  br label %if.end.28

if.else:                                          ; preds = %if.then.17
  %28 = load i32, i32* %ind, align 4
  %idxprom24 = sext i32 %28 to i64
  %29 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label25 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %29, i32 0, i32 7
  %30 = load i8**, i8*** %label25, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %30, i64 %idxprom24
  %31 = load i8*, i8** %arrayidx26, align 8
  %32 = load i32, i32* %var, align 4
  %call27 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i32 %32) #5
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.19
  br label %if.end.34

if.else.29:                                       ; preds = %if.then.11
  %33 = load i32, i32* %ind, align 4
  %idxprom30 = sext i32 %33 to i64
  %34 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label31 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %34, i32 0, i32 7
  %35 = load i8**, i8*** %label31, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %35, i64 %idxprom30
  %36 = load i8*, i8** %arrayidx32, align 8
  %37 = load i32, i32* %var, align 4
  %38 = load i32, i32* %i, align 4
  %call33 = call i32 (i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %37, i32 %38) #5
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.29, %if.end.28
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end
  %40 = load i32, i32* %var, align 4
  %inc37 = add nsw i32 %40, 1
  store i32 %inc37, i32* %var, align 4
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare i32 @PLA_labels(...) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @kiss_output(%struct._IO_FILE* %fp, %struct.PLA_t* %PLA) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  %0 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %0, i32 0, i32 0
  %1 = load %struct.set_family*, %struct.set_family** %F, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i32 0, i32 5
  %2 = load i32*, i32** %data, align 8
  store i32* %2, i32** %p, align 8
  %3 = load i32*, i32** %p, align 8
  %4 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F1 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %4, i32 0, i32 0
  %5 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 3
  %6 = load i32, i32* %count, align 4
  %7 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F2 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %7, i32 0, i32 0
  %8 = load %struct.set_family*, %struct.set_family** %F2, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 0
  %9 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %6, %9
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32*, i32** %p, align 8
  %11 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %13 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %14 = load i32*, i32** %p, align 8
  %call = call i32 @kiss_print_cube(%struct._IO_FILE* %12, %struct.PLA_t* %13, i32* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F3 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %15, i32 0, i32 0
  %16 = load %struct.set_family*, %struct.set_family** %F3, align 8
  %wsize4 = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 0
  %17 = load i32, i32* %wsize4, align 4
  %18 = load i32*, i32** %p, align 8
  %idx.ext5 = sext i32 %17 to i64
  %add.ptr6 = getelementptr inbounds i32, i32* %18, i64 %idx.ext5
  store i32* %add.ptr6, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %19, i32 0, i32 1
  %20 = load %struct.set_family*, %struct.set_family** %D, align 8
  %data7 = getelementptr inbounds %struct.set_family, %struct.set_family* %20, i32 0, i32 5
  %21 = load i32*, i32** %data7, align 8
  store i32* %21, i32** %p, align 8
  %22 = load i32*, i32** %p, align 8
  %23 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D8 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %23, i32 0, i32 1
  %24 = load %struct.set_family*, %struct.set_family** %D8, align 8
  %count9 = getelementptr inbounds %struct.set_family, %struct.set_family* %24, i32 0, i32 3
  %25 = load i32, i32* %count9, align 4
  %26 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D10 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %26, i32 0, i32 1
  %27 = load %struct.set_family*, %struct.set_family** %D10, align 8
  %wsize11 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 0
  %28 = load i32, i32* %wsize11, align 4
  %mul12 = mul nsw i32 %25, %28
  %idx.ext13 = sext i32 %mul12 to i64
  %add.ptr14 = getelementptr inbounds i32, i32* %22, i64 %idx.ext13
  store i32* %add.ptr14, i32** %last, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.19, %for.end
  %29 = load i32*, i32** %p, align 8
  %30 = load i32*, i32** %last, align 8
  %cmp16 = icmp ult i32* %29, %30
  br i1 %cmp16, label %for.body.17, label %for.end.24

for.body.17:                                      ; preds = %for.cond.15
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %32 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %33 = load i32*, i32** %p, align 8
  %call18 = call i32 @kiss_print_cube(%struct._IO_FILE* %31, %struct.PLA_t* %32, i32* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.17
  %34 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D20 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %34, i32 0, i32 1
  %35 = load %struct.set_family*, %struct.set_family** %D20, align 8
  %wsize21 = getelementptr inbounds %struct.set_family, %struct.set_family* %35, i32 0, i32 0
  %36 = load i32, i32* %wsize21, align 4
  %37 = load i32*, i32** %p, align 8
  %idx.ext22 = sext i32 %36 to i64
  %add.ptr23 = getelementptr inbounds i32, i32* %37, i64 %idx.ext22
  store i32* %add.ptr23, i32** %p, align 8
  br label %for.cond.15

for.end.24:                                       ; preds = %for.cond.15
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define i32 @kiss_print_cube(%struct._IO_FILE* %fp, %struct.PLA_t* %PLA, i32* %p, i8* %out_string) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %p.addr = alloca i32*, align 8
  %out_string.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %var = alloca i32, align 4
  %part = alloca i32, align 4
  %x = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32* %p, i32** %p.addr, align 8
  store i8* %out_string, i8** %out_string.addr, align 8
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %var, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %var, align 4
  %mul = mul nsw i32 2, %2
  %shr = ashr i32 %mul, 5
  %add = add nsw i32 %shr, 1
  %idxprom = sext i32 %add to i64
  %3 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %var, align 4
  %mul1 = mul nsw i32 2, %5
  %and = and i32 %mul1, 31
  %shr2 = lshr i32 %4, %and
  %and3 = and i32 %shr2, 3
  %idxprom4 = zext i32 %and3 to i64
  %arrayidx5 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.34, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %6 to i32
  store i32 %conv, i32* %x, align 4
  %7 = load i32, i32* %x, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_putc(i32 %7, %struct._IO_FILE* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %var, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %10, i32* %var, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.48, %for.end
  %11 = load i32, i32* %var, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub = sub nsw i32 %12, 1
  %cmp7 = icmp slt i32 %11, %sub
  br i1 %cmp7, label %for.body.9, label %for.end.50

for.body.9:                                       ; preds = %for.cond.6
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call10 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %13)
  %14 = load i32, i32* %var, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %15, i64 %idxprom11
  %16 = load i32*, i32** %arrayidx12, align 8
  %17 = load i32*, i32** %p.addr, align 8
  %call13 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_implies to i32 (i32*, i32*, ...)*)(i32* %16, i32* %17)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.9
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call14 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %18)
  br label %if.end.47

if.else:                                          ; preds = %for.body.9
  store i32 -1, i32* %part, align 4
  %19 = load i32, i32* %var, align 4
  %idxprom15 = sext i32 %19 to i64
  %20 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %20, i64 %idxprom15
  %21 = load i32, i32* %arrayidx16, align 4
  store i32 %21, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.35, %if.else
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %var, align 4
  %idxprom18 = sext i32 %23 to i64
  %24 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %24, i64 %idxprom18
  %25 = load i32, i32* %arrayidx19, align 4
  %cmp20 = icmp sle i32 %22, %25
  br i1 %cmp20, label %for.body.22, label %for.end.37

for.body.22:                                      ; preds = %for.cond.17
  %26 = load i32, i32* %i, align 4
  %shr23 = ashr i32 %26, 5
  %add24 = add nsw i32 %shr23, 1
  %idxprom25 = sext i32 %add24 to i64
  %27 = load i32*, i32** %p.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %27, i64 %idxprom25
  %28 = load i32, i32* %arrayidx26, align 4
  %29 = load i32, i32* %i, align 4
  %and27 = and i32 %29, 31
  %shl = shl i32 1, %and27
  %and28 = and i32 %28, %shl
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %for.body.22
  %30 = load i32, i32* %part, align 4
  %cmp31 = icmp ne i32 %30, -1
  br i1 %cmp31, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %if.then.30
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.33, %if.then.30
  %31 = load i32, i32* %i, align 4
  store i32 %31, i32* %part, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %for.body.22
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %32 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %32, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.17

for.end.37:                                       ; preds = %for.cond.17
  %33 = load i32, i32* %part, align 4
  %cmp38 = icmp eq i32 %33, -1
  br i1 %cmp38, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %for.end.37
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call41 = call i32 @_IO_putc(i32 126, %struct._IO_FILE* %34)
  br label %if.end.46

if.else.42:                                       ; preds = %for.end.37
  %35 = load i32, i32* %part, align 4
  %idxprom43 = sext i32 %35 to i64
  %36 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %36, i32 0, i32 7
  %37 = load i8**, i8*** %label, align 8
  %arrayidx44 = getelementptr inbounds i8*, i8** %37, i64 %idxprom43
  %38 = load i8*, i8** %arrayidx44, align 8
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call45 = call i32 @fputs(i8* %38, %struct._IO_FILE* %39)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.42, %if.then.40
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %40 = load i32, i32* %var, align 4
  %inc49 = add nsw i32 %40, 1
  store i32 %inc49, i32* %var, align 4
  br label %for.cond.6

for.end.50:                                       ; preds = %for.cond.6
  %41 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  store i32 %41, i32* %var, align 4
  %cmp51 = icmp ne i32 %41, -1
  br i1 %cmp51, label %if.then.53, label %if.end.79

if.then.53:                                       ; preds = %for.end.50
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call54 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %42)
  %43 = load i32, i32* %var, align 4
  %idxprom55 = sext i32 %43 to i64
  %44 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %44, i64 %idxprom55
  %45 = load i32, i32* %arrayidx56, align 4
  store i32 %45, i32* %i, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.76, %if.then.53
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %var, align 4
  %idxprom58 = sext i32 %47 to i64
  %48 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %48, i64 %idxprom58
  %49 = load i32, i32* %arrayidx59, align 4
  %cmp60 = icmp sle i32 %46, %49
  br i1 %cmp60, label %for.body.62, label %for.end.78

for.body.62:                                      ; preds = %for.cond.57
  %50 = load i32, i32* %i, align 4
  %shr63 = ashr i32 %50, 5
  %add64 = add nsw i32 %shr63, 1
  %idxprom65 = sext i32 %add64 to i64
  %51 = load i32*, i32** %p.addr, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %51, i64 %idxprom65
  %52 = load i32, i32* %arrayidx66, align 4
  %53 = load i32, i32* %i, align 4
  %and67 = and i32 %53, 31
  %shl68 = shl i32 1, %and67
  %and69 = and i32 %52, %shl68
  %cmp70 = icmp ne i32 %and69, 0
  %conv71 = zext i1 %cmp70 to i32
  %idxprom72 = sext i32 %conv71 to i64
  %54 = load i8*, i8** %out_string.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %54, i64 %idxprom72
  %55 = load i8, i8* %arrayidx73, align 1
  %conv74 = sext i8 %55 to i32
  store i32 %conv74, i32* %x, align 4
  %56 = load i32, i32* %x, align 4
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call75 = call i32 @_IO_putc(i32 %56, %struct._IO_FILE* %57)
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.62
  %58 = load i32, i32* %i, align 4
  %inc77 = add nsw i32 %58, 1
  store i32 %inc77, i32* %i, align 4
  br label %for.cond.57

for.end.78:                                       ; preds = %for.cond.57
  br label %if.end.79

if.end.79:                                        ; preds = %for.end.78, %for.end.50
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call80 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %59)
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare i32 @setp_implies(...) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @output_symbolic_constraints(%struct._IO_FILE* %fp, %struct.PLA_t* %PLA, i32 %output_symbolic) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %output_symbolic.addr = alloca i32, align 4
  %A = alloca %struct.set_family*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %size = alloca i32, align 4
  %var = alloca i32, align 4
  %npermute = alloca i32, align 4
  %permute = alloca i32*, align 8
  %weight = alloca i32*, align 8
  %noweight = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %output_symbolic, i32* %output_symbolic.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %sub = sub nsw i32 %0, %1
  %cmp = icmp sle i32 %sub, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %for.end.205

if.end:                                           ; preds = %entry
  %2 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call = call i32 @makeup_labels(%struct.PLA_t* %2)
  %3 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %3, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.203, %if.end
  %4 = load i32, i32* %var, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub1 = sub nsw i32 %5, 1
  %cmp2 = icmp slt i32 %4, %sub1
  br i1 %cmp2, label %for.body, label %for.end.205

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %var, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  store i32 %8, i32* %npermute, align 4
  %9 = load i32, i32* %npermute, align 4
  %conv = sext i32 %9 to i64
  %mul = mul i64 4, %conv
  %call3 = call i8* @malloc(i64 %mul)
  %10 = bitcast i8* %call3 to i32*
  store i32* %10, i32** %permute, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %npermute, align 4
  %cmp5 = icmp slt i32 %11, %12
  br i1 %cmp5, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %13 = load i32, i32* %var, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  %15 = load i32, i32* %arrayidx9, align 4
  %16 = load i32, i32* %i, align 4
  %add = add nsw i32 %15, %16
  %17 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load i32*, i32** %permute, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %18, i64 %idxprom10
  store i32 %add, i32* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %20 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %20, i32 0, i32 0
  %21 = load %struct.set_family*, %struct.set_family** %F, align 8
  %call12 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %21)
  %22 = load i32*, i32** %permute, align 8
  %23 = load i32, i32* %npermute, align 4
  %call13 = call %struct.set_family* (%struct.set_family*, i32*, i32, ...) bitcast (%struct.set_family* (...)* @sf_permute to %struct.set_family* (%struct.set_family*, i32*, i32, ...)*)(%struct.set_family* %call12, i32* %22, i32 %23)
  store %struct.set_family* %call13, %struct.set_family** %A, align 8
  %24 = load i32*, i32** %permute, align 8
  %tobool = icmp ne i32* %24, null
  br i1 %tobool, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.end
  %25 = load i32*, i32** %permute, align 8
  %26 = bitcast i32* %25 to i8*
  call void @free(i8* %26)
  store i32* null, i32** %permute, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %for.end
  store i32 0, i32* %noweight, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.29, %if.end.15
  %27 = load i32, i32* %i, align 4
  %28 = load %struct.set_family*, %struct.set_family** %A, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 3
  %29 = load i32, i32* %count, align 4
  %cmp17 = icmp slt i32 %27, %29
  br i1 %cmp17, label %for.body.19, label %for.end.31

for.body.19:                                      ; preds = %for.cond.16
  %30 = load %struct.set_family*, %struct.set_family** %A, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %30, i32 0, i32 5
  %31 = load i32*, i32** %data, align 8
  %32 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 0
  %33 = load i32, i32* %wsize, align 4
  %34 = load i32, i32* %i, align 4
  %mul20 = mul nsw i32 %33, %34
  %idx.ext = sext i32 %mul20 to i64
  %add.ptr = getelementptr inbounds i32, i32* %31, i64 %idx.ext
  %call21 = call i32 (i32*, ...) bitcast (i32 (...)* @set_ord to i32 (i32*, ...)*)(i32* %add.ptr)
  store i32 %call21, i32* %size, align 4
  %35 = load i32, i32* %size, align 4
  %cmp22 = icmp eq i32 %35, 1
  br i1 %cmp22, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.19
  %36 = load i32, i32* %size, align 4
  %37 = load %struct.set_family*, %struct.set_family** %A, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %37, i32 0, i32 1
  %38 = load i32, i32* %sf_size, align 4
  %cmp24 = icmp eq i32 %36, %38
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %lor.lhs.false, %for.body.19
  %39 = load %struct.set_family*, %struct.set_family** %A, align 8
  %40 = load i32, i32* %i, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* %i, align 4
  call void (%struct.set_family*, i32, ...) bitcast (void (...)* @sf_delset to void (%struct.set_family*, i32, ...)*)(%struct.set_family* %39, i32 %40)
  %41 = load i32, i32* %noweight, align 4
  %inc27 = add nsw i32 %41, 1
  store i32 %inc27, i32* %noweight, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %lor.lhs.false
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %42 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %42, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.16

for.end.31:                                       ; preds = %for.cond.16
  %43 = load %struct.set_family*, %struct.set_family** %A, align 8
  %count32 = getelementptr inbounds %struct.set_family, %struct.set_family* %43, i32 0, i32 3
  %44 = load i32, i32* %count32, align 4
  %conv33 = sext i32 %44 to i64
  %mul34 = mul i64 4, %conv33
  %call35 = call i8* @malloc(i64 %mul34)
  %45 = bitcast i8* %call35 to i32*
  store i32* %45, i32** %weight, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.47, %for.end.31
  %46 = load i32, i32* %i, align 4
  %47 = load %struct.set_family*, %struct.set_family** %A, align 8
  %count37 = getelementptr inbounds %struct.set_family, %struct.set_family* %47, i32 0, i32 3
  %48 = load i32, i32* %count37, align 4
  %cmp38 = icmp slt i32 %46, %48
  br i1 %cmp38, label %for.body.40, label %for.end.49

for.body.40:                                      ; preds = %for.cond.36
  %49 = load %struct.set_family*, %struct.set_family** %A, align 8
  %data41 = getelementptr inbounds %struct.set_family, %struct.set_family* %49, i32 0, i32 5
  %50 = load i32*, i32** %data41, align 8
  %51 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize42 = getelementptr inbounds %struct.set_family, %struct.set_family* %51, i32 0, i32 0
  %52 = load i32, i32* %wsize42, align 4
  %53 = load i32, i32* %i, align 4
  %mul43 = mul nsw i32 %52, %53
  %idx.ext44 = sext i32 %mul43 to i64
  %add.ptr45 = getelementptr inbounds i32, i32* %50, i64 %idx.ext44
  %arrayidx46 = getelementptr inbounds i32, i32* %add.ptr45, i64 0
  %54 = load i32, i32* %arrayidx46, align 4
  %and = and i32 %54, -2049
  store i32 %and, i32* %arrayidx46, align 4
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.40
  %55 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %55, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.36

for.end.49:                                       ; preds = %for.cond.36
  store i32 0, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.101, %for.end.49
  %56 = load i32, i32* %i, align 4
  %57 = load %struct.set_family*, %struct.set_family** %A, align 8
  %count51 = getelementptr inbounds %struct.set_family, %struct.set_family* %57, i32 0, i32 3
  %58 = load i32, i32* %count51, align 4
  %cmp52 = icmp slt i32 %56, %58
  br i1 %cmp52, label %for.body.54, label %for.end.103

for.body.54:                                      ; preds = %for.cond.50
  %59 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %59 to i64
  %60 = load i32*, i32** %weight, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %60, i64 %idxprom55
  store i32 0, i32* %arrayidx56, align 4
  %61 = load %struct.set_family*, %struct.set_family** %A, align 8
  %data57 = getelementptr inbounds %struct.set_family, %struct.set_family* %61, i32 0, i32 5
  %62 = load i32*, i32** %data57, align 8
  %63 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize58 = getelementptr inbounds %struct.set_family, %struct.set_family* %63, i32 0, i32 0
  %64 = load i32, i32* %wsize58, align 4
  %65 = load i32, i32* %i, align 4
  %mul59 = mul nsw i32 %64, %65
  %idx.ext60 = sext i32 %mul59 to i64
  %add.ptr61 = getelementptr inbounds i32, i32* %62, i64 %idx.ext60
  %arrayidx62 = getelementptr inbounds i32, i32* %add.ptr61, i64 0
  %66 = load i32, i32* %arrayidx62, align 4
  %and63 = and i32 %66, 2048
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %if.end.100, label %if.then.65

if.then.65:                                       ; preds = %for.body.54
  %67 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %67 to i64
  %68 = load i32*, i32** %weight, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %68, i64 %idxprom66
  store i32 1, i32* %arrayidx67, align 4
  %69 = load i32, i32* %i, align 4
  %add68 = add nsw i32 %69, 1
  store i32 %add68, i32* %j, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.97, %if.then.65
  %70 = load i32, i32* %j, align 4
  %71 = load %struct.set_family*, %struct.set_family** %A, align 8
  %count70 = getelementptr inbounds %struct.set_family, %struct.set_family* %71, i32 0, i32 3
  %72 = load i32, i32* %count70, align 4
  %cmp71 = icmp slt i32 %70, %72
  br i1 %cmp71, label %for.body.73, label %for.end.99

for.body.73:                                      ; preds = %for.cond.69
  %73 = load %struct.set_family*, %struct.set_family** %A, align 8
  %data74 = getelementptr inbounds %struct.set_family, %struct.set_family* %73, i32 0, i32 5
  %74 = load i32*, i32** %data74, align 8
  %75 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize75 = getelementptr inbounds %struct.set_family, %struct.set_family* %75, i32 0, i32 0
  %76 = load i32, i32* %wsize75, align 4
  %77 = load i32, i32* %i, align 4
  %mul76 = mul nsw i32 %76, %77
  %idx.ext77 = sext i32 %mul76 to i64
  %add.ptr78 = getelementptr inbounds i32, i32* %74, i64 %idx.ext77
  %78 = load %struct.set_family*, %struct.set_family** %A, align 8
  %data79 = getelementptr inbounds %struct.set_family, %struct.set_family* %78, i32 0, i32 5
  %79 = load i32*, i32** %data79, align 8
  %80 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize80 = getelementptr inbounds %struct.set_family, %struct.set_family* %80, i32 0, i32 0
  %81 = load i32, i32* %wsize80, align 4
  %82 = load i32, i32* %j, align 4
  %mul81 = mul nsw i32 %81, %82
  %idx.ext82 = sext i32 %mul81 to i64
  %add.ptr83 = getelementptr inbounds i32, i32* %79, i64 %idx.ext82
  %call84 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_equal to i32 (i32*, i32*, ...)*)(i32* %add.ptr78, i32* %add.ptr83)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.96

if.then.86:                                       ; preds = %for.body.73
  %83 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %83 to i64
  %84 = load i32*, i32** %weight, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %84, i64 %idxprom87
  %85 = load i32, i32* %arrayidx88, align 4
  %inc89 = add nsw i32 %85, 1
  store i32 %inc89, i32* %arrayidx88, align 4
  %86 = load %struct.set_family*, %struct.set_family** %A, align 8
  %data90 = getelementptr inbounds %struct.set_family, %struct.set_family* %86, i32 0, i32 5
  %87 = load i32*, i32** %data90, align 8
  %88 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize91 = getelementptr inbounds %struct.set_family, %struct.set_family* %88, i32 0, i32 0
  %89 = load i32, i32* %wsize91, align 4
  %90 = load i32, i32* %j, align 4
  %mul92 = mul nsw i32 %89, %90
  %idx.ext93 = sext i32 %mul92 to i64
  %add.ptr94 = getelementptr inbounds i32, i32* %87, i64 %idx.ext93
  %arrayidx95 = getelementptr inbounds i32, i32* %add.ptr94, i64 0
  %91 = load i32, i32* %arrayidx95, align 4
  %or = or i32 %91, 2048
  store i32 %or, i32* %arrayidx95, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.86, %for.body.73
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.96
  %92 = load i32, i32* %j, align 4
  %inc98 = add nsw i32 %92, 1
  store i32 %inc98, i32* %j, align 4
  br label %for.cond.69

for.end.99:                                       ; preds = %for.cond.69
  br label %if.end.100

if.end.100:                                       ; preds = %for.end.99, %for.body.54
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %93 = load i32, i32* %i, align 4
  %inc102 = add nsw i32 %93, 1
  store i32 %inc102, i32* %i, align 4
  br label %for.cond.50

for.end.103:                                      ; preds = %for.cond.50
  %94 = load i32, i32* %output_symbolic.addr, align 4
  %tobool104 = icmp ne i32 %94, 0
  br i1 %tobool104, label %if.else, label %if.then.105

if.then.105:                                      ; preds = %for.end.103
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %96 = load i32, i32* %var, align 4
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.44, i32 0, i32 0), i32 %96)
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %98 = load i32, i32* %noweight, align 4
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.45, i32 0, i32 0), i32 %98)
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %100 = load i32, i32* %var, align 4
  %idxprom108 = sext i32 %100 to i64
  %101 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %101, i64 %idxprom108
  %102 = load i32, i32* %arrayidx109, align 4
  %call110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), i32 %102)
  store i32 0, i32* %i, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.148, %if.then.105
  %103 = load i32, i32* %i, align 4
  %104 = load %struct.set_family*, %struct.set_family** %A, align 8
  %count112 = getelementptr inbounds %struct.set_family, %struct.set_family* %104, i32 0, i32 3
  %105 = load i32, i32* %count112, align 4
  %cmp113 = icmp slt i32 %103, %105
  br i1 %cmp113, label %for.body.115, label %for.end.150

for.body.115:                                     ; preds = %for.cond.111
  %106 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %106 to i64
  %107 = load i32*, i32** %weight, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %107, i64 %idxprom116
  %108 = load i32, i32* %arrayidx117, align 4
  %cmp118 = icmp sgt i32 %108, 0
  br i1 %cmp118, label %if.then.120, label %if.end.147

if.then.120:                                      ; preds = %for.body.115
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %110 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %110 to i64
  %111 = load i32*, i32** %weight, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %111, i64 %idxprom121
  %112 = load i32, i32* %arrayidx122, align 4
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i32 %112)
  store i32 0, i32* %j, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.143, %if.then.120
  %113 = load i32, i32* %j, align 4
  %114 = load %struct.set_family*, %struct.set_family** %A, align 8
  %sf_size125 = getelementptr inbounds %struct.set_family, %struct.set_family* %114, i32 0, i32 1
  %115 = load i32, i32* %sf_size125, align 4
  %cmp126 = icmp slt i32 %113, %115
  br i1 %cmp126, label %for.body.128, label %for.end.145

for.body.128:                                     ; preds = %for.cond.124
  %116 = load i32, i32* %j, align 4
  %shr = ashr i32 %116, 5
  %add129 = add nsw i32 %shr, 1
  %idxprom130 = sext i32 %add129 to i64
  %117 = load %struct.set_family*, %struct.set_family** %A, align 8
  %data131 = getelementptr inbounds %struct.set_family, %struct.set_family* %117, i32 0, i32 5
  %118 = load i32*, i32** %data131, align 8
  %119 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize132 = getelementptr inbounds %struct.set_family, %struct.set_family* %119, i32 0, i32 0
  %120 = load i32, i32* %wsize132, align 4
  %121 = load i32, i32* %i, align 4
  %mul133 = mul nsw i32 %120, %121
  %idx.ext134 = sext i32 %mul133 to i64
  %add.ptr135 = getelementptr inbounds i32, i32* %118, i64 %idx.ext134
  %arrayidx136 = getelementptr inbounds i32, i32* %add.ptr135, i64 %idxprom130
  %122 = load i32, i32* %arrayidx136, align 4
  %123 = load i32, i32* %j, align 4
  %and137 = and i32 %123, 31
  %shl = shl i32 1, %and137
  %and138 = and i32 %122, %shl
  %tobool139 = icmp ne i32 %and138, 0
  br i1 %tobool139, label %if.then.140, label %if.end.142

if.then.140:                                      ; preds = %for.body.128
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %125 = load i32, i32* %j, align 4
  %call141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %125)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.140, %for.body.128
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.142
  %126 = load i32, i32* %j, align 4
  %inc144 = add nsw i32 %126, 1
  store i32 %inc144, i32* %j, align 4
  br label %for.cond.124

for.end.145:                                      ; preds = %for.cond.124
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.147

if.end.147:                                       ; preds = %for.end.145, %for.body.115
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.147
  %128 = load i32, i32* %i, align 4
  %inc149 = add nsw i32 %128, 1
  store i32 %inc149, i32* %i, align 4
  br label %for.cond.111

for.end.150:                                      ; preds = %for.cond.111
  br label %if.end.202

if.else:                                          ; preds = %for.end.103
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %130 = load i32, i32* %var, align 4
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.48, i32 0, i32 0), i32 %130)
  store i32 0, i32* %i, align 4
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.196, %if.else
  %131 = load i32, i32* %i, align 4
  %132 = load %struct.set_family*, %struct.set_family** %A, align 8
  %count153 = getelementptr inbounds %struct.set_family, %struct.set_family* %132, i32 0, i32 3
  %133 = load i32, i32* %count153, align 4
  %cmp154 = icmp slt i32 %131, %133
  br i1 %cmp154, label %for.body.156, label %for.end.198

for.body.156:                                     ; preds = %for.cond.152
  %134 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %134 to i64
  %135 = load i32*, i32** %weight, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %135, i64 %idxprom157
  %136 = load i32, i32* %arrayidx158, align 4
  %cmp159 = icmp sgt i32 %136, 0
  br i1 %cmp159, label %if.then.161, label %if.end.195

if.then.161:                                      ; preds = %for.body.156
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %138 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %138 to i64
  %139 = load i32*, i32** %weight, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %139, i64 %idxprom162
  %140 = load i32, i32* %arrayidx163, align 4
  %call164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i32 %140)
  store i32 0, i32* %j, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.191, %if.then.161
  %141 = load i32, i32* %j, align 4
  %142 = load %struct.set_family*, %struct.set_family** %A, align 8
  %sf_size166 = getelementptr inbounds %struct.set_family, %struct.set_family* %142, i32 0, i32 1
  %143 = load i32, i32* %sf_size166, align 4
  %cmp167 = icmp slt i32 %141, %143
  br i1 %cmp167, label %for.body.169, label %for.end.193

for.body.169:                                     ; preds = %for.cond.165
  %144 = load i32, i32* %j, align 4
  %shr170 = ashr i32 %144, 5
  %add171 = add nsw i32 %shr170, 1
  %idxprom172 = sext i32 %add171 to i64
  %145 = load %struct.set_family*, %struct.set_family** %A, align 8
  %data173 = getelementptr inbounds %struct.set_family, %struct.set_family* %145, i32 0, i32 5
  %146 = load i32*, i32** %data173, align 8
  %147 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize174 = getelementptr inbounds %struct.set_family, %struct.set_family* %147, i32 0, i32 0
  %148 = load i32, i32* %wsize174, align 4
  %149 = load i32, i32* %i, align 4
  %mul175 = mul nsw i32 %148, %149
  %idx.ext176 = sext i32 %mul175 to i64
  %add.ptr177 = getelementptr inbounds i32, i32* %146, i64 %idx.ext176
  %arrayidx178 = getelementptr inbounds i32, i32* %add.ptr177, i64 %idxprom172
  %150 = load i32, i32* %arrayidx178, align 4
  %151 = load i32, i32* %j, align 4
  %and179 = and i32 %151, 31
  %shl180 = shl i32 1, %and179
  %and181 = and i32 %150, %shl180
  %tobool182 = icmp ne i32 %and181, 0
  br i1 %tobool182, label %if.then.183, label %if.end.190

if.then.183:                                      ; preds = %for.body.169
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %153 = load i32, i32* %var, align 4
  %idxprom184 = sext i32 %153 to i64
  %154 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %154, i64 %idxprom184
  %155 = load i32, i32* %arrayidx185, align 4
  %156 = load i32, i32* %j, align 4
  %add186 = add nsw i32 %155, %156
  %idxprom187 = sext i32 %add186 to i64
  %157 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %157, i32 0, i32 7
  %158 = load i8**, i8*** %label, align 8
  %arrayidx188 = getelementptr inbounds i8*, i8** %158, i64 %idxprom187
  %159 = load i8*, i8** %arrayidx188, align 8
  %call189 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %159)
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.183, %for.body.169
  br label %for.inc.191

for.inc.191:                                      ; preds = %if.end.190
  %160 = load i32, i32* %j, align 4
  %inc192 = add nsw i32 %160, 1
  store i32 %inc192, i32* %j, align 4
  br label %for.cond.165

for.end.193:                                      ; preds = %for.cond.165
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end.195

if.end.195:                                       ; preds = %for.end.193, %for.body.156
  br label %for.inc.196

for.inc.196:                                      ; preds = %if.end.195
  %162 = load i32, i32* %i, align 4
  %inc197 = add nsw i32 %162, 1
  store i32 %inc197, i32* %i, align 4
  br label %for.cond.152

for.end.198:                                      ; preds = %for.cond.152
  %163 = load i32*, i32** %weight, align 8
  %tobool199 = icmp ne i32* %163, null
  br i1 %tobool199, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %for.end.198
  %164 = load i32*, i32** %weight, align 8
  %165 = bitcast i32* %164 to i8*
  call void @free(i8* %165)
  store i32* null, i32** %weight, align 8
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.200, %for.end.198
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %for.end.150
  br label %for.inc.203

for.inc.203:                                      ; preds = %if.end.202
  %166 = load i32, i32* %var, align 4
  %inc204 = add nsw i32 %166, 1
  store i32 %inc204, i32* %var, align 4
  br label %for.cond

for.end.205:                                      ; preds = %if.then, %for.cond
  %167 = load i32, i32* %retval
  ret i32 %167
}

declare %struct.set_family* @sf_permute(...) #1

declare %struct.set_family* @sf_save(...) #1

declare i32 @set_ord(...) #1

declare void @sf_delset(...) #1

declare i32 @setp_equal(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
