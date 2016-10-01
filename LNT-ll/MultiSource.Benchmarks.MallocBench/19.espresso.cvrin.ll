; ModuleID = './MultiSource.Benchmarks.MallocBench/19.espresso.cvrin.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pla_types_struct = type { i8*, i32 }
%struct.PLA_t = type { %struct.set_family*, %struct.set_family*, %struct.set_family*, i8*, i32, i32*, %struct.pair_struct*, i8**, %struct.symbolic_struct*, %struct.symbolic_struct* }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.pair_struct = type { i32, i32*, i32* }
%struct.symbolic_struct = type { %struct.symbolic_list_struct*, i32, %struct.symbolic_label_struct*, i32, %struct.symbolic_struct* }
%struct.symbolic_list_struct = type { i32, i32, %struct.symbolic_list_struct* }
%struct.symbolic_label_struct = type { i8*, %struct.symbolic_label_struct* }
%struct.cost_struct = type { i32, i32, i32, i32, i32, i32 }

@lineno = internal global i32 0, align 4
@cube = external global %struct.cube_struct, align 8
@line_length_error = internal global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [20 x i8] c"product term(s) %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"span more than one line (warning only)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@kiss = external global i32, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"declared size of variable %d (counting from variable 0) is too small\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"(warning): input line #%d ignored\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@echo_comments = external global i32, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"extra .i ignored\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"error reading .i\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"extra .o ignored\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c".o cannot appear before .i\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"error reading .o\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"mv\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"extra .mv ignored\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"cannot mix .i and .mv\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"error reading .mv\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"num_binary_vars (second field of .mv) cannot be negative\00", align 1
@.str.22 = private unnamed_addr constant [75 x i8] c"num_vars (1st field of .mv) must exceed num_binary_vars (2nd field of .mv)\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"kiss\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@pla_types = external global [0 x %struct.pla_types_struct], align 8
@.str.28 = private unnamed_addr constant [30 x i8] c"unknown type in .type command\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"ilb\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"PLA size must be declared before .ilb or .ob\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"%s.bar\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"ob\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"PLA size must be declared before .label\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"var=%d\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"Error reading labels\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"symbolic\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"error reading .symbolic\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"symbolic-output\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"error reading .symbolic-output\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"phase\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"PLA size must be declared before .phase\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"extra .phase ignored\0A\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"only 0 or 1 allowed in phase description\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"pair\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"extra .pair ignored\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"syntax error in .pair\00", align 1
@echo_unknown_commands = external global i32, align 4
@.str.48 = private unnamed_addr constant [6 x i8] c"%c%s \00", align 1
@.str.49 = private unnamed_addr constant [46 x i8] c" with .kiss option, third to last and second\0A\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"to last variables must be the same size.\0A\00", align 1
@trace = external global i32, align 4
@pos = external global i32, align 4
@.str.51 = private unnamed_addr constant [12 x i8] c"MAP-INPUT  \00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"MAP-OUTPUT \00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"# PLA is %s\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c" with %d inputs and %d outputs\0A\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c" with %d variables (%d binary, mv sizes\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"# ON-set cost is  %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"# OFF-set cost is %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"# DC-set cost is  %s\0A\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"# phase is %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"# two-bit decoders:\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c" (%d %d)\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"# symbolic: \00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"# output symbolic: \00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c";\00", align 1

; Function Attrs: nounwind uwtable
define void @skip_line(%struct._IO_FILE* %fpin, %struct._IO_FILE* %fpout, i32 %echo) #0 {
entry:
  %fpin.addr = alloca %struct._IO_FILE*, align 8
  %fpout.addr = alloca %struct._IO_FILE*, align 8
  %echo.addr = alloca i32, align 4
  %ch = alloca i32, align 4
  store %struct._IO_FILE* %fpin, %struct._IO_FILE** %fpin.addr, align 8
  store %struct._IO_FILE* %fpout, %struct._IO_FILE** %fpout.addr, align 8
  store i32 %echo, i32* %echo.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fpin.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %ch, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %ch, align 4
  %cmp1 = icmp ne i32 %1, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load i32, i32* %echo.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %ch, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fpout.addr, align 8
  %call2 = call i32 @_IO_putc(i32 %4, %struct._IO_FILE* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load i32, i32* %echo.addr, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %while.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fpout.addr, align 8
  %call5 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %7)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %while.end
  %8 = load i32, i32* @lineno, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @lineno, align 4
  ret void
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i8* @get_word(%struct._IO_FILE* %fp, i8* %word) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %word.addr = alloca i8*, align 8
  %ch = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %word, i8** %word.addr, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %ch, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %ch, align 4
  %idxprom = sext i32 %1 to i64
  %call1 = call i16** @__ctype_b_loc() #6
  %2 = load i16*, i16** %call1, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %5 = load i32, i32* %ch, align 4
  %conv2 = trunc i32 %5 to i8
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i8*, i8** %word.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 %idxprom3
  store i8 %conv2, i8* %arrayidx4, align 1
  br label %while.cond.5

while.cond.5:                                     ; preds = %while.body.17, %while.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i32 @_IO_getc(%struct._IO_FILE* %8)
  store i32 %call6, i32* %ch, align 4
  %cmp7 = icmp ne i32 %call6, -1
  br i1 %cmp7, label %land.rhs.9, label %land.end.16

land.rhs.9:                                       ; preds = %while.cond.5
  %9 = load i32, i32* %ch, align 4
  %idxprom10 = sext i32 %9 to i64
  %call11 = call i16** @__ctype_b_loc() #6
  %10 = load i16*, i16** %call11, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %10, i64 %idxprom10
  %11 = load i16, i16* %arrayidx12, align 2
  %conv13 = zext i16 %11 to i32
  %and14 = and i32 %conv13, 8192
  %tobool15 = icmp ne i32 %and14, 0
  %lnot = xor i1 %tobool15, true
  br label %land.end.16

land.end.16:                                      ; preds = %land.rhs.9, %while.cond.5
  %12 = phi i1 [ false, %while.cond.5 ], [ %lnot, %land.rhs.9 ]
  br i1 %12, label %while.body.17, label %while.end.22

while.body.17:                                    ; preds = %land.end.16
  %13 = load i32, i32* %ch, align 4
  %conv18 = trunc i32 %13 to i8
  %14 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %14, 1
  store i32 %inc19, i32* %i, align 4
  %idxprom20 = sext i32 %14 to i64
  %15 = load i8*, i8** %word.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %15, i64 %idxprom20
  store i8 %conv18, i8* %arrayidx21, align 1
  br label %while.cond.5

while.end.22:                                     ; preds = %land.end.16
  %16 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %16, 1
  store i32 %inc23, i32* %i, align 4
  %idxprom24 = sext i32 %16 to i64
  %17 = load i8*, i8** %word.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %17, i64 %idxprom24
  store i8 0, i8* %arrayidx25, align 1
  %18 = load i8*, i8** %word.addr, align 8
  ret i8* %18
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind uwtable
define void @read_cube(%struct._IO_FILE* %fp, %struct.PLA_t* %PLA) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %var = alloca i32, align 4
  %i = alloca i32, align 4
  %cf = alloca i32*, align 8
  %cr = alloca i32*, align 8
  %cd = alloca i32*, align 8
  %savef = alloca i32, align 4
  %saved = alloca i32, align 4
  %saver = alloca i32, align 4
  %token = alloca [256 x i8], align 16
  %varx = alloca i32, align 4
  %first = alloca i32, align 4
  %last = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %cf, align 8
  %2 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %2, i64 1
  %3 = load i32*, i32** %arrayidx1, align 8
  store i32* %3, i32** %cr, align 8
  %4 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx2 = getelementptr inbounds i32*, i32** %4, i64 2
  %5 = load i32*, i32** %arrayidx2, align 8
  store i32* %5, i32** %cd, align 8
  store i32 0, i32* %savef, align 4
  store i32 0, i32* %saved, align 4
  store i32 0, i32* %saver, align 4
  %6 = load i32*, i32** %cf, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %6, i32 %7)
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %var, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 @_IO_getc(%struct._IO_FILE* %10)
  switch i32 %call3, label %sw.default [
    i32 -1, label %sw.bb
    i32 10, label %sw.bb.4
    i32 32, label %sw.bb.6
    i32 124, label %sw.bb.6
    i32 9, label %sw.bb.6
    i32 50, label %sw.bb.8
    i32 45, label %sw.bb.8
    i32 48, label %sw.bb.13
    i32 49, label %sw.bb.23
    i32 63, label %sw.bb.35
  ]

sw.bb:                                            ; preds = %for.body
  br label %bad_char

sw.bb.4:                                          ; preds = %for.body
  %11 = load i32, i32* @line_length_error, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.4
  store i32 1, i32* @line_length_error, align 4
  %13 = load i32, i32* @lineno, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* @lineno, align 4
  %14 = load i32, i32* %var, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %var, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %for.body, %for.body, %for.body
  %15 = load i32, i32* %var, align 4
  %dec7 = add nsw i32 %15, -1
  store i32 %dec7, i32* %var, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %for.body, %for.body
  %16 = load i32, i32* %var, align 4
  %mul = mul nsw i32 %16, 2
  %add = add nsw i32 %mul, 1
  %and = and i32 %add, 31
  %shl = shl i32 1, %and
  %17 = load i32, i32* %var, align 4
  %mul9 = mul nsw i32 %17, 2
  %add10 = add nsw i32 %mul9, 1
  %shr = ashr i32 %add10, 5
  %add11 = add nsw i32 %shr, 1
  %idxprom = sext i32 %add11 to i64
  %18 = load i32*, i32** %cf, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %18, i64 %idxprom
  %19 = load i32, i32* %arrayidx12, align 4
  %or = or i32 %19, %shl
  store i32 %or, i32* %arrayidx12, align 4
  br label %sw.bb.13

sw.bb.13:                                         ; preds = %for.body, %sw.bb.8
  %20 = load i32, i32* %var, align 4
  %mul14 = mul nsw i32 %20, 2
  %and15 = and i32 %mul14, 31
  %shl16 = shl i32 1, %and15
  %21 = load i32, i32* %var, align 4
  %mul17 = mul nsw i32 %21, 2
  %shr18 = ashr i32 %mul17, 5
  %add19 = add nsw i32 %shr18, 1
  %idxprom20 = sext i32 %add19 to i64
  %22 = load i32*, i32** %cf, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %22, i64 %idxprom20
  %23 = load i32, i32* %arrayidx21, align 4
  %or22 = or i32 %23, %shl16
  store i32 %or22, i32* %arrayidx21, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %for.body
  %24 = load i32, i32* %var, align 4
  %mul24 = mul nsw i32 %24, 2
  %add25 = add nsw i32 %mul24, 1
  %and26 = and i32 %add25, 31
  %shl27 = shl i32 1, %and26
  %25 = load i32, i32* %var, align 4
  %mul28 = mul nsw i32 %25, 2
  %add29 = add nsw i32 %mul28, 1
  %shr30 = ashr i32 %add29, 5
  %add31 = add nsw i32 %shr30, 1
  %idxprom32 = sext i32 %add31 to i64
  %26 = load i32*, i32** %cf, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %26, i64 %idxprom32
  %27 = load i32, i32* %arrayidx33, align 4
  %or34 = or i32 %27, %shl27
  store i32 %or34, i32* %arrayidx33, align 4
  br label %sw.epilog

sw.bb.35:                                         ; preds = %for.body
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %bad_char

sw.epilog:                                        ; preds = %sw.bb.35, %sw.bb.23, %sw.bb.13, %sw.bb.6, %if.end
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %28 = load i32, i32* %var, align 4
  %inc36 = add nsw i32 %28, 1
  store i32 %inc36, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %29, i32* %var, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.172, %for.end
  %30 = load i32, i32* %var, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub = sub nsw i32 %31, 1
  %cmp38 = icmp slt i32 %30, %sub
  br i1 %cmp38, label %for.body.39, label %for.end.174

for.body.39:                                      ; preds = %for.cond.37
  %32 = load i32, i32* %var, align 4
  %idxprom40 = sext i32 %32 to i64
  %33 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %33, i64 %idxprom40
  %34 = load i32, i32* %arrayidx41, align 4
  %cmp42 = icmp slt i32 %34, 0
  br i1 %cmp42, label %if.then.43, label %if.else.138

if.then.43:                                       ; preds = %for.body.39
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %token, i32 0, i32 0
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay)
  %arraydecay45 = getelementptr inbounds [256 x i8], [256 x i8]* %token, i32 0, i32 0
  %call46 = call i32 @strcmp(i8* %arraydecay45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #7
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.43
  %arraydecay48 = getelementptr inbounds [256 x i8], [256 x i8]* %token, i32 0, i32 0
  %call49 = call i32 @strcmp(i8* %arraydecay48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #7
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then.51, label %if.else.60

if.then.51:                                       ; preds = %lor.lhs.false, %if.then.43
  %36 = load i32, i32* @kiss, align 4
  %tobool52 = icmp ne i32 %36, 0
  br i1 %tobool52, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.51
  %37 = load i32, i32* %var, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub53 = sub nsw i32 %38, 2
  %cmp54 = icmp eq i32 %37, %sub53
  br i1 %cmp54, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %land.lhs.true
  br label %if.end.59

if.else:                                          ; preds = %land.lhs.true, %if.then.51
  %39 = load i32*, i32** %cf, align 8
  %40 = load i32*, i32** %cf, align 8
  %41 = load i32, i32* %var, align 4
  %idxprom56 = sext i32 %41 to i64
  %42 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx57 = getelementptr inbounds i32*, i32** %42, i64 %idxprom56
  %43 = load i32*, i32** %arrayidx57, align 8
  %call58 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %39, i32* %40, i32* %43)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else, %if.then.55
  br label %if.end.137

if.else.60:                                       ; preds = %lor.lhs.false
  %arraydecay61 = getelementptr inbounds [256 x i8], [256 x i8]* %token, i32 0, i32 0
  %call62 = call i32 @strcmp(i8* %arraydecay61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #7
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.else.60
  br label %if.end.136

if.else.65:                                       ; preds = %if.else.60
  %44 = load i32, i32* @kiss, align 4
  %tobool66 = icmp ne i32 %44, 0
  br i1 %tobool66, label %land.lhs.true.67, label %if.else.83

land.lhs.true.67:                                 ; preds = %if.else.65
  %45 = load i32, i32* %var, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub68 = sub nsw i32 %46, 2
  %cmp69 = icmp eq i32 %45, %sub68
  br i1 %cmp69, label %if.then.70, label %if.else.83

if.then.70:                                       ; preds = %land.lhs.true.67
  %47 = load i32, i32* %var, align 4
  %sub71 = sub nsw i32 %47, 1
  store i32 %sub71, i32* %varx, align 4
  %48 = load i32, i32* %var, align 4
  %sub72 = sub nsw i32 %48, 1
  %idxprom73 = sext i32 %sub72 to i64
  %49 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %49, i64 %idxprom73
  %50 = load i32, i32* %arrayidx74, align 4
  %cmp75 = icmp sgt i32 %50, 0
  br i1 %cmp75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.70
  %51 = load i32, i32* %var, align 4
  %sub76 = sub nsw i32 %51, 1
  %idxprom77 = sext i32 %sub76 to i64
  %52 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %52, i64 %idxprom77
  %53 = load i32, i32* %arrayidx78, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.70
  %54 = load i32, i32* %var, align 4
  %sub79 = sub nsw i32 %54, 1
  %idxprom80 = sext i32 %sub79 to i64
  %55 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %55, i64 %idxprom80
  %56 = load i32, i32* %arrayidx81, align 4
  %sub82 = sub nsw i32 0, %56
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %53, %cond.true ], [ %sub82, %cond.false ]
  store i32 %cond, i32* %offset, align 4
  br label %if.end.84

if.else.83:                                       ; preds = %land.lhs.true.67, %if.else.65
  %57 = load i32, i32* %var, align 4
  store i32 %57, i32* %varx, align 4
  store i32 0, i32* %offset, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.83, %cond.end
  %58 = load i32, i32* %varx, align 4
  %idxprom85 = sext i32 %58 to i64
  %59 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %59, i64 %idxprom85
  %60 = load i32, i32* %arrayidx86, align 4
  store i32 %60, i32* %first, align 4
  %61 = load i32, i32* %varx, align 4
  %idxprom87 = sext i32 %61 to i64
  %62 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %62, i64 %idxprom87
  %63 = load i32, i32* %arrayidx88, align 4
  store i32 %63, i32* %last, align 4
  %64 = load i32, i32* %first, align 4
  store i32 %64, i32* %i, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.129, %if.end.84
  %65 = load i32, i32* %i, align 4
  %66 = load i32, i32* %last, align 4
  %cmp90 = icmp sle i32 %65, %66
  br i1 %cmp90, label %for.body.91, label %for.end.131

for.body.91:                                      ; preds = %for.cond.89
  %67 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %67 to i64
  %68 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %68, i32 0, i32 7
  %69 = load i8**, i8*** %label, align 8
  %arrayidx93 = getelementptr inbounds i8*, i8** %69, i64 %idxprom92
  %70 = load i8*, i8** %arrayidx93, align 8
  %cmp94 = icmp eq i8* %70, null
  br i1 %cmp94, label %if.then.95, label %if.else.110

if.then.95:                                       ; preds = %for.body.91
  %arraydecay96 = getelementptr inbounds [256 x i8], [256 x i8]* %token, i32 0, i32 0
  %call97 = call i8* @util_strsav(i8* %arraydecay96)
  %71 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %71 to i64
  %72 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label99 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %72, i32 0, i32 7
  %73 = load i8**, i8*** %label99, align 8
  %arrayidx100 = getelementptr inbounds i8*, i8** %73, i64 %idxprom98
  store i8* %call97, i8** %arrayidx100, align 8
  %74 = load i32, i32* %i, align 4
  %75 = load i32, i32* %offset, align 4
  %add101 = add nsw i32 %74, %75
  %and102 = and i32 %add101, 31
  %shl103 = shl i32 1, %and102
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* %offset, align 4
  %add104 = add nsw i32 %76, %77
  %shr105 = ashr i32 %add104, 5
  %add106 = add nsw i32 %shr105, 1
  %idxprom107 = sext i32 %add106 to i64
  %78 = load i32*, i32** %cf, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %78, i64 %idxprom107
  %79 = load i32, i32* %arrayidx108, align 4
  %or109 = or i32 %79, %shl103
  store i32 %or109, i32* %arrayidx108, align 4
  br label %for.end.131

if.else.110:                                      ; preds = %for.body.91
  %80 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %80 to i64
  %81 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label112 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %81, i32 0, i32 7
  %82 = load i8**, i8*** %label112, align 8
  %arrayidx113 = getelementptr inbounds i8*, i8** %82, i64 %idxprom111
  %83 = load i8*, i8** %arrayidx113, align 8
  %arraydecay114 = getelementptr inbounds [256 x i8], [256 x i8]* %token, i32 0, i32 0
  %call115 = call i32 @strcmp(i8* %83, i8* %arraydecay114) #7
  %cmp116 = icmp eq i32 %call115, 0
  br i1 %cmp116, label %if.then.117, label %if.end.127

if.then.117:                                      ; preds = %if.else.110
  %84 = load i32, i32* %i, align 4
  %85 = load i32, i32* %offset, align 4
  %add118 = add nsw i32 %84, %85
  %and119 = and i32 %add118, 31
  %shl120 = shl i32 1, %and119
  %86 = load i32, i32* %i, align 4
  %87 = load i32, i32* %offset, align 4
  %add121 = add nsw i32 %86, %87
  %shr122 = ashr i32 %add121, 5
  %add123 = add nsw i32 %shr122, 1
  %idxprom124 = sext i32 %add123 to i64
  %88 = load i32*, i32** %cf, align 8
  %arrayidx125 = getelementptr inbounds i32, i32* %88, i64 %idxprom124
  %89 = load i32, i32* %arrayidx125, align 4
  %or126 = or i32 %89, %shl120
  store i32 %or126, i32* %arrayidx125, align 4
  br label %for.end.131

if.end.127:                                       ; preds = %if.else.110
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127
  br label %for.inc.129

for.inc.129:                                      ; preds = %if.end.128
  %90 = load i32, i32* %i, align 4
  %inc130 = add nsw i32 %90, 1
  store i32 %inc130, i32* %i, align 4
  br label %for.cond.89

for.end.131:                                      ; preds = %if.then.117, %if.then.95, %for.cond.89
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* %last, align 4
  %cmp132 = icmp sgt i32 %91, %92
  br i1 %cmp132, label %if.then.133, label %if.end.135

if.then.133:                                      ; preds = %for.end.131
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %94 = load i32, i32* %var, align 4
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i32 0, i32 0), i32 %94)
  call void @exit(i32 -1) #8
  unreachable

if.end.135:                                       ; preds = %for.end.131
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.64
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.end.59
  br label %if.end.171

if.else.138:                                      ; preds = %for.body.39
  %95 = load i32, i32* %var, align 4
  %idxprom139 = sext i32 %95 to i64
  %96 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %96, i64 %idxprom139
  %97 = load i32, i32* %arrayidx140, align 4
  store i32 %97, i32* %i, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.168, %if.else.138
  %98 = load i32, i32* %i, align 4
  %99 = load i32, i32* %var, align 4
  %idxprom142 = sext i32 %99 to i64
  %100 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %100, i64 %idxprom142
  %101 = load i32, i32* %arrayidx143, align 4
  %cmp144 = icmp sle i32 %98, %101
  br i1 %cmp144, label %for.body.145, label %for.end.170

for.body.145:                                     ; preds = %for.cond.141
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call146 = call i32 @_IO_getc(%struct._IO_FILE* %102)
  switch i32 %call146, label %sw.default.166 [
    i32 -1, label %sw.bb.147
    i32 10, label %sw.bb.148
    i32 32, label %sw.bb.155
    i32 124, label %sw.bb.155
    i32 9, label %sw.bb.155
    i32 49, label %sw.bb.157
    i32 48, label %sw.bb.165
  ]

sw.bb.147:                                        ; preds = %for.body.145
  br label %bad_char

sw.bb.148:                                        ; preds = %for.body.145
  %103 = load i32, i32* @line_length_error, align 4
  %tobool149 = icmp ne i32 %103, 0
  br i1 %tobool149, label %if.end.152, label %if.then.150

if.then.150:                                      ; preds = %sw.bb.148
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.150, %sw.bb.148
  store i32 1, i32* @line_length_error, align 4
  %105 = load i32, i32* @lineno, align 4
  %inc153 = add nsw i32 %105, 1
  store i32 %inc153, i32* @lineno, align 4
  %106 = load i32, i32* %i, align 4
  %dec154 = add nsw i32 %106, -1
  store i32 %dec154, i32* %i, align 4
  br label %sw.epilog.167

sw.bb.155:                                        ; preds = %for.body.145, %for.body.145, %for.body.145
  %107 = load i32, i32* %i, align 4
  %dec156 = add nsw i32 %107, -1
  store i32 %dec156, i32* %i, align 4
  br label %sw.epilog.167

sw.bb.157:                                        ; preds = %for.body.145
  %108 = load i32, i32* %i, align 4
  %and158 = and i32 %108, 31
  %shl159 = shl i32 1, %and158
  %109 = load i32, i32* %i, align 4
  %shr160 = ashr i32 %109, 5
  %add161 = add nsw i32 %shr160, 1
  %idxprom162 = sext i32 %add161 to i64
  %110 = load i32*, i32** %cf, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %110, i64 %idxprom162
  %111 = load i32, i32* %arrayidx163, align 4
  %or164 = or i32 %111, %shl159
  store i32 %or164, i32* %arrayidx163, align 4
  br label %sw.bb.165

sw.bb.165:                                        ; preds = %for.body.145, %sw.bb.157
  br label %sw.epilog.167

sw.default.166:                                   ; preds = %for.body.145
  br label %bad_char

sw.epilog.167:                                    ; preds = %sw.bb.165, %sw.bb.155, %if.end.152
  br label %for.inc.168

for.inc.168:                                      ; preds = %sw.epilog.167
  %112 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %112, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond.141

for.end.170:                                      ; preds = %for.cond.141
  br label %if.end.171

if.end.171:                                       ; preds = %for.end.170, %if.end.137
  br label %for.inc.172

for.inc.172:                                      ; preds = %if.end.171
  %113 = load i32, i32* %var, align 4
  %inc173 = add nsw i32 %113, 1
  store i32 %inc173, i32* %var, align 4
  br label %for.cond.37

for.end.174:                                      ; preds = %for.cond.37
  %114 = load i32, i32* @kiss, align 4
  %tobool175 = icmp ne i32 %114, 0
  br i1 %tobool175, label %if.then.176, label %if.else.181

if.then.176:                                      ; preds = %for.end.174
  store i32 1, i32* %savef, align 4
  store i32 1, i32* %saver, align 4
  %115 = load i32*, i32** %cr, align 8
  %116 = load i32*, i32** %cf, align 8
  %117 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub177 = sub nsw i32 %117, 2
  %idxprom178 = sext i32 %sub177 to i64
  %118 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx179 = getelementptr inbounds i32*, i32** %118, i64 %idxprom178
  %119 = load i32*, i32** %arrayidx179, align 8
  %call180 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_xor to i32* (i32*, i32*, i32*, ...)*)(i32* %115, i32* %116, i32* %119)
  br label %if.end.183

if.else.181:                                      ; preds = %for.end.174
  %120 = load i32*, i32** %cr, align 8
  %121 = load i32*, i32** %cf, align 8
  %call182 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %120, i32* %121)
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.181, %if.then.176
  %122 = load i32*, i32** %cd, align 8
  %123 = load i32*, i32** %cf, align 8
  %call184 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %122, i32* %123)
  %124 = load i32, i32* %var, align 4
  %idxprom185 = sext i32 %124 to i64
  %125 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %125, i64 %idxprom185
  %126 = load i32, i32* %arrayidx186, align 4
  store i32 %126, i32* %i, align 4
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.244, %if.end.183
  %127 = load i32, i32* %i, align 4
  %128 = load i32, i32* %var, align 4
  %idxprom188 = sext i32 %128 to i64
  %129 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %129, i64 %idxprom188
  %130 = load i32, i32* %arrayidx189, align 4
  %cmp190 = icmp sle i32 %127, %130
  br i1 %cmp190, label %for.body.191, label %for.end.246

for.body.191:                                     ; preds = %for.cond.187
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call192 = call i32 @_IO_getc(%struct._IO_FILE* %131)
  switch i32 %call192, label %sw.default.242 [
    i32 -1, label %sw.bb.193
    i32 10, label %sw.bb.194
    i32 32, label %sw.bb.201
    i32 124, label %sw.bb.201
    i32 9, label %sw.bb.201
    i32 52, label %sw.bb.203
    i32 49, label %sw.bb.203
    i32 51, label %sw.bb.215
    i32 48, label %sw.bb.215
    i32 50, label %sw.bb.228
    i32 45, label %sw.bb.228
    i32 126, label %sw.bb.241
  ]

sw.bb.193:                                        ; preds = %for.body.191
  br label %bad_char

sw.bb.194:                                        ; preds = %for.body.191
  %132 = load i32, i32* @line_length_error, align 4
  %tobool195 = icmp ne i32 %132, 0
  br i1 %tobool195, label %if.end.198, label %if.then.196

if.then.196:                                      ; preds = %sw.bb.194
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call197 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.196, %sw.bb.194
  store i32 1, i32* @line_length_error, align 4
  %134 = load i32, i32* @lineno, align 4
  %inc199 = add nsw i32 %134, 1
  store i32 %inc199, i32* @lineno, align 4
  %135 = load i32, i32* %i, align 4
  %dec200 = add nsw i32 %135, -1
  store i32 %dec200, i32* %i, align 4
  br label %sw.epilog.243

sw.bb.201:                                        ; preds = %for.body.191, %for.body.191, %for.body.191
  %136 = load i32, i32* %i, align 4
  %dec202 = add nsw i32 %136, -1
  store i32 %dec202, i32* %i, align 4
  br label %sw.epilog.243

sw.bb.203:                                        ; preds = %for.body.191, %for.body.191
  %137 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pla_type = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %137, i32 0, i32 4
  %138 = load i32, i32* %pla_type, align 4
  %and204 = and i32 %138, 1
  %tobool205 = icmp ne i32 %and204, 0
  br i1 %tobool205, label %if.then.206, label %if.end.214

if.then.206:                                      ; preds = %sw.bb.203
  %139 = load i32, i32* %i, align 4
  %and207 = and i32 %139, 31
  %shl208 = shl i32 1, %and207
  %140 = load i32, i32* %i, align 4
  %shr209 = ashr i32 %140, 5
  %add210 = add nsw i32 %shr209, 1
  %idxprom211 = sext i32 %add210 to i64
  %141 = load i32*, i32** %cf, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %141, i64 %idxprom211
  %142 = load i32, i32* %arrayidx212, align 4
  %or213 = or i32 %142, %shl208
  store i32 %or213, i32* %arrayidx212, align 4
  store i32 1, i32* %savef, align 4
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.206, %sw.bb.203
  br label %sw.epilog.243

sw.bb.215:                                        ; preds = %for.body.191, %for.body.191
  %143 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pla_type216 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %143, i32 0, i32 4
  %144 = load i32, i32* %pla_type216, align 4
  %and217 = and i32 %144, 4
  %tobool218 = icmp ne i32 %and217, 0
  br i1 %tobool218, label %if.then.219, label %if.end.227

if.then.219:                                      ; preds = %sw.bb.215
  %145 = load i32, i32* %i, align 4
  %and220 = and i32 %145, 31
  %shl221 = shl i32 1, %and220
  %146 = load i32, i32* %i, align 4
  %shr222 = ashr i32 %146, 5
  %add223 = add nsw i32 %shr222, 1
  %idxprom224 = sext i32 %add223 to i64
  %147 = load i32*, i32** %cr, align 8
  %arrayidx225 = getelementptr inbounds i32, i32* %147, i64 %idxprom224
  %148 = load i32, i32* %arrayidx225, align 4
  %or226 = or i32 %148, %shl221
  store i32 %or226, i32* %arrayidx225, align 4
  store i32 1, i32* %saver, align 4
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.219, %sw.bb.215
  br label %sw.epilog.243

sw.bb.228:                                        ; preds = %for.body.191, %for.body.191
  %149 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pla_type229 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %149, i32 0, i32 4
  %150 = load i32, i32* %pla_type229, align 4
  %and230 = and i32 %150, 2
  %tobool231 = icmp ne i32 %and230, 0
  br i1 %tobool231, label %if.then.232, label %if.end.240

if.then.232:                                      ; preds = %sw.bb.228
  %151 = load i32, i32* %i, align 4
  %and233 = and i32 %151, 31
  %shl234 = shl i32 1, %and233
  %152 = load i32, i32* %i, align 4
  %shr235 = ashr i32 %152, 5
  %add236 = add nsw i32 %shr235, 1
  %idxprom237 = sext i32 %add236 to i64
  %153 = load i32*, i32** %cd, align 8
  %arrayidx238 = getelementptr inbounds i32, i32* %153, i64 %idxprom237
  %154 = load i32, i32* %arrayidx238, align 4
  %or239 = or i32 %154, %shl234
  store i32 %or239, i32* %arrayidx238, align 4
  store i32 1, i32* %saved, align 4
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.232, %sw.bb.228
  br label %sw.bb.241

sw.bb.241:                                        ; preds = %for.body.191, %if.end.240
  br label %sw.epilog.243

sw.default.242:                                   ; preds = %for.body.191
  br label %bad_char

sw.epilog.243:                                    ; preds = %sw.bb.241, %if.end.227, %if.end.214, %sw.bb.201, %if.end.198
  br label %for.inc.244

for.inc.244:                                      ; preds = %sw.epilog.243
  %155 = load i32, i32* %i, align 4
  %inc245 = add nsw i32 %155, 1
  store i32 %inc245, i32* %i, align 4
  br label %for.cond.187

for.end.246:                                      ; preds = %for.cond.187
  %156 = load i32, i32* %savef, align 4
  %tobool247 = icmp ne i32 %156, 0
  br i1 %tobool247, label %if.then.248, label %if.end.251

if.then.248:                                      ; preds = %for.end.246
  %157 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %157, i32 0, i32 0
  %158 = load %struct.set_family*, %struct.set_family** %F, align 8
  %159 = load i32*, i32** %cf, align 8
  %call249 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %158, i32* %159)
  %160 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F250 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %160, i32 0, i32 0
  store %struct.set_family* %call249, %struct.set_family** %F250, align 8
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.248, %for.end.246
  %161 = load i32, i32* %saved, align 4
  %tobool252 = icmp ne i32 %161, 0
  br i1 %tobool252, label %if.then.253, label %if.end.256

if.then.253:                                      ; preds = %if.end.251
  %162 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %162, i32 0, i32 1
  %163 = load %struct.set_family*, %struct.set_family** %D, align 8
  %164 = load i32*, i32** %cd, align 8
  %call254 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %163, i32* %164)
  %165 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D255 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %165, i32 0, i32 1
  store %struct.set_family* %call254, %struct.set_family** %D255, align 8
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.253, %if.end.251
  %166 = load i32, i32* %saver, align 4
  %tobool257 = icmp ne i32 %166, 0
  br i1 %tobool257, label %if.then.258, label %if.end.261

if.then.258:                                      ; preds = %if.end.256
  %167 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %167, i32 0, i32 2
  %168 = load %struct.set_family*, %struct.set_family** %R, align 8
  %169 = load i32*, i32** %cr, align 8
  %call259 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %168, i32* %169)
  %170 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R260 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %170, i32 0, i32 2
  store %struct.set_family* %call259, %struct.set_family** %R260, align 8
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.258, %if.end.256
  br label %return

bad_char:                                         ; preds = %sw.default.242, %sw.bb.193, %sw.default.166, %sw.bb.147, %sw.default, %sw.bb
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %172 = load i32, i32* @lineno, align 4
  %call262 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %171, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i32 %172)
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @skip_line(%struct._IO_FILE* %173, %struct._IO_FILE* %174, i32 1)
  br label %return

return:                                           ; preds = %bad_char, %if.end.261
  ret void
}

declare i32* @set_clear(...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32* @set_or(...) #1

declare i8* @util_strsav(i8*) #1

; Function Attrs: noreturn
declare void @exit(i32) #4

declare i32* @set_xor(...) #1

declare i32* @set_copy(...) #1

declare %struct.set_family* @sf_addset(...) #1

; Function Attrs: nounwind uwtable
define void @parse_pla(%struct._IO_FILE* %fp, %struct.PLA_t* %PLA) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %i = alloca i32, align 4
  %var = alloca i32, align 4
  %ch = alloca i32, align 4
  %np = alloca i32, align 4
  %last = alloca i32, align 4
  %word = alloca [256 x i8], align 16
  %newlist = alloca %struct.symbolic_struct*, align 8
  %p1 = alloca %struct.symbolic_struct*, align 8
  %newlist290 = alloca %struct.symbolic_struct*, align 8
  %p1291 = alloca %struct.symbolic_struct*, align 8
  %j = alloca i32, align 4
  %pair392 = alloca %struct.pair_struct*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 1, i32* @lineno, align 4
  store i32 0, i32* @line_length_error, align 4
  br label %loop

loop:                                             ; preds = %sw.epilog, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %ch, align 4
  switch i32 %call, label %sw.default [
    i32 -1, label %sw.bb
    i32 10, label %sw.bb.1
    i32 32, label %sw.bb.2
    i32 9, label %sw.bb.2
    i32 12, label %sw.bb.2
    i32 13, label %sw.bb.2
    i32 35, label %sw.bb.3
    i32 46, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %loop
  br label %return

sw.bb.1:                                          ; preds = %loop
  %1 = load i32, i32* @lineno, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @lineno, align 4
  br label %sw.bb.2

sw.bb.2:                                          ; preds = %loop, %loop, %loop, %loop, %sw.bb.1
  br label %sw.epilog

sw.bb.3:                                          ; preds = %loop
  %2 = load i32, i32* %ch, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @ungetc(i32 %2, %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %6 = load i32, i32* @echo_comments, align 4
  call void @skip_line(%struct._IO_FILE* %4, %struct._IO_FILE* %5, i32 %6)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %loop
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call6 = call i8* @get_word(%struct._IO_FILE* %7, i8* %arraydecay)
  %call7 = call i32 @strcmp(i8* %call6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then, label %if.else.16

if.then:                                          ; preds = %sw.bb.5
  %8 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %cmp8 = icmp ne i32* %8, null
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @skip_line(%struct._IO_FILE* %10, %struct._IO_FILE* %11, i32 0)
  br label %if.end.15

if.else:                                          ; preds = %if.then
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2))
  %cmp12 = icmp ne i32 %call11, 1
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.else
  %13 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %add = add nsw i32 %13, 1
  store i32 %add, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %conv = sext i32 %14 to i64
  %mul = mul i64 4, %conv
  %call14 = call i8* @malloc(i64 %mul)
  %15 = bitcast i8* %call14 to i32*
  store i32* %15, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.9
  br label %if.end.483

if.else.16:                                       ; preds = %sw.bb.5
  %arraydecay17 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call18 = call i32 @strcmp(i8* %arraydecay17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #7
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.21, label %if.else.38

if.then.21:                                       ; preds = %if.else.16
  %16 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %cmp22 = icmp ne i32* %16, null
  br i1 %cmp22, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.then.21
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @skip_line(%struct._IO_FILE* %18, %struct._IO_FILE* %19, i32 0)
  br label %if.end.37

if.else.26:                                       ; preds = %if.then.21
  %20 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %cmp27 = icmp eq i32* %20, null
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else.26
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.else.26
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub = sub nsw i32 %22, 1
  %idxprom = sext i32 %sub to i64
  %23 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i32, i32* %23, i64 %idxprom
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* %arrayidx)
  %cmp32 = icmp ne i32 %call31, 1
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.30
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.30
  call void (...) @cube_setup()
  %24 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call36 = call i32 @PLA_labels(%struct.PLA_t* %24)
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.35, %if.then.24
  br label %if.end.482

if.else.38:                                       ; preds = %if.else.16
  %arraydecay39 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call40 = call i32 @strcmp(i8* %arraydecay39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #7
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.else.81

if.then.43:                                       ; preds = %if.else.38
  %25 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %cmp44 = icmp ne i32* %25, null
  br i1 %cmp44, label %if.then.46, label %if.else.48

if.then.46:                                       ; preds = %if.then.43
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @skip_line(%struct._IO_FILE* %27, %struct._IO_FILE* %28, i32 0)
  br label %if.end.80

if.else.48:                                       ; preds = %if.then.43
  %29 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %cmp49 = icmp ne i32* %29, null
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.else.48
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.else.48
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2))
  %cmp54 = icmp ne i32 %call53, 2
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.52
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.52
  %31 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp58 = icmp slt i32 %31, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.57
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.57
  %32 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp62 = icmp slt i32 %32, %33
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.61
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.61
  %34 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %conv66 = sext i32 %34 to i64
  %mul67 = mul i64 4, %conv66
  %call68 = call i8* @malloc(i64 %mul67)
  %35 = bitcast i8* %call68 to i32*
  store i32* %35, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %36, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.65
  %37 = load i32, i32* %var, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp69 = icmp slt i32 %37, %38
  br i1 %cmp69, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %40 = load i32, i32* %var, align 4
  %idxprom71 = sext i32 %40 to i64
  %41 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %41, i64 %idxprom71
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* %arrayidx72)
  %cmp74 = icmp ne i32 %call73, 1
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %for.body
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.77
  %42 = load i32, i32* %var, align 4
  %inc78 = add nsw i32 %42, 1
  store i32 %inc78, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void (...) @cube_setup()
  %43 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call79 = call i32 @PLA_labels(%struct.PLA_t* %43)
  br label %if.end.80

if.end.80:                                        ; preds = %for.end, %if.then.46
  br label %if.end.481

if.else.81:                                       ; preds = %if.else.38
  %arraydecay82 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call83 = call i32 @strcmp(i8* %arraydecay82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)) #7
  %cmp84 = icmp eq i32 %call83, 0
  br i1 %cmp84, label %if.then.86, label %if.else.88

if.then.86:                                       ; preds = %if.else.81
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* %np)
  br label %if.end.480

if.else.88:                                       ; preds = %if.else.81
  %arraydecay89 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call90 = call i32 @strcmp(i8* %arraydecay89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0)) #7
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.then.97, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.88
  %arraydecay93 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call94 = call i32 @strcmp(i8* %arraydecay93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0)) #7
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %if.then.97, label %if.else.98

if.then.97:                                       ; preds = %lor.lhs.false, %if.else.88
  br label %return

if.else.98:                                       ; preds = %lor.lhs.false
  %arraydecay99 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call100 = call i32 @strcmp(i8* %arraydecay99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0)) #7
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %if.else.98
  store i32 1, i32* @kiss, align 4
  br label %if.end.478

if.else.104:                                      ; preds = %if.else.98
  %arraydecay105 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call106 = call i32 @strcmp(i8* %arraydecay105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)) #7
  %cmp107 = icmp eq i32 %call106, 0
  br i1 %cmp107, label %if.then.109, label %if.else.139

if.then.109:                                      ; preds = %if.else.104
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay110 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call111 = call i8* @get_word(%struct._IO_FILE* %45, i8* %arraydecay110)
  store i32 0, i32* %i, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.129, %if.then.109
  %46 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %46 to i64
  %arrayidx114 = getelementptr inbounds [0 x %struct.pla_types_struct], [0 x %struct.pla_types_struct]* @pla_types, i32 0, i64 %idxprom113
  %key = getelementptr inbounds %struct.pla_types_struct, %struct.pla_types_struct* %arrayidx114, i32 0, i32 0
  %47 = load i8*, i8** %key, align 8
  %cmp115 = icmp ne i8* %47, null
  br i1 %cmp115, label %for.body.117, label %for.end.131

for.body.117:                                     ; preds = %for.cond.112
  %48 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %48 to i64
  %arrayidx119 = getelementptr inbounds [0 x %struct.pla_types_struct], [0 x %struct.pla_types_struct]* @pla_types, i32 0, i64 %idxprom118
  %key120 = getelementptr inbounds %struct.pla_types_struct, %struct.pla_types_struct* %arrayidx119, i32 0, i32 0
  %49 = load i8*, i8** %key120, align 8
  %add.ptr = getelementptr inbounds i8, i8* %49, i64 1
  %arraydecay121 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call122 = call i32 @strcmp(i8* %add.ptr, i8* %arraydecay121) #7
  %cmp123 = icmp eq i32 %call122, 0
  br i1 %cmp123, label %if.then.125, label %if.end.128

if.then.125:                                      ; preds = %for.body.117
  %50 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %50 to i64
  %arrayidx127 = getelementptr inbounds [0 x %struct.pla_types_struct], [0 x %struct.pla_types_struct]* @pla_types, i32 0, i64 %idxprom126
  %value = getelementptr inbounds %struct.pla_types_struct, %struct.pla_types_struct* %arrayidx127, i32 0, i32 1
  %51 = load i32, i32* %value, align 4
  %52 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pla_type = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %52, i32 0, i32 4
  store i32 %51, i32* %pla_type, align 4
  br label %for.end.131

if.end.128:                                       ; preds = %for.body.117
  br label %for.inc.129

for.inc.129:                                      ; preds = %if.end.128
  %53 = load i32, i32* %i, align 4
  %inc130 = add nsw i32 %53, 1
  store i32 %inc130, i32* %i, align 4
  br label %for.cond.112

for.end.131:                                      ; preds = %if.then.125, %for.cond.112
  %54 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %54 to i64
  %arrayidx133 = getelementptr inbounds [0 x %struct.pla_types_struct], [0 x %struct.pla_types_struct]* @pla_types, i32 0, i64 %idxprom132
  %key134 = getelementptr inbounds %struct.pla_types_struct, %struct.pla_types_struct* %arrayidx133, i32 0, i32 0
  %55 = load i8*, i8** %key134, align 8
  %cmp135 = icmp eq i8* %55, null
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %for.end.131
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %for.end.131
  br label %if.end.477

if.else.139:                                      ; preds = %if.else.104
  %arraydecay140 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call141 = call i32 @strcmp(i8* %arraydecay140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0)) #7
  %cmp142 = icmp eq i32 %call141, 0
  br i1 %cmp142, label %if.then.144, label %if.else.184

if.then.144:                                      ; preds = %if.else.139
  %56 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %cmp145 = icmp eq i32* %56, null
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.then.144
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %if.then.144
  %57 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %57, i32 0, i32 7
  %58 = load i8**, i8*** %label, align 8
  %cmp149 = icmp eq i8** %58, null
  br i1 %cmp149, label %if.then.151, label %if.end.153

if.then.151:                                      ; preds = %if.end.148
  %59 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call152 = call i32 @PLA_labels(%struct.PLA_t* %59)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.151, %if.end.148
  store i32 0, i32* %var, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.181, %if.end.153
  %60 = load i32, i32* %var, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp155 = icmp slt i32 %60, %61
  br i1 %cmp155, label %for.body.157, label %for.end.183

for.body.157:                                     ; preds = %for.cond.154
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay158 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call159 = call i8* @get_word(%struct._IO_FILE* %62, i8* %arraydecay158)
  %63 = load i32, i32* %var, align 4
  %idxprom160 = sext i32 %63 to i64
  %64 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %64, i64 %idxprom160
  %65 = load i32, i32* %arrayidx161, align 4
  store i32 %65, i32* %i, align 4
  %arraydecay162 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call163 = call i8* @util_strsav(i8* %arraydecay162)
  %66 = load i32, i32* %i, align 4
  %add164 = add nsw i32 %66, 1
  %idxprom165 = sext i32 %add164 to i64
  %67 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label166 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %67, i32 0, i32 7
  %68 = load i8**, i8*** %label166, align 8
  %arrayidx167 = getelementptr inbounds i8*, i8** %68, i64 %idxprom165
  store i8* %call163, i8** %arrayidx167, align 8
  %arraydecay168 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call169 = call i64 @strlen(i8* %arraydecay168) #7
  %add170 = add i64 %call169, 6
  %mul171 = mul i64 1, %add170
  %call172 = call i8* @malloc(i64 %mul171)
  %69 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %69 to i64
  %70 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label174 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %70, i32 0, i32 7
  %71 = load i8**, i8*** %label174, align 8
  %arrayidx175 = getelementptr inbounds i8*, i8** %71, i64 %idxprom173
  store i8* %call172, i8** %arrayidx175, align 8
  %72 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %72 to i64
  %73 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label177 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %73, i32 0, i32 7
  %74 = load i8**, i8*** %label177, align 8
  %arrayidx178 = getelementptr inbounds i8*, i8** %74, i64 %idxprom176
  %75 = load i8*, i8** %arrayidx178, align 8
  %arraydecay179 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call180 = call i32 (i8*, i8*, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* %arraydecay179) #9
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.body.157
  %76 = load i32, i32* %var, align 4
  %inc182 = add nsw i32 %76, 1
  store i32 %inc182, i32* %var, align 4
  br label %for.cond.154

for.end.183:                                      ; preds = %for.cond.154
  br label %if.end.476

if.else.184:                                      ; preds = %if.else.139
  %arraydecay185 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call186 = call i32 @strcmp(i8* %arraydecay185, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0)) #7
  %cmp187 = icmp eq i32 %call186, 0
  br i1 %cmp187, label %if.then.189, label %if.else.219

if.then.189:                                      ; preds = %if.else.184
  %77 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %cmp190 = icmp eq i32* %77, null
  br i1 %cmp190, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %if.then.189
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.192, %if.then.189
  %78 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label194 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %78, i32 0, i32 7
  %79 = load i8**, i8*** %label194, align 8
  %cmp195 = icmp eq i8** %79, null
  br i1 %cmp195, label %if.then.197, label %if.end.199

if.then.197:                                      ; preds = %if.end.193
  %80 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call198 = call i32 @PLA_labels(%struct.PLA_t* %80)
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.197, %if.end.193
  %81 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub200 = sub nsw i32 %81, 1
  store i32 %sub200, i32* %var, align 4
  %82 = load i32, i32* %var, align 4
  %idxprom201 = sext i32 %82 to i64
  %83 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx202 = getelementptr inbounds i32, i32* %83, i64 %idxprom201
  %84 = load i32, i32* %arrayidx202, align 4
  store i32 %84, i32* %i, align 4
  br label %for.cond.203

for.cond.203:                                     ; preds = %for.inc.216, %if.end.199
  %85 = load i32, i32* %i, align 4
  %86 = load i32, i32* %var, align 4
  %idxprom204 = sext i32 %86 to i64
  %87 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx205 = getelementptr inbounds i32, i32* %87, i64 %idxprom204
  %88 = load i32, i32* %arrayidx205, align 4
  %cmp206 = icmp sle i32 %85, %88
  br i1 %cmp206, label %for.body.208, label %for.end.218

for.body.208:                                     ; preds = %for.cond.203
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay209 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call210 = call i8* @get_word(%struct._IO_FILE* %89, i8* %arraydecay209)
  %arraydecay211 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call212 = call i8* @util_strsav(i8* %arraydecay211)
  %90 = load i32, i32* %i, align 4
  %idxprom213 = sext i32 %90 to i64
  %91 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label214 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %91, i32 0, i32 7
  %92 = load i8**, i8*** %label214, align 8
  %arrayidx215 = getelementptr inbounds i8*, i8** %92, i64 %idxprom213
  store i8* %call212, i8** %arrayidx215, align 8
  br label %for.inc.216

for.inc.216:                                      ; preds = %for.body.208
  %93 = load i32, i32* %i, align 4
  %inc217 = add nsw i32 %93, 1
  store i32 %inc217, i32* %i, align 4
  br label %for.cond.203

for.end.218:                                      ; preds = %for.cond.203
  br label %if.end.475

if.else.219:                                      ; preds = %if.else.184
  %arraydecay220 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call221 = call i32 @strcmp(i8* %arraydecay220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0)) #7
  %cmp222 = icmp eq i32 %call221, 0
  br i1 %cmp222, label %if.then.224, label %if.else.258

if.then.224:                                      ; preds = %if.else.219
  %94 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %cmp225 = icmp eq i32* %94, null
  br i1 %cmp225, label %if.then.227, label %if.end.228

if.then.227:                                      ; preds = %if.then.224
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.227, %if.then.224
  %95 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label229 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %95, i32 0, i32 7
  %96 = load i8**, i8*** %label229, align 8
  %cmp230 = icmp eq i8** %96, null
  br i1 %cmp230, label %if.then.232, label %if.end.234

if.then.232:                                      ; preds = %if.end.228
  %97 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call233 = call i32 @PLA_labels(%struct.PLA_t* %97)
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.232, %if.end.228
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call235 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32* %var)
  %cmp236 = icmp ne i32 %call235, 1
  br i1 %cmp236, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %if.end.234
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.238, %if.end.234
  %99 = load i32, i32* %var, align 4
  %idxprom240 = sext i32 %99 to i64
  %100 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx241 = getelementptr inbounds i32, i32* %100, i64 %idxprom240
  %101 = load i32, i32* %arrayidx241, align 4
  store i32 %101, i32* %i, align 4
  br label %for.cond.242

for.cond.242:                                     ; preds = %for.inc.255, %if.end.239
  %102 = load i32, i32* %i, align 4
  %103 = load i32, i32* %var, align 4
  %idxprom243 = sext i32 %103 to i64
  %104 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx244 = getelementptr inbounds i32, i32* %104, i64 %idxprom243
  %105 = load i32, i32* %arrayidx244, align 4
  %cmp245 = icmp sle i32 %102, %105
  br i1 %cmp245, label %for.body.247, label %for.end.257

for.body.247:                                     ; preds = %for.cond.242
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay248 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call249 = call i8* @get_word(%struct._IO_FILE* %106, i8* %arraydecay248)
  %arraydecay250 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call251 = call i8* @util_strsav(i8* %arraydecay250)
  %107 = load i32, i32* %i, align 4
  %idxprom252 = sext i32 %107 to i64
  %108 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label253 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %108, i32 0, i32 7
  %109 = load i8**, i8*** %label253, align 8
  %arrayidx254 = getelementptr inbounds i8*, i8** %109, i64 %idxprom252
  store i8* %call251, i8** %arrayidx254, align 8
  br label %for.inc.255

for.inc.255:                                      ; preds = %for.body.247
  %110 = load i32, i32* %i, align 4
  %inc256 = add nsw i32 %110, 1
  store i32 %inc256, i32* %i, align 4
  br label %for.cond.242

for.end.257:                                      ; preds = %for.cond.242
  br label %if.end.474

if.else.258:                                      ; preds = %if.else.219
  %arraydecay259 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call260 = call i32 @strcmp(i8* %arraydecay259, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0)) #7
  %cmp261 = icmp eq i32 %call260, 0
  br i1 %cmp261, label %if.then.263, label %if.else.284

if.then.263:                                      ; preds = %if.else.258
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %112 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %arraydecay264 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call265 = call i32 @read_symbolic(%struct._IO_FILE* %111, %struct.PLA_t* %112, i8* %arraydecay264, %struct.symbolic_struct** %newlist)
  %tobool = icmp ne i32 %call265, 0
  br i1 %tobool, label %if.then.266, label %if.else.282

if.then.266:                                      ; preds = %if.then.263
  %113 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %113, i32 0, i32 8
  %114 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic, align 8
  %cmp267 = icmp eq %struct.symbolic_struct* %114, null
  br i1 %cmp267, label %if.then.269, label %if.else.271

if.then.269:                                      ; preds = %if.then.266
  %115 = load %struct.symbolic_struct*, %struct.symbolic_struct** %newlist, align 8
  %116 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic270 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %116, i32 0, i32 8
  store %struct.symbolic_struct* %115, %struct.symbolic_struct** %symbolic270, align 8
  br label %if.end.281

if.else.271:                                      ; preds = %if.then.266
  %117 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic272 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %117, i32 0, i32 8
  %118 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic272, align 8
  store %struct.symbolic_struct* %118, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.273

for.cond.273:                                     ; preds = %for.inc.277, %if.else.271
  %119 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %next = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %119, i32 0, i32 4
  %120 = load %struct.symbolic_struct*, %struct.symbolic_struct** %next, align 8
  %cmp274 = icmp ne %struct.symbolic_struct* %120, null
  br i1 %cmp274, label %for.body.276, label %for.end.279

for.body.276:                                     ; preds = %for.cond.273
  br label %for.inc.277

for.inc.277:                                      ; preds = %for.body.276
  %121 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %next278 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %121, i32 0, i32 4
  %122 = load %struct.symbolic_struct*, %struct.symbolic_struct** %next278, align 8
  store %struct.symbolic_struct* %122, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.273

for.end.279:                                      ; preds = %for.cond.273
  %123 = load %struct.symbolic_struct*, %struct.symbolic_struct** %newlist, align 8
  %124 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %next280 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %124, i32 0, i32 4
  store %struct.symbolic_struct* %123, %struct.symbolic_struct** %next280, align 8
  br label %if.end.281

if.end.281:                                       ; preds = %for.end.279, %if.then.269
  br label %if.end.283

if.else.282:                                      ; preds = %if.then.263
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.283

if.end.283:                                       ; preds = %if.else.282, %if.end.281
  br label %if.end.473

if.else.284:                                      ; preds = %if.else.258
  %arraydecay285 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call286 = call i32 @strcmp(i8* %arraydecay285, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0)) #7
  %cmp287 = icmp eq i32 %call286, 0
  br i1 %cmp287, label %if.then.289, label %if.else.314

if.then.289:                                      ; preds = %if.else.284
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %126 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %arraydecay292 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call293 = call i32 @read_symbolic(%struct._IO_FILE* %125, %struct.PLA_t* %126, i8* %arraydecay292, %struct.symbolic_struct** %newlist290)
  %tobool294 = icmp ne i32 %call293, 0
  br i1 %tobool294, label %if.then.295, label %if.else.312

if.then.295:                                      ; preds = %if.then.289
  %127 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic_output = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %127, i32 0, i32 9
  %128 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic_output, align 8
  %cmp296 = icmp eq %struct.symbolic_struct* %128, null
  br i1 %cmp296, label %if.then.298, label %if.else.300

if.then.298:                                      ; preds = %if.then.295
  %129 = load %struct.symbolic_struct*, %struct.symbolic_struct** %newlist290, align 8
  %130 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic_output299 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %130, i32 0, i32 9
  store %struct.symbolic_struct* %129, %struct.symbolic_struct** %symbolic_output299, align 8
  br label %if.end.311

if.else.300:                                      ; preds = %if.then.295
  %131 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic_output301 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %131, i32 0, i32 9
  %132 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic_output301, align 8
  store %struct.symbolic_struct* %132, %struct.symbolic_struct** %p1291, align 8
  br label %for.cond.302

for.cond.302:                                     ; preds = %for.inc.307, %if.else.300
  %133 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1291, align 8
  %next303 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %133, i32 0, i32 4
  %134 = load %struct.symbolic_struct*, %struct.symbolic_struct** %next303, align 8
  %cmp304 = icmp ne %struct.symbolic_struct* %134, null
  br i1 %cmp304, label %for.body.306, label %for.end.309

for.body.306:                                     ; preds = %for.cond.302
  br label %for.inc.307

for.inc.307:                                      ; preds = %for.body.306
  %135 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1291, align 8
  %next308 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %135, i32 0, i32 4
  %136 = load %struct.symbolic_struct*, %struct.symbolic_struct** %next308, align 8
  store %struct.symbolic_struct* %136, %struct.symbolic_struct** %p1291, align 8
  br label %for.cond.302

for.end.309:                                      ; preds = %for.cond.302
  %137 = load %struct.symbolic_struct*, %struct.symbolic_struct** %newlist290, align 8
  %138 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1291, align 8
  %next310 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %138, i32 0, i32 4
  store %struct.symbolic_struct* %137, %struct.symbolic_struct** %next310, align 8
  br label %if.end.311

if.end.311:                                       ; preds = %for.end.309, %if.then.298
  br label %if.end.313

if.else.312:                                      ; preds = %if.then.289
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.313

if.end.313:                                       ; preds = %if.else.312, %if.end.311
  br label %if.end.472

if.else.314:                                      ; preds = %if.else.284
  %arraydecay315 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call316 = call i32 @strcmp(i8* %arraydecay315, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0)) #7
  %cmp317 = icmp eq i32 %call316, 0
  br i1 %cmp317, label %if.then.319, label %if.else.381

if.then.319:                                      ; preds = %if.else.314
  %139 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %cmp320 = icmp eq i32* %139, null
  br i1 %cmp320, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %if.then.319
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.322, %if.then.319
  %140 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %140, i32 0, i32 5
  %141 = load i32*, i32** %phase, align 8
  %cmp324 = icmp ne i32* %141, null
  br i1 %cmp324, label %if.then.326, label %if.else.328

if.then.326:                                      ; preds = %if.end.323
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call327 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0))
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @skip_line(%struct._IO_FILE* %143, %struct._IO_FILE* %144, i32 0)
  br label %if.end.380

if.else.328:                                      ; preds = %if.end.323
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.else.328
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call329 = call i32 @_IO_getc(%struct._IO_FILE* %145)
  store i32 %call329, i32* %ch, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %146 = load i32, i32* %ch, align 4
  %cmp330 = icmp eq i32 %146, 32
  br i1 %cmp330, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %147 = load i32, i32* %ch, align 4
  %cmp332 = icmp eq i32 %147, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %148 = phi i1 [ true, %do.cond ], [ %cmp332, %lor.rhs ]
  br i1 %148, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %149 = load i32, i32* %ch, align 4
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call334 = call i32 @ungetc(i32 %149, %struct._IO_FILE* %150)
  %151 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx335 = getelementptr inbounds i32, i32* %151, i64 0
  %152 = load i32, i32* %arrayidx335, align 4
  %and = and i32 %152, 1023
  %mul336 = mul i32 32, %and
  %cmp337 = icmp ule i32 %mul336, 32
  br i1 %cmp337, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %153 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx339 = getelementptr inbounds i32, i32* %153, i64 0
  %154 = load i32, i32* %arrayidx339, align 4
  %and340 = and i32 %154, 1023
  %mul341 = mul i32 32, %and340
  %sub342 = sub i32 %mul341, 1
  %shr = lshr i32 %sub342, 5
  %add343 = add i32 %shr, 1
  %add344 = add i32 %add343, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add344, %cond.false ]
  %conv345 = zext i32 %cond to i64
  %mul346 = mul i64 4, %conv345
  %call347 = call i8* @malloc(i64 %mul346)
  %155 = bitcast i8* %call347 to i32*
  %156 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call348 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %155, i32* %156)
  %157 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase349 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %157, i32 0, i32 5
  store i32* %call348, i32** %phase349, align 8
  %158 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub350 = sub nsw i32 %158, 1
  %idxprom351 = sext i32 %sub350 to i64
  %159 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx352 = getelementptr inbounds i32, i32* %159, i64 %idxprom351
  %160 = load i32, i32* %arrayidx352, align 4
  store i32 %160, i32* %last, align 4
  %161 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub353 = sub nsw i32 %161, 1
  %idxprom354 = sext i32 %sub353 to i64
  %162 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx355 = getelementptr inbounds i32, i32* %162, i64 %idxprom354
  %163 = load i32, i32* %arrayidx355, align 4
  store i32 %163, i32* %i, align 4
  br label %for.cond.356

for.cond.356:                                     ; preds = %for.inc.377, %cond.end
  %164 = load i32, i32* %i, align 4
  %165 = load i32, i32* %last, align 4
  %cmp357 = icmp sle i32 %164, %165
  br i1 %cmp357, label %for.body.359, label %for.end.379

for.body.359:                                     ; preds = %for.cond.356
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call360 = call i32 @_IO_getc(%struct._IO_FILE* %166)
  store i32 %call360, i32* %ch, align 4
  %cmp361 = icmp eq i32 %call360, 48
  br i1 %cmp361, label %if.then.363, label %if.else.371

if.then.363:                                      ; preds = %for.body.359
  %167 = load i32, i32* %i, align 4
  %and364 = and i32 %167, 31
  %shl = shl i32 1, %and364
  %neg = xor i32 %shl, -1
  %168 = load i32, i32* %i, align 4
  %shr365 = ashr i32 %168, 5
  %add366 = add nsw i32 %shr365, 1
  %idxprom367 = sext i32 %add366 to i64
  %169 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase368 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %169, i32 0, i32 5
  %170 = load i32*, i32** %phase368, align 8
  %arrayidx369 = getelementptr inbounds i32, i32* %170, i64 %idxprom367
  %171 = load i32, i32* %arrayidx369, align 4
  %and370 = and i32 %171, %neg
  store i32 %and370, i32* %arrayidx369, align 4
  br label %if.end.376

if.else.371:                                      ; preds = %for.body.359
  %172 = load i32, i32* %ch, align 4
  %cmp372 = icmp ne i32 %172, 49
  br i1 %cmp372, label %if.then.374, label %if.end.375

if.then.374:                                      ; preds = %if.else.371
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.375

if.end.375:                                       ; preds = %if.then.374, %if.else.371
  br label %if.end.376

if.end.376:                                       ; preds = %if.end.375, %if.then.363
  br label %for.inc.377

for.inc.377:                                      ; preds = %if.end.376
  %173 = load i32, i32* %i, align 4
  %inc378 = add nsw i32 %173, 1
  store i32 %inc378, i32* %i, align 4
  br label %for.cond.356

for.end.379:                                      ; preds = %for.cond.356
  br label %if.end.380

if.end.380:                                       ; preds = %for.end.379, %if.then.326
  br label %if.end.471

if.else.381:                                      ; preds = %if.else.314
  %arraydecay382 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call383 = call i32 @strcmp(i8* %arraydecay382, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0)) #7
  %cmp384 = icmp eq i32 %call383, 0
  br i1 %cmp384, label %if.then.386, label %if.else.464

if.then.386:                                      ; preds = %if.else.381
  %174 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %174, i32 0, i32 6
  %175 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %cmp387 = icmp ne %struct.pair_struct* %175, null
  br i1 %cmp387, label %if.then.389, label %if.else.391

if.then.389:                                      ; preds = %if.then.386
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call390 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end.463

if.else.391:                                      ; preds = %if.then.386
  %call393 = call i8* @malloc(i64 24)
  %177 = bitcast i8* %call393 to %struct.pair_struct*
  store %struct.pair_struct* %177, %struct.pair_struct** %pair392, align 8
  %178 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair394 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %178, i32 0, i32 6
  store %struct.pair_struct* %177, %struct.pair_struct** %pair394, align 8
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %180 = load %struct.pair_struct*, %struct.pair_struct** %pair392, align 8
  %cnt = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %180, i32 0, i32 0
  %call395 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* %cnt)
  %cmp396 = icmp ne i32 %call395, 1
  br i1 %cmp396, label %if.then.398, label %if.end.399

if.then.398:                                      ; preds = %if.else.391
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end.399

if.end.399:                                       ; preds = %if.then.398, %if.else.391
  %181 = load %struct.pair_struct*, %struct.pair_struct** %pair392, align 8
  %cnt400 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %181, i32 0, i32 0
  %182 = load i32, i32* %cnt400, align 4
  %conv401 = sext i32 %182 to i64
  %mul402 = mul i64 4, %conv401
  %call403 = call i8* @malloc(i64 %mul402)
  %183 = bitcast i8* %call403 to i32*
  %184 = load %struct.pair_struct*, %struct.pair_struct** %pair392, align 8
  %var1 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %184, i32 0, i32 1
  store i32* %183, i32** %var1, align 8
  %185 = load %struct.pair_struct*, %struct.pair_struct** %pair392, align 8
  %cnt404 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %185, i32 0, i32 0
  %186 = load i32, i32* %cnt404, align 4
  %conv405 = sext i32 %186 to i64
  %mul406 = mul i64 4, %conv405
  %call407 = call i8* @malloc(i64 %mul406)
  %187 = bitcast i8* %call407 to i32*
  %188 = load %struct.pair_struct*, %struct.pair_struct** %pair392, align 8
  %var2 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %188, i32 0, i32 2
  store i32* %187, i32** %var2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.408

for.cond.408:                                     ; preds = %for.inc.460, %if.end.399
  %189 = load i32, i32* %i, align 4
  %190 = load %struct.pair_struct*, %struct.pair_struct** %pair392, align 8
  %cnt409 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %190, i32 0, i32 0
  %191 = load i32, i32* %cnt409, align 4
  %cmp410 = icmp slt i32 %189, %191
  br i1 %cmp410, label %for.body.412, label %for.end.462

for.body.412:                                     ; preds = %for.cond.408
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay413 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call414 = call i8* @get_word(%struct._IO_FILE* %192, i8* %arraydecay413)
  %arrayidx415 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i64 0
  %193 = load i8, i8* %arrayidx415, align 1
  %conv416 = sext i8 %193 to i32
  %cmp417 = icmp eq i32 %conv416, 40
  br i1 %cmp417, label %if.then.419, label %if.end.424

if.then.419:                                      ; preds = %for.body.412
  %arraydecay420 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %arraydecay421 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %add.ptr422 = getelementptr inbounds i8, i8* %arraydecay421, i64 1
  %call423 = call i8* @strcpy(i8* %arraydecay420, i8* %add.ptr422) #9
  br label %if.end.424

if.end.424:                                       ; preds = %if.then.419, %for.body.412
  %194 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %arraydecay425 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call426 = call i32 @label_index(%struct.PLA_t* %194, i8* %arraydecay425, i32* %var, i32* %j)
  %tobool427 = icmp ne i32 %call426, 0
  br i1 %tobool427, label %if.then.428, label %if.else.433

if.then.428:                                      ; preds = %if.end.424
  %195 = load i32, i32* %var, align 4
  %add429 = add nsw i32 %195, 1
  %196 = load i32, i32* %i, align 4
  %idxprom430 = sext i32 %196 to i64
  %197 = load %struct.pair_struct*, %struct.pair_struct** %pair392, align 8
  %var1431 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %197, i32 0, i32 1
  %198 = load i32*, i32** %var1431, align 8
  %arrayidx432 = getelementptr inbounds i32, i32* %198, i64 %idxprom430
  store i32 %add429, i32* %arrayidx432, align 4
  br label %if.end.434

if.else.433:                                      ; preds = %if.end.424
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end.434

if.end.434:                                       ; preds = %if.else.433, %if.then.428
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay435 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call436 = call i8* @get_word(%struct._IO_FILE* %199, i8* %arraydecay435)
  %arraydecay437 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call438 = call i64 @strlen(i8* %arraydecay437) #7
  %sub439 = sub i64 %call438, 1
  %arrayidx440 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i64 %sub439
  %200 = load i8, i8* %arrayidx440, align 1
  %conv441 = sext i8 %200 to i32
  %cmp442 = icmp eq i32 %conv441, 41
  br i1 %cmp442, label %if.then.444, label %if.end.449

if.then.444:                                      ; preds = %if.end.434
  %arraydecay445 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call446 = call i64 @strlen(i8* %arraydecay445) #7
  %sub447 = sub i64 %call446, 1
  %arrayidx448 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i64 %sub447
  store i8 0, i8* %arrayidx448, align 1
  br label %if.end.449

if.end.449:                                       ; preds = %if.then.444, %if.end.434
  %201 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %arraydecay450 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call451 = call i32 @label_index(%struct.PLA_t* %201, i8* %arraydecay450, i32* %var, i32* %j)
  %tobool452 = icmp ne i32 %call451, 0
  br i1 %tobool452, label %if.then.453, label %if.else.458

if.then.453:                                      ; preds = %if.end.449
  %202 = load i32, i32* %var, align 4
  %add454 = add nsw i32 %202, 1
  %203 = load i32, i32* %i, align 4
  %idxprom455 = sext i32 %203 to i64
  %204 = load %struct.pair_struct*, %struct.pair_struct** %pair392, align 8
  %var2456 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %204, i32 0, i32 2
  %205 = load i32*, i32** %var2456, align 8
  %arrayidx457 = getelementptr inbounds i32, i32* %205, i64 %idxprom455
  store i32 %add454, i32* %arrayidx457, align 4
  br label %if.end.459

if.else.458:                                      ; preds = %if.end.449
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end.459

if.end.459:                                       ; preds = %if.else.458, %if.then.453
  br label %for.inc.460

for.inc.460:                                      ; preds = %if.end.459
  %206 = load i32, i32* %i, align 4
  %inc461 = add nsw i32 %206, 1
  store i32 %inc461, i32* %i, align 4
  br label %for.cond.408

for.end.462:                                      ; preds = %for.cond.408
  br label %if.end.463

if.end.463:                                       ; preds = %for.end.462, %if.then.389
  br label %if.end.470

if.else.464:                                      ; preds = %if.else.381
  %207 = load i32, i32* @echo_unknown_commands, align 4
  %tobool465 = icmp ne i32 %207, 0
  br i1 %tobool465, label %if.then.466, label %if.end.469

if.then.466:                                      ; preds = %if.else.464
  %208 = load i32, i32* %ch, align 4
  %arraydecay467 = getelementptr inbounds [256 x i8], [256 x i8]* %word, i32 0, i32 0
  %call468 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 %208, i8* %arraydecay467)
  br label %if.end.469

if.end.469:                                       ; preds = %if.then.466, %if.else.464
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %211 = load i32, i32* @echo_unknown_commands, align 4
  call void @skip_line(%struct._IO_FILE* %209, %struct._IO_FILE* %210, i32 %211)
  br label %if.end.470

if.end.470:                                       ; preds = %if.end.469, %if.end.463
  br label %if.end.471

if.end.471:                                       ; preds = %if.end.470, %if.end.380
  br label %if.end.472

if.end.472:                                       ; preds = %if.end.471, %if.end.313
  br label %if.end.473

if.end.473:                                       ; preds = %if.end.472, %if.end.283
  br label %if.end.474

if.end.474:                                       ; preds = %if.end.473, %for.end.257
  br label %if.end.475

if.end.475:                                       ; preds = %if.end.474, %for.end.218
  br label %if.end.476

if.end.476:                                       ; preds = %if.end.475, %for.end.183
  br label %if.end.477

if.end.477:                                       ; preds = %if.end.476, %if.end.138
  br label %if.end.478

if.end.478:                                       ; preds = %if.end.477, %if.then.103
  br label %if.end.479

if.end.479:                                       ; preds = %if.end.478
  br label %if.end.480

if.end.480:                                       ; preds = %if.end.479, %if.then.86
  br label %if.end.481

if.end.481:                                       ; preds = %if.end.480, %if.end.80
  br label %if.end.482

if.end.482:                                       ; preds = %if.end.481, %if.end.37
  br label %if.end.483

if.end.483:                                       ; preds = %if.end.482, %if.end.15
  br label %sw.epilog

sw.default:                                       ; preds = %loop
  %212 = load i32, i32* %ch, align 4
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call484 = call i32 @ungetc(i32 %212, %struct._IO_FILE* %213)
  %214 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %cmp485 = icmp eq i32* %214, null
  br i1 %cmp485, label %if.then.487, label %if.end.492

if.then.487:                                      ; preds = %sw.default
  %215 = load i32, i32* @echo_comments, align 4
  %tobool488 = icmp ne i32 %215, 0
  br i1 %tobool488, label %if.then.489, label %if.end.491

if.then.489:                                      ; preds = %if.then.487
  %call490 = call i32 @putchar(i32 35)
  br label %if.end.491

if.end.491:                                       ; preds = %if.then.489, %if.then.487
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %218 = load i32, i32* @echo_comments, align 4
  call void @skip_line(%struct._IO_FILE* %216, %struct._IO_FILE* %217, i32 %218)
  br label %sw.epilog

if.end.492:                                       ; preds = %sw.default
  %219 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %219, i32 0, i32 0
  %220 = load %struct.set_family*, %struct.set_family** %F, align 8
  %cmp493 = icmp eq %struct.set_family* %220, null
  br i1 %cmp493, label %if.then.495, label %if.end.500

if.then.495:                                      ; preds = %if.end.492
  %221 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call496 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 10, i32 %221)
  %222 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F497 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %222, i32 0, i32 0
  store %struct.set_family* %call496, %struct.set_family** %F497, align 8
  %223 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call498 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 10, i32 %223)
  %224 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %224, i32 0, i32 1
  store %struct.set_family* %call498, %struct.set_family** %D, align 8
  %225 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call499 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 10, i32 %225)
  %226 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %226, i32 0, i32 2
  store %struct.set_family* %call499, %struct.set_family** %R, align 8
  br label %if.end.500

if.end.500:                                       ; preds = %if.then.495, %if.end.492
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %228 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  call void @read_cube(%struct._IO_FILE* %227, %struct.PLA_t* %228)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.500, %if.end.491, %if.end.483, %sw.bb.3, %sw.bb.2
  br label %loop

return:                                           ; preds = %if.then.97, %sw.bb
  ret void
}

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

declare void @fatal(...) #1

declare i8* @malloc(i64) #1

declare void @cube_setup(...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

declare i32 @printf(i8*, ...) #1

declare i32 @putchar(i32) #1

declare %struct.set_family* @sf_new(...) #1

; Function Attrs: nounwind uwtable
define i32 @read_pla(%struct._IO_FILE* %fp, i32 %needs_dcset, i32 %needs_offset, i32 %pla_type, %struct.PLA_t** %PLA_return) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %needs_dcset.addr = alloca i32, align 4
  %needs_offset.addr = alloca i32, align 4
  %pla_type.addr = alloca i32, align 4
  %PLA_return.addr = alloca %struct.PLA_t**, align 8
  %PLA = alloca %struct.PLA_t*, align 8
  %i = alloca i32, align 4
  %second = alloca i32, align 4
  %third = alloca i32, align 4
  %time = alloca i64, align 8
  %cost = alloca %struct.cost_struct, align 4
  %X = alloca %struct.set_family*, align 8
  %onset = alloca %struct.set_family*, align 8
  %t = alloca i64, align 8
  %t155 = alloca i64, align 8
  %t167 = alloca i64, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %needs_dcset, i32* %needs_dcset.addr, align 4
  store i32 %needs_offset, i32* %needs_offset.addr, align 4
  store i32 %pla_type, i32* %pla_type.addr, align 4
  store %struct.PLA_t** %PLA_return, %struct.PLA_t*** %PLA_return.addr, align 8
  %call = call %struct.PLA_t* @new_PLA()
  %0 = load %struct.PLA_t**, %struct.PLA_t*** %PLA_return.addr, align 8
  store %struct.PLA_t* %call, %struct.PLA_t** %0, align 8
  store %struct.PLA_t* %call, %struct.PLA_t** %PLA, align 8
  %1 = load i32, i32* %pla_type.addr, align 4
  %2 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %pla_type1 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %2, i32 0, i32 4
  store i32 %1, i32* %pla_type1, align 4
  %call2 = call i64 (...) @util_cpu_time()
  store i64 %call2, i64* %time, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %4 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  call void @parse_pla(%struct._IO_FILE* %3, %struct.PLA_t* %4)
  %5 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %5, i32 0, i32 0
  %6 = load %struct.set_family*, %struct.set_family** %F, align 8
  %cmp = icmp eq %struct.set_family* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %cmp4 = icmp sgt i32 %11, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 %idxprom5
  %14 = load i32, i32* %arrayidx6, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %16, i64 %idxprom7
  %17 = load i32, i32* %arrayidx8, align 4
  %sub = sub nsw i32 0, %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %sub, %cond.false ]
  %18 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %19, i64 %idxprom9
  store i32 %cond, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* @kiss, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.11, label %if.end.48

if.then.11:                                       ; preds = %for.end
  %22 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub12 = sub nsw i32 %22, 3
  store i32 %sub12, i32* %third, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub13 = sub nsw i32 %23, 2
  store i32 %sub13, i32* %second, align 4
  %24 = load i32, i32* %third, align 4
  %idxprom14 = sext i32 %24 to i64
  %25 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %25, i64 %idxprom14
  %26 = load i32, i32* %arrayidx15, align 4
  %27 = load i32, i32* %second, align 4
  %idxprom16 = sext i32 %27 to i64
  %28 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %28, i64 %idxprom16
  %29 = load i32, i32* %arrayidx17, align 4
  %cmp18 = icmp ne i32 %26, %29
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.then.11
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.49, i32 0, i32 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.50, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.11
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.39, %if.end.22
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %second, align 4
  %idxprom24 = sext i32 %33 to i64
  %34 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %34, i64 %idxprom24
  %35 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp slt i32 %32, %35
  br i1 %cmp26, label %for.body.27, label %for.end.41

for.body.27:                                      ; preds = %for.cond.23
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %third, align 4
  %idxprom28 = sext i32 %37 to i64
  %38 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %38, i64 %idxprom28
  %39 = load i32, i32* %arrayidx29, align 4
  %add = add nsw i32 %36, %39
  %idxprom30 = sext i32 %add to i64
  %40 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %label = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %40, i32 0, i32 7
  %41 = load i8**, i8*** %label, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %41, i64 %idxprom30
  %42 = load i8*, i8** %arrayidx31, align 8
  %call32 = call i8* @util_strsav(i8* %42)
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %second, align 4
  %idxprom33 = sext i32 %44 to i64
  %45 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %45, i64 %idxprom33
  %46 = load i32, i32* %arrayidx34, align 4
  %add35 = add nsw i32 %43, %46
  %idxprom36 = sext i32 %add35 to i64
  %47 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %label37 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %47, i32 0, i32 7
  %48 = load i8**, i8*** %label37, align 8
  %arrayidx38 = getelementptr inbounds i8*, i8** %48, i64 %idxprom36
  store i8* %call32, i8** %arrayidx38, align 8
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.27
  %49 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %49, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.23

for.end.41:                                       ; preds = %for.cond.23
  %50 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub42 = sub nsw i32 %50, 1
  %idxprom43 = sext i32 %sub42 to i64
  %51 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %51, i64 %idxprom43
  %52 = load i32, i32* %arrayidx44, align 4
  %53 = load i32, i32* %second, align 4
  %idxprom45 = sext i32 %53 to i64
  %54 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %54, i64 %idxprom45
  %55 = load i32, i32* %arrayidx46, align 4
  %add47 = add nsw i32 %55, %52
  store i32 %add47, i32* %arrayidx46, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %dec = add nsw i32 %56, -1
  store i32 %dec, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  call void (...) @setdown_cube()
  call void (...) @cube_setup()
  br label %if.end.48

if.end.48:                                        ; preds = %for.end.41, %for.end
  %57 = load i32, i32* @trace, align 4
  %tobool49 = icmp ne i32 %57, 0
  br i1 %tobool49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.48
  %58 = load i64, i64* %time, align 8
  %59 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F51 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %59, i32 0, i32 0
  %60 = load %struct.set_family*, %struct.set_family** %F51, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %58, i32 0, %struct.set_family* %60, %struct.cost_struct* %cost)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.48
  %call53 = call i64 (...) @util_cpu_time()
  store i64 %call53, i64* %time, align 8
  %61 = load i32, i32* @pos, align 4
  %tobool54 = icmp ne i32 %61, 0
  br i1 %tobool54, label %if.then.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.52
  %62 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %phase = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %62, i32 0, i32 5
  %63 = load i32*, i32** %phase, align 8
  %cmp55 = icmp ne i32* %63, null
  br i1 %cmp55, label %if.then.58, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.lhs.false
  %64 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %symbolic_output = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %64, i32 0, i32 9
  %65 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic_output, align 8
  %cmp57 = icmp ne %struct.symbolic_struct* %65, null
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %lor.lhs.false.56, %lor.lhs.false, %if.end.52
  store i32 1, i32* %needs_offset.addr, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %lor.lhs.false.56
  %66 = load i32, i32* %needs_offset.addr, align 4
  %tobool60 = icmp ne i32 %66, 0
  br i1 %tobool60, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.59
  %67 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %pla_type61 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %67, i32 0, i32 4
  %68 = load i32, i32* %pla_type61, align 4
  %cmp62 = icmp eq i32 %68, 1
  br i1 %cmp62, label %if.then.66, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %land.lhs.true
  %69 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %pla_type64 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %69, i32 0, i32 4
  %70 = load i32, i32* %pla_type64, align 4
  %cmp65 = icmp eq i32 %70, 3
  br i1 %cmp65, label %if.then.66, label %if.else

if.then.66:                                       ; preds = %lor.lhs.false.63, %land.lhs.true
  %71 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %71, i32 0, i32 2
  %72 = load %struct.set_family*, %struct.set_family** %R, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %72)
  %73 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F67 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %73, i32 0, i32 0
  %74 = load %struct.set_family*, %struct.set_family** %F67, align 8
  %75 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %75, i32 0, i32 1
  %76 = load %struct.set_family*, %struct.set_family** %D, align 8
  %call68 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %74, %struct.set_family* %76)
  %call69 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @complement to %struct.set_family* (i32**, ...)*)(i32** %call68)
  %77 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R70 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %77, i32 0, i32 2
  store %struct.set_family* %call69, %struct.set_family** %R70, align 8
  br label %if.end.100

if.else:                                          ; preds = %lor.lhs.false.63, %if.end.59
  %78 = load i32, i32* %needs_dcset.addr, align 4
  %tobool71 = icmp ne i32 %78, 0
  br i1 %tobool71, label %land.lhs.true.72, label %if.else.85

land.lhs.true.72:                                 ; preds = %if.else
  %79 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %pla_type73 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %79, i32 0, i32 4
  %80 = load i32, i32* %pla_type73, align 4
  %cmp74 = icmp eq i32 %80, 5
  br i1 %cmp74, label %if.then.75, label %if.else.85

if.then.75:                                       ; preds = %land.lhs.true.72
  %81 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D76 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %81, i32 0, i32 1
  %82 = load %struct.set_family*, %struct.set_family** %D76, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %82)
  %83 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F77 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %83, i32 0, i32 0
  %84 = load %struct.set_family*, %struct.set_family** %F77, align 8
  %85 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R78 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %85, i32 0, i32 2
  %86 = load %struct.set_family*, %struct.set_family** %R78, align 8
  %call79 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_join to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %84, %struct.set_family* %86)
  %87 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub80 = sub nsw i32 %87, 1
  %call81 = call %struct.set_family* (%struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @d1merge to %struct.set_family* (%struct.set_family*, i32, ...)*)(%struct.set_family* %call79, i32 %sub80)
  store %struct.set_family* %call81, %struct.set_family** %X, align 8
  %88 = load %struct.set_family*, %struct.set_family** %X, align 8
  %call82 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* %88)
  %call83 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @complement to %struct.set_family* (i32**, ...)*)(i32** %call82)
  %89 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D84 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %89, i32 0, i32 1
  store %struct.set_family* %call83, %struct.set_family** %D84, align 8
  %90 = load %struct.set_family*, %struct.set_family** %X, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %90)
  br label %if.end.99

if.else.85:                                       ; preds = %land.lhs.true.72, %if.else
  %91 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %pla_type86 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %91, i32 0, i32 4
  %92 = load i32, i32* %pla_type86, align 4
  %cmp87 = icmp eq i32 %92, 4
  br i1 %cmp87, label %if.then.91, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %if.else.85
  %93 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %pla_type89 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %93, i32 0, i32 4
  %94 = load i32, i32* %pla_type89, align 4
  %cmp90 = icmp eq i32 %94, 6
  br i1 %cmp90, label %if.then.91, label %if.end.98

if.then.91:                                       ; preds = %lor.lhs.false.88, %if.else.85
  %95 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F92 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %95, i32 0, i32 0
  %96 = load %struct.set_family*, %struct.set_family** %F92, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %96)
  %97 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D93 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %97, i32 0, i32 1
  %98 = load %struct.set_family*, %struct.set_family** %D93, align 8
  %99 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R94 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %99, i32 0, i32 2
  %100 = load %struct.set_family*, %struct.set_family** %R94, align 8
  %call95 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %98, %struct.set_family* %100)
  %call96 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @complement to %struct.set_family* (i32**, ...)*)(i32** %call95)
  %101 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F97 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %101, i32 0, i32 0
  store %struct.set_family* %call96, %struct.set_family** %F97, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.91, %lor.lhs.false.88
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.75
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.66
  %102 = load i32, i32* @trace, align 4
  %tobool101 = icmp ne i32 %102, 0
  br i1 %tobool101, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.end.100
  %103 = load i64, i64* %time, align 8
  %104 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R103 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %104, i32 0, i32 2
  %105 = load %struct.set_family*, %struct.set_family** %R103, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %103, i32 1, %struct.set_family* %105, %struct.cost_struct* %cost)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %if.end.100
  %106 = load i32, i32* @pos, align 4
  %tobool105 = icmp ne i32 %106, 0
  br i1 %tobool105, label %if.then.106, label %if.else.127

if.then.106:                                      ; preds = %if.end.104
  %107 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F107 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %107, i32 0, i32 0
  %108 = load %struct.set_family*, %struct.set_family** %F107, align 8
  store %struct.set_family* %108, %struct.set_family** %onset, align 8
  %109 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R108 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %109, i32 0, i32 2
  %110 = load %struct.set_family*, %struct.set_family** %R108, align 8
  %111 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F109 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %111, i32 0, i32 0
  store %struct.set_family* %110, %struct.set_family** %F109, align 8
  %112 = load %struct.set_family*, %struct.set_family** %onset, align 8
  %113 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R110 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %113, i32 0, i32 2
  store %struct.set_family* %112, %struct.set_family** %R110, align 8
  %114 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp111 = icmp sle i32 %114, 32
  br i1 %cmp111, label %cond.true.112, label %cond.false.113

cond.true.112:                                    ; preds = %if.then.106
  br label %cond.end.117

cond.false.113:                                   ; preds = %if.then.106
  %115 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub114 = sub nsw i32 %115, 1
  %shr = ashr i32 %sub114, 5
  %add115 = add nsw i32 %shr, 1
  %add116 = add nsw i32 %add115, 1
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.113, %cond.true.112
  %cond118 = phi i32 [ 2, %cond.true.112 ], [ %add116, %cond.false.113 ]
  %conv = sext i32 %cond118 to i64
  %mul = mul i64 4, %conv
  %call119 = call i8* @malloc(i64 %mul)
  %116 = bitcast i8* %call119 to i32*
  %117 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call120 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %116, i32 %117)
  %118 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %phase121 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %118, i32 0, i32 5
  store i32* %call120, i32** %phase121, align 8
  %119 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %phase122 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %119, i32 0, i32 5
  %120 = load i32*, i32** %phase122, align 8
  %121 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %122 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub123 = sub nsw i32 %122, 1
  %idxprom124 = sext i32 %sub123 to i64
  %123 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx125 = getelementptr inbounds i32*, i32** %123, i64 %idxprom124
  %124 = load i32*, i32** %arrayidx125, align 8
  %call126 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %120, i32* %121, i32* %124)
  br label %if.end.134

if.else.127:                                      ; preds = %if.end.104
  %125 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %phase128 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %125, i32 0, i32 5
  %126 = load i32*, i32** %phase128, align 8
  %cmp129 = icmp ne i32* %126, null
  br i1 %cmp129, label %if.then.131, label %if.end.133

if.then.131:                                      ; preds = %if.else.127
  %127 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %call132 = call %struct.PLA_t* (%struct.PLA_t*, ...) bitcast (%struct.PLA_t* (...)* @set_phase to %struct.PLA_t* (%struct.PLA_t*, ...)*)(%struct.PLA_t* %127)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.131, %if.else.127
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %cond.end.117
  %128 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %pair = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %128, i32 0, i32 6
  %129 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %cmp135 = icmp ne %struct.pair_struct* %129, null
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.end.134
  %130 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  call void (%struct.PLA_t*, ...) bitcast (void (...)* @set_pair to void (%struct.PLA_t*, ...)*)(%struct.PLA_t* %130)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.end.134
  %131 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %symbolic = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %131, i32 0, i32 8
  %132 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic, align 8
  %cmp139 = icmp ne %struct.symbolic_struct* %132, null
  br i1 %cmp139, label %if.then.141, label %if.end.150

if.then.141:                                      ; preds = %if.end.138
  %call142 = call i64 (...) @util_cpu_time()
  store i64 %call142, i64* %t, align 8
  %133 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %call143 = call i32 (%struct.PLA_t*, ...) bitcast (i32 (...)* @map_symbolic to i32 (%struct.PLA_t*, ...)*)(%struct.PLA_t* %133)
  %134 = load i32, i32* @trace, align 4
  %tobool144 = icmp ne i32 %134, 0
  br i1 %tobool144, label %if.then.145, label %if.end.149

if.then.145:                                      ; preds = %if.then.141
  %135 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F146 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %135, i32 0, i32 0
  %136 = load %struct.set_family*, %struct.set_family** %F146, align 8
  %call147 = call i64 (...) @util_cpu_time()
  %137 = load i64, i64* %t, align 8
  %sub148 = sub nsw i64 %call147, %137
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i64 %sub148)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.145, %if.then.141
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.end.138
  %138 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %symbolic_output151 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %138, i32 0, i32 9
  %139 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic_output151, align 8
  %cmp152 = icmp ne %struct.symbolic_struct* %139, null
  br i1 %cmp152, label %if.then.154, label %if.end.176

if.then.154:                                      ; preds = %if.end.150
  %call156 = call i64 (...) @util_cpu_time()
  store i64 %call156, i64* %t155, align 8
  %140 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %call157 = call i32 (%struct.PLA_t*, ...) bitcast (i32 (...)* @map_output_symbolic to i32 (%struct.PLA_t*, ...)*)(%struct.PLA_t* %140)
  %141 = load i32, i32* @trace, align 4
  %tobool158 = icmp ne i32 %141, 0
  br i1 %tobool158, label %if.then.159, label %if.end.163

if.then.159:                                      ; preds = %if.then.154
  %142 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F160 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %142, i32 0, i32 0
  %143 = load %struct.set_family*, %struct.set_family** %F160, align 8
  %call161 = call i64 (...) @util_cpu_time()
  %144 = load i64, i64* %t155, align 8
  %sub162 = sub nsw i64 %call161, %144
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %143, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i64 %sub162)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.159, %if.then.154
  %145 = load i32, i32* %needs_offset.addr, align 4
  %tobool164 = icmp ne i32 %145, 0
  br i1 %tobool164, label %if.then.165, label %if.end.175

if.then.165:                                      ; preds = %if.end.163
  %146 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R166 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %146, i32 0, i32 2
  %147 = load %struct.set_family*, %struct.set_family** %R166, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %147)
  %call168 = call i64 (...) @util_cpu_time()
  store i64 %call168, i64* %t167, align 8
  %148 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F169 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %148, i32 0, i32 0
  %149 = load %struct.set_family*, %struct.set_family** %F169, align 8
  %150 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D170 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %150, i32 0, i32 1
  %151 = load %struct.set_family*, %struct.set_family** %D170, align 8
  %call171 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %149, %struct.set_family* %151)
  %call172 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @complement to %struct.set_family* (i32**, ...)*)(i32** %call171)
  %152 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R173 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %152, i32 0, i32 2
  store %struct.set_family* %call172, %struct.set_family** %R173, align 8
  %153 = load i64, i64* %t167, align 8
  %154 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R174 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %154, i32 0, i32 2
  %155 = load %struct.set_family*, %struct.set_family** %R174, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %153, i32 1, %struct.set_family* %155, %struct.cost_struct* %cost)
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.165, %if.end.163
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.end.150
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.176, %if.then.19, %if.then
  %156 = load i32, i32* %retval
  ret i32 %156
}

declare i64 @util_cpu_time(...) #1

declare void @setdown_cube(...) #1

declare void @totals(...) #1

declare void @sf_free(...) #1

declare %struct.set_family* @complement(...) #1

declare i32** @cube2list(...) #1

declare %struct.set_family* @d1merge(...) #1

declare %struct.set_family* @sf_join(...) #1

declare i32** @cube1list(...) #1

declare i32* @set_diff(...) #1

declare %struct.PLA_t* @set_phase(...) #1

declare void @set_pair(...) #1

declare i32 @map_symbolic(...) #1

declare void @print_trace(...) #1

declare i32 @map_output_symbolic(...) #1

; Function Attrs: nounwind uwtable
define void @PLA_summary(%struct.PLA_t* %PLA) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %var = alloca i32, align 4
  %i = alloca i32, align 4
  %p2 = alloca %struct.symbolic_list_struct*, align 8
  %p1 = alloca %struct.symbolic_struct*, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  %0 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %filename = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %0, i32 0, i32 3
  %1 = load i8*, i8** %filename, align 8
  %call = call i8* @mybasename(i8* %1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i8* %call)
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub = sub nsw i32 %3, 1
  %cmp = icmp eq i32 %2, %sub
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub2 = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub2 to i64
  %6 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.54, i32 0, i32 0), i32 %4, i32 %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i32 0, i32 0), i32 %8, i32 %9)
  %10 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %10, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load i32, i32* %var, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp5 = icmp slt i32 %11, %12
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %var, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %14, i64 %idxprom6
  %15 = load i32, i32* %arrayidx7, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i32 %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %var, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %17 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %17, i32 0, i32 0
  %18 = load %struct.set_family*, %struct.set_family** %F, align 8
  %call10 = call i8* (%struct.set_family*, ...) bitcast (i8* (...)* @print_cost to i8* (%struct.set_family*, ...)*)(%struct.set_family* %18)
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i32 0, i32 0), i8* %call10)
  %19 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %19, i32 0, i32 2
  %20 = load %struct.set_family*, %struct.set_family** %R, align 8
  %call12 = call i8* (%struct.set_family*, ...) bitcast (i8* (...)* @print_cost to i8* (%struct.set_family*, ...)*)(%struct.set_family* %20)
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.59, i32 0, i32 0), i8* %call12)
  %21 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %21, i32 0, i32 1
  %22 = load %struct.set_family*, %struct.set_family** %D, align 8
  %call14 = call i8* (%struct.set_family*, ...) bitcast (i8* (...)* @print_cost to i8* (%struct.set_family*, ...)*)(%struct.set_family* %22)
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0), i8* %call14)
  %23 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %23, i32 0, i32 5
  %24 = load i32*, i32** %phase, align 8
  %cmp16 = icmp ne i32* %24, null
  br i1 %cmp16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end
  %25 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase18 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %25, i32 0, i32 5
  %26 = load i32*, i32** %phase18, align 8
  %call19 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %26)
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0), i8* %call19)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.end
  %27 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %27, i32 0, i32 6
  %28 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %cmp22 = icmp ne %struct.pair_struct* %28, null
  br i1 %cmp22, label %if.then.23, label %if.end.40

if.then.23:                                       ; preds = %if.end.21
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.36, %if.then.23
  %29 = load i32, i32* %i, align 4
  %30 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair26 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %30, i32 0, i32 6
  %31 = load %struct.pair_struct*, %struct.pair_struct** %pair26, align 8
  %cnt = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %31, i32 0, i32 0
  %32 = load i32, i32* %cnt, align 4
  %cmp27 = icmp slt i32 %29, %32
  br i1 %cmp27, label %for.body.28, label %for.end.38

for.body.28:                                      ; preds = %for.cond.25
  %33 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %33 to i64
  %34 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair30 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %34, i32 0, i32 6
  %35 = load %struct.pair_struct*, %struct.pair_struct** %pair30, align 8
  %var1 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %35, i32 0, i32 1
  %36 = load i32*, i32** %var1, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %36, i64 %idxprom29
  %37 = load i32, i32* %arrayidx31, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %38 to i64
  %39 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair33 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %39, i32 0, i32 6
  %40 = load %struct.pair_struct*, %struct.pair_struct** %pair33, align 8
  %var2 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %40, i32 0, i32 2
  %41 = load i32*, i32** %var2, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %41, i64 %idxprom32
  %42 = load i32, i32* %arrayidx34, align 4
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i32 %37, i32 %42)
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.28
  %43 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %43, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.25

for.end.38:                                       ; preds = %for.cond.25
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0))
  br label %if.end.40

if.end.40:                                        ; preds = %for.end.38, %if.end.21
  %44 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %44, i32 0, i32 8
  %45 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic, align 8
  %cmp41 = icmp ne %struct.symbolic_struct* %45, null
  br i1 %cmp41, label %if.then.42, label %if.end.58

if.then.42:                                       ; preds = %if.end.40
  %46 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic43 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %46, i32 0, i32 8
  %47 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic43, align 8
  store %struct.symbolic_struct* %47, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.55, %if.then.42
  %48 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %cmp45 = icmp ne %struct.symbolic_struct* %48, null
  br i1 %cmp45, label %for.body.46, label %for.end.57

for.body.46:                                      ; preds = %for.cond.44
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0))
  %49 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %49, i32 0, i32 0
  %50 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %symbolic_list, align 8
  store %struct.symbolic_list_struct* %50, %struct.symbolic_list_struct** %p2, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.52, %for.body.46
  %51 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %cmp49 = icmp ne %struct.symbolic_list_struct* %51, null
  br i1 %cmp49, label %for.body.50, label %for.end.53

for.body.50:                                      ; preds = %for.cond.48
  %52 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %variable = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %52, i32 0, i32 0
  %53 = load i32, i32* %variable, align 4
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i32 %53)
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.50
  %54 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %next = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %54, i32 0, i32 2
  %55 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %next, align 8
  store %struct.symbolic_list_struct* %55, %struct.symbolic_list_struct** %p2, align 8
  br label %for.cond.48

for.end.53:                                       ; preds = %for.cond.48
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0))
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end.53
  %56 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %next56 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %56, i32 0, i32 4
  %57 = load %struct.symbolic_struct*, %struct.symbolic_struct** %next56, align 8
  store %struct.symbolic_struct* %57, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.44

for.end.57:                                       ; preds = %for.cond.44
  br label %if.end.58

if.end.58:                                        ; preds = %for.end.57, %if.end.40
  %58 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic_output = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %58, i32 0, i32 9
  %59 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic_output, align 8
  %cmp59 = icmp ne %struct.symbolic_struct* %59, null
  br i1 %cmp59, label %if.then.60, label %if.end.78

if.then.60:                                       ; preds = %if.end.58
  %60 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic_output61 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %60, i32 0, i32 9
  %61 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic_output61, align 8
  store %struct.symbolic_struct* %61, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.75, %if.then.60
  %62 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %cmp63 = icmp ne %struct.symbolic_struct* %62, null
  br i1 %cmp63, label %for.body.64, label %for.end.77

for.body.64:                                      ; preds = %for.cond.62
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i32 0, i32 0))
  %63 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list66 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %63, i32 0, i32 0
  %64 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %symbolic_list66, align 8
  store %struct.symbolic_list_struct* %64, %struct.symbolic_list_struct** %p2, align 8
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.71, %for.body.64
  %65 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %cmp68 = icmp ne %struct.symbolic_list_struct* %65, null
  br i1 %cmp68, label %for.body.69, label %for.end.73

for.body.69:                                      ; preds = %for.cond.67
  %66 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %pos = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %66, i32 0, i32 1
  %67 = load i32, i32* %pos, align 4
  %call70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i32 %67)
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.69
  %68 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %next72 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %68, i32 0, i32 2
  %69 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %next72, align 8
  store %struct.symbolic_list_struct* %69, %struct.symbolic_list_struct** %p2, align 8
  br label %for.cond.67

for.end.73:                                       ; preds = %for.cond.67
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0))
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.73
  %70 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %next76 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %70, i32 0, i32 4
  %71 = load %struct.symbolic_struct*, %struct.symbolic_struct** %next76, align 8
  store %struct.symbolic_struct* %71, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.62

for.end.77:                                       ; preds = %for.cond.62
  br label %if.end.78

if.end.78:                                        ; preds = %for.end.77, %if.end.58
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call79 = call i32 @fflush(%struct._IO_FILE* %72)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @mybasename(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #7
  store i8* %call, i8** %base, align 8
  %1 = load i8*, i8** %base, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %3, %cond.false ]
  ret i8* %cond
}

declare i8* @print_cost(...) #1

declare i8* @pc1(...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct.PLA_t* @new_PLA() #0 {
entry:
  %PLA = alloca %struct.PLA_t*, align 8
  %call = call i8* @malloc(i64 80)
  %0 = bitcast i8* %call to %struct.PLA_t*
  store %struct.PLA_t* %0, %struct.PLA_t** %PLA, align 8
  %1 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %1, i32 0, i32 2
  store %struct.set_family* null, %struct.set_family** %R, align 8
  %2 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %2, i32 0, i32 1
  store %struct.set_family* null, %struct.set_family** %D, align 8
  %3 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %3, i32 0, i32 0
  store %struct.set_family* null, %struct.set_family** %F, align 8
  %4 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %phase = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %4, i32 0, i32 5
  store i32* null, i32** %phase, align 8
  %5 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %pair = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %5, i32 0, i32 6
  store %struct.pair_struct* null, %struct.pair_struct** %pair, align 8
  %6 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %label = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %6, i32 0, i32 7
  store i8** null, i8*** %label, align 8
  %7 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %filename = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %7, i32 0, i32 3
  store i8* null, i8** %filename, align 8
  %8 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %pla_type = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %8, i32 0, i32 4
  store i32 0, i32* %pla_type, align 4
  %9 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %symbolic = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %9, i32 0, i32 8
  store %struct.symbolic_struct* null, %struct.symbolic_struct** %symbolic, align 8
  %10 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %symbolic_output = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %10, i32 0, i32 9
  store %struct.symbolic_struct* null, %struct.symbolic_struct** %symbolic_output, align 8
  %11 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  ret %struct.PLA_t* %11
}

; Function Attrs: nounwind uwtable
define i32 @PLA_labels(%struct.PLA_t* %PLA) #0 {
entry:
  %retval = alloca i32, align 4
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %i = alloca i32, align 4
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @malloc(i64 %mul)
  %1 = bitcast i8* %call to i8**
  %2 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %2, i32 0, i32 7
  store i8** %1, i8*** %label, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label2 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %6, i32 0, i32 7
  %7 = load i8**, i8*** %label2, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define void @free_PLA(%struct.PLA_t* %PLA) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %p2 = alloca %struct.symbolic_list_struct*, align 8
  %p2next = alloca %struct.symbolic_list_struct*, align 8
  %p1 = alloca %struct.symbolic_struct*, align 8
  %p1next = alloca %struct.symbolic_struct*, align 8
  %i = alloca i32, align 4
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  %0 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %0, i32 0, i32 0
  %1 = load %struct.set_family*, %struct.set_family** %F, align 8
  %cmp = icmp ne %struct.set_family* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F1 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %2, i32 0, i32 0
  %3 = load %struct.set_family*, %struct.set_family** %F1, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %4, i32 0, i32 2
  %5 = load %struct.set_family*, %struct.set_family** %R, align 8
  %cmp2 = icmp ne %struct.set_family* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R4 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %6, i32 0, i32 2
  %7 = load %struct.set_family*, %struct.set_family** %R4, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %7)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %8 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %8, i32 0, i32 1
  %9 = load %struct.set_family*, %struct.set_family** %D, align 8
  %cmp6 = icmp ne %struct.set_family* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %10 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D8 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %10, i32 0, i32 1
  %11 = load %struct.set_family*, %struct.set_family** %D8, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %11)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %12 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %12, i32 0, i32 5
  %13 = load i32*, i32** %phase, align 8
  %cmp10 = icmp ne i32* %13, null
  br i1 %cmp10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %if.end.9
  %14 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase12 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %14, i32 0, i32 5
  %15 = load i32*, i32** %phase12, align 8
  %tobool = icmp ne i32* %15, null
  br i1 %tobool, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.then.11
  %16 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase14 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %16, i32 0, i32 5
  %17 = load i32*, i32** %phase14, align 8
  %18 = bitcast i32* %17 to i8*
  call void @free(i8* %18)
  %19 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase15 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %19, i32 0, i32 5
  store i32* null, i32** %phase15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.then.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.9
  %20 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %20, i32 0, i32 6
  %21 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %cmp18 = icmp ne %struct.pair_struct* %21, null
  br i1 %cmp18, label %if.then.19, label %if.end.42

if.then.19:                                       ; preds = %if.end.17
  %22 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair20 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %22, i32 0, i32 6
  %23 = load %struct.pair_struct*, %struct.pair_struct** %pair20, align 8
  %var1 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %23, i32 0, i32 1
  %24 = load i32*, i32** %var1, align 8
  %tobool21 = icmp ne i32* %24, null
  br i1 %tobool21, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %if.then.19
  %25 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair23 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %25, i32 0, i32 6
  %26 = load %struct.pair_struct*, %struct.pair_struct** %pair23, align 8
  %var124 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %26, i32 0, i32 1
  %27 = load i32*, i32** %var124, align 8
  %28 = bitcast i32* %27 to i8*
  call void @free(i8* %28)
  %29 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair25 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %29, i32 0, i32 6
  %30 = load %struct.pair_struct*, %struct.pair_struct** %pair25, align 8
  %var126 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %30, i32 0, i32 1
  store i32* null, i32** %var126, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %if.then.19
  %31 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair28 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %31, i32 0, i32 6
  %32 = load %struct.pair_struct*, %struct.pair_struct** %pair28, align 8
  %var2 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %32, i32 0, i32 2
  %33 = load i32*, i32** %var2, align 8
  %tobool29 = icmp ne i32* %33, null
  br i1 %tobool29, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.end.27
  %34 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair31 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %34, i32 0, i32 6
  %35 = load %struct.pair_struct*, %struct.pair_struct** %pair31, align 8
  %var232 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %35, i32 0, i32 2
  %36 = load i32*, i32** %var232, align 8
  %37 = bitcast i32* %36 to i8*
  call void @free(i8* %37)
  %38 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair33 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %38, i32 0, i32 6
  %39 = load %struct.pair_struct*, %struct.pair_struct** %pair33, align 8
  %var234 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %39, i32 0, i32 2
  store i32* null, i32** %var234, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %if.end.27
  %40 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair36 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %40, i32 0, i32 6
  %41 = load %struct.pair_struct*, %struct.pair_struct** %pair36, align 8
  %tobool37 = icmp ne %struct.pair_struct* %41, null
  br i1 %tobool37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.end.35
  %42 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair39 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %42, i32 0, i32 6
  %43 = load %struct.pair_struct*, %struct.pair_struct** %pair39, align 8
  %44 = bitcast %struct.pair_struct* %43 to i8*
  call void @free(i8* %44)
  %45 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair40 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %45, i32 0, i32 6
  store %struct.pair_struct* null, %struct.pair_struct** %pair40, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.end.35
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.17
  %46 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %46, i32 0, i32 7
  %47 = load i8**, i8*** %label, align 8
  %cmp43 = icmp ne i8** %47, null
  br i1 %cmp43, label %if.then.44, label %if.end.68

if.then.44:                                       ; preds = %if.end.42
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.44
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp45 = icmp slt i32 %48, %49
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load i32, i32* %i, align 4
  %idxprom = sext i32 %50 to i64
  %51 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label46 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %51, i32 0, i32 7
  %52 = load i8**, i8*** %label46, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %52, i64 %idxprom
  %53 = load i8*, i8** %arrayidx, align 8
  %cmp47 = icmp ne i8* %53, null
  br i1 %cmp47, label %if.then.48, label %if.end.61

if.then.48:                                       ; preds = %for.body
  %54 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %54 to i64
  %55 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label50 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %55, i32 0, i32 7
  %56 = load i8**, i8*** %label50, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %56, i64 %idxprom49
  %57 = load i8*, i8** %arrayidx51, align 8
  %tobool52 = icmp ne i8* %57, null
  br i1 %tobool52, label %if.then.53, label %if.end.60

if.then.53:                                       ; preds = %if.then.48
  %58 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %58 to i64
  %59 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label55 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %59, i32 0, i32 7
  %60 = load i8**, i8*** %label55, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %60, i64 %idxprom54
  %61 = load i8*, i8** %arrayidx56, align 8
  call void @free(i8* %61)
  %62 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %62 to i64
  %63 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label58 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %63, i32 0, i32 7
  %64 = load i8**, i8*** %label58, align 8
  %arrayidx59 = getelementptr inbounds i8*, i8** %64, i64 %idxprom57
  store i8* null, i8** %arrayidx59, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.53, %if.then.48
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.61
  %65 = load i32, i32* %i, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %66 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label62 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %66, i32 0, i32 7
  %67 = load i8**, i8*** %label62, align 8
  %tobool63 = icmp ne i8** %67, null
  br i1 %tobool63, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %for.end
  %68 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label65 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %68, i32 0, i32 7
  %69 = load i8**, i8*** %label65, align 8
  %70 = bitcast i8** %69 to i8*
  call void @free(i8* %70)
  %71 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label66 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %71, i32 0, i32 7
  store i8** null, i8*** %label66, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %for.end
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.42
  %72 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %filename = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %72, i32 0, i32 3
  %73 = load i8*, i8** %filename, align 8
  %cmp69 = icmp ne i8* %73, null
  br i1 %cmp69, label %if.then.70, label %if.end.77

if.then.70:                                       ; preds = %if.end.68
  %74 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %filename71 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %74, i32 0, i32 3
  %75 = load i8*, i8** %filename71, align 8
  %tobool72 = icmp ne i8* %75, null
  br i1 %tobool72, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %if.then.70
  %76 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %filename74 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %76, i32 0, i32 3
  %77 = load i8*, i8** %filename74, align 8
  call void @free(i8* %77)
  %78 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %filename75 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %78, i32 0, i32 3
  store i8* null, i8** %filename75, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %if.then.70
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.68
  %79 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %79, i32 0, i32 8
  %80 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic, align 8
  store %struct.symbolic_struct* %80, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.93, %if.end.77
  %81 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %cmp79 = icmp ne %struct.symbolic_struct* %81, null
  br i1 %cmp79, label %for.body.80, label %for.end.94

for.body.80:                                      ; preds = %for.cond.78
  %82 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %82, i32 0, i32 0
  %83 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %symbolic_list, align 8
  store %struct.symbolic_list_struct* %83, %struct.symbolic_list_struct** %p2, align 8
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.87, %for.body.80
  %84 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %cmp82 = icmp ne %struct.symbolic_list_struct* %84, null
  br i1 %cmp82, label %for.body.83, label %for.end.88

for.body.83:                                      ; preds = %for.cond.81
  %85 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %next = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %85, i32 0, i32 2
  %86 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %next, align 8
  store %struct.symbolic_list_struct* %86, %struct.symbolic_list_struct** %p2next, align 8
  %87 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %tobool84 = icmp ne %struct.symbolic_list_struct* %87, null
  br i1 %tobool84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %for.body.83
  %88 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %89 = bitcast %struct.symbolic_list_struct* %88 to i8*
  call void @free(i8* %89)
  store %struct.symbolic_list_struct* null, %struct.symbolic_list_struct** %p2, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %for.body.83
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86
  %90 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2next, align 8
  store %struct.symbolic_list_struct* %90, %struct.symbolic_list_struct** %p2, align 8
  br label %for.cond.81

for.end.88:                                       ; preds = %for.cond.81
  %91 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %next89 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %91, i32 0, i32 4
  %92 = load %struct.symbolic_struct*, %struct.symbolic_struct** %next89, align 8
  store %struct.symbolic_struct* %92, %struct.symbolic_struct** %p1next, align 8
  %93 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %tobool90 = icmp ne %struct.symbolic_struct* %93, null
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %for.end.88
  %94 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %95 = bitcast %struct.symbolic_struct* %94 to i8*
  call void @free(i8* %95)
  store %struct.symbolic_struct* null, %struct.symbolic_struct** %p1, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %for.end.88
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %96 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1next, align 8
  store %struct.symbolic_struct* %96, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.78

for.end.94:                                       ; preds = %for.cond.78
  %97 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic95 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %97, i32 0, i32 8
  store %struct.symbolic_struct* null, %struct.symbolic_struct** %symbolic95, align 8
  %98 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic_output = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %98, i32 0, i32 9
  %99 = load %struct.symbolic_struct*, %struct.symbolic_struct** %symbolic_output, align 8
  store %struct.symbolic_struct* %99, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.113, %for.end.94
  %100 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %cmp97 = icmp ne %struct.symbolic_struct* %100, null
  br i1 %cmp97, label %for.body.98, label %for.end.114

for.body.98:                                      ; preds = %for.cond.96
  %101 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %symbolic_list99 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %101, i32 0, i32 0
  %102 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %symbolic_list99, align 8
  store %struct.symbolic_list_struct* %102, %struct.symbolic_list_struct** %p2, align 8
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.107, %for.body.98
  %103 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %cmp101 = icmp ne %struct.symbolic_list_struct* %103, null
  br i1 %cmp101, label %for.body.102, label %for.end.108

for.body.102:                                     ; preds = %for.cond.100
  %104 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %next103 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %104, i32 0, i32 2
  %105 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %next103, align 8
  store %struct.symbolic_list_struct* %105, %struct.symbolic_list_struct** %p2next, align 8
  %106 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %tobool104 = icmp ne %struct.symbolic_list_struct* %106, null
  br i1 %tobool104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %for.body.102
  %107 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2, align 8
  %108 = bitcast %struct.symbolic_list_struct* %107 to i8*
  call void @free(i8* %108)
  store %struct.symbolic_list_struct* null, %struct.symbolic_list_struct** %p2, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %for.body.102
  br label %for.inc.107

for.inc.107:                                      ; preds = %if.end.106
  %109 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %p2next, align 8
  store %struct.symbolic_list_struct* %109, %struct.symbolic_list_struct** %p2, align 8
  br label %for.cond.100

for.end.108:                                      ; preds = %for.cond.100
  %110 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %next109 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %110, i32 0, i32 4
  %111 = load %struct.symbolic_struct*, %struct.symbolic_struct** %next109, align 8
  store %struct.symbolic_struct* %111, %struct.symbolic_struct** %p1next, align 8
  %112 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %tobool110 = icmp ne %struct.symbolic_struct* %112, null
  br i1 %tobool110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %for.end.108
  %113 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1, align 8
  %114 = bitcast %struct.symbolic_struct* %113 to i8*
  call void @free(i8* %114)
  store %struct.symbolic_struct* null, %struct.symbolic_struct** %p1, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %for.end.108
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112
  %115 = load %struct.symbolic_struct*, %struct.symbolic_struct** %p1next, align 8
  store %struct.symbolic_struct* %115, %struct.symbolic_struct** %p1, align 8
  br label %for.cond.96

for.end.114:                                      ; preds = %for.cond.96
  %116 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %symbolic_output115 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %116, i32 0, i32 9
  store %struct.symbolic_struct* null, %struct.symbolic_struct** %symbolic_output115, align 8
  %117 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %tobool116 = icmp ne %struct.PLA_t* %117, null
  br i1 %tobool116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %for.end.114
  %118 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %119 = bitcast %struct.PLA_t* %118 to i8*
  call void @free(i8* %119)
  store %struct.PLA_t* null, %struct.PLA_t** %PLA.addr, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %for.end.114
  ret void
}

declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @read_symbolic(%struct._IO_FILE* %fp, %struct.PLA_t* %PLA, i8* %word, %struct.symbolic_struct** %retval1) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %word.addr = alloca i8*, align 8
  %retval.addr = alloca %struct.symbolic_struct**, align 8
  %listp = alloca %struct.symbolic_list_struct*, align 8
  %prev_listp = alloca %struct.symbolic_list_struct*, align 8
  %labelp = alloca %struct.symbolic_label_struct*, align 8
  %prev_labelp = alloca %struct.symbolic_label_struct*, align 8
  %newlist = alloca %struct.symbolic_struct*, align 8
  %i = alloca i32, align 4
  %var = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i8* %word, i8** %word.addr, align 8
  store %struct.symbolic_struct** %retval1, %struct.symbolic_struct*** %retval.addr, align 8
  %call = call i8* @malloc(i64 40)
  %0 = bitcast i8* %call to %struct.symbolic_struct*
  store %struct.symbolic_struct* %0, %struct.symbolic_struct** %newlist, align 8
  %1 = load %struct.symbolic_struct*, %struct.symbolic_struct** %newlist, align 8
  %next = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %1, i32 0, i32 4
  store %struct.symbolic_struct* null, %struct.symbolic_struct** %next, align 8
  %2 = load %struct.symbolic_struct*, %struct.symbolic_struct** %newlist, align 8
  %symbolic_list = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %2, i32 0, i32 0
  store %struct.symbolic_list_struct* null, %struct.symbolic_list_struct** %symbolic_list, align 8
  %3 = load %struct.symbolic_struct*, %struct.symbolic_struct** %newlist, align 8
  %symbolic_list_length = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %3, i32 0, i32 1
  store i32 0, i32* %symbolic_list_length, align 4
  %4 = load %struct.symbolic_struct*, %struct.symbolic_struct** %newlist, align 8
  %symbolic_label = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %4, i32 0, i32 2
  store %struct.symbolic_label_struct* null, %struct.symbolic_label_struct** %symbolic_label, align 8
  %5 = load %struct.symbolic_struct*, %struct.symbolic_struct** %newlist, align 8
  %symbolic_label_length = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %5, i32 0, i32 3
  store i32 0, i32* %symbolic_label_length, align 4
  store %struct.symbolic_list_struct* null, %struct.symbolic_list_struct** %prev_listp, align 8
  store %struct.symbolic_label_struct* null, %struct.symbolic_label_struct** %prev_labelp, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.15, %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %7 = load i8*, i8** %word.addr, align 8
  %call2 = call i8* @get_word(%struct._IO_FILE* %6, i8* %7)
  %8 = load i8*, i8** %word.addr, align 8
  %call3 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %9 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %10 = load i8*, i8** %word.addr, align 8
  %call4 = call i32 @label_index(%struct.PLA_t* %9, i8* %10, i32* %var, i32* %i)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.else.14

if.then.5:                                        ; preds = %if.end
  %call6 = call i8* @malloc(i64 16)
  %11 = bitcast i8* %call6 to %struct.symbolic_list_struct*
  store %struct.symbolic_list_struct* %11, %struct.symbolic_list_struct** %listp, align 8
  %12 = load i32, i32* %var, align 4
  %13 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %listp, align 8
  %variable = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %13, i32 0, i32 0
  store i32 %12, i32* %variable, align 4
  %14 = load i32, i32* %i, align 4
  %15 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %listp, align 8
  %pos = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %15, i32 0, i32 1
  store i32 %14, i32* %pos, align 4
  %16 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %listp, align 8
  %next7 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %16, i32 0, i32 2
  store %struct.symbolic_list_struct* null, %struct.symbolic_list_struct** %next7, align 8
  %17 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %prev_listp, align 8
  %cmp8 = icmp eq %struct.symbolic_list_struct* %17, null
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.5
  %18 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %listp, align 8
  %19 = load %struct.symbolic_struct*, %struct.symbolic_struct** %newlist, align 8
  %symbolic_list10 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %19, i32 0, i32 0
  store %struct.symbolic_list_struct* %18, %struct.symbolic_list_struct** %symbolic_list10, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.then.5
  %20 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %listp, align 8
  %21 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %prev_listp, align 8
  %next11 = getelementptr inbounds %struct.symbolic_list_struct, %struct.symbolic_list_struct* %21, i32 0, i32 2
  store %struct.symbolic_list_struct* %20, %struct.symbolic_list_struct** %next11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.9
  %22 = load %struct.symbolic_list_struct*, %struct.symbolic_list_struct** %listp, align 8
  store %struct.symbolic_list_struct* %22, %struct.symbolic_list_struct** %prev_listp, align 8
  %23 = load %struct.symbolic_struct*, %struct.symbolic_struct** %newlist, align 8
  %symbolic_list_length13 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %23, i32 0, i32 1
  %24 = load i32, i32* %symbolic_list_length13, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %symbolic_list_length13, align 4
  br label %if.end.15

if.else.14:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.12
  br label %for.cond

for.end:                                          ; preds = %if.then
  br label %for.cond.16

for.cond.16:                                      ; preds = %if.end.30, %for.end
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %26 = load i8*, i8** %word.addr, align 8
  %call17 = call i8* @get_word(%struct._IO_FILE* %25, i8* %26)
  %27 = load i8*, i8** %word.addr, align 8
  %call18 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i32 0, i32 0)) #7
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.cond.16
  br label %for.end.33

if.end.21:                                        ; preds = %for.cond.16
  %call22 = call i8* @malloc(i64 16)
  %28 = bitcast i8* %call22 to %struct.symbolic_label_struct*
  store %struct.symbolic_label_struct* %28, %struct.symbolic_label_struct** %labelp, align 8
  %29 = load i8*, i8** %word.addr, align 8
  %call23 = call i8* @util_strsav(i8* %29)
  %30 = load %struct.symbolic_label_struct*, %struct.symbolic_label_struct** %labelp, align 8
  %label = getelementptr inbounds %struct.symbolic_label_struct, %struct.symbolic_label_struct* %30, i32 0, i32 0
  store i8* %call23, i8** %label, align 8
  %31 = load %struct.symbolic_label_struct*, %struct.symbolic_label_struct** %labelp, align 8
  %next24 = getelementptr inbounds %struct.symbolic_label_struct, %struct.symbolic_label_struct* %31, i32 0, i32 1
  store %struct.symbolic_label_struct* null, %struct.symbolic_label_struct** %next24, align 8
  %32 = load %struct.symbolic_label_struct*, %struct.symbolic_label_struct** %prev_labelp, align 8
  %cmp25 = icmp eq %struct.symbolic_label_struct* %32, null
  br i1 %cmp25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.end.21
  %33 = load %struct.symbolic_label_struct*, %struct.symbolic_label_struct** %labelp, align 8
  %34 = load %struct.symbolic_struct*, %struct.symbolic_struct** %newlist, align 8
  %symbolic_label27 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %34, i32 0, i32 2
  store %struct.symbolic_label_struct* %33, %struct.symbolic_label_struct** %symbolic_label27, align 8
  br label %if.end.30

if.else.28:                                       ; preds = %if.end.21
  %35 = load %struct.symbolic_label_struct*, %struct.symbolic_label_struct** %labelp, align 8
  %36 = load %struct.symbolic_label_struct*, %struct.symbolic_label_struct** %prev_labelp, align 8
  %next29 = getelementptr inbounds %struct.symbolic_label_struct, %struct.symbolic_label_struct* %36, i32 0, i32 1
  store %struct.symbolic_label_struct* %35, %struct.symbolic_label_struct** %next29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.26
  %37 = load %struct.symbolic_label_struct*, %struct.symbolic_label_struct** %labelp, align 8
  store %struct.symbolic_label_struct* %37, %struct.symbolic_label_struct** %prev_labelp, align 8
  %38 = load %struct.symbolic_struct*, %struct.symbolic_struct** %newlist, align 8
  %symbolic_label_length31 = getelementptr inbounds %struct.symbolic_struct, %struct.symbolic_struct* %38, i32 0, i32 3
  %39 = load i32, i32* %symbolic_label_length31, align 4
  %inc32 = add nsw i32 %39, 1
  store i32 %inc32, i32* %symbolic_label_length31, align 4
  br label %for.cond.16

for.end.33:                                       ; preds = %if.then.20
  %40 = load %struct.symbolic_struct*, %struct.symbolic_struct** %newlist, align 8
  %41 = load %struct.symbolic_struct**, %struct.symbolic_struct*** %retval.addr, align 8
  store %struct.symbolic_struct* %40, %struct.symbolic_struct** %41, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.33, %if.else.14
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define i32 @label_index(%struct.PLA_t* %PLA, i8* %word, i32* %varp, i32* %ip) #0 {
entry:
  %retval = alloca i32, align 4
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %word.addr = alloca i8*, align 8
  %varp.addr = alloca i32*, align 8
  %ip.addr = alloca i32*, align 8
  %var = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i8* %word, i8** %word.addr, align 8
  store i32* %varp, i32** %varp.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
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
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load i8*, i8** %word.addr, align 8
  %6 = load i32*, i32** %varp.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32* %6) #9
  %cmp3 = icmp eq i32 %call, 1
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %7 = load i32*, i32** %varp.addr, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** %ip.addr, align 8
  store i32 %8, i32* %9, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.22

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %if.else
  %10 = load i32, i32* %var, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %var, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %14, i64 %idxprom
  %15 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp slt i32 %12, %15
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %16 = load i32, i32* %var, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %17, i64 %idxprom10
  %18 = load i32, i32* %arrayidx11, align 4
  %19 = load i32, i32* %i, align 4
  %add = add nsw i32 %18, %19
  %idxprom12 = sext i32 %add to i64
  %20 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label13 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %20, i32 0, i32 7
  %21 = load i8**, i8*** %label13, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %21, i64 %idxprom12
  %22 = load i8*, i8** %arrayidx14, align 8
  %23 = load i8*, i8** %word.addr, align 8
  %call15 = call i32 @strcmp(i8* %22, i8* %23) #7
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.body.9
  %24 = load i32, i32* %var, align 4
  %25 = load i32*, i32** %varp.addr, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %i, align 4
  %27 = load i32*, i32** %ip.addr, align 8
  store i32 %26, i32* %27, align 4
  store i32 1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %29 = load i32, i32* %var, align 4
  %inc20 = add nsw i32 %29, 1
  store i32 %inc20, i32* %var, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  br label %if.end.22

if.end.22:                                        ; preds = %for.end.21, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.17, %if.then.4
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }
attributes #9 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
